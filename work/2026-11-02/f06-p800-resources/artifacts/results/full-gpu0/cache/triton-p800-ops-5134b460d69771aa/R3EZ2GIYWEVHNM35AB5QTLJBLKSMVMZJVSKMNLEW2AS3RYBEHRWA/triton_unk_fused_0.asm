	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-ob21hq1r" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -832
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r16
	addli r30, sp, 768
	xsignal_mode_cfg r1
	beq r16, zero, .LBB0_2
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
	addli r3, zero, 3
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r2, 0
	addli r1, zero, 15
	addli r2, zero, 19
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 17
	addli r2, zero, 21
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -12(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -24(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -36(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -48(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -180(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -504(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -640(r30)
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
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r3, -20(r30)
	storeli.w r3, -16(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	storeli.w r3, -60(r30)
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r3, -500(r30)
	storeli.w r3, -496(r30)
	storeli.w r3, -492(r30)
	storeli.w r3, -488(r30)
	storeli.w r3, -484(r30)
	storeli.w r3, -480(r30)
	storeli.w r3, -476(r30)
	storeli.w r3, -472(r30)
	storeli.w r3, -468(r30)
	storeli.w r3, -464(r30)
	storeli.w r3, -460(r30)
	storeli.w r3, -456(r30)
	storeli.w r3, -452(r30)
	storeli.w r3, -448(r30)
	storeli.w r3, -444(r30)
	storeli.w r3, -440(r30)
	storeli.w r3, -436(r30)
	storeli.w r3, -432(r30)
	storeli.w r3, -428(r30)
	storeli.w r3, -424(r30)
	storeli.w r3, -420(r30)
	storeli.w r3, -416(r30)
	storeli.w r3, -412(r30)
	storeli.w r3, -408(r30)
	storeli.w r3, -404(r30)
	storeli.w r3, -400(r30)
	storeli.w r3, -396(r30)
	storeli.w r3, -392(r30)
	storeli.w r3, -388(r30)
	storeli.w r3, -384(r30)
	storeli.w r3, -380(r30)
	storeli.w r3, -376(r30)
	storeli.w r3, -372(r30)
	storeli.w r3, -368(r30)
	storeli.w r3, -364(r30)
	storeli.w r3, -360(r30)
	storeli.w r3, -356(r30)
	storeli.w r3, -352(r30)
	storeli.w r3, -348(r30)
	storeli.w r3, -344(r30)
	storeli.w r3, -340(r30)
	storeli.w r3, -336(r30)
	storeli.w r3, -332(r30)
	storeli.w r3, -328(r30)
	storeli.w r3, -324(r30)
	storeli.w r3, -320(r30)
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
	storeli.w r3, -240(r30)
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
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r3, -636(r30)
	storeli.w r3, -632(r30)
	storeli.w r3, -628(r30)
	storeli.w r3, -624(r30)
	storeli.w r3, -620(r30)
	storeli.w r3, -616(r30)
	storeli.w r3, -612(r30)
	storeli.w r3, -608(r30)
	storeli.w r3, -604(r30)
	storeli.w r3, -600(r30)
	storeli.w r3, -596(r30)
	storeli.w r3, -592(r30)
	storeli.w r3, -588(r30)
	storeli.w r3, -584(r30)
	storeli.w r3, -580(r30)
	storeli.w r3, -576(r30)
	storeli.w r3, -572(r30)
	storeli.w r3, -568(r30)
	storeli.w r3, -564(r30)
	storeli.w r3, -560(r30)
	storeli.w r3, -556(r30)
	storeli.w r3, -552(r30)
	storeli.w r3, -548(r30)
	storeli.w r3, -544(r30)
	storeli.w r3, -540(r30)
	storeli.w r3, -536(r30)
	storeli.w r3, -532(r30)
	storeli.w r3, -528(r30)
	storeli.w r3, -524(r30)
	storeli.w r3, -520(r30)
	storeli.w r3, -516(r30)
	storeli.w r3, -512(r30)
	storeli.w r3, -508(r30)
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r6
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r2, r2, r4
	.loc	1 52 5                          # parallel-rne.mlir:52:5
	ble.s r2, r1, .LBB0_274
# %bb.4:                                # %.lr.ph
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	sext_int2long r[2:3], r2
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[6:7], r1
	lui r1, 324
	loadli.w r23,  -12(r30)
	loadli.w r19,  -640(r30)
	loadli.w r20,  -504(r30)
	addli r9, zero, 0
	addli r21, zero, 64
	addli r22, zero, 2
	addli r14, zero, 4
	addli r15, zero, 0
	store.d r[2:3], -752(r30)               # 8-byte Folded Spill
	loadli.w r2,  -24(r30)
	ori r1, r1, 1024
	lui r3, 522240
	storeli.w r1, -756(r30)                 # 4-byte Folded Spill
	storeli.w r2, -680(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -36(r30)
	storeli.w r2, -684(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -48(r30)
	storeli.w r2, -688(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -180(r30)
	storeli.w r2, -696(r30)                 # 4-byte Folded Spill
	lui r2, 40
	ori r1, r2, 2114
	lui r2, 524287
	storeli.w r1, -764(r30)                 # 4-byte Folded Spill
	lui r1, 356
	ori r5, r2, 4095
	ori r1, r1, 1024
	storeli.w r1, -760(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 442 7                         # parallel-rne.mlir:442:7
	addli r1, zero, 12
	addli r14, zero, 4
	xsignal r1, 0
	.loc	1 443 7                         # parallel-rne.mlir:443:7
	addli r1, zero, 17
	xsignal r1, 0
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	addli r1, zero, 19
	xsignal r1, 0
	.loc	1 445 7                         # parallel-rne.mlir:445:7
	addli r1, zero, 21
	xsignal r1, 0
	loadli.w r23,  -704(r30)                # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[6:7], -712(r30)                # 8-byte Folded Reload
	.loc	1 52 5 is_stmt 1                # parallel-rne.mlir:52:5
	load.d r[1:2], -752(r30)                # 8-byte Folded Reload
	loadli.w r9,  -700(r30)                 # 4-byte Folded Reload
	addli r23, r23, 1
	addli.d r[6:7], r[6:7], 1
	setlt.sl r1, r[6:7], r[1:2]
	loadli.w r2,  -688(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -688(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -684(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -684(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -680(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -680(r30)                 # 4-byte Folded Spill
	beq r1, zero, .LBB0_273
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_47 Depth 2
                                        #       Child Loop BB0_64 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #     Child Loop BB0_75 Depth 2
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_78 Depth 3
                                        #     Child Loop BB0_103 Depth 2
                                        #       Child Loop BB0_120 Depth 3
                                        #       Child Loop BB0_106 Depth 3
                                        #     Child Loop BB0_131 Depth 2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_134 Depth 3
                                        #     Child Loop BB0_159 Depth 2
                                        #       Child Loop BB0_176 Depth 3
                                        #       Child Loop BB0_162 Depth 3
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
	addli r11, zero, 128
	addli r27, zero, 32
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	bneq r16, r14, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 13
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r1,  48(r30)
	loadli.w r2,  44(r30)
	store.d r[6:7], -712(r30)               # 8-byte Folded Spill
	addli r8, zero, 1
	addli r10, zero, 8
	addli r4, zero, 0
	div.s r1, r6, r1
	mod.s r7, r9, r22
	addli r9, r9, 1
	storeli.w r9, -700(r30)                 # 4-byte Folded Spill
	div.s r1, r1, r2
	slli r13, r7, 16
	div.s r2, r1, r21
	slli r6, r2, 3
	slli r2, r2, 6
	sub.s r8, r8, r6
	sub.s r2, r1, r2
	min.s r8, r8, r10
	mod.s r1, r1, r8
	div.s r2, r2, r8
	add.s r1, r6, r1
	zext_int2long r[8:9], r2
	slli r7, r2, 7
	addli r2, zero, 7
	sll.d r[8:9], r[8:9], r2
	slli r2, r1, 7
	zext_int2long r[24:25], r1
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	storeli.w r2, -732(r30)                 # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[8:9], r[8:9], r22
	store.d r[24:25], -728(r30)             # 8-byte Folded Spill
	store.d r[8:9], -720(r30)               # 8-byte Folded Spill
	add.ul r[17:18], r[1:2], r[8:9]
	addli r1, zero, 14
	loadli.w r9,  -696(r30)                 # 4-byte Folded Reload
	addli r8, zero, 0
	sll.d r[25:26], r[24:25], r1
	j .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	addli r1, zero, 7
	addli r12, zero, 128
	addli r22, zero, 2
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r11, zero, 3
	addli r21, zero, 64
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	srl.d r[19:20], r[19:20], r1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	xwait r11, 0
	addli r11, zero, 4
	sll.d r[14:15], r[14:15], r22
	sub.s r1, r12, r19
	load.d r[19:20], 0(r30)
	lock zero, r11
	addli r11, zero, 128
	dma_cfg zero, zero, zero, 0
	add.ul r[14:15], r[19:20], r[14:15]
	addli r20, r10, 0
	addli r19, r6, 0
	dma_cfg zero, r15, zero, 2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r20, r20, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	dma_cfg r2, r14, r12, 3
	addli r2, zero, 512
	addli r14, zero, 4
	addli r15, r28, 0
	dma_cfg r12, r2, r1, 4
	dma_run zero
	unlock r14
	xsignal r22, 0
.LBB0_11:                               # %.thread25
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r4, r4, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r9, r9, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	beq r4, r14, .LBB0_28
.LBB0_12:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r8, r8, 1
.LBB0_13:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r1, zero, 33
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r2, zero, 48
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r1, r19, r1
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r2, r15, r2
	addli r15, r15, 1
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r19, r19, 1
	slli r6, r1, 14
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r1, r2, 14
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	lui r2, 32
	add.s r2, r6, r2
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	beq r16, r22, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r28, r15, 0
	zext_int2long r[14:15], r4
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r6, zero, 1
	bneq r16, r6, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 80 15 is_stmt 1               # parallel-rne.mlir:80:15
	addli r1, zero, 5
	addli r10, r20, 0
	addli r6, r19, 0
	sll.d r[19:20], r[14:15], r1
	addli r1, zero, 16383
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	add.ul r[14:15], r[19:20], r[25:26]
	zext_int2long r[21:22], r1
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	setlt.ul r1, r[21:22], r[14:15]
	.loc	1 87 15                         # parallel-rne.mlir:87:15
	bneq r1, zero, .LBB0_10
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli.d r[19:20], r[14:15], 0
	j .LBB0_10
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r6, zero, 5
	xwait r22, 0
	addli r27, zero, 32
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r20, r20, 1
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 32
	ds_cfg r22, zero, 0
	ds_cfg r6, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r11, zero, 13
	shuffle_batch r1, r2, r6, 1
	addli r1, zero, 3
	unlock zero
	xsignal r1, 0
	xsignal r14, 0
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, zero, 80
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r6, r9, r27
	lui r10, 164
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r2, r20, r2
	addli r20, r20, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r6, r6, 14
	add.s r6, r6, r10
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r2, r2, 14
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r10, zero, 7
	beq r16, r10, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r12, zero, 6
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	bneq r16, r12, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 17
	addli r10, zero, 7
	sll.d r[1:2], r[14:15], r1
	addli r14, zero, 4
	xwait r10, 0
	addli r10, zero, 512
	addli r15, r28, 0
	lock zero, r14
	add.ul r[1:2], r[17:18], r[1:2]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r6, r1, r10, 3
	addli r1, zero, 4096
	dma_cfg r10, r1, r27, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 6
	addli r10, zero, 128
	addli r11, zero, 128
	addli r27, zero, 32
	addli r14, zero, 4
	addli r15, r28, 0
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 32
	ds_cfg r22, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r10, zero, 13
	shuffle_coa r2, r6, r1, 2
	addli r1, zero, 7
	unlock zero
	xsignal r1, 0
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r14, zero, 4
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	bneq r16, r14, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_13 Depth=2
	addli r6, zero, 8
	xwait r14, 0
	addli r10, r9, 0
	addli r9, zero, 1
	addli r14, zero, 0
	addli r11, zero, 4
	addli r12, zero, 32
	addli r24, zero, 128
	xwait r6, 0
	addli r6, zero, 1
	beq r8, zero, .LBB0_25
.LBB0_24:                               # %.preheader38
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r15, r14, 13
	slli r14, r14, 8
	lock zero, r6
	mm_cfg r21, r12, r24, 0
	or r15, r15, r2
	or r14, r14, r13
	mm_cfg r22, r11, r6, 2
	mm_acc r14, r1, r15, 8
	andi r15, r9, 1
	addli r14, zero, 1
	addli r9, zero, 0
	unlock r6
	bneq r15, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader37
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r15, r14, 13
	slli r14, r14, 8
	lock zero, r6
	mm_cfg r21, r12, r24, 0
	or r15, r15, r2
	or r14, r14, r13
	mm_cfg r22, r11, r6, 2
	mm r14, r1, r15, 8
	andi r15, r9, 1
	addli r14, zero, 1
	addli r9, zero, 0
	unlock r6
	bneq r15, zero, .LBB0_25
.LBB0_26:                               # %.thread25.thread92
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, r10, 0
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	addli r1, zero, 5
	addli r11, zero, 128
	addli r27, zero, 32
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	addli r4, r4, 1
	addli r14, zero, 4
	addli r15, r28, 0
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	xsignal r1, 0
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r9, r9, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	addli r1, zero, 9
	xsignal r1, 0
	bneq r4, r14, .LBB0_12
	j .LBB0_29
.LBB0_27:                               # %.thread25.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r4, r4, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r9, r9, 1
	addli r15, r28, 0
	bneq r4, r14, .LBB0_12
	j .LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	bneq r16, r14, .LBB0_30
.LBB0_29:                               # %.thread94
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_30:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 896
	.loc	1 132 13 is_stmt 1              # parallel-rne.mlir:132:13
	zext_int2long r[1:2], r7
	storeli.w r15, -668(r30)                # 4-byte Folded Spill
	storeli.w r9, -696(r30)                 # 4-byte Folded Spill
	zext_int2long r[6:7], r4
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	loadli.w r4,  -688(r30)                 # 4-byte Folded Reload
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	min.ul r[6:7], r[1:2], r[6:7]
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	mod.s r4, r4, r22
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	addli.d r[6:7], r[6:7], 128
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	max.ul r[14:15], r[6:7], r[1:2]
	addli r6, zero, 128
	zext_int2long r[7:8], r6
	sub.sl r[1:2], r[14:15], r[1:2]
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	slli r4, r4, 9
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	min.ul r[17:18], r[1:2], r[7:8]
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	lui r1, 292
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	addli r2, zero, 1
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	add.s r1, r4, r1
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	bneq r16, r2, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[9:10], 16(r30)
	load.d r[11:12], -720(r30)              # 8-byte Folded Reload
	addli r2, zero, 15
	addli r4, zero, 4
	addli r6, zero, 512
	xwait r2, 0
	lock zero, r4
	slli r2, r17, 2
	add.ul r[14:15], r[9:10], r[11:12]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r15, zero, 2
	dma_cfg r1, r14, r2, 3
	addli r2, zero, 1
	dma_cfg r6, r6, r2, 4
	addli r2, zero, 14
	dma_run zero
	unlock r4
	xsignal r2, 0
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	loadli.w r2,  -684(r30)                 # 4-byte Folded Reload
	storeli.w r23, -704(r30)                # 4-byte Folded Spill
	lui r10, 16
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	store.d r[17:18], -744(r30)             # 8-byte Folded Spill
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	mod.s r4, r2, r22
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	loadli.w r2,  -680(r30)                 # 4-byte Folded Reload
	mod.s r6, r2, r22
	lui r2, 292
	ori r9, r2, 1024
	mod.s r2, r23, r22
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	slli r4, r4, 16
	add.s r4, r4, r9
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	loadli.w r9,  -756(r30)                 # 4-byte Folded Reload
	slli r6, r6, 16
	add.s r23, r6, r9
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	addli r6, zero, 5
	bneq r16, r6, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r9, zero, 10
	addli r6, zero, 0
	xwait r9, 0
	addli r9, zero, 14
	xwait r9, 0
	addli r9, zero, 17
	xwait r9, 0
	lock zero, r22
	lui r9, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r9, r9, zero, 0
	addli r9, zero, 127
	ew_cfg zero, r9, zero, 2
	addli r9, zero, 1
	ew_cfg r9, zero, zero, 3
	loadli.w r15,  -668(r30)                # 4-byte Folded Reload
.LBB0_34:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r9, r23, r6
	add.s r14, r13, r6
	addli r6, r6, 512
	dsmadd r9, r14, r1, 0
	bneq r6, r10, .LBB0_34
# %bb.35:                               # %.thread29
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	storeli.w zero, -692(r30)               # 4-byte Folded Spill
	addli r10, zero, 4095
	addli r6, zero, 4
	unlock r22
	xsignal r1, 0
	addli r1, zero, 15
	xsignal r1, 0
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r22
	addli r1, zero, 1
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r10, zero, 2
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, zero, 19
	ew_cfg r22, zero, zero, 10
	loadli.w r9,  -764(r30)                 # 4-byte Folded Reload
	ew_cfg r22, r1, r9, 11
	lui r1, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r6, r1, 14
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	slli r1, r2, 16
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	ew_cfg zero, zero, zero, 15
	sslut r4, r23, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r22
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	loadli.w r2,  -760(r30)                 # 4-byte Folded Reload
	add.s r14, r1, r2
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	addli r1, zero, 21
	xwait r1, 0
	lock zero, r22
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 16
	ew_cfg zero, r10, zero, 2
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, r6, 19
	dsmul r14, r23, r4, 0
	ew_cfg zero, zero, zero, 19
	unlock r22
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
	slli r1, r2, 16
	loadli.w r2,  -760(r30)                 # 4-byte Folded Reload
	loadli.w r15,  -668(r30)                # 4-byte Folded Reload
	add.s r14, r1, r2
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	addli r1, zero, 3
	bneq r16, r1, .LBB0_38
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
	storeli.w r1, -692(r30)                 # 4-byte Folded Spill
	addli r1, zero, 20
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -692(r30)               # 4-byte Folded Spill
.LBB0_39:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 160 7 is_stmt 1               # parallel-rne.mlir:160:7
	addli r1, zero, 255
	.loc	1 158 7                         # parallel-rne.mlir:158:7
	xfence
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	mfence { lm, sm, gm }
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	csr_set csr5, r1
	addli r1, zero, 127
	sync_core
	storeli.w r20, -672(r30)                # 4-byte Folded Spill
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	storeli.w r19, -676(r30)                # 4-byte Folded Spill
	zext_int2long r[17:18], r1
	beq r16, zero, .LBB0_45
# %bb.40:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 196 7                         # parallel-rne.mlir:196:7
	addli r1, zero, 1
	beq r16, r1, .LBB0_73
.LBB0_41:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 231 7                         # parallel-rne.mlir:231:7
	beq r16, r22, .LBB0_101
.LBB0_42:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	loadli.w r1,  -692(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_129
.LBB0_43:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 301 7                         # parallel-rne.mlir:301:7
	addli r1, zero, 4
	beq r16, r1, .LBB0_157
.LBB0_44:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 336 7                         # parallel-rne.mlir:336:7
	addli r1, zero, 5
	beq r16, r1, .LBB0_185
	j .LBB0_213
.LBB0_45:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 168 9                         # parallel-rne.mlir:168:9
	sub.s r1, r13, r14
	addli r2, zero, 16
	zext_int2long r[9:10], zero
	setlt.u r1, r1, r2
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	storeli.w r1, -652(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_47
.LBB0_46:                               # %middle.block239
                                        #   in Loop: Header=BB0_47 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[9:10], -648(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 168 9 is_stmt 1               # parallel-rne.mlir:168:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_72
.LBB0_47:                               # %.preheader36
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_64 Depth 3
                                        #       Child Loop BB0_50 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 169 11 is_stmt 1              # parallel-rne.mlir:169:11
	loadli.w r6,  -652(r30)                 # 4-byte Folded Reload
	store.d r[9:10], -648(r30)              # 8-byte Folded Spill
	sll.d r[1:2], r[9:10], r1
	beq r6, zero, .LBB0_62
# %bb.48:                               # %scalar.ph231.preheader
                                        #   in Loop: Header=BB0_47 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_50
.LBB0_49:                               # %scalar.ph231
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	setlt.ul r10, r[19:20], r[17:18]
	.loc	1 191 13 is_stmt 1              # parallel-rne.mlir:191:13
	add.s r6, r13, r6
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	stores.w r9, 0(r6)
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	beq r10, zero, .LBB0_46
.LBB0_50:                               # %scalar.ph231
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	add.ul r[9:10], r[19:20], r[1:2]
	lui r21, 523264
	slli r6, r9, 2
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	add.s r9, r4, r6
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.s r10, r14, r6
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	loads.w r9, 0(r9)
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	loads.w r22, 0(r10)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r15, r9, r5
	lui r9, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	beq r15, r3, .LBB0_52
# %bb.51:                               # %scalar.ph231
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_52:                               # %scalar.ph231
                                        #   in Loop: Header=BB0_50 Depth=3
	add.s r10, r23, r6
	loads.w r10, 0(r10)
	and r16, r10, r5
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r16, zero, .LBB0_60
# %bb.53:                               # %scalar.ph231
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r15, zero, .LBB0_61
.LBB0_54:                               # %scalar.ph231
                                        #   in Loop: Header=BB0_50 Depth=3
	beq r16, r3, .LBB0_56
.LBB0_55:                               # %scalar.ph231
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_56:                               # %scalar.ph231
                                        #   in Loop: Header=BB0_50 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r10, zero, .LBB0_58
# %bb.57:                               # %scalar.ph231
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r22, 0
.LBB0_58:                               # %scalar.ph231
                                        #   in Loop: Header=BB0_50 Depth=3
	setlt.u r10, r3, r16
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r10, zero, .LBB0_49
# %bb.59:                               # %scalar.ph231
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_49
.LBB0_60:                               # %scalar.ph231
                                        #   in Loop: Header=BB0_50 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	beq r15, zero, .LBB0_54
.LBB0_61:                               # %scalar.ph231
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r16, r3, .LBB0_55
	j .LBB0_56
.LBB0_62:                               # %vector.body233.preheader
                                        #   in Loop: Header=BB0_47 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_64
.LBB0_63:                               # %vector.body233
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 169 11 is_stmt 1              # parallel-rne.mlir:169:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	add.s r10, r13, r24
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	seteq.d r9, r[21:22], r[7:8]
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	stores.w r16, 12(r10)
	stores.w r15, 8(r10)
	stores.w r20, 4(r10)
	stores.w r6, 0(r10)
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	bneq r9, zero, .LBB0_46
.LBB0_64:                               # %vector.body233
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	add.ul r[15:16], r[21:22], r[1:2]
	slli r24, r15, 2
	add.s r28, r23, r24
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	add.s r9, r4, r24
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	loads.w r6, 0(r28)
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	loads.w r15, 0(r9)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r6, r6, r5
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r15, r15, r5
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	seteq r16, r6, r3
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	seteq r12, r6, zero
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	seteq r20, r15, r3
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	seteq r19, r15, zero
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	max.u r6, r6, r15
	setlt.u r6, r3, r6
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r15, r16, r19
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	and r12, r12, r20
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.s r19, r14, r24
	lui r16, 523264
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	or r12, r15, r12
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	or r12, r6, r12
	lui r6, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r12, zero, .LBB0_66
# %bb.65:                               # %vector.body233
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r19)
.LBB0_66:                               # %vector.body233
                                        #   in Loop: Header=BB0_64 Depth=3
	loads.w r12, 4(r28)
	loads.w r15, 4(r9)
	and r12, r12, r5
	and r15, r15, r5
	seteq r20, r12, r3
	seteq r10, r15, zero
	seteq r11, r12, zero
	seteq r25, r15, r3
	max.u r12, r12, r15
	setlt.u r12, r3, r12
	and r10, r20, r10
	and r11, r11, r25
	lui r20, 523264
	or r10, r10, r11
	or r10, r12, r10
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r10, zero, .LBB0_68
# %bb.67:                               # %vector.body233
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_68:                               # %vector.body233
                                        #   in Loop: Header=BB0_64 Depth=3
	loads.w r10, 8(r28)
	loads.w r11, 8(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r26, r10, zero
	seteq r15, r11, zero
	seteq r25, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r26, r25
	lui r15, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r10, zero, .LBB0_70
# %bb.69:                               # %vector.body233
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 8(r19)
.LBB0_70:                               # %vector.body233
                                        #   in Loop: Header=BB0_64 Depth=3
	loads.w r10, 12(r28)
	loads.w r9, 12(r9)
	and r10, r10, r5
	and r9, r9, r5
	seteq r11, r10, r3
	seteq r12, r9, zero
	seteq r25, r9, r3
	seteq r26, r10, zero
	max.u r9, r10, r9
	setlt.u r9, r3, r9
	and r10, r11, r12
	and r11, r26, r25
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r9, zero, .LBB0_63
# %bb.71:                               # %vector.body233
                                        #   in Loop: Header=BB0_64 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 12(r19)
	j .LBB0_63
.LBB0_72:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 161 7 is_stmt 1               # parallel-rne.mlir:161:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r16
	addli r21, zero, 64
	addli r22, zero, 2
	loadli.w r19,  -676(r30)                # 4-byte Folded Reload
	loadli.w r20,  -672(r30)                # 4-byte Folded Reload
	loadli.w r15,  -668(r30)                # 4-byte Folded Reload
	.loc	1 196 7                         # parallel-rne.mlir:196:7
	addli r1, zero, 1
	bneq r16, r1, .LBB0_41
.LBB0_73:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 203 9 is_stmt 1               # parallel-rne.mlir:203:9
	sub.s r1, r13, r14
	setlt.u r1, r1, r2
	zext_int2long r[9:10], r2
	.loc	1 196 7                         # parallel-rne.mlir:196:7
	storeli.w r1, -652(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_75
.LBB0_74:                               # %middle.block224
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[9:10], -648(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 203 9 is_stmt 1               # parallel-rne.mlir:203:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_100
.LBB0_75:                               # %.preheader35
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_78 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	loadli.w r6,  -652(r30)                 # 4-byte Folded Reload
	store.d r[9:10], -648(r30)              # 8-byte Folded Spill
	sll.d r[1:2], r[9:10], r1
	beq r6, zero, .LBB0_90
# %bb.76:                               # %scalar.ph216.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_78
.LBB0_77:                               # %scalar.ph216
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	setlt.ul r10, r[19:20], r[17:18]
	.loc	1 226 13 is_stmt 1              # parallel-rne.mlir:226:13
	add.s r6, r13, r6
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 226 13                        # parallel-rne.mlir:226:13
	stores.w r9, 0(r6)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	beq r10, zero, .LBB0_74
.LBB0_78:                               # %scalar.ph216
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[9:10], r[19:20], r[1:2]
	lui r21, 523264
	slli r6, r9, 2
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	add.s r9, r4, r6
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.s r10, r14, r6
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	loads.w r9, 0(r9)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	loads.w r22, 0(r10)
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	and r15, r9, r5
	lui r9, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	beq r15, r3, .LBB0_80
# %bb.79:                               # %scalar.ph216
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_80:                               # %scalar.ph216
                                        #   in Loop: Header=BB0_78 Depth=3
	add.s r10, r23, r6
	loads.w r10, 0(r10)
	and r16, r10, r5
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r16, zero, .LBB0_88
# %bb.81:                               # %scalar.ph216
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r15, zero, .LBB0_89
.LBB0_82:                               # %scalar.ph216
                                        #   in Loop: Header=BB0_78 Depth=3
	beq r16, r3, .LBB0_84
.LBB0_83:                               # %scalar.ph216
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_84:                               # %scalar.ph216
                                        #   in Loop: Header=BB0_78 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r10, zero, .LBB0_86
# %bb.85:                               # %scalar.ph216
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r22, 0
.LBB0_86:                               # %scalar.ph216
                                        #   in Loop: Header=BB0_78 Depth=3
	setlt.u r10, r3, r16
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r10, zero, .LBB0_77
# %bb.87:                               # %scalar.ph216
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_77
.LBB0_88:                               # %scalar.ph216
                                        #   in Loop: Header=BB0_78 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	beq r15, zero, .LBB0_82
.LBB0_89:                               # %scalar.ph216
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r16, r3, .LBB0_83
	j .LBB0_84
.LBB0_90:                               # %vector.body218.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_92
.LBB0_91:                               # %vector.body218
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 226 13                        # parallel-rne.mlir:226:13
	add.s r10, r13, r24
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	seteq.d r9, r[21:22], r[7:8]
	.loc	1 226 13                        # parallel-rne.mlir:226:13
	stores.w r16, 12(r10)
	stores.w r15, 8(r10)
	stores.w r20, 4(r10)
	stores.w r6, 0(r10)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	bneq r9, zero, .LBB0_74
.LBB0_92:                               # %vector.body218
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[9:10], r[21:22], r[1:2]
	slli r24, r9, 2
	add.s r28, r23, r24
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	add.s r9, r4, r24
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.s r19, r14, r24
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	loads.w r6, 0(r28)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	loads.w r10, 0(r9)
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	and r6, r6, r5
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	and r10, r10, r5
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	seteq r11, r6, r3
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	seteq r16, r6, zero
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	seteq r12, r10, zero
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	seteq r15, r10, r3
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	max.u r6, r6, r10
	setlt.u r6, r3, r6
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	and r10, r11, r12
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r11, r16, r15
	lui r16, 523264
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	or r10, r10, r11
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	or r10, r6, r10
	lui r6, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r10, zero, .LBB0_94
# %bb.93:                               # %vector.body218
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r19)
.LBB0_94:                               # %vector.body218
                                        #   in Loop: Header=BB0_92 Depth=3
	loads.w r10, 4(r28)
	loads.w r11, 4(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r25, r10, zero
	seteq r15, r11, zero
	seteq r20, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r25, r20
	lui r20, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r10, zero, .LBB0_96
# %bb.95:                               # %vector.body218
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_96:                               # %vector.body218
                                        #   in Loop: Header=BB0_92 Depth=3
	loads.w r10, 8(r28)
	loads.w r11, 8(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r26, r10, zero
	seteq r15, r11, zero
	seteq r25, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r26, r25
	lui r15, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r10, zero, .LBB0_98
# %bb.97:                               # %vector.body218
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 8(r19)
.LBB0_98:                               # %vector.body218
                                        #   in Loop: Header=BB0_92 Depth=3
	loads.w r10, 12(r28)
	loads.w r9, 12(r9)
	and r10, r10, r5
	and r9, r9, r5
	seteq r11, r10, r3
	seteq r12, r9, zero
	seteq r25, r9, r3
	seteq r26, r10, zero
	max.u r9, r10, r9
	setlt.u r9, r3, r9
	and r10, r11, r12
	and r11, r26, r25
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r9, zero, .LBB0_91
# %bb.99:                               # %vector.body218
                                        #   in Loop: Header=BB0_92 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 12(r19)
	j .LBB0_91
.LBB0_100:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 196 7 is_stmt 1               # parallel-rne.mlir:196:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r16
	addli r21, zero, 64
	addli r22, zero, 2
	loadli.w r19,  -676(r30)                # 4-byte Folded Reload
	loadli.w r20,  -672(r30)                # 4-byte Folded Reload
	loadli.w r15,  -668(r30)                # 4-byte Folded Reload
	.loc	1 231 7                         # parallel-rne.mlir:231:7
	bneq r16, r22, .LBB0_42
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 238 9                         # parallel-rne.mlir:238:9
	sub.s r1, r13, r14
	addli r2, zero, 16
	.loc	1 231 7                         # parallel-rne.mlir:231:7
	xfence
	zext_int2long r[9:10], r27
	mfence { lm, sm, gm }
	setlt.u r1, r1, r2
	addli r27, r1, 0
	j .LBB0_103
.LBB0_102:                              # %middle.block209
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[9:10], -648(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 238 9 is_stmt 1               # parallel-rne.mlir:238:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_128
.LBB0_103:                              # %.preheader34
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_120 Depth 3
                                        #       Child Loop BB0_106 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[9:10], -648(r30)              # 8-byte Folded Spill
	sll.d r[1:2], r[9:10], r1
	.loc	1 239 11 is_stmt 1              # parallel-rne.mlir:239:11
	beq r27, zero, .LBB0_118
# %bb.104:                              # %scalar.ph201.preheader
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_106
.LBB0_105:                              # %scalar.ph201
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	setlt.ul r10, r[19:20], r[17:18]
	.loc	1 261 13 is_stmt 1              # parallel-rne.mlir:261:13
	add.s r6, r13, r6
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	stores.w r9, 0(r6)
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	beq r10, zero, .LBB0_102
.LBB0_106:                              # %scalar.ph201
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	add.ul r[9:10], r[19:20], r[1:2]
	lui r21, 523264
	slli r6, r9, 2
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	add.s r9, r4, r6
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	add.s r10, r14, r6
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	loads.w r9, 0(r9)
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	loads.w r22, 0(r10)
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	and r15, r9, r5
	lui r9, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r15, r3, .LBB0_108
# %bb.107:                              # %scalar.ph201
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_108:                              # %scalar.ph201
                                        #   in Loop: Header=BB0_106 Depth=3
	add.s r10, r23, r6
	loads.w r10, 0(r10)
	and r16, r10, r5
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r16, zero, .LBB0_116
# %bb.109:                              # %scalar.ph201
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r15, zero, .LBB0_117
.LBB0_110:                              # %scalar.ph201
                                        #   in Loop: Header=BB0_106 Depth=3
	beq r16, r3, .LBB0_112
.LBB0_111:                              # %scalar.ph201
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_112:                              # %scalar.ph201
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r10, zero, .LBB0_114
# %bb.113:                              # %scalar.ph201
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r22, 0
.LBB0_114:                              # %scalar.ph201
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.u r10, r3, r16
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r10, zero, .LBB0_105
# %bb.115:                              # %scalar.ph201
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_105
.LBB0_116:                              # %scalar.ph201
                                        #   in Loop: Header=BB0_106 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r15, zero, .LBB0_110
.LBB0_117:                              # %scalar.ph201
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r16, r3, .LBB0_111
	j .LBB0_112
.LBB0_118:                              # %vector.body203.preheader
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_120
.LBB0_119:                              # %vector.body203
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 239 11 is_stmt 1              # parallel-rne.mlir:239:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	add.s r10, r13, r24
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	seteq.d r9, r[21:22], r[7:8]
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	stores.w r16, 12(r10)
	stores.w r15, 8(r10)
	stores.w r20, 4(r10)
	stores.w r6, 0(r10)
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	bneq r9, zero, .LBB0_102
.LBB0_120:                              # %vector.body203
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	add.ul r[9:10], r[21:22], r[1:2]
	slli r24, r9, 2
	add.s r28, r23, r24
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	add.s r9, r4, r24
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	add.s r19, r14, r24
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	loads.w r6, 0(r28)
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	loads.w r10, 0(r9)
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	and r6, r6, r5
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	and r10, r10, r5
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	seteq r11, r6, r3
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	seteq r16, r6, zero
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	seteq r12, r10, zero
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	seteq r15, r10, r3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	max.u r6, r6, r10
	setlt.u r6, r3, r6
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	and r10, r11, r12
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	and r11, r16, r15
	lui r16, 523264
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	or r10, r10, r11
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	or r10, r6, r10
	lui r6, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r10, zero, .LBB0_122
# %bb.121:                              # %vector.body203
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r19)
.LBB0_122:                              # %vector.body203
                                        #   in Loop: Header=BB0_120 Depth=3
	loads.w r10, 4(r28)
	loads.w r11, 4(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r25, r10, zero
	seteq r15, r11, zero
	seteq r20, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r25, r20
	lui r20, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r10, zero, .LBB0_124
# %bb.123:                              # %vector.body203
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_124:                              # %vector.body203
                                        #   in Loop: Header=BB0_120 Depth=3
	loads.w r10, 8(r28)
	loads.w r11, 8(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r26, r10, zero
	seteq r15, r11, zero
	seteq r25, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r26, r25
	lui r15, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r10, zero, .LBB0_126
# %bb.125:                              # %vector.body203
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 8(r19)
.LBB0_126:                              # %vector.body203
                                        #   in Loop: Header=BB0_120 Depth=3
	loads.w r10, 12(r28)
	loads.w r9, 12(r9)
	and r10, r10, r5
	and r9, r9, r5
	seteq r11, r10, r3
	seteq r12, r9, zero
	seteq r25, r9, r3
	seteq r26, r10, zero
	max.u r9, r10, r9
	setlt.u r9, r3, r9
	and r10, r11, r12
	and r11, r26, r25
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r9, zero, .LBB0_119
# %bb.127:                              # %vector.body203
                                        #   in Loop: Header=BB0_120 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 12(r19)
	j .LBB0_119
.LBB0_128:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 231 7 is_stmt 1               # parallel-rne.mlir:231:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r16
	addli r21, zero, 64
	addli r22, zero, 2
	loadli.w r19,  -676(r30)                # 4-byte Folded Reload
	loadli.w r20,  -672(r30)                # 4-byte Folded Reload
	loadli.w r15,  -668(r30)                # 4-byte Folded Reload
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	loadli.w r1,  -692(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_43
.LBB0_129:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 273 9                         # parallel-rne.mlir:273:9
	sub.s r1, r13, r14
	addli r2, zero, 16
	addli r27, r19, 0
	setlt.u r1, r1, r2
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	storeli.w r1, -652(r30)                 # 4-byte Folded Spill
	addli r1, zero, 48
	xfence
	zext_int2long r[9:10], r1
	mfence { lm, sm, gm }
	j .LBB0_131
.LBB0_130:                              # %middle.block194
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[9:10], -648(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 273 9 is_stmt 1               # parallel-rne.mlir:273:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_156
.LBB0_131:                              # %.preheader33
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_148 Depth 3
                                        #       Child Loop BB0_134 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	loadli.w r6,  -652(r30)                 # 4-byte Folded Reload
	store.d r[9:10], -648(r30)              # 8-byte Folded Spill
	sll.d r[1:2], r[9:10], r1
	beq r6, zero, .LBB0_146
# %bb.132:                              # %scalar.ph186.preheader
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_134
.LBB0_133:                              # %scalar.ph186
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	setlt.ul r10, r[19:20], r[17:18]
	.loc	1 296 13 is_stmt 1              # parallel-rne.mlir:296:13
	add.s r6, r13, r6
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	stores.w r9, 0(r6)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	beq r10, zero, .LBB0_130
.LBB0_134:                              # %scalar.ph186
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[9:10], r[19:20], r[1:2]
	lui r21, 523264
	slli r6, r9, 2
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.s r9, r4, r6
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	add.s r10, r14, r6
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	loads.w r9, 0(r9)
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	loads.w r22, 0(r10)
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	and r15, r9, r5
	lui r9, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r15, r3, .LBB0_136
# %bb.135:                              # %scalar.ph186
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_136:                              # %scalar.ph186
                                        #   in Loop: Header=BB0_134 Depth=3
	add.s r10, r23, r6
	loads.w r10, 0(r10)
	and r16, r10, r5
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r16, zero, .LBB0_144
# %bb.137:                              # %scalar.ph186
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r15, zero, .LBB0_145
.LBB0_138:                              # %scalar.ph186
                                        #   in Loop: Header=BB0_134 Depth=3
	beq r16, r3, .LBB0_140
.LBB0_139:                              # %scalar.ph186
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_140:                              # %scalar.ph186
                                        #   in Loop: Header=BB0_134 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r10, zero, .LBB0_142
# %bb.141:                              # %scalar.ph186
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r22, 0
.LBB0_142:                              # %scalar.ph186
                                        #   in Loop: Header=BB0_134 Depth=3
	setlt.u r10, r3, r16
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r10, zero, .LBB0_133
# %bb.143:                              # %scalar.ph186
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_133
.LBB0_144:                              # %scalar.ph186
                                        #   in Loop: Header=BB0_134 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r15, zero, .LBB0_138
.LBB0_145:                              # %scalar.ph186
                                        #   in Loop: Header=BB0_134 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r16, r3, .LBB0_139
	j .LBB0_140
.LBB0_146:                              # %vector.body188.preheader
                                        #   in Loop: Header=BB0_131 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_148
.LBB0_147:                              # %vector.body188
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	add.s r10, r13, r24
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	seteq.d r9, r[21:22], r[7:8]
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	stores.w r16, 12(r10)
	stores.w r15, 8(r10)
	stores.w r20, 4(r10)
	stores.w r6, 0(r10)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	bneq r9, zero, .LBB0_130
.LBB0_148:                              # %vector.body188
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[9:10], r[21:22], r[1:2]
	slli r24, r9, 2
	add.s r28, r23, r24
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.s r9, r4, r24
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	add.s r19, r14, r24
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	loads.w r6, 0(r28)
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	loads.w r10, 0(r9)
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	and r6, r6, r5
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	and r10, r10, r5
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	seteq r11, r6, r3
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	seteq r16, r6, zero
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	seteq r12, r10, zero
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	seteq r15, r10, r3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	max.u r6, r6, r10
	setlt.u r6, r3, r6
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	and r10, r11, r12
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r11, r16, r15
	lui r16, 523264
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	or r10, r10, r11
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	or r10, r6, r10
	lui r6, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r10, zero, .LBB0_150
# %bb.149:                              # %vector.body188
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r19)
.LBB0_150:                              # %vector.body188
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r10, 4(r28)
	loads.w r11, 4(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r25, r10, zero
	seteq r15, r11, zero
	seteq r20, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r25, r20
	lui r20, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r10, zero, .LBB0_152
# %bb.151:                              # %vector.body188
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_152:                              # %vector.body188
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r10, 8(r28)
	loads.w r11, 8(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r26, r10, zero
	seteq r15, r11, zero
	seteq r25, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r26, r25
	lui r15, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r10, zero, .LBB0_154
# %bb.153:                              # %vector.body188
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 8(r19)
.LBB0_154:                              # %vector.body188
                                        #   in Loop: Header=BB0_148 Depth=3
	loads.w r10, 12(r28)
	loads.w r9, 12(r9)
	and r10, r10, r5
	and r9, r9, r5
	seteq r11, r10, r3
	seteq r12, r9, zero
	seteq r25, r9, r3
	seteq r26, r10, zero
	max.u r9, r10, r9
	setlt.u r9, r3, r9
	and r10, r11, r12
	and r11, r26, r25
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r9, zero, .LBB0_147
# %bb.155:                              # %vector.body188
                                        #   in Loop: Header=BB0_148 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 12(r19)
	j .LBB0_147
.LBB0_156:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 266 7 is_stmt 1               # parallel-rne.mlir:266:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r16
	addli r19, r27, 0
	addli r21, zero, 64
	addli r22, zero, 2
	loadli.w r20,  -672(r30)                # 4-byte Folded Reload
	loadli.w r15,  -668(r30)                # 4-byte Folded Reload
	.loc	1 301 7                         # parallel-rne.mlir:301:7
	addli r1, zero, 4
	bneq r16, r1, .LBB0_44
.LBB0_157:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 308 9                         # parallel-rne.mlir:308:9
	sub.s r1, r13, r14
	addli r2, zero, 16
	addli r27, r19, 0
	zext_int2long r[9:10], r21
	setlt.u r1, r1, r2
	.loc	1 301 7                         # parallel-rne.mlir:301:7
	storeli.w r1, -652(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_159
.LBB0_158:                              # %middle.block179
                                        #   in Loop: Header=BB0_159 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 79
	load.d r[9:10], -648(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 308 9 is_stmt 1               # parallel-rne.mlir:308:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_184
.LBB0_159:                              # %.preheader32
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_176 Depth 3
                                        #       Child Loop BB0_162 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 309 11 is_stmt 1              # parallel-rne.mlir:309:11
	loadli.w r6,  -652(r30)                 # 4-byte Folded Reload
	store.d r[9:10], -648(r30)              # 8-byte Folded Spill
	sll.d r[1:2], r[9:10], r1
	beq r6, zero, .LBB0_174
# %bb.160:                              # %scalar.ph171.preheader
                                        #   in Loop: Header=BB0_159 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_162
.LBB0_161:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	setlt.ul r10, r[19:20], r[17:18]
	.loc	1 331 13 is_stmt 1              # parallel-rne.mlir:331:13
	add.s r6, r13, r6
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 331 13                        # parallel-rne.mlir:331:13
	stores.w r9, 0(r6)
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	beq r10, zero, .LBB0_158
.LBB0_162:                              # %scalar.ph171
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_159 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	add.ul r[9:10], r[19:20], r[1:2]
	lui r21, 523264
	slli r6, r9, 2
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	add.s r9, r4, r6
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.s r10, r14, r6
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	loads.w r9, 0(r9)
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	loads.w r22, 0(r10)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r15, r9, r5
	lui r9, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	beq r15, r3, .LBB0_164
# %bb.163:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_164:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_162 Depth=3
	add.s r10, r23, r6
	loads.w r10, 0(r10)
	and r16, r10, r5
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r16, zero, .LBB0_172
# %bb.165:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r15, zero, .LBB0_173
.LBB0_166:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_162 Depth=3
	beq r16, r3, .LBB0_168
.LBB0_167:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_168:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_162 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r10, zero, .LBB0_170
# %bb.169:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r22, 0
.LBB0_170:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_162 Depth=3
	setlt.u r10, r3, r16
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r10, zero, .LBB0_161
# %bb.171:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_161
.LBB0_172:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_162 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	beq r15, zero, .LBB0_166
.LBB0_173:                              # %scalar.ph171
                                        #   in Loop: Header=BB0_162 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r16, r3, .LBB0_167
	j .LBB0_168
.LBB0_174:                              # %vector.body173.preheader
                                        #   in Loop: Header=BB0_159 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_176
.LBB0_175:                              # %vector.body173
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 309 11 is_stmt 1              # parallel-rne.mlir:309:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 331 13                        # parallel-rne.mlir:331:13
	add.s r10, r13, r24
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	seteq.d r9, r[21:22], r[7:8]
	.loc	1 331 13                        # parallel-rne.mlir:331:13
	stores.w r16, 12(r10)
	stores.w r15, 8(r10)
	stores.w r20, 4(r10)
	stores.w r6, 0(r10)
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	bneq r9, zero, .LBB0_158
.LBB0_176:                              # %vector.body173
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_159 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	add.ul r[9:10], r[21:22], r[1:2]
	slli r24, r9, 2
	add.s r28, r23, r24
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	add.s r9, r4, r24
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.s r19, r14, r24
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	loads.w r6, 0(r28)
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	loads.w r10, 0(r9)
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	and r6, r6, r5
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r10, r10, r5
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	seteq r11, r6, r3
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	seteq r16, r6, zero
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	seteq r12, r10, zero
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	seteq r15, r10, r3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	max.u r6, r6, r10
	setlt.u r6, r3, r6
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	and r10, r11, r12
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r11, r16, r15
	lui r16, 523264
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	or r10, r10, r11
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	or r10, r6, r10
	lui r6, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r10, zero, .LBB0_178
# %bb.177:                              # %vector.body173
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r19)
.LBB0_178:                              # %vector.body173
                                        #   in Loop: Header=BB0_176 Depth=3
	loads.w r10, 4(r28)
	loads.w r11, 4(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r25, r10, zero
	seteq r15, r11, zero
	seteq r20, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r25, r20
	lui r20, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r10, zero, .LBB0_180
# %bb.179:                              # %vector.body173
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_180:                              # %vector.body173
                                        #   in Loop: Header=BB0_176 Depth=3
	loads.w r10, 8(r28)
	loads.w r11, 8(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r26, r10, zero
	seteq r15, r11, zero
	seteq r25, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r26, r25
	lui r15, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r10, zero, .LBB0_182
# %bb.181:                              # %vector.body173
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 8(r19)
.LBB0_182:                              # %vector.body173
                                        #   in Loop: Header=BB0_176 Depth=3
	loads.w r10, 12(r28)
	loads.w r9, 12(r9)
	and r10, r10, r5
	and r9, r9, r5
	seteq r11, r10, r3
	seteq r12, r9, zero
	seteq r25, r9, r3
	seteq r26, r10, zero
	max.u r9, r10, r9
	setlt.u r9, r3, r9
	and r10, r11, r12
	and r11, r26, r25
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r9, zero, .LBB0_175
# %bb.183:                              # %vector.body173
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 12(r19)
	j .LBB0_175
.LBB0_184:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 301 7 is_stmt 1               # parallel-rne.mlir:301:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r16
	addli r19, r27, 0
	addli r21, zero, 64
	addli r22, zero, 2
	loadli.w r20,  -672(r30)                # 4-byte Folded Reload
	loadli.w r15,  -668(r30)                # 4-byte Folded Reload
	.loc	1 336 7                         # parallel-rne.mlir:336:7
	addli r1, zero, 5
	bneq r16, r1, .LBB0_213
.LBB0_185:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 343 9                         # parallel-rne.mlir:343:9
	sub.s r1, r13, r14
	addli r2, zero, 16
	addli r27, r19, 0
	setlt.u r1, r1, r2
	.loc	1 336 7                         # parallel-rne.mlir:336:7
	storeli.w r1, -652(r30)                 # 4-byte Folded Spill
	addli r1, zero, 80
	xfence
	zext_int2long r[9:10], r1
	mfence { lm, sm, gm }
	j .LBB0_187
.LBB0_186:                              # %middle.block164
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 95
	load.d r[9:10], -648(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 343 9 is_stmt 1               # parallel-rne.mlir:343:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_212
.LBB0_187:                              # %.preheader31
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_190 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 344 11 is_stmt 1              # parallel-rne.mlir:344:11
	loadli.w r6,  -652(r30)                 # 4-byte Folded Reload
	store.d r[9:10], -648(r30)              # 8-byte Folded Spill
	sll.d r[1:2], r[9:10], r1
	beq r6, zero, .LBB0_202
# %bb.188:                              # %scalar.ph156.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_190
.LBB0_189:                              # %scalar.ph156
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	setlt.ul r10, r[19:20], r[17:18]
	.loc	1 366 13 is_stmt 1              # parallel-rne.mlir:366:13
	add.s r6, r13, r6
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	stores.w r9, 0(r6)
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	beq r10, zero, .LBB0_186
.LBB0_190:                              # %scalar.ph156
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	add.ul r[9:10], r[19:20], r[1:2]
	lui r21, 523264
	slli r6, r9, 2
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	add.s r9, r4, r6
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	add.s r10, r14, r6
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	loads.w r9, 0(r9)
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	loads.w r22, 0(r10)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r15, r9, r5
	lui r9, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r15, r3, .LBB0_192
# %bb.191:                              # %scalar.ph156
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_192:                              # %scalar.ph156
                                        #   in Loop: Header=BB0_190 Depth=3
	add.s r10, r23, r6
	loads.w r10, 0(r10)
	and r16, r10, r5
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r16, zero, .LBB0_200
# %bb.193:                              # %scalar.ph156
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r15, zero, .LBB0_201
.LBB0_194:                              # %scalar.ph156
                                        #   in Loop: Header=BB0_190 Depth=3
	beq r16, r3, .LBB0_196
.LBB0_195:                              # %scalar.ph156
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_196:                              # %scalar.ph156
                                        #   in Loop: Header=BB0_190 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r10, zero, .LBB0_198
# %bb.197:                              # %scalar.ph156
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r22, 0
.LBB0_198:                              # %scalar.ph156
                                        #   in Loop: Header=BB0_190 Depth=3
	setlt.u r10, r3, r16
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r10, zero, .LBB0_189
# %bb.199:                              # %scalar.ph156
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_189
.LBB0_200:                              # %scalar.ph156
                                        #   in Loop: Header=BB0_190 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r15, zero, .LBB0_194
.LBB0_201:                              # %scalar.ph156
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r16, r3, .LBB0_195
	j .LBB0_196
.LBB0_202:                              # %vector.body158.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_204
.LBB0_203:                              # %vector.body158
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 344 11 is_stmt 1              # parallel-rne.mlir:344:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	add.s r10, r13, r24
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	seteq.d r9, r[21:22], r[7:8]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	stores.w r16, 12(r10)
	stores.w r15, 8(r10)
	stores.w r20, 4(r10)
	stores.w r6, 0(r10)
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	bneq r9, zero, .LBB0_186
.LBB0_204:                              # %vector.body158
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	add.ul r[9:10], r[21:22], r[1:2]
	slli r24, r9, 2
	add.s r28, r23, r24
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	add.s r9, r4, r24
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	add.s r19, r14, r24
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	loads.w r6, 0(r28)
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	loads.w r10, 0(r9)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r6, r6, r5
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r10, r10, r5
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	seteq r11, r6, r3
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	seteq r16, r6, zero
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	seteq r12, r10, zero
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	seteq r15, r10, r3
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	max.u r6, r6, r10
	setlt.u r6, r3, r6
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	and r10, r11, r12
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	and r11, r16, r15
	lui r16, 523264
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	or r10, r10, r11
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	or r10, r6, r10
	lui r6, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r10, zero, .LBB0_206
# %bb.205:                              # %vector.body158
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r19)
.LBB0_206:                              # %vector.body158
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r10, 4(r28)
	loads.w r11, 4(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r25, r10, zero
	seteq r15, r11, zero
	seteq r20, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r25, r20
	lui r20, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r10, zero, .LBB0_208
# %bb.207:                              # %vector.body158
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_208:                              # %vector.body158
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r10, 8(r28)
	loads.w r11, 8(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r26, r10, zero
	seteq r15, r11, zero
	seteq r25, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r26, r25
	lui r15, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r10, zero, .LBB0_210
# %bb.209:                              # %vector.body158
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 8(r19)
.LBB0_210:                              # %vector.body158
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r10, 12(r28)
	loads.w r9, 12(r9)
	and r10, r10, r5
	and r9, r9, r5
	seteq r11, r10, r3
	seteq r12, r9, zero
	seteq r25, r9, r3
	seteq r26, r10, zero
	max.u r9, r10, r9
	setlt.u r9, r3, r9
	and r10, r11, r12
	and r11, r26, r25
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r9, zero, .LBB0_203
# %bb.211:                              # %vector.body158
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 12(r19)
	j .LBB0_203
.LBB0_212:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 336 7 is_stmt 1               # parallel-rne.mlir:336:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r16
	addli r19, r27, 0
	addli r21, zero, 64
	addli r22, zero, 2
	loadli.w r20,  -672(r30)                # 4-byte Folded Reload
	loadli.w r15,  -668(r30)                # 4-byte Folded Reload
.LBB0_213:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	zext_int2long r[1:2], zero
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	store.d r[1:2], -664(r30)               # 8-byte Folded Spill
	addli r1, zero, 7
	beq r16, r1, .LBB0_242
# %bb.214:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 6
	bneq r16, r1, .LBB0_270
# %bb.215:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 378 9                         # parallel-rne.mlir:378:9
	sub.s r1, r13, r14
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	storeli.w r1, -652(r30)                 # 4-byte Folded Spill
	addli r1, zero, 96
	xfence
	zext_int2long r[9:10], r1
	mfence { lm, sm, gm }
	j .LBB0_217
.LBB0_216:                              # %middle.block
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 111
	load.d r[9:10], -648(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 378 9 is_stmt 1               # parallel-rne.mlir:378:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_269
.LBB0_217:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_234 Depth 3
                                        #       Child Loop BB0_220 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 379 11 is_stmt 1              # parallel-rne.mlir:379:11
	loadli.w r6,  -652(r30)                 # 4-byte Folded Reload
	store.d r[9:10], -648(r30)              # 8-byte Folded Spill
	sll.d r[1:2], r[9:10], r1
	beq r6, zero, .LBB0_232
# %bb.218:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_220
.LBB0_219:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	setlt.ul r10, r[19:20], r[17:18]
	.loc	1 401 13 is_stmt 1              # parallel-rne.mlir:401:13
	add.s r6, r13, r6
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 401 13                        # parallel-rne.mlir:401:13
	stores.w r9, 0(r6)
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	beq r10, zero, .LBB0_216
.LBB0_220:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_217 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	add.ul r[9:10], r[19:20], r[1:2]
	lui r21, 523264
	slli r6, r9, 2
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	add.s r9, r4, r6
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	add.s r10, r14, r6
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	loads.w r9, 0(r9)
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	loads.w r22, 0(r10)
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	and r15, r9, r5
	lui r9, 523264
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	beq r15, r3, .LBB0_222
# %bb.221:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_222:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	add.s r10, r23, r6
	loads.w r10, 0(r10)
	and r16, r10, r5
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r16, zero, .LBB0_230
# %bb.223:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r15, zero, .LBB0_231
.LBB0_224:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	beq r16, r3, .LBB0_226
.LBB0_225:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_226:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r10, zero, .LBB0_228
# %bb.227:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r22, 0
.LBB0_228:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	setlt.u r10, r3, r16
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r10, zero, .LBB0_219
# %bb.229:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_219
.LBB0_230:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	beq r15, zero, .LBB0_224
.LBB0_231:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r16, r3, .LBB0_225
	j .LBB0_226
.LBB0_232:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	load.d r[21:22], -664(r30)              # 8-byte Folded Reload
	j .LBB0_234
.LBB0_233:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 379 11 is_stmt 1              # parallel-rne.mlir:379:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 401 13                        # parallel-rne.mlir:401:13
	add.s r10, r13, r26
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	seteq.d r9, r[21:22], r[7:8]
	.loc	1 401 13                        # parallel-rne.mlir:401:13
	stores.w r16, 12(r10)
	stores.w r15, 8(r10)
	stores.w r20, 4(r10)
	stores.w r6, 0(r10)
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	bneq r9, zero, .LBB0_216
.LBB0_234:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_217 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	add.ul r[9:10], r[21:22], r[1:2]
	slli r26, r9, 2
	add.s r28, r23, r26
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	add.s r9, r4, r26
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	add.s r19, r14, r26
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	loads.w r6, 0(r28)
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	loads.w r10, 0(r9)
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	and r6, r6, r5
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	and r10, r10, r5
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	seteq r11, r6, r3
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	seteq r16, r6, zero
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	seteq r12, r10, zero
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	seteq r15, r10, r3
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	max.u r6, r6, r10
	setlt.u r6, r3, r6
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	and r10, r11, r12
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	and r11, r16, r15
	lui r16, 523264
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	or r10, r10, r11
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	or r10, r6, r10
	lui r6, 523264
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r10, zero, .LBB0_236
# %bb.235:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r19)
.LBB0_236:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r10, 4(r28)
	loads.w r11, 4(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r27, r10, zero
	seteq r15, r11, zero
	seteq r20, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r27, r20
	lui r20, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r10, zero, .LBB0_238
# %bb.237:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_238:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r10, 8(r28)
	loads.w r11, 8(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r24, r10, zero
	seteq r15, r11, zero
	seteq r27, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r24, r27
	lui r15, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r10, zero, .LBB0_240
# %bb.239:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 8(r19)
.LBB0_240:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r10, 12(r28)
	loads.w r9, 12(r9)
	and r10, r10, r5
	and r9, r9, r5
	seteq r11, r10, r3
	seteq r12, r9, zero
	seteq r24, r9, r3
	seteq r25, r10, zero
	max.u r9, r10, r9
	setlt.u r9, r3, r9
	and r10, r11, r12
	and r11, r25, r24
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r9, zero, .LBB0_233
# %bb.241:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 12(r19)
	j .LBB0_233
.LBB0_242:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 413 9 is_stmt 1               # parallel-rne.mlir:413:9
	sub.s r1, r13, r14
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 406 7                         # parallel-rne.mlir:406:7
	storeli.w r1, -652(r30)                 # 4-byte Folded Spill
	addli r1, zero, 112
	xfence
	zext_int2long r[9:10], r1
	mfence { lm, sm, gm }
	j .LBB0_244
.LBB0_243:                              # %middle.block149
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[9:10], -648(r30)               # 8-byte Folded Reload
	.loc	1 413 9 is_stmt 1               # parallel-rne.mlir:413:9
	setlt.ul r1, r[9:10], r[17:18]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_269
.LBB0_244:                              # %.preheader30
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_261 Depth 3
                                        #       Child Loop BB0_247 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	.loc	1 414 11 is_stmt 1              # parallel-rne.mlir:414:11
	loadli.w r6,  -652(r30)                 # 4-byte Folded Reload
	store.d r[9:10], -648(r30)              # 8-byte Folded Spill
	sll.d r[1:2], r[9:10], r1
	beq r6, zero, .LBB0_259
# %bb.245:                              # %scalar.ph141.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[19:20], zero
	j .LBB0_247
.LBB0_246:                              # %scalar.ph141
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	setlt.ul r10, r[19:20], r[17:18]
	.loc	1 436 13 is_stmt 1              # parallel-rne.mlir:436:13
	add.s r6, r13, r6
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	addli.d r[19:20], r[19:20], 1
	.loc	1 436 13                        # parallel-rne.mlir:436:13
	stores.w r9, 0(r6)
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	beq r10, zero, .LBB0_243
.LBB0_247:                              # %scalar.ph141
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	add.ul r[9:10], r[19:20], r[1:2]
	lui r21, 523264
	slli r6, r9, 2
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	add.s r9, r4, r6
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	add.s r10, r14, r6
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	loads.w r9, 0(r9)
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	loads.w r22, 0(r10)
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	and r15, r9, r5
	lui r9, 523264
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	beq r15, r3, .LBB0_249
# %bb.248:                              # %scalar.ph141
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_249:                              # %scalar.ph141
                                        #   in Loop: Header=BB0_247 Depth=3
	add.s r10, r23, r6
	loads.w r10, 0(r10)
	and r16, r10, r5
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r16, zero, .LBB0_257
# %bb.250:                              # %scalar.ph141
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r22, 523264
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r15, zero, .LBB0_258
.LBB0_251:                              # %scalar.ph141
                                        #   in Loop: Header=BB0_247 Depth=3
	beq r16, r3, .LBB0_253
.LBB0_252:                              # %scalar.ph141
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_253:                              # %scalar.ph141
                                        #   in Loop: Header=BB0_247 Depth=3
	setlt.u r10, r3, r15
	lui r15, 523264
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r10, zero, .LBB0_255
# %bb.254:                              # %scalar.ph141
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r22, 0
.LBB0_255:                              # %scalar.ph141
                                        #   in Loop: Header=BB0_247 Depth=3
	setlt.u r10, r3, r16
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r10, zero, .LBB0_246
# %bb.256:                              # %scalar.ph141
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r15, 0
	j .LBB0_246
.LBB0_257:                              # %scalar.ph141
                                        #   in Loop: Header=BB0_247 Depth=3
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	beq r15, zero, .LBB0_251
.LBB0_258:                              # %scalar.ph141
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r16, r3, .LBB0_252
	j .LBB0_253
.LBB0_259:                              # %vector.body143.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[21:22], zero
	j .LBB0_261
.LBB0_260:                              # %vector.body143
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 414 11 is_stmt 1              # parallel-rne.mlir:414:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 436 13                        # parallel-rne.mlir:436:13
	add.s r10, r13, r26
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	seteq.d r9, r[21:22], r[7:8]
	.loc	1 436 13                        # parallel-rne.mlir:436:13
	stores.w r16, 12(r10)
	stores.w r15, 8(r10)
	stores.w r20, 4(r10)
	stores.w r6, 0(r10)
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	bneq r9, zero, .LBB0_243
.LBB0_261:                              # %vector.body143
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	add.ul r[9:10], r[21:22], r[1:2]
	slli r26, r9, 2
	add.s r28, r23, r26
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	add.s r9, r4, r26
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	add.s r19, r14, r26
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	loads.w r6, 0(r28)
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	loads.w r10, 0(r9)
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	and r6, r6, r5
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	and r10, r10, r5
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	seteq r11, r6, r3
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	seteq r16, r6, zero
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	seteq r12, r10, zero
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	seteq r15, r10, r3
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	max.u r6, r6, r10
	setlt.u r6, r3, r6
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	and r10, r11, r12
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	and r11, r16, r15
	lui r16, 523264
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	or r10, r10, r11
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	or r10, r6, r10
	lui r6, 523264
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r10, zero, .LBB0_263
# %bb.262:                              # %vector.body143
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r19)
.LBB0_263:                              # %vector.body143
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r10, 4(r28)
	loads.w r11, 4(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r27, r10, zero
	seteq r15, r11, zero
	seteq r20, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r27, r20
	lui r20, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r10, zero, .LBB0_265
# %bb.264:                              # %vector.body143
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 4(r19)
.LBB0_265:                              # %vector.body143
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r10, 8(r28)
	loads.w r11, 8(r9)
	and r10, r10, r5
	and r11, r11, r5
	seteq r12, r10, r3
	seteq r24, r10, zero
	seteq r15, r11, zero
	seteq r27, r11, r3
	max.u r10, r10, r11
	setlt.u r10, r3, r10
	and r11, r12, r15
	and r12, r24, r27
	lui r15, 523264
	or r11, r11, r12
	or r10, r10, r11
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r10, zero, .LBB0_267
# %bb.266:                              # %vector.body143
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 8(r19)
.LBB0_267:                              # %vector.body143
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r10, 12(r28)
	loads.w r9, 12(r9)
	and r10, r10, r5
	and r9, r9, r5
	seteq r11, r10, r3
	seteq r12, r9, zero
	seteq r24, r9, r3
	seteq r25, r10, zero
	max.u r9, r10, r9
	setlt.u r9, r3, r9
	and r10, r11, r12
	and r11, r25, r24
	or r10, r10, r11
	or r9, r9, r10
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r9, zero, .LBB0_260
# %bb.268:                              # %vector.body143
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 12(r19)
	j .LBB0_260
.LBB0_269:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	mfence { sm }
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r16
	addli r21, zero, 64
	addli r22, zero, 2
	loadli.w r19,  -676(r30)                # 4-byte Folded Reload
	loadli.w r20,  -672(r30)                # 4-byte Folded Reload
	loadli.w r15,  -668(r30)                # 4-byte Folded Reload
.LBB0_270:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 441 7                         # parallel-rne.mlir:441:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 442 7                         # parallel-rne.mlir:442:7
	loadli.w r1,  -692(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.271:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r23,  -704(r30)                # 4-byte Folded Reload
	addli r14, zero, 4
	.loc	1 453 7 is_stmt 1               # parallel-rne.mlir:453:7
	bneq r16, zero, .LBB0_6
# %bb.272:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -732(r30)                 # 4-byte Folded Reload
	load.d r[11:12], -664(r30)              # 8-byte Folded Reload
	.loc	1 453 7                         # parallel-rne.mlir:453:7
	load.d r[9:10], -728(r30)               # 8-byte Folded Reload
	addli r4, zero, 19
	addli r6, zero, 5
	load.d r[17:18], 24(r30)
	sext_int2long r[1:2], r1
	sll.d r[9:10], r[9:10], r4
	addli r4, zero, 12
	min.sl r[11:12], r[1:2], r[11:12]
	xwait r4, 0
	lock zero, r6
	addli r4, zero, 1
	add.ul r[9:10], r[17:18], r[9:10]
	addli.d r[11:12], r[11:12], 128
	max.sl r[11:12], r[11:12], r[1:2]
	sub.sl r[1:2], r[11:12], r[1:2]
	load.d r[11:12], -720(r30)              # 8-byte Folded Reload
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r4, zero, 1
	.loc	1 449 13 is_stmt 1              # parallel-rne.mlir:449:13
	min.sl r[1:2], r[1:2], r[7:8]
	.loc	1 453 7                         # parallel-rne.mlir:453:7
	load.d r[7:8], -744(r30)                # 8-byte Folded Reload
	add.ul r[9:10], r[9:10], r[11:12]
	slli r4, r7, 2
	dma_cfg r10, zero, zero, 2
	addli r7, zero, 4096
	dma_cfg r9, r13, r4, 3
	addli r4, zero, 512
	dma_cfg r7, r4, r1, 4
	addli r1, zero, 13
	dma_run zero
	unlock r6
	xsignal r1, 0
	j .LBB0_6
.LBB0_273:                              # %._crit_edge.loopexit
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w r20, -504(r30)
.LBB0_274:                              # %._crit_edge
	.loc	1 455 5 is_stmt 1               # parallel-rne.mlir:455:5
	xsignal zero, 0
	bneq r16, zero, .LBB0_276
# %bb.275:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 455 5                         # parallel-rne.mlir:455:5
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
.LBB0_276:
	.loc	1 456 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:456:5
	addli sp, sp, 768
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
	.long	832                             # 0x340
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-ob21hq1r" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
