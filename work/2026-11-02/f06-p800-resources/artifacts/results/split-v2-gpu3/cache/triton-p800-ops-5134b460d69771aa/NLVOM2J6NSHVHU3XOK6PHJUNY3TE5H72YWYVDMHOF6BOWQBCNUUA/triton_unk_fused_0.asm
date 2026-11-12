	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu3/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-etzw0an2" "gelu-lut-refined.mlir"
	.loc	1 6 0                           # gelu-lut-refined.mlir:6:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -792
	addli r1, zero, 1
.Ltmp0:
	.loc	1 27 5 prologue_end             # gelu-lut-refined.mlir:27:5
	core_id r28
	addli r30, sp, 728
	xsignal_mode_cfg r1
	beq r28, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	lui r3, 1048575
	.loc	1 27 5                          # gelu-lut-refined.mlir:27:5
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
	.loc	1 27 5                          # gelu-lut-refined.mlir:27:5
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
	ble.s r3, r1, .LBB0_45
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r3
	sext_int2long r[8:9], r1
	lui r1, 15
	loadli.w r7,  -20(r30)
	loadli.w r18,  -40(r30)
	loadli.w r19,  -60(r30)
	loadli.w r21,  -80(r30)
	loadli.w r10,  -172(r30)
	loadli.w r11,  -336(r30)
	loadli.w r12,  -424(r30)
	loadli.w r13,  -620(r30)
	addli r16, zero, 128
	addli r20, zero, 4
	addli r22, zero, 1
	addli r24, zero, 2
	addli r17, zero, 3
	addli r23, zero, 64
	addli r14, zero, 0
	store.d r[2:3], -696(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r3, 216
	lui r1, 1047552
	store.d r[1:2], -704(r30)               # 8-byte Folded Spill
	lui r1, 324
	ori r1, r1, 2048
	storeli.w r1, -708(r30)                 # 4-byte Folded Spill
	ori r1, r3, 2893
	lui r3, 1046527
	storeli.w r1, -712(r30)                 # 4-byte Folded Spill
	lui r1, 356
	ori r1, r1, 2048
	storeli.w r1, -716(r30)                 # 4-byte Folded Spill
	ori r1, r3, 4095
	lui r3, 1023
	storeli.w r1, -720(r30)                 # 4-byte Folded Spill
	lui r1, 522239
	ori r1, r1, 4095
	storeli.w r1, -724(r30)                 # 4-byte Folded Spill
	ori r1, r3, 4095
	addli r3, zero, 16
	storeli.w r1, -624(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.thread75
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 107 5 is_stmt 1               # gelu-lut-refined.mlir:107:5
	load.d r[1:2], 16(r30)
	load.d r[5:6], -672(r30)                # 8-byte Folded Reload
	add.ul r[1:2], r[1:2], r[5:6]
	addli r5, zero, 13
	xwait r5, 0
	lock zero, r20
	slli r5, r14, 1
	dma_cfg zero, r22, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r4, r1, r5, 3
	addli r1, zero, 256
	addli r2, zero, 512
	dma_cfg r2, r1, r22, 4
	dma_run zero
	unlock r20
	addli r1, zero, 12
	loadli.w r19,  -644(r30)                # 4-byte Folded Reload
	xsignal r1, 0
	loadli.w r7,  -636(r30)                 # 4-byte Folded Reload
	loadli.w r18,  -640(r30)                # 4-byte Folded Reload
	.loc	1 108 16                        # gelu-lut-refined.mlir:108:16
	addli r19, r19, 1
.LBB0_6:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 16 is_stmt 0                # gelu-lut-refined.mlir:0:16
	load.d r[8:9], -656(r30)                # 8-byte Folded Reload
	load.d r[1:2], -696(r30)                # 8-byte Folded Reload
	loadli.w r14,  -660(r30)                # 4-byte Folded Reload
	addli r21, r21, 1
	.loc	1 110 16 is_stmt 1              # gelu-lut-refined.mlir:110:16
	addli r18, r18, 1
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	addli r7, r7, 1
	addli.d r[8:9], r[8:9], 1
	setlt.sl r1, r[8:9], r[1:2]
	beq r1, zero, .LBB0_45
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_40 Depth 2
                                        #     Child Loop BB0_33 Depth 2
	.loc	1 0 16 is_stmt 0                # gelu-lut-refined.mlir:0:16
	storeli.w r21, -648(r30)                # 4-byte Folded Spill
	storeli.w r19, -644(r30)                # 4-byte Folded Spill
	storeli.w r18, -640(r30)                # 4-byte Folded Spill
	storeli.w r7, -636(r30)                 # 4-byte Folded Spill
	.loc	1 49 5 is_stmt 1                # gelu-lut-refined.mlir:49:5
	bneq r28, r20, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r1,  48(r30)
	loadli.w r2,  44(r30)
	store.d r[8:9], -656(r30)               # 8-byte Folded Spill
	mod.s r6, r14, r20
	addli r14, r14, 1
	addli r18, zero, 7
	addli r5, zero, 0
	addli r21, zero, 0
	addli r19, zero, 21
	storeli.w r14, -660(r30)                # 4-byte Folded Spill
	div.s r1, r8, r1
	addli r9, zero, 48
	slli r6, r6, 15
	div.s r1, r1, r2
	addli r2, zero, 32
	div.s r4, r1, r16
	slli r7, r4, 3
	slli r4, r4, 7
	sub.s r8, r2, r7
	addli r2, zero, 8
	sub.s r4, r1, r4
	min.s r8, r8, r2
	mod.s r1, r1, r8
	div.s r4, r4, r8
	add.s r1, r7, r1
	slli r2, r4, 7
	zext_int2long r[7:8], r4
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	slli r2, r1, 6
	zext_int2long r[14:15], r1
	addli r1, zero, 17
	sll.d r[7:8], r[7:8], r18
	store.d r[14:15], -680(r30)             # 8-byte Folded Spill
	storeli.w r2, -684(r30)                 # 4-byte Folded Spill
	sll.d r[14:15], r[14:15], r1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	load.d r[1:2], 8(r30)
	sll.d r[7:8], r[7:8], r22
	store.d r[7:8], -672(r30)               # 8-byte Folded Spill
	add.ul r[1:2], r[1:2], r[7:8]
	store.d r[1:2], -632(r30)               # 8-byte Folded Spill
	load.d r[1:2], -704(r30)                # 8-byte Folded Reload
	and.d r[26:27], r[14:15], r[1:2]
	j .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 5                           # gelu-lut-refined.mlir:0:5
	addli r1, zero, 2048
	.loc	1 58 13 is_stmt 1               # gelu-lut-refined.mlir:58:13
	sub.sl r[18:19], r[7:8], r[18:19]
	addli r3, zero, 1984
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	sll.d r[7:8], r[7:8], r22
	xwait r17, 0
	lock zero, r20
	dma_cfg r22, r22, zero, 0
	zext_int2long r[1:2], r1
	.loc	1 59 13                         # gelu-lut-refined.mlir:59:13
	div.sl r[1:2], r[18:19], r[1:2]
	zext_int2long r[18:19], r3
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	load.d r[3:4], 0(r30)
	add.ul r[7:8], r[3:4], r[7:8]
	addli r3, zero, 4096
	dma_cfg zero, r8, zero, 2
	.loc	1 61 13                         # gelu-lut-refined.mlir:61:13
	min.sl r[18:19], r[1:2], r[18:19]
	.loc	1 62 13                         # gelu-lut-refined.mlir:62:13
	sub.sl r[1:2], r[18:19], r[1:2]
	addli r18, zero, 7
	addli r19, zero, 21
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	addli r1, r1, 64
	addli r2, zero, 256
	dma_cfg r25, r7, r2, 3
	dma_cfg r2, r3, r1, 4
	dma_run zero
	unlock r20
	xsignal r24, 0
	addli r3, zero, 16
.LBB0_11:                               # %.thread16
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r11, r11, 1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	addli r5, r5, 1
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	addli r10, r10, 1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	beq r5, r3, .LBB0_28
.LBB0_12:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 89 13                         # gelu-lut-refined.mlir:89:13
	addli r21, r21, 1
.LBB0_13:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 66 19                         # gelu-lut-refined.mlir:66:19
	mod.s r1, r12, r19
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	mod.s r4, r13, r9
	.loc	1 66 19                         # gelu-lut-refined.mlir:66:19
	lui r2, 32
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	addli r13, r13, 1
	.loc	1 66 19                         # gelu-lut-refined.mlir:66:19
	addli r12, r12, 1
	slli r1, r1, 14
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	slli r4, r4, 14
	.loc	1 66 19                         # gelu-lut-refined.mlir:66:19
	add.s r25, r1, r2
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	beq r28, r24, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	zext_int2long r[7:8], r5
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	bneq r28, r22, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 7                           # gelu-lut-refined.mlir:0:7
	loadli.w r1,  -624(r30)                 # 4-byte Folded Reload
	.loc	1 51 13 is_stmt 1               # gelu-lut-refined.mlir:51:13
	sll.d r[7:8], r[7:8], r18
	.loc	1 53 13                         # gelu-lut-refined.mlir:53:13
	add.ul r[7:8], r[7:8], r[14:15]
	zext_int2long r[18:19], r1
	.loc	1 54 13                         # gelu-lut-refined.mlir:54:13
	setlt.ul r1, r[18:19], r[7:8]
	addli.d r[18:19], r[26:27], 0
	.loc	1 58 13                         # gelu-lut-refined.mlir:58:13
	bneq r1, zero, .LBB0_10
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 13 is_stmt 0                # gelu-lut-refined.mlir:0:13
	zext_int2long r[18:19], zero
	j .LBB0_10
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 71 7 is_stmt 1                # gelu-lut-refined.mlir:71:7
	addli r1, zero, 5
	xwait r24, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r17, zero, 0
	ds_cfg r16, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r23, zero, 13
	shuffle_batch r4, r25, r16, 1
	unlock zero
	xsignal r17, 0
	xsignal r20, 0
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	addli r1, zero, 22
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r2, zero, 40
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	mod.s r1, r10, r1
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	mod.s r2, r11, r2
	slli r25, r2, 15
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	slli r1, r1, 15
	lui r2, 116
	add.s r9, r1, r2
	.loc	1 86 7                          # gelu-lut-refined.mlir:86:7
	addli r1, zero, 6
	.loc	1 85 7                          # gelu-lut-refined.mlir:85:7
	beq r28, r18, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	bneq r28, r1, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 19
	xwait r18, 0
	addli r4, zero, 256
	addli r25, zero, 6
	sll.d r[1:2], r[7:8], r1
	load.d r[7:8], -632(r30)                # 8-byte Folded Reload
	lock zero, r20
	dma_cfg r22, r22, zero, 0
	add.ul r[1:2], r[7:8], r[1:2]
	dma_cfg zero, r2, zero, 2
	dma_cfg r9, r1, r4, 3
	addli r1, zero, 4096
	addli r9, zero, 48
	dma_cfg r4, r1, r16, 4
	dma_run zero
	unlock r20
	xsignal r25, 0
	.loc	1 86 7                          # gelu-lut-refined.mlir:86:7
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 8
	ds_cfg r17, zero, 0
	ds_cfg r16, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r16, zero, 13
	shuffle_coa r25, r9, r16, 2
	addli r9, zero, 48
	unlock zero
	xsignal r18, 0
	xsignal r1, 0
	j .LBB0_11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 88 7                          # gelu-lut-refined.mlir:88:7
	bneq r28, r20, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 8
	xwait r20, 0
	addli r9, zero, 1
	addli r7, zero, 0
	xwait r1, 0
	addli r1, zero, 1
	beq r21, zero, .LBB0_25
.LBB0_24:                               # %.preheader17
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r2, r7, 14
	slli r7, r7, 8
	lock zero, r9
	mm_cfg r23, r16, r23, 0
	or r2, r2, r25
	or r7, r7, r6
	mm_cfg r20, r20, r9, 2
	mm_acc r7, r4, r2, 5
	andi r2, r1, 1
	addli r7, zero, 1
	addli r1, zero, 0
	unlock r9
	bneq r2, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r2, r7, 14
	slli r7, r7, 8
	lock zero, r9
	mm_cfg r23, r16, r23, 0
	or r2, r2, r25
	or r7, r7, r6
	mm_cfg r20, r20, r9, 2
	mm r7, r4, r2, 5
	andi r2, r1, 1
	addli r7, zero, 1
	addli r1, zero, 0
	unlock r9
	bneq r2, zero, .LBB0_25
.LBB0_26:                               # %.thread16.thread72
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 5
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r11, r11, 1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	addli r5, r5, 1
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	addli r10, r10, 1
	addli r9, zero, 48
	.loc	1 88 7                          # gelu-lut-refined.mlir:88:7
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r5, r3, .LBB0_12
	j .LBB0_29
.LBB0_27:                               # %.thread16.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r11, r11, 1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	addli r5, r5, 1
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	addli r10, r10, 1
	addli r9, zero, 48
	bneq r5, r3, .LBB0_12
	j .LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	bneq r28, r20, .LBB0_30
.LBB0_29:                               # %.thread74
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_30:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 98 11                         # gelu-lut-refined.mlir:98:11
	loadli.w r1,  -664(r30)                 # 4-byte Folded Reload
	addli r4, zero, 1920
	loadli.w r21,  -648(r30)                # 4-byte Folded Reload
	zext_int2long r[8:9], r16
	zext_int2long r[4:5], r4
	zext_int2long r[1:2], r1
	.loc	1 104 16                        # gelu-lut-refined.mlir:104:16
	mod.s r7, r21, r20
	.loc	1 100 11                        # gelu-lut-refined.mlir:100:11
	min.ul r[4:5], r[1:2], r[4:5]
	addli.d r[4:5], r[4:5], 128
	.loc	1 102 11                        # gelu-lut-refined.mlir:102:11
	max.ul r[4:5], r[4:5], r[1:2]
	sub.sl r[1:2], r[4:5], r[1:2]
	.loc	1 104 16                        # gelu-lut-refined.mlir:104:16
	slli r4, r7, 9
	.loc	1 103 11                        # gelu-lut-refined.mlir:103:11
	min.ul r[14:15], r[1:2], r[8:9]
	lui r2, 292
	.loc	1 104 16                        # gelu-lut-refined.mlir:104:16
	add.s r4, r4, r2
	.loc	1 107 5                         # gelu-lut-refined.mlir:107:5
	beq r28, r22, .LBB0_5
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r19,  -644(r30)                # 4-byte Folded Reload
	ori r2, r2, 2048
	loadli.w r18,  -640(r30)                # 4-byte Folded Reload
	.loc	1 108 16 is_stmt 1              # gelu-lut-refined.mlir:108:16
	mod.s r1, r19, r20
	addli r19, r19, 1
	slli r1, r1, 15
	add.s r5, r1, r2
	.loc	1 109 5                         # gelu-lut-refined.mlir:109:5
	bneq r28, r17, .LBB0_36
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	addli r9, zero, 0
	lui r7, 8
	xwait r1, 0
	addli r1, zero, 12
	xwait r1, 0
	addli r1, zero, 15
	xwait r1, 0
	lock zero, r24
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	ew_cfg r22, zero, zero, 3
.LBB0_33:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r5, r9
	add.s r2, r6, r9
	addli r9, r9, 512
	dsmadd r1, r2, r4, 0
	bneq r9, r7, .LBB0_33
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	unlock r24
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 17
	xsignal r3, 0
	xsignal r1, 0
	addli r1, zero, 14
.LBB0_35:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	xsignal r1, 0
	j .LBB0_43
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 110 16 is_stmt 1              # gelu-lut-refined.mlir:110:16
	mod.s r1, r18, r20
	loadli.w r2,  -708(r30)                 # 4-byte Folded Reload
	lui r8, 8
	slli r1, r1, 15
	add.s r6, r1, r2
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
	addli r1, zero, 5
	bneq r28, r1, .LBB0_42
# %bb.37:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 14
	lui r2, 266232
	lui r4, 790528
	addli r14, zero, 0
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r24
	addli r1, zero, 2047
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 13
	ew_cfg r20, zero, zero, 3
	ew_cfg r20, r20, zero, 19
	ew_cfg r1, zero, zero, 10
	loadli.w r1,  -712(r30)                 # 4-byte Folded Reload
	ew_cfg r24, r22, r1, 11
	ew_cfg zero, zero, r17, 13
	loadli.w r7,  -636(r30)                 # 4-byte Folded Reload
	ew_cfg r4, r20, r2, 14
	lui r2, 260096
	ew_cfg zero, r2, zero, 15
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	mod.s r1, r7, r20
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
	sslut r6, r5, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r24
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	loadli.w r2,  -716(r30)                 # 4-byte Folded Reload
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	xwait r3, 0
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	slli r1, r1, 15
	add.s r4, r1, r2
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	addli r1, zero, 20
	xwait r1, 0
	lock zero, r24
	addli r1, zero, 127
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r22, zero, zero, 3
	loadli.w r1,  -720(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r1, zero, zero, 0
.LBB0_38:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r4, r14
	add.s r2, r5, r14
	addli r14, r14, 512
	dscmpnsel r1, r2, r2, 0
	bneq r14, r8, .LBB0_38
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	unlock r24
	.loc	1 114 5                         # gelu-lut-refined.mlir:114:5
	addli r2, zero, 127
	addli r1, zero, 0
	lock zero, r24
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	ew_cfg r22, zero, zero, 3
	loadli.w r2,  -724(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r2, zero, zero, 0
.LBB0_40:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r2, r4, r1
	addli r1, r1, 512
	dscmpnsel r2, r2, r2, 4
	bneq r1, r8, .LBB0_40
# %bb.41:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 115 5                         # gelu-lut-refined.mlir:115:5
	addli r1, zero, 17
	.loc	1 114 5                         # gelu-lut-refined.mlir:114:5
	unlock r24
	.loc	1 115 5                         # gelu-lut-refined.mlir:115:5
	lui r2, 784384
	xwait r1, 0
	lock zero, r24
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r2, zero, 0
	addli r2, zero, 2047
	ew_cfg zero, r2, zero, 2
	ew_cfg r20, zero, zero, 3
	ew_cfg r20, r20, r20, 19
	dsmadd r5, r5, r4, 0
	addli r4, zero, 20
	ew_cfg zero, zero, zero, 19
	unlock r24
	xsignal r4, 0
	.loc	1 116 5                         # gelu-lut-refined.mlir:116:5
	lock zero, r24
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 15
	ew_cfg zero, r2, zero, 2
	ew_cfg r20, zero, zero, 3
	ew_cfg r20, r20, r20, 19
	dsmadd r6, r6, r5, 0
	ew_cfg zero, zero, zero, 19
	unlock r24
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	j .LBB0_6
.LBB0_42:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	beq r28, zero, .LBB0_44
.LBB0_43:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r7,  -636(r30)                 # 4-byte Folded Reload
	j .LBB0_6
.LBB0_44:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r1,  -684(r30)                 # 4-byte Folded Reload
	addli r3, zero, 1984
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	load.d r[7:8], -680(r30)                # 8-byte Folded Reload
	load.d r[25:26], 24(r30)
	zext_int2long r[4:5], r3
	addli r3, zero, 18
	sext_int2long r[1:2], r1
	sll.d r[7:8], r[7:8], r3
	min.sl r[4:5], r[1:2], r[4:5]
	add.ul r[7:8], r[25:26], r[7:8]
	load.d r[25:26], -672(r30)              # 8-byte Folded Reload
	xwait r3, 0
	addli r3, zero, 5
	addli.d r[4:5], r[4:5], 64
	lock zero, r3
	max.sl r[4:5], r[4:5], r[1:2]
	dma_cfg r22, zero, zero, 0
	add.ul r[7:8], r[7:8], r[25:26]
	dma_cfg zero, r22, zero, 1
	sub.sl r[1:2], r[4:5], r[1:2]
	zext_int2long r[4:5], r23
	dma_cfg r8, zero, zero, 2
	.loc	1 120 11 is_stmt 1              # gelu-lut-refined.mlir:120:11
	min.sl r[1:2], r[1:2], r[4:5]
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	slli r4, r14, 2
	addli r5, zero, 4096
	dma_cfg r7, r6, r4, 3
	addli r4, zero, 512
	dma_cfg r5, r4, r1, 4
	dma_run zero
	unlock r3
	addli r3, zero, 16
	addli r1, zero, 19
	j .LBB0_35
.LBB0_45:                               # %._crit_edge
	.loc	1 125 5                         # gelu-lut-refined.mlir:125:5
	xsignal zero, 0
	bneq r28, zero, .LBB0_47
# %bb.46:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	addli r1, zero, 2
	.loc	1 125 5                         # gelu-lut-refined.mlir:125:5
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
.LBB0_47:
	.loc	1 125 5 epilogue_begin          # gelu-lut-refined.mlir:125:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu3/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-etzw0an2" # string offset=29
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
