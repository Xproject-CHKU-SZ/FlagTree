	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-ejy_i9dc" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -768
	addli r1, zero, 1
.Ltmp0:
	.loc	1 32 5 prologue_end             # parallel-rne.mlir:32:5
	core_id r9
	addli r30, sp, 704
	xsignal_mode_cfg r1
	beq r9, zero, .LBB0_2
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
	.loc	1 34 10 is_stmt 1               # parallel-rne.mlir:34:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -128(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -452(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -580(r30)
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r2, r2, r1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r1, r4, 0
	fmac.s r1, r2, r3
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r3, r2, r3
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r1, r1, -1
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	div.s r4, r1, r4
	ori r1, r5, 4095
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r2, r4, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	fmac.s r4, r4, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	min.s r3, r4, r3
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r3, r2, .LBB0_300
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[3:4], r3
	.loc	1 43 11 is_stmt 1               # parallel-rne.mlir:43:11
	sext_int2long r[7:8], r2
	lui r2, 15
	addli r18, zero, 4
	addli r20, zero, 7
	lui r17, 1024
	lui r21, 522240
	lui r6, 1048560
	storeli.w zero, -592(r30)               # 4-byte Folded Spill
	store.d r[3:4], -696(r30)               # 8-byte Folded Spill
	ori r3, r2, 4095
	lui r2, 1047552
	store.d r[2:3], -704(r30)               # 8-byte Folded Spill
	lui r2, 1023
	lui r3, 522239
	ori r1, r2, 4095
	lui r2, 524287
	ori r5, r3, 4095
	ori r12, r2, 4095
	lui r2, 7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	addli r1, zero, 0
	ori r4, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[7:8], -656(r30)                # 8-byte Folded Reload
	.loc	1 51 5 is_stmt 1                # parallel-rne.mlir:51:5
	load.d r[1:2], -696(r30)                # 8-byte Folded Reload
	addli.d r[7:8], r[7:8], 1
	setlt.sl r2, r[7:8], r[1:2]
	loadli.w r1,  -604(r30)                 # 4-byte Folded Reload
	addli r1, r1, 1
	storeli.w r1, -592(r30)                 # 4-byte Folded Spill
	loadli.w r1,  -660(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_300
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_46 Depth 2
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_49 Depth 3
                                        #     Child Loop BB0_79 Depth 2
                                        #       Child Loop BB0_88 Depth 3
                                        #       Child Loop BB0_82 Depth 3
                                        #     Child Loop BB0_109 Depth 2
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_112 Depth 3
                                        #     Child Loop BB0_175 Depth 2
                                        #       Child Loop BB0_184 Depth 3
                                        #       Child Loop BB0_178 Depth 3
                                        #     Child Loop BB0_206 Depth 2
                                        #       Child Loop BB0_215 Depth 3
                                        #       Child Loop BB0_209 Depth 3
                                        #     Child Loop BB0_145 Depth 2
                                        #       Child Loop BB0_154 Depth 3
                                        #       Child Loop BB0_148 Depth 3
                                        #     Child Loop BB0_267 Depth 2
                                        #       Child Loop BB0_276 Depth 3
                                        #       Child Loop BB0_270 Depth 3
                                        #     Child Loop BB0_237 Depth 2
                                        #       Child Loop BB0_246 Depth 3
                                        #       Child Loop BB0_240 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r24, zero, 3
	addli r28, zero, 4
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	bneq r9, r18, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  32(r30)
	store.d r[7:8], -656(r30)               # 8-byte Folded Spill
	addli r10, zero, 32
	addli r11, zero, 8
	addli r13, zero, 5
	loadli.w r23,  -452(r30)
	loadli.w r16,  -128(r30)
	addli r2, zero, 0
	div.s r3, r7, r3
	loadli.w r7,  28(r30)
	mod.s r8, r1, r13
	addli r1, r1, 1
	storeli.w r1, -660(r30)                 # 4-byte Folded Spill
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	loadli.w r1,  -580(r30)
	storeli.w r1, -616(r30)                 # 4-byte Folded Spill
	div.s r3, r3, r7
	addli r7, zero, 512
	slli r8, r8, 13
	div.s r7, r3, r7
	slli r9, r7, 3
	slli r7, r7, 9
	sub.s r10, r10, r9
	sub.s r7, r3, r7
	min.s r10, r10, r11
	mod.s r3, r3, r10
	div.s r7, r7, r10
	lui r10, 10
	add.s r22, r8, r10
	add.s r3, r9, r3
	slli r1, r7, 5
	zext_int2long r[9:10], r7
	addli r7, zero, 0
	storeli.w r1, -688(r30)                 # 4-byte Folded Spill
	slli r1, r3, 6
	zext_int2long r[14:15], r3
	addli r3, zero, 17
	sll.d r[9:10], r[9:10], r13
	sll.d r[18:19], r[14:15], r3
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r3, zero, 1
	store.d r[14:15], -680(r30)             # 8-byte Folded Spill
	storeli.w r1, -684(r30)                 # 4-byte Folded Spill
	sll.d r[13:14], r[9:10], r3
	load.d r[9:10], -704(r30)               # 8-byte Folded Reload
	store.d r[18:19], -624(r30)             # 8-byte Folded Spill
	store.d r[13:14], -672(r30)             # 8-byte Folded Spill
	and.d r[9:10], r[18:19], r[9:10]
	store.d r[9:10], -632(r30)              # 8-byte Folded Spill
	load.d r[9:10], 8(r30)
	add.ul r[9:10], r[9:10], r[13:14]
	store.d r[9:10], -648(r30)              # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r1, 20
	addli r18, zero, 64
	addli r11, zero, 5
	addli r19, zero, 30
	addli r24, zero, 3
	addli r28, zero, 4
	ori r9, r1, 64
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r1, zero, 4096
	add.s r9, r13, r9
	addli r13, zero, 4
	lock zero, r13
	dma_cfg r20, r20, zero, 0
	dma_cfg zero, r15, zero, 2
	dma_cfg r9, r14, r18, 3
	addli r15, zero, 128
	addli r9, zero, 512
	addli r14, zero, 2
	dma_cfg r15, r18, r13, 4
	dma_cfg r9, r1, r26, 5
	addli r1, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 8
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 17
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
	dma_cfg zero, zero, r10, 10
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
	addli r1, zero, 31
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r18, 3
	dma_cfg r15, zero, r13, 4
	dma_cfg r9, zero, r26, 5
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r9
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	addli r20, zero, 7
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r14, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r23, r23, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r3, r16, 1
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r7, r7, 1
	addli r1, zero, 16
	beq r7, r1, .LBB0_37
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 123 15                        # parallel-rne.mlir:123:15
	addli r2, r2, 1
	addli r16, r3, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	zext_int2long r[10:11], r7
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	load.d r[18:19], -624(r30)              # 8-byte Folded Reload
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	sll.d r[13:14], r[10:11], r20
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	add.ul r[26:27], r[13:14], r[18:19]
	zext_int2long r[13:14], r1
	load.d r[18:19], -632(r30)              # 8-byte Folded Reload
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	setlt.ul r3, r[13:14], r[26:27]
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	bneq r3, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[18:19], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	loadli.w r1,  -616(r30)                 # 4-byte Folded Reload
	add.s r25, r1, r2
	loadli.w r1,  -592(r30)                 # 4-byte Folded Reload
	add.s r9, r1, r2
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	addli r1, zero, 31
	mod.s r3, r25, r1
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r1, zero, 24
	storeli.w r9, -604(r30)                 # 4-byte Folded Spill
	mod.s r9, r9, r1
	addli r1, zero, 1984
	zext_int2long r[13:14], r1
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	lui r1, 20
	store.d r[13:14], -600(r30)             # 8-byte Folded Spill
	slli r13, r3, 15
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r14, r9, 15
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	add.s r3, r13, r1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r9
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r1, zero, 2
	beq r9, r1, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r15
	addli r20, zero, 1
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	bneq r15, r20, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 2048
	sub.sl r[9:10], r[26:27], r[18:19]
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	sll.d r[18:19], r[26:27], r20
	zext_int2long r[14:15], r11
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[9:10], r[9:10], r[14:15]
	load.d r[14:15], -600(r30)              # 8-byte Folded Reload
	min.sl r[14:15], r[9:10], r[14:15]
	sub.sl r[9:10], r[14:15], r[9:10]
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	load.d r[14:15], 0(r30)
	addli r26, r9, 64
	addli r10, zero, 3
	add.ul r[14:15], r[14:15], r[18:19]
	addli r18, zero, 30
	xwait r10, 0
	blt.s r18, r25, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r10, zero, 5
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r9, zero, 2
	addli r11, zero, 3
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 6
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 4
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 17
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
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 512
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
	addli r1, zero, 31
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 64
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 128
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r3, zero, r18, 3
	dma_cfg r1, zero, r11, 4
	dma_cfg r9, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	addli r10, zero, 3
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r1, zero, 2
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	addli r10, zero, 5
	xwait r1, 0
	xwait r10, 0
	lock zero, zero
	addli r10, zero, 64
	ds_cfg r1, zero, 0
	addli r1, zero, 128
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r10, zero, 13
	shuffle_batch r14, r3, r1, 1
	unlock zero
	xsignal r24, 0
	xsignal r28, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r1, zero, 31
	addli r20, zero, 7
	mod.s r3, r16, r1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r1, zero, 80
	mod.s r9, r23, r1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	lui r1, 268
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r23, r23, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	slli r13, r3, 14
	addli r3, r16, 1
	add.s r26, r13, r1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r9, r9, 14
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	addli r1, zero, 6
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	beq r15, r20, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r15, r1, .LBB0_29
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r19, zero, 19
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	load.d r[14:15], -648(r30)              # 8-byte Folded Reload
	addli r18, zero, 30
	xwait r20, 0
	sll.d r[9:10], r[10:11], r19
	add.ul r[14:15], r[14:15], r[9:10]
	blt.s r18, r16, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r10, zero, 5
	addli r11, zero, 1
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r1, zero, 2
	addli r9, zero, 8
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r28, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 17
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
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r19, 10
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
	addli r1, zero, 31
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r26, zero, r1, 3
	addli r1, zero, 128
	dma_cfg r1, zero, r11, 4
	dma_cfg r1, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r1, 268
	addli r11, zero, 4
	addli r16, zero, 64
	addli r10, zero, 5
	addli r28, zero, 4
	ori r9, r1, 64
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	lock zero, r11
	addli r1, zero, 4096
	add.s r9, r13, r9
	addli r13, zero, 1
	dma_cfg r13, r13, zero, 0
	dma_cfg zero, r15, zero, 2
	dma_cfg r9, r14, r16, 3
	addli r14, zero, 128
	addli r9, zero, 8
	dma_cfg r14, r16, r13, 4
	dma_cfg r14, r1, r14, 5
	addli r1, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 6
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 17
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
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r19, 10
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
	addli r1, zero, 31
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r1, 10
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r26, zero, r16, 3
	dma_cfg r14, zero, r13, 4
	dma_cfg r14, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r11, 0
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xwait r1, 0
	addli r1, zero, 9
	addli r10, zero, 32
	xwait r1, 0
	addli r1, zero, 2
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 128
	ds_cfg r10, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r10, zero, 13
	shuffle_coa r9, r26, r1, 2
	addli r9, zero, 8
	unlock zero
	xsignal r20, 0
	xsignal r9, 0
.LBB0_28:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r9
	j .LBB0_13
.LBB0_29:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r18, zero, 4
	.loc	1 122 9 is_stmt 1               # parallel-rne.mlir:122:9
	bneq r15, r18, .LBB0_32
# %bb.30:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 8
	addli r13, zero, 1
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	addli r10, zero, 32
	addli r1, zero, 128
	addli r15, zero, 64
	xwait r18, 0
	xwait r11, 0
	lock zero, r13
	mm_cfg r10, r1, r15, 0
	mm_cfg r11, r13, r13, 2
	beq r2, zero, .LBB0_34
# %bb.31:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r22, r14, r9, 8
	j .LBB0_35
.LBB0_32:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 79 7 is_stmt 1                # parallel-rne.mlir:79:7
	addli r7, r7, 1
	addli r1, zero, 16
	beq r7, r1, .LBB0_39
# %bb.33:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r28, zero, 4
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	j .LBB0_14
.LBB0_34:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 122 9 is_stmt 1               # parallel-rne.mlir:122:9
	mm r22, r14, r9, 8
.LBB0_35:                               # %.thread20.thread44
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r9, zero, 1
	addli r1, zero, 9
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r7, r7, 1
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	unlock r9
	addli r9, zero, 5
	xsignal r9, 0
	xsignal r1, 0
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r9
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r1, zero, 16
	beq r7, r1, .LBB0_299
# %bb.36:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r24, zero, 3
	addli r28, zero, 4
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	j .LBB0_14
.LBB0_37:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	addli r1, r25, 1
	addli r18, zero, 4
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r23, -452(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r3, -128(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	storeli.w r1, -580(r30)
	addli r1, zero, 3
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	bneq r9, r18, .LBB0_40
.LBB0_38:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -624(r30)               # 4-byte Folded Spill
	xsignal r1, 0
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	j .LBB0_43
.LBB0_39:                               # %.thread43.loopexit
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r1, r25, 1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r9
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r23, -452(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r3, -128(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	storeli.w r1, -580(r30)
	addli r1, zero, 3
.LBB0_40:                               # %.thread43
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	bneq r9, r1, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	storeli.w r1, -624(r30)                 # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -624(r30)               # 4-byte Folded Spill
.LBB0_43:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	addli r1, zero, 255
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	xfence
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { lm, sm, gm }
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	csr_set csr5, r1
	addli r1, zero, 31
	sync_core
	zext_int2long r[23:24], r1
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	bneq r9, zero, .LBB0_75
# %bb.44:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_46
.LBB0_45:                               # %middle.block120
                                        #   in Loop: Header=BB0_46 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r20, zero, 7
	load.d r[9:10], -592(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r20
	.loc	1 145 9 is_stmt 1               # parallel-rne.mlir:145:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[2:3], r[9:10], 1
	beq r1, zero, .LBB0_74
.LBB0_46:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_49 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 146 11 is_stmt 1              # parallel-rne.mlir:146:11
	store.d r[2:3], -592(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[2:3], r1
	bneq r8, r22, .LBB0_53
# %bb.47:                               # %scalar.ph114.preheader
                                        #   in Loop: Header=BB0_46 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_49
.LBB0_48:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	setlt.ul r1, r[9:10], r[23:24]
	.loc	1 161 13 is_stmt 1              # parallel-rne.mlir:161:13
	add.s r2, r8, r3
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	stores.w r7, 0(r2)
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	beq r1, zero, .LBB0_45
.LBB0_49:                               # %scalar.ph114
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	add.ul r[1:2], r[9:10], r[19:20]
	slli r3, r1, 2
	add.s r1, r22, r3
	loads.w r11, 0(r1)
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	and r1, r11, r12
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	setlt.u r2, r21, r1
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r2, zero, .LBB0_51
# %bb.50:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r11, 0
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r1, r5, r1
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r1, zero, .LBB0_48
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r7, r11, r17
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r1, r5, r1
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r1, zero, .LBB0_48
.LBB0_52:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r7, r1, r6
	j .LBB0_48
.LBB0_53:                               # %vector.body116.preheader
                                        #   in Loop: Header=BB0_46 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_55
.LBB0_54:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	addli r1, zero, 32
	.loc	1 146 11 is_stmt 1              # parallel-rne.mlir:146:11
	addli.d r[25:26], r[25:26], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[25:26], r[1:2]
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	add.s r2, r8, r3
	stores.w r7, 12(r2)
	stores.w r13, 8(r2)
	stores.w r14, 4(r2)
	stores.w r10, 0(r2)
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	bneq r1, zero, .LBB0_45
.LBB0_55:                               # %vector.body116
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	add.ul r[1:2], r[25:26], r[19:20]
	slli r3, r1, 2
	add.s r9, r22, r3
	loads.w r16, 12(r9)
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	and r27, r16, r12
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	setlt.u r1, r21, r27
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r1, zero, .LBB0_57
# %bb.56:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r16, 0
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_55 Depth=3
	or r7, r16, r17
.LBB0_58:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	loads.w r15, 8(r9)
	and r18, r15, r12
	setlt.u r1, r21, r18
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r1, zero, .LBB0_60
# %bb.59:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r15, 0
	j .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_55 Depth=3
	or r13, r15, r17
.LBB0_61:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	loads.w r11, 4(r9)
	and r28, r11, r12
	setlt.u r1, r21, r28
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r1, zero, .LBB0_63
# %bb.62:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r11, 0
	j .LBB0_64
.LBB0_63:                               #   in Loop: Header=BB0_55 Depth=3
	or r14, r11, r17
.LBB0_64:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	loads.w r9, 0(r9)
	and r1, r9, r12
	setlt.u r2, r21, r1
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r2, zero, .LBB0_66
# %bb.65:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r9, 0
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r1, r5, r1
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r1, zero, .LBB0_67
	j .LBB0_68
.LBB0_66:                               #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r9, r17
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r1, r5, r1
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r1, zero, .LBB0_68
.LBB0_67:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r10, r1, r6
.LBB0_68:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	setlt.u r1, r5, r28
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r1, zero, .LBB0_71
# %bb.69:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r18
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r1, zero, .LBB0_72
.LBB0_70:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r27
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r1, zero, .LBB0_54
	j .LBB0_73
.LBB0_71:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r14, r1, r6
	setlt.u r1, r5, r18
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r1, zero, .LBB0_70
.LBB0_72:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r4
	and r13, r1, r6
	setlt.u r1, r5, r27
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r1, zero, .LBB0_54
.LBB0_73:                               # %vector.body116
                                        #   in Loop: Header=BB0_55 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r7, r1, r6
	j .LBB0_54
.LBB0_74:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r9
	addli r18, zero, 4
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { sm }
.LBB0_75:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	zext_int2long r[1:2], r1
	.loc	1 166 7 is_stmt 1               # parallel-rne.mlir:166:7
	store.d r[1:2], -592(r30)               # 8-byte Folded Spill
	addli r1, zero, 2
	beq r9, r1, .LBB0_107
# %bb.76:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	bneq r9, r1, .LBB0_138
# %bb.77:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_79
.LBB0_78:                               # %middle.block102
                                        #   in Loop: Header=BB0_79 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[9:10], -616(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 174 9 is_stmt 1               # parallel-rne.mlir:174:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[2:3], r[9:10], 1
	beq r1, zero, .LBB0_137
.LBB0_79:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_88 Depth 3
                                        #       Child Loop BB0_82 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	store.d r[2:3], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[2:3], r1
	bneq r8, r22, .LBB0_86
# %bb.80:                               # %scalar.ph96.preheader
                                        #   in Loop: Header=BB0_79 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_82
.LBB0_81:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	setlt.ul r3, r[9:10], r[23:24]
	.loc	1 190 13 is_stmt 1              # parallel-rne.mlir:190:13
	add.s r1, r8, r1
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	stores.w r2, 0(r1)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	beq r3, zero, .LBB0_78
.LBB0_82:                               # %scalar.ph96
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[1:2], r[9:10], r[27:28]
	slli r1, r1, 2
	add.s r2, r22, r1
	loads.w r3, 0(r2)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r7, r3, r12
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r2, r21, r7
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r2, zero, .LBB0_84
# %bb.83:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r7, r5, r7
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r7, zero, .LBB0_81
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r3, r17
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r7, r5, r7
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r7, zero, .LBB0_81
.LBB0_85:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r6
	j .LBB0_81
.LBB0_86:                               # %vector.body98.preheader
                                        #   in Loop: Header=BB0_79 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_88
.LBB0_87:                               # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	load.d r[1:2], -592(r30)                # 8-byte Folded Reload
	addli.d r[25:26], r[25:26], 4
	seteq.d r1, r[25:26], r[1:2]
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	add.s r2, r8, r3
	stores.w r7, 12(r2)
	stores.w r14, 8(r2)
	stores.w r15, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	bneq r1, zero, .LBB0_78
.LBB0_88:                               # %vector.body98
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[1:2], r[25:26], r[27:28]
	slli r3, r1, 2
	add.s r18, r22, r3
	loads.w r16, 12(r18)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r13, r16, r12
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r1, r21, r13
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r1, zero, .LBB0_90
# %bb.89:                               # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r16, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_88 Depth=3
	or r7, r16, r17
.LBB0_91:                               # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	loads.w r10, 8(r18)
	and r11, r10, r12
	setlt.u r1, r21, r11
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r1, zero, .LBB0_93
# %bb.92:                               # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r10, 0
	j .LBB0_94
.LBB0_93:                               #   in Loop: Header=BB0_88 Depth=3
	or r14, r10, r17
.LBB0_94:                               # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	loads.w r9, 4(r18)
	and r19, r9, r12
	setlt.u r1, r21, r19
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r1, zero, .LBB0_96
# %bb.95:                               # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	j .LBB0_97
.LBB0_96:                               #   in Loop: Header=BB0_88 Depth=3
	or r15, r9, r17
.LBB0_97:                               # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	loads.w r1, 0(r18)
	and r2, r1, r12
	setlt.u r18, r21, r2
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r18, zero, .LBB0_99
# %bb.98:                               # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r2, r5, r2
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r2, zero, .LBB0_100
	j .LBB0_101
.LBB0_99:                               #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r1, r17
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r2, r5, r2
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r2, zero, .LBB0_101
.LBB0_100:                              # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r4
	and r18, r1, r6
.LBB0_101:                              # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	setlt.u r1, r5, r19
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r1, zero, .LBB0_104
# %bb.102:                              # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r1, zero, .LBB0_105
.LBB0_103:                              # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r13
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r1, zero, .LBB0_87
	j .LBB0_106
.LBB0_104:                              # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r15, r1, r6
	setlt.u r1, r5, r11
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r1, zero, .LBB0_103
.LBB0_105:                              # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r4
	and r14, r1, r6
	setlt.u r1, r5, r13
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r1, zero, .LBB0_87
.LBB0_106:                              # %vector.body98
                                        #   in Loop: Header=BB0_88 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r7, r1, r6
	j .LBB0_87
.LBB0_107:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 16
	.loc	1 195 7 is_stmt 1               # parallel-rne.mlir:195:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_109
.LBB0_108:                              # %middle.block111
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[9:10], -616(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 203 9 is_stmt 1               # parallel-rne.mlir:203:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[2:3], r[9:10], 1
	beq r1, zero, .LBB0_137
.LBB0_109:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_112 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	store.d r[2:3], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[2:3], r1
	bneq r8, r22, .LBB0_116
# %bb.110:                              # %scalar.ph105.preheader
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_112
.LBB0_111:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	setlt.ul r3, r[9:10], r[23:24]
	.loc	1 219 13 is_stmt 1              # parallel-rne.mlir:219:13
	add.s r1, r8, r1
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	stores.w r2, 0(r1)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	beq r3, zero, .LBB0_108
.LBB0_112:                              # %scalar.ph105
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_109 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[1:2], r[9:10], r[27:28]
	slli r1, r1, 2
	add.s r2, r22, r1
	loads.w r3, 0(r2)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	and r7, r3, r12
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	setlt.u r2, r21, r7
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r2, zero, .LBB0_114
# %bb.113:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r7, r5, r7
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r7, zero, .LBB0_111
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r3, r17
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r7, r5, r7
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r7, zero, .LBB0_111
.LBB0_115:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r6
	j .LBB0_111
.LBB0_116:                              # %vector.body107.preheader
                                        #   in Loop: Header=BB0_109 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_118
.LBB0_117:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	addli r1, zero, 32
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	addli.d r[25:26], r[25:26], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[25:26], r[1:2]
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	add.s r2, r8, r3
	stores.w r7, 12(r2)
	stores.w r10, 8(r2)
	stores.w r9, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	bneq r1, zero, .LBB0_108
.LBB0_118:                              # %vector.body107
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_109 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[1:2], r[25:26], r[27:28]
	slli r3, r1, 2
	add.s r18, r22, r3
	loads.w r16, 12(r18)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	and r13, r16, r12
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	setlt.u r1, r21, r13
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r1, zero, .LBB0_120
# %bb.119:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r16, 0
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_118 Depth=3
	or r7, r16, r17
.LBB0_121:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	loads.w r14, 8(r18)
	and r11, r14, r12
	setlt.u r1, r21, r11
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r1, zero, .LBB0_123
# %bb.122:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r14, 0
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_118 Depth=3
	or r10, r14, r17
.LBB0_124:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	loads.w r15, 4(r18)
	and r19, r15, r12
	setlt.u r1, r21, r19
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r1, zero, .LBB0_126
# %bb.125:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_118 Depth=3
	or r9, r15, r17
.LBB0_127:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	loads.w r1, 0(r18)
	and r2, r1, r12
	setlt.u r18, r21, r2
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r18, zero, .LBB0_129
# %bb.128:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r1, 0
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r2, r5, r2
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	beq r2, zero, .LBB0_130
	j .LBB0_131
.LBB0_129:                              #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r1, r17
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r2, r5, r2
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r2, zero, .LBB0_131
.LBB0_130:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	add.s r1, r1, r4
	and r18, r1, r6
.LBB0_131:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	setlt.u r1, r5, r19
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	beq r1, zero, .LBB0_134
# %bb.132:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	beq r1, zero, .LBB0_135
.LBB0_133:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r13
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r1, zero, .LBB0_117
	j .LBB0_136
.LBB0_134:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r15, 16
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r4
	and r9, r1, r6
	setlt.u r1, r5, r11
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r1, zero, .LBB0_133
.LBB0_135:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r4
	and r10, r1, r6
	setlt.u r1, r5, r13
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r1, zero, .LBB0_117
.LBB0_136:                              # %vector.body107
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r7, r1, r6
	j .LBB0_117
.LBB0_137:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r9
	addli r18, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_138:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 224 7 is_stmt 1               # parallel-rne.mlir:224:7
	loadli.w r1,  -624(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_173
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	beq r9, r18, .LBB0_204
.LBB0_140:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	beq r9, r20, .LBB0_235
.LBB0_141:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 6
	beq r9, r1, .LBB0_265
# %bb.142:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 5
	bneq r9, r1, .LBB0_296
# %bb.143:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_145
.LBB0_144:                              # %middle.block
                                        #   in Loop: Header=BB0_145 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[9:10], -616(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 290 9 is_stmt 1               # parallel-rne.mlir:290:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[2:3], r[9:10], 1
	beq r1, zero, .LBB0_295
.LBB0_145:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_154 Depth 3
                                        #       Child Loop BB0_148 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	store.d r[2:3], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[2:3], r1
	bneq r8, r22, .LBB0_152
# %bb.146:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_145 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_148
.LBB0_147:                              # %scalar.ph
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	setlt.ul r3, r[9:10], r[23:24]
	.loc	1 306 13 is_stmt 1              # parallel-rne.mlir:306:13
	add.s r1, r8, r1
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	stores.w r2, 0(r1)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	beq r3, zero, .LBB0_144
.LBB0_148:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_145 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[1:2], r[9:10], r[27:28]
	slli r1, r1, 2
	add.s r2, r22, r1
	loads.w r3, 0(r2)
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	and r7, r3, r12
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	setlt.u r2, r21, r7
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_150
# %bb.149:                              # %scalar.ph
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r7, r5, r7
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r7, zero, .LBB0_147
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r3, r17
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r7, r5, r7
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r7, zero, .LBB0_147
.LBB0_151:                              # %scalar.ph
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r6
	j .LBB0_147
.LBB0_152:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_145 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_154
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	load.d r[1:2], -592(r30)                # 8-byte Folded Reload
	addli.d r[25:26], r[25:26], 4
	seteq.d r1, r[25:26], r[1:2]
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	add.s r2, r8, r3
	stores.w r7, 12(r2)
	stores.w r14, 8(r2)
	stores.w r15, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	bneq r1, zero, .LBB0_144
.LBB0_154:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_145 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[1:2], r[25:26], r[27:28]
	slli r3, r1, 2
	add.s r18, r22, r3
	loads.w r16, 12(r18)
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	and r13, r16, r12
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	setlt.u r1, r21, r13
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r1, zero, .LBB0_156
# %bb.155:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r16, 0
	j .LBB0_157
.LBB0_156:                              #   in Loop: Header=BB0_154 Depth=3
	or r7, r16, r17
.LBB0_157:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	loads.w r10, 8(r18)
	and r11, r10, r12
	setlt.u r1, r21, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r1, zero, .LBB0_159
# %bb.158:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r10, 0
	j .LBB0_160
.LBB0_159:                              #   in Loop: Header=BB0_154 Depth=3
	or r14, r10, r17
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	loads.w r9, 4(r18)
	and r1, r9, r12
	setlt.u r2, r21, r1
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_162
# %bb.161:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	j .LBB0_163
.LBB0_162:                              #   in Loop: Header=BB0_154 Depth=3
	or r15, r9, r17
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	loads.w r2, 0(r18)
	and r19, r2, r12
	setlt.u r18, r21, r19
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r18, zero, .LBB0_169
# %bb.164:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r19, r5, r19
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r19, zero, .LBB0_166
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r4
	and r18, r2, r6
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	setlt.u r1, r5, r1
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r1, zero, .LBB0_170
# %bb.167:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r1, zero, .LBB0_171
.LBB0_168:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r13
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r1, zero, .LBB0_153
	j .LBB0_172
.LBB0_169:                              #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r2, r17
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r19, r5, r19
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r19, zero, .LBB0_165
	j .LBB0_166
.LBB0_170:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r15, r1, r6
	setlt.u r1, r5, r11
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r1, zero, .LBB0_168
.LBB0_171:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r4
	and r14, r1, r6
	setlt.u r1, r5, r13
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r1, zero, .LBB0_153
.LBB0_172:                              # %vector.body
                                        #   in Loop: Header=BB0_154 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r7, r1, r6
	j .LBB0_153
.LBB0_173:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 24
	.loc	1 224 7 is_stmt 1               # parallel-rne.mlir:224:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_175
.LBB0_174:                              # %middle.block93
                                        #   in Loop: Header=BB0_175 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[2:3], -616(r30)                # 8-byte Folded Reload
	.loc	1 232 9 is_stmt 1               # parallel-rne.mlir:232:9
	setlt.ul r1, r[2:3], r[23:24]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_203
.LBB0_175:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_184 Depth 3
                                        #       Child Loop BB0_178 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[2:3], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[2:3], r1
	.loc	1 233 11 is_stmt 1              # parallel-rne.mlir:233:11
	bneq r8, r22, .LBB0_182
# %bb.176:                              # %scalar.ph87.preheader
                                        #   in Loop: Header=BB0_175 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_178
.LBB0_177:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	setlt.ul r3, r[9:10], r[23:24]
	.loc	1 248 13 is_stmt 1              # parallel-rne.mlir:248:13
	add.s r1, r8, r1
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	stores.w r2, 0(r1)
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	beq r3, zero, .LBB0_174
.LBB0_178:                              # %scalar.ph87
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_175 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.ul r[1:2], r[9:10], r[27:28]
	slli r1, r1, 2
	add.s r2, r22, r1
	loads.w r3, 0(r2)
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r7, r3, r12
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	setlt.u r2, r21, r7
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r2, zero, .LBB0_180
# %bb.179:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r7, r5, r7
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r7, zero, .LBB0_177
	j .LBB0_181
.LBB0_180:                              #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r3, r17
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r7, r5, r7
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r7, zero, .LBB0_177
.LBB0_181:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r6
	j .LBB0_177
.LBB0_182:                              # %vector.body89.preheader
                                        #   in Loop: Header=BB0_175 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_184
.LBB0_183:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	addli r1, zero, 32
	.loc	1 233 11 is_stmt 1              # parallel-rne.mlir:233:11
	addli.d r[25:26], r[25:26], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[25:26], r[1:2]
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	add.s r2, r8, r3
	stores.w r7, 12(r2)
	stores.w r14, 8(r2)
	stores.w r15, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	bneq r1, zero, .LBB0_174
.LBB0_184:                              # %vector.body89
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_175 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.ul r[1:2], r[25:26], r[27:28]
	slli r3, r1, 2
	add.s r18, r22, r3
	loads.w r16, 12(r18)
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r13, r16, r12
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	setlt.u r1, r21, r13
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r1, zero, .LBB0_186
# %bb.185:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r16, 0
	j .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_184 Depth=3
	or r7, r16, r17
.LBB0_187:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	loads.w r10, 8(r18)
	and r11, r10, r12
	setlt.u r1, r21, r11
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r1, zero, .LBB0_189
# %bb.188:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r10, 0
	j .LBB0_190
.LBB0_189:                              #   in Loop: Header=BB0_184 Depth=3
	or r14, r10, r17
.LBB0_190:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	loads.w r9, 4(r18)
	and r1, r9, r12
	setlt.u r2, r21, r1
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r2, zero, .LBB0_192
# %bb.191:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	j .LBB0_193
.LBB0_192:                              #   in Loop: Header=BB0_184 Depth=3
	or r15, r9, r17
.LBB0_193:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	loads.w r2, 0(r18)
	and r19, r2, r12
	setlt.u r18, r21, r19
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r18, zero, .LBB0_199
# %bb.194:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r19, r5, r19
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r19, zero, .LBB0_196
.LBB0_195:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r4
	and r18, r2, r6
.LBB0_196:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	setlt.u r1, r5, r1
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r1, zero, .LBB0_200
# %bb.197:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r1, zero, .LBB0_201
.LBB0_198:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r13
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r1, zero, .LBB0_183
	j .LBB0_202
.LBB0_199:                              #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r2, r17
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r19, r5, r19
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r19, zero, .LBB0_195
	j .LBB0_196
.LBB0_200:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r15, r1, r6
	setlt.u r1, r5, r11
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r1, zero, .LBB0_198
.LBB0_201:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r4
	and r14, r1, r6
	setlt.u r1, r5, r13
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r1, zero, .LBB0_183
.LBB0_202:                              # %vector.body89
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r7, r1, r6
	j .LBB0_183
.LBB0_203:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r9
	addli r18, zero, 4
	.loc	1 224 7                         # parallel-rne.mlir:224:7
	mfence { sm }
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	bneq r9, r18, .LBB0_140
.LBB0_204:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	mfence { lm, sm, gm }
	load.d r[2:3], -592(r30)                # 8-byte Folded Reload
	j .LBB0_206
.LBB0_205:                              # %middle.block84
                                        #   in Loop: Header=BB0_206 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[9:10], -616(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 261 9 is_stmt 1               # parallel-rne.mlir:261:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[2:3], r[9:10], 1
	beq r1, zero, .LBB0_234
.LBB0_206:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_215 Depth 3
                                        #       Child Loop BB0_209 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 262 11 is_stmt 1              # parallel-rne.mlir:262:11
	store.d r[2:3], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[2:3], r1
	bneq r8, r22, .LBB0_213
# %bb.207:                              # %scalar.ph78.preheader
                                        #   in Loop: Header=BB0_206 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_209
.LBB0_208:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	setlt.ul r3, r[9:10], r[23:24]
	.loc	1 277 13 is_stmt 1              # parallel-rne.mlir:277:13
	add.s r1, r8, r1
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	stores.w r2, 0(r1)
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	beq r3, zero, .LBB0_205
.LBB0_209:                              # %scalar.ph78
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.ul r[1:2], r[9:10], r[27:28]
	slli r1, r1, 2
	add.s r2, r22, r1
	loads.w r3, 0(r2)
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	and r7, r3, r12
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	setlt.u r2, r21, r7
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r2, zero, .LBB0_211
# %bb.210:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r7, r5, r7
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r7, zero, .LBB0_208
	j .LBB0_212
.LBB0_211:                              #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r3, r17
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r7, r5, r7
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r7, zero, .LBB0_208
.LBB0_212:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r6
	j .LBB0_208
.LBB0_213:                              # %vector.body80.preheader
                                        #   in Loop: Header=BB0_206 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_215
.LBB0_214:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	addli r1, zero, 32
	.loc	1 262 11 is_stmt 1              # parallel-rne.mlir:262:11
	addli.d r[25:26], r[25:26], 4
	zext_int2long r[1:2], r1
	seteq.d r1, r[25:26], r[1:2]
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	add.s r2, r8, r3
	stores.w r7, 12(r2)
	stores.w r14, 8(r2)
	stores.w r15, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	bneq r1, zero, .LBB0_205
.LBB0_215:                              # %vector.body80
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.ul r[1:2], r[25:26], r[27:28]
	slli r3, r1, 2
	add.s r18, r22, r3
	loads.w r16, 12(r18)
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	and r13, r16, r12
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	setlt.u r1, r21, r13
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r1, zero, .LBB0_217
# %bb.216:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r16, 0
	j .LBB0_218
.LBB0_217:                              #   in Loop: Header=BB0_215 Depth=3
	or r7, r16, r17
.LBB0_218:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	loads.w r10, 8(r18)
	and r11, r10, r12
	setlt.u r1, r21, r11
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r1, zero, .LBB0_220
# %bb.219:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r10, 0
	j .LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_215 Depth=3
	or r14, r10, r17
.LBB0_221:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	loads.w r9, 4(r18)
	and r1, r9, r12
	setlt.u r2, r21, r1
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r2, zero, .LBB0_223
# %bb.222:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	j .LBB0_224
.LBB0_223:                              #   in Loop: Header=BB0_215 Depth=3
	or r15, r9, r17
.LBB0_224:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	loads.w r2, 0(r18)
	and r19, r2, r12
	setlt.u r18, r21, r19
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r18, zero, .LBB0_230
# %bb.225:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r19, r5, r19
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r19, zero, .LBB0_227
.LBB0_226:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r4
	and r18, r2, r6
.LBB0_227:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	setlt.u r1, r5, r1
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r1, zero, .LBB0_231
# %bb.228:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r1, zero, .LBB0_232
.LBB0_229:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r13
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r1, zero, .LBB0_214
	j .LBB0_233
.LBB0_230:                              #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r2, r17
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r19, r5, r19
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r19, zero, .LBB0_226
	j .LBB0_227
.LBB0_231:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r15, r1, r6
	setlt.u r1, r5, r11
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r1, zero, .LBB0_229
.LBB0_232:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r4
	and r14, r1, r6
	setlt.u r1, r5, r13
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r1, zero, .LBB0_214
.LBB0_233:                              # %vector.body80
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r7, r1, r6
	j .LBB0_214
.LBB0_234:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r9
	addli r18, zero, 4
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	mfence { sm }
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	bneq r9, r20, .LBB0_141
.LBB0_235:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 340 7 is_stmt 1               # parallel-rne.mlir:340:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_237
.LBB0_236:                              # %middle.block75
                                        #   in Loop: Header=BB0_237 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[9:10], -616(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 348 9 is_stmt 1               # parallel-rne.mlir:348:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[2:3], r[9:10], 1
	beq r1, zero, .LBB0_295
.LBB0_237:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_246 Depth 3
                                        #       Child Loop BB0_240 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 349 11 is_stmt 1              # parallel-rne.mlir:349:11
	store.d r[2:3], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[2:3], r1
	bneq r8, r22, .LBB0_244
# %bb.238:                              # %scalar.ph69.preheader
                                        #   in Loop: Header=BB0_237 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_240
.LBB0_239:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	setlt.ul r3, r[9:10], r[23:24]
	.loc	1 364 13 is_stmt 1              # parallel-rne.mlir:364:13
	add.s r1, r8, r1
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	stores.w r2, 0(r1)
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	beq r3, zero, .LBB0_236
.LBB0_240:                              # %scalar.ph69
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_237 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	add.ul r[1:2], r[9:10], r[27:28]
	slli r1, r1, 2
	add.s r2, r22, r1
	loads.w r3, 0(r2)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r7, r3, r12
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	setlt.u r2, r21, r7
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r2, zero, .LBB0_242
# %bb.241:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r7, r5, r7
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r7, zero, .LBB0_239
	j .LBB0_243
.LBB0_242:                              #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r3, r17
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r7, r5, r7
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r7, zero, .LBB0_239
.LBB0_243:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r6
	j .LBB0_239
.LBB0_244:                              # %vector.body71.preheader
                                        #   in Loop: Header=BB0_237 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_246
.LBB0_245:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 349 11 is_stmt 1              # parallel-rne.mlir:349:11
	load.d r[1:2], -592(r30)                # 8-byte Folded Reload
	addli.d r[25:26], r[25:26], 4
	seteq.d r1, r[25:26], r[1:2]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	add.s r2, r8, r3
	stores.w r7, 12(r2)
	stores.w r14, 8(r2)
	stores.w r15, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	bneq r1, zero, .LBB0_236
.LBB0_246:                              # %vector.body71
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_237 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	add.ul r[1:2], r[25:26], r[27:28]
	slli r3, r1, 2
	add.s r18, r22, r3
	loads.w r16, 12(r18)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r13, r16, r12
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	setlt.u r1, r21, r13
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r1, zero, .LBB0_248
# %bb.247:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r16, 0
	j .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_246 Depth=3
	or r7, r16, r17
.LBB0_249:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	loads.w r10, 8(r18)
	and r11, r10, r12
	setlt.u r1, r21, r11
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r1, zero, .LBB0_251
# %bb.250:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r10, 0
	j .LBB0_252
.LBB0_251:                              #   in Loop: Header=BB0_246 Depth=3
	or r14, r10, r17
.LBB0_252:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	loads.w r9, 4(r18)
	and r1, r9, r12
	setlt.u r2, r21, r1
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r2, zero, .LBB0_254
# %bb.253:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	j .LBB0_255
.LBB0_254:                              #   in Loop: Header=BB0_246 Depth=3
	or r15, r9, r17
.LBB0_255:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	loads.w r2, 0(r18)
	and r19, r2, r12
	setlt.u r18, r21, r19
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r18, zero, .LBB0_257
# %bb.256:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r19, r5, r19
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r19, zero, .LBB0_258
	j .LBB0_259
.LBB0_257:                              #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r2, r17
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r19, r5, r19
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r19, zero, .LBB0_259
.LBB0_258:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r4
	and r18, r2, r6
.LBB0_259:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	setlt.u r1, r5, r1
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r1, zero, .LBB0_262
# %bb.260:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r1, zero, .LBB0_263
.LBB0_261:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r13
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r1, zero, .LBB0_245
	j .LBB0_264
.LBB0_262:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r15, r1, r6
	setlt.u r1, r5, r11
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r1, zero, .LBB0_261
.LBB0_263:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r4
	and r14, r1, r6
	setlt.u r1, r5, r13
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r1, zero, .LBB0_245
.LBB0_264:                              # %vector.body71
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r7, r1, r6
	j .LBB0_245
.LBB0_265:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 48
	.loc	1 311 7 is_stmt 1               # parallel-rne.mlir:311:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_267
.LBB0_266:                              # %middle.block66
                                        #   in Loop: Header=BB0_267 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[9:10], -616(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 319 9 is_stmt 1               # parallel-rne.mlir:319:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[2:3], r[9:10], 1
	beq r1, zero, .LBB0_295
.LBB0_267:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_276 Depth 3
                                        #       Child Loop BB0_270 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 320 11 is_stmt 1              # parallel-rne.mlir:320:11
	store.d r[2:3], -616(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[2:3], r1
	bneq r8, r22, .LBB0_274
# %bb.268:                              # %scalar.ph60.preheader
                                        #   in Loop: Header=BB0_267 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_270
.LBB0_269:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	setlt.ul r3, r[9:10], r[23:24]
	.loc	1 335 13 is_stmt 1              # parallel-rne.mlir:335:13
	add.s r1, r8, r1
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	stores.w r2, 0(r1)
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	beq r3, zero, .LBB0_266
.LBB0_270:                              # %scalar.ph60
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.ul r[1:2], r[9:10], r[27:28]
	slli r1, r1, 2
	add.s r2, r22, r1
	loads.w r3, 0(r2)
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r7, r3, r12
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	setlt.u r2, r21, r7
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r2, zero, .LBB0_272
# %bb.271:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r7, r5, r7
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r7, zero, .LBB0_269
	j .LBB0_273
.LBB0_272:                              #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r3, r17
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r7, r5, r7
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r7, zero, .LBB0_269
.LBB0_273:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r6
	j .LBB0_269
.LBB0_274:                              # %vector.body62.preheader
                                        #   in Loop: Header=BB0_267 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_276
.LBB0_275:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	.loc	1 320 11 is_stmt 1              # parallel-rne.mlir:320:11
	load.d r[1:2], -592(r30)                # 8-byte Folded Reload
	addli.d r[25:26], r[25:26], 4
	seteq.d r1, r[25:26], r[1:2]
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	add.s r2, r8, r3
	stores.w r7, 12(r2)
	stores.w r14, 8(r2)
	stores.w r15, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	bneq r1, zero, .LBB0_266
.LBB0_276:                              # %vector.body62
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.ul r[1:2], r[25:26], r[27:28]
	slli r3, r1, 2
	add.s r18, r22, r3
	loads.w r16, 12(r18)
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r13, r16, r12
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	setlt.u r1, r21, r13
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r1, zero, .LBB0_278
# %bb.277:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r16, 0
	j .LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_276 Depth=3
	or r7, r16, r17
.LBB0_279:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	loads.w r10, 8(r18)
	and r11, r10, r12
	setlt.u r1, r21, r11
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r1, zero, .LBB0_281
# %bb.280:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r10, 0
	j .LBB0_282
.LBB0_281:                              #   in Loop: Header=BB0_276 Depth=3
	or r14, r10, r17
.LBB0_282:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	loads.w r9, 4(r18)
	and r1, r9, r12
	setlt.u r2, r21, r1
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r2, zero, .LBB0_284
# %bb.283:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
	j .LBB0_285
.LBB0_284:                              #   in Loop: Header=BB0_276 Depth=3
	or r15, r9, r17
.LBB0_285:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	loads.w r2, 0(r18)
	and r19, r2, r12
	setlt.u r18, r21, r19
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r18, zero, .LBB0_287
# %bb.286:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r19, r5, r19
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r19, zero, .LBB0_288
	j .LBB0_289
.LBB0_287:                              #   in Loop: Header=BB0_276 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r2, r17
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r19, r5, r19
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r19, zero, .LBB0_289
.LBB0_288:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r18, r2, 16
	andi r18, r18, 1
	add.s r2, r2, r18
	add.s r2, r2, r4
	and r18, r2, r6
.LBB0_289:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	setlt.u r1, r5, r1
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r1, zero, .LBB0_292
# %bb.290:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r11
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r1, zero, .LBB0_293
.LBB0_291:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r13
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r1, zero, .LBB0_275
	j .LBB0_294
.LBB0_292:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r9, 16
	andi r1, r1, 1
	add.s r1, r9, r1
	add.s r1, r1, r4
	and r15, r1, r6
	setlt.u r1, r5, r11
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r1, zero, .LBB0_291
.LBB0_293:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	add.s r1, r1, r4
	and r14, r1, r6
	setlt.u r1, r5, r13
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r1, zero, .LBB0_275
.LBB0_294:                              # %vector.body62
                                        #   in Loop: Header=BB0_276 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r7, r1, r6
	j .LBB0_275
.LBB0_295:                              # %.sink.split52
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r9
	addli r18, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_296:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 369 7 is_stmt 1               # parallel-rne.mlir:369:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	loadli.w r1,  -624(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.297:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r19, zero, 1
	.loc	1 387 7 is_stmt 1               # parallel-rne.mlir:387:7
	bneq r9, zero, .LBB0_7
# %bb.298:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	loadli.w r1,  -688(r30)                 # 4-byte Folded Reload
	addli r3, zero, 2016
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	load.d r[15:16], -600(r30)              # 8-byte Folded Reload
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	load.d r[23:24], -672(r30)              # 8-byte Folded Reload
	addli r11, zero, 5
	addli r22, zero, 64
	zext_int2long r[9:10], r3
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	loadli.w r3,  -684(r30)                 # 4-byte Folded Reload
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	zext_int2long r[1:2], r1
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	min.ul r[9:10], r[1:2], r[9:10]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	sext_int2long r[13:14], r3
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	addli r3, zero, 18
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	addli.d r[9:10], r[9:10], 32
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.sl r[15:16], r[13:14], r[15:16]
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	max.ul r[9:10], r[9:10], r[1:2]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	addli.d r[15:16], r[15:16], 64
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	sub.sl r[1:2], r[9:10], r[1:2]
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	max.sl r[9:10], r[15:16], r[13:14]
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	load.d r[15:16], -592(r30)              # 8-byte Folded Reload
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	sub.sl r[9:10], r[9:10], r[13:14]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	load.d r[13:14], 16(r30)
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	min.ul r[1:2], r[1:2], r[15:16]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	load.d r[15:16], -680(r30)              # 8-byte Folded Reload
	sll.d r[15:16], r[15:16], r3
	addli r3, zero, 12
	add.ul r[13:14], r[13:14], r[15:16]
	xwait r3, 0
	lock zero, r11
	ori r3, r8, 64
	zext_int2long r[15:16], r22
	dma_cfg r19, r19, zero, 0
	add.ul r[13:14], r[13:14], r[23:24]
	dma_cfg zero, r19, zero, 1
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	min.sl r[7:8], r[9:10], r[15:16]
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r9
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	dma_cfg r14, zero, zero, 2
	dma_cfg r13, r3, r22, 3
	addli r3, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	srli r3, r3, 5
	andi r1, r1, 62
	dma_cfg r22, r2, r3, 4
	addli r3, zero, 4096
	dma_cfg r3, r2, r7, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_6
.LBB0_299:                              # %.thread21.loopexit
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r1, r25, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r23, -452(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r3, -128(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	storeli.w r1, -580(r30)
	j .LBB0_38
.LBB0_300:                              # %._crit_edge
	.loc	1 389 5                         # parallel-rne.mlir:389:5
	xsignal zero, 0
	bneq r9, zero, .LBB0_302
# %bb.301:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 389 5                         # parallel-rne.mlir:389:5
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
.LBB0_302:
	.loc	1 390 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:390:5
	addli sp, sp, 704
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
	.long	768                             # 0x300
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-ejy_i9dc" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
