	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-bgren2we" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1064
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r26
	addli r30, sp, 1000
	xsignal_mode_cfg r1
	beq r26, zero, .LBB0_2
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	load_param_i r3, 1
	loadli.w r4,  32(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -196(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -520(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -720(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -916(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r1, r2, r1
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r4, r1, r4
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r2, -1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 44 11                         # parallel-rne.mlir:44:11
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r3, -516(r30)
	storeli.w r3, -512(r30)
	storeli.w r3, -508(r30)
	storeli.w r3, -504(r30)
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r3, -716(r30)
	storeli.w r3, -712(r30)
	storeli.w r3, -708(r30)
	storeli.w r3, -704(r30)
	storeli.w r3, -700(r30)
	storeli.w r3, -696(r30)
	storeli.w r3, -692(r30)
	storeli.w r3, -688(r30)
	storeli.w r3, -684(r30)
	storeli.w r3, -680(r30)
	storeli.w r3, -676(r30)
	storeli.w r3, -672(r30)
	storeli.w r3, -668(r30)
	storeli.w r3, -664(r30)
	storeli.w r3, -660(r30)
	storeli.w r3, -656(r30)
	storeli.w r3, -652(r30)
	storeli.w r3, -648(r30)
	storeli.w r3, -644(r30)
	storeli.w r3, -640(r30)
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r3, -912(r30)
	storeli.w r3, -908(r30)
	storeli.w r3, -904(r30)
	storeli.w r3, -900(r30)
	storeli.w r3, -896(r30)
	storeli.w r3, -892(r30)
	storeli.w r3, -888(r30)
	storeli.w r3, -884(r30)
	storeli.w r3, -880(r30)
	storeli.w r3, -876(r30)
	storeli.w r3, -872(r30)
	storeli.w r3, -868(r30)
	storeli.w r3, -864(r30)
	storeli.w r3, -860(r30)
	storeli.w r3, -856(r30)
	storeli.w r3, -852(r30)
	storeli.w r3, -848(r30)
	storeli.w r3, -844(r30)
	storeli.w r3, -840(r30)
	storeli.w r3, -836(r30)
	storeli.w r3, -832(r30)
	storeli.w r3, -828(r30)
	storeli.w r3, -824(r30)
	storeli.w r3, -820(r30)
	storeli.w r3, -816(r30)
	storeli.w r3, -812(r30)
	storeli.w r3, -808(r30)
	storeli.w r3, -804(r30)
	storeli.w r3, -800(r30)
	storeli.w r3, -796(r30)
	storeli.w r3, -792(r30)
	storeli.w r3, -788(r30)
	storeli.w r3, -784(r30)
	storeli.w r3, -780(r30)
	storeli.w r3, -776(r30)
	storeli.w r3, -772(r30)
	storeli.w r3, -768(r30)
	storeli.w r3, -764(r30)
	storeli.w r3, -760(r30)
	storeli.w r3, -756(r30)
	storeli.w r3, -752(r30)
	storeli.w r3, -748(r30)
	storeli.w r3, -744(r30)
	storeli.w r3, -740(r30)
	storeli.w r3, -736(r30)
	storeli.w r3, -732(r30)
	storeli.w r3, -728(r30)
	storeli.w r3, -724(r30)
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r2, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r2, r2, r4
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r2, r1, .LBB0_295
# %bb.4:                                # %.lr.ph
	.loc	1 42 11                         # parallel-rne.mlir:42:11
	sext_int2long r[6:7], r1
	lui r1, 7
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	addli r9, zero, 1
	addli r19, zero, 7
	lui r5, 522240
	addli r8, zero, 0
	ori r17, r1, 4095
	lui r1, 1023
	.loc	1 42 11                         # parallel-rne.mlir:42:11
	store.d r[2:3], -1000(r30)              # 8-byte Folded Spill
	addli r2, zero, 4
	lui r16, 1047552
	ori r1, r1, 4095
	storeli.w r1, -940(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r3, r1, 4095
	lui r1, 522239
	ori r21, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 361 7 is_stmt 1               # parallel-rne.mlir:361:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -960(r30)                # 8-byte Folded Reload
	.loc	1 50 5 is_stmt 1                # parallel-rne.mlir:50:5
	load.d r[1:2], -1000(r30)               # 8-byte Folded Reload
	loadli.w r8,  -964(r30)                 # 4-byte Folded Reload
	addli r9, zero, 1
	addli.d r[6:7], r[6:7], 1
	setlt.sl r1, r[6:7], r[1:2]
	addli r2, zero, 4
	beq r1, zero, .LBB0_295
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
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
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	bneq r26, r2, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	addli r4, zero, 2
	store.d r[6:7], -960(r30)               # 8-byte Folded Spill
	.loc	1 95 15 is_stmt 1               # parallel-rne.mlir:95:15
	loadli.w r15,  -916(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	loadli.w r22,  -720(r30)
	addli r14, zero, 0
	addli r23, zero, 0
	mod.s r4, r8, r4
	addli r8, r8, 1
	div.s r1, r6, r1
	addli r7, zero, 64
	storeli.w r8, -964(r30)                 # 4-byte Folded Spill
	addli r8, zero, 8
	div.s r1, r1, r2
	addli r2, zero, 512
	div.s r2, r1, r2
	slli r6, r2, 3
	slli r2, r2, 9
	sub.s r7, r7, r6
	sub.s r2, r1, r2
	min.s r7, r7, r8
	slli r8, r4, 12
	mod.s r1, r1, r7
	div.s r2, r2, r7
	addli r10, r8, 8192
	add.s r1, r6, r1
	slli r4, r2, 5
	zext_int2long r[6:7], r2
	storeli.w r4, -992(r30)                 # 4-byte Folded Spill
	slli r2, r1, 5
	zext_int2long r[11:12], r1
	addli r4, zero, 16
	addli r1, zero, 5
	storeli.w r2, -988(r30)                 # 4-byte Folded Spill
	sll.d r[1:2], r[6:7], r1
	sll.d r[27:28], r[11:12], r4
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	load.d r[6:7], 8(r30)
	store.d r[11:12], -984(r30)             # 8-byte Folded Spill
	sll.d r[11:12], r[1:2], r9
	and.d r[1:2], r[27:28], r[16:17]
	store.d r[1:2], -936(r30)               # 8-byte Folded Spill
	add.ul r[1:2], r[6:7], r[11:12]
	store.d r[11:12], -976(r30)             # 8-byte Folded Spill
	store.d r[1:2], -952(r30)               # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r4, 4
	addli r18, zero, 4
	addli r6, zero, 64
	addli r11, zero, 5
	ori r4, r4, 64
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	lock zero, r18
	dma_cfg r26, r26, zero, 0
	add.s r4, r7, r4
	dma_cfg zero, r13, zero, 2
	addli r7, zero, 4096
	dma_cfg r4, r12, r6, 3
	addli r13, zero, 128
	addli r4, zero, 512
	addli r12, zero, 2
	dma_cfg r13, r6, r18, 4
	dma_cfg r4, r7, r19, 5
	addli r7, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r20, 10
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
	addli r7, zero, 21
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 22
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
	dma_cfg r26, r26, zero, 0
	dma_cfg r26, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r6, 3
	dma_cfg r13, zero, r18, 4
	dma_cfg r4, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r26, 5
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r26
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r12, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r4,  -520(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r6,  -196(r30)
	addli r19, zero, 7
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r4, r4, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r6, r6, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r4, -520(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r6, -196(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r23, r23, 1
	addli r4, zero, 16
	beq r23, r4, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r14, r14, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	zext_int2long r[11:12], r23
	loadli.w r4,  -940(r30)                 # 4-byte Folded Reload
	load.d r[24:25], -936(r30)              # 8-byte Folded Reload
	addli r20, zero, 7
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	sll.d r[6:7], r[11:12], r19
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	add.ul r[18:19], r[6:7], r[27:28]
	zext_int2long r[6:7], r4
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	setlt.ul r4, r[6:7], r[18:19]
	.loc	1 87 15                         # parallel-rne.mlir:87:15
	bneq r4, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[24:25], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	add.s r6, r15, r14
	.loc	1 95 15 is_stmt 1               # parallel-rne.mlir:95:15
	addli r7, zero, 48
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r4, r22, r14
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	addli r9, zero, 49
	addli r13, zero, 2016
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r7, r6, r7
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r9, r4, r9
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r6, r6, 1
	zext_int2long r[1:2], r13
	storeli.w r6, -916(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r6, r4, 1
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	store.d r[1:2], -928(r30)               # 8-byte Folded Spill
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r6, -720(r30)
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r6, zero, 2
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r13, r7, 14
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r7, r9, 14
	lui r9, 4
	add.s r9, r7, r9
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	beq r26, r6, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r1
	addli r26, zero, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	bneq r1, r26, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, zero, 2048
	sub.sl r[11:12], r[18:19], r[24:25]
	load.d r[1:2], -928(r30)                # 8-byte Folded Reload
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[18:19], r[18:19], r26
	zext_int2long r[24:25], r6
	addli r6, zero, 48
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[11:12], r[11:12], r[24:25]
	min.sl r[24:25], r[11:12], r[1:2]
	sub.sl r[24:25], r[24:25], r[11:12]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	load.d r[11:12], 0(r30)
	add.ul r[12:13], r[11:12], r[18:19]
	addli r19, r24, 32
	addli r24, zero, 3
	xwait r24, 0
	blt.s r6, r4, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r6, zero, 5
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r4, zero, 2
	addli r11, zero, 4
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r20, 10
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
	addli r4, zero, 27
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 28
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 29
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 30
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 64
	dma_cfg r26, r26, zero, 0
	dma_cfg r26, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r4, 3
	addli r4, zero, 128
	dma_cfg r4, zero, r11, 4
	addli r4, zero, 512
	addli r11, zero, 32
	dma_cfg r4, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r6, zero, 2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r4, zero, 5
	xwait r6, 0
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 128
	ds_cfg r6, zero, 0
	addli r6, zero, 32
	ds_cfg r4, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r6, zero, 13
	shuffle_batch r13, r9, r4, 1
	addli r4, zero, 3
	unlock zero
	xsignal r4, 0
	addli r4, zero, 4
	xsignal r4, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r4,  -520(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r18,  -196(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r6, zero, 80
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r7, zero, 48
	lui r9, 200
	addli r19, zero, 7
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r26
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r7, r18, r7
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r6, r4, r6
	addli r4, r4, 1
	storeli.w r4, -520(r30)
	slli r4, r6, 14
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r7, r7, 14
	addli r6, r18, 1
	storeli.w r6, -196(r30)
	add.s r9, r7, r9
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r6, zero, 6
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	beq r26, r19, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r26, r6, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r20, zero, 19
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	load.d r[1:2], -952(r30)                # 8-byte Folded Reload
	addli r4, zero, 47
	xwait r19, 0
	sll.d r[11:12], r[11:12], r20
	add.ul r[12:13], r[1:2], r[11:12]
	blt.s r4, r18, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r6, zero, 5
	addli r11, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r4, zero, 2
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 3
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 4
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r19, 10
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
	addli r4, zero, 20
	dma_cfg zero, zero, r20, 10
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
	addli r4, zero, 27
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 28
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 29
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 30
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r4, 3
	addli r4, zero, 128
	dma_cfg r4, zero, r11, 4
	dma_cfg r4, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r4, 200
	addli r11, zero, 4
	addli r18, zero, 1
	addli r6, zero, 64
	ori r4, r4, 64
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	lock zero, r11
	dma_cfg r18, r18, zero, 0
	add.s r4, r7, r4
	dma_cfg zero, r13, zero, 2
	addli r7, zero, 5
	dma_cfg r4, r12, r6, 3
	addli r12, zero, 128
	addli r4, zero, 4096
	dma_cfg r12, r6, r18, 4
	dma_cfg r12, r4, r12, 5
	addli r4, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 3
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 6
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r19, 10
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
	addli r4, zero, 20
	dma_cfg zero, zero, r20, 10
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
	addli r4, zero, 27
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 28
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 29
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 30
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 31
	dma_cfg zero, zero, r4, 10
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r6, 3
	dma_cfg r12, zero, r18, 4
	dma_cfg r12, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r11, 0
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	xwait r6, 0
	addli r6, zero, 9
	addli r7, zero, 32
	xwait r6, 0
	addli r6, zero, 2
	lock zero, zero
	ds_cfg r6, zero, 0
	addli r6, zero, 128
	ds_cfg r7, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r7, zero, 13
	shuffle_coa r4, r9, r6, 2
	addli r4, zero, 8
	unlock zero
	xsignal r19, 0
	xsignal r4, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, zero, 4
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	bneq r26, r6, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	xwait r6, 0
	addli r6, zero, 8
	addli r7, zero, 1
	addli r9, zero, 128
	addli r11, zero, 32
	xwait r6, 0
	lock zero, r7
	mm_cfg r11, r9, r11, 0
	mm_cfg r6, r7, r7, 2
	beq r14, zero, .LBB0_32
# %bb.30:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r10, r13, r4, 8
	j .LBB0_33
.LBB0_31:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r23, r23, 1
	addli r4, zero, 16
	bneq r23, r4, .LBB0_14
	j .LBB0_36
.LBB0_32:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	mm r10, r13, r4, 8
.LBB0_33:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r4, zero, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r23, r23, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	unlock r4
	addli r4, zero, 5
	xsignal r4, 0
	addli r4, zero, 9
	xsignal r4, 0
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r4, zero, 16
	bneq r23, r4, .LBB0_14
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	addli r1, zero, 4
	bneq r26, r1, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -952(r30)               # 4-byte Folded Spill
	xsignal r1, 0
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	j .LBB0_39
.LBB0_36:                               # %.thread44
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 3
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	bneq r26, r1, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 131 7 is_stmt 1               # parallel-rne.mlir:131:7
	storeli.w r1, -952(r30)                 # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -952(r30)               # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	addli r1, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	xfence
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { lm, sm, gm }
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	csr_set csr5, r1
	addli r1, zero, 32
	sync_core
	zext_int2long r[22:23], r1
	addli r1, zero, 31
	zext_int2long r[14:15], r1
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	beq r26, zero, .LBB0_72
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r1, zero, 2
	beq r26, r1, .LBB0_103
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	bneq r26, r1, .LBB0_134
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_44
.LBB0_43:                               # %middle.block99
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r19, zero, 7
	load.d r[6:7], -936(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r19
	.loc	1 171 9 is_stmt 1               # parallel-rne.mlir:171:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_133
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_47 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -936(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r1
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	bneq r8, r10, .LBB0_51
# %bb.45:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_47
.LBB0_46:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	setlt.ul r6, r[1:2], r[14:15]
	.loc	1 187 13 is_stmt 1              # parallel-rne.mlir:187:13
	add.s r4, r8, r4
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r7, 0(r4)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	beq r6, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[6:7], r[1:2], r[27:28]
	slli r4, r6, 2
	add.s r6, r10, r4
	loads.w r9, 0(r6)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r6, r9, r3
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r7, r5, r6
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r7, zero, .LBB0_49
# %bb.48:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r6, r21, r6
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r6, zero, .LBB0_46
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r9, r7
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r6, r21, r6
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r6, zero, .LBB0_46
.LBB0_50:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	lui r7, 1048560
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r17
	and r7, r6, r7
	j .LBB0_46
.LBB0_51:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_53
.LBB0_52:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	add.s r4, r8, r9
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	seteq.d r2, r[19:20], r[22:23]
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r7, 12(r4)
	stores.w r24, 8(r4)
	stores.w r1, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	bneq r2, zero, .LBB0_43
.LBB0_53:                               # %vector.body95
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[1:2], r[19:20], r[27:28]
	slli r9, r1, 2
	add.s r2, r10, r9
	loads.w r26, 12(r2)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r12, r26, r3
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r1, r5, r12
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r1, zero, .LBB0_55
# %bb.54:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_53 Depth=3
	lui r1, 1024
	or r7, r26, r1
.LBB0_56:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r13, 8(r2)
	and r11, r13, r3
	setlt.u r1, r5, r11
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r1, zero, .LBB0_58
# %bb.57:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r13, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_53 Depth=3
	lui r1, 1024
	or r24, r13, r1
.LBB0_59:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r25, 4(r2)
	and r4, r25, r3
	setlt.u r1, r5, r4
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r1, zero, .LBB0_61
# %bb.60:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r25, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_53 Depth=3
	lui r1, 1024
	or r1, r25, r1
.LBB0_62:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r2, 0(r2)
	and r6, r2, r3
	setlt.u r18, r5, r6
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r18, zero, .LBB0_64
# %bb.63:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r6, r21, r6
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r6, zero, .LBB0_65
	j .LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r2, r18
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r6, r21, r6
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r6, zero, .LBB0_66
.LBB0_65:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	lui r6, 1048560
	add.s r2, r2, r17
	and r18, r2, r6
.LBB0_66:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	setlt.u r2, r21, r4
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r2, zero, .LBB0_69
# %bb.67:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r2, zero, .LBB0_70
.LBB0_68:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r12
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r2, zero, .LBB0_52
	j .LBB0_71
.LBB0_69:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r25, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r17
	and r1, r1, r2
	setlt.u r2, r21, r11
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r2, zero, .LBB0_68
.LBB0_70:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r13, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r17
	and r24, r2, r4
	setlt.u r2, r21, r12
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r2, zero, .LBB0_52
.LBB0_71:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r17
	and r7, r2, r4
	j .LBB0_52
.LBB0_72:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_74
.LBB0_73:                               # %middle.block117
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 3
	load.d r[6:7], -936(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 143 9 is_stmt 1               # parallel-rne.mlir:143:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_102
.LBB0_74:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -936(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r1
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	bneq r8, r10, .LBB0_81
# %bb.75:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_77
.LBB0_76:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	setlt.ul r6, r[1:2], r[14:15]
	.loc	1 159 13 is_stmt 1              # parallel-rne.mlir:159:13
	add.s r4, r8, r4
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r7, 0(r4)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r6, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph111
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[6:7], r[1:2], r[27:28]
	slli r4, r6, 2
	add.s r6, r10, r4
	loads.w r9, 0(r6)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r6, r9, r3
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r7, r5, r6
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r7, zero, .LBB0_79
# %bb.78:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r6, r21, r6
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r6, zero, .LBB0_76
	j .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r9, r7
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r6, r21, r6
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r6, zero, .LBB0_76
.LBB0_80:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	lui r7, 1048560
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r17
	and r7, r6, r7
	j .LBB0_76
.LBB0_81:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r4, r8, r9
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	seteq.d r2, r[19:20], r[22:23]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r26, 12(r4)
	stores.w r13, 8(r4)
	stores.w r1, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	bneq r2, zero, .LBB0_73
.LBB0_83:                               # %vector.body113
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[1:2], r[19:20], r[27:28]
	slli r9, r1, 2
	add.s r2, r10, r9
	loads.w r7, 12(r2)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r12, r7, r3
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r1, r5, r12
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r1, zero, .LBB0_85
# %bb.84:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r7, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	lui r1, 1024
	or r26, r7, r1
.LBB0_86:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r24, 8(r2)
	and r11, r24, r3
	setlt.u r1, r5, r11
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r1, zero, .LBB0_88
# %bb.87:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r24, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	lui r1, 1024
	or r13, r24, r1
.LBB0_89:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r25, 4(r2)
	and r4, r25, r3
	setlt.u r1, r5, r4
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r1, zero, .LBB0_91
# %bb.90:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r25, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=3
	lui r1, 1024
	or r1, r25, r1
.LBB0_92:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r2, 0(r2)
	and r6, r2, r3
	setlt.u r18, r5, r6
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r18, zero, .LBB0_94
# %bb.93:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r6, r21, r6
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r6, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r2, r18
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r6, r21, r6
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r6, zero, .LBB0_96
.LBB0_95:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	lui r6, 1048560
	add.s r2, r2, r17
	and r18, r2, r6
.LBB0_96:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r2, r21, r4
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r2, zero, .LBB0_99
# %bb.97:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r2, zero, .LBB0_100
.LBB0_98:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r12
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r2, zero, .LBB0_82
	j .LBB0_101
.LBB0_99:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r25, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r17
	and r1, r1, r2
	setlt.u r2, r21, r11
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r2, zero, .LBB0_98
.LBB0_100:                              # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r24, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r24, r2
	add.s r2, r2, r17
	and r13, r2, r4
	setlt.u r2, r21, r12
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r2, zero, .LBB0_82
.LBB0_101:                              # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r7, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r17
	and r26, r2, r4
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r26
	addli r19, zero, 7
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { sm }
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r1, zero, 2
	bneq r26, r1, .LBB0_41
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 192 7 is_stmt 1               # parallel-rne.mlir:192:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_105
.LBB0_104:                              # %middle.block108
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 11
	load.d r[6:7], -936(r30)                # 8-byte Folded Reload
	addli r19, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 199 9 is_stmt 1               # parallel-rne.mlir:199:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_133
.LBB0_105:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_108 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -936(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r1
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	bneq r8, r10, .LBB0_112
# %bb.106:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_108
.LBB0_107:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	setlt.ul r6, r[1:2], r[14:15]
	.loc	1 215 13 is_stmt 1              # parallel-rne.mlir:215:13
	add.s r4, r8, r4
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r7, 0(r4)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	beq r6, zero, .LBB0_104
.LBB0_108:                              # %scalar.ph102
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[6:7], r[1:2], r[27:28]
	slli r4, r6, 2
	add.s r6, r10, r4
	loads.w r9, 0(r6)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r6, r9, r3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r7, r5, r6
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r7, zero, .LBB0_110
# %bb.109:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r6, r21, r6
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r6, zero, .LBB0_107
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r9, r7
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r6, r21, r6
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r6, zero, .LBB0_107
.LBB0_111:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	lui r7, 1048560
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r17
	and r7, r6, r7
	j .LBB0_107
.LBB0_112:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	add.s r4, r8, r9
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	seteq.d r2, r[19:20], r[22:23]
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r7, 12(r4)
	stores.w r24, 8(r4)
	stores.w r1, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	bneq r2, zero, .LBB0_104
.LBB0_114:                              # %vector.body104
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[1:2], r[19:20], r[27:28]
	slli r9, r1, 2
	add.s r2, r10, r9
	loads.w r26, 12(r2)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r12, r26, r3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r1, r5, r12
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r1, zero, .LBB0_116
# %bb.115:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_114 Depth=3
	lui r1, 1024
	or r7, r26, r1
.LBB0_117:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r13, 8(r2)
	and r11, r13, r3
	setlt.u r1, r5, r11
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r1, zero, .LBB0_119
# %bb.118:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r13, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_114 Depth=3
	lui r1, 1024
	or r24, r13, r1
.LBB0_120:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r25, 4(r2)
	and r4, r25, r3
	setlt.u r1, r5, r4
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r1, zero, .LBB0_122
# %bb.121:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r25, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_114 Depth=3
	lui r1, 1024
	or r1, r25, r1
.LBB0_123:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r2, 0(r2)
	and r6, r2, r3
	setlt.u r18, r5, r6
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r18, zero, .LBB0_125
# %bb.124:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r6, r21, r6
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r6, zero, .LBB0_126
	j .LBB0_127
.LBB0_125:                              #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r2, r18
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r6, r21, r6
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r6, zero, .LBB0_127
.LBB0_126:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	lui r6, 1048560
	add.s r2, r2, r17
	and r18, r2, r6
.LBB0_127:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r2, r21, r4
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r2, zero, .LBB0_130
# %bb.128:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r11
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r2, zero, .LBB0_131
.LBB0_129:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r12
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r2, zero, .LBB0_113
	j .LBB0_132
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r25, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r17
	and r1, r1, r2
	setlt.u r2, r21, r11
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r2, zero, .LBB0_129
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r13, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r17
	and r24, r2, r4
	setlt.u r2, r21, r12
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r2, zero, .LBB0_113
.LBB0_132:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r17
	and r7, r2, r4
	j .LBB0_113
.LBB0_133:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r26
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 220 7 is_stmt 1               # parallel-rne.mlir:220:7
	loadli.w r1,  -952(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_169
# %bb.135:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	addli r1, zero, 4
	beq r26, r1, .LBB0_200
.LBB0_136:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	beq r26, r19, .LBB0_231
.LBB0_137:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 6
	beq r26, r1, .LBB0_261
# %bb.138:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 5
	bneq r26, r1, .LBB0_292
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_141
.LBB0_140:                              # %middle.block
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[6:7], -936(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 283 9 is_stmt 1               # parallel-rne.mlir:283:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_291
.LBB0_141:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_144 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -936(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r1
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	bneq r8, r10, .LBB0_148
# %bb.142:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_144
.LBB0_143:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	setlt.ul r6, r[1:2], r[14:15]
	.loc	1 299 13 is_stmt 1              # parallel-rne.mlir:299:13
	add.s r4, r8, r4
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r7, 0(r4)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	beq r6, zero, .LBB0_140
.LBB0_144:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[6:7], r[1:2], r[27:28]
	slli r4, r6, 2
	add.s r6, r10, r4
	loads.w r9, 0(r6)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r6, r9, r3
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r7, r5, r6
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r7, zero, .LBB0_146
# %bb.145:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r6, r21, r6
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r6, zero, .LBB0_143
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r9, r7
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r6, r21, r6
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r6, zero, .LBB0_143
.LBB0_147:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	lui r7, 1048560
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r17
	and r7, r6, r7
	j .LBB0_143
.LBB0_148:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_150
.LBB0_149:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	add.s r4, r8, r9
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	seteq.d r2, r[19:20], r[22:23]
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r7, 12(r4)
	stores.w r24, 8(r4)
	stores.w r1, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	bneq r2, zero, .LBB0_140
.LBB0_150:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[1:2], r[19:20], r[27:28]
	slli r9, r1, 2
	add.s r2, r10, r9
	loads.w r26, 12(r2)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r12, r26, r3
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r1, r5, r12
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r1, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_150 Depth=3
	lui r1, 1024
	or r7, r26, r1
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r13, 8(r2)
	and r11, r13, r3
	setlt.u r1, r5, r11
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r1, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r13, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_150 Depth=3
	lui r1, 1024
	or r24, r13, r1
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r25, 4(r2)
	and r4, r25, r3
	setlt.u r1, r5, r4
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r1, zero, .LBB0_158
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r25, 0
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_150 Depth=3
	lui r1, 1024
	or r1, r25, r1
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r2, 0(r2)
	and r6, r2, r3
	setlt.u r18, r5, r6
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r18, zero, .LBB0_165
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r6, r21, r6
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r6, zero, .LBB0_162
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	lui r6, 1048560
	add.s r2, r2, r17
	and r18, r2, r6
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	setlt.u r2, r21, r4
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r2, zero, .LBB0_166
# %bb.163:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r2, zero, .LBB0_167
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r12
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_149
	j .LBB0_168
.LBB0_165:                              #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r2, r18
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r6, r21, r6
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r6, zero, .LBB0_161
	j .LBB0_162
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r17
	and r1, r1, r2
	setlt.u r2, r21, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_164
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r13, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r17
	and r24, r2, r4
	setlt.u r2, r21, r12
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_149
.LBB0_168:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r17
	and r7, r2, r4
	j .LBB0_149
.LBB0_169:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 12
	.loc	1 220 7 is_stmt 1               # parallel-rne.mlir:220:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_171
.LBB0_170:                              # %middle.block90
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[6:7], -936(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 227 9 is_stmt 1               # parallel-rne.mlir:227:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_199
.LBB0_171:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_180 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -936(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r1
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	bneq r8, r10, .LBB0_178
# %bb.172:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_174
.LBB0_173:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	setlt.ul r6, r[1:2], r[14:15]
	.loc	1 243 13 is_stmt 1              # parallel-rne.mlir:243:13
	add.s r4, r8, r4
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r7, 0(r4)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	beq r6, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[6:7], r[1:2], r[27:28]
	slli r4, r6, 2
	add.s r6, r10, r4
	loads.w r9, 0(r6)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r6, r9, r3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r7, r5, r6
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r7, zero, .LBB0_176
# %bb.175:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r6, r21, r6
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r6, zero, .LBB0_173
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r9, r7
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r6, r21, r6
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r6, zero, .LBB0_173
.LBB0_177:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	lui r7, 1048560
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r17
	and r7, r6, r7
	j .LBB0_173
.LBB0_178:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_180
.LBB0_179:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	add.s r4, r8, r9
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	seteq.d r2, r[19:20], r[22:23]
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r7, 12(r4)
	stores.w r24, 8(r4)
	stores.w r1, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	bneq r2, zero, .LBB0_170
.LBB0_180:                              # %vector.body86
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[1:2], r[19:20], r[27:28]
	slli r9, r1, 2
	add.s r2, r10, r9
	loads.w r26, 12(r2)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r12, r26, r3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r1, r5, r12
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r1, zero, .LBB0_182
# %bb.181:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_180 Depth=3
	lui r1, 1024
	or r7, r26, r1
.LBB0_183:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r13, 8(r2)
	and r11, r13, r3
	setlt.u r1, r5, r11
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r1, zero, .LBB0_185
# %bb.184:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r13, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_180 Depth=3
	lui r1, 1024
	or r24, r13, r1
.LBB0_186:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r25, 4(r2)
	and r4, r25, r3
	setlt.u r1, r5, r4
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r1, zero, .LBB0_188
# %bb.187:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r25, 0
	j .LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_180 Depth=3
	lui r1, 1024
	or r1, r25, r1
.LBB0_189:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r2, 0(r2)
	and r6, r2, r3
	setlt.u r18, r5, r6
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r18, zero, .LBB0_195
# %bb.190:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r6, r21, r6
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r6, zero, .LBB0_192
.LBB0_191:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	lui r6, 1048560
	add.s r2, r2, r17
	and r18, r2, r6
.LBB0_192:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	setlt.u r2, r21, r4
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r2, zero, .LBB0_196
# %bb.193:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r11
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r2, zero, .LBB0_197
.LBB0_194:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r12
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r2, zero, .LBB0_179
	j .LBB0_198
.LBB0_195:                              #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r2, r18
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r6, r21, r6
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r6, zero, .LBB0_191
	j .LBB0_192
.LBB0_196:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r17
	and r1, r1, r2
	setlt.u r2, r21, r11
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r2, zero, .LBB0_194
.LBB0_197:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r13, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r17
	and r24, r2, r4
	setlt.u r2, r21, r12
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r2, zero, .LBB0_179
.LBB0_198:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r17
	and r7, r2, r4
	j .LBB0_179
.LBB0_199:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r26
	addli r19, zero, 7
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	mfence { sm }
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	addli r1, zero, 4
	bneq r26, r1, .LBB0_136
.LBB0_200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_202
.LBB0_201:                              # %middle.block81
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 19
	load.d r[6:7], -936(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 255 9 is_stmt 1               # parallel-rne.mlir:255:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_230
.LBB0_202:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_205 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -936(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r1
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	bneq r8, r10, .LBB0_209
# %bb.203:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_205
.LBB0_204:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	setlt.ul r6, r[1:2], r[14:15]
	.loc	1 271 13 is_stmt 1              # parallel-rne.mlir:271:13
	add.s r4, r8, r4
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r7, 0(r4)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	beq r6, zero, .LBB0_201
.LBB0_205:                              # %scalar.ph75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[6:7], r[1:2], r[27:28]
	slli r4, r6, 2
	add.s r6, r10, r4
	loads.w r9, 0(r6)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r6, r9, r3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r7, r5, r6
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r7, zero, .LBB0_207
# %bb.206:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r6, r21, r6
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r6, zero, .LBB0_204
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r9, r7
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r6, r21, r6
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r6, zero, .LBB0_204
.LBB0_208:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	lui r7, 1048560
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r17
	and r7, r6, r7
	j .LBB0_204
.LBB0_209:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_211
.LBB0_210:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	add.s r4, r8, r9
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	seteq.d r2, r[19:20], r[22:23]
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r7, 12(r4)
	stores.w r24, 8(r4)
	stores.w r1, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	bneq r2, zero, .LBB0_201
.LBB0_211:                              # %vector.body77
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[1:2], r[19:20], r[27:28]
	slli r9, r1, 2
	add.s r2, r10, r9
	loads.w r26, 12(r2)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r12, r26, r3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r1, r5, r12
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r1, zero, .LBB0_213
# %bb.212:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_211 Depth=3
	lui r1, 1024
	or r7, r26, r1
.LBB0_214:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r13, 8(r2)
	and r11, r13, r3
	setlt.u r1, r5, r11
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r1, zero, .LBB0_216
# %bb.215:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r13, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_211 Depth=3
	lui r1, 1024
	or r24, r13, r1
.LBB0_217:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r25, 4(r2)
	and r4, r25, r3
	setlt.u r1, r5, r4
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r1, zero, .LBB0_219
# %bb.218:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r25, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_211 Depth=3
	lui r1, 1024
	or r1, r25, r1
.LBB0_220:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r2, 0(r2)
	and r6, r2, r3
	setlt.u r18, r5, r6
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r18, zero, .LBB0_226
# %bb.221:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r6, r21, r6
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r6, zero, .LBB0_223
.LBB0_222:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	lui r6, 1048560
	add.s r2, r2, r17
	and r18, r2, r6
.LBB0_223:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	setlt.u r2, r21, r4
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r2, zero, .LBB0_227
# %bb.224:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r2, zero, .LBB0_228
.LBB0_225:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r12
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r2, zero, .LBB0_210
	j .LBB0_229
.LBB0_226:                              #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r2, r18
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r6, r21, r6
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r6, zero, .LBB0_222
	j .LBB0_223
.LBB0_227:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r25, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r17
	and r1, r1, r2
	setlt.u r2, r21, r11
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r2, zero, .LBB0_225
.LBB0_228:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r13, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r17
	and r24, r2, r4
	setlt.u r2, r21, r12
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r2, zero, .LBB0_210
.LBB0_229:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r17
	and r7, r2, r4
	j .LBB0_210
.LBB0_230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r26
	addli r19, zero, 7
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	mfence { sm }
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	bneq r26, r19, .LBB0_137
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 332 7 is_stmt 1               # parallel-rne.mlir:332:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_233
.LBB0_232:                              # %middle.block72
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[6:7], -936(r30)                # 8-byte Folded Reload
	.loc	1 339 9 is_stmt 1               # parallel-rne.mlir:339:9
	setlt.ul r1, r[6:7], r[14:15]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_291
.LBB0_233:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -936(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r1
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	bneq r8, r10, .LBB0_240
# %bb.234:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_236
.LBB0_235:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	setlt.ul r6, r[1:2], r[14:15]
	.loc	1 355 13 is_stmt 1              # parallel-rne.mlir:355:13
	add.s r4, r8, r4
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r7, 0(r4)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	beq r6, zero, .LBB0_232
.LBB0_236:                              # %scalar.ph66
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[6:7], r[1:2], r[27:28]
	slli r4, r6, 2
	add.s r6, r10, r4
	loads.w r9, 0(r6)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r6, r9, r3
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r7, r5, r6
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r7, zero, .LBB0_238
# %bb.237:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r6, r21, r6
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r6, zero, .LBB0_235
	j .LBB0_239
.LBB0_238:                              #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r9, r7
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r6, r21, r6
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r6, zero, .LBB0_235
.LBB0_239:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	lui r7, 1048560
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r17
	and r7, r6, r7
	j .LBB0_235
.LBB0_240:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_242
.LBB0_241:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	add.s r4, r8, r9
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	seteq.d r2, r[19:20], r[22:23]
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r7, 12(r4)
	stores.w r24, 8(r4)
	stores.w r1, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	bneq r2, zero, .LBB0_232
.LBB0_242:                              # %vector.body68
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[1:2], r[19:20], r[27:28]
	slli r9, r1, 2
	add.s r2, r10, r9
	loads.w r26, 12(r2)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r12, r26, r3
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r1, r5, r12
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r1, zero, .LBB0_244
# %bb.243:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=3
	lui r1, 1024
	or r7, r26, r1
.LBB0_245:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r13, 8(r2)
	and r11, r13, r3
	setlt.u r1, r5, r11
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r1, zero, .LBB0_247
# %bb.246:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r13, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=3
	lui r1, 1024
	or r24, r13, r1
.LBB0_248:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r25, 4(r2)
	and r4, r25, r3
	setlt.u r1, r5, r4
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r1, zero, .LBB0_250
# %bb.249:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r25, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_242 Depth=3
	lui r1, 1024
	or r1, r25, r1
.LBB0_251:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r2, 0(r2)
	and r6, r2, r3
	setlt.u r18, r5, r6
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r18, zero, .LBB0_253
# %bb.252:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r6, r21, r6
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r6, zero, .LBB0_254
	j .LBB0_255
.LBB0_253:                              #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r2, r18
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r6, r21, r6
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r6, zero, .LBB0_255
.LBB0_254:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	lui r6, 1048560
	add.s r2, r2, r17
	and r18, r2, r6
.LBB0_255:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r2, r21, r4
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r2, zero, .LBB0_258
# %bb.256:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r2, zero, .LBB0_259
.LBB0_257:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r12
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r2, zero, .LBB0_241
	j .LBB0_260
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r25, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r17
	and r1, r1, r2
	setlt.u r2, r21, r11
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r2, zero, .LBB0_257
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r13, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r17
	and r24, r2, r4
	setlt.u r2, r21, r12
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r2, zero, .LBB0_241
.LBB0_260:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r17
	and r7, r2, r4
	j .LBB0_241
.LBB0_261:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 24
	.loc	1 304 7 is_stmt 1               # parallel-rne.mlir:304:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_263
.LBB0_262:                              # %middle.block63
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 27
	load.d r[6:7], -936(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 311 9 is_stmt 1               # parallel-rne.mlir:311:9
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_291
.LBB0_263:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_266 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[6:7], -936(r30)               # 8-byte Folded Spill
	sll.d r[27:28], r[6:7], r1
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	bneq r8, r10, .LBB0_270
# %bb.264:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_266
.LBB0_265:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	setlt.ul r6, r[1:2], r[14:15]
	.loc	1 327 13 is_stmt 1              # parallel-rne.mlir:327:13
	add.s r4, r8, r4
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r7, 0(r4)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	beq r6, zero, .LBB0_262
.LBB0_266:                              # %scalar.ph57
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[6:7], r[1:2], r[27:28]
	slli r4, r6, 2
	add.s r6, r10, r4
	loads.w r9, 0(r6)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r6, r9, r3
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r7, r5, r6
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r7, zero, .LBB0_268
# %bb.267:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r9, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r6, r21, r6
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r6, zero, .LBB0_265
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r9, r7
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r6, r21, r6
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r6, zero, .LBB0_265
.LBB0_269:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r9, 16
	lui r7, 1048560
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r17
	and r7, r6, r7
	j .LBB0_265
.LBB0_270:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_272
.LBB0_271:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	add.s r4, r8, r9
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	seteq.d r2, r[19:20], r[22:23]
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r7, 12(r4)
	stores.w r24, 8(r4)
	stores.w r1, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	bneq r2, zero, .LBB0_262
.LBB0_272:                              # %vector.body59
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[1:2], r[19:20], r[27:28]
	slli r9, r1, 2
	add.s r2, r10, r9
	loads.w r26, 12(r2)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r12, r26, r3
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r1, r5, r12
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r1, zero, .LBB0_274
# %bb.273:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r26, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_272 Depth=3
	lui r1, 1024
	or r7, r26, r1
.LBB0_275:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r13, 8(r2)
	and r11, r13, r3
	setlt.u r1, r5, r11
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r1, zero, .LBB0_277
# %bb.276:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r13, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_272 Depth=3
	lui r1, 1024
	or r24, r13, r1
.LBB0_278:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r25, 4(r2)
	and r4, r25, r3
	setlt.u r1, r5, r4
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r1, zero, .LBB0_280
# %bb.279:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r25, 0
	j .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_272 Depth=3
	lui r1, 1024
	or r1, r25, r1
.LBB0_281:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r2, 0(r2)
	and r6, r2, r3
	setlt.u r18, r5, r6
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r18, zero, .LBB0_283
# %bb.282:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r2, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r6, r21, r6
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r6, zero, .LBB0_284
	j .LBB0_285
.LBB0_283:                              #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r2, r18
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r6, r21, r6
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r6, zero, .LBB0_285
.LBB0_284:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	lui r6, 1048560
	add.s r2, r2, r17
	and r18, r2, r6
.LBB0_285:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	setlt.u r2, r21, r4
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r2, zero, .LBB0_288
# %bb.286:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r11
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r2, zero, .LBB0_289
.LBB0_287:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r21, r12
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r2, zero, .LBB0_271
	j .LBB0_290
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r25, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r17
	and r1, r1, r2
	setlt.u r2, r21, r11
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r2, zero, .LBB0_287
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r13, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r17
	and r24, r2, r4
	setlt.u r2, r21, r12
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r2, zero, .LBB0_271
.LBB0_290:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r26, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r26, r2
	add.s r2, r2, r17
	and r7, r2, r4
	j .LBB0_271
.LBB0_291:                              # %.sink.split51
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r26
	addli r19, zero, 7
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 360 7 is_stmt 1               # parallel-rne.mlir:360:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	loadli.w r1,  -952(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.293:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	bneq r26, zero, .LBB0_7
# %bb.294:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	loadli.w r1,  -992(r30)                 # 4-byte Folded Reload
	load.d r[11:12], -928(r30)              # 8-byte Folded Reload
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	loadli.w r4,  -988(r30)                 # 4-byte Folded Reload
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[13:14], 16(r30)
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	zext_int2long r[1:2], r1
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	zext_int2long r[9:10], r4
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	addli r4, zero, 17
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	min.ul r[6:7], r[1:2], r[11:12]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	min.ul r[11:12], r[9:10], r[11:12]
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	addli.d r[6:7], r[6:7], 32
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	addli.d r[6:7], r[11:12], 32
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[11:12], -984(r30)              # 8-byte Folded Reload
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	max.ul r[6:7], r[6:7], r[9:10]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.ul r[1:2], r[1:2], r[22:23]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	sll.d r[11:12], r[11:12], r4
	addli r4, zero, 12
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	sub.sl r[6:7], r[6:7], r[9:10]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[9:10], -976(r30)               # 8-byte Folded Reload
	add.ul r[11:12], r[13:14], r[11:12]
	xwait r4, 0
	ori r4, r8, 64
	addli r8, zero, 64
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.ul r[6:7], r[6:7], r[22:23]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	add.ul r[9:10], r[11:12], r[9:10]
	addli r11, zero, 5
	addli r12, zero, 1
	lock zero, r11
	dma_cfg r12, r12, zero, 0
	dma_cfg zero, r12, zero, 1
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r4, r8, 3
	addli r4, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	srli r4, r4, 5
	andi r1, r1, 62
	dma_cfg r8, r2, r4, 4
	addli r4, zero, 4096
	dma_cfg r4, r2, r6, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_6
.LBB0_295:                              # %._crit_edge
	.loc	1 380 5                         # parallel-rne.mlir:380:5
	xsignal zero, 0
	bneq r26, zero, .LBB0_297
# %bb.296:
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
.LBB0_297:
	.loc	1 381 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:381:5
	addli sp, sp, 1000
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
	.long	1064                            # 0x428
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-bgren2we" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
