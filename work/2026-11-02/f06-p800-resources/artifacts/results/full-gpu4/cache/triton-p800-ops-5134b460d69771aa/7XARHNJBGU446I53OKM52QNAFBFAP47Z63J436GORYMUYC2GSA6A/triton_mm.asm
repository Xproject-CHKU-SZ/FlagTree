	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-4romk49a" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -760
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r12
	addli r30, sp, 696
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
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
	.loc	1 33 10 is_stmt 1               # parallel-rne.mlir:33:10
	load_param_i r3, 1
	loadli.w r4,  32(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -120(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -284(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -400(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -596(r30)
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r2, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r2, r2, r4
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r2, r1, .LBB0_296
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 42 11 is_stmt 1               # parallel-rne.mlir:42:11
	sext_int2long r[6:7], r1
	addli r16, zero, 64
	addli r11, zero, 2
	addli r19, zero, 4
	lui r17, 1048560
	storeli.w zero, -644(r30)               # 4-byte Folded Spill
	store.d r[2:3], -688(r30)               # 8-byte Folded Spill
	addli r2, zero, 4095
	lui r3, 522240
	lui r1, 1048572
	store.d r[1:2], -696(r30)               # 8-byte Folded Spill
	lui r2, 7
	lui r1, 524287
	ori r13, r2, 4095
	lui r2, 522239
	ori r28, r1, 4095
	lui r1, 1024
	ori r18, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r2, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -656(r30)                # 8-byte Folded Reload
	.loc	1 50 5 is_stmt 1                # parallel-rne.mlir:50:5
	load.d r[4:5], -688(r30)                # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r2, r[6:7], r[4:5]
	beq r2, zero, .LBB0_296
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_31 Depth 3
                                        #       Child Loop BB0_32 Depth 3
                                        #     Child Loop BB0_75 Depth 2
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_78 Depth 3
                                        #     Child Loop BB0_45 Depth 2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_48 Depth 3
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
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r24, zero, 4
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	bneq r12, r19, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	loadli.w r4,  28(r30)
	store.d r[6:7], -656(r30)               # 8-byte Folded Spill
	addli r26, zero, 1
	addli r10, zero, 13
	addli r21, zero, 28
	div.s r2, r6, r2
	addli r6, zero, 8
	div.s r5, r2, r4
	div.s r8, r5, r16
	slli r2, r8, 3
	sub.s r4, r11, r2
	min.s r9, r4, r6
	.loc	1 95 15 is_stmt 1               # parallel-rne.mlir:95:15
	loadli.w r6,  -596(r30)
	mod.s r4, r5, r9
	add.s r4, r2, r4
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	loadli.w r2,  -400(r30)
	setlt.u r7, r26, r4
	zext_int2long r[14:15], r4
	sll.d r[19:20], r[14:15], r10
	store.d r[14:15], -664(r30)             # 8-byte Folded Spill
	store.d r[19:20], -624(r30)             # 8-byte Folded Spill
	bneq r7, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[14:15], zero
	j .LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[14:15], -696(r30)              # 8-byte Folded Reload
	and.d r[14:15], r[19:20], r[14:15]
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	slli r8, r8, 6
	store.d r[14:15], -632(r30)             # 8-byte Folded Spill
	loadli.w r14,  -644(r30)                # 4-byte Folded Reload
	slli r4, r4, 6
	addli r7, zero, 0
	sub.s r5, r5, r8
	addli r8, zero, 3
	storeli.w r4, -676(r30)                 # 4-byte Folded Spill
	div.s r5, r5, r9
	mod.s r8, r14, r8
	addli r14, r14, 1
	storeli.w r14, -644(r30)                # 4-byte Folded Spill
	slli r4, r5, 7
	zext_int2long r[9:10], r5
	slli r27, r8, 15
	lui r8, 24
	storeli.w r4, -680(r30)                 # 4-byte Folded Spill
	addli r4, zero, 7
	sll.d r[4:5], r[9:10], r4
	add.s r10, r27, r8
	load.d r[8:9], 8(r30)
	store.d r[4:5], -672(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[4:5], r26
	add.ul r[4:5], r[8:9], r[4:5]
	addli r8, zero, 0
	store.d r[4:5], -640(r30)               # 8-byte Folded Spill
	j .LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=2
	lui r2, 48
	addli r4, zero, 64
	addli r14, zero, 1
	addli r24, zero, 4
	ori r2, r2, 64
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	add.s r2, r9, r2
	addli r9, zero, 4
	lock zero, r9
	dma_cfg r12, r12, zero, 0
	addli r12, zero, 128
	dma_cfg zero, r20, zero, 2
	dma_cfg r2, r19, r4, 3
	addli r20, zero, 256
	addli r19, zero, 5
	addli r2, zero, 8
	dma_cfg r12, r4, r11, 4
	dma_cfg r20, r20, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r19
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 64
	dma_cfg zero, zero, r5, 10
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
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r25, zero, r4, 3
	dma_cfg r12, zero, r11, 4
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r12
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	dma_cfg r20, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r19
	xsignal r11, 0
.LBB0_15:                               # %.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -284(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r4,  -120(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, r2, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r4, r4, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r2, -284(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r4, -120(r30)
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	andi r2, r26, 1
	bneq r2, zero, .LBB0_28
	j .LBB0_35
.LBB0_16:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_31 Depth 3
                                        #       Child Loop BB0_32 Depth 3
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r4, zero, 48
	addli r9, zero, 128
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r5, r2, r21
	addli r23, r2, 1
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r4, r6, r4
	zext_int2long r[14:15], r9
	addli r6, r6, 1
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r23, -400(r30)
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	store.d r[14:15], -608(r30)             # 8-byte Folded Spill
	zext_int2long r[14:15], r16
	storeli.w r6, -596(r30)
	store.d r[14:15], -616(r30)             # 8-byte Folded Spill
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r9, r5, 14
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r15, r4, 14
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	lui r4, 48
	add.s r25, r9, r4
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	beq r12, r11, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[11:12], r8
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r14
	addli r8, zero, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	bneq r14, r8, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r16, zero, 6
	load.d r[14:15], -608(r30)              # 8-byte Folded Reload
	addli r22, zero, 27
	sll.d r[4:5], r[11:12], r16
	load.d r[11:12], -624(r30)              # 8-byte Folded Reload
	or.d r[4:5], r[4:5], r[11:12]
	load.d r[11:12], -632(r30)              # 8-byte Folded Reload
	sub.sl r[11:12], r[4:5], r[11:12]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[4:5], r[4:5], r8
	addli r8, zero, 3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[11:12], r[11:12], r[14:15]
	load.d r[14:15], -616(r30)              # 8-byte Folded Reload
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	xwait r8, 0
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[14:15], r[11:12], r[14:15]
	sub.sl r[11:12], r[14:15], r[11:12]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	load.d r[14:15], 0(r30)
	add.ul r[19:20], r[14:15], r[4:5]
	addli r15, r11, 64
	addli r11, zero, 2
	addli r5, zero, 7
	addli r12, zero, 1
	blt.s r22, r2, .LBB0_14
# %bb.19:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r14, zero, 5
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r2, zero, 8
	addli r4, zero, 128
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r5, 10
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
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 64
	dma_cfg r12, r12, zero, 0
	dma_cfg r12, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r25, zero, r2, 3
	dma_cfg r4, zero, r11, 4
	addli r4, zero, 256
	dma_cfg r4, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	j .LBB0_14
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r2, zero, 5
	xwait r11, 0
	addli r16, zero, 64
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 64
	ds_cfg r11, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r2, zero, 13
	shuffle_batch r15, r25, r2, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	xsignal r24, 0
	j .LBB0_15
.LBB0_21:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r2,  -284(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r8,  -120(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r4, zero, 40
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r5, zero, 29
	addli r16, zero, 6
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r4, r2, r4
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r5, r8, r5
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r2, r2, 1
	storeli.w r2, -284(r30)
	slli r2, r4, 15
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r9, r5, 15
	addli r4, r8, 1
	lui r5, 160
	storeli.w r4, -120(r30)
	add.s r25, r9, r5
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r4, zero, 7
	beq r14, r4, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_16 Depth=2
	bneq r14, r16, .LBB0_29
# %bb.23:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r24, zero, 17
	addli r19, zero, 28
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	sll.d r[4:5], r[11:12], r24
	load.d r[11:12], -640(r30)              # 8-byte Folded Reload
	add.ul r[14:15], r[11:12], r[4:5]
	addli r5, zero, 7
	addli r11, zero, 2
	addli r12, zero, 3
	xwait r5, 0
	blt.s r19, r8, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r21, zero, 5
	addli r20, zero, 1
	addli r4, zero, 4
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r2, zero, 8
	addli r8, zero, 128
	lock zero, r21
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r5, 10
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
	dma_cfg zero, zero, r24, 10
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
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r25, zero, r2, 3
	dma_cfg r8, zero, r4, 4
	addli r4, zero, 512
	dma_cfg r4, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
.LBB0_25:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r2, 160
	addli r8, zero, 4
	addli r20, zero, 1
	addli r4, zero, 64
	addli r21, zero, 28
	ori r2, r2, 64
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	lock zero, r8
	dma_cfg r20, r20, zero, 0
	add.s r2, r9, r2
	dma_cfg zero, r15, zero, 2
	addli r9, zero, 128
	dma_cfg r2, r14, r4, 3
	addli r15, zero, 512
	addli r2, zero, 2048
	addli r14, zero, 5
	dma_cfg r9, r4, r8, 4
	dma_cfg r15, r2, r4, 5
	addli r2, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 64
	dma_cfg zero, zero, r5, 10
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
	dma_cfg zero, zero, r24, 10
	addli r24, zero, 4
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
	addli r2, zero, 6
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r25, zero, r4, 3
	dma_cfg r9, zero, r8, 4
	dma_cfg r15, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	j .LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	addli r4, zero, 9
	addli r11, zero, 2
	xwait r16, 0
	addli r5, zero, 128
	addli r16, zero, 64
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 64
	ds_cfg r11, zero, 0
	ds_cfg r5, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r5, zero, 13
	shuffle_coa r2, r25, r4, 2
	addli r2, zero, 7
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
.LBB0_27:                               # %.thread20
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	andi r2, r26, 1
	beq r2, zero, .LBB0_35
.LBB0_28:                               # %.backedge
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r26, zero, 0
	.loc	1 122 15 is_stmt 1              # parallel-rne.mlir:122:15
	addli r7, r7, 1
	addli r8, zero, 1
	addli r2, r23, 0
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	j .LBB0_16
.LBB0_29:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	andi r9, r26, 1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	addli r14, zero, 4
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	bneq r12, r14, .LBB0_34
# %bb.30:                               #   in Loop: Header=BB0_16 Depth=2
	addli r4, zero, 8
	xwait r14, 0
	addli r16, zero, 64
	addli r8, zero, 1
	addli r11, zero, 1
	xwait r4, 0
	addli r4, zero, 0
	beq r7, zero, .LBB0_32
.LBB0_31:                               # %.preheader30
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r5, r4, 14
	slli r4, r4, 8
	lock zero, r8
	mm_cfg r16, r16, r16, 0
	or r5, r5, r2
	or r4, r4, r10
	mm_cfg r14, r14, r8, 2
	mm_acc r4, r15, r5, 8
	andi r5, r11, 1
	addli r4, zero, 1
	addli r11, zero, 0
	unlock r8
	bneq r5, zero, .LBB0_31
	j .LBB0_33
.LBB0_32:                               # %.preheader29
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r5, r4, 14
	slli r4, r4, 8
	lock zero, r8
	mm_cfg r16, r16, r16, 0
	or r5, r5, r2
	or r4, r4, r10
	mm_cfg r14, r14, r8, 2
	mm r4, r15, r5, 8
	andi r5, r11, 1
	addli r4, zero, 1
	addli r11, zero, 0
	unlock r8
	bneq r5, zero, .LBB0_32
.LBB0_33:                               # %.thread20.thread44
                                        #   in Loop: Header=BB0_16 Depth=2
	addli r2, zero, 5
	addli r24, zero, 4
	addli r11, zero, 2
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	bneq r9, zero, .LBB0_28
	j .LBB0_36
.LBB0_34:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r24, zero, 4
	addli r16, zero, 64
	addli r11, zero, 2
	bneq r9, zero, .LBB0_28
	j .LBB0_37
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 125 7 is_stmt 1               # parallel-rne.mlir:125:7
	bneq r12, r24, .LBB0_37
.LBB0_36:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	storeli.w zero, -640(r30)               # 4-byte Folded Spill
	xsignal r2, 0
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	j .LBB0_40
.LBB0_37:                               # %.thread43
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 3
	bneq r12, r2, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	storeli.w r2, -640(r30)                 # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -640(r30)               # 4-byte Folded Spill
.LBB0_40:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	addli r2, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	xfence
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { lm, sm, gm }
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	csr_set csr5, r2
	addli r2, zero, 127
	sync_core
	zext_int2long r[6:7], r2
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	beq r12, zero, .LBB0_73
# %bb.41:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r19, zero, 4
	.loc	1 165 7 is_stmt 1               # parallel-rne.mlir:165:7
	beq r12, r11, .LBB0_104
.LBB0_42:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 1
	bneq r12, r2, .LBB0_135
# %bb.43:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[4:5], zero
	addli r2, zero, 8
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	store.d r[4:5], -632(r30)               # 8-byte Folded Spill
	zext_int2long r[4:5], r2
	xfence
	mfence { lm, sm, gm }
	j .LBB0_45
.LBB0_44:                               # %middle.block99
                                        #   in Loop: Header=BB0_45 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[8:9], -624(r30)                # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 173 9 is_stmt 1               # parallel-rne.mlir:173:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_134
.LBB0_45:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_48 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	store.d r[4:5], -624(r30)               # 8-byte Folded Spill
	sll.d r[25:26], r[4:5], r2
	bneq r27, r10, .LBB0_52
# %bb.46:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_45 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_48
.LBB0_47:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	setlt.ul r4, r[8:9], r[6:7]
	.loc	1 189 13 is_stmt 1              # parallel-rne.mlir:189:13
	add.s r2, r27, r2
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	stores.w r11, 0(r2)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	beq r4, zero, .LBB0_44
.LBB0_48:                               # %scalar.ph93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[4:5], r[8:9], r[25:26]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r12, 0(r4)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r4, r12, r28
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	setlt.u r5, r3, r4
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r5, zero, .LBB0_50
# %bb.49:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r4, r18, r4
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r4, zero, .LBB0_47
	j .LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r1
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r4, r18, r4
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r4, zero, .LBB0_47
.LBB0_51:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r13
	and r11, r4, r17
	j .LBB0_47
.LBB0_52:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_45 Depth=2
	load.d r[19:20], -632(r30)              # 8-byte Folded Reload
	j .LBB0_54
.LBB0_53:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	load.d r[4:5], -608(r30)                # 8-byte Folded Reload
	addli.d r[19:20], r[19:20], 4
	seteq.d r4, r[19:20], r[4:5]
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	add.s r5, r27, r23
	stores.w r2, 12(r5)
	stores.w r15, 8(r5)
	stores.w r16, 4(r5)
	stores.w r11, 0(r5)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	bneq r4, zero, .LBB0_44
.LBB0_54:                               # %vector.body95
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[4:5], r[19:20], r[25:26]
	slli r23, r4, 2
	add.s r11, r10, r23
	loads.w r12, 12(r11)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r9, r12, r28
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	setlt.u r2, r3, r9
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r2, zero, .LBB0_56
# %bb.55:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r12, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_54 Depth=3
	or r2, r12, r1
.LBB0_57:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r14, 8(r11)
	and r24, r14, r28
	setlt.u r4, r3, r24
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r4, zero, .LBB0_59
# %bb.58:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r14, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_54 Depth=3
	or r15, r14, r1
.LBB0_60:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r8, 4(r11)
	and r21, r8, r28
	setlt.u r4, r3, r21
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r4, zero, .LBB0_62
# %bb.61:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r8, 0
	j .LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_54 Depth=3
	or r16, r8, r1
.LBB0_63:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r22, 0(r11)
	and r4, r22, r28
	setlt.u r5, r3, r4
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r5, zero, .LBB0_65
# %bb.64:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r22, 0
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r4, r18, r4
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r4, zero, .LBB0_66
	j .LBB0_67
.LBB0_65:                               #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r22, r1
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r4, r18, r4
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r4, zero, .LBB0_67
.LBB0_66:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r22, 16
	andi r4, r4, 1
	add.s r4, r22, r4
	add.s r4, r4, r13
	and r11, r4, r17
.LBB0_67:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	setlt.u r4, r18, r21
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r4, zero, .LBB0_70
# %bb.68:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r24
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r4, zero, .LBB0_71
.LBB0_69:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r9
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r4, zero, .LBB0_53
	j .LBB0_72
.LBB0_70:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r13
	and r16, r4, r17
	setlt.u r4, r18, r24
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r4, zero, .LBB0_69
.LBB0_71:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r14, 16
	andi r4, r4, 1
	add.s r4, r14, r4
	add.s r4, r4, r13
	and r15, r4, r17
	setlt.u r4, r18, r9
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r4, zero, .LBB0_53
.LBB0_72:                               # %vector.body95
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r13
	and r2, r2, r17
	j .LBB0_53
.LBB0_73:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	xfence
	zext_int2long r[4:5], zero
	addli r8, zero, 7
	mfence { lm, sm, gm }
	j .LBB0_75
.LBB0_74:                               # %middle.block117
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 7
	load.d r[11:12], -624(r30)              # 8-byte Folded Reload
	zext_int2long r[4:5], r8
	.loc	1 144 9 is_stmt 1               # parallel-rne.mlir:144:9
	setlt.ul r2, r[11:12], r[4:5]
	addli.d r[4:5], r[11:12], 1
	beq r2, zero, .LBB0_103
.LBB0_75:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_78 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[21:22], r[4:5], r8
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	store.d r[4:5], -624(r30)               # 8-byte Folded Spill
	bneq r27, r10, .LBB0_82
# %bb.76:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_78
.LBB0_77:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	setlt.ul r4, r[8:9], r[6:7]
	.loc	1 160 13 is_stmt 1              # parallel-rne.mlir:160:13
	add.s r2, r27, r2
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	stores.w r11, 0(r2)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	beq r4, zero, .LBB0_74
.LBB0_78:                               # %scalar.ph111
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r12, 0(r4)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r4, r12, r28
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r5, r3, r4
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r5, zero, .LBB0_80
# %bb.79:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r4, r18, r4
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r4, zero, .LBB0_77
	j .LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r1
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r4, r18, r4
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r4, zero, .LBB0_77
.LBB0_81:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r13
	and r11, r4, r17
	j .LBB0_77
.LBB0_82:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_84
.LBB0_83:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 145 11 is_stmt 1              # parallel-rne.mlir:145:11
	load.d r[4:5], -608(r30)                # 8-byte Folded Reload
	addli.d r[25:26], r[25:26], 4
	seteq.d r2, r[25:26], r[4:5]
	.loc	1 160 13                        # parallel-rne.mlir:160:13
	add.s r4, r27, r15
	stores.w r16, 12(r4)
	stores.w r14, 8(r4)
	stores.w r8, 4(r4)
	stores.w r11, 0(r4)
	.loc	1 145 11                        # parallel-rne.mlir:145:11
	bneq r2, zero, .LBB0_74
.LBB0_84:                               # %vector.body113
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	add.ul r[4:5], r[25:26], r[21:22]
	slli r15, r4, 2
	add.s r11, r10, r15
	loads.w r12, 12(r11)
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	and r2, r12, r28
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	setlt.u r4, r3, r2
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r4, zero, .LBB0_86
# %bb.85:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r12, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_84 Depth=3
	or r16, r12, r1
.LBB0_87:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r9, 8(r11)
	and r24, r9, r28
	setlt.u r4, r3, r24
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r4, zero, .LBB0_89
# %bb.88:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_84 Depth=3
	or r14, r9, r1
.LBB0_90:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r23, 4(r11)
	and r19, r23, r28
	setlt.u r4, r3, r19
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r4, zero, .LBB0_92
# %bb.91:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r23, 0
	j .LBB0_93
.LBB0_92:                               #   in Loop: Header=BB0_84 Depth=3
	or r8, r23, r1
.LBB0_93:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r20, 0(r11)
	and r4, r20, r28
	setlt.u r5, r3, r4
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	bneq r5, zero, .LBB0_95
# %bb.94:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r4, r18, r4
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r4, zero, .LBB0_96
	j .LBB0_97
.LBB0_95:                               #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r20, r1
	.loc	1 157 19 is_stmt 1              # parallel-rne.mlir:157:19
	setlt.u r4, r18, r4
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r4, zero, .LBB0_97
.LBB0_96:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r20, 16
	andi r4, r4, 1
	add.s r4, r20, r4
	add.s r4, r4, r13
	and r11, r4, r17
.LBB0_97:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	setlt.u r4, r18, r19
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r4, zero, .LBB0_100
# %bb.98:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r24
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	beq r4, zero, .LBB0_101
.LBB0_99:                               # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r18, r2
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_83
	j .LBB0_102
.LBB0_100:                              # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r23, 16
	andi r4, r4, 1
	add.s r4, r23, r4
	add.s r4, r4, r13
	and r8, r4, r17
	setlt.u r4, r18, r24
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r4, zero, .LBB0_99
.LBB0_101:                              # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r9, 16
	andi r4, r4, 1
	add.s r4, r9, r4
	add.s r4, r4, r13
	and r14, r4, r17
	setlt.u r2, r18, r2
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	bneq r2, zero, .LBB0_83
.LBB0_102:                              # %vector.body113
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r12, 16
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r13
	and r16, r2, r17
	j .LBB0_83
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	addli r16, zero, 64
	addli r11, zero, 2
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { sm }
	addli r19, zero, 4
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	bneq r12, r11, .LBB0_42
.LBB0_104:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 194 7 is_stmt 1               # parallel-rne.mlir:194:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_106
.LBB0_105:                              # %middle.block108
                                        #   in Loop: Header=BB0_106 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	load.d r[8:9], -624(r30)                # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 202 9 is_stmt 1               # parallel-rne.mlir:202:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_134
.LBB0_106:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_109 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	store.d r[4:5], -624(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	bneq r27, r10, .LBB0_113
# %bb.107:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_106 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_109
.LBB0_108:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	setlt.ul r4, r[8:9], r[6:7]
	.loc	1 218 13 is_stmt 1              # parallel-rne.mlir:218:13
	add.s r2, r27, r2
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	stores.w r11, 0(r2)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	beq r4, zero, .LBB0_105
.LBB0_109:                              # %scalar.ph102
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r12, 0(r4)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r4, r12, r28
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r5, r3, r4
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r5, zero, .LBB0_111
# %bb.110:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r4, r18, r4
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r4, zero, .LBB0_108
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r1
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r4, r18, r4
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r4, zero, .LBB0_108
.LBB0_112:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r13
	and r11, r4, r17
	j .LBB0_108
.LBB0_113:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_106 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_115
.LBB0_114:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	load.d r[4:5], -608(r30)                # 8-byte Folded Reload
	addli.d r[25:26], r[25:26], 4
	seteq.d r2, r[25:26], r[4:5]
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	add.s r4, r27, r15
	stores.w r12, 12(r4)
	stores.w r9, 8(r4)
	stores.w r23, 4(r4)
	stores.w r11, 0(r4)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	bneq r2, zero, .LBB0_105
.LBB0_115:                              # %vector.body104
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[4:5], r[25:26], r[21:22]
	slli r15, r4, 2
	add.s r11, r10, r15
	loads.w r16, 12(r11)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r2, r16, r28
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r4, r3, r2
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r4, zero, .LBB0_117
# %bb.116:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r16, 0
	j .LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_115 Depth=3
	or r12, r16, r1
.LBB0_118:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r14, 8(r11)
	and r24, r14, r28
	setlt.u r4, r3, r24
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r4, zero, .LBB0_120
# %bb.119:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r14, 0
	j .LBB0_121
.LBB0_120:                              #   in Loop: Header=BB0_115 Depth=3
	or r9, r14, r1
.LBB0_121:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r8, 4(r11)
	and r19, r8, r28
	setlt.u r4, r3, r19
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r4, zero, .LBB0_123
# %bb.122:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r8, 0
	j .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_115 Depth=3
	or r23, r8, r1
.LBB0_124:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r20, 0(r11)
	and r4, r20, r28
	setlt.u r5, r3, r4
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r5, zero, .LBB0_126
# %bb.125:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r4, r18, r4
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r4, zero, .LBB0_127
	j .LBB0_128
.LBB0_126:                              #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r20, r1
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r4, r18, r4
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r4, zero, .LBB0_128
.LBB0_127:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r20, 16
	andi r4, r4, 1
	add.s r4, r20, r4
	add.s r4, r4, r13
	and r11, r4, r17
.LBB0_128:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	setlt.u r4, r18, r19
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r4, zero, .LBB0_131
# %bb.129:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r24
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r4, zero, .LBB0_132
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r18, r2
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r2, zero, .LBB0_114
	j .LBB0_133
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r13
	and r23, r4, r17
	setlt.u r4, r18, r24
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r4, zero, .LBB0_130
.LBB0_132:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r14, 16
	andi r4, r4, 1
	add.s r4, r14, r4
	add.s r4, r4, r13
	and r9, r4, r17
	setlt.u r2, r18, r2
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r2, zero, .LBB0_114
.LBB0_133:                              # %vector.body104
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r16, 16
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r13
	and r12, r2, r17
	j .LBB0_114
.LBB0_134:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	addli r16, zero, 64
	addli r11, zero, 2
	addli r19, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_135:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	loadli.w r2,  -640(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_170
# %bb.136:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	beq r12, r19, .LBB0_201
.LBB0_137:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	addli r2, zero, 7
	beq r12, r2, .LBB0_232
.LBB0_138:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 6
	beq r12, r2, .LBB0_262
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	bneq r12, r2, .LBB0_293
# %bb.140:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_142
.LBB0_141:                              # %middle.block
                                        #   in Loop: Header=BB0_142 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 47
	load.d r[8:9], -624(r30)                # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 289 9 is_stmt 1               # parallel-rne.mlir:289:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_292
.LBB0_142:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_151 Depth 3
                                        #       Child Loop BB0_145 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 290 11 is_stmt 1              # parallel-rne.mlir:290:11
	store.d r[4:5], -624(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	bneq r27, r10, .LBB0_149
# %bb.143:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_142 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_145
.LBB0_144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	setlt.ul r4, r[8:9], r[6:7]
	.loc	1 305 13 is_stmt 1              # parallel-rne.mlir:305:13
	add.s r2, r27, r2
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	stores.w r11, 0(r2)
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	beq r4, zero, .LBB0_141
.LBB0_145:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r12, 0(r4)
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r4, r12, r28
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	setlt.u r5, r3, r4
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r5, zero, .LBB0_147
# %bb.146:                              # %scalar.ph
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r4, r18, r4
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r4, zero, .LBB0_144
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r1
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r4, r18, r4
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r4, zero, .LBB0_144
.LBB0_148:                              # %scalar.ph
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r13
	and r11, r4, r17
	j .LBB0_144
.LBB0_149:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_142 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_151
.LBB0_150:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 290 11 is_stmt 1              # parallel-rne.mlir:290:11
	load.d r[4:5], -608(r30)                # 8-byte Folded Reload
	addli.d r[25:26], r[25:26], 4
	seteq.d r2, r[25:26], r[4:5]
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	add.s r4, r27, r15
	stores.w r12, 12(r4)
	stores.w r16, 8(r4)
	stores.w r23, 4(r4)
	stores.w r11, 0(r4)
	.loc	1 290 11                        # parallel-rne.mlir:290:11
	bneq r2, zero, .LBB0_141
.LBB0_151:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	add.ul r[4:5], r[25:26], r[21:22]
	slli r15, r4, 2
	add.s r11, r10, r15
	loads.w r2, 12(r11)
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r9, r2, r28
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	setlt.u r4, r3, r9
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r4, zero, .LBB0_153
# %bb.152:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r2, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_151 Depth=3
	or r12, r2, r1
.LBB0_154:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	loads.w r14, 8(r11)
	and r24, r14, r28
	setlt.u r4, r3, r24
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r4, zero, .LBB0_156
# %bb.155:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r14, 0
	j .LBB0_157
.LBB0_156:                              #   in Loop: Header=BB0_151 Depth=3
	or r16, r14, r1
.LBB0_157:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	loads.w r8, 4(r11)
	and r19, r8, r28
	setlt.u r4, r3, r19
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r4, zero, .LBB0_159
# %bb.158:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r8, 0
	j .LBB0_160
.LBB0_159:                              #   in Loop: Header=BB0_151 Depth=3
	or r23, r8, r1
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	loads.w r20, 0(r11)
	and r4, r20, r28
	setlt.u r5, r3, r4
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r5, zero, .LBB0_166
# %bb.161:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r4, r18, r4
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r4, zero, .LBB0_163
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r20, 16
	andi r4, r4, 1
	add.s r4, r20, r4
	add.s r4, r4, r13
	and r11, r4, r17
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	setlt.u r4, r18, r19
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r4, zero, .LBB0_167
# %bb.164:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r24
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r4, zero, .LBB0_168
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r9
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r4, zero, .LBB0_150
	j .LBB0_169
.LBB0_166:                              #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r20, r1
	.loc	1 302 19 is_stmt 1              # parallel-rne.mlir:302:19
	setlt.u r4, r18, r4
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	beq r4, zero, .LBB0_162
	j .LBB0_163
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r13
	and r23, r4, r17
	setlt.u r4, r18, r24
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r4, zero, .LBB0_165
.LBB0_168:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r14, 16
	andi r4, r4, 1
	add.s r4, r14, r4
	add.s r4, r4, r13
	and r16, r4, r17
	setlt.u r4, r18, r9
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	bneq r4, zero, .LBB0_150
.LBB0_169:                              # %vector.body
                                        #   in Loop: Header=BB0_151 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r13
	and r12, r2, r17
	j .LBB0_150
.LBB0_170:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 24
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_172
.LBB0_171:                              # %middle.block90
                                        #   in Loop: Header=BB0_172 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[8:9], -624(r30)                # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 231 9 is_stmt 1               # parallel-rne.mlir:231:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_200
.LBB0_172:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_181 Depth 3
                                        #       Child Loop BB0_175 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 232 11 is_stmt 1              # parallel-rne.mlir:232:11
	store.d r[4:5], -624(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	bneq r27, r10, .LBB0_179
# %bb.173:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_172 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_175
.LBB0_174:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	setlt.ul r4, r[8:9], r[6:7]
	.loc	1 247 13 is_stmt 1              # parallel-rne.mlir:247:13
	add.s r2, r27, r2
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	stores.w r11, 0(r2)
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	beq r4, zero, .LBB0_171
.LBB0_175:                              # %scalar.ph84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_172 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r12, 0(r4)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r4, r12, r28
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	setlt.u r5, r3, r4
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r5, zero, .LBB0_177
# %bb.176:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r4, r18, r4
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r4, zero, .LBB0_174
	j .LBB0_178
.LBB0_177:                              #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r1
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r4, r18, r4
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r4, zero, .LBB0_174
.LBB0_178:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r13
	and r11, r4, r17
	j .LBB0_174
.LBB0_179:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_172 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_181
.LBB0_180:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 232 11 is_stmt 1              # parallel-rne.mlir:232:11
	load.d r[4:5], -608(r30)                # 8-byte Folded Reload
	addli.d r[25:26], r[25:26], 4
	seteq.d r2, r[25:26], r[4:5]
	.loc	1 247 13                        # parallel-rne.mlir:247:13
	add.s r4, r27, r15
	stores.w r12, 12(r4)
	stores.w r16, 8(r4)
	stores.w r23, 4(r4)
	stores.w r11, 0(r4)
	.loc	1 232 11                        # parallel-rne.mlir:232:11
	bneq r2, zero, .LBB0_171
.LBB0_181:                              # %vector.body86
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_172 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	add.ul r[4:5], r[25:26], r[21:22]
	slli r15, r4, 2
	add.s r11, r10, r15
	loads.w r2, 12(r11)
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	and r9, r2, r28
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	setlt.u r4, r3, r9
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r4, zero, .LBB0_183
# %bb.182:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r2, 0
	j .LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_181 Depth=3
	or r12, r2, r1
.LBB0_184:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	loads.w r14, 8(r11)
	and r24, r14, r28
	setlt.u r4, r3, r24
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r4, zero, .LBB0_186
# %bb.185:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r14, 0
	j .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_181 Depth=3
	or r16, r14, r1
.LBB0_187:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	loads.w r8, 4(r11)
	and r19, r8, r28
	setlt.u r4, r3, r19
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r4, zero, .LBB0_189
# %bb.188:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r8, 0
	j .LBB0_190
.LBB0_189:                              #   in Loop: Header=BB0_181 Depth=3
	or r23, r8, r1
.LBB0_190:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	loads.w r20, 0(r11)
	and r4, r20, r28
	setlt.u r5, r3, r4
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r5, zero, .LBB0_196
# %bb.191:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r4, r18, r4
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r4, zero, .LBB0_193
.LBB0_192:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r20, 16
	andi r4, r4, 1
	add.s r4, r20, r4
	add.s r4, r4, r13
	and r11, r4, r17
.LBB0_193:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	setlt.u r4, r18, r19
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r4, zero, .LBB0_197
# %bb.194:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r24
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r4, zero, .LBB0_198
.LBB0_195:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r9
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r4, zero, .LBB0_180
	j .LBB0_199
.LBB0_196:                              #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r20, r1
	.loc	1 244 19 is_stmt 1              # parallel-rne.mlir:244:19
	setlt.u r4, r18, r4
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	beq r4, zero, .LBB0_192
	j .LBB0_193
.LBB0_197:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r13
	and r23, r4, r17
	setlt.u r4, r18, r24
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r4, zero, .LBB0_195
.LBB0_198:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r14, 16
	andi r4, r4, 1
	add.s r4, r14, r4
	add.s r4, r4, r13
	and r16, r4, r17
	setlt.u r4, r18, r9
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	bneq r4, zero, .LBB0_180
.LBB0_199:                              # %vector.body86
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r13
	and r12, r2, r17
	j .LBB0_180
.LBB0_200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	addli r16, zero, 64
	addli r11, zero, 2
	addli r19, zero, 4
	.loc	1 223 7                         # parallel-rne.mlir:223:7
	mfence { sm }
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	bneq r12, r19, .LBB0_137
.LBB0_201:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_203
.LBB0_202:                              # %middle.block81
                                        #   in Loop: Header=BB0_203 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 39
	load.d r[8:9], -624(r30)                # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 260 9 is_stmt 1               # parallel-rne.mlir:260:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_231
.LBB0_203:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_212 Depth 3
                                        #       Child Loop BB0_206 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	store.d r[4:5], -624(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	bneq r27, r10, .LBB0_210
# %bb.204:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_203 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_206
.LBB0_205:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	setlt.ul r4, r[8:9], r[6:7]
	.loc	1 276 13 is_stmt 1              # parallel-rne.mlir:276:13
	add.s r2, r27, r2
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	stores.w r11, 0(r2)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	beq r4, zero, .LBB0_202
.LBB0_206:                              # %scalar.ph75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_203 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r12, 0(r4)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r4, r12, r28
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	setlt.u r5, r3, r4
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r5, zero, .LBB0_208
# %bb.207:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r4, r18, r4
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r4, zero, .LBB0_205
	j .LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r1
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r4, r18, r4
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r4, zero, .LBB0_205
.LBB0_209:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r13
	and r11, r4, r17
	j .LBB0_205
.LBB0_210:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_203 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_212
.LBB0_211:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	load.d r[4:5], -608(r30)                # 8-byte Folded Reload
	addli.d r[25:26], r[25:26], 4
	seteq.d r2, r[25:26], r[4:5]
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	add.s r4, r27, r15
	stores.w r12, 12(r4)
	stores.w r16, 8(r4)
	stores.w r23, 4(r4)
	stores.w r11, 0(r4)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	bneq r2, zero, .LBB0_202
.LBB0_212:                              # %vector.body77
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_203 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[4:5], r[25:26], r[21:22]
	slli r15, r4, 2
	add.s r11, r10, r15
	loads.w r2, 12(r11)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r9, r2, r28
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	setlt.u r4, r3, r9
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r4, zero, .LBB0_214
# %bb.213:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r2, 0
	j .LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_212 Depth=3
	or r12, r2, r1
.LBB0_215:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	loads.w r14, 8(r11)
	and r24, r14, r28
	setlt.u r4, r3, r24
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r4, zero, .LBB0_217
# %bb.216:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r14, 0
	j .LBB0_218
.LBB0_217:                              #   in Loop: Header=BB0_212 Depth=3
	or r16, r14, r1
.LBB0_218:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	loads.w r8, 4(r11)
	and r19, r8, r28
	setlt.u r4, r3, r19
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r4, zero, .LBB0_220
# %bb.219:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r8, 0
	j .LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_212 Depth=3
	or r23, r8, r1
.LBB0_221:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	loads.w r20, 0(r11)
	and r4, r20, r28
	setlt.u r5, r3, r4
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r5, zero, .LBB0_227
# %bb.222:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r4, r18, r4
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r4, zero, .LBB0_224
.LBB0_223:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r20, 16
	andi r4, r4, 1
	add.s r4, r20, r4
	add.s r4, r4, r13
	and r11, r4, r17
.LBB0_224:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	setlt.u r4, r18, r19
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r4, zero, .LBB0_228
# %bb.225:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r24
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r4, zero, .LBB0_229
.LBB0_226:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r9
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r4, zero, .LBB0_211
	j .LBB0_230
.LBB0_227:                              #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r20, r1
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r4, r18, r4
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r4, zero, .LBB0_223
	j .LBB0_224
.LBB0_228:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r13
	and r23, r4, r17
	setlt.u r4, r18, r24
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r4, zero, .LBB0_226
.LBB0_229:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r14, 16
	andi r4, r4, 1
	add.s r4, r14, r4
	add.s r4, r4, r13
	and r16, r4, r17
	setlt.u r4, r18, r9
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r4, zero, .LBB0_211
.LBB0_230:                              # %vector.body77
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r13
	and r12, r2, r17
	j .LBB0_211
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	addli r16, zero, 64
	addli r11, zero, 2
	addli r19, zero, 4
	.loc	1 252 7                         # parallel-rne.mlir:252:7
	mfence { sm }
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	addli r2, zero, 7
	bneq r12, r2, .LBB0_138
.LBB0_232:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 339 7 is_stmt 1               # parallel-rne.mlir:339:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_234
.LBB0_233:                              # %middle.block72
                                        #   in Loop: Header=BB0_234 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	load.d r[8:9], -624(r30)                # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 347 9 is_stmt 1               # parallel-rne.mlir:347:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_292
.LBB0_234:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_243 Depth 3
                                        #       Child Loop BB0_237 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 348 11 is_stmt 1              # parallel-rne.mlir:348:11
	store.d r[4:5], -624(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	bneq r27, r10, .LBB0_241
# %bb.235:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_234 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_237
.LBB0_236:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	setlt.ul r4, r[8:9], r[6:7]
	.loc	1 363 13 is_stmt 1              # parallel-rne.mlir:363:13
	add.s r2, r27, r2
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	stores.w r11, 0(r2)
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	beq r4, zero, .LBB0_233
.LBB0_237:                              # %scalar.ph66
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_234 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r12, 0(r4)
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	and r4, r12, r28
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	setlt.u r5, r3, r4
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r5, zero, .LBB0_239
# %bb.238:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r4, r18, r4
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r4, zero, .LBB0_236
	j .LBB0_240
.LBB0_239:                              #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r1
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r4, r18, r4
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r4, zero, .LBB0_236
.LBB0_240:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r13
	and r11, r4, r17
	j .LBB0_236
.LBB0_241:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_234 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_243
.LBB0_242:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 348 11 is_stmt 1              # parallel-rne.mlir:348:11
	load.d r[4:5], -608(r30)                # 8-byte Folded Reload
	addli.d r[25:26], r[25:26], 4
	seteq.d r2, r[25:26], r[4:5]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	add.s r4, r27, r15
	stores.w r12, 12(r4)
	stores.w r16, 8(r4)
	stores.w r23, 4(r4)
	stores.w r11, 0(r4)
	.loc	1 348 11                        # parallel-rne.mlir:348:11
	bneq r2, zero, .LBB0_233
.LBB0_243:                              # %vector.body68
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_234 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	add.ul r[4:5], r[25:26], r[21:22]
	slli r15, r4, 2
	add.s r11, r10, r15
	loads.w r2, 12(r11)
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	and r9, r2, r28
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	setlt.u r4, r3, r9
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r4, zero, .LBB0_245
# %bb.244:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r2, 0
	j .LBB0_246
.LBB0_245:                              #   in Loop: Header=BB0_243 Depth=3
	or r12, r2, r1
.LBB0_246:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r14, 8(r11)
	and r24, r14, r28
	setlt.u r4, r3, r24
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r4, zero, .LBB0_248
# %bb.247:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r14, 0
	j .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_243 Depth=3
	or r16, r14, r1
.LBB0_249:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r8, 4(r11)
	and r19, r8, r28
	setlt.u r4, r3, r19
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r4, zero, .LBB0_251
# %bb.250:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r8, 0
	j .LBB0_252
.LBB0_251:                              #   in Loop: Header=BB0_243 Depth=3
	or r23, r8, r1
.LBB0_252:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r20, 0(r11)
	and r4, r20, r28
	setlt.u r5, r3, r4
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	bneq r5, zero, .LBB0_254
# %bb.253:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r4, r18, r4
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r4, zero, .LBB0_255
	j .LBB0_256
.LBB0_254:                              #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r20, r1
	.loc	1 360 19 is_stmt 1              # parallel-rne.mlir:360:19
	setlt.u r4, r18, r4
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r4, zero, .LBB0_256
.LBB0_255:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r20, 16
	andi r4, r4, 1
	add.s r4, r20, r4
	add.s r4, r4, r13
	and r11, r4, r17
.LBB0_256:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	setlt.u r4, r18, r19
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r4, zero, .LBB0_259
# %bb.257:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r24
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	beq r4, zero, .LBB0_260
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r9
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r4, zero, .LBB0_242
	j .LBB0_261
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r13
	and r23, r4, r17
	setlt.u r4, r18, r24
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r4, zero, .LBB0_258
.LBB0_260:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r14, 16
	andi r4, r4, 1
	add.s r4, r14, r4
	add.s r4, r4, r13
	and r16, r4, r17
	setlt.u r4, r18, r9
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	bneq r4, zero, .LBB0_242
.LBB0_261:                              # %vector.body68
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r13
	and r12, r2, r17
	j .LBB0_242
.LBB0_262:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 48
	.loc	1 310 7 is_stmt 1               # parallel-rne.mlir:310:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_264
.LBB0_263:                              # %middle.block63
                                        #   in Loop: Header=BB0_264 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 55
	load.d r[8:9], -624(r30)                # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 318 9 is_stmt 1               # parallel-rne.mlir:318:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_292
.LBB0_264:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_267 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 319 11 is_stmt 1              # parallel-rne.mlir:319:11
	store.d r[4:5], -624(r30)               # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	bneq r27, r10, .LBB0_271
# %bb.265:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_264 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_267
.LBB0_266:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	setlt.ul r4, r[8:9], r[6:7]
	.loc	1 334 13 is_stmt 1              # parallel-rne.mlir:334:13
	add.s r2, r27, r2
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	stores.w r11, 0(r2)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	beq r4, zero, .LBB0_263
.LBB0_267:                              # %scalar.ph57
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_264 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[4:5], r[8:9], r[21:22]
	slli r2, r4, 2
	add.s r4, r10, r2
	loads.w r12, 0(r4)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r4, r12, r28
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	setlt.u r5, r3, r4
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r5, zero, .LBB0_269
# %bb.268:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r4, r18, r4
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r4, zero, .LBB0_266
	j .LBB0_270
.LBB0_269:                              #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r12, r1
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r4, r18, r4
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r4, zero, .LBB0_266
.LBB0_270:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r13
	and r11, r4, r17
	j .LBB0_266
.LBB0_271:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_264 Depth=2
	zext_int2long r[25:26], zero
	j .LBB0_273
.LBB0_272:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 319 11 is_stmt 1              # parallel-rne.mlir:319:11
	load.d r[4:5], -608(r30)                # 8-byte Folded Reload
	addli.d r[25:26], r[25:26], 4
	seteq.d r2, r[25:26], r[4:5]
	.loc	1 334 13                        # parallel-rne.mlir:334:13
	add.s r4, r27, r15
	stores.w r12, 12(r4)
	stores.w r16, 8(r4)
	stores.w r23, 4(r4)
	stores.w r11, 0(r4)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	bneq r2, zero, .LBB0_263
.LBB0_273:                              # %vector.body59
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_264 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[4:5], r[25:26], r[21:22]
	slli r15, r4, 2
	add.s r11, r10, r15
	loads.w r2, 12(r11)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r9, r2, r28
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	setlt.u r4, r3, r9
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r4, zero, .LBB0_275
# %bb.274:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r2, 0
	j .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_273 Depth=3
	or r12, r2, r1
.LBB0_276:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r14, 8(r11)
	and r24, r14, r28
	setlt.u r4, r3, r24
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r4, zero, .LBB0_278
# %bb.277:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r14, 0
	j .LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_273 Depth=3
	or r16, r14, r1
.LBB0_279:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r8, 4(r11)
	and r19, r8, r28
	setlt.u r4, r3, r19
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r4, zero, .LBB0_281
# %bb.280:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r8, 0
	j .LBB0_282
.LBB0_281:                              #   in Loop: Header=BB0_273 Depth=3
	or r23, r8, r1
.LBB0_282:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r20, 0(r11)
	and r4, r20, r28
	setlt.u r5, r3, r4
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r5, zero, .LBB0_284
# %bb.283:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r4, r18, r4
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r4, zero, .LBB0_285
	j .LBB0_286
.LBB0_284:                              #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r20, r1
	.loc	1 331 19 is_stmt 1              # parallel-rne.mlir:331:19
	setlt.u r4, r18, r4
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r4, zero, .LBB0_286
.LBB0_285:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r20, 16
	andi r4, r4, 1
	add.s r4, r20, r4
	add.s r4, r4, r13
	and r11, r4, r17
.LBB0_286:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	setlt.u r4, r18, r19
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r4, zero, .LBB0_289
# %bb.287:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r24
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	beq r4, zero, .LBB0_290
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r18, r9
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r4, zero, .LBB0_272
	j .LBB0_291
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	add.s r4, r4, r13
	and r23, r4, r17
	setlt.u r4, r18, r24
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r4, zero, .LBB0_288
.LBB0_290:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r14, 16
	andi r4, r4, 1
	add.s r4, r14, r4
	add.s r4, r4, r13
	and r16, r4, r17
	setlt.u r4, r18, r9
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	bneq r4, zero, .LBB0_272
.LBB0_291:                              # %vector.body59
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	add.s r2, r2, r13
	and r12, r2, r17
	j .LBB0_272
.LBB0_292:                              # %.sink.split50
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r12
	addli r16, zero, 64
	addli r11, zero, 2
	addli r19, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_293:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 368 7 is_stmt 1               # parallel-rne.mlir:368:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 369 7                         # parallel-rne.mlir:369:7
	loadli.w r2,  -640(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.294:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	bneq r12, zero, .LBB0_7
# %bb.295:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	loadli.w r2,  -680(r30)                 # 4-byte Folded Reload
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	load.d r[10:11], -608(r30)              # 8-byte Folded Reload
	load.d r[21:22], -616(r30)              # 8-byte Folded Reload
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	load.d r[14:15], 16(r30)
	addli r20, zero, 1
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	zext_int2long r[4:5], r2
	addli r2, zero, 896
	zext_int2long r[6:7], r2
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	loadli.w r2,  -676(r30)                 # 4-byte Folded Reload
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	min.ul r[6:7], r[4:5], r[6:7]
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	sext_int2long r[8:9], r2
	addli r2, zero, 17
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	addli.d r[6:7], r[6:7], 128
	.loc	1 380 13                        # parallel-rne.mlir:380:13
	max.ul r[6:7], r[6:7], r[4:5]
	sub.sl r[4:5], r[6:7], r[4:5]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.sl r[6:7], r[8:9], r[21:22]
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	min.ul r[4:5], r[4:5], r[10:11]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	load.d r[10:11], -664(r30)              # 8-byte Folded Reload
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	addli.d r[6:7], r[6:7], 64
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	max.sl r[6:7], r[6:7], r[8:9]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	sll.d r[10:11], r[10:11], r2
	addli r2, zero, 12
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	sub.sl r[6:7], r[6:7], r[8:9]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	add.ul r[10:11], r[14:15], r[10:11]
	load.d r[14:15], -672(r30)              # 8-byte Folded Reload
	xwait r2, 0
	ori r2, r27, 64
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	min.sl r[6:7], r[6:7], r[21:22]
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	sll.d r[14:15], r[14:15], r20
	add.ul r[8:9], r[10:11], r[14:15]
	addli r10, zero, 5
	addli r11, zero, 2
	lock zero, r10
	dma_cfg r20, r20, zero, 0
	dma_cfg zero, r20, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r2, r16, 3
	addli r2, r4, 31
	slli r4, r4, 1
	addli r5, zero, 128
	srli r2, r2, 5
	dma_cfg r16, r5, r2, 4
	andi r2, r4, 62
	addli r4, zero, 512
	addli r5, zero, 2048
	dma_cfg r5, r4, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r10
	j .LBB0_6
.LBB0_296:                              # %._crit_edge
	.loc	1 388 5                         # parallel-rne.mlir:388:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_298
# %bb.297:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 388 5                         # parallel-rne.mlir:388:5
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
	.loc	1 389 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:389:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-4romk49a" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
