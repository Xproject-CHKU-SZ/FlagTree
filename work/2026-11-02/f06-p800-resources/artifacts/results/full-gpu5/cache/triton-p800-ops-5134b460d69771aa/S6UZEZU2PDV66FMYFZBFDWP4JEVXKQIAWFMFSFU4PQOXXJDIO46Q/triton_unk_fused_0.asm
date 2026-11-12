	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-u6vj0c5d" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -816
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r10
	addli r30, sp, 752
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	xwait r1, 0
	xwait r1, 0
	xwait zero, 0
	ori r1, r2, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r4, zero, 2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	uni_sram_cfg r1, r1
	addli r5, zero, 4
	load.d r[2:3], 32(r30)
	addli r6, zero, 4096
	lock zero, r4
	ew_cfg r1, zero, zero, 16
	unlock r4
	lock zero, r5
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r3, zero, 2
	dma_cfg zero, r2, r6, 3
	addli r2, zero, 32
	addli r3, zero, 1024
	dma_cfg zero, zero, r1, 4
	dma_run zero
	unlock r5
	xsignal r1, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r4, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r2, zero, 13
	addli r2, zero, 5
	ds_cfg r3, zero, 14
	shuffle_batch r6, zero, r3, 4
	unlock zero
	xsignal r1, 0
	xwait r1, 0
	lock zero, r4
	lui r1, 17
	ewtable_cfg r6, 0
	ewtable_cfg r1, 1
	lui r1, 1048575
	unlock r4
	xsignal zero, 0
	xwait zero, 0
	ori r1, r1, 4095
	csr_set csr3, r1
	addli r1, zero, 13
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 3
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
	addli r2, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 7
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 15
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 19
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 17
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 21
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -20(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -40(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -60(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -80(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -172(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -336(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -424(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -620(r30)
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
	storeli.w r4, -16(r30)
	storeli.w r4, -12(r30)
	storeli.w r4, -8(r30)
	storeli.w r4, -4(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r4, -36(r30)
	storeli.w r4, -32(r30)
	storeli.w r4, -28(r30)
	storeli.w r4, -24(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r4, -56(r30)
	storeli.w r4, -52(r30)
	storeli.w r4, -48(r30)
	storeli.w r4, -44(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r4, -76(r30)
	storeli.w r4, -72(r30)
	storeli.w r4, -68(r30)
	storeli.w r4, -64(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	storeli.w r4, -120(r30)
	storeli.w r4, -116(r30)
	storeli.w r4, -112(r30)
	storeli.w r4, -108(r30)
	storeli.w r4, -104(r30)
	storeli.w r4, -100(r30)
	storeli.w r4, -96(r30)
	storeli.w r4, -92(r30)
	storeli.w r4, -88(r30)
	storeli.w r4, -84(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	storeli.w r4, -284(r30)
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
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r4, -420(r30)
	storeli.w r4, -416(r30)
	storeli.w r4, -412(r30)
	storeli.w r4, -408(r30)
	storeli.w r4, -404(r30)
	storeli.w r4, -400(r30)
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
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r4, -616(r30)
	storeli.w r4, -612(r30)
	storeli.w r4, -608(r30)
	storeli.w r4, -604(r30)
	storeli.w r4, -600(r30)
	storeli.w r4, -596(r30)
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
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r6
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r3, r2, r3
	.loc	1 52 5                          # parallel-rne.mlir:52:5
	ble.s r3, r1, .LBB0_273
# %bb.4:                                # %.lr.ph
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	sext_int2long r[2:3], r3
	loadli.w r11,  -20(r30)
	loadli.w r13,  -40(r30)
	loadli.w r18,  -60(r30)
	loadli.w r19,  -172(r30)
	loadli.w r20,  -336(r30)
	loadli.w r21,  -424(r30)
	loadli.w r22,  -620(r30)
	addli r15, zero, 128
	addli r12, zero, 7
	addli r16, zero, 4
	lui r6, 522240
	addli r9, zero, 0
	store.d r[2:3], -728(r30)               # 8-byte Folded Spill
	loadli.w r2,  -80(r30)
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[3:4], r1
	lui r1, 15
	storeli.w r2, -656(r30)                 # 4-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1047552
	store.d r[1:2], -736(r30)               # 8-byte Folded Spill
	lui r1, 324
	lui r2, 356
	ori r1, r1, 2048
	storeli.w r1, -740(r30)                 # 4-byte Folded Spill
	lui r1, 40
	ori r1, r1, 2114
	storeli.w r1, -748(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2048
	lui r2, 1023
	storeli.w r1, -744(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r17, r1, 4095
	ori r1, r2, 4095
	storeli.w r1, -640(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 450 7                         # parallel-rne.mlir:450:7
	addli r1, zero, 12
	addli r15, zero, 128
	xsignal r1, 0
	.loc	1 451 7                         # parallel-rne.mlir:451:7
	addli r1, zero, 17
	xsignal r1, 0
	.loc	1 452 7                         # parallel-rne.mlir:452:7
	addli r1, zero, 19
	xsignal r1, 0
	.loc	1 453 7                         # parallel-rne.mlir:453:7
	addli r1, zero, 21
	xsignal r1, 0
	loadli.w r11,  -664(r30)                # 4-byte Folded Reload
	loadli.w r13,  -660(r30)                # 4-byte Folded Reload
	loadli.w r18,  -672(r30)                # 4-byte Folded Reload
	loadli.w r9,  -684(r30)                 # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[3:4], -680(r30)                # 8-byte Folded Reload
	.loc	1 52 5 is_stmt 1                # parallel-rne.mlir:52:5
	load.d r[1:2], -728(r30)                # 8-byte Folded Reload
	addli r18, r18, 1
	addli r13, r13, 1
	addli r11, r11, 1
	addli.d r[3:4], r[3:4], 1
	setlt.sl r1, r[3:4], r[1:2]
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -656(r30)                 # 4-byte Folded Spill
	beq r1, zero, .LBB0_273
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_76 Depth 2
                                        #       Child Loop BB0_93 Depth 3
                                        #       Child Loop BB0_79 Depth 3
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #     Child Loop BB0_132 Depth 2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_135 Depth 3
                                        #     Child Loop BB0_160 Depth 2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_163 Depth 3
                                        #     Child Loop BB0_188 Depth 2
                                        #       Child Loop BB0_205 Depth 3
                                        #       Child Loop BB0_191 Depth 3
                                        #     Child Loop BB0_216 Depth 2
                                        #       Child Loop BB0_233 Depth 3
                                        #       Child Loop BB0_219 Depth 3
                                        #     Child Loop BB0_49 Depth 2
                                        #       Child Loop BB0_66 Depth 3
                                        #       Child Loop BB0_52 Depth 3
                                        #     Child Loop BB0_244 Depth 2
                                        #       Child Loop BB0_261 Depth 3
                                        #       Child Loop BB0_247 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	storeli.w r13, -660(r30)                # 4-byte Folded Spill
	addli r13, zero, 64
	storeli.w r11, -664(r30)                # 4-byte Folded Spill
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	bneq r10, r16, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 13
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r1,  48(r30)
	loadli.w r2,  44(r30)
	store.d r[3:4], -680(r30)               # 8-byte Folded Spill
	addli r5, zero, 32
	addli r8, zero, 8
	addli r7, zero, 0
	div.s r1, r3, r1
	mod.s r4, r9, r16
	addli r9, r9, 1
	storeli.w r9, -684(r30)                 # 4-byte Folded Spill
	div.s r1, r1, r2
	slli r14, r4, 15
	div.s r2, r1, r15
	slli r3, r2, 3
	slli r2, r2, 7
	sub.s r5, r5, r3
	sub.s r2, r1, r2
	min.s r5, r5, r8
	mod.s r1, r1, r5
	div.s r2, r2, r5
	addli r5, zero, 2
	add.s r1, r3, r1
	slli r3, r2, 7
	storeli.w r3, -632(r30)                 # 4-byte Folded Spill
	zext_int2long r[2:3], r2
	slli r4, r1, 6
	zext_int2long r[8:9], r1
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	addli r1, zero, 1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[2:3], r[2:3], r12
	storeli.w r4, -708(r30)                 # 4-byte Folded Spill
	store.d r[8:9], -704(r30)               # 8-byte Folded Spill
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	sll.d r[3:4], r[2:3], r1
	addli r1, zero, 17
	sll.d r[23:24], r[8:9], r1
	load.d r[1:2], 8(r30)
	addli r9, zero, 0
	addli r8, zero, 48
	store.d r[3:4], -696(r30)               # 8-byte Folded Spill
	add.ul r[25:26], r[1:2], r[3:4]
	load.d r[1:2], -736(r30)                # 8-byte Folded Reload
	and.d r[27:28], r[23:24], r[1:2]
	j .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r8, zero, 2048
	.loc	1 87 15 is_stmt 1               # parallel-rne.mlir:87:15
	sub.sl r[4:5], r[2:3], r[4:5]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r11, zero, 3
	addli r12, zero, 4
	zext_int2long r[15:16], r8
	addli r8, zero, 1984
	xwait r11, 0
	lock zero, r12
	load.d r[11:12], 0(r30)
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	div.sl r[4:5], r[4:5], r[15:16]
	zext_int2long r[15:16], r8
	addli r8, zero, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[2:3], r[2:3], r8
	dma_cfg r8, r8, zero, 0
	addli r8, zero, 48
	add.ul r[2:3], r[11:12], r[2:3]
	addli r12, zero, 7
	dma_cfg zero, r3, zero, 2
	.loc	1 90 15                         # parallel-rne.mlir:90:15
	min.sl r[15:16], r[4:5], r[15:16]
	.loc	1 91 15                         # parallel-rne.mlir:91:15
	sub.sl r[4:5], r[15:16], r[4:5]
	addli r16, zero, 4
	addli r15, zero, 128
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r4, r4, 64
	addli r5, zero, 256
	dma_cfg r1, r2, r5, 3
	addli r1, zero, 4096
	dma_cfg r5, r1, r4, 4
	addli r5, zero, 2
	dma_run zero
	unlock r16
	xsignal r5, 0
.LBB0_11:                               # %.thread25
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r20, r20, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r7, r7, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r19, r19, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r1, zero, 16
	beq r7, r1, .LBB0_28
.LBB0_12:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r9, r9, 1
.LBB0_13:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r1, zero, 21
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r2, r22, r8
	addli r22, r22, 1
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r1, r21, r1
	addli r21, r21, 1
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r4, r2, 14
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	lui r2, 32
	slli r1, r1, 14
	add.s r1, r1, r2
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	beq r10, r5, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[15:16], r7
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r2, zero, 1
	bneq r10, r2, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	loadli.w r4,  -640(r30)                 # 4-byte Folded Reload
	.loc	1 80 15 is_stmt 1               # parallel-rne.mlir:80:15
	sll.d r[2:3], r[15:16], r12
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	add.ul r[2:3], r[2:3], r[23:24]
	zext_int2long r[4:5], r4
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	setlt.ul r12, r[4:5], r[2:3]
	addli.d r[4:5], r[27:28], 0
	.loc	1 87 15                         # parallel-rne.mlir:87:15
	bneq r12, zero, .LBB0_10
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[4:5], zero
	j .LBB0_10
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r2, zero, 5
	xwait r5, 0
	xwait r2, 0
	addli r2, zero, 3
	lock zero, zero
	ds_cfg r2, zero, 0
	ds_cfg r15, zero, 1
	ds_cfg r15, zero, 14
	ds_cfg r13, zero, 13
	shuffle_batch r4, r1, r15, 1
	unlock zero
	xsignal r2, 0
	xsignal r16, 0
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r1, zero, 22
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, zero, 40
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r1, r19, r1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r2, r20, r2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r3, r1, 15
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r1, r2, 15
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	lui r2, 116
	add.s r2, r3, r2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	beq r10, r12, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 6
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	bneq r10, r11, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 19
	xwait r12, 0
	sll.d r[3:4], r[15:16], r1
	addli r16, zero, 4
	addli r1, zero, 1
	addli r15, zero, 128
	lock zero, r16
	add.ul r[3:4], r[25:26], r[3:4]
	dma_cfg r1, r1, zero, 0
	addli r1, zero, 256
	dma_cfg zero, r4, zero, 2
	dma_cfg r2, r3, r1, 3
	addli r2, zero, 4096
	dma_cfg r1, r2, r15, 4
	dma_run zero
	unlock r16
	xsignal r11, 0
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	addli r3, zero, 6
	addli r15, zero, 128
	addli r16, zero, 4
	xwait r3, 0
	addli r3, zero, 9
	xwait r3, 0
	addli r3, zero, 3
	lock zero, zero
	ds_cfg r3, zero, 0
	ds_cfg r15, zero, 1
	ds_cfg r15, zero, 14
	ds_cfg r15, zero, 13
	shuffle_coa r1, r2, r15, 2
	addli r1, zero, 8
	unlock zero
	xsignal r12, 0
	xsignal r1, 0
	j .LBB0_11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r16, zero, 4
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	bneq r10, r16, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_13 Depth=2
	addli r2, zero, 8
	xwait r16, 0
	addli r15, zero, 128
	addli r3, zero, 1
	addli r5, zero, 0
	addli r11, zero, 64
	xwait r2, 0
	addli r2, zero, 1
	beq r9, zero, .LBB0_25
.LBB0_24:                               # %.preheader38
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r5, 14
	slli r5, r5, 8
	lock zero, r2
	mm_cfg r11, r15, r11, 0
	or r12, r12, r1
	or r5, r5, r14
	mm_cfg r16, r16, r2, 2
	mm_acc r5, r4, r12, 5
	andi r12, r3, 1
	addli r5, zero, 1
	addli r3, zero, 0
	unlock r2
	bneq r12, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader37
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r5, 14
	slli r5, r5, 8
	lock zero, r2
	mm_cfg r11, r15, r11, 0
	or r12, r12, r1
	or r5, r5, r14
	mm_cfg r16, r16, r2, 2
	mm r5, r4, r12, 5
	andi r12, r3, 1
	addli r5, zero, 1
	addli r3, zero, 0
	unlock r2
	bneq r12, zero, .LBB0_25
.LBB0_26:                               # %.thread25.thread99
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 5
	addli r13, zero, 64
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r20, r20, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r7, r7, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r19, r19, 1
	addli r12, zero, 7
	addli r5, zero, 2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r1, zero, 16
	bneq r7, r1, .LBB0_12
	j .LBB0_29
.LBB0_27:                               # %.thread25.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r20, r20, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r7, r7, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r19, r19, 1
	addli r15, zero, 128
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r1, zero, 16
	bneq r7, r1, .LBB0_12
	j .LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	bneq r10, r16, .LBB0_30
.LBB0_29:                               # %.thread101
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_30:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	loadli.w r1,  -632(r30)                 # 4-byte Folded Reload
	addli r3, zero, 1920
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	loadli.w r5,  -656(r30)                 # 4-byte Folded Reload
	zext_int2long r[7:8], r15
	addli r9, zero, 2
	zext_int2long r[3:4], r3
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	zext_int2long r[1:2], r1
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	mod.s r5, r5, r16
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	min.ul r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 128
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	slli r3, r5, 9
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	min.ul r[23:24], r[1:2], r[7:8]
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	lui r1, 292
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	addli r2, zero, 1
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	add.s r1, r3, r1
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	bneq r10, r2, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[2:3], 16(r30)
	load.d r[4:5], -696(r30)                # 8-byte Folded Reload
	add.ul r[2:3], r[2:3], r[4:5]
	addli r4, zero, 15
	addli r5, zero, 1
	xwait r4, 0
	lock zero, r16
	slli r4, r23, 1
	dma_cfg zero, r5, zero, 0
	dma_cfg zero, r3, zero, 2
	dma_cfg r1, r2, r4, 3
	addli r2, zero, 256
	addli r3, zero, 512
	dma_cfg r3, r2, r5, 4
	addli r2, zero, 14
	dma_run zero
	unlock r16
	xsignal r2, 0
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -660(r30)                 # 4-byte Folded Reload
	.loc	1 144 13 is_stmt 1              # parallel-rne.mlir:144:13
	mod.s r3, r18, r16
	storeli.w r18, -672(r30)                # 4-byte Folded Spill
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	store.d r[23:24], -720(r30)             # 8-byte Folded Spill
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	mod.s r4, r2, r16
	lui r2, 292
	ori r5, r2, 2048
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	slli r3, r3, 15
	mod.s r2, r2, r16
	add.s r15, r3, r5
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	loadli.w r3,  -740(r30)                 # 4-byte Folded Reload
	slli r4, r4, 15
	add.s r18, r4, r3
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	addli r3, zero, 5
	bneq r10, r3, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 10
	addli r3, zero, 0
	xwait r4, 0
	addli r4, zero, 14
	xwait r4, 0
	addli r4, zero, 17
	xwait r4, 0
	lock zero, r9
	lui r4, 260096
	lui r9, 8
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	addli r4, zero, 1
	ew_cfg r4, zero, zero, 3
.LBB0_34:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r18, r3
	add.s r5, r14, r3
	addli r3, r3, 512
	dsmadd r4, r5, r1, 0
	bneq r3, r9, .LBB0_34
# %bb.35:                               # %.thread29
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 2
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	addli r1, zero, 11
	storeli.w zero, -668(r30)               # 4-byte Folded Spill
	addli r5, zero, 2047
	unlock r3
	xsignal r1, 0
	addli r1, zero, 15
	xsignal r1, 0
	.loc	1 148 7 is_stmt 1               # parallel-rne.mlir:148:7
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r3
	addli r1, zero, 1
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r5, zero, 2
	ew_cfg r16, zero, zero, 3
	ew_cfg r16, r16, zero, 19
	ew_cfg r3, zero, zero, 10
	loadli.w r4,  -748(r30)                 # 4-byte Folded Reload
	ew_cfg r3, r1, r4, 11
	lui r1, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r16, r1, 14
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	slli r1, r2, 15
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	ew_cfg zero, zero, zero, 15
	sslut r15, r18, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r3
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	loadli.w r2,  -744(r30)                 # 4-byte Folded Reload
	add.s r9, r1, r2
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	addli r1, zero, 21
	xwait r1, 0
	lock zero, r3
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 16
	ew_cfg zero, r5, zero, 2
	ew_cfg r16, zero, zero, 3
	ew_cfg r16, r16, r16, 19
	dsmul r9, r18, r15, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	j .LBB0_39
.LBB0_36:                               # %.thread26
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	slli r1, r2, 15
	loadli.w r2,  -744(r30)                 # 4-byte Folded Reload
	addli r3, zero, 2
	add.s r9, r1, r2
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	addli r1, zero, 3
	bneq r10, r1, .LBB0_38
# %bb.37:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	addli r1, zero, 16
	xwait r1, 0
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	addli r1, zero, 18
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	storeli.w r1, -668(r30)                 # 4-byte Folded Spill
	addli r1, zero, 20
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -668(r30)               # 4-byte Folded Spill
.LBB0_39:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 160 7 is_stmt 1               # parallel-rne.mlir:160:7
	addli r1, zero, 255
	.loc	1 158 7                         # parallel-rne.mlir:158:7
	xfence
	addli r27, r19, 0
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	mfence { lm, sm, gm }
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	csr_set csr5, r1
	addli r1, zero, 127
	sync_core
	storeli.w r20, -644(r30)                # 4-byte Folded Spill
	storeli.w r21, -648(r30)                # 4-byte Folded Spill
	storeli.w r22, -652(r30)                # 4-byte Folded Spill
	zext_int2long r[23:24], r1
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	beq r10, zero, .LBB0_74
# %bb.40:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 197 7                         # parallel-rne.mlir:197:7
	addli r1, zero, 1
	beq r10, r1, .LBB0_102
.LBB0_41:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 233 7                         # parallel-rne.mlir:233:7
	beq r10, r3, .LBB0_130
.LBB0_42:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 269 7                         # parallel-rne.mlir:269:7
	loadli.w r1,  -668(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_158
.LBB0_43:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 305 7                         # parallel-rne.mlir:305:7
	beq r10, r16, .LBB0_186
.LBB0_44:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 341 7                         # parallel-rne.mlir:341:7
	addli r1, zero, 5
	beq r10, r1, .LBB0_214
.LBB0_45:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	beq r10, r12, .LBB0_242
.LBB0_46:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 6
	bneq r10, r1, .LBB0_270
# %bb.47:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 385 9                         # parallel-rne.mlir:385:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	addli r1, zero, 48
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_49
.LBB0_48:                               # %middle.block
                                        #   in Loop: Header=BB0_49 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[3:4], -632(r30)                # 8-byte Folded Reload
	addli r12, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 385 9 is_stmt 1               # parallel-rne.mlir:385:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_269
.LBB0_49:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_66 Depth 3
                                        #       Child Loop BB0_52 Depth 3
	.loc	1 386 11                        # parallel-rne.mlir:386:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[4:5], r[2:3], r12
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_64
# %bb.50:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_49 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_52
.LBB0_51:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 386 11                        # parallel-rne.mlir:386:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 408 13 is_stmt 1              # parallel-rne.mlir:408:13
	add.s r3, r14, r3
	.loc	1 386 11                        # parallel-rne.mlir:386:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 408 13                        # parallel-rne.mlir:408:13
	stores.w r16, 0(r3)
	.loc	1 386 11                        # parallel-rne.mlir:386:11
	beq r10, zero, .LBB0_48
.LBB0_52:                               # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	add.ul r[10:11], r[1:2], r[4:5]
	lui r16, 523264
	lui r20, 523264
	slli r3, r10, 2
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	add.s r10, r15, r3
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	add.s r11, r9, r3
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	loads.w r10, 0(r10)
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	loads.w r21, 0(r11)
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	and r12, r10, r17
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	beq r12, r6, .LBB0_54
# %bb.53:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_54:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	add.s r10, r18, r3
	loads.w r10, 0(r10)
	and r19, r10, r17
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r19, zero, .LBB0_62
# %bb.55:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r12, zero, .LBB0_63
.LBB0_56:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	beq r19, r6, .LBB0_58
.LBB0_57:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_58:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r10, zero, .LBB0_60
# %bb.59:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r21, 0
.LBB0_60:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	setlt.u r10, r6, r19
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r10, zero, .LBB0_51
# %bb.61:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r12, 0
	j .LBB0_51
.LBB0_62:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	beq r12, zero, .LBB0_56
.LBB0_63:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r19, r6, .LBB0_57
	j .LBB0_58
.LBB0_64:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_49 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_66
.LBB0_65:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 386 11 is_stmt 1              # parallel-rne.mlir:386:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 408 13                        # parallel-rne.mlir:408:13
	add.s r10, r14, r28
	.loc	1 386 11                        # parallel-rne.mlir:386:11
	seteq.d r2, r[21:22], r[7:8]
	.loc	1 408 13                        # parallel-rne.mlir:408:13
	stores.w r1, 12(r10)
	stores.w r12, 8(r10)
	stores.w r19, 4(r10)
	stores.w r3, 0(r10)
	.loc	1 386 11                        # parallel-rne.mlir:386:11
	bneq r2, zero, .LBB0_48
.LBB0_66:                               # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	add.ul r[1:2], r[21:22], r[4:5]
	slli r28, r1, 2
	add.s r2, r18, r28
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	add.s r16, r15, r28
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	add.s r20, r9, r28
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	loads.w r1, 0(r2)
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	loads.w r3, 0(r16)
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	and r1, r1, r17
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	and r3, r3, r17
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	seteq r10, r1, r6
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	seteq r13, r1, zero
	.loc	1 396 19                        # parallel-rne.mlir:396:19
	seteq r11, r3, zero
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	seteq r12, r3, r6
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	max.u r1, r1, r3
	setlt.u r1, r6, r1
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	and r3, r10, r11
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	and r10, r13, r12
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	or r3, r3, r10
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	or r10, r1, r3
	lui r1, 523264
	lui r3, 523264
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r10, zero, .LBB0_68
# %bb.67:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r20)
.LBB0_68:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	loads.w r10, 4(r2)
	loads.w r11, 4(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r25, r10, zero
	seteq r13, r11, zero
	seteq r19, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r25, r19
	lui r19, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r10, zero, .LBB0_70
# %bb.69:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r20)
.LBB0_70:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r26, r10, zero
	seteq r13, r11, zero
	seteq r25, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r26, r25
	or r11, r11, r12
	lui r12, 523264
	or r10, r10, r11
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r10, zero, .LBB0_72
# %bb.71:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r20)
.LBB0_72:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	loads.w r2, 12(r2)
	loads.w r10, 12(r16)
	and r2, r2, r17
	and r10, r10, r17
	seteq r11, r2, r6
	seteq r25, r2, zero
	seteq r13, r10, zero
	seteq r16, r10, r6
	max.u r2, r2, r10
	setlt.u r2, r6, r2
	and r10, r11, r13
	and r11, r25, r16
	or r10, r10, r11
	or r2, r2, r10
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	bneq r2, zero, .LBB0_65
# %bb.73:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r20)
	j .LBB0_65
.LBB0_74:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 169 9 is_stmt 1               # parallel-rne.mlir:169:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	setlt.u r1, r1, r2
	zext_int2long r[2:3], zero
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_76
.LBB0_75:                               # %middle.block241
                                        #   in Loop: Header=BB0_76 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, zero, 7
	load.d r[3:4], -632(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r12
	.loc	1 169 9 is_stmt 1               # parallel-rne.mlir:169:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_101
.LBB0_76:                               # %.preheader36
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_93 Depth 3
                                        #       Child Loop BB0_79 Depth 3
	.loc	1 170 11                        # parallel-rne.mlir:170:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[4:5], r[2:3], r12
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_91
# %bb.77:                               # %scalar.ph233.preheader
                                        #   in Loop: Header=BB0_76 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_79
.LBB0_78:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 170 11                        # parallel-rne.mlir:170:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 192 13 is_stmt 1              # parallel-rne.mlir:192:13
	add.s r3, r14, r3
	.loc	1 170 11                        # parallel-rne.mlir:170:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	stores.w r16, 0(r3)
	.loc	1 170 11                        # parallel-rne.mlir:170:11
	beq r10, zero, .LBB0_75
.LBB0_79:                               # %scalar.ph233
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	add.ul r[10:11], r[1:2], r[4:5]
	lui r16, 523264
	lui r20, 523264
	slli r3, r10, 2
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.s r10, r15, r3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.s r11, r9, r3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	loads.w r10, 0(r10)
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	loads.w r21, 0(r11)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r12, r10, r17
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r12, r6, .LBB0_81
# %bb.80:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_81:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	add.s r10, r18, r3
	loads.w r10, 0(r10)
	and r19, r10, r17
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r19, zero, .LBB0_89
# %bb.82:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r12, zero, .LBB0_90
.LBB0_83:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	beq r19, r6, .LBB0_85
.LBB0_84:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_85:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r10, zero, .LBB0_87
# %bb.86:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r21, 0
.LBB0_87:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	setlt.u r10, r6, r19
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r10, zero, .LBB0_78
# %bb.88:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r12, 0
	j .LBB0_78
.LBB0_89:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r12, zero, .LBB0_83
.LBB0_90:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r19, r6, .LBB0_84
	j .LBB0_85
.LBB0_91:                               # %vector.body235.preheader
                                        #   in Loop: Header=BB0_76 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_93
.LBB0_92:                               # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 170 11 is_stmt 1              # parallel-rne.mlir:170:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	add.s r10, r14, r28
	.loc	1 170 11                        # parallel-rne.mlir:170:11
	seteq.d r2, r[21:22], r[7:8]
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	stores.w r1, 12(r10)
	stores.w r12, 8(r10)
	stores.w r19, 4(r10)
	stores.w r3, 0(r10)
	.loc	1 170 11                        # parallel-rne.mlir:170:11
	bneq r2, zero, .LBB0_75
.LBB0_93:                               # %vector.body235
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	add.ul r[1:2], r[21:22], r[4:5]
	slli r28, r1, 2
	add.s r2, r18, r28
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.s r16, r15, r28
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	loads.w r1, 0(r2)
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	loads.w r3, 0(r16)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r1, r1, r17
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	and r3, r3, r17
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	seteq r12, r1, r6
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	seteq r13, r1, zero
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	seteq r19, r3, zero
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	seteq r20, r3, r6
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	max.u r1, r1, r3
	setlt.u r1, r6, r1
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	and r3, r12, r19
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	and r12, r13, r20
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.s r20, r9, r28
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	or r3, r3, r12
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	or r12, r1, r3
	lui r1, 523264
	lui r3, 523264
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r12, zero, .LBB0_95
# %bb.94:                               # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r20)
.LBB0_95:                               # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	loads.w r12, 4(r2)
	loads.w r13, 4(r16)
	and r12, r12, r17
	and r13, r13, r17
	seteq r19, r12, r6
	seteq r11, r12, zero
	seteq r10, r13, r6
	seteq r25, r13, zero
	max.u r12, r12, r13
	setlt.u r12, r6, r12
	and r13, r19, r25
	and r10, r11, r10
	lui r19, 523264
	or r10, r13, r10
	or r10, r12, r10
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r10, zero, .LBB0_97
# %bb.96:                               # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r20)
.LBB0_97:                               # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r26, r10, zero
	seteq r13, r11, zero
	seteq r25, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r26, r25
	or r11, r11, r12
	lui r12, 523264
	or r10, r10, r11
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r10, zero, .LBB0_99
# %bb.98:                               # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r20)
.LBB0_99:                               # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	loads.w r2, 12(r2)
	loads.w r10, 12(r16)
	and r2, r2, r17
	and r10, r10, r17
	seteq r11, r2, r6
	seteq r25, r2, zero
	seteq r13, r10, zero
	seteq r16, r10, r6
	max.u r2, r2, r10
	setlt.u r2, r6, r2
	and r10, r11, r13
	and r11, r25, r16
	or r10, r10, r11
	or r2, r2, r10
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r2, zero, .LBB0_92
# %bb.100:                              # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r20)
	j .LBB0_92
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 161 7 is_stmt 1               # parallel-rne.mlir:161:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	addli r19, r27, 0
	addli r16, zero, 4
	addli r3, zero, 2
	loadli.w r20,  -644(r30)                # 4-byte Folded Reload
	loadli.w r21,  -648(r30)                # 4-byte Folded Reload
	loadli.w r22,  -652(r30)                # 4-byte Folded Reload
	.loc	1 197 7                         # parallel-rne.mlir:197:7
	addli r1, zero, 1
	bneq r10, r1, .LBB0_41
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 205 9                         # parallel-rne.mlir:205:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 197 7                         # parallel-rne.mlir:197:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	addli r1, zero, 8
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_104
.LBB0_103:                              # %middle.block226
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[3:4], -632(r30)                # 8-byte Folded Reload
	addli r12, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 205 9 is_stmt 1               # parallel-rne.mlir:205:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_129
.LBB0_104:                              # %.preheader35
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[4:5], r[2:3], r12
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_119
# %bb.105:                              # %scalar.ph218.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_107
.LBB0_106:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 228 13 is_stmt 1              # parallel-rne.mlir:228:13
	add.s r3, r14, r3
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 228 13                        # parallel-rne.mlir:228:13
	stores.w r16, 0(r3)
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	beq r10, zero, .LBB0_103
.LBB0_107:                              # %scalar.ph218
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.ul r[10:11], r[1:2], r[4:5]
	lui r16, 523264
	lui r20, 523264
	slli r3, r10, 2
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	add.s r10, r15, r3
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	add.s r11, r9, r3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	loads.w r10, 0(r10)
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	loads.w r21, 0(r11)
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	and r12, r10, r17
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	beq r12, r6, .LBB0_109
# %bb.108:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_109:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	add.s r10, r18, r3
	loads.w r10, 0(r10)
	and r19, r10, r17
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r19, zero, .LBB0_117
# %bb.110:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r12, zero, .LBB0_118
.LBB0_111:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	beq r19, r6, .LBB0_113
.LBB0_112:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_113:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r10, zero, .LBB0_115
# %bb.114:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r21, 0
.LBB0_115:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	setlt.u r10, r6, r19
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r10, zero, .LBB0_106
# %bb.116:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r12, 0
	j .LBB0_106
.LBB0_117:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	beq r12, zero, .LBB0_111
.LBB0_118:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r19, r6, .LBB0_112
	j .LBB0_113
.LBB0_119:                              # %vector.body220.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_121
.LBB0_120:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 206 11 is_stmt 1              # parallel-rne.mlir:206:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 228 13                        # parallel-rne.mlir:228:13
	add.s r10, r14, r28
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	seteq.d r2, r[21:22], r[7:8]
	.loc	1 228 13                        # parallel-rne.mlir:228:13
	stores.w r1, 12(r10)
	stores.w r12, 8(r10)
	stores.w r19, 4(r10)
	stores.w r3, 0(r10)
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	bneq r2, zero, .LBB0_103
.LBB0_121:                              # %vector.body220
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.ul r[1:2], r[21:22], r[4:5]
	slli r28, r1, 2
	add.s r2, r18, r28
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	add.s r16, r15, r28
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	add.s r20, r9, r28
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	loads.w r1, 0(r2)
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	loads.w r3, 0(r16)
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	and r1, r1, r17
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	and r3, r3, r17
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	seteq r10, r1, r6
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	seteq r13, r1, zero
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	seteq r11, r3, zero
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	seteq r12, r3, r6
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	max.u r1, r1, r3
	setlt.u r1, r6, r1
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	and r3, r10, r11
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	and r10, r13, r12
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	or r3, r3, r10
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	or r10, r1, r3
	lui r1, 523264
	lui r3, 523264
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r10, zero, .LBB0_123
# %bb.122:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r20)
.LBB0_123:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	loads.w r10, 4(r2)
	loads.w r11, 4(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r25, r10, zero
	seteq r13, r11, zero
	seteq r19, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r25, r19
	lui r19, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r10, zero, .LBB0_125
# %bb.124:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r20)
.LBB0_125:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r26, r10, zero
	seteq r13, r11, zero
	seteq r25, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r26, r25
	or r11, r11, r12
	lui r12, 523264
	or r10, r10, r11
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r10, zero, .LBB0_127
# %bb.126:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r20)
.LBB0_127:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	loads.w r2, 12(r2)
	loads.w r10, 12(r16)
	and r2, r2, r17
	and r10, r10, r17
	seteq r11, r2, r6
	seteq r25, r2, zero
	seteq r13, r10, zero
	seteq r16, r10, r6
	max.u r2, r2, r10
	setlt.u r2, r6, r2
	and r10, r11, r13
	and r11, r25, r16
	or r10, r10, r11
	or r2, r2, r10
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r2, zero, .LBB0_120
# %bb.128:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r20)
	j .LBB0_120
.LBB0_129:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 197 7 is_stmt 1               # parallel-rne.mlir:197:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	addli r19, r27, 0
	addli r16, zero, 4
	addli r3, zero, 2
	loadli.w r20,  -644(r30)                # 4-byte Folded Reload
	loadli.w r21,  -648(r30)                # 4-byte Folded Reload
	loadli.w r22,  -652(r30)                # 4-byte Folded Reload
	.loc	1 233 7                         # parallel-rne.mlir:233:7
	bneq r10, r3, .LBB0_42
.LBB0_130:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 241 9                         # parallel-rne.mlir:241:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	setlt.u r1, r1, r2
	zext_int2long r[2:3], r2
	.loc	1 233 7                         # parallel-rne.mlir:233:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_132
.LBB0_131:                              # %middle.block211
                                        #   in Loop: Header=BB0_132 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[3:4], -632(r30)                # 8-byte Folded Reload
	addli r12, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 241 9 is_stmt 1               # parallel-rne.mlir:241:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_157
.LBB0_132:                              # %.preheader34
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_135 Depth 3
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[4:5], r[2:3], r12
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_147
# %bb.133:                              # %scalar.ph203.preheader
                                        #   in Loop: Header=BB0_132 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_135
.LBB0_134:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 264 13 is_stmt 1              # parallel-rne.mlir:264:13
	add.s r3, r14, r3
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 264 13                        # parallel-rne.mlir:264:13
	stores.w r16, 0(r3)
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	beq r10, zero, .LBB0_131
.LBB0_135:                              # %scalar.ph203
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_132 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	add.ul r[10:11], r[1:2], r[4:5]
	lui r16, 523264
	lui r20, 523264
	slli r3, r10, 2
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.s r10, r15, r3
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	add.s r11, r9, r3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	loads.w r10, 0(r10)
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	loads.w r21, 0(r11)
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	and r12, r10, r17
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	beq r12, r6, .LBB0_137
# %bb.136:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_137:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	add.s r10, r18, r3
	loads.w r10, 0(r10)
	and r19, r10, r17
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r19, zero, .LBB0_145
# %bb.138:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r12, zero, .LBB0_146
.LBB0_139:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	beq r19, r6, .LBB0_141
.LBB0_140:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_141:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r10, zero, .LBB0_143
# %bb.142:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r21, 0
.LBB0_143:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	setlt.u r10, r6, r19
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r10, zero, .LBB0_134
# %bb.144:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r12, 0
	j .LBB0_134
.LBB0_145:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	beq r12, zero, .LBB0_139
.LBB0_146:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r19, r6, .LBB0_140
	j .LBB0_141
.LBB0_147:                              # %vector.body205.preheader
                                        #   in Loop: Header=BB0_132 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_149
.LBB0_148:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 242 11 is_stmt 1              # parallel-rne.mlir:242:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 264 13                        # parallel-rne.mlir:264:13
	add.s r10, r14, r28
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	seteq.d r2, r[21:22], r[7:8]
	.loc	1 264 13                        # parallel-rne.mlir:264:13
	stores.w r1, 12(r10)
	stores.w r12, 8(r10)
	stores.w r19, 4(r10)
	stores.w r3, 0(r10)
	.loc	1 242 11                        # parallel-rne.mlir:242:11
	bneq r2, zero, .LBB0_131
.LBB0_149:                              # %vector.body205
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_132 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	add.ul r[1:2], r[21:22], r[4:5]
	slli r28, r1, 2
	add.s r2, r18, r28
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.s r16, r15, r28
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	add.s r20, r9, r28
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	loads.w r1, 0(r2)
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	loads.w r3, 0(r16)
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	and r1, r1, r17
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	and r3, r3, r17
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	seteq r10, r1, r6
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	seteq r13, r1, zero
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	seteq r11, r3, zero
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	seteq r12, r3, r6
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	max.u r1, r1, r3
	setlt.u r1, r6, r1
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	and r3, r10, r11
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	and r10, r13, r12
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	or r3, r3, r10
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	or r10, r1, r3
	lui r1, 523264
	lui r3, 523264
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r10, zero, .LBB0_151
# %bb.150:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r20)
.LBB0_151:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r10, 4(r2)
	loads.w r11, 4(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r25, r10, zero
	seteq r13, r11, zero
	seteq r19, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r25, r19
	lui r19, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r10, zero, .LBB0_153
# %bb.152:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r20)
.LBB0_153:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r26, r10, zero
	seteq r13, r11, zero
	seteq r25, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r26, r25
	or r11, r11, r12
	lui r12, 523264
	or r10, r10, r11
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r10, zero, .LBB0_155
# %bb.154:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r20)
.LBB0_155:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r2, 12(r2)
	loads.w r10, 12(r16)
	and r2, r2, r17
	and r10, r10, r17
	seteq r11, r2, r6
	seteq r25, r2, zero
	seteq r13, r10, zero
	seteq r16, r10, r6
	max.u r2, r2, r10
	setlt.u r2, r6, r2
	and r10, r11, r13
	and r11, r25, r16
	or r10, r10, r11
	or r2, r2, r10
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r2, zero, .LBB0_148
# %bb.156:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r20)
	j .LBB0_148
.LBB0_157:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 233 7 is_stmt 1               # parallel-rne.mlir:233:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	addli r19, r27, 0
	addli r16, zero, 4
	loadli.w r20,  -644(r30)                # 4-byte Folded Reload
	loadli.w r21,  -648(r30)                # 4-byte Folded Reload
	loadli.w r22,  -652(r30)                # 4-byte Folded Reload
	.loc	1 269 7                         # parallel-rne.mlir:269:7
	loadli.w r1,  -668(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_43
.LBB0_158:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 277 9                         # parallel-rne.mlir:277:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 269 7                         # parallel-rne.mlir:269:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	addli r1, zero, 24
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_160
.LBB0_159:                              # %middle.block196
                                        #   in Loop: Header=BB0_160 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[3:4], -632(r30)                # 8-byte Folded Reload
	addli r12, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 277 9 is_stmt 1               # parallel-rne.mlir:277:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_185
.LBB0_160:                              # %.preheader33
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_163 Depth 3
	.loc	1 278 11                        # parallel-rne.mlir:278:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[4:5], r[2:3], r12
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_175
# %bb.161:                              # %scalar.ph188.preheader
                                        #   in Loop: Header=BB0_160 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_163
.LBB0_162:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 278 11                        # parallel-rne.mlir:278:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 300 13 is_stmt 1              # parallel-rne.mlir:300:13
	add.s r3, r14, r3
	.loc	1 278 11                        # parallel-rne.mlir:278:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	stores.w r16, 0(r3)
	.loc	1 278 11                        # parallel-rne.mlir:278:11
	beq r10, zero, .LBB0_159
.LBB0_163:                              # %scalar.ph188
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_160 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	add.ul r[10:11], r[1:2], r[4:5]
	lui r16, 523264
	lui r20, 523264
	slli r3, r10, 2
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	add.s r10, r15, r3
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	add.s r11, r9, r3
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	loads.w r10, 0(r10)
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	loads.w r21, 0(r11)
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	and r12, r10, r17
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r12, r6, .LBB0_165
# %bb.164:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_165:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	add.s r10, r18, r3
	loads.w r10, 0(r10)
	and r19, r10, r17
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r19, zero, .LBB0_173
# %bb.166:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r12, zero, .LBB0_174
.LBB0_167:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	beq r19, r6, .LBB0_169
.LBB0_168:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_169:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r10, zero, .LBB0_171
# %bb.170:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r21, 0
.LBB0_171:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	setlt.u r10, r6, r19
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r10, zero, .LBB0_162
# %bb.172:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r12, 0
	j .LBB0_162
.LBB0_173:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	beq r12, zero, .LBB0_167
.LBB0_174:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r19, r6, .LBB0_168
	j .LBB0_169
.LBB0_175:                              # %vector.body190.preheader
                                        #   in Loop: Header=BB0_160 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_177
.LBB0_176:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 278 11 is_stmt 1              # parallel-rne.mlir:278:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	add.s r10, r14, r28
	.loc	1 278 11                        # parallel-rne.mlir:278:11
	seteq.d r2, r[21:22], r[7:8]
	.loc	1 300 13                        # parallel-rne.mlir:300:13
	stores.w r1, 12(r10)
	stores.w r12, 8(r10)
	stores.w r19, 4(r10)
	stores.w r3, 0(r10)
	.loc	1 278 11                        # parallel-rne.mlir:278:11
	bneq r2, zero, .LBB0_159
.LBB0_177:                              # %vector.body190
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_160 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	add.ul r[1:2], r[21:22], r[4:5]
	slli r28, r1, 2
	add.s r2, r18, r28
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	add.s r16, r15, r28
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	add.s r20, r9, r28
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	loads.w r1, 0(r2)
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	loads.w r3, 0(r16)
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	and r1, r1, r17
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	and r3, r3, r17
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	seteq r10, r1, r6
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	seteq r13, r1, zero
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	seteq r11, r3, zero
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	seteq r12, r3, r6
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	max.u r1, r1, r3
	setlt.u r1, r6, r1
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	and r3, r10, r11
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r10, r13, r12
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	or r3, r3, r10
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	or r10, r1, r3
	lui r1, 523264
	lui r3, 523264
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r10, zero, .LBB0_179
# %bb.178:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r20)
.LBB0_179:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r10, 4(r2)
	loads.w r11, 4(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r25, r10, zero
	seteq r13, r11, zero
	seteq r19, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r25, r19
	lui r19, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r10, zero, .LBB0_181
# %bb.180:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r20)
.LBB0_181:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r26, r10, zero
	seteq r13, r11, zero
	seteq r25, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r26, r25
	or r11, r11, r12
	lui r12, 523264
	or r10, r10, r11
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r10, zero, .LBB0_183
# %bb.182:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r20)
.LBB0_183:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r2, 12(r2)
	loads.w r10, 12(r16)
	and r2, r2, r17
	and r10, r10, r17
	seteq r11, r2, r6
	seteq r25, r2, zero
	seteq r13, r10, zero
	seteq r16, r10, r6
	max.u r2, r2, r10
	setlt.u r2, r6, r2
	and r10, r11, r13
	and r11, r25, r16
	or r10, r10, r11
	or r2, r2, r10
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	bneq r2, zero, .LBB0_176
# %bb.184:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r20)
	j .LBB0_176
.LBB0_185:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 269 7 is_stmt 1               # parallel-rne.mlir:269:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	addli r19, r27, 0
	addli r16, zero, 4
	loadli.w r20,  -644(r30)                # 4-byte Folded Reload
	loadli.w r21,  -648(r30)                # 4-byte Folded Reload
	loadli.w r22,  -652(r30)                # 4-byte Folded Reload
	.loc	1 305 7                         # parallel-rne.mlir:305:7
	bneq r10, r16, .LBB0_44
.LBB0_186:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 313 9                         # parallel-rne.mlir:313:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 305 7                         # parallel-rne.mlir:305:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	addli r1, zero, 32
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_188
.LBB0_187:                              # %middle.block181
                                        #   in Loop: Header=BB0_188 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[3:4], -632(r30)                # 8-byte Folded Reload
	addli r12, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 313 9 is_stmt 1               # parallel-rne.mlir:313:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_213
.LBB0_188:                              # %.preheader32
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_205 Depth 3
                                        #       Child Loop BB0_191 Depth 3
	.loc	1 314 11                        # parallel-rne.mlir:314:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[4:5], r[2:3], r12
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_203
# %bb.189:                              # %scalar.ph173.preheader
                                        #   in Loop: Header=BB0_188 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_191
.LBB0_190:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 314 11                        # parallel-rne.mlir:314:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 336 13 is_stmt 1              # parallel-rne.mlir:336:13
	add.s r3, r14, r3
	.loc	1 314 11                        # parallel-rne.mlir:314:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 336 13                        # parallel-rne.mlir:336:13
	stores.w r16, 0(r3)
	.loc	1 314 11                        # parallel-rne.mlir:314:11
	beq r10, zero, .LBB0_187
.LBB0_191:                              # %scalar.ph173
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_188 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	add.ul r[10:11], r[1:2], r[4:5]
	lui r16, 523264
	lui r20, 523264
	slli r3, r10, 2
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	add.s r10, r15, r3
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	add.s r11, r9, r3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	loads.w r10, 0(r10)
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	loads.w r21, 0(r11)
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	and r12, r10, r17
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	beq r12, r6, .LBB0_193
# %bb.192:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_193:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	add.s r10, r18, r3
	loads.w r10, 0(r10)
	and r19, r10, r17
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r19, zero, .LBB0_201
# %bb.194:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r12, zero, .LBB0_202
.LBB0_195:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	beq r19, r6, .LBB0_197
.LBB0_196:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_197:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r10, zero, .LBB0_199
# %bb.198:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r21, 0
.LBB0_199:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	setlt.u r10, r6, r19
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r10, zero, .LBB0_190
# %bb.200:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r12, 0
	j .LBB0_190
.LBB0_201:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	beq r12, zero, .LBB0_195
.LBB0_202:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r19, r6, .LBB0_196
	j .LBB0_197
.LBB0_203:                              # %vector.body175.preheader
                                        #   in Loop: Header=BB0_188 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_205
.LBB0_204:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 314 11 is_stmt 1              # parallel-rne.mlir:314:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 336 13                        # parallel-rne.mlir:336:13
	add.s r10, r14, r28
	.loc	1 314 11                        # parallel-rne.mlir:314:11
	seteq.d r2, r[21:22], r[7:8]
	.loc	1 336 13                        # parallel-rne.mlir:336:13
	stores.w r1, 12(r10)
	stores.w r12, 8(r10)
	stores.w r19, 4(r10)
	stores.w r3, 0(r10)
	.loc	1 314 11                        # parallel-rne.mlir:314:11
	bneq r2, zero, .LBB0_187
.LBB0_205:                              # %vector.body175
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_188 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	add.ul r[1:2], r[21:22], r[4:5]
	slli r28, r1, 2
	add.s r2, r18, r28
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	add.s r16, r15, r28
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	add.s r20, r9, r28
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	loads.w r1, 0(r2)
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	loads.w r3, 0(r16)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r1, r1, r17
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	and r3, r3, r17
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	seteq r10, r1, r6
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	seteq r13, r1, zero
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	seteq r11, r3, zero
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	seteq r12, r3, r6
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	max.u r1, r1, r3
	setlt.u r1, r6, r1
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	and r3, r10, r11
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	and r10, r13, r12
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	or r3, r3, r10
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	or r10, r1, r3
	lui r1, 523264
	lui r3, 523264
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r10, zero, .LBB0_207
# %bb.206:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r20)
.LBB0_207:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	loads.w r10, 4(r2)
	loads.w r11, 4(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r25, r10, zero
	seteq r13, r11, zero
	seteq r19, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r25, r19
	lui r19, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r10, zero, .LBB0_209
# %bb.208:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r20)
.LBB0_209:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r26, r10, zero
	seteq r13, r11, zero
	seteq r25, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r26, r25
	or r11, r11, r12
	lui r12, 523264
	or r10, r10, r11
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r10, zero, .LBB0_211
# %bb.210:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r20)
.LBB0_211:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	loads.w r2, 12(r2)
	loads.w r10, 12(r16)
	and r2, r2, r17
	and r10, r10, r17
	seteq r11, r2, r6
	seteq r25, r2, zero
	seteq r13, r10, zero
	seteq r16, r10, r6
	max.u r2, r2, r10
	setlt.u r2, r6, r2
	and r10, r11, r13
	and r11, r25, r16
	or r10, r10, r11
	or r2, r2, r10
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r2, zero, .LBB0_204
# %bb.212:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r20)
	j .LBB0_204
.LBB0_213:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 305 7 is_stmt 1               # parallel-rne.mlir:305:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	addli r19, r27, 0
	addli r16, zero, 4
	loadli.w r20,  -644(r30)                # 4-byte Folded Reload
	loadli.w r21,  -648(r30)                # 4-byte Folded Reload
	loadli.w r22,  -652(r30)                # 4-byte Folded Reload
	.loc	1 341 7                         # parallel-rne.mlir:341:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_45
.LBB0_214:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 349 9                         # parallel-rne.mlir:349:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 341 7                         # parallel-rne.mlir:341:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	addli r1, zero, 40
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_216
.LBB0_215:                              # %middle.block166
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[3:4], -632(r30)                # 8-byte Folded Reload
	addli r12, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 349 9 is_stmt 1               # parallel-rne.mlir:349:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_241
.LBB0_216:                              # %.preheader31
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_233 Depth 3
                                        #       Child Loop BB0_219 Depth 3
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[4:5], r[2:3], r12
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_231
# %bb.217:                              # %scalar.ph158.preheader
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_219
.LBB0_218:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 372 13 is_stmt 1              # parallel-rne.mlir:372:13
	add.s r3, r14, r3
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	stores.w r16, 0(r3)
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	beq r10, zero, .LBB0_215
.LBB0_219:                              # %scalar.ph158
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	add.ul r[10:11], r[1:2], r[4:5]
	lui r16, 523264
	lui r20, 523264
	slli r3, r10, 2
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.s r10, r15, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	add.s r11, r9, r3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	loads.w r10, 0(r10)
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	loads.w r21, 0(r11)
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	and r12, r10, r17
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	beq r12, r6, .LBB0_221
# %bb.220:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_221:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	add.s r10, r18, r3
	loads.w r10, 0(r10)
	and r19, r10, r17
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r19, zero, .LBB0_229
# %bb.222:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r12, zero, .LBB0_230
.LBB0_223:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	beq r19, r6, .LBB0_225
.LBB0_224:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_225:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r10, zero, .LBB0_227
# %bb.226:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r21, 0
.LBB0_227:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	setlt.u r10, r6, r19
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r10, zero, .LBB0_218
# %bb.228:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r12, 0
	j .LBB0_218
.LBB0_229:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	beq r12, zero, .LBB0_223
.LBB0_230:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r19, r6, .LBB0_224
	j .LBB0_225
.LBB0_231:                              # %vector.body160.preheader
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_233
.LBB0_232:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 350 11 is_stmt 1              # parallel-rne.mlir:350:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	add.s r10, r14, r28
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	seteq.d r2, r[21:22], r[7:8]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	stores.w r1, 12(r10)
	stores.w r12, 8(r10)
	stores.w r19, 4(r10)
	stores.w r3, 0(r10)
	.loc	1 350 11                        # parallel-rne.mlir:350:11
	bneq r2, zero, .LBB0_215
.LBB0_233:                              # %vector.body160
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	add.ul r[1:2], r[21:22], r[4:5]
	slli r28, r1, 2
	add.s r2, r18, r28
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.s r16, r15, r28
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	add.s r20, r9, r28
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	loads.w r1, 0(r2)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	loads.w r3, 0(r16)
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	and r1, r1, r17
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	and r3, r3, r17
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	seteq r10, r1, r6
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	seteq r13, r1, zero
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	seteq r11, r3, zero
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	seteq r12, r3, r6
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	max.u r1, r1, r3
	setlt.u r1, r6, r1
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	and r3, r10, r11
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	and r10, r13, r12
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	or r3, r3, r10
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	or r10, r1, r3
	lui r1, 523264
	lui r3, 523264
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r10, zero, .LBB0_235
# %bb.234:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r20)
.LBB0_235:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r10, 4(r2)
	loads.w r11, 4(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r25, r10, zero
	seteq r13, r11, zero
	seteq r19, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r25, r19
	lui r19, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r10, zero, .LBB0_237
# %bb.236:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r20)
.LBB0_237:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r26, r10, zero
	seteq r13, r11, zero
	seteq r25, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r26, r25
	or r11, r11, r12
	lui r12, 523264
	or r10, r10, r11
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r10, zero, .LBB0_239
# %bb.238:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r20)
.LBB0_239:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r2, 12(r2)
	loads.w r10, 12(r16)
	and r2, r2, r17
	and r10, r10, r17
	seteq r11, r2, r6
	seteq r25, r2, zero
	seteq r13, r10, zero
	seteq r16, r10, r6
	max.u r2, r2, r10
	setlt.u r2, r6, r2
	and r10, r11, r13
	and r11, r25, r16
	or r10, r10, r11
	or r2, r2, r10
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r2, zero, .LBB0_232
# %bb.240:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r20)
	j .LBB0_232
.LBB0_241:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 341 7 is_stmt 1               # parallel-rne.mlir:341:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	addli r19, r27, 0
	addli r16, zero, 4
	loadli.w r20,  -644(r30)                # 4-byte Folded Reload
	loadli.w r21,  -648(r30)                # 4-byte Folded Reload
	loadli.w r22,  -652(r30)                # 4-byte Folded Reload
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	bneq r10, r12, .LBB0_46
.LBB0_242:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 421 9                         # parallel-rne.mlir:421:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 413 7                         # parallel-rne.mlir:413:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	addli r1, zero, 56
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_244
.LBB0_243:                              # %middle.block151
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[3:4], -632(r30)                # 8-byte Folded Reload
	addli r12, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 421 9 is_stmt 1               # parallel-rne.mlir:421:9
	setlt.ul r1, r[3:4], r[1:2]
	addli.d r[2:3], r[3:4], 1
	beq r1, zero, .LBB0_269
.LBB0_244:                              # %.preheader30
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_261 Depth 3
                                        #       Child Loop BB0_247 Depth 3
	.loc	1 422 11                        # parallel-rne.mlir:422:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[4:5], r[2:3], r12
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_259
# %bb.245:                              # %scalar.ph143.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_247
.LBB0_246:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 422 11                        # parallel-rne.mlir:422:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 444 13 is_stmt 1              # parallel-rne.mlir:444:13
	add.s r3, r14, r3
	.loc	1 422 11                        # parallel-rne.mlir:422:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 444 13                        # parallel-rne.mlir:444:13
	stores.w r16, 0(r3)
	.loc	1 422 11                        # parallel-rne.mlir:422:11
	beq r10, zero, .LBB0_243
.LBB0_247:                              # %scalar.ph143
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	add.ul r[10:11], r[1:2], r[4:5]
	lui r16, 523264
	lui r20, 523264
	slli r3, r10, 2
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	add.s r10, r15, r3
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	add.s r11, r9, r3
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	loads.w r10, 0(r10)
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	loads.w r21, 0(r11)
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	and r12, r10, r17
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	beq r12, r6, .LBB0_249
# %bb.248:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_249:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	add.s r10, r18, r3
	loads.w r10, 0(r10)
	and r19, r10, r17
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r19, zero, .LBB0_257
# %bb.250:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r12, zero, .LBB0_258
.LBB0_251:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	beq r19, r6, .LBB0_253
.LBB0_252:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_253:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r10, zero, .LBB0_255
# %bb.254:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r21, 0
.LBB0_255:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	setlt.u r10, r6, r19
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r10, zero, .LBB0_246
# %bb.256:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r12, 0
	j .LBB0_246
.LBB0_257:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	beq r12, zero, .LBB0_251
.LBB0_258:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r19, r6, .LBB0_252
	j .LBB0_253
.LBB0_259:                              # %vector.body145.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_261
.LBB0_260:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 422 11 is_stmt 1              # parallel-rne.mlir:422:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 444 13                        # parallel-rne.mlir:444:13
	add.s r10, r14, r28
	.loc	1 422 11                        # parallel-rne.mlir:422:11
	seteq.d r2, r[21:22], r[7:8]
	.loc	1 444 13                        # parallel-rne.mlir:444:13
	stores.w r1, 12(r10)
	stores.w r12, 8(r10)
	stores.w r19, 4(r10)
	stores.w r3, 0(r10)
	.loc	1 422 11                        # parallel-rne.mlir:422:11
	bneq r2, zero, .LBB0_243
.LBB0_261:                              # %vector.body145
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	add.ul r[1:2], r[21:22], r[4:5]
	slli r28, r1, 2
	add.s r2, r18, r28
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	add.s r16, r15, r28
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	add.s r20, r9, r28
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	loads.w r1, 0(r2)
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	loads.w r3, 0(r16)
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	and r1, r1, r17
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	and r3, r3, r17
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	seteq r10, r1, r6
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	seteq r13, r1, zero
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	seteq r11, r3, zero
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	seteq r12, r3, r6
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	max.u r1, r1, r3
	setlt.u r1, r6, r1
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	and r3, r10, r11
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	and r10, r13, r12
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	or r3, r3, r10
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	or r10, r1, r3
	lui r1, 523264
	lui r3, 523264
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r10, zero, .LBB0_263
# %bb.262:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r20)
.LBB0_263:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r10, 4(r2)
	loads.w r11, 4(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r25, r10, zero
	seteq r13, r11, zero
	seteq r19, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r25, r19
	lui r19, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r10, zero, .LBB0_265
# %bb.264:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r20)
.LBB0_265:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r16)
	and r10, r10, r17
	and r11, r11, r17
	seteq r12, r10, r6
	seteq r26, r10, zero
	seteq r13, r11, zero
	seteq r25, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r26, r25
	or r11, r11, r12
	lui r12, 523264
	or r10, r10, r11
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r10, zero, .LBB0_267
# %bb.266:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r20)
.LBB0_267:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r2, 12(r2)
	loads.w r10, 12(r16)
	and r2, r2, r17
	and r10, r10, r17
	seteq r11, r2, r6
	seteq r25, r2, zero
	seteq r13, r10, zero
	seteq r16, r10, r6
	max.u r2, r2, r10
	setlt.u r2, r6, r2
	and r10, r11, r13
	and r11, r25, r16
	or r10, r10, r11
	or r2, r2, r10
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	bneq r2, zero, .LBB0_260
# %bb.268:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r20)
	j .LBB0_260
.LBB0_269:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	mfence { sm }
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r19, r27, 0
	addli r16, zero, 4
	loadli.w r20,  -644(r30)                # 4-byte Folded Reload
	loadli.w r21,  -648(r30)                # 4-byte Folded Reload
	loadli.w r22,  -652(r30)                # 4-byte Folded Reload
.LBB0_270:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 449 7                         # parallel-rne.mlir:449:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 450 7                         # parallel-rne.mlir:450:7
	loadli.w r1,  -668(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.271:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r11,  -664(r30)                # 4-byte Folded Reload
	loadli.w r13,  -660(r30)                # 4-byte Folded Reload
	loadli.w r18,  -672(r30)                # 4-byte Folded Reload
	loadli.w r9,  -684(r30)                 # 4-byte Folded Reload
	addli r15, zero, 128
	addli r5, zero, 64
	.loc	1 461 7 is_stmt 1               # parallel-rne.mlir:461:7
	bneq r10, zero, .LBB0_6
# %bb.272:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -708(r30)                 # 4-byte Folded Reload
	addli r3, zero, 1984
	.loc	1 461 7                         # parallel-rne.mlir:461:7
	load.d r[23:24], -704(r30)              # 8-byte Folded Reload
	addli r7, zero, 18
	zext_int2long r[3:4], r3
	sext_int2long r[1:2], r1
	sll.d r[7:8], r[23:24], r7
	load.d r[23:24], 24(r30)
	min.sl r[3:4], r[1:2], r[3:4]
	add.ul r[7:8], r[23:24], r[7:8]
	load.d r[23:24], -696(r30)              # 8-byte Folded Reload
	addli.d r[3:4], r[3:4], 64
	max.sl r[3:4], r[3:4], r[1:2]
	add.ul r[7:8], r[7:8], r[23:24]
	sub.sl r[1:2], r[3:4], r[1:2]
	zext_int2long r[3:4], r5
	addli r5, zero, 4096
	.loc	1 457 13 is_stmt 1              # parallel-rne.mlir:457:13
	min.sl r[1:2], r[1:2], r[3:4]
	.loc	1 461 7                         # parallel-rne.mlir:461:7
	addli r3, zero, 12
	addli r4, zero, 5
	xwait r3, 0
	addli r3, zero, 1
	lock zero, r4
	dma_cfg r3, zero, zero, 0
	dma_cfg zero, r3, zero, 1
	load.d r[23:24], -720(r30)              # 8-byte Folded Reload
	dma_cfg r8, zero, zero, 2
	slli r3, r23, 2
	dma_cfg r7, r14, r3, 3
	addli r3, zero, 512
	dma_cfg r5, r3, r1, 4
	addli r1, zero, 13
	dma_run zero
	unlock r4
	xsignal r1, 0
	j .LBB0_6
.LBB0_273:                              # %._crit_edge
	.loc	1 463 5                         # parallel-rne.mlir:463:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_275
# %bb.274:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 463 5                         # parallel-rne.mlir:463:5
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
.LBB0_275:
	.loc	1 464 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:464:5
	addli sp, sp, 752
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_unk_fused_0, .Lfunc_end0-triton_unk_fused_0
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_PARAM_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0:
	.long	52                              # 0x34
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	816                             # 0x330
	.size	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0,@object # @XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0, 4

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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-u6vj0c5d" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
