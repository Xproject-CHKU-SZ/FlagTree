	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-3p34dv1z" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -824
	addli r1, zero, 1
.Ltmp0:
	.loc	1 29 5 prologue_end             # parallel-rne.mlir:29:5
	core_id r11
	addli r30, sp, 760
	xsignal_mode_cfg r1
	beq r11, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 29 5                          # parallel-rne.mlir:29:5
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
	.loc	1 29 5                          # parallel-rne.mlir:29:5
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
	.loc	1 31 10 is_stmt 1               # parallel-rne.mlir:31:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	.loc	1 30 10                         # parallel-rne.mlir:30:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 42 11                         # parallel-rne.mlir:42:11
	storeli.w zero, -20(r30)
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -40(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -60(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -80(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -172(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -336(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -424(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -620(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	mul.s r1, r2, r1
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r3, r1, r3
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r2, -1
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 42 11                         # parallel-rne.mlir:42:11
	storeli.w r4, -16(r30)
	storeli.w r4, -12(r30)
	storeli.w r4, -8(r30)
	storeli.w r4, -4(r30)
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w r4, -36(r30)
	storeli.w r4, -32(r30)
	storeli.w r4, -28(r30)
	storeli.w r4, -24(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r4, -56(r30)
	storeli.w r4, -52(r30)
	storeli.w r4, -48(r30)
	storeli.w r4, -44(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r4, -76(r30)
	storeli.w r4, -72(r30)
	storeli.w r4, -68(r30)
	storeli.w r4, -64(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	.loc	1 49 11                         # parallel-rne.mlir:49:11
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
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	mul.s r1, r2, r6
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	fmac.s r2, r2, r6
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	min.s r3, r2, r3
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r3, r1, .LBB0_273
# %bb.4:                                # %.lr.ph
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	sext_int2long r[2:3], r3
	.loc	1 40 11 is_stmt 1               # parallel-rne.mlir:40:11
	sext_int2long r[8:9], r1
	lui r1, 7
	loadli.w r25,  -20(r30)
	loadli.w r13,  -172(r30)
	loadli.w r19,  -336(r30)
	loadli.w r20,  -424(r30)
	loadli.w r21,  -620(r30)
	addli r17, zero, 64
	addli r12, zero, 8
	addli r18, zero, 7
	addli r16, zero, 4
	addli r15, zero, 2
	addli r24, zero, 128
	lui r6, 522240
	addli r14, zero, 0
	store.d r[2:3], -736(r30)               # 8-byte Folded Spill
	loadli.w r2,  -40(r30)
	storeli.w r2, -660(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -60(r30)
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -80(r30)
	storeli.w r2, -668(r30)                 # 4-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1048448
	store.d r[1:2], -744(r30)               # 8-byte Folded Spill
	lui r1, 324
	lui r2, 356
	ori r1, r1, 2048
	storeli.w r1, -748(r30)                 # 4-byte Folded Spill
	lui r1, 40
	ori r1, r1, 2114
	storeli.w r1, -756(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2048
	lui r2, 127
	storeli.w r1, -752(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r4, r1, 4095
	ori r1, r2, 4095
	storeli.w r1, -640(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 449 7                         # parallel-rne.mlir:449:7
	addli r1, zero, 12
	addli r15, zero, 2
	addli r24, zero, 128
	xsignal r1, 0
	.loc	1 450 7                         # parallel-rne.mlir:450:7
	addli r1, zero, 17
	xsignal r1, 0
	.loc	1 451 7                         # parallel-rne.mlir:451:7
	addli r1, zero, 19
	xsignal r1, 0
	.loc	1 452 7                         # parallel-rne.mlir:452:7
	addli r1, zero, 21
	xsignal r1, 0
	loadli.w r25,  -672(r30)                # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[8:9], -688(r30)                # 8-byte Folded Reload
	.loc	1 51 5 is_stmt 1                # parallel-rne.mlir:51:5
	load.d r[1:2], -736(r30)                # 8-byte Folded Reload
	loadli.w r14,  -692(r30)                # 4-byte Folded Reload
	addli r25, r25, 1
	addli.d r[8:9], r[8:9], 1
	setlt.sl r1, r[8:9], r[1:2]
	loadli.w r2,  -668(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -668(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -660(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -660(r30)                 # 4-byte Folded Spill
	beq r1, zero, .LBB0_273
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_47 Depth 3
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_89 Depth 3
                                        #       Child Loop BB0_75 Depth 3
                                        #     Child Loop BB0_100 Depth 2
                                        #       Child Loop BB0_117 Depth 3
                                        #       Child Loop BB0_103 Depth 3
                                        #     Child Loop BB0_129 Depth 2
                                        #       Child Loop BB0_146 Depth 3
                                        #       Child Loop BB0_132 Depth 3
                                        #     Child Loop BB0_158 Depth 2
                                        #       Child Loop BB0_175 Depth 3
                                        #       Child Loop BB0_161 Depth 3
                                        #     Child Loop BB0_187 Depth 2
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_190 Depth 3
                                        #     Child Loop BB0_217 Depth 2
                                        #       Child Loop BB0_234 Depth 3
                                        #       Child Loop BB0_220 Depth 3
                                        #     Child Loop BB0_244 Depth 2
                                        #       Child Loop BB0_261 Depth 3
                                        #       Child Loop BB0_247 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r10, zero, 6
	storeli.w r25, -672(r30)                # 4-byte Folded Spill
	.loc	1 76 7 is_stmt 1                # parallel-rne.mlir:76:7
	bneq r11, r16, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 13
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r1,  48(r30)
	loadli.w r2,  44(r30)
	store.d r[8:9], -688(r30)               # 8-byte Folded Spill
	mod.s r5, r14, r16
	addli r14, r14, 1
	addli r7, zero, 0
	storeli.w r14, -692(r30)                # 4-byte Folded Spill
	div.s r1, r8, r1
	addli r9, zero, 0
	slli r14, r5, 15
	div.s r1, r1, r2
	div.s r2, r1, r17
	slli r3, r2, 3
	slli r2, r2, 6
	sub.s r8, r12, r3
	sub.s r2, r1, r2
	min.s r8, r8, r12
	mod.s r1, r1, r8
	div.s r2, r2, r8
	add.s r1, r3, r1
	slli r8, r2, 7
	zext_int2long r[2:3], r2
	slli r5, r1, 6
	zext_int2long r[22:23], r1
	sll.d r[2:3], r[2:3], r18
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	addli r1, zero, 1
	sll.d r[25:26], r[2:3], r1
	addli r1, zero, 16
	store.d r[22:23], -712(r30)             # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	storeli.w r5, -716(r30)                 # 4-byte Folded Spill
	sll.d r[22:23], r[22:23], r1
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	load.d r[1:2], 8(r30)
	store.d r[25:26], -704(r30)             # 8-byte Folded Spill
	add.ul r[1:2], r[1:2], r[25:26]
	store.d r[1:2], -632(r30)               # 8-byte Folded Spill
	load.d r[1:2], -744(r30)                # 8-byte Folded Reload
	and.d r[26:27], r[22:23], r[1:2]
	j .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 1024
	.loc	1 86 15 is_stmt 1               # parallel-rne.mlir:86:15
	sub.sl r[15:16], r[2:3], r[15:16]
	addli r28, zero, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	load.d r[24:25], 0(r30)
	zext_int2long r[17:18], r5
	addli r5, zero, 448
	sll.d r[2:3], r[2:3], r28
	.loc	1 87 15                         # parallel-rne.mlir:87:15
	div.sl r[15:16], r[15:16], r[17:18]
	zext_int2long r[17:18], r5
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r5, zero, 3
	add.ul r[2:3], r[24:25], r[2:3]
	addli r24, zero, 128
	xwait r5, 0
	addli r5, zero, 4
	lock zero, r5
	dma_cfg r28, r28, zero, 0
	dma_cfg zero, r3, zero, 2
	.loc	1 89 15                         # parallel-rne.mlir:89:15
	min.sl r[17:18], r[15:16], r[17:18]
	.loc	1 90 15                         # parallel-rne.mlir:90:15
	sub.sl r[15:16], r[17:18], r[15:16]
	addli r17, zero, 64
	addli r18, zero, 7
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r5, r15, 64
	addli r15, zero, 256
	addli r16, zero, 4
	dma_cfg r1, r2, r15, 3
	addli r1, zero, 2048
	dma_cfg r15, r1, r5, 4
	addli r15, zero, 2
	dma_run zero
	unlock r16
	xsignal r15, 0
.LBB0_11:                               # %.thread25
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r19, r19, 1
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r7, r7, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r13, r13, 1
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	beq r7, r12, .LBB0_28
.LBB0_12:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	addli r9, r9, 1
.LBB0_13:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r1, zero, 21
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	addli r2, zero, 48
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r1, r20, r1
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r2, r21, r2
	addli r21, r21, 1
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r20, r20, 1
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	slli r5, r2, 14
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r1, r1, 14
	lui r2, 32
	add.s r1, r1, r2
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	beq r11, r15, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[15:16], r7
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r2, zero, 1
	bneq r11, r2, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	loadli.w r5,  -640(r30)                 # 4-byte Folded Reload
	.loc	1 79 15 is_stmt 1               # parallel-rne.mlir:79:15
	sll.d r[2:3], r[15:16], r18
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	add.ul r[2:3], r[2:3], r[22:23]
	zext_int2long r[15:16], r5
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	setlt.ul r5, r[15:16], r[2:3]
	addli.d r[15:16], r[26:27], 0
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	bneq r5, zero, .LBB0_10
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[15:16], zero
	j .LBB0_10
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	addli r2, zero, 5
	xwait r15, 0
	xwait r2, 0
	addli r2, zero, 3
	lock zero, zero
	ds_cfg r2, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r17, zero, 13
	shuffle_batch r5, r1, r24, 1
	unlock zero
	xsignal r2, 0
	xsignal r16, 0
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r1, zero, 22
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r2, zero, 40
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r1, r13, r1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r2, r19, r2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r3, r1, 15
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	slli r1, r2, 15
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	lui r2, 116
	add.s r2, r3, r2
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	beq r11, r18, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 6
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	bneq r11, r3, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 18
	xwait r18, 0
	addli.d r[27:28], r[26:27], 0
	load.d r[25:26], -632(r30)              # 8-byte Folded Reload
	addli r10, zero, 6
	sll.d r[15:16], r[15:16], r1
	addli r1, zero, 4
	lock zero, r1
	addli r1, zero, 1
	add.ul r[15:16], r[25:26], r[15:16]
	addli.d r[26:27], r[27:28], 0
	dma_cfg r1, r1, zero, 0
	addli r1, zero, 256
	dma_cfg zero, r16, zero, 2
	dma_cfg r2, r15, r1, 3
	addli r2, zero, 2048
	addli r16, zero, 4
	addli r15, zero, 2
	dma_cfg r1, r2, r24, 4
	dma_run zero
	unlock r16
	xsignal r3, 0
	.loc	1 118 9 is_stmt 1               # parallel-rne.mlir:118:9
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	addli r3, zero, 9
	xwait r10, 0
	addli r16, zero, 4
	addli r15, zero, 2
	xwait r3, 0
	addli r3, zero, 3
	lock zero, zero
	ds_cfg r3, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r1, r2, r24, 2
	unlock zero
	xsignal r18, 0
	xsignal r12, 0
	j .LBB0_11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r10, zero, 6
	addli r16, zero, 4
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	bneq r11, r16, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_13 Depth=2
	xwait r16, 0
	xwait r12, 0
	addli r2, zero, 1
	addli r3, zero, 1
	addli r12, zero, 0
	beq r9, zero, .LBB0_25
.LBB0_24:                               # %.preheader38
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r15, r12, 14
	slli r12, r12, 8
	lock zero, r2
	mm_cfg r17, r24, r17, 0
	or r15, r15, r1
	or r12, r12, r14
	mm_cfg r16, r16, r2, 2
	mm_acc r12, r5, r15, 5
	andi r15, r3, 1
	addli r12, zero, 1
	addli r3, zero, 0
	unlock r2
	bneq r15, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader37
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r15, r12, 14
	slli r12, r12, 8
	lock zero, r2
	mm_cfg r17, r24, r17, 0
	or r15, r15, r1
	or r12, r12, r14
	mm_cfg r16, r16, r2, 2
	mm r12, r5, r15, 5
	andi r15, r3, 1
	addli r12, zero, 1
	addli r3, zero, 0
	unlock r2
	bneq r15, zero, .LBB0_25
.LBB0_26:                               # %.thread25.thread99
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 5
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r19, r19, 1
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r7, r7, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r13, r13, 1
	addli r12, zero, 8
	addli r15, zero, 2
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r7, r12, .LBB0_12
	j .LBB0_29
.LBB0_27:                               # %.thread25.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r19, r19, 1
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r7, r7, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r13, r13, 1
	addli r15, zero, 2
	bneq r7, r12, .LBB0_12
	j .LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	bneq r11, r16, .LBB0_30
.LBB0_29:                               # %.thread101
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_30:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 896
	.loc	1 131 13 is_stmt 1              # parallel-rne.mlir:131:13
	zext_int2long r[1:2], r8
	addli r27, zero, 2
	zext_int2long r[7:8], r3
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	loadli.w r3,  -668(r30)                 # 4-byte Folded Reload
	.loc	1 133 13                        # parallel-rne.mlir:133:13
	min.ul r[7:8], r[1:2], r[7:8]
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	mod.s r3, r3, r16
	.loc	1 133 13                        # parallel-rne.mlir:133:13
	addli.d r[7:8], r[7:8], 128
	.loc	1 135 13                        # parallel-rne.mlir:135:13
	max.ul r[15:16], r[7:8], r[1:2]
	zext_int2long r[7:8], r24
	sub.sl r[1:2], r[15:16], r[1:2]
	addli r16, zero, 4
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	slli r3, r3, 9
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	min.ul r[22:23], r[1:2], r[7:8]
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	lui r1, 292
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	addli r2, zero, 1
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	add.s r1, r3, r1
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	bneq r11, r2, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[2:3], 16(r30)
	load.d r[9:10], -704(r30)               # 8-byte Folded Reload
	addli r5, zero, 15
	xwait r5, 0
	lock zero, r16
	slli r5, r22, 1
	add.ul r[2:3], r[2:3], r[9:10]
	addli r9, zero, 1
	dma_cfg zero, r9, zero, 0
	dma_cfg zero, r3, zero, 2
	dma_cfg r1, r2, r5, 3
	addli r2, zero, 256
	addli r3, zero, 512
	dma_cfg r3, r2, r9, 4
	addli r2, zero, 14
	dma_run zero
	unlock r16
	xsignal r2, 0
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	store.d r[22:23], -728(r30)             # 8-byte Folded Spill
	lui r10, 8
	mod.s r3, r2, r16
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	loadli.w r2,  -660(r30)                 # 4-byte Folded Reload
	mod.s r5, r2, r16
	lui r2, 292
	ori r9, r2, 2048
	loadli.w r2,  -672(r30)                 # 4-byte Folded Reload
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	slli r3, r3, 15
	mod.s r2, r2, r16
	add.s r15, r3, r9
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	loadli.w r3,  -748(r30)                 # 4-byte Folded Reload
	slli r5, r5, 15
	add.s r22, r5, r3
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	addli r3, zero, 5
	bneq r11, r3, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 10
	addli r3, zero, 0
	xwait r5, 0
	addli r5, zero, 14
	xwait r5, 0
	addli r5, zero, 17
	xwait r5, 0
	lock zero, r27
	lui r5, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 127
	ew_cfg zero, r5, zero, 2
	addli r5, zero, 1
	ew_cfg r5, zero, zero, 3
.LBB0_34:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r22, r3
	add.s r9, r14, r3
	addli r3, r3, 512
	dsmadd r5, r9, r1, 0
	bneq r3, r10, .LBB0_34
# %bb.35:                               # %.thread29
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 2
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	addli r1, zero, 11
	storeli.w zero, -676(r30)               # 4-byte Folded Spill
	addli r10, zero, 2047
	addli r27, zero, 2
	unlock r3
	xsignal r1, 0
	addli r1, zero, 15
	xsignal r1, 0
	.loc	1 147 7 is_stmt 1               # parallel-rne.mlir:147:7
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r3
	addli r1, zero, 1
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r10, zero, 2
	ew_cfg r16, zero, zero, 3
	ew_cfg r16, r16, zero, 19
	ew_cfg r3, zero, zero, 10
	loadli.w r5,  -756(r30)                 # 4-byte Folded Reload
	ew_cfg r3, r1, r5, 11
	lui r1, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r16, r1, 14
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	slli r1, r2, 15
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	ew_cfg zero, zero, zero, 15
	sslut r15, r22, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r3
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	loadli.w r2,  -752(r30)                 # 4-byte Folded Reload
	add.s r9, r1, r2
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r1, zero, 21
	xwait r1, 0
	lock zero, r3
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 16
	ew_cfg zero, r10, zero, 2
	ew_cfg r16, zero, zero, 3
	ew_cfg r16, r16, r16, 19
	dsmul r9, r22, r15, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	.loc	1 152 7                         # parallel-rne.mlir:152:7
	j .LBB0_39
.LBB0_36:                               # %.thread26
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	slli r1, r2, 15
	loadli.w r2,  -752(r30)                 # 4-byte Folded Reload
	add.s r9, r1, r2
	.loc	1 152 7                         # parallel-rne.mlir:152:7
	addli r1, zero, 3
	bneq r11, r1, .LBB0_38
# %bb.37:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	addli r1, zero, 16
	xwait r1, 0
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	addli r1, zero, 18
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	storeli.w r1, -676(r30)                 # 4-byte Folded Spill
	addli r1, zero, 20
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -676(r30)               # 4-byte Folded Spill
.LBB0_39:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 159 7 is_stmt 1               # parallel-rne.mlir:159:7
	addli r1, zero, 255
	.loc	1 157 7                         # parallel-rne.mlir:157:7
	xfence
	.loc	1 158 7                         # parallel-rne.mlir:158:7
	mfence { lm, sm, gm }
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	csr_set csr5, r1
	addli r1, zero, 127
	sync_core
	storeli.w r13, -644(r30)                # 4-byte Folded Spill
	storeli.w r19, -648(r30)                # 4-byte Folded Spill
	storeli.w r20, -652(r30)                # 4-byte Folded Spill
	storeli.w r21, -656(r30)                # 4-byte Folded Spill
	zext_int2long r[23:24], r1
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	beq r11, zero, .LBB0_42
# %bb.40:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 196 7                         # parallel-rne.mlir:196:7
	addli r1, zero, 1
	beq r11, r1, .LBB0_70
.LBB0_41:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 232 7                         # parallel-rne.mlir:232:7
	beq r11, r27, .LBB0_98
	j .LBB0_126
.LBB0_42:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 168 9                         # parallel-rne.mlir:168:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	setlt.u r1, r1, r2
	zext_int2long r[2:3], zero
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_44
.LBB0_43:                               # %middle.block241
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r18, zero, 7
	load.d r[10:11], -632(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r18
	.loc	1 168 9 is_stmt 1               # parallel-rne.mlir:168:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	beq r1, zero, .LBB0_69
.LBB0_44:                               # %.preheader36
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_47 Depth 3
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[20:21], r[2:3], r18
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_59
# %bb.45:                               # %scalar.ph233.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_47
.LBB0_46:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 191 13 is_stmt 1              # parallel-rne.mlir:191:13
	add.s r3, r14, r3
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	stores.w r5, 0(r3)
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	beq r10, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph233
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	add.ul r[10:11], r[1:2], r[20:21]
	lui r17, 523264
	slli r3, r10, 2
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	add.s r5, r15, r3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.s r10, r9, r3
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	loads.w r5, 0(r5)
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	loads.w r18, 0(r10)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r12, r5, r4
	lui r5, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	beq r12, r6, .LBB0_49
# %bb.48:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_49:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_47 Depth=3
	add.s r10, r22, r3
	loads.w r10, 0(r10)
	and r16, r10, r4
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r16, zero, .LBB0_57
# %bb.50:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r12, zero, .LBB0_58
.LBB0_51:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_47 Depth=3
	beq r16, r6, .LBB0_53
.LBB0_52:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_53:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_47 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r10, zero, .LBB0_55
# %bb.54:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
.LBB0_55:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_47 Depth=3
	setlt.u r10, r6, r16
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r10, zero, .LBB0_46
# %bb.56:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_46
.LBB0_57:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_47 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	beq r12, zero, .LBB0_51
.LBB0_58:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r16, r6, .LBB0_52
	j .LBB0_53
.LBB0_59:                               # %vector.body235.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_61
.LBB0_60:                               # %vector.body235
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 169 11 is_stmt 1              # parallel-rne.mlir:169:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	add.s r3, r14, r5
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	seteq.d r2, r[16:17], r[7:8]
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	stores.w r1, 12(r3)
	stores.w r12, 8(r3)
	stores.w r18, 4(r3)
	stores.w r28, 0(r3)
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	bneq r2, zero, .LBB0_43
.LBB0_61:                               # %vector.body235
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	add.ul r[1:2], r[16:17], r[20:21]
	slli r5, r1, 2
	add.s r2, r22, r5
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	add.s r3, r15, r5
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	loads.w r1, 0(r2)
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	loads.w r12, 0(r3)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r1, r1, r4
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r12, r12, r4
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	seteq r18, r1, r6
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	seteq r13, r1, zero
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	seteq r28, r12, r6
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	seteq r19, r12, zero
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	max.u r1, r1, r12
	setlt.u r1, r6, r1
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r12, r18, r19
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	and r13, r13, r28
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.s r19, r9, r5
	lui r28, 523264
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	or r12, r12, r13
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	or r12, r1, r12
	lui r1, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r12, zero, .LBB0_63
# %bb.62:                               # %vector.body235
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r19)
.LBB0_63:                               # %vector.body235
                                        #   in Loop: Header=BB0_61 Depth=3
	loads.w r12, 4(r2)
	loads.w r13, 4(r3)
	and r12, r12, r4
	and r13, r13, r4
	seteq r18, r12, r6
	seteq r11, r12, zero
	seteq r10, r13, r6
	seteq r25, r13, zero
	max.u r12, r12, r13
	setlt.u r12, r6, r12
	and r13, r18, r25
	and r10, r11, r10
	lui r18, 523264
	or r10, r13, r10
	or r10, r12, r10
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r10, zero, .LBB0_65
# %bb.64:                               # %vector.body235
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r19)
.LBB0_65:                               # %vector.body235
                                        #   in Loop: Header=BB0_61 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r3)
	and r10, r10, r4
	and r11, r11, r4
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
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r10, zero, .LBB0_67
# %bb.66:                               # %vector.body235
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r19)
.LBB0_67:                               # %vector.body235
                                        #   in Loop: Header=BB0_61 Depth=3
	loads.w r2, 12(r2)
	loads.w r3, 12(r3)
	and r2, r2, r4
	and r3, r3, r4
	seteq r10, r2, r6
	seteq r25, r2, zero
	seteq r11, r3, zero
	seteq r13, r3, r6
	max.u r2, r2, r3
	setlt.u r2, r6, r2
	and r3, r10, r11
	and r10, r25, r13
	or r3, r3, r10
	or r2, r2, r3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r2, zero, .LBB0_60
# %bb.68:                               # %vector.body235
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r19)
	j .LBB0_60
.LBB0_69:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 160 7 is_stmt 1               # parallel-rne.mlir:160:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r11
	addli r17, zero, 64
	addli r12, zero, 8
	addli r16, zero, 4
	loadli.w r13,  -644(r30)                # 4-byte Folded Reload
	loadli.w r19,  -648(r30)                # 4-byte Folded Reload
	loadli.w r20,  -652(r30)                # 4-byte Folded Reload
	loadli.w r21,  -656(r30)                # 4-byte Folded Reload
	.loc	1 196 7                         # parallel-rne.mlir:196:7
	addli r1, zero, 1
	bneq r11, r1, .LBB0_41
.LBB0_70:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 204 9                         # parallel-rne.mlir:204:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	setlt.u r1, r1, r2
	zext_int2long r[2:3], r12
	.loc	1 196 7                         # parallel-rne.mlir:196:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_72
.LBB0_71:                               # %middle.block226
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[10:11], -632(r30)              # 8-byte Folded Reload
	addli r18, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 204 9 is_stmt 1               # parallel-rne.mlir:204:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	beq r1, zero, .LBB0_97
.LBB0_72:                               # %.preheader35
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_89 Depth 3
                                        #       Child Loop BB0_75 Depth 3
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[20:21], r[2:3], r18
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_87
# %bb.73:                               # %scalar.ph218.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_75
.LBB0_74:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 227 13 is_stmt 1              # parallel-rne.mlir:227:13
	add.s r3, r14, r3
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 227 13                        # parallel-rne.mlir:227:13
	stores.w r5, 0(r3)
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	beq r10, zero, .LBB0_71
.LBB0_75:                               # %scalar.ph218
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	add.ul r[10:11], r[1:2], r[20:21]
	lui r17, 523264
	slli r3, r10, 2
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.s r5, r15, r3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	add.s r10, r9, r3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	loads.w r5, 0(r5)
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	loads.w r18, 0(r10)
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	and r12, r5, r4
	lui r5, 523264
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	beq r12, r6, .LBB0_77
# %bb.76:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_77:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_75 Depth=3
	add.s r10, r22, r3
	loads.w r10, 0(r10)
	and r16, r10, r4
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r16, zero, .LBB0_85
# %bb.78:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r12, zero, .LBB0_86
.LBB0_79:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_75 Depth=3
	beq r16, r6, .LBB0_81
.LBB0_80:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_81:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_75 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r10, zero, .LBB0_83
# %bb.82:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
.LBB0_83:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_75 Depth=3
	setlt.u r10, r6, r16
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r10, zero, .LBB0_74
# %bb.84:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_74
.LBB0_85:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_75 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	beq r12, zero, .LBB0_79
.LBB0_86:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r16, r6, .LBB0_80
	j .LBB0_81
.LBB0_87:                               # %vector.body220.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_89
.LBB0_88:                               # %vector.body220
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 205 11 is_stmt 1              # parallel-rne.mlir:205:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 227 13                        # parallel-rne.mlir:227:13
	add.s r3, r14, r5
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	seteq.d r2, r[16:17], r[7:8]
	.loc	1 227 13                        # parallel-rne.mlir:227:13
	stores.w r1, 12(r3)
	stores.w r12, 8(r3)
	stores.w r18, 4(r3)
	stores.w r28, 0(r3)
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	bneq r2, zero, .LBB0_71
.LBB0_89:                               # %vector.body220
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	add.ul r[1:2], r[16:17], r[20:21]
	lui r28, 523264
	slli r5, r1, 2
	add.s r2, r22, r5
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.s r3, r15, r5
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	add.s r19, r9, r5
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	loads.w r1, 0(r2)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	loads.w r10, 0(r3)
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	and r1, r1, r4
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	and r10, r10, r4
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	seteq r11, r1, r6
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	seteq r18, r1, zero
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	seteq r12, r10, zero
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	seteq r13, r10, r6
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	max.u r1, r1, r10
	setlt.u r1, r6, r1
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	and r10, r11, r12
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	and r11, r18, r13
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	or r10, r10, r11
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	or r10, r1, r10
	lui r1, 523264
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r10, zero, .LBB0_91
# %bb.90:                               # %vector.body220
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r19)
.LBB0_91:                               # %vector.body220
                                        #   in Loop: Header=BB0_89 Depth=3
	loads.w r10, 4(r2)
	loads.w r11, 4(r3)
	and r10, r10, r4
	and r11, r11, r4
	seteq r12, r10, r6
	seteq r25, r10, zero
	seteq r13, r11, zero
	seteq r18, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r25, r18
	lui r18, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r10, zero, .LBB0_93
# %bb.92:                               # %vector.body220
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r19)
.LBB0_93:                               # %vector.body220
                                        #   in Loop: Header=BB0_89 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r3)
	and r10, r10, r4
	and r11, r11, r4
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
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r10, zero, .LBB0_95
# %bb.94:                               # %vector.body220
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r19)
.LBB0_95:                               # %vector.body220
                                        #   in Loop: Header=BB0_89 Depth=3
	loads.w r2, 12(r2)
	loads.w r3, 12(r3)
	and r2, r2, r4
	and r3, r3, r4
	seteq r10, r2, r6
	seteq r25, r2, zero
	seteq r11, r3, zero
	seteq r13, r3, r6
	max.u r2, r2, r3
	setlt.u r2, r6, r2
	and r3, r10, r11
	and r10, r25, r13
	or r3, r3, r10
	or r2, r2, r3
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r2, zero, .LBB0_88
# %bb.96:                               # %vector.body220
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r19)
	j .LBB0_88
.LBB0_97:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 196 7 is_stmt 1               # parallel-rne.mlir:196:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r11
	addli r17, zero, 64
	addli r12, zero, 8
	addli r16, zero, 4
	loadli.w r13,  -644(r30)                # 4-byte Folded Reload
	loadli.w r19,  -648(r30)                # 4-byte Folded Reload
	loadli.w r20,  -652(r30)                # 4-byte Folded Reload
	loadli.w r21,  -656(r30)                # 4-byte Folded Reload
	.loc	1 232 7                         # parallel-rne.mlir:232:7
	bneq r11, r27, .LBB0_126
.LBB0_98:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 240 9                         # parallel-rne.mlir:240:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	addli r27, zero, 23
	setlt.u r1, r1, r2
	zext_int2long r[2:3], r2
	.loc	1 232 7                         # parallel-rne.mlir:232:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_100
.LBB0_99:                               # %middle.block211
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[10:11], -632(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r27
	addli r18, zero, 7
	.loc	1 240 9 is_stmt 1               # parallel-rne.mlir:240:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	beq r1, zero, .LBB0_125
.LBB0_100:                              # %.preheader34
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_117 Depth 3
                                        #       Child Loop BB0_103 Depth 3
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[20:21], r[2:3], r18
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_115
# %bb.101:                              # %scalar.ph203.preheader
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_103
.LBB0_102:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 263 13 is_stmt 1              # parallel-rne.mlir:263:13
	add.s r3, r14, r3
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 263 13                        # parallel-rne.mlir:263:13
	stores.w r5, 0(r3)
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	beq r10, zero, .LBB0_99
.LBB0_103:                              # %scalar.ph203
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	add.ul r[10:11], r[1:2], r[20:21]
	lui r17, 523264
	slli r3, r10, 2
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	add.s r5, r15, r3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.s r10, r9, r3
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	loads.w r5, 0(r5)
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	loads.w r18, 0(r10)
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	and r12, r5, r4
	lui r5, 523264
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	beq r12, r6, .LBB0_105
# %bb.104:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_105:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_103 Depth=3
	add.s r10, r22, r3
	loads.w r10, 0(r10)
	and r16, r10, r4
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r16, zero, .LBB0_113
# %bb.106:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r12, zero, .LBB0_114
.LBB0_107:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_103 Depth=3
	beq r16, r6, .LBB0_109
.LBB0_108:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_109:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_103 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r10, zero, .LBB0_111
# %bb.110:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
.LBB0_111:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_103 Depth=3
	setlt.u r10, r6, r16
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r10, zero, .LBB0_102
# %bb.112:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_102
.LBB0_113:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_103 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	beq r12, zero, .LBB0_107
.LBB0_114:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r16, r6, .LBB0_108
	j .LBB0_109
.LBB0_115:                              # %vector.body205.preheader
                                        #   in Loop: Header=BB0_100 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_117
.LBB0_116:                              # %vector.body205
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 241 11 is_stmt 1              # parallel-rne.mlir:241:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 263 13                        # parallel-rne.mlir:263:13
	add.s r3, r14, r5
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	seteq.d r2, r[16:17], r[7:8]
	.loc	1 263 13                        # parallel-rne.mlir:263:13
	stores.w r1, 12(r3)
	stores.w r12, 8(r3)
	stores.w r18, 4(r3)
	stores.w r28, 0(r3)
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	bneq r2, zero, .LBB0_99
.LBB0_117:                              # %vector.body205
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	add.ul r[1:2], r[16:17], r[20:21]
	lui r28, 523264
	slli r5, r1, 2
	add.s r2, r22, r5
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	add.s r3, r15, r5
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.s r19, r9, r5
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	loads.w r1, 0(r2)
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	loads.w r10, 0(r3)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r1, r1, r4
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	and r10, r10, r4
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	seteq r11, r1, r6
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	seteq r18, r1, zero
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	seteq r12, r10, zero
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	seteq r13, r10, r6
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	max.u r1, r1, r10
	setlt.u r1, r6, r1
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	and r10, r11, r12
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	and r11, r18, r13
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	or r10, r10, r11
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	or r10, r1, r10
	lui r1, 523264
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r10, zero, .LBB0_119
# %bb.118:                              # %vector.body205
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r19)
.LBB0_119:                              # %vector.body205
                                        #   in Loop: Header=BB0_117 Depth=3
	loads.w r10, 4(r2)
	loads.w r11, 4(r3)
	and r10, r10, r4
	and r11, r11, r4
	seteq r12, r10, r6
	seteq r25, r10, zero
	seteq r13, r11, zero
	seteq r18, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r25, r18
	lui r18, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r10, zero, .LBB0_121
# %bb.120:                              # %vector.body205
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r19)
.LBB0_121:                              # %vector.body205
                                        #   in Loop: Header=BB0_117 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r3)
	and r10, r10, r4
	and r11, r11, r4
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
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r10, zero, .LBB0_123
# %bb.122:                              # %vector.body205
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r19)
.LBB0_123:                              # %vector.body205
                                        #   in Loop: Header=BB0_117 Depth=3
	loads.w r2, 12(r2)
	loads.w r3, 12(r3)
	and r2, r2, r4
	and r3, r3, r4
	seteq r10, r2, r6
	seteq r25, r2, zero
	seteq r11, r3, zero
	seteq r13, r3, r6
	max.u r2, r2, r3
	setlt.u r2, r6, r2
	and r3, r10, r11
	and r10, r25, r13
	or r3, r3, r10
	or r2, r2, r3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r2, zero, .LBB0_116
# %bb.124:                              # %vector.body205
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r19)
	j .LBB0_116
.LBB0_125:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 232 7 is_stmt 1               # parallel-rne.mlir:232:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r11
	addli r17, zero, 64
	addli r12, zero, 8
	addli r16, zero, 4
	loadli.w r13,  -644(r30)                # 4-byte Folded Reload
	loadli.w r19,  -648(r30)                # 4-byte Folded Reload
	loadli.w r20,  -652(r30)                # 4-byte Folded Reload
	loadli.w r21,  -656(r30)                # 4-byte Folded Reload
.LBB0_126:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 268 7                         # parallel-rne.mlir:268:7
	loadli.w r1,  -676(r30)                 # 4-byte Folded Reload
	addli r27, zero, 31
	beq r1, zero, .LBB0_155
# %bb.127:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 276 9                         # parallel-rne.mlir:276:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 268 7                         # parallel-rne.mlir:268:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	addli r1, zero, 24
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_129
.LBB0_128:                              # %middle.block196
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[10:11], -632(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r27
	addli r18, zero, 7
	.loc	1 276 9 is_stmt 1               # parallel-rne.mlir:276:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	beq r1, zero, .LBB0_154
.LBB0_129:                              # %.preheader33
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_146 Depth 3
                                        #       Child Loop BB0_132 Depth 3
	.loc	1 277 11                        # parallel-rne.mlir:277:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[20:21], r[2:3], r18
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_144
# %bb.130:                              # %scalar.ph188.preheader
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_132
.LBB0_131:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 277 11                        # parallel-rne.mlir:277:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 299 13 is_stmt 1              # parallel-rne.mlir:299:13
	add.s r3, r14, r3
	.loc	1 277 11                        # parallel-rne.mlir:277:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r5, 0(r3)
	.loc	1 277 11                        # parallel-rne.mlir:277:11
	beq r10, zero, .LBB0_128
.LBB0_132:                              # %scalar.ph188
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	add.ul r[10:11], r[1:2], r[20:21]
	lui r17, 523264
	slli r3, r10, 2
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	add.s r5, r15, r3
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	add.s r10, r9, r3
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	loads.w r5, 0(r5)
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	loads.w r18, 0(r10)
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	and r12, r5, r4
	lui r5, 523264
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r12, r6, .LBB0_134
# %bb.133:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_134:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_132 Depth=3
	add.s r10, r22, r3
	loads.w r10, 0(r10)
	and r16, r10, r4
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r16, zero, .LBB0_142
# %bb.135:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r12, zero, .LBB0_143
.LBB0_136:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_132 Depth=3
	beq r16, r6, .LBB0_138
.LBB0_137:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_138:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_132 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r10, zero, .LBB0_140
# %bb.139:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
.LBB0_140:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_132 Depth=3
	setlt.u r10, r6, r16
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r10, zero, .LBB0_131
# %bb.141:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_131
.LBB0_142:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_132 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r12, zero, .LBB0_136
.LBB0_143:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r16, r6, .LBB0_137
	j .LBB0_138
.LBB0_144:                              # %vector.body190.preheader
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_146
.LBB0_145:                              # %vector.body190
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 277 11 is_stmt 1              # parallel-rne.mlir:277:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	add.s r3, r14, r5
	.loc	1 277 11                        # parallel-rne.mlir:277:11
	seteq.d r2, r[16:17], r[7:8]
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r1, 12(r3)
	stores.w r12, 8(r3)
	stores.w r18, 4(r3)
	stores.w r28, 0(r3)
	.loc	1 277 11                        # parallel-rne.mlir:277:11
	bneq r2, zero, .LBB0_128
.LBB0_146:                              # %vector.body190
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	add.ul r[1:2], r[16:17], r[20:21]
	lui r28, 523264
	slli r5, r1, 2
	add.s r2, r22, r5
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	add.s r3, r15, r5
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	add.s r19, r9, r5
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	loads.w r1, 0(r2)
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	loads.w r10, 0(r3)
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	and r1, r1, r4
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	and r10, r10, r4
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	seteq r11, r1, r6
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	seteq r18, r1, zero
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	seteq r12, r10, zero
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	seteq r13, r10, r6
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	max.u r1, r1, r10
	setlt.u r1, r6, r1
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r10, r11, r12
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	and r11, r18, r13
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	or r10, r10, r11
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	or r10, r1, r10
	lui r1, 523264
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r10, zero, .LBB0_148
# %bb.147:                              # %vector.body190
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r19)
.LBB0_148:                              # %vector.body190
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r10, 4(r2)
	loads.w r11, 4(r3)
	and r10, r10, r4
	and r11, r11, r4
	seteq r12, r10, r6
	seteq r25, r10, zero
	seteq r13, r11, zero
	seteq r18, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r25, r18
	lui r18, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r10, zero, .LBB0_150
# %bb.149:                              # %vector.body190
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r19)
.LBB0_150:                              # %vector.body190
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r3)
	and r10, r10, r4
	and r11, r11, r4
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
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r10, zero, .LBB0_152
# %bb.151:                              # %vector.body190
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r19)
.LBB0_152:                              # %vector.body190
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r2, 12(r2)
	loads.w r3, 12(r3)
	and r2, r2, r4
	and r3, r3, r4
	seteq r10, r2, r6
	seteq r25, r2, zero
	seteq r11, r3, zero
	seteq r13, r3, r6
	max.u r2, r2, r3
	setlt.u r2, r6, r2
	and r3, r10, r11
	and r10, r25, r13
	or r3, r3, r10
	or r2, r2, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_145
# %bb.153:                              # %vector.body190
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r19)
	j .LBB0_145
.LBB0_154:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 268 7 is_stmt 1               # parallel-rne.mlir:268:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r11
	addli r17, zero, 64
	addli r12, zero, 8
	addli r16, zero, 4
	loadli.w r13,  -644(r30)                # 4-byte Folded Reload
	loadli.w r19,  -648(r30)                # 4-byte Folded Reload
	loadli.w r20,  -652(r30)                # 4-byte Folded Reload
	loadli.w r21,  -656(r30)                # 4-byte Folded Reload
.LBB0_155:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r27, zero, 39
	.loc	1 304 7 is_stmt 1               # parallel-rne.mlir:304:7
	bneq r11, r16, .LBB0_184
# %bb.156:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 312 9                         # parallel-rne.mlir:312:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 304 7                         # parallel-rne.mlir:304:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	addli r1, zero, 32
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_158
.LBB0_157:                              # %middle.block181
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[10:11], -632(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r27
	addli r18, zero, 7
	.loc	1 312 9 is_stmt 1               # parallel-rne.mlir:312:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	beq r1, zero, .LBB0_183
.LBB0_158:                              # %.preheader32
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_175 Depth 3
                                        #       Child Loop BB0_161 Depth 3
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[20:21], r[2:3], r18
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_173
# %bb.159:                              # %scalar.ph173.preheader
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_161
.LBB0_160:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 335 13 is_stmt 1              # parallel-rne.mlir:335:13
	add.s r3, r14, r3
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	stores.w r5, 0(r3)
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	beq r10, zero, .LBB0_157
.LBB0_161:                              # %scalar.ph173
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	add.ul r[10:11], r[1:2], r[20:21]
	lui r17, 523264
	slli r3, r10, 2
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	add.s r5, r15, r3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	add.s r10, r9, r3
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	loads.w r5, 0(r5)
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	loads.w r18, 0(r10)
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	and r12, r5, r4
	lui r5, 523264
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r12, r6, .LBB0_163
# %bb.162:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_163:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	add.s r10, r22, r3
	loads.w r10, 0(r10)
	and r16, r10, r4
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r16, zero, .LBB0_171
# %bb.164:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r12, zero, .LBB0_172
.LBB0_165:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	beq r16, r6, .LBB0_167
.LBB0_166:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_167:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r10, zero, .LBB0_169
# %bb.168:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
.LBB0_169:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	setlt.u r10, r6, r16
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r10, zero, .LBB0_160
# %bb.170:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_160
.LBB0_171:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r12, zero, .LBB0_165
.LBB0_172:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r16, r6, .LBB0_166
	j .LBB0_167
.LBB0_173:                              # %vector.body175.preheader
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_175
.LBB0_174:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 313 11 is_stmt 1              # parallel-rne.mlir:313:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	add.s r3, r14, r5
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	seteq.d r2, r[16:17], r[7:8]
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	stores.w r1, 12(r3)
	stores.w r12, 8(r3)
	stores.w r18, 4(r3)
	stores.w r28, 0(r3)
	.loc	1 313 11                        # parallel-rne.mlir:313:11
	bneq r2, zero, .LBB0_157
.LBB0_175:                              # %vector.body175
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	add.ul r[1:2], r[16:17], r[20:21]
	lui r28, 523264
	slli r5, r1, 2
	add.s r2, r22, r5
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	add.s r3, r15, r5
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	add.s r19, r9, r5
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	loads.w r1, 0(r2)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	loads.w r10, 0(r3)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r1, r1, r4
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	and r10, r10, r4
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	seteq r11, r1, r6
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	seteq r18, r1, zero
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	seteq r12, r10, zero
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	seteq r13, r10, r6
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	max.u r1, r1, r10
	setlt.u r1, r6, r1
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	and r10, r11, r12
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	and r11, r18, r13
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	or r10, r10, r11
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	or r10, r1, r10
	lui r1, 523264
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r10, zero, .LBB0_177
# %bb.176:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r19)
.LBB0_177:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r10, 4(r2)
	loads.w r11, 4(r3)
	and r10, r10, r4
	and r11, r11, r4
	seteq r12, r10, r6
	seteq r25, r10, zero
	seteq r13, r11, zero
	seteq r18, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r25, r18
	lui r18, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r10, zero, .LBB0_179
# %bb.178:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r19)
.LBB0_179:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r3)
	and r10, r10, r4
	and r11, r11, r4
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
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r10, zero, .LBB0_181
# %bb.180:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r19)
.LBB0_181:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r2, 12(r2)
	loads.w r3, 12(r3)
	and r2, r2, r4
	and r3, r3, r4
	seteq r10, r2, r6
	seteq r25, r2, zero
	seteq r11, r3, zero
	seteq r13, r3, r6
	max.u r2, r2, r3
	setlt.u r2, r6, r2
	and r3, r10, r11
	and r10, r25, r13
	or r3, r3, r10
	or r2, r2, r3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r2, zero, .LBB0_174
# %bb.182:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r19)
	j .LBB0_174
.LBB0_183:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 304 7 is_stmt 1               # parallel-rne.mlir:304:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r11
	addli r17, zero, 64
	addli r12, zero, 8
	addli r16, zero, 4
	loadli.w r13,  -644(r30)                # 4-byte Folded Reload
	loadli.w r19,  -648(r30)                # 4-byte Folded Reload
	loadli.w r20,  -652(r30)                # 4-byte Folded Reload
	loadli.w r21,  -656(r30)                # 4-byte Folded Reload
.LBB0_184:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 340 7                         # parallel-rne.mlir:340:7
	addli r1, zero, 5
	addli r27, zero, 47
	bneq r11, r1, .LBB0_213
# %bb.185:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 348 9                         # parallel-rne.mlir:348:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 340 7                         # parallel-rne.mlir:340:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	addli r1, zero, 40
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_187
.LBB0_186:                              # %middle.block166
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[10:11], -632(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r27
	addli r18, zero, 7
	.loc	1 348 9 is_stmt 1               # parallel-rne.mlir:348:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	beq r1, zero, .LBB0_212
.LBB0_187:                              # %.preheader31
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_190 Depth 3
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[20:21], r[2:3], r18
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_202
# %bb.188:                              # %scalar.ph158.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_190
.LBB0_189:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 371 13 is_stmt 1              # parallel-rne.mlir:371:13
	add.s r3, r14, r3
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	stores.w r5, 0(r3)
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	beq r10, zero, .LBB0_186
.LBB0_190:                              # %scalar.ph158
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	add.ul r[10:11], r[1:2], r[20:21]
	lui r17, 523264
	slli r3, r10, 2
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	add.s r5, r15, r3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.s r10, r9, r3
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	loads.w r5, 0(r5)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	loads.w r18, 0(r10)
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	and r12, r5, r4
	lui r5, 523264
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	beq r12, r6, .LBB0_192
# %bb.191:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_192:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	add.s r10, r22, r3
	loads.w r10, 0(r10)
	and r16, r10, r4
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	bneq r16, zero, .LBB0_200
# %bb.193:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	bneq r12, zero, .LBB0_201
.LBB0_194:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	beq r16, r6, .LBB0_196
.LBB0_195:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_196:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	bneq r10, zero, .LBB0_198
# %bb.197:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
.LBB0_198:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	setlt.u r10, r6, r16
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	bneq r10, zero, .LBB0_189
# %bb.199:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_189
.LBB0_200:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	beq r12, zero, .LBB0_194
.LBB0_201:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	bneq r16, r6, .LBB0_195
	j .LBB0_196
.LBB0_202:                              # %vector.body160.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_204
.LBB0_203:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 349 11 is_stmt 1              # parallel-rne.mlir:349:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	add.s r3, r14, r5
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	seteq.d r2, r[16:17], r[7:8]
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	stores.w r1, 12(r3)
	stores.w r12, 8(r3)
	stores.w r18, 4(r3)
	stores.w r28, 0(r3)
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	bneq r2, zero, .LBB0_186
.LBB0_204:                              # %vector.body160
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	add.ul r[1:2], r[16:17], r[20:21]
	lui r28, 523264
	slli r5, r1, 2
	add.s r2, r22, r5
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	add.s r3, r15, r5
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.s r19, r9, r5
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	loads.w r1, 0(r2)
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	loads.w r10, 0(r3)
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	and r1, r1, r4
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	and r10, r10, r4
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	seteq r11, r1, r6
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	seteq r18, r1, zero
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	seteq r12, r10, zero
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	seteq r13, r10, r6
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	max.u r1, r1, r10
	setlt.u r1, r6, r1
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	and r10, r11, r12
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	and r11, r18, r13
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	or r10, r10, r11
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	or r10, r1, r10
	lui r1, 523264
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	bneq r10, zero, .LBB0_206
# %bb.205:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r19)
.LBB0_206:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r10, 4(r2)
	loads.w r11, 4(r3)
	and r10, r10, r4
	and r11, r11, r4
	seteq r12, r10, r6
	seteq r25, r10, zero
	seteq r13, r11, zero
	seteq r18, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r25, r18
	lui r18, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	bneq r10, zero, .LBB0_208
# %bb.207:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r19)
.LBB0_208:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r3)
	and r10, r10, r4
	and r11, r11, r4
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
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	bneq r10, zero, .LBB0_210
# %bb.209:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r19)
.LBB0_210:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r2, 12(r2)
	loads.w r3, 12(r3)
	and r2, r2, r4
	and r3, r3, r4
	seteq r10, r2, r6
	seteq r25, r2, zero
	seteq r11, r3, zero
	seteq r13, r3, r6
	max.u r2, r2, r3
	setlt.u r2, r6, r2
	and r3, r10, r11
	and r10, r25, r13
	or r3, r3, r10
	or r2, r2, r3
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	bneq r2, zero, .LBB0_203
# %bb.211:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r19)
	j .LBB0_203
.LBB0_212:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 340 7 is_stmt 1               # parallel-rne.mlir:340:7
	mfence { sm }
	.loc	1 29 5                          # parallel-rne.mlir:29:5
	core_id r11
	addli r17, zero, 64
	addli r12, zero, 8
	addli r16, zero, 4
	loadli.w r13,  -644(r30)                # 4-byte Folded Reload
	loadli.w r19,  -648(r30)                # 4-byte Folded Reload
	loadli.w r20,  -652(r30)                # 4-byte Folded Reload
	loadli.w r21,  -656(r30)                # 4-byte Folded Reload
.LBB0_213:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	beq r11, r18, .LBB0_242
# %bb.214:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 6
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	bneq r11, r1, .LBB0_270
# %bb.215:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 384 9 is_stmt 1               # parallel-rne.mlir:384:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r27, r1, r2
	addli r1, zero, 48
	zext_int2long r[2:3], r1
	j .LBB0_217
.LBB0_216:                              # %middle.block
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[10:11], -632(r30)              # 8-byte Folded Reload
	addli r18, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 384 9 is_stmt 1               # parallel-rne.mlir:384:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	beq r1, zero, .LBB0_269
.LBB0_217:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_234 Depth 3
                                        #       Child Loop BB0_220 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[20:21], r[2:3], r18
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	.loc	1 385 11 is_stmt 1              # parallel-rne.mlir:385:11
	beq r27, zero, .LBB0_232
# %bb.218:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_220
.LBB0_219:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 385 11                        # parallel-rne.mlir:385:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 407 13 is_stmt 1              # parallel-rne.mlir:407:13
	add.s r3, r14, r3
	.loc	1 385 11                        # parallel-rne.mlir:385:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 407 13                        # parallel-rne.mlir:407:13
	stores.w r5, 0(r3)
	.loc	1 385 11                        # parallel-rne.mlir:385:11
	beq r10, zero, .LBB0_216
.LBB0_220:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_217 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	add.ul r[10:11], r[1:2], r[20:21]
	lui r17, 523264
	slli r3, r10, 2
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	add.s r5, r15, r3
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	add.s r10, r9, r3
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	loads.w r5, 0(r5)
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	loads.w r18, 0(r10)
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	and r12, r5, r4
	lui r5, 523264
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	beq r12, r6, .LBB0_222
# %bb.221:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_222:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	add.s r10, r22, r3
	loads.w r10, 0(r10)
	and r16, r10, r4
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	bneq r16, zero, .LBB0_230
# %bb.223:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	bneq r12, zero, .LBB0_231
.LBB0_224:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	beq r16, r6, .LBB0_226
.LBB0_225:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_226:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	bneq r10, zero, .LBB0_228
# %bb.227:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
.LBB0_228:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	setlt.u r10, r6, r16
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	bneq r10, zero, .LBB0_219
# %bb.229:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_219
.LBB0_230:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	beq r12, zero, .LBB0_224
.LBB0_231:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	bneq r16, r6, .LBB0_225
	j .LBB0_226
.LBB0_232:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_234
.LBB0_233:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 385 11 is_stmt 1              # parallel-rne.mlir:385:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 407 13                        # parallel-rne.mlir:407:13
	add.s r3, r14, r5
	.loc	1 385 11                        # parallel-rne.mlir:385:11
	seteq.d r2, r[16:17], r[7:8]
	.loc	1 407 13                        # parallel-rne.mlir:407:13
	stores.w r1, 12(r3)
	stores.w r12, 8(r3)
	stores.w r18, 4(r3)
	stores.w r28, 0(r3)
	.loc	1 385 11                        # parallel-rne.mlir:385:11
	bneq r2, zero, .LBB0_216
.LBB0_234:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_217 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	add.ul r[1:2], r[16:17], r[20:21]
	lui r28, 523264
	slli r5, r1, 2
	add.s r2, r22, r5
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	add.s r3, r15, r5
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	add.s r19, r9, r5
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	loads.w r1, 0(r2)
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	loads.w r10, 0(r3)
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	and r1, r1, r4
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	and r10, r10, r4
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	seteq r11, r1, r6
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	seteq r18, r1, zero
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	seteq r12, r10, zero
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	seteq r13, r10, r6
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	max.u r1, r1, r10
	setlt.u r1, r6, r1
	.loc	1 396 19                        # parallel-rne.mlir:396:19
	and r10, r11, r12
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	and r11, r18, r13
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	or r10, r10, r11
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	or r10, r1, r10
	lui r1, 523264
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	bneq r10, zero, .LBB0_236
# %bb.235:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r19)
.LBB0_236:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r10, 4(r2)
	loads.w r11, 4(r3)
	and r10, r10, r4
	and r11, r11, r4
	seteq r12, r10, r6
	seteq r25, r10, zero
	seteq r13, r11, zero
	seteq r18, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r25, r18
	lui r18, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	bneq r10, zero, .LBB0_238
# %bb.237:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r19)
.LBB0_238:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r3)
	and r10, r10, r4
	and r11, r11, r4
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
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	bneq r10, zero, .LBB0_240
# %bb.239:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r19)
.LBB0_240:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r2, 12(r2)
	loads.w r3, 12(r3)
	and r2, r2, r4
	and r3, r3, r4
	seteq r10, r2, r6
	seteq r25, r2, zero
	seteq r11, r3, zero
	seteq r13, r3, r6
	max.u r2, r2, r3
	setlt.u r2, r6, r2
	and r3, r10, r11
	and r10, r25, r13
	or r3, r3, r10
	or r2, r2, r3
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	bneq r2, zero, .LBB0_233
# %bb.241:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r19)
	j .LBB0_233
.LBB0_242:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 420 9 is_stmt 1               # parallel-rne.mlir:420:9
	sub.s r1, r14, r9
	addli r2, zero, 16
	addli r27, zero, 63
	setlt.u r1, r1, r2
	.loc	1 412 7                         # parallel-rne.mlir:412:7
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	addli r1, zero, 56
	xfence
	zext_int2long r[2:3], r1
	mfence { lm, sm, gm }
	j .LBB0_244
.LBB0_243:                              # %middle.block151
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[10:11], -632(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r27
	addli r18, zero, 7
	.loc	1 420 9 is_stmt 1               # parallel-rne.mlir:420:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	beq r1, zero, .LBB0_269
.LBB0_244:                              # %.preheader30
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_261 Depth 3
                                        #       Child Loop BB0_247 Depth 3
	.loc	1 421 11                        # parallel-rne.mlir:421:11
	loadli.w r1,  -636(r30)                 # 4-byte Folded Reload
	sll.d r[20:21], r[2:3], r18
	store.d r[2:3], -632(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_259
# %bb.245:                              # %scalar.ph143.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_247
.LBB0_246:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 421 11                        # parallel-rne.mlir:421:11
	setlt.ul r10, r[1:2], r[23:24]
	.loc	1 443 13 is_stmt 1              # parallel-rne.mlir:443:13
	add.s r3, r14, r3
	.loc	1 421 11                        # parallel-rne.mlir:421:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 443 13                        # parallel-rne.mlir:443:13
	stores.w r5, 0(r3)
	.loc	1 421 11                        # parallel-rne.mlir:421:11
	beq r10, zero, .LBB0_243
.LBB0_247:                              # %scalar.ph143
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	add.ul r[10:11], r[1:2], r[20:21]
	lui r17, 523264
	slli r3, r10, 2
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	add.s r5, r15, r3
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	add.s r10, r9, r3
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	loads.w r5, 0(r5)
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	loads.w r18, 0(r10)
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	and r12, r5, r4
	lui r5, 523264
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	beq r12, r6, .LBB0_249
# %bb.248:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_249:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	add.s r10, r22, r3
	loads.w r10, 0(r10)
	and r16, r10, r4
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r16, zero, .LBB0_257
# %bb.250:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r12, zero, .LBB0_258
.LBB0_251:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	beq r16, r6, .LBB0_253
.LBB0_252:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_253:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	setlt.u r10, r6, r12
	lui r12, 523264
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r10, zero, .LBB0_255
# %bb.254:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
.LBB0_255:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	setlt.u r10, r6, r16
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r10, zero, .LBB0_246
# %bb.256:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_246
.LBB0_257:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	beq r12, zero, .LBB0_251
.LBB0_258:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r16, r6, .LBB0_252
	j .LBB0_253
.LBB0_259:                              # %vector.body145.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[16:17], zero
	j .LBB0_261
.LBB0_260:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 421 11 is_stmt 1              # parallel-rne.mlir:421:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 443 13                        # parallel-rne.mlir:443:13
	add.s r3, r14, r5
	.loc	1 421 11                        # parallel-rne.mlir:421:11
	seteq.d r2, r[16:17], r[7:8]
	.loc	1 443 13                        # parallel-rne.mlir:443:13
	stores.w r1, 12(r3)
	stores.w r12, 8(r3)
	stores.w r18, 4(r3)
	stores.w r28, 0(r3)
	.loc	1 421 11                        # parallel-rne.mlir:421:11
	bneq r2, zero, .LBB0_243
.LBB0_261:                              # %vector.body145
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	add.ul r[1:2], r[16:17], r[20:21]
	lui r28, 523264
	slli r5, r1, 2
	add.s r2, r22, r5
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	add.s r3, r15, r5
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	add.s r19, r9, r5
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	loads.w r1, 0(r2)
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	loads.w r10, 0(r3)
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	and r1, r1, r4
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	and r10, r10, r4
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	seteq r11, r1, r6
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	seteq r18, r1, zero
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	seteq r12, r10, zero
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	seteq r13, r10, r6
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	max.u r1, r1, r10
	setlt.u r1, r6, r1
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	and r10, r11, r12
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	and r11, r18, r13
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	or r10, r10, r11
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	or r10, r1, r10
	lui r1, 523264
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r10, zero, .LBB0_263
# %bb.262:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r28, 0(r19)
.LBB0_263:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r10, 4(r2)
	loads.w r11, 4(r3)
	and r10, r10, r4
	and r11, r11, r4
	seteq r12, r10, r6
	seteq r25, r10, zero
	seteq r13, r11, zero
	seteq r18, r11, r6
	max.u r10, r10, r11
	setlt.u r10, r6, r10
	and r11, r12, r13
	and r12, r25, r18
	lui r18, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r10, zero, .LBB0_265
# %bb.264:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r19)
.LBB0_265:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r10, 8(r2)
	loads.w r11, 8(r3)
	and r10, r10, r4
	and r11, r11, r4
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
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r10, zero, .LBB0_267
# %bb.266:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r19)
.LBB0_267:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r2, 12(r2)
	loads.w r3, 12(r3)
	and r2, r2, r4
	and r3, r3, r4
	seteq r10, r2, r6
	seteq r25, r2, zero
	seteq r11, r3, zero
	seteq r13, r3, r6
	max.u r2, r2, r3
	setlt.u r2, r6, r2
	and r3, r10, r11
	and r10, r25, r13
	or r3, r3, r10
	or r2, r2, r3
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	bneq r2, zero, .LBB0_260
# %bb.268:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 12(r19)
	j .LBB0_260
.LBB0_269:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	mfence { sm }
	.loc	1 29 5 is_stmt 1                # parallel-rne.mlir:29:5
	core_id r11
	addli r17, zero, 64
	addli r12, zero, 8
	addli r16, zero, 4
	loadli.w r13,  -644(r30)                # 4-byte Folded Reload
	loadli.w r19,  -648(r30)                # 4-byte Folded Reload
	loadli.w r20,  -652(r30)                # 4-byte Folded Reload
	loadli.w r21,  -656(r30)                # 4-byte Folded Reload
.LBB0_270:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 448 7                         # parallel-rne.mlir:448:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 449 7                         # parallel-rne.mlir:449:7
	loadli.w r1,  -676(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.271:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r25,  -672(r30)                # 4-byte Folded Reload
	addli r15, zero, 2
	addli r24, zero, 128
	.loc	1 460 7 is_stmt 1               # parallel-rne.mlir:460:7
	bneq r11, zero, .LBB0_6
# %bb.272:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -716(r30)                 # 4-byte Folded Reload
	addli r3, zero, 448
	.loc	1 460 7                         # parallel-rne.mlir:460:7
	load.d r[9:10], -712(r30)               # 8-byte Folded Reload
	load.d r[22:23], 24(r30)
	addli r5, zero, 5
	zext_int2long r[7:8], r3
	addli r3, zero, 17
	sext_int2long r[1:2], r1
	sll.d r[9:10], r[9:10], r3
	addli r3, zero, 12
	min.sl r[7:8], r[1:2], r[7:8]
	add.ul r[9:10], r[22:23], r[9:10]
	load.d r[22:23], -704(r30)              # 8-byte Folded Reload
	xwait r3, 0
	addli r3, zero, 1
	lock zero, r5
	addli.d r[7:8], r[7:8], 64
	dma_cfg r3, zero, zero, 0
	max.sl r[7:8], r[7:8], r[1:2]
	dma_cfg zero, r3, zero, 1
	add.ul r[9:10], r[9:10], r[22:23]
	sub.sl r[1:2], r[7:8], r[1:2]
	zext_int2long r[7:8], r17
	.loc	1 456 13 is_stmt 1              # parallel-rne.mlir:456:13
	min.sl r[1:2], r[1:2], r[7:8]
	.loc	1 460 7                         # parallel-rne.mlir:460:7
	load.d r[7:8], -728(r30)                # 8-byte Folded Reload
	dma_cfg r10, zero, zero, 2
	slli r3, r7, 2
	addli r7, zero, 2048
	dma_cfg r9, r14, r3, 3
	addli r3, zero, 512
	dma_cfg r7, r3, r1, 4
	addli r1, zero, 13
	dma_run zero
	unlock r5
	xsignal r1, 0
	j .LBB0_6
.LBB0_273:                              # %._crit_edge
	.loc	1 462 5                         # parallel-rne.mlir:462:5
	xsignal zero, 0
	bneq r11, zero, .LBB0_275
# %bb.274:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 462 5                         # parallel-rne.mlir:462:5
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
	.loc	1 463 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:463:5
	addli sp, sp, 760
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
	.long	824                             # 0x338
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-3p34dv1z" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
