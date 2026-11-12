	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-aei9f57k" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -760
	addli r1, zero, 1
.Ltmp0:
	.loc	1 33 5 prologue_end             # parallel-rne.mlir:33:5
	core_id r12
	addli r30, sp, 696
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 33 5                          # parallel-rne.mlir:33:5
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 35 10 is_stmt 1               # parallel-rne.mlir:35:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -128(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -452(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -580(r30)
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r2, r2, r1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r1, r4, 0
	fmac.s r1, r2, r3
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	mul.s r3, r2, r3
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	addli r1, r1, -1
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	div.s r4, r1, r4
	ori r1, r5, 4095
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r1, -124(r30)
	storeli.w r1, -120(r30)
	storeli.w r1, -116(r30)
	storeli.w r1, -112(r30)
	storeli.w r1, -108(r30)
	storeli.w r1, -104(r30)
	storeli.w r1, -100(r30)
	storeli.w r1, -96(r30)
	storeli.w r1, -92(r30)
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r1, -448(r30)
	storeli.w r1, -444(r30)
	storeli.w r1, -440(r30)
	storeli.w r1, -436(r30)
	storeli.w r1, -432(r30)
	storeli.w r1, -428(r30)
	storeli.w r1, -424(r30)
	storeli.w r1, -420(r30)
	storeli.w r1, -416(r30)
	storeli.w r1, -412(r30)
	storeli.w r1, -408(r30)
	storeli.w r1, -404(r30)
	storeli.w r1, -400(r30)
	storeli.w r1, -396(r30)
	storeli.w r1, -392(r30)
	storeli.w r1, -388(r30)
	storeli.w r1, -384(r30)
	storeli.w r1, -380(r30)
	storeli.w r1, -376(r30)
	storeli.w r1, -372(r30)
	storeli.w r1, -368(r30)
	storeli.w r1, -364(r30)
	storeli.w r1, -360(r30)
	storeli.w r1, -356(r30)
	storeli.w r1, -352(r30)
	storeli.w r1, -348(r30)
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
	storeli.w r1, -256(r30)
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
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r1, -576(r30)
	storeli.w r1, -572(r30)
	storeli.w r1, -568(r30)
	storeli.w r1, -564(r30)
	storeli.w r1, -560(r30)
	storeli.w r1, -556(r30)
	storeli.w r1, -552(r30)
	storeli.w r1, -548(r30)
	storeli.w r1, -544(r30)
	storeli.w r1, -540(r30)
	storeli.w r1, -536(r30)
	storeli.w r1, -532(r30)
	storeli.w r1, -528(r30)
	storeli.w r1, -524(r30)
	storeli.w r1, -520(r30)
	storeli.w r1, -516(r30)
	storeli.w r1, -512(r30)
	storeli.w r1, -508(r30)
	storeli.w r1, -504(r30)
	storeli.w r1, -500(r30)
	storeli.w r1, -496(r30)
	storeli.w r1, -492(r30)
	storeli.w r1, -488(r30)
	storeli.w r1, -484(r30)
	storeli.w r1, -480(r30)
	storeli.w r1, -476(r30)
	storeli.w r1, -472(r30)
	storeli.w r1, -468(r30)
	storeli.w r1, -464(r30)
	storeli.w r1, -460(r30)
	storeli.w r1, -456(r30)
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	mul.s r2, r4, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	fmac.s r4, r4, r6
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	min.s r3, r4, r3
	.loc	1 52 5                          # parallel-rne.mlir:52:5
	ble.s r3, r2, .LBB0_296
# %bb.4:                                # %.lr.ph
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	sext_int2long r[9:10], r2
	lui r2, 7
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[3:4], r3
	addli r6, zero, 4
	lui r11, 1024
	lui r5, 1048560
	addli r1, zero, 0
	storeli.w zero, -608(r30)               # 4-byte Folded Spill
	ori r16, r2, 4095
	lui r2, 127
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	store.d r[3:4], -696(r30)               # 8-byte Folded Spill
	lui r4, 522240
	lui r15, 1048448
	ori r2, r2, 4095
	storeli.w r2, -636(r30)                 # 4-byte Folded Spill
	lui r2, 524287
	ori r8, r2, 4095
	lui r2, 522239
	ori r3, r2, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	addli r1, zero, 12
	xsignal r1, 0
	loadli.w r22,  -640(r30)                # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[9:10], -656(r30)               # 8-byte Folded Reload
	.loc	1 52 5 is_stmt 1                # parallel-rne.mlir:52:5
	load.d r[1:2], -696(r30)                # 8-byte Folded Reload
	addli r6, zero, 4
	addli.d r[9:10], r[9:10], 1
	setlt.sl r2, r[9:10], r[1:2]
	addli r1, r22, 1
	storeli.w r1, -608(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -660(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_296
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #     Child Loop BB0_76 Depth 2
                                        #       Child Loop BB0_85 Depth 3
                                        #       Child Loop BB0_79 Depth 3
                                        #     Child Loop BB0_106 Depth 2
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_109 Depth 3
                                        #     Child Loop BB0_172 Depth 2
                                        #       Child Loop BB0_181 Depth 3
                                        #       Child Loop BB0_175 Depth 3
                                        #     Child Loop BB0_203 Depth 2
                                        #       Child Loop BB0_212 Depth 3
                                        #       Child Loop BB0_206 Depth 3
                                        #     Child Loop BB0_142 Depth 2
                                        #       Child Loop BB0_151 Depth 3
                                        #       Child Loop BB0_145 Depth 3
                                        #     Child Loop BB0_264 Depth 2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_267 Depth 3
                                        #     Child Loop BB0_234 Depth 2
                                        #       Child Loop BB0_243 Depth 3
                                        #       Child Loop BB0_237 Depth 3
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	bneq r12, r6, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r6,  32(r30)
	loadli.w r7,  28(r30)
	store.d r[9:10], -656(r30)              # 8-byte Folded Spill
	addli r13, zero, 8
	addli r17, zero, 5
	loadli.w r25,  -452(r30)
	loadli.w r26,  -128(r30)
	addli r27, zero, 0
	div.s r6, r9, r6
	mod.s r9, r1, r17
	addli r1, r1, 1
	storeli.w r1, -660(r30)                 # 4-byte Folded Spill
	.loc	1 99 15 is_stmt 1               # parallel-rne.mlir:99:15
	loadli.w r1,  -580(r30)
	storeli.w r1, -612(r30)                 # 4-byte Folded Spill
	div.s r6, r6, r7
	addli r7, zero, 256
	slli r14, r9, 13
	div.s r7, r6, r7
	slli r10, r7, 3
	slli r7, r7, 8
	sub.s r12, r13, r10
	sub.s r7, r6, r7
	min.s r12, r12, r13
	mod.s r13, r6, r12
	div.s r7, r7, r12
	lui r6, 10
	add.s r6, r14, r6
	add.s r9, r10, r13
	slli r1, r7, 5
	zext_int2long r[12:13], r7
	addli r7, zero, 16
	storeli.w r1, -688(r30)                 # 4-byte Folded Spill
	slli r1, r9, 6
	zext_int2long r[18:19], r9
	sll.d r[9:10], r[12:13], r17
	storeli.w r1, -684(r30)                 # 4-byte Folded Spill
	sll.d r[1:2], r[18:19], r7
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r7, zero, 1
	store.d r[18:19], -680(r30)             # 8-byte Folded Spill
	sll.d r[12:13], r[9:10], r7
	load.d r[9:10], 8(r30)
	store.d r[1:2], -624(r30)               # 8-byte Folded Spill
	and.d r[1:2], r[1:2], r[15:16]
	addli r7, zero, 0
	store.d r[1:2], -632(r30)               # 8-byte Folded Spill
	store.d r[12:13], -672(r30)             # 8-byte Folded Spill
	add.ul r[1:2], r[9:10], r[12:13]
	store.d r[1:2], -648(r30)               # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r10, 20
	addli r18, zero, 4
	addli r21, zero, 64
	addli r20, zero, 128
	addli r17, zero, 5
	addli r19, zero, 2
	ori r10, r10, 64
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	lock zero, r18
	dma_cfg r25, r25, zero, 0
	add.s r10, r22, r10
	dma_cfg zero, r24, zero, 2
	addli r22, zero, 512
	dma_cfg r10, r23, r21, 3
	addli r10, zero, 2048
	dma_cfg r20, r21, r18, 4
	dma_cfg r22, r10, r12, 5
	addli r10, zero, 7
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r25, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 24
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
	addli r1, zero, 25
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 31
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg r25, r25, zero, 0
	dma_cfg r25, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r13, zero, r21, 3
	dma_cfg r20, zero, r18, 4
	dma_cfg r22, zero, r12, 5
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r12
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r25, 5
	addli r25, r9, 0
	dma_cfg zero, zero, zero, 8
	unlock r17
	xsignal r19, 0
	loadli.w r28,  -640(r30)                # 4-byte Folded Reload
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r25, r25, 1
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	addli r13, r26, 1
.LBB0_12:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r7, r7, 1
	addli r10, zero, 8
	beq r7, r10, .LBB0_34
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 124 15                        # parallel-rne.mlir:124:15
	addli r27, r27, 1
	addli r26, r13, 0
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	zext_int2long r[23:24], r7
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	addli r9, zero, 7
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	load.d r[1:2], -624(r30)                # 8-byte Folded Reload
	load.d r[17:18], -632(r30)              # 8-byte Folded Reload
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	sll.d r[9:10], r[23:24], r9
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	add.ul r[20:21], r[9:10], r[1:2]
	loadli.w r9,  -636(r30)                 # 4-byte Folded Reload
	zext_int2long r[9:10], r9
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	setlt.ul r9, r[9:10], r[20:21]
	.loc	1 89 15                         # parallel-rne.mlir:89:15
	bneq r9, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[17:18], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	loadli.w r1,  -612(r30)                 # 4-byte Folded Reload
	.loc	1 99 15 is_stmt 1               # parallel-rne.mlir:99:15
	addli r10, zero, 31
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r12, zero, 24
	addli r13, zero, 448
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	addli r19, zero, 2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r2, r1, r27
	loadli.w r1,  -608(r30)                 # 4-byte Folded Reload
	.loc	1 99 15 is_stmt 1               # parallel-rne.mlir:99:15
	mod.s r10, r2, r10
	storeli.w r2, -592(r30)                 # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r28, r1, r27
	zext_int2long r[1:2], r13
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	mod.s r12, r28, r12
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	store.d r[1:2], -600(r30)               # 8-byte Folded Spill
	slli r22, r10, 15
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r10, r12, 15
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	lui r12, 20
	add.s r13, r22, r12
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r12
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	beq r12, r19, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, r25, 0
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r19
	addli r25, zero, 1
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	bneq r19, r25, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r10, zero, 1024
	sub.sl r[17:18], r[20:21], r[17:18]
	load.d r[1:2], -600(r30)                # 8-byte Folded Reload
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	sll.d r[19:20], r[20:21], r25
	storeli.w r28, -640(r30)                # 4-byte Folded Spill
	addli r28, zero, 30
	zext_int2long r[23:24], r10
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[17:18], r[17:18], r[23:24]
	min.sl r[23:24], r[17:18], r[1:2]
	addli r1, zero, 3
	sub.sl r[17:18], r[23:24], r[17:18]
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	load.d r[23:24], 0(r30)
	xwait r1, 0
	loadli.w r2,  -592(r30)                 # 4-byte Folded Reload
	addli r12, r17, 64
	add.ul r[23:24], r[23:24], r[19:20]
	blt.s r28, r2, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r17, zero, 5
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	addli r10, zero, 2
	addli r18, zero, 4
	addli r19, zero, 64
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 6
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 7
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 9
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 11
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 12
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 13
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 14
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 15
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 16
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 17
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 18
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 19
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 20
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 21
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 22
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 23
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 24
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 25
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 26
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 27
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 28
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 29
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 31
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 128
	dma_cfg r25, r25, zero, 0
	dma_cfg r25, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r13, zero, r19, 3
	dma_cfg r10, zero, r18, 4
	addli r10, zero, 512
	dma_cfg r10, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r25, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r18, zero, 2
	.loc	1 104 9 is_stmt 1               # parallel-rne.mlir:104:9
	addli r17, zero, 5
	addli r1, zero, 3
	xwait r18, 0
	xwait r17, 0
	lock zero, zero
	addli r17, zero, 128
	ds_cfg r18, zero, 0
	addli r18, zero, 64
	ds_cfg r17, zero, 1
	ds_cfg r17, zero, 14
	ds_cfg r18, zero, 13
	shuffle_batch r10, r13, r17, 1
	addli r10, zero, 4
	unlock zero
	xsignal r1, 0
	xsignal r10, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	addli r12, zero, 31
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r1, zero, 80
	addli r25, r9, 0
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	addli r18, zero, 7
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	mod.s r12, r26, r12
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r13, r25, r1
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	lui r1, 268
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r25, r25, 1
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	slli r21, r12, 14
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r17, r13, 14
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	addli r13, r26, 1
	add.s r12, r21, r1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	addli r1, zero, 6
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	beq r19, r18, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r19, r1, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	storeli.w r28, -640(r30)                # 4-byte Folded Spill
	addli r28, zero, 18
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	load.d r[9:10], -648(r30)               # 8-byte Folded Reload
	addli r2, r25, 0
	addli r20, zero, 7
	addli r25, zero, 30
	sll.d r[17:18], r[23:24], r28
	xwait r20, 0
	add.ul r[22:23], r[9:10], r[17:18]
	blt.s r25, r26, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r17, zero, 5
	addli r18, zero, 1
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	addli r10, zero, 2
	addli r1, zero, 3
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 4
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 24
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 31
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r10, 3
	addli r10, zero, 128
	dma_cfg r10, zero, r18, 4
	dma_cfg r10, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r1, 268
	addli r18, zero, 4
	addli r19, zero, 1
	addli r24, zero, 64
	addli r17, zero, 5
	ori r10, r1, 64
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	lock zero, r18
	addli r1, zero, 2048
	dma_cfg r19, r19, zero, 0
	add.s r10, r21, r10
	dma_cfg zero, r23, zero, 2
	addli r21, zero, 128
	dma_cfg r10, r22, r24, 3
	addli r10, zero, 2
	dma_cfg r21, r24, r19, 4
	dma_cfg r21, r1, r21, 5
	addli r1, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r17
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 24
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 31
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	dma_cfg zero, zero, r25, 10
	addli r25, r2, 0
	dma_cfg zero, zero, r10, 10
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r24, 3
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r12
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	dma_cfg r21, zero, r19, 4
	dma_cfg r21, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	xsignal r18, 0
	loadli.w r28,  -640(r30)                # 4-byte Folded Reload
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	xwait r1, 0
	addli r1, zero, 9
	addli r10, zero, 2
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 32
	ds_cfg r10, zero, 0
	addli r10, zero, 128
	ds_cfg r1, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r1, zero, 13
	shuffle_coa r17, r12, r10, 2
	addli r10, zero, 7
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r12
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	unlock zero
	xsignal r10, 0
	addli r10, zero, 8
	xsignal r10, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r12
	addli r18, zero, 4
	.loc	1 123 9                         # parallel-rne.mlir:123:9
	bneq r12, r18, .LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	xwait r18, 0
	addli r18, zero, 8
	addli r19, zero, 1
	addli r20, zero, 128
	addli r21, zero, 64
	addli r1, zero, 32
	xwait r18, 0
	lock zero, r19
	mm_cfg r1, r20, r21, 0
	mm_cfg r18, r19, r19, 2
	beq r27, zero, .LBB0_31
# %bb.29:                               # %.preheader30
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r6, r10, r17, 8
	j .LBB0_32
.LBB0_30:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r7, r7, 1
	addli r10, zero, 8
	bneq r7, r10, .LBB0_13
	j .LBB0_36
.LBB0_31:                               # %.preheader29
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 123 9                         # parallel-rne.mlir:123:9
	mm r6, r10, r17, 8
.LBB0_32:                               # %.thread20.thread44
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r10, zero, 1
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r7, r7, 1
	.loc	1 123 9                         # parallel-rne.mlir:123:9
	addli r1, zero, 9
	unlock r10
	addli r10, zero, 5
	xsignal r10, 0
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r10, zero, 8
	.loc	1 123 9                         # parallel-rne.mlir:123:9
	xsignal r1, 0
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	bneq r7, r10, .LBB0_13
# %bb.33:                               # %.thread21.loopexit
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	loadli.w r1,  -592(r30)                 # 4-byte Folded Reload
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r25, -452(r30)
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	storeli.w r13, -128(r30)
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	addli r1, r1, 1
	storeli.w r1, -580(r30)
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r1,  -592(r30)                 # 4-byte Folded Reload
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r25, -452(r30)
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	storeli.w r13, -128(r30)
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	addli r1, r1, 1
	storeli.w r1, -580(r30)
	.loc	1 127 7                         # parallel-rne.mlir:127:7
	addli r1, zero, 4
	bneq r12, r1, .LBB0_37
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w r28, -640(r30)                # 4-byte Folded Spill
	storeli.w zero, -612(r30)               # 4-byte Folded Spill
	xsignal r1, 0
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	j .LBB0_40
.LBB0_36:                               # %.thread43.loopexit
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	loadli.w r1,  -592(r30)                 # 4-byte Folded Reload
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r25, -452(r30)
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	storeli.w r13, -128(r30)
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	addli r1, r1, 1
	storeli.w r1, -580(r30)
.LBB0_37:                               # %.thread43
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli r1, zero, 3
	.loc	1 132 7 is_stmt 1               # parallel-rne.mlir:132:7
	storeli.w r28, -640(r30)                # 4-byte Folded Spill
	bneq r12, r1, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	storeli.w r1, -612(r30)                 # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -612(r30)               # 4-byte Folded Spill
.LBB0_40:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 137 7 is_stmt 1               # parallel-rne.mlir:137:7
	addli r1, zero, 255
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	xfence
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { lm, sm, gm }
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	csr_set csr5, r1
	addli r1, zero, 31
	sync_core
	zext_int2long r[27:28], r1
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	bneq r12, zero, .LBB0_72
# %bb.41:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[9:10], zero
	mfence { lm, sm, gm }
	j .LBB0_43
.LBB0_42:                               # %middle.block120
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	load.d r[9:10], -592(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 146 9 is_stmt 1               # parallel-rne.mlir:146:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_71
.LBB0_43:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[9:10], -592(r30)              # 8-byte Folded Spill
	sll.d r[18:19], r[9:10], r1
	.loc	1 147 11 is_stmt 1              # parallel-rne.mlir:147:11
	bneq r14, r6, .LBB0_50
# %bb.44:                               # %scalar.ph114.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_46
.LBB0_45:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 147 11                        # parallel-rne.mlir:147:11
	setlt.ul r1, r[9:10], r[27:28]
	.loc	1 162 13 is_stmt 1              # parallel-rne.mlir:162:13
	add.s r2, r14, r7
	.loc	1 147 11                        # parallel-rne.mlir:147:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	stores.w r12, 0(r2)
	.loc	1 147 11                        # parallel-rne.mlir:147:11
	beq r1, zero, .LBB0_42
.LBB0_46:                               # %scalar.ph114
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	add.ul r[1:2], r[9:10], r[18:19]
	slli r7, r1, 2
	add.s r1, r6, r7
	loads.w r1, 0(r1)
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	and r2, r1, r8
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	setlt.u r12, r4, r2
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r12, zero, .LBB0_48
# %bb.47:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r1, 0
	.loc	1 159 19 is_stmt 1              # parallel-rne.mlir:159:19
	setlt.u r2, r3, r2
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r2, zero, .LBB0_45
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r12, r1, r11
	.loc	1 159 19 is_stmt 1              # parallel-rne.mlir:159:19
	setlt.u r2, r3, r2
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r2, zero, .LBB0_45
.LBB0_49:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r16
	and r12, r1, r5
	j .LBB0_45
.LBB0_50:                               # %vector.body116.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_52
.LBB0_51:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	addli r2, zero, 32
	.loc	1 147 11 is_stmt 1              # parallel-rne.mlir:147:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	add.s r7, r14, r7
	zext_int2long r[20:21], r2
	stores.w r9, 12(r7)
	stores.w r22, 8(r7)
	stores.w r23, 4(r7)
	stores.w r1, 0(r7)
	.loc	1 147 11                        # parallel-rne.mlir:147:11
	seteq.d r2, r[12:13], r[20:21]
	bneq r2, zero, .LBB0_42
.LBB0_52:                               # %vector.body116
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	add.ul r[1:2], r[12:13], r[18:19]
	slli r7, r1, 2
	add.s r17, r6, r7
	loads.w r24, 12(r17)
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	and r25, r24, r8
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	setlt.u r1, r4, r25
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r1, zero, .LBB0_54
# %bb.53:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r24, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_52 Depth=3
	or r9, r24, r11
.LBB0_55:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r21, 8(r17)
	and r10, r21, r8
	setlt.u r1, r4, r10
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r1, zero, .LBB0_57
# %bb.56:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_52 Depth=3
	or r22, r21, r11
.LBB0_58:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r20, 4(r17)
	and r26, r20, r8
	setlt.u r1, r4, r26
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r1, zero, .LBB0_60
# %bb.59:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r20, 0
	j .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_52 Depth=3
	or r23, r20, r11
.LBB0_61:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r17, 0(r17)
	and r2, r17, r8
	setlt.u r1, r4, r2
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	bneq r1, zero, .LBB0_63
# %bb.62:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r17, 0
	.loc	1 159 19 is_stmt 1              # parallel-rne.mlir:159:19
	setlt.u r2, r3, r2
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	beq r2, zero, .LBB0_64
	j .LBB0_65
.LBB0_63:                               #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r1, r17, r11
	.loc	1 159 19 is_stmt 1              # parallel-rne.mlir:159:19
	setlt.u r2, r3, r2
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r2, zero, .LBB0_65
.LBB0_64:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r17, 16
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r16
	and r1, r1, r5
.LBB0_65:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	setlt.u r2, r3, r26
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	beq r2, zero, .LBB0_68
# %bb.66:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r10
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	beq r2, zero, .LBB0_69
.LBB0_67:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r25
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r2, zero, .LBB0_51
	j .LBB0_70
.LBB0_68:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r16
	and r23, r2, r5
	setlt.u r2, r3, r10
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r2, zero, .LBB0_67
.LBB0_69:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r16
	and r22, r2, r5
	setlt.u r2, r3, r25
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	bneq r2, zero, .LBB0_51
.LBB0_70:                               # %vector.body116
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r24, 16
	andi r2, r2, 1
	add.s r2, r24, r2
	add.s r2, r2, r16
	and r9, r2, r5
	j .LBB0_51
.LBB0_71:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r12
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	mfence { sm }
.LBB0_72:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	zext_int2long r[1:2], r1
	.loc	1 167 7 is_stmt 1               # parallel-rne.mlir:167:7
	store.d r[1:2], -592(r30)               # 8-byte Folded Spill
	addli r1, zero, 2
	beq r12, r1, .LBB0_104
# %bb.73:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 1
	bneq r12, r1, .LBB0_135
# %bb.74:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r1
	j .LBB0_76
.LBB0_75:                               # %middle.block102
                                        #   in Loop: Header=BB0_76 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[9:10], -608(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 175 9 is_stmt 1               # parallel-rne.mlir:175:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_134
.LBB0_76:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_85 Depth 3
                                        #       Child Loop BB0_79 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[9:10], -608(r30)              # 8-byte Folded Spill
	sll.d r[24:25], r[9:10], r1
	.loc	1 176 11 is_stmt 1              # parallel-rne.mlir:176:11
	bneq r14, r6, .LBB0_83
# %bb.77:                               # %scalar.ph96.preheader
                                        #   in Loop: Header=BB0_76 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_79
.LBB0_78:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 176 11                        # parallel-rne.mlir:176:11
	setlt.ul r10, r[1:2], r[27:28]
	.loc	1 191 13 is_stmt 1              # parallel-rne.mlir:191:13
	add.s r7, r14, r7
	.loc	1 176 11                        # parallel-rne.mlir:176:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	stores.w r9, 0(r7)
	.loc	1 176 11                        # parallel-rne.mlir:176:11
	beq r10, zero, .LBB0_75
.LBB0_79:                               # %scalar.ph96
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	add.ul r[9:10], r[1:2], r[24:25]
	slli r7, r9, 2
	add.s r9, r6, r7
	loads.w r10, 0(r9)
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	and r12, r10, r8
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	setlt.u r9, r4, r12
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r9, zero, .LBB0_81
# %bb.80:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 188 19 is_stmt 1              # parallel-rne.mlir:188:19
	setlt.u r12, r3, r12
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r12, zero, .LBB0_78
	j .LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r11
	.loc	1 188 19 is_stmt 1              # parallel-rne.mlir:188:19
	setlt.u r12, r3, r12
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r12, zero, .LBB0_78
.LBB0_82:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r16
	and r9, r9, r5
	j .LBB0_78
.LBB0_83:                               # %vector.body98.preheader
                                        #   in Loop: Header=BB0_76 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_85
.LBB0_84:                               # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 176 11 is_stmt 1              # parallel-rne.mlir:176:11
	load.d r[1:2], -592(r30)                # 8-byte Folded Reload
	addli.d r[12:13], r[12:13], 4
	seteq.d r1, r[12:13], r[1:2]
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	add.s r2, r14, r7
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r18, 4(r2)
	stores.w r10, 0(r2)
	.loc	1 176 11                        # parallel-rne.mlir:176:11
	bneq r1, zero, .LBB0_75
.LBB0_85:                               # %vector.body98
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	add.ul r[1:2], r[12:13], r[24:25]
	slli r7, r1, 2
	add.s r1, r6, r7
	loads.w r26, 12(r1)
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	and r22, r26, r8
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	setlt.u r2, r4, r22
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r2, zero, .LBB0_87
# %bb.86:                               # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r26, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_85 Depth=3
	or r9, r26, r11
.LBB0_88:                               # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	loads.w r17, 8(r1)
	and r20, r17, r8
	setlt.u r2, r4, r20
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r2, zero, .LBB0_90
# %bb.89:                               # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r17, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_85 Depth=3
	or r23, r17, r11
.LBB0_91:                               # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	loads.w r21, 4(r1)
	and r2, r21, r8
	setlt.u r10, r4, r2
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r10, zero, .LBB0_93
# %bb.92:                               # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r21, 0
	j .LBB0_94
.LBB0_93:                               #   in Loop: Header=BB0_85 Depth=3
	or r18, r21, r11
.LBB0_94:                               # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	loads.w r1, 0(r1)
	and r19, r1, r8
	setlt.u r10, r4, r19
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r10, zero, .LBB0_96
# %bb.95:                               # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r1, 0
	.loc	1 188 19 is_stmt 1              # parallel-rne.mlir:188:19
	setlt.u r19, r3, r19
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	beq r19, zero, .LBB0_97
	j .LBB0_98
.LBB0_96:                               #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r1, r11
	.loc	1 188 19 is_stmt 1              # parallel-rne.mlir:188:19
	setlt.u r19, r3, r19
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r19, zero, .LBB0_98
.LBB0_97:                               # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r16
	and r10, r1, r5
.LBB0_98:                               # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	setlt.u r1, r3, r2
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	beq r1, zero, .LBB0_101
# %bb.99:                               # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r3, r20
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	beq r1, zero, .LBB0_102
.LBB0_100:                              # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r3, r22
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r1, zero, .LBB0_84
	j .LBB0_103
.LBB0_101:                              # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r16
	and r18, r1, r5
	setlt.u r1, r3, r20
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r1, zero, .LBB0_100
.LBB0_102:                              # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r17, 16
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r16
	and r23, r1, r5
	setlt.u r1, r3, r22
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r1, zero, .LBB0_84
.LBB0_103:                              # %vector.body98
                                        #   in Loop: Header=BB0_85 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r16
	and r9, r1, r5
	j .LBB0_84
.LBB0_104:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 16
	.loc	1 196 7 is_stmt 1               # parallel-rne.mlir:196:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r1
	j .LBB0_106
.LBB0_105:                              # %middle.block111
                                        #   in Loop: Header=BB0_106 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[9:10], -608(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 204 9 is_stmt 1               # parallel-rne.mlir:204:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_134
.LBB0_106:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_109 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[9:10], -608(r30)              # 8-byte Folded Spill
	sll.d r[24:25], r[9:10], r1
	.loc	1 205 11 is_stmt 1              # parallel-rne.mlir:205:11
	bneq r14, r6, .LBB0_113
# %bb.107:                              # %scalar.ph105.preheader
                                        #   in Loop: Header=BB0_106 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_109
.LBB0_108:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	setlt.ul r10, r[1:2], r[27:28]
	.loc	1 220 13 is_stmt 1              # parallel-rne.mlir:220:13
	add.s r7, r14, r7
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 220 13                        # parallel-rne.mlir:220:13
	stores.w r9, 0(r7)
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	beq r10, zero, .LBB0_105
.LBB0_109:                              # %scalar.ph105
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	add.ul r[9:10], r[1:2], r[24:25]
	slli r7, r9, 2
	add.s r9, r6, r7
	loads.w r10, 0(r9)
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	and r12, r10, r8
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	setlt.u r9, r4, r12
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r9, zero, .LBB0_111
# %bb.110:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 217 19 is_stmt 1              # parallel-rne.mlir:217:19
	setlt.u r12, r3, r12
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r12, zero, .LBB0_108
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r11
	.loc	1 217 19 is_stmt 1              # parallel-rne.mlir:217:19
	setlt.u r12, r3, r12
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r12, zero, .LBB0_108
.LBB0_112:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r16
	and r9, r9, r5
	j .LBB0_108
.LBB0_113:                              # %vector.body107.preheader
                                        #   in Loop: Header=BB0_106 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_115
.LBB0_114:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	addli r1, zero, 32
	.loc	1 205 11 is_stmt 1              # parallel-rne.mlir:205:11
	addli.d r[12:13], r[12:13], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[12:13], r[1:2]
	.loc	1 220 13                        # parallel-rne.mlir:220:13
	add.s r2, r14, r7
	stores.w r9, 12(r2)
	stores.w r17, 8(r2)
	stores.w r18, 4(r2)
	stores.w r10, 0(r2)
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	bneq r1, zero, .LBB0_105
.LBB0_115:                              # %vector.body107
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	add.ul r[1:2], r[12:13], r[24:25]
	slli r7, r1, 2
	add.s r1, r6, r7
	loads.w r26, 12(r1)
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	and r22, r26, r8
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	setlt.u r2, r4, r22
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r2, zero, .LBB0_117
# %bb.116:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r26, 0
	j .LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_115 Depth=3
	or r9, r26, r11
.LBB0_118:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r23, 8(r1)
	and r20, r23, r8
	setlt.u r2, r4, r20
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r2, zero, .LBB0_120
# %bb.119:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r23, 0
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_115 Depth=3
	or r17, r23, r11
.LBB0_121:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r21, 4(r1)
	and r2, r21, r8
	setlt.u r10, r4, r2
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r10, zero, .LBB0_123
# %bb.122:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r21, 0
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_115 Depth=3
	or r18, r21, r11
.LBB0_124:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r1, 0(r1)
	and r19, r1, r8
	setlt.u r10, r4, r19
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r10, zero, .LBB0_126
# %bb.125:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r1, 0
	.loc	1 217 19 is_stmt 1              # parallel-rne.mlir:217:19
	setlt.u r19, r3, r19
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	beq r19, zero, .LBB0_127
	j .LBB0_128
.LBB0_126:                              #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r1, r11
	.loc	1 217 19 is_stmt 1              # parallel-rne.mlir:217:19
	setlt.u r19, r3, r19
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r19, zero, .LBB0_128
.LBB0_127:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r1, 16
	andi r10, r10, 1
	add.s r1, r1, r10
	add.s r1, r1, r16
	and r10, r1, r5
.LBB0_128:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	setlt.u r1, r3, r2
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	beq r1, zero, .LBB0_131
# %bb.129:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r3, r20
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	beq r1, zero, .LBB0_132
.LBB0_130:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r3, r22
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r1, zero, .LBB0_114
	j .LBB0_133
.LBB0_131:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r16
	and r18, r1, r5
	setlt.u r1, r3, r20
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r1, zero, .LBB0_130
.LBB0_132:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r16
	and r17, r1, r5
	setlt.u r1, r3, r22
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r1, zero, .LBB0_114
.LBB0_133:                              # %vector.body107
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r16
	and r9, r1, r5
	j .LBB0_114
.LBB0_134:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r12
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_135:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 225 7 is_stmt 1               # parallel-rne.mlir:225:7
	loadli.w r1,  -612(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_170
# %bb.136:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 254 7                         # parallel-rne.mlir:254:7
	addli r1, zero, 4
	beq r12, r1, .LBB0_201
.LBB0_137:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	.loc	1 283 7 is_stmt 1               # parallel-rne.mlir:283:7
	beq r12, r1, .LBB0_232
.LBB0_138:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 6
	beq r12, r1, .LBB0_262
# %bb.139:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	bneq r12, r1, .LBB0_293
# %bb.140:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 283 7                         # parallel-rne.mlir:283:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r1
	j .LBB0_142
.LBB0_141:                              # %middle.block
                                        #   in Loop: Header=BB0_142 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[9:10], -608(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 291 9 is_stmt 1               # parallel-rne.mlir:291:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_292
.LBB0_142:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_151 Depth 3
                                        #       Child Loop BB0_145 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[9:10], -608(r30)              # 8-byte Folded Spill
	sll.d r[24:25], r[9:10], r1
	.loc	1 292 11 is_stmt 1              # parallel-rne.mlir:292:11
	bneq r14, r6, .LBB0_149
# %bb.143:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_142 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_145
.LBB0_144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 292 11                        # parallel-rne.mlir:292:11
	setlt.ul r10, r[1:2], r[27:28]
	.loc	1 307 13 is_stmt 1              # parallel-rne.mlir:307:13
	add.s r7, r14, r7
	.loc	1 292 11                        # parallel-rne.mlir:292:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 307 13                        # parallel-rne.mlir:307:13
	stores.w r9, 0(r7)
	.loc	1 292 11                        # parallel-rne.mlir:292:11
	beq r10, zero, .LBB0_141
.LBB0_145:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	add.ul r[9:10], r[1:2], r[24:25]
	slli r7, r9, 2
	add.s r9, r6, r7
	loads.w r10, 0(r9)
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	and r12, r10, r8
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	setlt.u r9, r4, r12
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r9, zero, .LBB0_147
# %bb.146:                              # %scalar.ph
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 304 19 is_stmt 1              # parallel-rne.mlir:304:19
	setlt.u r12, r3, r12
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r12, zero, .LBB0_144
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r11
	.loc	1 304 19 is_stmt 1              # parallel-rne.mlir:304:19
	setlt.u r12, r3, r12
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r12, zero, .LBB0_144
.LBB0_148:                              # %scalar.ph
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r16
	and r9, r9, r5
	j .LBB0_144
.LBB0_149:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_142 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_151
.LBB0_150:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 292 11 is_stmt 1              # parallel-rne.mlir:292:11
	load.d r[1:2], -592(r30)                # 8-byte Folded Reload
	addli.d r[12:13], r[12:13], 4
	seteq.d r1, r[12:13], r[1:2]
	.loc	1 307 13                        # parallel-rne.mlir:307:13
	add.s r2, r14, r7
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r10, 0(r2)
	.loc	1 292 11                        # parallel-rne.mlir:292:11
	bneq r1, zero, .LBB0_141
.LBB0_151:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	add.ul r[1:2], r[12:13], r[24:25]
	slli r7, r1, 2
	add.s r2, r6, r7
	loads.w r26, 12(r2)
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	and r22, r26, r8
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	setlt.u r1, r4, r22
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r1, zero, .LBB0_153
# %bb.152:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r26, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_151 Depth=3
	or r9, r26, r11
.LBB0_154:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	loads.w r17, 8(r2)
	and r20, r17, r8
	setlt.u r1, r4, r20
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r1, zero, .LBB0_156
# %bb.155:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r17, 0
	j .LBB0_157
.LBB0_156:                              #   in Loop: Header=BB0_151 Depth=3
	or r23, r17, r11
.LBB0_157:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	loads.w r1, 4(r2)
	and r18, r1, r8
	setlt.u r10, r4, r18
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r10, zero, .LBB0_159
# %bb.158:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r1, 0
	j .LBB0_160
.LBB0_159:                              #   in Loop: Header=BB0_151 Depth=3
	or r21, r1, r11
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	loads.w r2, 0(r2)
	and r19, r2, r8
	setlt.u r10, r4, r19
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r10, zero, .LBB0_166
# %bb.161:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r2, 0
	.loc	1 304 19 is_stmt 1              # parallel-rne.mlir:304:19
	setlt.u r19, r3, r19
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r19, zero, .LBB0_163
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r2, 16
	andi r10, r10, 1
	add.s r2, r2, r10
	add.s r2, r2, r16
	and r10, r2, r5
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	setlt.u r2, r3, r18
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	beq r2, zero, .LBB0_167
# %bb.164:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r3, r20
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	beq r1, zero, .LBB0_168
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r3, r22
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r1, zero, .LBB0_150
	j .LBB0_169
.LBB0_166:                              #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r10, r2, r11
	.loc	1 304 19 is_stmt 1              # parallel-rne.mlir:304:19
	setlt.u r19, r3, r19
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	beq r19, zero, .LBB0_162
	j .LBB0_163
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r16
	and r21, r1, r5
	setlt.u r1, r3, r20
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r1, zero, .LBB0_165
.LBB0_168:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r17, 16
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r16
	and r23, r1, r5
	setlt.u r1, r3, r22
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	bneq r1, zero, .LBB0_150
.LBB0_169:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r16
	and r9, r1, r5
	j .LBB0_150
.LBB0_170:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 24
	.loc	1 225 7 is_stmt 1               # parallel-rne.mlir:225:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r1
	j .LBB0_172
.LBB0_171:                              # %middle.block93
                                        #   in Loop: Header=BB0_172 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[9:10], -608(r30)               # 8-byte Folded Reload
	.loc	1 233 9 is_stmt 1               # parallel-rne.mlir:233:9
	setlt.ul r1, r[9:10], r[27:28]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_200
.LBB0_172:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_181 Depth 3
                                        #       Child Loop BB0_175 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[9:10], -608(r30)              # 8-byte Folded Spill
	sll.d r[24:25], r[9:10], r1
	.loc	1 234 11 is_stmt 1              # parallel-rne.mlir:234:11
	bneq r14, r6, .LBB0_179
# %bb.173:                              # %scalar.ph87.preheader
                                        #   in Loop: Header=BB0_172 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_175
.LBB0_174:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 234 11                        # parallel-rne.mlir:234:11
	setlt.ul r10, r[1:2], r[27:28]
	.loc	1 249 13 is_stmt 1              # parallel-rne.mlir:249:13
	add.s r7, r14, r7
	.loc	1 234 11                        # parallel-rne.mlir:234:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 249 13                        # parallel-rne.mlir:249:13
	stores.w r9, 0(r7)
	.loc	1 234 11                        # parallel-rne.mlir:234:11
	beq r10, zero, .LBB0_171
.LBB0_175:                              # %scalar.ph87
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_172 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	add.ul r[9:10], r[1:2], r[24:25]
	slli r7, r9, 2
	add.s r9, r6, r7
	loads.w r10, 0(r9)
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	and r12, r10, r8
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	setlt.u r9, r4, r12
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r9, zero, .LBB0_177
# %bb.176:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 246 19 is_stmt 1              # parallel-rne.mlir:246:19
	setlt.u r12, r3, r12
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r12, zero, .LBB0_174
	j .LBB0_178
.LBB0_177:                              #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r11
	.loc	1 246 19 is_stmt 1              # parallel-rne.mlir:246:19
	setlt.u r12, r3, r12
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r12, zero, .LBB0_174
.LBB0_178:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r16
	and r9, r9, r5
	j .LBB0_174
.LBB0_179:                              # %vector.body89.preheader
                                        #   in Loop: Header=BB0_172 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_181
.LBB0_180:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	addli r2, zero, 32
	.loc	1 234 11 is_stmt 1              # parallel-rne.mlir:234:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 249 13                        # parallel-rne.mlir:249:13
	add.s r7, r14, r7
	zext_int2long r[17:18], r2
	stores.w r9, 12(r7)
	stores.w r23, 8(r7)
	stores.w r1, 4(r7)
	stores.w r10, 0(r7)
	.loc	1 234 11                        # parallel-rne.mlir:234:11
	seteq.d r2, r[12:13], r[17:18]
	bneq r2, zero, .LBB0_171
.LBB0_181:                              # %vector.body89
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_172 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	add.ul r[1:2], r[12:13], r[24:25]
	slli r7, r1, 2
	add.s r2, r6, r7
	loads.w r26, 12(r2)
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	and r22, r26, r8
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	setlt.u r1, r4, r22
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r1, zero, .LBB0_183
# %bb.182:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r26, 0
	j .LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_181 Depth=3
	or r9, r26, r11
.LBB0_184:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	loads.w r17, 8(r2)
	and r20, r17, r8
	setlt.u r1, r4, r20
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r1, zero, .LBB0_186
# %bb.185:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r17, 0
	j .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_181 Depth=3
	or r23, r17, r11
.LBB0_187:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	loads.w r21, 4(r2)
	and r18, r21, r8
	setlt.u r1, r4, r18
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r1, zero, .LBB0_189
# %bb.188:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r21, 0
	j .LBB0_190
.LBB0_189:                              #   in Loop: Header=BB0_181 Depth=3
	or r1, r21, r11
.LBB0_190:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	loads.w r2, 0(r2)
	and r19, r2, r8
	setlt.u r10, r4, r19
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r10, zero, .LBB0_196
# %bb.191:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r2, 0
	.loc	1 246 19 is_stmt 1              # parallel-rne.mlir:246:19
	setlt.u r19, r3, r19
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r19, zero, .LBB0_193
.LBB0_192:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r2, 16
	andi r10, r10, 1
	add.s r2, r2, r10
	add.s r2, r2, r16
	and r10, r2, r5
.LBB0_193:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	setlt.u r2, r3, r18
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	beq r2, zero, .LBB0_197
# %bb.194:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r20
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	beq r2, zero, .LBB0_198
.LBB0_195:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r3, r22
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r2, zero, .LBB0_180
	j .LBB0_199
.LBB0_196:                              #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r10, r2, r11
	.loc	1 246 19 is_stmt 1              # parallel-rne.mlir:246:19
	setlt.u r19, r3, r19
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	beq r19, zero, .LBB0_192
	j .LBB0_193
.LBB0_197:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r16
	and r1, r1, r5
	setlt.u r2, r3, r20
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r2, zero, .LBB0_195
.LBB0_198:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r17, 16
	andi r2, r2, 1
	add.s r2, r17, r2
	add.s r2, r2, r16
	and r23, r2, r5
	setlt.u r2, r3, r22
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	bneq r2, zero, .LBB0_180
.LBB0_199:                              # %vector.body89
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r16
	and r9, r2, r5
	j .LBB0_180
.LBB0_200:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r12
	.loc	1 225 7                         # parallel-rne.mlir:225:7
	mfence { sm }
	.loc	1 254 7                         # parallel-rne.mlir:254:7
	addli r1, zero, 4
	bneq r12, r1, .LBB0_137
.LBB0_201:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	load.d r[9:10], -592(r30)               # 8-byte Folded Reload
	j .LBB0_203
.LBB0_202:                              # %middle.block84
                                        #   in Loop: Header=BB0_203 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[9:10], -608(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 262 9 is_stmt 1               # parallel-rne.mlir:262:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_231
.LBB0_203:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_212 Depth 3
                                        #       Child Loop BB0_206 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[9:10], -608(r30)              # 8-byte Folded Spill
	sll.d r[24:25], r[9:10], r1
	.loc	1 263 11 is_stmt 1              # parallel-rne.mlir:263:11
	bneq r14, r6, .LBB0_210
# %bb.204:                              # %scalar.ph78.preheader
                                        #   in Loop: Header=BB0_203 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_206
.LBB0_205:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	setlt.ul r10, r[1:2], r[27:28]
	.loc	1 278 13 is_stmt 1              # parallel-rne.mlir:278:13
	add.s r7, r14, r7
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 278 13                        # parallel-rne.mlir:278:13
	stores.w r9, 0(r7)
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	beq r10, zero, .LBB0_202
.LBB0_206:                              # %scalar.ph78
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_203 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	add.ul r[9:10], r[1:2], r[24:25]
	slli r7, r9, 2
	add.s r9, r6, r7
	loads.w r10, 0(r9)
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	and r12, r10, r8
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	setlt.u r9, r4, r12
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r9, zero, .LBB0_208
# %bb.207:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 275 19 is_stmt 1              # parallel-rne.mlir:275:19
	setlt.u r12, r3, r12
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r12, zero, .LBB0_205
	j .LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r11
	.loc	1 275 19 is_stmt 1              # parallel-rne.mlir:275:19
	setlt.u r12, r3, r12
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r12, zero, .LBB0_205
.LBB0_209:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r16
	and r9, r9, r5
	j .LBB0_205
.LBB0_210:                              # %vector.body80.preheader
                                        #   in Loop: Header=BB0_203 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_212
.LBB0_211:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	addli r1, zero, 32
	.loc	1 263 11 is_stmt 1              # parallel-rne.mlir:263:11
	addli.d r[12:13], r[12:13], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[12:13], r[1:2]
	.loc	1 278 13                        # parallel-rne.mlir:278:13
	add.s r2, r14, r7
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r10, 0(r2)
	.loc	1 263 11                        # parallel-rne.mlir:263:11
	bneq r1, zero, .LBB0_202
.LBB0_212:                              # %vector.body80
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_203 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	add.ul r[1:2], r[12:13], r[24:25]
	slli r7, r1, 2
	add.s r2, r6, r7
	loads.w r26, 12(r2)
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	and r22, r26, r8
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	setlt.u r1, r4, r22
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r1, zero, .LBB0_214
# %bb.213:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r26, 0
	j .LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_212 Depth=3
	or r9, r26, r11
.LBB0_215:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	loads.w r17, 8(r2)
	and r20, r17, r8
	setlt.u r1, r4, r20
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r1, zero, .LBB0_217
# %bb.216:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r17, 0
	j .LBB0_218
.LBB0_217:                              #   in Loop: Header=BB0_212 Depth=3
	or r23, r17, r11
.LBB0_218:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	loads.w r1, 4(r2)
	and r18, r1, r8
	setlt.u r10, r4, r18
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r10, zero, .LBB0_220
# %bb.219:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r1, 0
	j .LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_212 Depth=3
	or r21, r1, r11
.LBB0_221:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	loads.w r2, 0(r2)
	and r19, r2, r8
	setlt.u r10, r4, r19
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r10, zero, .LBB0_227
# %bb.222:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r2, 0
	.loc	1 275 19 is_stmt 1              # parallel-rne.mlir:275:19
	setlt.u r19, r3, r19
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r19, zero, .LBB0_224
.LBB0_223:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r2, 16
	andi r10, r10, 1
	add.s r2, r2, r10
	add.s r2, r2, r16
	and r10, r2, r5
.LBB0_224:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	setlt.u r2, r3, r18
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r2, zero, .LBB0_228
# %bb.225:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r3, r20
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r1, zero, .LBB0_229
.LBB0_226:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r3, r22
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r1, zero, .LBB0_211
	j .LBB0_230
.LBB0_227:                              #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r10, r2, r11
	.loc	1 275 19 is_stmt 1              # parallel-rne.mlir:275:19
	setlt.u r19, r3, r19
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	beq r19, zero, .LBB0_223
	j .LBB0_224
.LBB0_228:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r16
	and r21, r1, r5
	setlt.u r1, r3, r20
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r1, zero, .LBB0_226
.LBB0_229:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r17, 16
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r16
	and r23, r1, r5
	setlt.u r1, r3, r22
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	bneq r1, zero, .LBB0_211
.LBB0_230:                              # %vector.body80
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r16
	and r9, r1, r5
	j .LBB0_211
.LBB0_231:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r12
	.loc	1 254 7                         # parallel-rne.mlir:254:7
	mfence { sm }
	addli r1, zero, 7
	.loc	1 283 7                         # parallel-rne.mlir:283:7
	bneq r12, r1, .LBB0_138
.LBB0_232:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 341 7 is_stmt 1               # parallel-rne.mlir:341:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r1
	j .LBB0_234
.LBB0_233:                              # %middle.block75
                                        #   in Loop: Header=BB0_234 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[9:10], -608(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 349 9 is_stmt 1               # parallel-rne.mlir:349:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_292
.LBB0_234:                              # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_243 Depth 3
                                        #       Child Loop BB0_237 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[9:10], -608(r30)              # 8-byte Folded Spill
	sll.d r[24:25], r[9:10], r1
	.loc	1 350 11 is_stmt 1              # parallel-rne.mlir:350:11
	bneq r14, r6, .LBB0_241
# %bb.235:                              # %scalar.ph69.preheader
                                        #   in Loop: Header=BB0_234 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_237
.LBB0_236:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	setlt.ul r10, r[1:2], r[27:28]
	.loc	1 365 13 is_stmt 1              # parallel-rne.mlir:365:13
	add.s r7, r14, r7
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	stores.w r9, 0(r7)
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	beq r10, zero, .LBB0_233
.LBB0_237:                              # %scalar.ph69
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_234 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	add.ul r[9:10], r[1:2], r[24:25]
	slli r7, r9, 2
	add.s r9, r6, r7
	loads.w r10, 0(r9)
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	and r12, r10, r8
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	setlt.u r9, r4, r12
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r9, zero, .LBB0_239
# %bb.238:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 362 19 is_stmt 1              # parallel-rne.mlir:362:19
	setlt.u r12, r3, r12
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r12, zero, .LBB0_236
	j .LBB0_240
.LBB0_239:                              #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r11
	.loc	1 362 19 is_stmt 1              # parallel-rne.mlir:362:19
	setlt.u r12, r3, r12
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r12, zero, .LBB0_236
.LBB0_240:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r16
	and r9, r9, r5
	j .LBB0_236
.LBB0_241:                              # %vector.body71.preheader
                                        #   in Loop: Header=BB0_234 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_243
.LBB0_242:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 350 11 is_stmt 1              # parallel-rne.mlir:350:11
	load.d r[1:2], -592(r30)                # 8-byte Folded Reload
	addli.d r[12:13], r[12:13], 4
	seteq.d r1, r[12:13], r[1:2]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	add.s r2, r14, r7
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r10, 0(r2)
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	bneq r1, zero, .LBB0_233
.LBB0_243:                              # %vector.body71
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_234 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	add.ul r[1:2], r[12:13], r[24:25]
	slli r7, r1, 2
	add.s r2, r6, r7
	loads.w r26, 12(r2)
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	and r22, r26, r8
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	setlt.u r1, r4, r22
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r1, zero, .LBB0_245
# %bb.244:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r26, 0
	j .LBB0_246
.LBB0_245:                              #   in Loop: Header=BB0_243 Depth=3
	or r9, r26, r11
.LBB0_246:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r17, 8(r2)
	and r20, r17, r8
	setlt.u r1, r4, r20
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r1, zero, .LBB0_248
# %bb.247:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r17, 0
	j .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_243 Depth=3
	or r23, r17, r11
.LBB0_249:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r1, 4(r2)
	and r18, r1, r8
	setlt.u r10, r4, r18
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r10, zero, .LBB0_251
# %bb.250:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r1, 0
	j .LBB0_252
.LBB0_251:                              #   in Loop: Header=BB0_243 Depth=3
	or r21, r1, r11
.LBB0_252:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r2, 0(r2)
	and r19, r2, r8
	setlt.u r10, r4, r19
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r10, zero, .LBB0_254
# %bb.253:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r2, 0
	.loc	1 362 19 is_stmt 1              # parallel-rne.mlir:362:19
	setlt.u r19, r3, r19
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	beq r19, zero, .LBB0_255
	j .LBB0_256
.LBB0_254:                              #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r2, r11
	.loc	1 362 19 is_stmt 1              # parallel-rne.mlir:362:19
	setlt.u r19, r3, r19
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r19, zero, .LBB0_256
.LBB0_255:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r2, 16
	andi r10, r10, 1
	add.s r2, r2, r10
	add.s r2, r2, r16
	and r10, r2, r5
.LBB0_256:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	setlt.u r2, r3, r18
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	beq r2, zero, .LBB0_259
# %bb.257:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r3, r20
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	beq r1, zero, .LBB0_260
.LBB0_258:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r3, r22
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r1, zero, .LBB0_242
	j .LBB0_261
.LBB0_259:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r16
	and r21, r1, r5
	setlt.u r1, r3, r20
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r1, zero, .LBB0_258
.LBB0_260:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r17, 16
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r16
	and r23, r1, r5
	setlt.u r1, r3, r22
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	bneq r1, zero, .LBB0_242
.LBB0_261:                              # %vector.body71
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r16
	and r9, r1, r5
	j .LBB0_242
.LBB0_262:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 48
	.loc	1 312 7 is_stmt 1               # parallel-rne.mlir:312:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[9:10], r1
	j .LBB0_264
.LBB0_263:                              # %middle.block66
                                        #   in Loop: Header=BB0_264 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[9:10], -608(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 320 9 is_stmt 1               # parallel-rne.mlir:320:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_292
.LBB0_264:                              # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_267 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[9:10], -608(r30)              # 8-byte Folded Spill
	sll.d r[24:25], r[9:10], r1
	.loc	1 321 11 is_stmt 1              # parallel-rne.mlir:321:11
	bneq r14, r6, .LBB0_271
# %bb.265:                              # %scalar.ph60.preheader
                                        #   in Loop: Header=BB0_264 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_267
.LBB0_266:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 321 11                        # parallel-rne.mlir:321:11
	setlt.ul r10, r[1:2], r[27:28]
	.loc	1 336 13 is_stmt 1              # parallel-rne.mlir:336:13
	add.s r7, r14, r7
	.loc	1 321 11                        # parallel-rne.mlir:321:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 336 13                        # parallel-rne.mlir:336:13
	stores.w r9, 0(r7)
	.loc	1 321 11                        # parallel-rne.mlir:321:11
	beq r10, zero, .LBB0_263
.LBB0_267:                              # %scalar.ph60
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_264 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	add.ul r[9:10], r[1:2], r[24:25]
	slli r7, r9, 2
	add.s r9, r6, r7
	loads.w r10, 0(r9)
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	and r12, r10, r8
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	setlt.u r9, r4, r12
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r9, zero, .LBB0_269
# %bb.268:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 333 19 is_stmt 1              # parallel-rne.mlir:333:19
	setlt.u r12, r3, r12
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r12, zero, .LBB0_266
	j .LBB0_270
.LBB0_269:                              #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r10, r11
	.loc	1 333 19 is_stmt 1              # parallel-rne.mlir:333:19
	setlt.u r12, r3, r12
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r12, zero, .LBB0_266
.LBB0_270:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r16
	and r9, r9, r5
	j .LBB0_266
.LBB0_271:                              # %vector.body62.preheader
                                        #   in Loop: Header=BB0_264 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_273
.LBB0_272:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 321 11 is_stmt 1              # parallel-rne.mlir:321:11
	load.d r[1:2], -592(r30)                # 8-byte Folded Reload
	addli.d r[12:13], r[12:13], 4
	seteq.d r1, r[12:13], r[1:2]
	.loc	1 336 13                        # parallel-rne.mlir:336:13
	add.s r2, r14, r7
	stores.w r9, 12(r2)
	stores.w r23, 8(r2)
	stores.w r21, 4(r2)
	stores.w r10, 0(r2)
	.loc	1 321 11                        # parallel-rne.mlir:321:11
	bneq r1, zero, .LBB0_263
.LBB0_273:                              # %vector.body62
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_264 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	add.ul r[1:2], r[12:13], r[24:25]
	slli r7, r1, 2
	add.s r2, r6, r7
	loads.w r26, 12(r2)
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	and r22, r26, r8
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	setlt.u r1, r4, r22
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r1, zero, .LBB0_275
# %bb.274:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r26, 0
	j .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_273 Depth=3
	or r9, r26, r11
.LBB0_276:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r17, 8(r2)
	and r20, r17, r8
	setlt.u r1, r4, r20
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r1, zero, .LBB0_278
# %bb.277:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r17, 0
	j .LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_273 Depth=3
	or r23, r17, r11
.LBB0_279:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r1, 4(r2)
	and r18, r1, r8
	setlt.u r10, r4, r18
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r10, zero, .LBB0_281
# %bb.280:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r1, 0
	j .LBB0_282
.LBB0_281:                              #   in Loop: Header=BB0_273 Depth=3
	or r21, r1, r11
.LBB0_282:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r2, 0(r2)
	and r19, r2, r8
	setlt.u r10, r4, r19
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r10, zero, .LBB0_284
# %bb.283:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r2, 0
	.loc	1 333 19 is_stmt 1              # parallel-rne.mlir:333:19
	setlt.u r19, r3, r19
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	beq r19, zero, .LBB0_285
	j .LBB0_286
.LBB0_284:                              #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r2, r11
	.loc	1 333 19 is_stmt 1              # parallel-rne.mlir:333:19
	setlt.u r19, r3, r19
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r19, zero, .LBB0_286
.LBB0_285:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r10, r2, 16
	andi r10, r10, 1
	add.s r2, r2, r10
	add.s r2, r2, r16
	and r10, r2, r5
.LBB0_286:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	setlt.u r2, r3, r18
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	beq r2, zero, .LBB0_289
# %bb.287:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r3, r20
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	beq r1, zero, .LBB0_290
.LBB0_288:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r3, r22
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r1, zero, .LBB0_272
	j .LBB0_291
.LBB0_289:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r16
	and r21, r1, r5
	setlt.u r1, r3, r20
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r1, zero, .LBB0_288
.LBB0_290:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r17, 16
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r16
	and r23, r1, r5
	setlt.u r1, r3, r22
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r1, zero, .LBB0_272
.LBB0_291:                              # %vector.body62
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r26, 16
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r16
	and r9, r1, r5
	j .LBB0_272
.LBB0_292:                              # %.sink.split52
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r12
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_293:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 370 7 is_stmt 1               # parallel-rne.mlir:370:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	loadli.w r1,  -612(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.294:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r22,  -640(r30)                # 4-byte Folded Reload
	addli r18, zero, 1
	.loc	1 388 7 is_stmt 1               # parallel-rne.mlir:388:7
	bneq r12, zero, .LBB0_6
# %bb.295:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	loadli.w r1,  -688(r30)                 # 4-byte Folded Reload
	addli r6, zero, 992
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	loadli.w r9,  -684(r30)                 # 4-byte Folded Reload
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	load.d r[12:13], -600(r30)              # 8-byte Folded Reload
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	load.d r[19:20], -680(r30)              # 8-byte Folded Reload
	addli r17, zero, 12
	ori r14, r14, 64
	zext_int2long r[6:7], r6
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	zext_int2long r[1:2], r1
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	sext_int2long r[9:10], r9
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	min.ul r[6:7], r[1:2], r[6:7]
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	min.sl r[12:13], r[9:10], r[12:13]
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	addli.d r[6:7], r[6:7], 32
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	addli.d r[12:13], r[12:13], 64
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	max.sl r[6:7], r[12:13], r[9:10]
	.loc	1 384 13                        # parallel-rne.mlir:384:13
	load.d r[12:13], -592(r30)              # 8-byte Folded Reload
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	sub.sl r[6:7], r[6:7], r[9:10]
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	load.d r[9:10], 16(r30)
	.loc	1 384 13                        # parallel-rne.mlir:384:13
	min.ul r[1:2], r[1:2], r[12:13]
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	addli r12, zero, 17
	sll.d r[12:13], r[19:20], r12
	load.d r[20:21], -672(r30)              # 8-byte Folded Reload
	xwait r17, 0
	addli r17, zero, 5
	addli r19, zero, 64
	add.ul r[9:10], r[9:10], r[12:13]
	lock zero, r17
	zext_int2long r[12:13], r19
	dma_cfg r18, r18, zero, 0
	add.ul r[9:10], r[9:10], r[20:21]
	dma_cfg zero, r18, zero, 1
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	min.sl r[6:7], r[6:7], r[12:13]
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r12
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r14, r19, 3
	addli r9, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	srli r9, r9, 5
	andi r1, r1, 62
	dma_cfg r19, r2, r9, 4
	addli r9, zero, 2048
	dma_cfg r9, r2, r6, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r17
	xsignal r1, 0
	j .LBB0_6
.LBB0_296:                              # %._crit_edge
	.loc	1 390 5                         # parallel-rne.mlir:390:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_298
# %bb.297:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 390 5                         # parallel-rne.mlir:390:5
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
.LBB0_298:
	.loc	1 391 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:391:5
	addli sp, sp, 696
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
	.long	760                             # 0x2f8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-aei9f57k" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
