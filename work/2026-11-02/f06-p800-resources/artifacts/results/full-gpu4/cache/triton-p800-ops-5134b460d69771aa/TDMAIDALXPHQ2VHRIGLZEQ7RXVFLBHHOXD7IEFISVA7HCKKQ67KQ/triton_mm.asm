	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-8asj4fd9" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -752
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r8
	addli r30, sp, 688
	xsignal_mode_cfg r1
	beq r8, zero, .LBB0_2
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -120(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -284(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -400(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -596(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r1, r2, r1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r3, r1, r3
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r2, -1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w r4, -116(r30)
	storeli.w r4, -112(r30)
	storeli.w r4, -108(r30)
	storeli.w r4, -104(r30)
	storeli.w r4, -100(r30)
	storeli.w r4, -96(r30)
	storeli.w r4, -92(r30)
	storeli.w r4, -88(r30)
	storeli.w r4, -84(r30)
	storeli.w r4, -80(r30)
	storeli.w r4, -76(r30)
	storeli.w r4, -72(r30)
	storeli.w r4, -68(r30)
	storeli.w r4, -64(r30)
	storeli.w r4, -60(r30)
	storeli.w r4, -56(r30)
	storeli.w r4, -52(r30)
	storeli.w r4, -48(r30)
	storeli.w r4, -44(r30)
	storeli.w r4, -40(r30)
	storeli.w r4, -36(r30)
	storeli.w r4, -32(r30)
	storeli.w r4, -28(r30)
	storeli.w r4, -24(r30)
	storeli.w r4, -20(r30)
	storeli.w r4, -16(r30)
	storeli.w r4, -12(r30)
	storeli.w r4, -8(r30)
	storeli.w r4, -4(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r4, -280(r30)
	storeli.w r4, -276(r30)
	storeli.w r4, -272(r30)
	storeli.w r4, -268(r30)
	storeli.w r4, -264(r30)
	storeli.w r4, -260(r30)
	storeli.w r4, -256(r30)
	storeli.w r4, -252(r30)
	storeli.w r4, -248(r30)
	storeli.w r4, -244(r30)
	storeli.w r4, -240(r30)
	storeli.w r4, -236(r30)
	storeli.w r4, -232(r30)
	storeli.w r4, -228(r30)
	storeli.w r4, -224(r30)
	storeli.w r4, -220(r30)
	storeli.w r4, -216(r30)
	storeli.w r4, -212(r30)
	storeli.w r4, -208(r30)
	storeli.w r4, -204(r30)
	storeli.w r4, -200(r30)
	storeli.w r4, -196(r30)
	storeli.w r4, -192(r30)
	storeli.w r4, -188(r30)
	storeli.w r4, -184(r30)
	storeli.w r4, -180(r30)
	storeli.w r4, -176(r30)
	storeli.w r4, -172(r30)
	storeli.w r4, -168(r30)
	storeli.w r4, -164(r30)
	storeli.w r4, -160(r30)
	storeli.w r4, -156(r30)
	storeli.w r4, -152(r30)
	storeli.w r4, -148(r30)
	storeli.w r4, -144(r30)
	storeli.w r4, -140(r30)
	storeli.w r4, -136(r30)
	storeli.w r4, -132(r30)
	storeli.w r4, -128(r30)
	storeli.w r4, -124(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r4, -396(r30)
	storeli.w r4, -392(r30)
	storeli.w r4, -388(r30)
	storeli.w r4, -384(r30)
	storeli.w r4, -380(r30)
	storeli.w r4, -376(r30)
	storeli.w r4, -372(r30)
	storeli.w r4, -368(r30)
	storeli.w r4, -364(r30)
	storeli.w r4, -360(r30)
	storeli.w r4, -356(r30)
	storeli.w r4, -352(r30)
	storeli.w r4, -348(r30)
	storeli.w r4, -344(r30)
	storeli.w r4, -340(r30)
	storeli.w r4, -336(r30)
	storeli.w r4, -332(r30)
	storeli.w r4, -328(r30)
	storeli.w r4, -324(r30)
	storeli.w r4, -320(r30)
	storeli.w r4, -316(r30)
	storeli.w r4, -312(r30)
	storeli.w r4, -308(r30)
	storeli.w r4, -304(r30)
	storeli.w r4, -300(r30)
	storeli.w r4, -296(r30)
	storeli.w r4, -292(r30)
	storeli.w r4, -288(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r4, -592(r30)
	storeli.w r4, -588(r30)
	storeli.w r4, -584(r30)
	storeli.w r4, -580(r30)
	storeli.w r4, -576(r30)
	storeli.w r4, -572(r30)
	storeli.w r4, -568(r30)
	storeli.w r4, -564(r30)
	storeli.w r4, -560(r30)
	storeli.w r4, -556(r30)
	storeli.w r4, -552(r30)
	storeli.w r4, -548(r30)
	storeli.w r4, -544(r30)
	storeli.w r4, -540(r30)
	storeli.w r4, -536(r30)
	storeli.w r4, -532(r30)
	storeli.w r4, -528(r30)
	storeli.w r4, -524(r30)
	storeli.w r4, -520(r30)
	storeli.w r4, -516(r30)
	storeli.w r4, -512(r30)
	storeli.w r4, -508(r30)
	storeli.w r4, -504(r30)
	storeli.w r4, -500(r30)
	storeli.w r4, -496(r30)
	storeli.w r4, -492(r30)
	storeli.w r4, -488(r30)
	storeli.w r4, -484(r30)
	storeli.w r4, -480(r30)
	storeli.w r4, -476(r30)
	storeli.w r4, -472(r30)
	storeli.w r4, -468(r30)
	storeli.w r4, -464(r30)
	storeli.w r4, -460(r30)
	storeli.w r4, -456(r30)
	storeli.w r4, -452(r30)
	storeli.w r4, -448(r30)
	storeli.w r4, -444(r30)
	storeli.w r4, -440(r30)
	storeli.w r4, -436(r30)
	storeli.w r4, -432(r30)
	storeli.w r4, -428(r30)
	storeli.w r4, -424(r30)
	storeli.w r4, -420(r30)
	storeli.w r4, -416(r30)
	storeli.w r4, -412(r30)
	storeli.w r4, -408(r30)
	storeli.w r4, -404(r30)
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r6
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r3, r2, r3
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	ble.s r3, r1, .LBB0_279
# %bb.4:                                # %.lr.ph
	.loc	1 41 11                         # parallel-rne.mlir:41:11
	sext_int2long r[9:10], r1
	lui r1, 7
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	addli r18, zero, 64
	addli r19, zero, 7
	lui r25, 48
	addli r7, zero, 0
	ori r17, r1, 4095
	lui r1, 127
	.loc	1 41 11                         # parallel-rne.mlir:41:11
	store.d r[2:3], -688(r30)               # 8-byte Folded Spill
	lui r2, 522239
	lui r16, 1048448
	ori r1, r1, 4095
	ori r5, r2, 4095
	storeli.w r1, -628(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r3, r1, 4095
	lui r1, 522240
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 368 7 is_stmt 1               # parallel-rne.mlir:368:7
	addli r2, zero, 11
	lui r25, 48
	xsignal r2, 0
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r2, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[9:10], -648(r30)               # 8-byte Folded Reload
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	load.d r[6:7], -688(r30)                # 8-byte Folded Reload
	addli.d r[9:10], r[9:10], 1
	setlt.sl r2, r[9:10], r[6:7]
	loadli.w r7,  -652(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_279
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_74 Depth 3
                                        #       Child Loop BB0_95 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_67 Depth 3
                                        #     Child Loop BB0_101 Depth 2
                                        #       Child Loop BB0_103 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #     Child Loop BB0_131 Depth 2
                                        #       Child Loop BB0_133 Depth 3
                                        #       Child Loop BB0_154 Depth 3
                                        #     Child Loop BB0_160 Depth 2
                                        #       Child Loop BB0_162 Depth 3
                                        #       Child Loop BB0_183 Depth 3
                                        #     Child Loop BB0_192 Depth 2
                                        #       Child Loop BB0_194 Depth 3
                                        #       Child Loop BB0_215 Depth 3
                                        #     Child Loop BB0_249 Depth 2
                                        #       Child Loop BB0_251 Depth 3
                                        #       Child Loop BB0_272 Depth 3
                                        #     Child Loop BB0_221 Depth 2
                                        #       Child Loop BB0_223 Depth 3
                                        #       Child Loop BB0_244 Depth 3
	.loc	1 76 7                          # parallel-rne.mlir:76:7
	addli r2, zero, 4
	bneq r8, r2, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	loadli.w r4,  28(r30)
	addli r6, zero, 3
	store.d r[9:10], -648(r30)              # 8-byte Folded Spill
	.loc	1 94 15 is_stmt 1               # parallel-rne.mlir:94:15
	loadli.w r15,  -596(r30)
	addli r14, zero, 0
	addli r26, zero, 7
	mod.s r6, r7, r6
	addli r7, r7, 1
	div.s r2, r9, r2
	addli r9, zero, 8
	storeli.w r7, -652(r30)                 # 4-byte Folded Spill
	slli r22, r6, 15
	lui r6, 24
	div.s r2, r2, r4
	add.s r23, r22, r6
	div.s r4, r2, r18
	slli r8, r4, 3
	slli r4, r4, 6
	sub.s r7, r9, r8
	sub.s r4, r2, r4
	min.s r7, r7, r9
	mod.s r2, r2, r7
	div.s r4, r4, r7
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	loadli.w r7,  -400(r30)
	add.s r2, r8, r2
	zext_int2long r[8:9], r4
	slli r6, r4, 7
	slli r4, r2, 6
	zext_int2long r[10:11], r2
	addli r2, zero, 16
	sll.d r[8:9], r[8:9], r19
	storeli.w r6, -680(r30)                 # 4-byte Folded Spill
	sll.d r[12:13], r[10:11], r2
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r2, zero, 1
	store.d r[10:11], -672(r30)             # 8-byte Folded Spill
	storeli.w r4, -676(r30)                 # 4-byte Folded Spill
	addli r4, zero, 28
	sll.d r[10:11], r[8:9], r2
	and.d r[8:9], r[12:13], r[16:17]
	store.d r[12:13], -616(r30)             # 8-byte Folded Spill
	store.d r[8:9], -624(r30)               # 8-byte Folded Spill
	load.d r[8:9], 8(r30)
	store.d r[10:11], -664(r30)             # 8-byte Folded Spill
	add.ul r[8:9], r[8:9], r[10:11]
	store.d r[8:9], -640(r30)               # 8-byte Folded Spill
	addli r9, zero, 0
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	ori r4, r25, 64
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	lock zero, r13
	addli r7, zero, 2
	addli r19, zero, 256
	dma_cfg r18, r18, zero, 0
	add.s r2, r2, r4
	addli r4, zero, 64
	dma_cfg zero, r11, zero, 2
	dma_cfg r2, r10, r4, 3
	addli r11, zero, 128
	addli r2, zero, 2048
	addli r10, zero, 5
	dma_cfg r11, r4, r7, 4
	dma_cfg r19, r2, r6, 5
	addli r2, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r26, 10
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
	addli r2, zero, 18
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
	addli r2, zero, 29
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 1
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	addli r18, zero, 64
	dma_cfg zero, zero, zero, 2
	dma_cfg r27, zero, r4, 3
	dma_cfg r11, zero, r7, 4
	dma_cfg r19, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r7, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r2,  -284(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r4,  -120(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r2, r2, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r4, r4, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r2, -284(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r4, -120(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli r4, zero, 28
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	addli r9, r9, 1
	addli r2, zero, 16
	beq r9, r2, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	addli r14, r14, 1
	addli r7, r28, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	zext_int2long r[10:11], r9
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	addli r2, zero, 6
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	load.d r[18:19], -616(r30)              # 8-byte Folded Reload
	load.d r[20:21], -624(r30)              # 8-byte Folded Reload
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	sll.d r[12:13], r[10:11], r2
	loadli.w r2,  -628(r30)                 # 4-byte Folded Reload
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	add.ul r[18:19], r[12:13], r[18:19]
	zext_int2long r[12:13], r2
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	setlt.ul r2, r[12:13], r[18:19]
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	bneq r2, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[20:21], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 94 15 is_stmt 1               # parallel-rne.mlir:94:15
	addli r2, zero, 48
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r4, r7, r4
	addli r6, zero, 448
	addli r28, r7, 1
	addli r24, zero, 28
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r2, r15, r2
	zext_int2long r[12:13], r6
	addli r15, r15, 1
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r28, -400(r30)
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	store.d r[12:13], -608(r30)             # 8-byte Folded Spill
	storeli.w r15, -596(r30)
	slli r6, r2, 14
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r2, r4, 14
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r4, zero, 2
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	add.s r27, r2, r25
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	beq r8, r4, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	bneq r8, r4, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r6, zero, 1024
	sub.sl r[10:11], r[18:19], r[20:21]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	sll.d r[18:19], r[18:19], r4
	addli r21, zero, 27
	zext_int2long r[12:13], r6
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[10:11], r[10:11], r[12:13]
	load.d r[12:13], -608(r30)              # 8-byte Folded Reload
	min.sl r[12:13], r[10:11], r[12:13]
	sub.sl r[12:13], r[12:13], r[10:11]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	load.d r[10:11], 0(r30)
	addli r6, r12, 64
	addli r12, zero, 3
	addli r13, zero, 4
	add.ul r[10:11], r[10:11], r[18:19]
	addli r18, zero, 1
	xwait r12, 0
	blt.s r21, r7, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r19, zero, 5
	addli r7, zero, 2
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r4, zero, 6
	addli r20, zero, 128
	lock zero, r19
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r26, 10
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
	addli r4, zero, 29
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 30
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r27, zero, r4, 3
	dma_cfg r20, zero, r7, 4
	addli r7, zero, 256
	dma_cfg r7, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r19
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r2, zero, 2
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	addli r4, zero, 5
	addli r18, zero, 64
	addli r13, zero, 4
	xwait r2, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 64
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r2, zero, 13
	shuffle_batch r6, r27, r2, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	xsignal r13, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r8,  -120(r30)
	addli r7, zero, 29
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r2,  -284(r30)
	addli r4, zero, 40
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	lui r13, 160
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r12
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r7, r8, r7
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r4, r2, r4
	addli r2, r2, 1
	storeli.w r2, -284(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r7, r7, 15
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	slli r2, r4, 15
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r4, r8, 1
	add.s r27, r7, r13
	storeli.w r4, -120(r30)
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	beq r12, r26, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r13, zero, 4
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r4, zero, 6
	bneq r12, r4, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r20, zero, 17
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	load.d r[18:19], -640(r30)              # 8-byte Folded Reload
	addli r6, zero, 7
	addli r12, zero, 3
	sll.d r[10:11], r[10:11], r20
	xwait r6, 0
	add.ul r[10:11], r[18:19], r[10:11]
	addli r18, zero, 1
	addli r19, zero, 28
	blt.s r19, r8, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r4, zero, 5
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r2, zero, 2
	addli r8, zero, 128
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r6, 10
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
	addli r2, zero, 18
	dma_cfg zero, zero, r20, 10
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
	addli r2, zero, 29
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r27, zero, r2, 3
	dma_cfg r8, zero, r13, 4
	addli r8, zero, 512
	dma_cfg r8, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r2, 160
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	lock zero, r13
	addli r4, zero, 64
	addli r8, zero, 5
	addli r26, zero, 7
	dma_cfg r18, r18, zero, 0
	ori r2, r2, 64
	dma_cfg zero, r11, zero, 2
	add.s r2, r7, r2
	addli r7, zero, 6
	dma_cfg r2, r10, r4, 3
	addli r10, zero, 128
	addli r11, zero, 512
	addli r2, zero, 2048
	dma_cfg r10, r4, r13, 4
	dma_cfg r11, r2, r4, 5
	addli r2, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r6, 10
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
	addli r2, zero, 18
	dma_cfg zero, zero, r20, 10
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
	addli r2, zero, 29
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 1
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	addli r18, zero, 64
	dma_cfg zero, zero, zero, 2
	dma_cfg r27, zero, r4, 3
	dma_cfg r10, zero, r13, 4
	dma_cfg r11, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	xsignal r7, 0
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r8
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r4, zero, 6
	addli r6, zero, 128
	addli r18, zero, 64
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
	addli r13, zero, 4
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	xwait r4, 0
	addli r4, zero, 9
	xwait r4, 0
	addli r4, zero, 2
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 64
	ds_cfg r6, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r6, zero, 13
	shuffle_coa r2, r27, r4, 2
	addli r2, zero, 8
	unlock zero
	xsignal r26, 0
	xsignal r2, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	bneq r8, r13, .LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	addli r4, zero, 8
	xwait r13, 0
	addli r18, zero, 64
	addli r7, zero, 1
	addli r8, zero, 1
	xwait r4, 0
	addli r4, zero, 0
	beq r14, zero, .LBB0_31
.LBB0_30:                               # %.preheader30
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r10, r4, 14
	slli r4, r4, 8
	lock zero, r7
	mm_cfg r18, r18, r18, 0
	or r10, r10, r2
	or r4, r4, r23
	mm_cfg r13, r13, r7, 2
	mm_acc r4, r6, r10, 8
	andi r10, r8, 1
	addli r4, zero, 1
	addli r8, zero, 0
	unlock r7
	bneq r10, zero, .LBB0_30
	j .LBB0_32
.LBB0_31:                               # %.preheader29
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r10, r4, 14
	slli r4, r4, 8
	lock zero, r7
	mm_cfg r18, r18, r18, 0
	or r10, r10, r2
	or r4, r4, r23
	mm_cfg r13, r13, r7, 2
	mm r4, r6, r10, 8
	andi r10, r8, 1
	addli r4, zero, 1
	addli r8, zero, 0
	unlock r7
	bneq r10, zero, .LBB0_31
.LBB0_32:                               # %.thread20.thread46
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 5
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r9, r9, 1
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
	addli r4, zero, 28
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r2, zero, 16
	bneq r9, r2, .LBB0_14
	j .LBB0_35
.LBB0_33:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r9, r9, 1
	addli r18, zero, 64
	addli r2, zero, 16
	addli r4, zero, 28
	bneq r9, r2, .LBB0_14
	j .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	bneq r8, r13, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	storeli.w zero, -624(r30)               # 4-byte Folded Spill
	xsignal r2, 0
	j .LBB0_39
.LBB0_36:                               # %.thread45
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	addli r2, zero, 3
	bneq r8, r2, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	storeli.w r2, -624(r30)                 # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -624(r30)               # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	addli r2, zero, 255
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	xfence
	addli r19, zero, 7
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { lm, sm, gm }
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	csr_set csr5, r2
	addli r2, zero, 128
	sync_core
	zext_int2long r[14:15], r2
	addli r2, zero, 127
	zext_int2long r[24:25], r2
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	beq r8, zero, .LBB0_70
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r2, zero, 2
	beq r8, r2, .LBB0_99
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 1
	bneq r8, r2, .LBB0_128
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_44
.LBB0_43:                               # %middle.block102
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[8:9], -616(r30)                # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 172 9 is_stmt 1               # parallel-rne.mlir:172:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_127
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_67 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r2
	zext_int2long r[6:7], zero
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	beq r22, r23, .LBB0_67
	j .LBB0_46
.LBB0_45:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	addli.d r[6:7], r[6:7], 4
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r4, r22, r9
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	seteq.d r2, r[6:7], r[14:15]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r19, 12(r4)
	stores.w r26, 8(r4)
	stores.w r20, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	bneq r2, zero, .LBB0_43
.LBB0_46:                               # %vector.body98
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r9, r8, 2
	add.s r18, r23, r9
	loads.w r2, 12(r18)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r11, r2, r3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r4, r1, r11
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r4, zero, .LBB0_48
# %bb.47:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r2, 0
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	lui r4, 1024
	or r19, r2, r4
.LBB0_49:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	loads.w r10, 8(r18)
	and r8, r10, r3
	setlt.u r4, r1, r8
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r4, zero, .LBB0_51
# %bb.50:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r10, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_46 Depth=3
	lui r4, 1024
	or r26, r10, r4
.LBB0_52:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	loads.w r13, 4(r18)
	and r21, r13, r3
	setlt.u r4, r1, r21
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r4, zero, .LBB0_54
# %bb.53:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_46 Depth=3
	lui r4, 1024
	or r20, r13, r4
.LBB0_55:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	loads.w r12, 0(r18)
	and r4, r12, r3
	setlt.u r18, r1, r4
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r18, zero, .LBB0_57
# %bb.56:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r4, r5, r4
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r4, zero, .LBB0_58
	j .LBB0_59
.LBB0_57:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r12, r18
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r4, r5, r4
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r4, zero, .LBB0_59
.LBB0_58:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r17
	and r18, r4, r12
.LBB0_59:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	setlt.u r4, r5, r21
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r4, zero, .LBB0_62
# %bb.60:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r17
	and r20, r4, r12
	setlt.u r4, r5, r8
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	beq r4, zero, .LBB0_63
.LBB0_61:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r4, zero, .LBB0_45
	j .LBB0_64
.LBB0_62:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r8
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r4, zero, .LBB0_61
.LBB0_63:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r10, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r17
	and r26, r4, r8
	setlt.u r4, r5, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r4, zero, .LBB0_45
.LBB0_64:                               # %vector.body98
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r17
	and r19, r2, r4
	j .LBB0_45
.LBB0_65:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_67 Depth=3
	srli r4, r9, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r17
	and r8, r4, r8
.LBB0_66:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 173 11 is_stmt 1              # parallel-rne.mlir:173:11
	setlt.ul r4, r[6:7], r[24:25]
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	add.s r2, r22, r2
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 188 13                        # parallel-rne.mlir:188:13
	stores.w r8, 0(r2)
	.loc	1 173 11                        # parallel-rne.mlir:173:11
	beq r4, zero, .LBB0_43
.LBB0_67:                               # %scalar.ph96
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r2, r8, 2
	add.s r4, r23, r2
	loads.w r9, 0(r4)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r4, r9, r3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	setlt.u r8, r1, r4
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	bneq r8, zero, .LBB0_69
# %bb.68:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r4, r5, r4
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r4, zero, .LBB0_66
	j .LBB0_65
.LBB0_69:                               #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 185 19 is_stmt 1              # parallel-rne.mlir:185:19
	setlt.u r4, r5, r4
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	bneq r4, zero, .LBB0_66
	j .LBB0_65
.LBB0_70:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_72
.LBB0_71:                               # %middle.block120
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r19, zero, 7
	load.d r[8:9], -616(r30)                # 8-byte Folded Reload
	zext_int2long r[6:7], r19
	.loc	1 143 9 is_stmt 1               # parallel-rne.mlir:143:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_98
.LBB0_72:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_74 Depth 3
                                        #       Child Loop BB0_95 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r2
	zext_int2long r[6:7], zero
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	beq r22, r23, .LBB0_95
	j .LBB0_74
.LBB0_73:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	addli.d r[6:7], r[6:7], 4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r8, r22, r9
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	seteq.d r4, r[6:7], r[14:15]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r2, 12(r8)
	stores.w r10, 8(r8)
	stores.w r20, 4(r8)
	stores.w r12, 0(r8)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	bneq r4, zero, .LBB0_71
.LBB0_74:                               # %vector.body116
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r9, r8, 2
	add.s r18, r23, r9
	loads.w r19, 12(r18)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r11, r19, r3
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r2, r1, r11
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r2, zero, .LBB0_76
# %bb.75:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r19, 0
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_74 Depth=3
	lui r2, 1024
	or r2, r19, r2
.LBB0_77:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	loads.w r26, 8(r18)
	and r8, r26, r3
	setlt.u r4, r1, r8
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r4, zero, .LBB0_79
# %bb.78:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r26, 0
	j .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_74 Depth=3
	lui r4, 1024
	or r10, r26, r4
.LBB0_80:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	loads.w r13, 4(r18)
	and r21, r13, r3
	setlt.u r4, r1, r21
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r4, zero, .LBB0_82
# %bb.81:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_83
.LBB0_82:                               #   in Loop: Header=BB0_74 Depth=3
	lui r4, 1024
	or r20, r13, r4
.LBB0_83:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	loads.w r18, 0(r18)
	and r4, r18, r3
	setlt.u r12, r1, r4
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r12, zero, .LBB0_85
# %bb.84:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r4, r5, r4
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r4, zero, .LBB0_86
	j .LBB0_87
.LBB0_85:                               #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r18, r12
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r4, r5, r4
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r4, zero, .LBB0_87
.LBB0_86:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r18, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r18, r4
	add.s r4, r4, r17
	and r12, r4, r12
.LBB0_87:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	setlt.u r4, r5, r21
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r4, zero, .LBB0_90
# %bb.88:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	lui r13, 1048560
	add.s r4, r4, r17
	and r20, r4, r13
	setlt.u r4, r5, r8
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r4, zero, .LBB0_91
.LBB0_89:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r4, zero, .LBB0_73
	j .LBB0_92
.LBB0_90:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r8
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r4, zero, .LBB0_89
.LBB0_91:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r26, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r26, r4
	add.s r4, r4, r17
	and r10, r4, r8
	setlt.u r4, r5, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r4, zero, .LBB0_73
.LBB0_92:                               # %vector.body116
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r17
	and r2, r2, r4
	j .LBB0_73
.LBB0_93:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_95 Depth=3
	srli r4, r9, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r17
	and r8, r4, r8
.LBB0_94:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	setlt.ul r4, r[6:7], r[24:25]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r2, r22, r2
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r8, 0(r2)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r4, zero, .LBB0_71
.LBB0_95:                               # %scalar.ph114
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r2, r8, 2
	add.s r4, r23, r2
	loads.w r9, 0(r4)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r4, r9, r3
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r8, r1, r4
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r8, zero, .LBB0_97
# %bb.96:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r4, r5, r4
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r4, zero, .LBB0_94
	j .LBB0_93
.LBB0_97:                               #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r4, r5, r4
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r4, zero, .LBB0_94
	j .LBB0_93
.LBB0_98:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
	addli r18, zero, 64
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { sm }
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r2, zero, 2
	bneq r8, r2, .LBB0_41
.LBB0_99:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 193 7 is_stmt 1               # parallel-rne.mlir:193:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_101
.LBB0_100:                              # %middle.block111
                                        #   in Loop: Header=BB0_101 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	load.d r[8:9], -616(r30)                # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 201 9 is_stmt 1               # parallel-rne.mlir:201:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_127
.LBB0_101:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_103 Depth 3
                                        #       Child Loop BB0_124 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r2
	zext_int2long r[6:7], zero
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	beq r22, r23, .LBB0_124
	j .LBB0_103
.LBB0_102:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	addli.d r[6:7], r[6:7], 4
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	add.s r4, r22, r9
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	seteq.d r2, r[6:7], r[14:15]
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r19, 12(r4)
	stores.w r26, 8(r4)
	stores.w r20, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	bneq r2, zero, .LBB0_100
.LBB0_103:                              # %vector.body107
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r9, r8, 2
	add.s r18, r23, r9
	loads.w r2, 12(r18)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r11, r2, r3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r4, r1, r11
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r4, zero, .LBB0_105
# %bb.104:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r2, 0
	j .LBB0_106
.LBB0_105:                              #   in Loop: Header=BB0_103 Depth=3
	lui r4, 1024
	or r19, r2, r4
.LBB0_106:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	loads.w r10, 8(r18)
	and r8, r10, r3
	setlt.u r4, r1, r8
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r4, zero, .LBB0_108
# %bb.107:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r10, 0
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_103 Depth=3
	lui r4, 1024
	or r26, r10, r4
.LBB0_109:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	loads.w r13, 4(r18)
	and r21, r13, r3
	setlt.u r4, r1, r21
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r4, zero, .LBB0_111
# %bb.110:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_103 Depth=3
	lui r4, 1024
	or r20, r13, r4
.LBB0_112:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	loads.w r12, 0(r18)
	and r4, r12, r3
	setlt.u r18, r1, r4
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r18, zero, .LBB0_114
# %bb.113:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r4, r5, r4
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r4, zero, .LBB0_115
	j .LBB0_116
.LBB0_114:                              #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r12, r18
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r4, r5, r4
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r4, zero, .LBB0_116
.LBB0_115:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r17
	and r18, r4, r12
.LBB0_116:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	setlt.u r4, r5, r21
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r4, zero, .LBB0_119
# %bb.117:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r17
	and r20, r4, r12
	setlt.u r4, r5, r8
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r4, zero, .LBB0_120
.LBB0_118:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r11
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r4, zero, .LBB0_102
	j .LBB0_121
.LBB0_119:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r8
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r4, zero, .LBB0_118
.LBB0_120:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r10, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r17
	and r26, r4, r8
	setlt.u r4, r5, r11
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r4, zero, .LBB0_102
.LBB0_121:                              # %vector.body107
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r17
	and r19, r2, r4
	j .LBB0_102
.LBB0_122:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_124 Depth=3
	srli r4, r9, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r17
	and r8, r4, r8
.LBB0_123:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	setlt.ul r4, r[6:7], r[24:25]
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	add.s r2, r22, r2
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r8, 0(r2)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	beq r4, zero, .LBB0_100
.LBB0_124:                              # %scalar.ph105
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r2, r8, 2
	add.s r4, r23, r2
	loads.w r9, 0(r4)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r4, r9, r3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r8, r1, r4
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r8, zero, .LBB0_126
# %bb.125:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r4, r5, r4
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r4, zero, .LBB0_123
	j .LBB0_122
.LBB0_126:                              #   in Loop: Header=BB0_124 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r4, r5, r4
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r4, zero, .LBB0_123
	j .LBB0_122
.LBB0_127:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
	addli r18, zero, 64
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_128:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	loadli.w r2,  -624(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_157
# %bb.129:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_131
.LBB0_130:                              # %middle.block93
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[8:9], -616(r30)                # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 230 9 is_stmt 1               # parallel-rne.mlir:230:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_186
.LBB0_131:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_133 Depth 3
                                        #       Child Loop BB0_154 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r2
	zext_int2long r[6:7], zero
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	beq r22, r23, .LBB0_154
	j .LBB0_133
.LBB0_132:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	addli.d r[6:7], r[6:7], 4
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	add.s r4, r22, r9
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	seteq.d r2, r[6:7], r[14:15]
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r19, 12(r4)
	stores.w r26, 8(r4)
	stores.w r20, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	bneq r2, zero, .LBB0_130
.LBB0_133:                              # %vector.body89
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r9, r8, 2
	add.s r18, r23, r9
	loads.w r2, 12(r18)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r11, r2, r3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r4, r1, r11
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r4, zero, .LBB0_135
# %bb.134:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r2, 0
	j .LBB0_136
.LBB0_135:                              #   in Loop: Header=BB0_133 Depth=3
	lui r4, 1024
	or r19, r2, r4
.LBB0_136:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	loads.w r10, 8(r18)
	and r8, r10, r3
	setlt.u r4, r1, r8
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r4, zero, .LBB0_138
# %bb.137:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r10, 0
	j .LBB0_139
.LBB0_138:                              #   in Loop: Header=BB0_133 Depth=3
	lui r4, 1024
	or r26, r10, r4
.LBB0_139:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	loads.w r13, 4(r18)
	and r21, r13, r3
	setlt.u r4, r1, r21
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r4, zero, .LBB0_141
# %bb.140:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_142
.LBB0_141:                              #   in Loop: Header=BB0_133 Depth=3
	lui r4, 1024
	or r20, r13, r4
.LBB0_142:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	loads.w r12, 0(r18)
	and r4, r12, r3
	setlt.u r18, r1, r4
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r18, zero, .LBB0_151
# %bb.143:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r4, r5, r4
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r4, zero, .LBB0_145
.LBB0_144:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r17
	and r18, r4, r12
.LBB0_145:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	setlt.u r4, r5, r21
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r4, zero, .LBB0_148
# %bb.146:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r17
	and r20, r4, r12
	setlt.u r4, r5, r8
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r4, zero, .LBB0_149
.LBB0_147:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r4, zero, .LBB0_132
	j .LBB0_150
.LBB0_148:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r8
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r4, zero, .LBB0_147
.LBB0_149:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r10, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r17
	and r26, r4, r8
	setlt.u r4, r5, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r4, zero, .LBB0_132
.LBB0_150:                              # %vector.body89
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r17
	and r19, r2, r4
	j .LBB0_132
.LBB0_151:                              #   in Loop: Header=BB0_133 Depth=3
	lui r18, 1024
	or r18, r12, r18
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r4, r5, r4
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r4, zero, .LBB0_144
	j .LBB0_145
.LBB0_152:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r17
	and r8, r4, r8
.LBB0_153:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	setlt.ul r4, r[6:7], r[24:25]
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	add.s r2, r22, r2
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r8, 0(r2)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	beq r4, zero, .LBB0_130
.LBB0_154:                              # %scalar.ph87
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r2, r8, 2
	add.s r4, r23, r2
	loads.w r9, 0(r4)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r4, r9, r3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r8, r1, r4
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r8, zero, .LBB0_156
# %bb.155:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r4, r5, r4
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r4, zero, .LBB0_153
	j .LBB0_152
.LBB0_156:                              #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r4, r5, r4
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r4, zero, .LBB0_153
	j .LBB0_152
.LBB0_157:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	addli r2, zero, 4
	bneq r8, r2, .LBB0_187
.LBB0_158:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_160
.LBB0_159:                              # %middle.block84
                                        #   in Loop: Header=BB0_160 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 39
	load.d r[8:9], -616(r30)                # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 259 9 is_stmt 1               # parallel-rne.mlir:259:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_218
.LBB0_160:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_162 Depth 3
                                        #       Child Loop BB0_183 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r2
	zext_int2long r[6:7], zero
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	beq r22, r23, .LBB0_183
	j .LBB0_162
.LBB0_161:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	addli.d r[6:7], r[6:7], 4
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	add.s r4, r22, r9
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	seteq.d r2, r[6:7], r[14:15]
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	stores.w r19, 12(r4)
	stores.w r26, 8(r4)
	stores.w r20, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	bneq r2, zero, .LBB0_159
.LBB0_162:                              # %vector.body80
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_160 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r9, r8, 2
	add.s r18, r23, r9
	loads.w r2, 12(r18)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	and r11, r2, r3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	setlt.u r4, r1, r11
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r4, zero, .LBB0_164
# %bb.163:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r2, 0
	j .LBB0_165
.LBB0_164:                              #   in Loop: Header=BB0_162 Depth=3
	lui r4, 1024
	or r19, r2, r4
.LBB0_165:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	loads.w r10, 8(r18)
	and r8, r10, r3
	setlt.u r4, r1, r8
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r4, zero, .LBB0_167
# %bb.166:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r10, 0
	j .LBB0_168
.LBB0_167:                              #   in Loop: Header=BB0_162 Depth=3
	lui r4, 1024
	or r26, r10, r4
.LBB0_168:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	loads.w r13, 4(r18)
	and r21, r13, r3
	setlt.u r4, r1, r21
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r4, zero, .LBB0_170
# %bb.169:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_162 Depth=3
	lui r4, 1024
	or r20, r13, r4
.LBB0_171:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	loads.w r12, 0(r18)
	and r4, r12, r3
	setlt.u r18, r1, r4
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r18, zero, .LBB0_180
# %bb.172:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r4, r5, r4
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r4, zero, .LBB0_174
.LBB0_173:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r17
	and r18, r4, r12
.LBB0_174:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	setlt.u r4, r5, r21
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r4, zero, .LBB0_177
# %bb.175:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r17
	and r20, r4, r12
	setlt.u r4, r5, r8
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r4, zero, .LBB0_178
.LBB0_176:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r11
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r4, zero, .LBB0_161
	j .LBB0_179
.LBB0_177:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r8
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r4, zero, .LBB0_176
.LBB0_178:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r10, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r17
	and r26, r4, r8
	setlt.u r4, r5, r11
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r4, zero, .LBB0_161
.LBB0_179:                              # %vector.body80
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r17
	and r19, r2, r4
	j .LBB0_161
.LBB0_180:                              #   in Loop: Header=BB0_162 Depth=3
	lui r18, 1024
	or r18, r12, r18
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r4, r5, r4
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	beq r4, zero, .LBB0_173
	j .LBB0_174
.LBB0_181:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r17
	and r8, r4, r8
.LBB0_182:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 260 11 is_stmt 1              # parallel-rne.mlir:260:11
	setlt.ul r4, r[6:7], r[24:25]
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	add.s r2, r22, r2
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 275 13                        # parallel-rne.mlir:275:13
	stores.w r8, 0(r2)
	.loc	1 260 11                        # parallel-rne.mlir:260:11
	beq r4, zero, .LBB0_159
.LBB0_183:                              # %scalar.ph78
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_160 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r2, r8, 2
	add.s r4, r23, r2
	loads.w r9, 0(r4)
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	and r4, r9, r3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	setlt.u r8, r1, r4
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r8, zero, .LBB0_185
# %bb.184:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r4, r5, r4
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r4, zero, .LBB0_182
	j .LBB0_181
.LBB0_185:                              #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 272 19 is_stmt 1              # parallel-rne.mlir:272:19
	setlt.u r4, r5, r4
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	bneq r4, zero, .LBB0_182
	j .LBB0_181
.LBB0_186:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
	addli r18, zero, 64
	.loc	1 222 7                         # parallel-rne.mlir:222:7
	mfence { sm }
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	addli r2, zero, 4
	beq r8, r2, .LBB0_158
.LBB0_187:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	beq r8, r19, .LBB0_219
.LBB0_188:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 6
	beq r8, r2, .LBB0_247
# %bb.189:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	bneq r8, r2, .LBB0_276
# %bb.190:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_192
.LBB0_191:                              # %middle.block
                                        #   in Loop: Header=BB0_192 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 47
	load.d r[8:9], -616(r30)                # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 288 9 is_stmt 1               # parallel-rne.mlir:288:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_275
.LBB0_192:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_194 Depth 3
                                        #       Child Loop BB0_215 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r2
	zext_int2long r[6:7], zero
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	beq r22, r23, .LBB0_215
	j .LBB0_194
.LBB0_193:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	addli.d r[6:7], r[6:7], 4
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	add.s r4, r22, r9
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	seteq.d r2, r[6:7], r[14:15]
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r19, 12(r4)
	stores.w r26, 8(r4)
	stores.w r20, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	bneq r2, zero, .LBB0_191
.LBB0_194:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r9, r8, 2
	add.s r18, r23, r9
	loads.w r2, 12(r18)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r11, r2, r3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r4, r1, r11
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r4, zero, .LBB0_196
# %bb.195:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r2, 0
	j .LBB0_197
.LBB0_196:                              #   in Loop: Header=BB0_194 Depth=3
	lui r4, 1024
	or r19, r2, r4
.LBB0_197:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	loads.w r10, 8(r18)
	and r8, r10, r3
	setlt.u r4, r1, r8
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r4, zero, .LBB0_199
# %bb.198:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r10, 0
	j .LBB0_200
.LBB0_199:                              #   in Loop: Header=BB0_194 Depth=3
	lui r4, 1024
	or r26, r10, r4
.LBB0_200:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	loads.w r13, 4(r18)
	and r21, r13, r3
	setlt.u r4, r1, r21
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r4, zero, .LBB0_202
# %bb.201:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_203
.LBB0_202:                              #   in Loop: Header=BB0_194 Depth=3
	lui r4, 1024
	or r20, r13, r4
.LBB0_203:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	loads.w r12, 0(r18)
	and r4, r12, r3
	setlt.u r18, r1, r4
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r18, zero, .LBB0_212
# %bb.204:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r4, r5, r4
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r4, zero, .LBB0_206
.LBB0_205:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r17
	and r18, r4, r12
.LBB0_206:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	setlt.u r4, r5, r21
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r4, zero, .LBB0_209
# %bb.207:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r17
	and r20, r4, r12
	setlt.u r4, r5, r8
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r4, zero, .LBB0_210
.LBB0_208:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r11
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r4, zero, .LBB0_193
	j .LBB0_211
.LBB0_209:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r8
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r4, zero, .LBB0_208
.LBB0_210:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r10, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r17
	and r26, r4, r8
	setlt.u r4, r5, r11
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r4, zero, .LBB0_193
.LBB0_211:                              # %vector.body
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r17
	and r19, r2, r4
	j .LBB0_193
.LBB0_212:                              #   in Loop: Header=BB0_194 Depth=3
	lui r18, 1024
	or r18, r12, r18
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r4, r5, r4
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r4, zero, .LBB0_205
	j .LBB0_206
.LBB0_213:                              # %scalar.ph
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r9, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r17
	and r8, r4, r8
.LBB0_214:                              # %scalar.ph
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	setlt.ul r4, r[6:7], r[24:25]
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	add.s r2, r22, r2
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r8, 0(r2)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	beq r4, zero, .LBB0_191
.LBB0_215:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r2, r8, 2
	add.s r4, r23, r2
	loads.w r9, 0(r4)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r4, r9, r3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r8, r1, r4
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r8, zero, .LBB0_217
# %bb.216:                              # %scalar.ph
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r4, r5, r4
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r4, zero, .LBB0_214
	j .LBB0_213
.LBB0_217:                              #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r4, r5, r4
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r4, zero, .LBB0_214
	j .LBB0_213
.LBB0_218:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
	addli r18, zero, 64
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	mfence { sm }
	.loc	1 280 7                         # parallel-rne.mlir:280:7
	bneq r8, r19, .LBB0_188
.LBB0_219:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 338 7 is_stmt 1               # parallel-rne.mlir:338:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_221
.LBB0_220:                              # %middle.block75
                                        #   in Loop: Header=BB0_221 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	load.d r[8:9], -616(r30)                # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 346 9 is_stmt 1               # parallel-rne.mlir:346:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_275
.LBB0_221:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_223 Depth 3
                                        #       Child Loop BB0_244 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r2
	zext_int2long r[6:7], zero
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	beq r22, r23, .LBB0_244
	j .LBB0_223
.LBB0_222:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	addli.d r[6:7], r[6:7], 4
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	add.s r4, r22, r9
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	seteq.d r2, r[6:7], r[14:15]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	stores.w r19, 12(r4)
	stores.w r26, 8(r4)
	stores.w r20, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	bneq r2, zero, .LBB0_220
.LBB0_223:                              # %vector.body71
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_221 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r9, r8, 2
	add.s r18, r23, r9
	loads.w r2, 12(r18)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r11, r2, r3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r4, r1, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r4, zero, .LBB0_225
# %bb.224:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r2, 0
	j .LBB0_226
.LBB0_225:                              #   in Loop: Header=BB0_223 Depth=3
	lui r4, 1024
	or r19, r2, r4
.LBB0_226:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	loads.w r10, 8(r18)
	and r8, r10, r3
	setlt.u r4, r1, r8
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r4, zero, .LBB0_228
# %bb.227:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r10, 0
	j .LBB0_229
.LBB0_228:                              #   in Loop: Header=BB0_223 Depth=3
	lui r4, 1024
	or r26, r10, r4
.LBB0_229:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	loads.w r13, 4(r18)
	and r21, r13, r3
	setlt.u r4, r1, r21
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r4, zero, .LBB0_231
# %bb.230:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_232
.LBB0_231:                              #   in Loop: Header=BB0_223 Depth=3
	lui r4, 1024
	or r20, r13, r4
.LBB0_232:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	loads.w r12, 0(r18)
	and r4, r12, r3
	setlt.u r18, r1, r4
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r18, zero, .LBB0_234
# %bb.233:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r4, r5, r4
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r4, zero, .LBB0_235
	j .LBB0_236
.LBB0_234:                              #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r12, r18
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r4, r5, r4
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r4, zero, .LBB0_236
.LBB0_235:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r17
	and r18, r4, r12
.LBB0_236:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	setlt.u r4, r5, r21
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r4, zero, .LBB0_239
# %bb.237:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r17
	and r20, r4, r12
	setlt.u r4, r5, r8
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	beq r4, zero, .LBB0_240
.LBB0_238:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r11
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r4, zero, .LBB0_222
	j .LBB0_241
.LBB0_239:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r8
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r4, zero, .LBB0_238
.LBB0_240:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r10, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r17
	and r26, r4, r8
	setlt.u r4, r5, r11
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r4, zero, .LBB0_222
.LBB0_241:                              # %vector.body71
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r17
	and r19, r2, r4
	j .LBB0_222
.LBB0_242:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_244 Depth=3
	srli r4, r9, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r17
	and r8, r4, r8
.LBB0_243:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 347 11 is_stmt 1              # parallel-rne.mlir:347:11
	setlt.ul r4, r[6:7], r[24:25]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	add.s r2, r22, r2
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	stores.w r8, 0(r2)
	.loc	1 347 11                        # parallel-rne.mlir:347:11
	beq r4, zero, .LBB0_220
.LBB0_244:                              # %scalar.ph69
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_221 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r2, r8, 2
	add.s r4, r23, r2
	loads.w r9, 0(r4)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r4, r9, r3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	setlt.u r8, r1, r4
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r8, zero, .LBB0_246
# %bb.245:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r4, r5, r4
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r4, zero, .LBB0_243
	j .LBB0_242
.LBB0_246:                              #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 359 19 is_stmt 1              # parallel-rne.mlir:359:19
	setlt.u r4, r5, r4
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	bneq r4, zero, .LBB0_243
	j .LBB0_242
.LBB0_247:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, zero, 48
	.loc	1 309 7 is_stmt 1               # parallel-rne.mlir:309:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_249
.LBB0_248:                              # %middle.block66
                                        #   in Loop: Header=BB0_249 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 55
	load.d r[8:9], -616(r30)                # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 317 9 is_stmt 1               # parallel-rne.mlir:317:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_275
.LBB0_249:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_251 Depth 3
                                        #       Child Loop BB0_272 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[6:7], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r2
	zext_int2long r[6:7], zero
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	beq r22, r23, .LBB0_272
	j .LBB0_251
.LBB0_250:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	addli.d r[6:7], r[6:7], 4
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	add.s r4, r22, r9
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	seteq.d r2, r[6:7], r[14:15]
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	stores.w r19, 12(r4)
	stores.w r26, 8(r4)
	stores.w r20, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	bneq r2, zero, .LBB0_248
.LBB0_251:                              # %vector.body62
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r9, r8, 2
	add.s r18, r23, r9
	loads.w r2, 12(r18)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r11, r2, r3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	setlt.u r4, r1, r11
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r4, zero, .LBB0_253
# %bb.252:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r2, 0
	j .LBB0_254
.LBB0_253:                              #   in Loop: Header=BB0_251 Depth=3
	lui r4, 1024
	or r19, r2, r4
.LBB0_254:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	loads.w r10, 8(r18)
	and r8, r10, r3
	setlt.u r4, r1, r8
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r4, zero, .LBB0_256
# %bb.255:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r10, 0
	j .LBB0_257
.LBB0_256:                              #   in Loop: Header=BB0_251 Depth=3
	lui r4, 1024
	or r26, r10, r4
.LBB0_257:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	loads.w r13, 4(r18)
	and r21, r13, r3
	setlt.u r4, r1, r21
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r4, zero, .LBB0_259
# %bb.258:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r13, 0
	j .LBB0_260
.LBB0_259:                              #   in Loop: Header=BB0_251 Depth=3
	lui r4, 1024
	or r20, r13, r4
.LBB0_260:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	loads.w r12, 0(r18)
	and r4, r12, r3
	setlt.u r18, r1, r4
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r18, zero, .LBB0_262
# %bb.261:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r4, r5, r4
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r4, zero, .LBB0_263
	j .LBB0_264
.LBB0_262:                              #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r12, r18
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r4, r5, r4
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r4, zero, .LBB0_264
.LBB0_263:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r17
	and r18, r4, r12
.LBB0_264:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	setlt.u r4, r5, r21
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r4, zero, .LBB0_267
# %bb.265:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r17
	and r20, r4, r12
	setlt.u r4, r5, r8
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r4, zero, .LBB0_268
.LBB0_266:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r11
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r4, zero, .LBB0_250
	j .LBB0_269
.LBB0_267:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r8
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r4, zero, .LBB0_266
.LBB0_268:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r10, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r10, r4
	add.s r4, r4, r17
	and r26, r4, r8
	setlt.u r4, r5, r11
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r4, zero, .LBB0_250
.LBB0_269:                              # %vector.body62
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r17
	and r19, r2, r4
	j .LBB0_250
.LBB0_270:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_272 Depth=3
	srli r4, r9, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r17
	and r8, r4, r8
.LBB0_271:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	setlt.ul r4, r[6:7], r[24:25]
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	add.s r2, r22, r2
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	stores.w r8, 0(r2)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	beq r4, zero, .LBB0_248
.LBB0_272:                              # %scalar.ph60
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[8:9], r[6:7], r[27:28]
	slli r2, r8, 2
	add.s r4, r23, r2
	loads.w r9, 0(r4)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r4, r9, r3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	setlt.u r8, r1, r4
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r8, zero, .LBB0_274
# %bb.273:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r4, r5, r4
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r4, zero, .LBB0_271
	j .LBB0_270
.LBB0_274:                              #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r9, r8
	.loc	1 330 19 is_stmt 1              # parallel-rne.mlir:330:19
	setlt.u r4, r5, r4
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r4, zero, .LBB0_271
	j .LBB0_270
.LBB0_275:                              # %.sink.split53
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
	addli r18, zero, 64
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_276:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 367 7 is_stmt 1               # parallel-rne.mlir:367:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 368 7                         # parallel-rne.mlir:368:7
	loadli.w r2,  -624(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.277:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r25, 48
	addli r4, zero, 17
	.loc	1 385 7 is_stmt 1               # parallel-rne.mlir:385:7
	bneq r8, zero, .LBB0_7
# %bb.278:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	loadli.w r2,  -680(r30)                 # 4-byte Folded Reload
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	load.d r[12:13], -608(r30)              # 8-byte Folded Reload
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	zext_int2long r[6:7], r2
	addli r2, zero, 896
	zext_int2long r[8:9], r2
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	loadli.w r2,  -676(r30)                 # 4-byte Folded Reload
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	min.ul r[8:9], r[6:7], r[8:9]
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	sext_int2long r[10:11], r2
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	addli r2, zero, 12
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	addli.d r[8:9], r[8:9], 128
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	min.sl r[12:13], r[10:11], r[12:13]
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	max.ul r[8:9], r[8:9], r[6:7]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	addli.d r[12:13], r[12:13], 64
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	sub.sl r[6:7], r[8:9], r[6:7]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	max.sl r[8:9], r[12:13], r[10:11]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[12:13], -672(r30)              # 8-byte Folded Reload
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	min.ul r[6:7], r[6:7], r[14:15]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[14:15], -664(r30)              # 8-byte Folded Reload
	xwait r2, 0
	ori r2, r22, 64
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	sub.sl r[8:9], r[8:9], r[10:11]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	load.d r[10:11], 16(r30)
	sll.d r[12:13], r[12:13], r4
	slli r4, r6, 1
	add.ul r[10:11], r[10:11], r[12:13]
	zext_int2long r[12:13], r18
	add.ul r[10:11], r[10:11], r[14:15]
	addli r15, zero, 5
	addli r14, zero, 1
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	min.sl r[8:9], r[8:9], r[12:13]
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	lock zero, r15
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r14, zero, 1
	dma_cfg r11, zero, zero, 2
	dma_cfg r10, r2, r18, 3
	addli r2, r6, 31
	addli r6, zero, 128
	srli r2, r2, 5
	dma_cfg r18, r6, r2, 4
	andi r2, r4, 62
	addli r4, zero, 512
	addli r6, zero, 2048
	dma_cfg r6, r4, r8, 5
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r8
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r15
	j .LBB0_6
.LBB0_279:                              # %._crit_edge
	.loc	1 387 5                         # parallel-rne.mlir:387:5
	xsignal zero, 0
	bneq r8, zero, .LBB0_281
# %bb.280:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 387 5                         # parallel-rne.mlir:387:5
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
	.loc	1 388 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:388:5
	addli sp, sp, 688
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
	.long	752                             # 0x2f0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-8asj4fd9" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
