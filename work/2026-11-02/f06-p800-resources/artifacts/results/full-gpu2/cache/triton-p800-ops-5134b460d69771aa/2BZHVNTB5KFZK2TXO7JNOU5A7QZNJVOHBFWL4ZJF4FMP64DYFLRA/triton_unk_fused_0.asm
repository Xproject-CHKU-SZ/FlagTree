	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-6_5gjeot" "gelu-lut-refined.mlir"
	.loc	1 6 0                           # gelu-lut-refined.mlir:6:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -792
	addli r1, zero, 1
.Ltmp0:
	.loc	1 26 5 prologue_end             # gelu-lut-refined.mlir:26:5
	core_id r20
	addli r30, sp, 728
	xsignal_mode_cfg r1
	beq r20, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	lui r3, 1048575
	.loc	1 26 5                          # gelu-lut-refined.mlir:26:5
	xwait r1, 0
	xwait r1, 0
	xwait zero, 0
	ori r1, r3, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # gelu-lut-refined.mlir:0:5
	addli r5, zero, 2
	.loc	1 26 5                          # gelu-lut-refined.mlir:26:5
	uni_sram_cfg r1, r1
	addli r6, zero, 4
	load.d r[3:4], 32(r30)
	addli r7, zero, 4096
	lock zero, r5
	ew_cfg r1, zero, zero, 16
	unlock r5
	lock zero, r6
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg zero, r3, r7, 3
	addli r3, zero, 32
	addli r4, zero, 1024
	dma_cfg zero, zero, r1, 4
	dma_run zero
	unlock r6
	xsignal r1, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r5, zero, 0
	ds_cfg zero, zero, 1
	ds_cfg zero, zero, 11
	ds_cfg r3, zero, 13
	addli r3, zero, 5
	ds_cfg r4, zero, 14
	shuffle_batch r7, zero, r4, 4
	unlock zero
	xsignal r1, 0
	xwait r1, 0
	lock zero, r5
	lui r1, 17
	ewtable_cfg r7, 0
	ewtable_cfg r1, 1
	lui r1, 1048575
	unlock r5
	xsignal zero, 0
	xwait zero, 0
	ori r1, r1, 4095
	csr_set csr3, r1
	addli r1, zero, 11
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 3
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
	addli r3, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 15
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 19
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	.loc	1 0 5                           # gelu-lut-refined.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r3,  44(r30)
	load_param_i r4, 1
	loadli.w r5,  48(r30)
	load_param_i r7, 0
	lui r6, 1048575
	storeli.w zero, -20(r30)
	storeli.w zero, -40(r30)
	storeli.w zero, -60(r30)
	storeli.w zero, -80(r30)
	storeli.w zero, -172(r30)
	storeli.w zero, -336(r30)
	storeli.w zero, -424(r30)
	storeli.w zero, -620(r30)
	mul.s r1, r3, r1
	addli r3, r4, 0
	fmac.s r3, r1, r5
	mul.s r5, r1, r5
	addli r3, r3, -1
	div.s r3, r3, r4
	ori r4, r6, 4095
	storeli.w r4, -16(r30)
	storeli.w r4, -12(r30)
	storeli.w r4, -8(r30)
	storeli.w r4, -4(r30)
	storeli.w r4, -36(r30)
	storeli.w r4, -32(r30)
	storeli.w r4, -28(r30)
	storeli.w r4, -24(r30)
	storeli.w r4, -56(r30)
	storeli.w r4, -52(r30)
	storeli.w r4, -48(r30)
	storeli.w r4, -44(r30)
	storeli.w r4, -76(r30)
	storeli.w r4, -72(r30)
	storeli.w r4, -68(r30)
	storeli.w r4, -64(r30)
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
	mul.s r1, r3, r7
	fmac.s r3, r3, r7
	min.s r3, r3, r5
	ble.s r3, r1, .LBB0_44
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[6:7], r1
	lui r1, 7
	loadli.w r9,  -20(r30)
	loadli.w r23,  -40(r30)
	loadli.w r24,  -60(r30)
	loadli.w r25,  -80(r30)
	loadli.w r10,  -172(r30)
	loadli.w r11,  -336(r30)
	loadli.w r12,  -424(r30)
	loadli.w r13,  -620(r30)
	addli r16, zero, 64
	addli r17, zero, 8
	addli r18, zero, 7
	addli r19, zero, 4
	addli r21, zero, 1
	addli r28, zero, 2
	addli r2, zero, 3
	addli r22, zero, 128
	addli r8, zero, 0
	store.d r[3:4], -696(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 324
	lui r3, 1048448
	ori r1, r1, 2048
	store.d r[3:4], -704(r30)               # 8-byte Folded Spill
	lui r3, 216
	storeli.w r1, -708(r30)                 # 4-byte Folded Spill
	ori r1, r3, 2893
	lui r3, 1046527
	storeli.w r1, -712(r30)                 # 4-byte Folded Spill
	lui r1, 356
	ori r1, r1, 2048
	storeli.w r1, -716(r30)                 # 4-byte Folded Spill
	ori r1, r3, 4095
	lui r3, 127
	storeli.w r1, -720(r30)                 # 4-byte Folded Spill
	lui r1, 522239
	ori r1, r1, 4095
	storeli.w r1, -724(r30)                 # 4-byte Folded Spill
	ori r1, r3, 4095
	storeli.w r1, -624(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.thread75
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 106 5 is_stmt 1               # gelu-lut-refined.mlir:106:5
	load.d r[5:6], 16(r30)
	load.d r[14:15], -672(r30)              # 8-byte Folded Reload
	addli r1, zero, 13
	addli r3, zero, 512
	xwait r1, 0
	lock zero, r19
	slli r1, r7, 1
	add.ul r[5:6], r[5:6], r[14:15]
	dma_cfg zero, r21, zero, 0
	dma_cfg zero, r6, zero, 2
	dma_cfg r4, r5, r1, 3
	addli r1, zero, 256
	dma_cfg r3, r1, r21, 4
	dma_run zero
	unlock r19
	addli r1, zero, 12
	loadli.w r24,  -644(r30)                # 4-byte Folded Reload
	xsignal r1, 0
	loadli.w r9,  -636(r30)                 # 4-byte Folded Reload
	loadli.w r23,  -640(r30)                # 4-byte Folded Reload
	.loc	1 107 16                        # gelu-lut-refined.mlir:107:16
	addli r24, r24, 1
.LBB0_6:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 16 is_stmt 0                # gelu-lut-refined.mlir:0:16
	load.d r[6:7], -656(r30)                # 8-byte Folded Reload
	load.d r[3:4], -696(r30)                # 8-byte Folded Reload
	loadli.w r8,  -660(r30)                 # 4-byte Folded Reload
	addli r25, r25, 1
	.loc	1 109 16 is_stmt 1              # gelu-lut-refined.mlir:109:16
	addli r23, r23, 1
	.loc	1 111 16                        # gelu-lut-refined.mlir:111:16
	addli r9, r9, 1
	addli.d r[6:7], r[6:7], 1
	setlt.sl r1, r[6:7], r[3:4]
	beq r1, zero, .LBB0_44
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_33 Depth 2
	.loc	1 0 16 is_stmt 0                # gelu-lut-refined.mlir:0:16
	storeli.w r25, -648(r30)                # 4-byte Folded Spill
	storeli.w r24, -644(r30)                # 4-byte Folded Spill
	storeli.w r23, -640(r30)                # 4-byte Folded Spill
	storeli.w r9, -636(r30)                 # 4-byte Folded Spill
	.loc	1 48 5 is_stmt 1                # gelu-lut-refined.mlir:48:5
	bneq r20, r19, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r1,  48(r30)
	loadli.w r3,  44(r30)
	store.d r[6:7], -656(r30)               # 8-byte Folded Spill
	addli r5, zero, 0
	addli r23, zero, 0
	div.s r1, r6, r1
	mod.s r6, r8, r19
	addli r8, r8, 1
	storeli.w r8, -660(r30)                 # 4-byte Folded Spill
	div.s r1, r1, r3
	slli r6, r6, 15
	div.s r3, r1, r16
	slli r4, r3, 3
	slli r3, r3, 6
	sub.s r7, r17, r4
	sub.s r3, r1, r3
	min.s r7, r7, r17
	mod.s r1, r1, r7
	div.s r3, r3, r7
	add.s r1, r4, r1
	slli r4, r3, 7
	storeli.w r4, -664(r30)                 # 4-byte Folded Spill
	zext_int2long r[3:4], r3
	slli r7, r1, 6
	zext_int2long r[14:15], r1
	addli r1, zero, 16
	sll.d r[3:4], r[3:4], r18
	storeli.w r7, -684(r30)                 # 4-byte Folded Spill
	store.d r[14:15], -680(r30)             # 8-byte Folded Spill
	sll.d r[14:15], r[14:15], r1
	.loc	1 48 5                          # gelu-lut-refined.mlir:48:5
	sll.d r[7:8], r[3:4], r21
	load.d r[3:4], 8(r30)
	store.d r[7:8], -672(r30)               # 8-byte Folded Spill
	add.ul r[3:4], r[3:4], r[7:8]
	store.d r[3:4], -632(r30)               # 8-byte Folded Spill
	load.d r[3:4], -704(r30)                # 8-byte Folded Reload
	and.d r[26:27], r[14:15], r[3:4]
	addli r4, zero, 48
	j .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 5                           # gelu-lut-refined.mlir:0:5
	addli r1, zero, 1024
	.loc	1 57 13 is_stmt 1               # gelu-lut-refined.mlir:57:13
	sub.sl r[7:8], r[24:25], r[7:8]
	.loc	1 69 7                          # gelu-lut-refined.mlir:69:7
	xwait r2, 0
	sll.d r[24:25], r[24:25], r21
	lock zero, r19
	dma_cfg r21, r21, zero, 0
	zext_int2long r[17:18], r1
	addli r1, zero, 448
	.loc	1 58 13                         # gelu-lut-refined.mlir:58:13
	div.sl r[7:8], r[7:8], r[17:18]
	zext_int2long r[17:18], r1
	.loc	1 69 7                          # gelu-lut-refined.mlir:69:7
	load.d r[1:2], 0(r30)
	add.ul r[24:25], r[1:2], r[24:25]
	addli r2, zero, 3
	dma_cfg zero, r25, zero, 2
	.loc	1 60 13                         # gelu-lut-refined.mlir:60:13
	min.sl r[17:18], r[7:8], r[17:18]
	.loc	1 61 13                         # gelu-lut-refined.mlir:61:13
	sub.sl r[7:8], r[17:18], r[7:8]
	addli r17, zero, 8
	addli r18, zero, 7
	.loc	1 69 7                          # gelu-lut-refined.mlir:69:7
	addli r1, r7, 64
	addli r7, zero, 256
	dma_cfg r3, r24, r7, 3
	addli r3, zero, 2048
	dma_cfg r7, r3, r1, 4
	dma_run zero
	unlock r19
	xsignal r28, 0
.LBB0_11:                               # %.thread16
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 79 19                         # gelu-lut-refined.mlir:79:19
	addli r11, r11, 1
	.loc	1 48 5                          # gelu-lut-refined.mlir:48:5
	addli r5, r5, 1
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r10, r10, 1
	.loc	1 48 5                          # gelu-lut-refined.mlir:48:5
	beq r5, r17, .LBB0_28
.LBB0_12:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 88 13                         # gelu-lut-refined.mlir:88:13
	addli r23, r23, 1
.LBB0_13:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	addli r1, zero, 21
	.loc	1 64 19                         # gelu-lut-refined.mlir:64:19
	mod.s r3, r13, r4
	addli r13, r13, 1
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	mod.s r1, r12, r1
	addli r12, r12, 1
	.loc	1 64 19                         # gelu-lut-refined.mlir:64:19
	slli r9, r3, 14
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	lui r3, 32
	slli r1, r1, 14
	add.s r3, r1, r3
	.loc	1 69 7                          # gelu-lut-refined.mlir:69:7
	beq r20, r28, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	zext_int2long r[24:25], r5
	.loc	1 69 7                          # gelu-lut-refined.mlir:69:7
	bneq r20, r21, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 7                           # gelu-lut-refined.mlir:0:7
	loadli.w r1,  -624(r30)                 # 4-byte Folded Reload
	.loc	1 50 13 is_stmt 1               # gelu-lut-refined.mlir:50:13
	sll.d r[7:8], r[24:25], r18
	.loc	1 52 13                         # gelu-lut-refined.mlir:52:13
	add.ul r[24:25], r[7:8], r[14:15]
	zext_int2long r[7:8], r1
	.loc	1 53 13                         # gelu-lut-refined.mlir:53:13
	setlt.ul r1, r[7:8], r[24:25]
	addli.d r[7:8], r[26:27], 0
	.loc	1 57 13                         # gelu-lut-refined.mlir:57:13
	bneq r1, zero, .LBB0_10
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 13 is_stmt 0                # gelu-lut-refined.mlir:0:13
	zext_int2long r[7:8], zero
	j .LBB0_10
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 70 7 is_stmt 1                # gelu-lut-refined.mlir:70:7
	addli r1, zero, 5
	xwait r28, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r2, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r16, zero, 13
	shuffle_batch r9, r3, r22, 1
	unlock zero
	xsignal r2, 0
	xsignal r19, 0
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r1, zero, 22
	.loc	1 79 19                         # gelu-lut-refined.mlir:79:19
	addli r3, zero, 40
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	lui r4, 116
	mod.s r1, r10, r1
	.loc	1 79 19                         # gelu-lut-refined.mlir:79:19
	mod.s r3, r11, r3
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	slli r1, r1, 15
	.loc	1 79 19                         # gelu-lut-refined.mlir:79:19
	slli r3, r3, 15
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	add.s r4, r1, r4
	.loc	1 85 7                          # gelu-lut-refined.mlir:85:7
	addli r1, zero, 6
	.loc	1 84 7                          # gelu-lut-refined.mlir:84:7
	beq r20, r18, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	bneq r20, r1, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 18
	xwait r18, 0
	addli r9, zero, 6
	addli r3, zero, 2048
	sll.d r[7:8], r[24:25], r1
	load.d r[24:25], -632(r30)              # 8-byte Folded Reload
	lock zero, r19
	addli r1, zero, 256
	dma_cfg r21, r21, zero, 0
	add.ul r[7:8], r[24:25], r[7:8]
	dma_cfg zero, r8, zero, 2
	dma_cfg r4, r7, r1, 3
	addli r4, zero, 48
	dma_cfg r1, r3, r22, 4
	dma_run zero
	unlock r19
	xsignal r9, 0
	.loc	1 85 7                          # gelu-lut-refined.mlir:85:7
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	lock zero, zero
	ds_cfg r2, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r3, r4, r22, 2
	addli r4, zero, 48
	unlock zero
	xsignal r18, 0
	xsignal r17, 0
	j .LBB0_11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 87 7                          # gelu-lut-refined.mlir:87:7
	bneq r20, r19, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 7 is_stmt 0                 # gelu-lut-refined.mlir:0:7
	addli r4, zero, 1
	addli r1, zero, 1
	addli r24, zero, 0
	.loc	1 87 7                          # gelu-lut-refined.mlir:87:7
	xwait r19, 0
	xwait r17, 0
	beq r23, zero, .LBB0_25
.LBB0_24:                               # %.preheader17
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r7, r24, 14
	slli r8, r24, 8
	lock zero, r4
	addli r24, zero, 1
	mm_cfg r16, r22, r16, 0
	or r7, r7, r3
	or r8, r8, r6
	mm_cfg r19, r19, r4, 2
	mm_acc r8, r9, r7, 5
	andi r7, r1, 1
	addli r1, zero, 0
	unlock r4
	bneq r7, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r7, r24, 14
	slli r8, r24, 8
	lock zero, r4
	addli r24, zero, 1
	mm_cfg r16, r22, r16, 0
	or r7, r7, r3
	or r8, r8, r6
	mm_cfg r19, r19, r4, 2
	mm r8, r9, r7, 5
	andi r7, r1, 1
	addli r1, zero, 0
	unlock r4
	bneq r7, zero, .LBB0_25
.LBB0_26:                               # %.thread16.thread72
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 5
	.loc	1 79 19 is_stmt 1               # gelu-lut-refined.mlir:79:19
	addli r11, r11, 1
	.loc	1 48 5                          # gelu-lut-refined.mlir:48:5
	addli r5, r5, 1
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r10, r10, 1
	addli r4, zero, 48
	.loc	1 87 7                          # gelu-lut-refined.mlir:87:7
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r5, r17, .LBB0_12
	j .LBB0_29
.LBB0_27:                               # %.thread16.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 79 19                         # gelu-lut-refined.mlir:79:19
	addli r11, r11, 1
	.loc	1 48 5                          # gelu-lut-refined.mlir:48:5
	addli r5, r5, 1
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r10, r10, 1
	addli r4, zero, 48
	bneq r5, r17, .LBB0_12
	j .LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 48 5                          # gelu-lut-refined.mlir:48:5
	bneq r20, r19, .LBB0_30
.LBB0_29:                               # %.thread74
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_30:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 97 11                         # gelu-lut-refined.mlir:97:11
	loadli.w r1,  -664(r30)                 # 4-byte Folded Reload
	loadli.w r25,  -648(r30)                # 4-byte Folded Reload
	zext_int2long r[14:15], r22
	zext_int2long r[3:4], r1
	addli r1, zero, 896
	zext_int2long r[7:8], r1
	.loc	1 103 16                        # gelu-lut-refined.mlir:103:16
	mod.s r1, r25, r19
	.loc	1 99 11                         # gelu-lut-refined.mlir:99:11
	min.ul r[7:8], r[3:4], r[7:8]
	addli.d r[7:8], r[7:8], 128
	.loc	1 101 11                        # gelu-lut-refined.mlir:101:11
	max.ul r[7:8], r[7:8], r[3:4]
	.loc	1 103 16                        # gelu-lut-refined.mlir:103:16
	slli r1, r1, 9
	.loc	1 101 11                        # gelu-lut-refined.mlir:101:11
	sub.sl r[3:4], r[7:8], r[3:4]
	.loc	1 102 11                        # gelu-lut-refined.mlir:102:11
	min.ul r[7:8], r[3:4], r[14:15]
	lui r3, 292
	.loc	1 103 16                        # gelu-lut-refined.mlir:103:16
	add.s r4, r1, r3
	.loc	1 106 5                         # gelu-lut-refined.mlir:106:5
	beq r20, r21, .LBB0_5
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r24,  -644(r30)                # 4-byte Folded Reload
	ori r3, r3, 2048
	loadli.w r9,  -636(r30)                 # 4-byte Folded Reload
	loadli.w r23,  -640(r30)                # 4-byte Folded Reload
	lui r14, 8
	.loc	1 107 16 is_stmt 1              # gelu-lut-refined.mlir:107:16
	mod.s r1, r24, r19
	addli r24, r24, 1
	slli r1, r1, 15
	add.s r3, r1, r3
	.loc	1 108 5                         # gelu-lut-refined.mlir:108:5
	bneq r20, r2, .LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	addli r5, zero, 0
	xwait r1, 0
	addli r1, zero, 12
	xwait r1, 0
	addli r1, zero, 15
	xwait r1, 0
	lock zero, r28
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	ew_cfg r21, zero, zero, 3
.LBB0_33:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r3, r5
	add.s r7, r6, r5
	addli r5, r5, 512
	dsmadd r1, r7, r4, 0
	bneq r5, r14, .LBB0_33
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	unlock r28
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	addli r1, zero, 17
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_43
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 109 16                        # gelu-lut-refined.mlir:109:16
	mod.s r1, r23, r19
	loadli.w r4,  -708(r30)                 # 4-byte Folded Reload
	slli r1, r1, 15
	add.s r4, r1, r4
	.loc	1 110 5                         # gelu-lut-refined.mlir:110:5
	addli r1, zero, 5
	bneq r20, r1, .LBB0_41
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 14
	lui r5, 266232
	lui r7, 790528
	addli r6, zero, 0
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r28
	addli r1, zero, 2047
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 13
	ew_cfg r19, zero, zero, 3
	ew_cfg r19, r19, zero, 19
	ew_cfg r1, zero, zero, 10
	loadli.w r1,  -712(r30)                 # 4-byte Folded Reload
	ew_cfg r28, r21, r1, 11
	.loc	1 111 16                        # gelu-lut-refined.mlir:111:16
	mod.s r1, r9, r19
	.loc	1 110 5                         # gelu-lut-refined.mlir:110:5
	ew_cfg zero, zero, r2, 13
	ew_cfg r7, r19, r5, 14
	lui r5, 260096
	ew_cfg zero, r5, zero, 15
	sslut r4, r3, 0
	ew_cfg zero, zero, zero, 10
	.loc	1 111 16                        # gelu-lut-refined.mlir:111:16
	slli r1, r1, 15
	.loc	1 110 5                         # gelu-lut-refined.mlir:110:5
	ew_cfg zero, zero, zero, 19
	unlock r28
	.loc	1 111 16                        # gelu-lut-refined.mlir:111:16
	loadli.w r5,  -716(r30)                 # 4-byte Folded Reload
	add.s r5, r1, r5
	.loc	1 112 5                         # gelu-lut-refined.mlir:112:5
	addli r1, zero, 16
	xwait r1, 0
	addli r1, zero, 20
	xwait r1, 0
	lock zero, r28
	addli r1, zero, 127
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r21, zero, zero, 3
	loadli.w r1,  -720(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r1, zero, zero, 0
.LBB0_37:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r5, r6
	add.s r7, r3, r6
	addli r6, r6, 512
	dscmpnsel r1, r7, r7, 0
	bneq r6, r14, .LBB0_37
# %bb.38:                               #   in Loop: Header=BB0_7 Depth=1
	unlock r28
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	addli r6, zero, 127
	addli r1, zero, 0
	lock zero, r28
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r6, zero, 2
	ew_cfg r21, zero, zero, 3
	loadli.w r6,  -724(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r6, zero, zero, 0
.LBB0_39:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r5, r1
	addli r1, r1, 512
	dscmpnsel r6, r6, r6, 4
	bneq r1, r14, .LBB0_39
# %bb.40:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 114 5                         # gelu-lut-refined.mlir:114:5
	addli r1, zero, 17
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	unlock r28
	.loc	1 114 5                         # gelu-lut-refined.mlir:114:5
	lui r6, 784384
	xwait r1, 0
	lock zero, r28
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r6, zero, 0
	addli r6, zero, 2047
	ew_cfg zero, r6, zero, 2
	ew_cfg r19, zero, zero, 3
	ew_cfg r19, r19, r19, 19
	dsmadd r3, r3, r5, 0
	addli r5, zero, 20
	ew_cfg zero, zero, zero, 19
	unlock r28
	xsignal r5, 0
	.loc	1 115 5                         # gelu-lut-refined.mlir:115:5
	lock zero, r28
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 15
	ew_cfg zero, r6, zero, 2
	ew_cfg r19, zero, zero, 3
	ew_cfg r19, r19, r19, 19
	dsmadd r4, r4, r3, 0
	ew_cfg zero, zero, zero, 19
	unlock r28
	xsignal r1, 0
	addli r1, zero, 18
	j .LBB0_43
.LBB0_41:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 123 5                         # gelu-lut-refined.mlir:123:5
	bneq r20, zero, .LBB0_6
# %bb.42:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r1,  -684(r30)                 # 4-byte Folded Reload
	.loc	1 123 5                         # gelu-lut-refined.mlir:123:5
	load.d r[17:18], -680(r30)              # 8-byte Folded Reload
	load.d r[26:27], 24(r30)
	addli r3, zero, 5
	sext_int2long r[5:6], r1
	addli r1, zero, 448
	zext_int2long r[14:15], r1
	addli r1, zero, 17
	sll.d r[17:18], r[17:18], r1
	min.sl r[14:15], r[5:6], r[14:15]
	addli r1, zero, 18
	addli.d r[14:15], r[14:15], 64
	add.ul r[17:18], r[26:27], r[17:18]
	load.d r[26:27], -672(r30)              # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r3
	slli r1, r7, 2
	dma_cfg r21, zero, zero, 0
	max.sl r[14:15], r[14:15], r[5:6]
	dma_cfg zero, r21, zero, 1
	add.ul r[17:18], r[17:18], r[26:27]
	sub.sl r[5:6], r[14:15], r[5:6]
	zext_int2long r[14:15], r16
	dma_cfg r18, zero, zero, 2
	dma_cfg r17, r4, r1, 3
	.loc	1 119 11 is_stmt 1              # gelu-lut-refined.mlir:119:11
	min.sl r[5:6], r[5:6], r[14:15]
	.loc	1 123 5                         # gelu-lut-refined.mlir:123:5
	addli r1, zero, 512
	addli r4, zero, 2048
	addli r18, zero, 7
	addli r17, zero, 8
	dma_cfg r4, r1, r5, 4
	addli r1, zero, 19
	dma_run zero
	unlock r3
.LBB0_43:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	xsignal r1, 0
	j .LBB0_6
.LBB0_44:                               # %._crit_edge
	.loc	1 124 5 is_stmt 1               # gelu-lut-refined.mlir:124:5
	xsignal zero, 0
	bneq r20, zero, .LBB0_46
# %bb.45:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	addli r1, zero, 2
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
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
.LBB0_46:
	.loc	1 124 5 epilogue_begin          # gelu-lut-refined.mlir:124:5
	addli sp, sp, 728
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
	.long	792                             # 0x318
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
.asciz	"gelu-lut-refined.mlir"         # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-6_5gjeot" # string offset=29
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
