	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-sdztjrdi" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -456
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r13
	addli r30, sp, 392
	xsignal_mode_cfg r1
	beq r13, zero, .LBB0_2
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
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r3, 1
	loadli.w r4,  32(r30)
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -60(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -224(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -288(r30)
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r6
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r2, r2, r4
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	ble.s r2, r1, .LBB0_295
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[9:10], r1
	lui r1, 31
	addli r4, zero, 0
	lui r7, 522240
	lui r8, 1048560
	addli r12, zero, 0
	store.d r[2:3], -384(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1047552
	store.d r[1:2], -392(r30)               # 8-byte Folded Spill
	lui r1, 1023
	lui r2, 522239
	ori r1, r1, 4095
	ori r18, r2, 4095
	storeli.w r1, -316(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r5, r1, 4095
	lui r1, 7
	ori r6, r1, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	addli r1, zero, 12
	xsignal r1, 0
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[9:10], -344(r30)               # 8-byte Folded Reload
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	load.d r[1:2], -384(r30)                # 8-byte Folded Reload
	loadli.w r12,  -348(r30)                # 4-byte Folded Reload
	addli.d r[9:10], r[9:10], 1
	setlt.sl r1, r[9:10], r[1:2]
	beq r1, zero, .LBB0_295
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_47 Depth 3
                                        #     Child Loop BB0_105 Depth 2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_108 Depth 3
                                        #     Child Loop BB0_171 Depth 2
                                        #       Child Loop BB0_180 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #     Child Loop BB0_202 Depth 2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_205 Depth 3
                                        #     Child Loop BB0_141 Depth 2
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_144 Depth 3
                                        #     Child Loop BB0_263 Depth 2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_266 Depth 3
                                        #     Child Loop BB0_233 Depth 2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r23, zero, 128
	addli r1, zero, 4
	addli r11, r4, 0
	addli r28, zero, 4
	.loc	1 76 7 is_stmt 1                # parallel-rne.mlir:76:7
	bneq r13, r1, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	store.d r[9:10], -344(r30)              # 8-byte Folded Spill
	addli r4, zero, 5
	addli r24, zero, 0
	addli r27, zero, 0
	mod.s r4, r12, r4
	addli r12, r12, 1
	div.s r1, r9, r1
	addli r9, zero, 16
	addli r10, zero, 8
	storeli.w r12, -348(r30)                # 4-byte Folded Spill
	slli r17, r4, 16
	lui r4, 80
	div.s r1, r1, r2
	add.s r19, r17, r4
	div.s r2, r1, r23
	slli r3, r2, 3
	slli r2, r2, 7
	sub.s r9, r9, r3
	sub.s r2, r1, r2
	min.s r9, r9, r10
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	loadli.w r10,  -288(r30)
	mod.s r1, r1, r9
	div.s r2, r2, r9
	add.s r1, r3, r1
	slli r3, r2, 7
	storeli.w r3, -376(r30)                 # 4-byte Folded Spill
	slli r4, r1, 7
	zext_int2long r[14:15], r1
	zext_int2long r[2:3], r2
	addli r1, zero, 7
	sll.d r[1:2], r[2:3], r1
	addli r3, zero, 18
	store.d r[14:15], -368(r30)             # 8-byte Folded Spill
	storeli.w r4, -372(r30)                 # 4-byte Folded Spill
	sll.d r[14:15], r[14:15], r3
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r3, zero, 1
	sll.d r[3:4], r[1:2], r3
	load.d r[1:2], -392(r30)                # 8-byte Folded Reload
	store.d r[14:15], -304(r30)             # 8-byte Folded Spill
	store.d r[3:4], -360(r30)               # 8-byte Folded Spill
	and.d r[1:2], r[14:15], r[1:2]
	store.d r[1:2], -312(r30)               # 8-byte Folded Spill
	load.d r[1:2], 8(r30)
	add.ul r[1:2], r[1:2], r[3:4]
	addli r4, r11, 0
	store.d r[1:2], -328(r30)               # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r1, 160
	addli r10, zero, 4
	addli r15, zero, 1
	addli r16, zero, 64
	addli r23, zero, 256
	addli r28, zero, 4
	ori r1, r1, 64
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	lock zero, r10
	dma_cfg r15, r15, zero, 0
	add.s r1, r9, r1
	dma_cfg zero, r12, zero, 2
	addli r9, zero, 5
	dma_cfg r1, r11, r16, 3
	addli r11, zero, 128
	addli r12, zero, 2
	addli r1, zero, 4096
	dma_cfg r11, r16, r12, 4
	dma_cfg r23, r1, r3, 5
	addli r1, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r4, 10
	addli r4, r20, 0
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
	addli r1, zero, 15
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
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
	dma_cfg r2, zero, r16, 3
	dma_cfg r11, zero, r12, 4
	dma_cfg r23, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r12, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r1,  -224(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r2,  -60(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r1, r1, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r2, r2, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r1, -224(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r2, -60(r30)
.LBB0_12:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r27, r27, 1
	addli r1, zero, 32
	beq r27, r1, .LBB0_34
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r23, zero, 128
	.loc	1 121 15 is_stmt 1              # parallel-rne.mlir:121:15
	addli r24, r24, 1
	addli r10, r14, 0
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	zext_int2long r[11:12], r27
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	addli r1, zero, 6
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	load.d r[14:15], -304(r30)              # 8-byte Folded Reload
	load.d r[21:22], -312(r30)              # 8-byte Folded Reload
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	sll.d r[1:2], r[11:12], r1
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	add.ul r[15:16], r[1:2], r[14:15]
	loadli.w r1,  -316(r30)                 # 4-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	setlt.ul r1, r[1:2], r[15:16]
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[21:22], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 94 15 is_stmt 1               # parallel-rne.mlir:94:15
	addli r1, zero, 24
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r2, zero, 15
	addli r3, zero, 1920
	addli r14, r10, 1
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r1, r4, r1
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r2, r10, r2
	zext_int2long r[25:26], r3
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	addli r4, r4, 1
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r14, -288(r30)
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	store.d r[25:26], -296(r30)             # 8-byte Folded Spill
	slli r3, r1, 15
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r9, r2, 15
	lui r1, 160
	add.s r2, r9, r1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r1, zero, 2
	beq r13, r1, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r20, r4, 0
	addli r1, zero, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	bneq r13, r1, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 2048
	sub.sl r[3:4], r[15:16], r[21:22]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	sll.d r[15:16], r[15:16], r1
	addli r21, zero, 3
	addli r22, zero, 14
	zext_int2long r[11:12], r11
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[3:4], r[3:4], r[11:12]
	load.d r[11:12], -296(r30)              # 8-byte Folded Reload
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	xwait r21, 0
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[11:12], r[3:4], r[11:12]
	sub.sl r[3:4], r[11:12], r[3:4]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	load.d r[11:12], 0(r30)
	addli r3, r3, 128
	addli r4, zero, 7
	add.ul r[11:12], r[11:12], r[15:16]
	blt.s r22, r10, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r10, zero, 5
	addli r16, zero, 2
	addli r15, zero, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
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
	addli r1, zero, 15
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
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
	addli r1, zero, 64
	dma_cfg r15, r15, zero, 0
	dma_cfg r15, zero, zero, 1
	addli r15, zero, 256
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r1, 3
	addli r1, zero, 128
	dma_cfg r1, zero, r16, 4
	dma_cfg r15, zero, r1, 5
	addli r1, zero, 1
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 2
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	addli r1, zero, 5
	addli r11, zero, 128
	xwait r9, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 64
	ds_cfg r9, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r11, zero, 13
	shuffle_batch r3, r2, r1, 1
	addli r1, zero, 3
	unlock zero
	xsignal r1, 0
	xsignal r28, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r2,  -224(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r1,  -60(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r4, zero, 40
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r9, zero, 14
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r4, r2, r4
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r9, r1, r9
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r2, r2, 1
	storeli.w r2, -224(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	lui r2, 280
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	slli r10, r4, 15
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r9, r9, 15
	addli r4, r1, 1
	storeli.w r4, -60(r30)
	add.s r2, r9, r2
	addli r4, zero, 7
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	beq r13, r4, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r4, zero, 6
	bneq r13, r4, .LBB0_28
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r15, zero, 18
	addli r22, zero, 13
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	sll.d r[3:4], r[11:12], r15
	load.d r[10:11], -328(r30)              # 8-byte Folded Reload
	add.ul r[10:11], r[10:11], r[3:4]
	addli r3, zero, 7
	xwait r3, 0
	blt.s r22, r1, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r4, zero, 5
	addli r16, zero, 1
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r1, zero, 2
	addli r12, zero, 4
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 3
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r15, 10
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
	addli r1, zero, 64
	dma_cfg r16, r16, zero, 0
	dma_cfg r16, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r1, 3
	dma_cfg r23, zero, r12, 4
	addli r12, zero, 512
	dma_cfg r12, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r1, 280
	addli r12, zero, 1
	addli r16, zero, 64
	addli r21, zero, 512
	addli r4, zero, 5
	addli r28, zero, 4
	ori r1, r1, 64
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	add.s r1, r9, r1
	addli r9, zero, 4
	lock zero, r9
	dma_cfg r12, r12, zero, 0
	dma_cfg zero, r11, zero, 2
	dma_cfg r1, r10, r16, 3
	addli r11, zero, 128
	addli r1, zero, 4096
	addli r10, zero, 6
	dma_cfg r11, r16, r9, 4
	dma_cfg r21, r1, r16, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 3
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r15, 10
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
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r16, 3
	dma_cfg r11, zero, r9, 4
	dma_cfg r21, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r10, 0
	j .LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 118 9 is_stmt 1               # parallel-rne.mlir:118:9
	addli r1, zero, 6
	addli r11, zero, 128
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	addli r1, zero, 2
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 64
	ds_cfg r11, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r11, zero, 13
	shuffle_coa r10, r2, r1, 2
	addli r1, zero, 8
	unlock zero
	xsignal r4, 0
	xsignal r1, 0
.LBB0_27:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, r20, 0
	j .LBB0_12
.LBB0_28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r4, r20, 0
	addli r1, zero, 4
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	bneq r13, r1, .LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_14 Depth=2
	xwait r1, 0
	addli r1, zero, 8
	addli r11, zero, 128
	addli r2, zero, 1
	addli r4, zero, 0
	addli r12, zero, 4
	addli r15, zero, 64
	xwait r1, 0
	addli r1, zero, 1
	beq r24, zero, .LBB0_31
.LBB0_30:                               # %.preheader30
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r9, r4, 14
	slli r4, r4, 8
	lock zero, r1
	mm_cfg r15, r15, r11, 0
	or r9, r9, r10
	or r4, r4, r19
	mm_cfg r12, r12, r1, 2
	mm_acc r4, r3, r9, 8
	andi r9, r2, 1
	addli r4, zero, 1
	addli r2, zero, 0
	unlock r1
	bneq r9, zero, .LBB0_30
	j .LBB0_32
.LBB0_31:                               # %.preheader29
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r9, r4, 14
	slli r4, r4, 8
	lock zero, r1
	mm_cfg r15, r15, r11, 0
	or r9, r9, r10
	or r4, r4, r19
	mm_cfg r12, r12, r1, 2
	mm r4, r3, r9, 8
	andi r9, r2, 1
	addli r4, zero, 1
	addli r2, zero, 0
	unlock r1
	bneq r9, zero, .LBB0_31
.LBB0_32:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 5
	addli r28, zero, 4
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r27, r27, 1
	addli r4, r20, 0
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r1, zero, 32
	bneq r27, r1, .LBB0_13
	j .LBB0_35
.LBB0_33:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r28, zero, 4
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r27, r27, 1
	addli r11, zero, 128
	addli r1, zero, 32
	bneq r27, r1, .LBB0_13
	j .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 124 7 is_stmt 1               # parallel-rne.mlir:124:7
	bneq r13, r28, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -312(r30)               # 4-byte Folded Spill
	xsignal r1, 0
	j .LBB0_39
.LBB0_36:                               # %.thread44
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 3
	.loc	1 129 7 is_stmt 1               # parallel-rne.mlir:129:7
	bneq r13, r1, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	storeli.w r1, -312(r30)                 # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -312(r30)               # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	addli r2, zero, 255
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	xfence
	addli r1, zero, 1
	zext_int2long r[24:25], r11
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { lm, sm, gm }
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	csr_set csr5, r2
	addli r2, zero, 127
	sync_core
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	storeli.w r4, -332(r30)                 # 4-byte Folded Spill
	zext_int2long r[26:27], r2
	beq r13, zero, .LBB0_72
# %bb.40:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r2, zero, 2
	beq r13, r2, .LBB0_103
.LBB0_41:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r13, r1, .LBB0_134
# %bb.42:                               #   in Loop: Header=BB0_7 Depth=1
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
	load.d r[3:4], -304(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 170 9 is_stmt 1               # parallel-rne.mlir:170:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_133
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_47 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -304(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	.loc	1 171 11 is_stmt 1              # parallel-rne.mlir:171:11
	bneq r17, r19, .LBB0_51
# %bb.45:                               # %scalar.ph99.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_47
.LBB0_46:                               # %scalar.ph99
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	setlt.ul r11, r[9:10], r[26:27]
	.loc	1 186 13 is_stmt 1              # parallel-rne.mlir:186:13
	add.s r1, r17, r1
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 186 13                        # parallel-rne.mlir:186:13
	stores.w r4, 0(r1)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	beq r11, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph99
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[11:12], r[9:10], r[2:3]
	slli r1, r11, 2
	add.s r4, r19, r1
	loads.w r11, 0(r4)
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	and r12, r11, r5
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	setlt.u r4, r7, r12
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r4, zero, .LBB0_49
# %bb.48:                               # %scalar.ph99
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r11, 0
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r12, r18, r12
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r12, zero, .LBB0_46
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r11, r4
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r12, r18, r12
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r12, zero, .LBB0_46
.LBB0_50:                               # %scalar.ph99
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_46
.LBB0_51:                               # %vector.body101.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_53
.LBB0_52:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 171 11 is_stmt 1              # parallel-rne.mlir:171:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 186 13                        # parallel-rne.mlir:186:13
	add.s r4, r17, r16
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	seteq.d r1, r[13:14], r[24:25]
	.loc	1 186 13                        # parallel-rne.mlir:186:13
	stores.w r10, 12(r4)
	stores.w r28, 8(r4)
	stores.w r12, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	bneq r1, zero, .LBB0_43
.LBB0_53:                               # %vector.body101
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r16, r9, 2
	add.s r20, r19, r16
	loads.w r11, 12(r20)
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	and r9, r11, r5
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	setlt.u r1, r7, r9
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r1, zero, .LBB0_55
# %bb.54:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_53 Depth=3
	lui r1, 1024
	or r10, r11, r1
.LBB0_56:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r15, 8(r20)
	and r1, r15, r5
	setlt.u r4, r7, r1
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r4, zero, .LBB0_58
# %bb.57:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_53 Depth=3
	lui r4, 1024
	or r28, r15, r4
.LBB0_59:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r4, 4(r20)
	and r21, r4, r5
	setlt.u r12, r7, r21
	.loc	1 177 19                        # parallel-rne.mlir:177:19
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
	loads.w r22, 0(r20)
	and r23, r22, r5
	setlt.u r20, r7, r23
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r20, zero, .LBB0_64
# %bb.63:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r23, r18, r23
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	beq r23, zero, .LBB0_65
	j .LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r22, r20
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r23, r18, r23
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r23, zero, .LBB0_66
.LBB0_65:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r22, 16
	andi r20, r20, 1
	add.s r20, r22, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_66:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	setlt.u r21, r18, r21
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	beq r21, zero, .LBB0_69
# %bb.67:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r1
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	beq r1, zero, .LBB0_70
.LBB0_68:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r9
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r1, zero, .LBB0_52
	j .LBB0_71
.LBB0_69:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r8
	setlt.u r1, r18, r1
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r1, zero, .LBB0_68
.LBB0_70:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r6
	and r28, r1, r8
	setlt.u r1, r18, r9
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r1, zero, .LBB0_52
.LBB0_71:                               # %vector.body101
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r6
	and r10, r1, r8
	j .LBB0_52
.LBB0_72:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_74
.LBB0_73:                               # %middle.block123
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[3:4], -304(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 142 9 is_stmt 1               # parallel-rne.mlir:142:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_102
.LBB0_74:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -304(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	.loc	1 143 11 is_stmt 1              # parallel-rne.mlir:143:11
	bneq r17, r19, .LBB0_81
# %bb.75:                               # %scalar.ph117.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_77
.LBB0_76:                               # %scalar.ph117
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	setlt.ul r11, r[9:10], r[26:27]
	.loc	1 158 13 is_stmt 1              # parallel-rne.mlir:158:13
	add.s r1, r17, r1
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	stores.w r4, 0(r1)
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	beq r11, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph117
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 144 19                        # parallel-rne.mlir:144:19
	add.ul r[11:12], r[9:10], r[2:3]
	slli r1, r11, 2
	add.s r4, r19, r1
	loads.w r11, 0(r4)
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	and r12, r11, r5
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	setlt.u r4, r7, r12
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r4, zero, .LBB0_79
# %bb.78:                               # %scalar.ph117
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r11, 0
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r12, r18, r12
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r12, zero, .LBB0_76
	j .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r11, r4
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r12, r18, r12
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r12, zero, .LBB0_76
.LBB0_80:                               # %scalar.ph117
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_76
.LBB0_81:                               # %vector.body119.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 143 11 is_stmt 1              # parallel-rne.mlir:143:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	add.s r9, r17, r16
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	seteq.d r1, r[13:14], r[24:25]
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	stores.w r10, 12(r9)
	stores.w r15, 8(r9)
	stores.w r4, 4(r9)
	stores.w r20, 0(r9)
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	bneq r1, zero, .LBB0_73
.LBB0_83:                               # %vector.body119
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 144 19                        # parallel-rne.mlir:144:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r16, r9, 2
	add.s r20, r19, r16
	loads.w r11, 12(r20)
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	and r9, r11, r5
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	setlt.u r1, r7, r9
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r1, zero, .LBB0_85
# %bb.84:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	lui r1, 1024
	or r10, r11, r1
.LBB0_86:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r28, 8(r20)
	and r1, r28, r5
	setlt.u r4, r7, r1
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r4, zero, .LBB0_88
# %bb.87:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r28, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	lui r4, 1024
	or r15, r28, r4
.LBB0_89:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r12, 4(r20)
	and r21, r12, r5
	setlt.u r4, r7, r21
	.loc	1 149 19                        # parallel-rne.mlir:149:19
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
	loads.w r22, 0(r20)
	and r23, r22, r5
	setlt.u r20, r7, r23
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r20, zero, .LBB0_94
# %bb.93:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r23, r18, r23
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	beq r23, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r22, r20
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r23, r18, r23
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r23, zero, .LBB0_96
.LBB0_95:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r22, 16
	andi r20, r20, 1
	add.s r20, r22, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_96:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r21, r18, r21
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	beq r21, zero, .LBB0_99
# %bb.97:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r1
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	beq r1, zero, .LBB0_100
.LBB0_98:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r9
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r1, zero, .LBB0_82
	j .LBB0_101
.LBB0_99:                               # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r6
	and r4, r4, r8
	setlt.u r1, r18, r1
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r1, zero, .LBB0_98
.LBB0_100:                              # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r6
	and r15, r1, r8
	setlt.u r1, r18, r9
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r1, zero, .LBB0_82
.LBB0_101:                              # %vector.body119
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r6
	and r10, r1, r8
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r13
	addli r1, zero, 1
	loadli.w r4,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r2, zero, 2
	bneq r13, r2, .LBB0_41
.LBB0_103:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 191 7 is_stmt 1               # parallel-rne.mlir:191:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_105
.LBB0_104:                              # %middle.block114
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[3:4], -304(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 198 9 is_stmt 1               # parallel-rne.mlir:198:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_133
.LBB0_105:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_108 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -304(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	.loc	1 199 11 is_stmt 1              # parallel-rne.mlir:199:11
	bneq r17, r19, .LBB0_112
# %bb.106:                              # %scalar.ph108.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_108
.LBB0_107:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	setlt.ul r11, r[9:10], r[26:27]
	.loc	1 214 13 is_stmt 1              # parallel-rne.mlir:214:13
	add.s r1, r17, r1
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	stores.w r4, 0(r1)
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	beq r11, zero, .LBB0_104
.LBB0_108:                              # %scalar.ph108
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	add.ul r[11:12], r[9:10], r[2:3]
	slli r1, r11, 2
	add.s r4, r19, r1
	loads.w r11, 0(r4)
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	and r12, r11, r5
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	setlt.u r4, r7, r12
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r4, zero, .LBB0_110
# %bb.109:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r11, 0
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r12, r18, r12
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r12, zero, .LBB0_107
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r11, r4
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r12, r18, r12
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r12, zero, .LBB0_107
.LBB0_111:                              # %scalar.ph108
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_107
.LBB0_112:                              # %vector.body110.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 199 11 is_stmt 1              # parallel-rne.mlir:199:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	add.s r4, r17, r16
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	seteq.d r1, r[13:14], r[24:25]
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	stores.w r10, 12(r4)
	stores.w r28, 8(r4)
	stores.w r12, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	bneq r1, zero, .LBB0_104
.LBB0_114:                              # %vector.body110
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r16, r9, 2
	add.s r20, r19, r16
	loads.w r11, 12(r20)
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	and r9, r11, r5
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	setlt.u r1, r7, r9
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r1, zero, .LBB0_116
# %bb.115:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_114 Depth=3
	lui r1, 1024
	or r10, r11, r1
.LBB0_117:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r15, 8(r20)
	and r1, r15, r5
	setlt.u r4, r7, r1
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r4, zero, .LBB0_119
# %bb.118:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_114 Depth=3
	lui r4, 1024
	or r28, r15, r4
.LBB0_120:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r4, 4(r20)
	and r21, r4, r5
	setlt.u r12, r7, r21
	.loc	1 205 19                        # parallel-rne.mlir:205:19
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
	loads.w r22, 0(r20)
	and r23, r22, r5
	setlt.u r20, r7, r23
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r20, zero, .LBB0_125
# %bb.124:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r23, r18, r23
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r23, zero, .LBB0_126
	j .LBB0_127
.LBB0_125:                              #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r22, r20
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r23, r18, r23
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r23, zero, .LBB0_127
.LBB0_126:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r22, 16
	andi r20, r20, 1
	add.s r20, r22, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_127:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r21, r18, r21
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r21, zero, .LBB0_130
# %bb.128:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r1
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r1, zero, .LBB0_131
.LBB0_129:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r9
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r1, zero, .LBB0_113
	j .LBB0_132
.LBB0_130:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r8
	setlt.u r1, r18, r1
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r1, zero, .LBB0_129
.LBB0_131:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r6
	and r28, r1, r8
	setlt.u r1, r18, r9
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r1, zero, .LBB0_113
.LBB0_132:                              # %vector.body110
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r6
	and r10, r1, r8
	j .LBB0_113
.LBB0_133:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	mfence { sm }
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r13
	loadli.w r4,  -332(r30)                 # 4-byte Folded Reload
.LBB0_134:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 219 7                         # parallel-rne.mlir:219:7
	loadli.w r1,  -312(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_169
# %bb.135:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 247 7 is_stmt 1               # parallel-rne.mlir:247:7
	beq r13, r1, .LBB0_200
.LBB0_136:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	addli r1, zero, 7
	beq r13, r1, .LBB0_231
.LBB0_137:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 6
	beq r13, r1, .LBB0_261
# %bb.138:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	bneq r13, r1, .LBB0_292
# %bb.139:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 80
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_141
.LBB0_140:                              # %middle.block
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 95
	load.d r[3:4], -304(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 282 9 is_stmt 1               # parallel-rne.mlir:282:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_291
.LBB0_141:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_144 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -304(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	.loc	1 283 11 is_stmt 1              # parallel-rne.mlir:283:11
	bneq r17, r19, .LBB0_148
# %bb.142:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_144
.LBB0_143:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	setlt.ul r11, r[9:10], r[26:27]
	.loc	1 298 13 is_stmt 1              # parallel-rne.mlir:298:13
	add.s r1, r17, r1
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	stores.w r4, 0(r1)
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	beq r11, zero, .LBB0_140
.LBB0_144:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	add.ul r[11:12], r[9:10], r[2:3]
	slli r1, r11, 2
	add.s r4, r19, r1
	loads.w r11, 0(r4)
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	and r12, r11, r5
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	setlt.u r4, r7, r12
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r4, zero, .LBB0_146
# %bb.145:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r11, 0
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r12, r18, r12
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r12, zero, .LBB0_143
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r11, r4
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r12, r18, r12
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r12, zero, .LBB0_143
.LBB0_147:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_143
.LBB0_148:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_150
.LBB0_149:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 283 11 is_stmt 1              # parallel-rne.mlir:283:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	add.s r4, r17, r16
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	seteq.d r1, r[13:14], r[24:25]
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	stores.w r10, 12(r4)
	stores.w r28, 8(r4)
	stores.w r12, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	bneq r1, zero, .LBB0_140
.LBB0_150:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r16, r9, 2
	add.s r20, r19, r16
	loads.w r11, 12(r20)
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	and r9, r11, r5
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	setlt.u r1, r7, r9
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r1, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_150 Depth=3
	lui r1, 1024
	or r10, r11, r1
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r15, 8(r20)
	and r1, r15, r5
	setlt.u r4, r7, r1
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r4, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_150 Depth=3
	lui r4, 1024
	or r28, r15, r4
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r4, 4(r20)
	and r21, r4, r5
	setlt.u r12, r7, r21
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r12, zero, .LBB0_158
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_150 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r22, 0(r20)
	and r23, r22, r5
	setlt.u r20, r7, r23
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r20, zero, .LBB0_165
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r23, r18, r23
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r23, zero, .LBB0_162
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r22, 16
	andi r20, r20, 1
	add.s r20, r22, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	setlt.u r21, r18, r21
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r21, zero, .LBB0_166
# %bb.163:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r1
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r1, zero, .LBB0_167
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r9
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r1, zero, .LBB0_149
	j .LBB0_168
.LBB0_165:                              #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r22, r20
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r23, r18, r23
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r23, zero, .LBB0_161
	j .LBB0_162
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r8
	setlt.u r1, r18, r1
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r1, zero, .LBB0_164
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r6
	and r28, r1, r8
	setlt.u r1, r18, r9
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r1, zero, .LBB0_149
.LBB0_168:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r6
	and r10, r1, r8
	j .LBB0_149
.LBB0_169:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 48
	.loc	1 219 7 is_stmt 1               # parallel-rne.mlir:219:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_171
.LBB0_170:                              # %middle.block96
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[3:4], -304(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 226 9 is_stmt 1               # parallel-rne.mlir:226:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_199
.LBB0_171:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_180 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -304(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	.loc	1 227 11 is_stmt 1              # parallel-rne.mlir:227:11
	bneq r17, r19, .LBB0_178
# %bb.172:                              # %scalar.ph90.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_174
.LBB0_173:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	setlt.ul r11, r[9:10], r[26:27]
	.loc	1 242 13 is_stmt 1              # parallel-rne.mlir:242:13
	add.s r1, r17, r1
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	stores.w r4, 0(r1)
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	beq r11, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph90
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.ul r[11:12], r[9:10], r[2:3]
	slli r1, r11, 2
	add.s r4, r19, r1
	loads.w r11, 0(r4)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r12, r11, r5
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	setlt.u r4, r7, r12
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r4, zero, .LBB0_176
# %bb.175:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r11, 0
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r12, r18, r12
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r12, zero, .LBB0_173
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r11, r4
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r12, r18, r12
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r12, zero, .LBB0_173
.LBB0_177:                              # %scalar.ph90
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_173
.LBB0_178:                              # %vector.body92.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_180
.LBB0_179:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 227 11 is_stmt 1              # parallel-rne.mlir:227:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	add.s r4, r17, r16
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	seteq.d r1, r[13:14], r[24:25]
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	stores.w r10, 12(r4)
	stores.w r28, 8(r4)
	stores.w r12, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	bneq r1, zero, .LBB0_170
.LBB0_180:                              # %vector.body92
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r16, r9, 2
	add.s r20, r19, r16
	loads.w r11, 12(r20)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r9, r11, r5
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	setlt.u r1, r7, r9
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r1, zero, .LBB0_182
# %bb.181:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_180 Depth=3
	lui r1, 1024
	or r10, r11, r1
.LBB0_183:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r15, 8(r20)
	and r1, r15, r5
	setlt.u r4, r7, r1
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r4, zero, .LBB0_185
# %bb.184:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_180 Depth=3
	lui r4, 1024
	or r28, r15, r4
.LBB0_186:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r4, 4(r20)
	and r21, r4, r5
	setlt.u r12, r7, r21
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r12, zero, .LBB0_188
# %bb.187:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_180 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_189:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r22, 0(r20)
	and r23, r22, r5
	setlt.u r20, r7, r23
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r20, zero, .LBB0_195
# %bb.190:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r23, r18, r23
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r23, zero, .LBB0_192
.LBB0_191:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r22, 16
	andi r20, r20, 1
	add.s r20, r22, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_192:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	setlt.u r21, r18, r21
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r21, zero, .LBB0_196
# %bb.193:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r1
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r1, zero, .LBB0_197
.LBB0_194:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r9
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r1, zero, .LBB0_179
	j .LBB0_198
.LBB0_195:                              #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r22, r20
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r23, r18, r23
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r23, zero, .LBB0_191
	j .LBB0_192
.LBB0_196:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r8
	setlt.u r1, r18, r1
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r1, zero, .LBB0_194
.LBB0_197:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r6
	and r28, r1, r8
	setlt.u r1, r18, r9
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r1, zero, .LBB0_179
.LBB0_198:                              # %vector.body92
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r6
	and r10, r1, r8
	j .LBB0_179
.LBB0_199:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 219 7 is_stmt 1               # parallel-rne.mlir:219:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r13
	loadli.w r4,  -332(r30)                 # 4-byte Folded Reload
	addli r1, zero, 4
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	bneq r13, r1, .LBB0_136
.LBB0_200:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 64
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_202
.LBB0_201:                              # %middle.block87
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 79
	load.d r[3:4], -304(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 254 9 is_stmt 1               # parallel-rne.mlir:254:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_230
.LBB0_202:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_205 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -304(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	.loc	1 255 11 is_stmt 1              # parallel-rne.mlir:255:11
	bneq r17, r19, .LBB0_209
# %bb.203:                              # %scalar.ph81.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_205
.LBB0_204:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	setlt.ul r11, r[9:10], r[26:27]
	.loc	1 270 13 is_stmt 1              # parallel-rne.mlir:270:13
	add.s r1, r17, r1
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	stores.w r4, 0(r1)
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	beq r11, zero, .LBB0_201
.LBB0_205:                              # %scalar.ph81
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	add.ul r[11:12], r[9:10], r[2:3]
	slli r1, r11, 2
	add.s r4, r19, r1
	loads.w r11, 0(r4)
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	and r12, r11, r5
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	setlt.u r4, r7, r12
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r4, zero, .LBB0_207
# %bb.206:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r11, 0
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r12, r18, r12
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r12, zero, .LBB0_204
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r11, r4
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r12, r18, r12
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r12, zero, .LBB0_204
.LBB0_208:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_204
.LBB0_209:                              # %vector.body83.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_211
.LBB0_210:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 255 11 is_stmt 1              # parallel-rne.mlir:255:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	add.s r4, r17, r16
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	seteq.d r1, r[13:14], r[24:25]
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	stores.w r10, 12(r4)
	stores.w r28, 8(r4)
	stores.w r12, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	bneq r1, zero, .LBB0_201
.LBB0_211:                              # %vector.body83
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r16, r9, 2
	add.s r20, r19, r16
	loads.w r11, 12(r20)
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	and r9, r11, r5
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	setlt.u r1, r7, r9
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r1, zero, .LBB0_213
# %bb.212:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_211 Depth=3
	lui r1, 1024
	or r10, r11, r1
.LBB0_214:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r15, 8(r20)
	and r1, r15, r5
	setlt.u r4, r7, r1
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r4, zero, .LBB0_216
# %bb.215:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_211 Depth=3
	lui r4, 1024
	or r28, r15, r4
.LBB0_217:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r4, 4(r20)
	and r21, r4, r5
	setlt.u r12, r7, r21
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r12, zero, .LBB0_219
# %bb.218:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r4, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_211 Depth=3
	lui r12, 1024
	or r12, r4, r12
.LBB0_220:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r22, 0(r20)
	and r23, r22, r5
	setlt.u r20, r7, r23
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r20, zero, .LBB0_226
# %bb.221:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r23, r18, r23
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r23, zero, .LBB0_223
.LBB0_222:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r22, 16
	andi r20, r20, 1
	add.s r20, r22, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_223:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	setlt.u r21, r18, r21
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	beq r21, zero, .LBB0_227
# %bb.224:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r1
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	beq r1, zero, .LBB0_228
.LBB0_225:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r9
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r1, zero, .LBB0_210
	j .LBB0_229
.LBB0_226:                              #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r22, r20
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r23, r18, r23
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	beq r23, zero, .LBB0_222
	j .LBB0_223
.LBB0_227:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r8
	setlt.u r1, r18, r1
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r1, zero, .LBB0_225
.LBB0_228:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r6
	and r28, r1, r8
	setlt.u r1, r18, r9
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r1, zero, .LBB0_210
.LBB0_229:                              # %vector.body83
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r6
	and r10, r1, r8
	j .LBB0_210
.LBB0_230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 247 7 is_stmt 1               # parallel-rne.mlir:247:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r13
	loadli.w r4,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	addli r1, zero, 7
	bneq r13, r1, .LBB0_137
.LBB0_231:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 112
	.loc	1 331 7 is_stmt 1               # parallel-rne.mlir:331:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_233
.LBB0_232:                              # %middle.block78
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[2:3], -304(r30)                # 8-byte Folded Reload
	.loc	1 338 9 is_stmt 1               # parallel-rne.mlir:338:9
	setlt.ul r1, r[2:3], r[26:27]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_291
.LBB0_233:                              # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -304(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	.loc	1 339 11 is_stmt 1              # parallel-rne.mlir:339:11
	bneq r17, r19, .LBB0_240
# %bb.234:                              # %scalar.ph72.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_236
.LBB0_235:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	setlt.ul r11, r[9:10], r[26:27]
	.loc	1 354 13 is_stmt 1              # parallel-rne.mlir:354:13
	add.s r1, r17, r1
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	stores.w r4, 0(r1)
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	beq r11, zero, .LBB0_232
.LBB0_236:                              # %scalar.ph72
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.ul r[11:12], r[9:10], r[2:3]
	slli r1, r11, 2
	add.s r4, r19, r1
	loads.w r11, 0(r4)
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r12, r11, r5
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	setlt.u r4, r7, r12
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r4, zero, .LBB0_238
# %bb.237:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r11, 0
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r12, r18, r12
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r12, zero, .LBB0_235
	j .LBB0_239
.LBB0_238:                              #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r11, r4
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r12, r18, r12
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r12, zero, .LBB0_235
.LBB0_239:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_235
.LBB0_240:                              # %vector.body74.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_242
.LBB0_241:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 339 11 is_stmt 1              # parallel-rne.mlir:339:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	add.s r4, r17, r16
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	seteq.d r1, r[13:14], r[24:25]
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	stores.w r10, 12(r4)
	stores.w r28, 8(r4)
	stores.w r12, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	bneq r1, zero, .LBB0_232
.LBB0_242:                              # %vector.body74
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r16, r9, 2
	add.s r20, r19, r16
	loads.w r11, 12(r20)
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r9, r11, r5
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	setlt.u r1, r7, r9
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r1, zero, .LBB0_244
# %bb.243:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=3
	lui r1, 1024
	or r10, r11, r1
.LBB0_245:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r15, 8(r20)
	and r1, r15, r5
	setlt.u r4, r7, r1
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r4, zero, .LBB0_247
# %bb.246:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=3
	lui r4, 1024
	or r28, r15, r4
.LBB0_248:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r4, 4(r20)
	and r21, r4, r5
	setlt.u r12, r7, r21
	.loc	1 345 19                        # parallel-rne.mlir:345:19
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
	loads.w r22, 0(r20)
	and r23, r22, r5
	setlt.u r20, r7, r23
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r20, zero, .LBB0_253
# %bb.252:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r23, r18, r23
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r23, zero, .LBB0_254
	j .LBB0_255
.LBB0_253:                              #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r22, r20
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r23, r18, r23
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r23, zero, .LBB0_255
.LBB0_254:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r22, 16
	andi r20, r20, 1
	add.s r20, r22, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_255:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r21, r18, r21
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r21, zero, .LBB0_258
# %bb.256:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r1
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r1, zero, .LBB0_259
.LBB0_257:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r9
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r1, zero, .LBB0_241
	j .LBB0_260
.LBB0_258:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r8
	setlt.u r1, r18, r1
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r1, zero, .LBB0_257
.LBB0_259:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r6
	and r28, r1, r8
	setlt.u r1, r18, r9
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r1, zero, .LBB0_241
.LBB0_260:                              # %vector.body74
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r6
	and r10, r1, r8
	j .LBB0_241
.LBB0_261:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 96
	.loc	1 303 7 is_stmt 1               # parallel-rne.mlir:303:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_263
.LBB0_262:                              # %middle.block69
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 111
	load.d r[3:4], -304(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 310 9 is_stmt 1               # parallel-rne.mlir:310:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_291
.LBB0_263:                              # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_266 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[2:3], -304(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[2:3], r1
	.loc	1 311 11 is_stmt 1              # parallel-rne.mlir:311:11
	bneq r17, r19, .LBB0_270
# %bb.264:                              # %scalar.ph63.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_266
.LBB0_265:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	setlt.ul r11, r[9:10], r[26:27]
	.loc	1 326 13 is_stmt 1              # parallel-rne.mlir:326:13
	add.s r1, r17, r1
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 326 13                        # parallel-rne.mlir:326:13
	stores.w r4, 0(r1)
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	beq r11, zero, .LBB0_262
.LBB0_266:                              # %scalar.ph63
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.ul r[11:12], r[9:10], r[2:3]
	slli r1, r11, 2
	add.s r4, r19, r1
	loads.w r11, 0(r4)
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	and r12, r11, r5
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	setlt.u r4, r7, r12
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r4, zero, .LBB0_268
# %bb.267:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r11, 0
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r12, r18, r12
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r12, zero, .LBB0_265
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r4, r11, r4
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r12, r18, r12
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r12, zero, .LBB0_265
.LBB0_269:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r6
	and r4, r4, r8
	j .LBB0_265
.LBB0_270:                              # %vector.body65.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_272
.LBB0_271:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 311 11 is_stmt 1              # parallel-rne.mlir:311:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 326 13                        # parallel-rne.mlir:326:13
	add.s r4, r17, r16
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	seteq.d r1, r[13:14], r[24:25]
	.loc	1 326 13                        # parallel-rne.mlir:326:13
	stores.w r10, 12(r4)
	stores.w r28, 8(r4)
	stores.w r12, 4(r4)
	stores.w r20, 0(r4)
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	bneq r1, zero, .LBB0_262
.LBB0_272:                              # %vector.body65
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.ul r[9:10], r[13:14], r[2:3]
	slli r16, r9, 2
	add.s r20, r19, r16
	loads.w r11, 12(r20)
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	and r9, r11, r5
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	setlt.u r1, r7, r9
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r1, zero, .LBB0_274
# %bb.273:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_272 Depth=3
	lui r1, 1024
	or r10, r11, r1
.LBB0_275:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r15, 8(r20)
	and r1, r15, r5
	setlt.u r4, r7, r1
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r4, zero, .LBB0_277
# %bb.276:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r15, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_272 Depth=3
	lui r4, 1024
	or r28, r15, r4
.LBB0_278:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r4, 4(r20)
	and r21, r4, r5
	setlt.u r12, r7, r21
	.loc	1 317 19                        # parallel-rne.mlir:317:19
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
	loads.w r22, 0(r20)
	and r23, r22, r5
	setlt.u r20, r7, r23
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r20, zero, .LBB0_283
# %bb.282:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r22, 0
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r23, r18, r23
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	beq r23, zero, .LBB0_284
	j .LBB0_285
.LBB0_283:                              #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r20, 1024
	or r20, r22, r20
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r23, r18, r23
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r23, zero, .LBB0_285
.LBB0_284:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r20, r22, 16
	andi r20, r20, 1
	add.s r20, r22, r20
	add.s r20, r20, r6
	and r20, r20, r8
.LBB0_285:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	setlt.u r21, r18, r21
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	beq r21, zero, .LBB0_288
# %bb.286:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r1
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	beq r1, zero, .LBB0_289
.LBB0_287:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r18, r9
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r1, zero, .LBB0_271
	j .LBB0_290
.LBB0_288:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r4, 16
	andi r12, r12, 1
	add.s r4, r4, r12
	add.s r4, r4, r6
	and r12, r4, r8
	setlt.u r1, r18, r1
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r1, zero, .LBB0_287
.LBB0_289:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r6
	and r28, r1, r8
	setlt.u r1, r18, r9
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r1, zero, .LBB0_271
.LBB0_290:                              # %vector.body65
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r6
	and r10, r1, r8
	j .LBB0_271
.LBB0_291:                              # %.sink.split54
                                        #   in Loop: Header=BB0_7 Depth=1
	mfence { sm }
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r13
	loadli.w r4,  -332(r30)                 # 4-byte Folded Reload
.LBB0_292:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	loadli.w r1,  -312(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.293:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r16, zero, 64
	addli r21, zero, 13
	.loc	1 377 7 is_stmt 1               # parallel-rne.mlir:377:7
	bneq r13, zero, .LBB0_6
# %bb.294:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	loadli.w r1,  -376(r30)                 # 4-byte Folded Reload
	load.d r[11:12], -296(r30)              # 8-byte Folded Reload
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	loadli.w r9,  -372(r30)                 # 4-byte Folded Reload
	addli r14, r4, 0
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	load.d r[19:20], -368(r30)              # 8-byte Folded Reload
	addli r15, zero, 1
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	zext_int2long r[1:2], r1
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	sext_int2long r[9:10], r9
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	min.ul r[3:4], r[1:2], r[11:12]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	min.sl r[11:12], r[9:10], r[11:12]
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	addli.d r[3:4], r[3:4], 128
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	addli.d r[3:4], r[11:12], 128
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	addli r11, zero, 19
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	max.sl r[3:4], r[3:4], r[9:10]
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	sll.d r[11:12], r[19:20], r11
	load.d r[19:20], 16(r30)
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.ul r[1:2], r[1:2], r[24:25]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	sub.sl r[3:4], r[3:4], r[9:10]
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	load.d r[9:10], -360(r30)               # 8-byte Folded Reload
	add.ul r[11:12], r[19:20], r[11:12]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	min.sl r[3:4], r[3:4], r[24:25]
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	add.ul r[9:10], r[11:12], r[9:10]
	addli r11, zero, 12
	addli r12, zero, 5
	xwait r11, 0
	lock zero, r12
	ori r11, r17, 64
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r15, zero, 1
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r11, r16, 3
	addli r9, r1, 31
	addli r10, zero, 128
	slli r1, r1, 1
	addli r2, zero, 512
	srli r9, r9, 5
	andi r1, r1, 62
	dma_cfg r16, r10, r9, 4
	addli r9, zero, 4096
	dma_cfg r9, r2, r3, 5
	addli r4, r14, 0
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r21, 0
	j .LBB0_6
.LBB0_295:                              # %._crit_edge
	.loc	1 379 5                         # parallel-rne.mlir:379:5
	xsignal zero, 0
	bneq r13, zero, .LBB0_297
# %bb.296:
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
.LBB0_297:
	.loc	1 380 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:380:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-sdztjrdi" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
