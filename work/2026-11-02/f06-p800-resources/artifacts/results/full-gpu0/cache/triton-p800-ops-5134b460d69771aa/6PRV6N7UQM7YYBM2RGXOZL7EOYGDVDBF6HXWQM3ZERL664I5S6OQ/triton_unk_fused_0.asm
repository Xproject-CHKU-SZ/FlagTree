	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-mwl_an_k" "gelu-lut-refined.mlir"
	.loc	1 7 0                           # gelu-lut-refined.mlir:7:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -464
	addli r1, zero, 1
.Ltmp0:
	.loc	1 27 5 prologue_end             # gelu-lut-refined.mlir:27:5
	core_id r2
	addli r30, sp, 400
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
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
	addli r3, zero, 9
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
	addli r1, zero, 15
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 19
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 20
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
.LBB0_3:
	.loc	1 0 5                           # gelu-lut-refined.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r3,  44(r30)
	load_param_i r4, 1
	loadli.w r5,  48(r30)
	load_param_i r7, 0
	lui r6, 1048575
	storeli.w zero, -24(r30)
	storeli.w zero, -48(r30)
	storeli.w zero, -72(r30)
	storeli.w zero, -96(r30)
	storeli.w zero, -116(r30)
	storeli.w zero, -280(r30)
	mul.s r1, r3, r1
	addli r3, r4, 0
	fmac.s r3, r1, r5
	mul.s r5, r1, r5
	addli r3, r3, -1
	div.s r3, r3, r4
	ori r4, r6, 4095
	storeli.w r4, -20(r30)
	storeli.w r4, -16(r30)
	storeli.w r4, -12(r30)
	storeli.w r4, -8(r30)
	storeli.w r4, -4(r30)
	storeli.w r4, -44(r30)
	storeli.w r4, -40(r30)
	storeli.w r4, -36(r30)
	storeli.w r4, -32(r30)
	storeli.w r4, -28(r30)
	storeli.w r4, -68(r30)
	storeli.w r4, -64(r30)
	storeli.w r4, -60(r30)
	storeli.w r4, -56(r30)
	storeli.w r4, -52(r30)
	storeli.w r4, -92(r30)
	storeli.w r4, -88(r30)
	storeli.w r4, -84(r30)
	storeli.w r4, -80(r30)
	storeli.w r4, -76(r30)
	storeli.w r4, -112(r30)
	storeli.w r4, -108(r30)
	storeli.w r4, -104(r30)
	storeli.w r4, -100(r30)
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
	storeli.w r4, -120(r30)
	mul.s r1, r3, r7
	fmac.s r3, r3, r7
	min.s r3, r3, r5
	ble.s r3, r1, .LBB0_45
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[17:18], r1
	lui r1, 31
	loadli.w r15,  -24(r30)
	loadli.w r12,  -116(r30)
	loadli.w r13,  -280(r30)
	addli r14, zero, 0
	addli r5, zero, 0
	addli r16, zero, 128
	addli r21, zero, 4
	addli r23, zero, 2
	addli r22, zero, 24
	addli r24, zero, 3
	addli r6, zero, 32
	addli r25, zero, 1
	addli r26, zero, 0
	store.d r[3:4], -368(r30)               # 8-byte Folded Spill
	loadli.w r3,  -48(r30)
	storeli.w r3, -304(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -72(r30)
	storeli.w r3, -308(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -96(r30)
	storeli.w r3, -300(r30)                 # 4-byte Folded Spill
	ori r4, r1, 4095
	lui r3, 1047552
	store.d r[3:4], -376(r30)               # 8-byte Folded Spill
	lui r3, 224
	lui r4, 216
	ori r3, r3, 2560
	storeli.w r3, -380(r30)                 # 4-byte Folded Spill
	ori r3, r4, 2893
	lui r4, 1046527
	storeli.w r3, -384(r30)                 # 4-byte Folded Spill
	lui r3, 304
	ori r3, r3, 2560
	storeli.w r3, -388(r30)                 # 4-byte Folded Spill
	ori r3, r4, 4095
	lui r4, 1023
	storeli.w r3, -392(r30)                 # 4-byte Folded Spill
	lui r3, 522239
	ori r3, r3, 4095
	storeli.w r3, -396(r30)                 # 4-byte Folded Spill
	ori r3, r4, 4095
	storeli.w r3, -284(r30)                 # 4-byte Folded Spill
	addli r3, zero, 64
	j .LBB0_9
.LBB0_5:                                # %.thread75
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 107 5 is_stmt 1               # gelu-lut-refined.mlir:107:5
	load.d r[14:15], 16(r30)
	load.d r[17:18], -344(r30)              # 8-byte Folded Reload
	addli r4, zero, 13
	xwait r4, 0
	lock zero, r21
	slli r4, r8, 2
	add.ul r[14:15], r[14:15], r[17:18]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r15, zero, 2
	dma_cfg r10, r14, r4, 3
	addli r4, zero, 512
	dma_cfg r4, r4, r25, 4
	dma_run zero
	unlock r21
	.loc	1 108 16                        # gelu-lut-refined.mlir:108:16
	loadli.w r4,  -308(r30)                 # 4-byte Folded Reload
	addli r4, r4, 1
	.loc	1 107 5                         # gelu-lut-refined.mlir:107:5
	storeli.w r4, -308(r30)                 # 4-byte Folded Spill
	addli r4, zero, 12
.LBB0_6:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	xsignal r4, 0
.LBB0_7:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r14,  -312(r30)                # 4-byte Folded Reload
	loadli.w r15,  -316(r30)                # 4-byte Folded Reload
	load.d r[17:18], -328(r30)              # 8-byte Folded Reload
.LBB0_8:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[7:8], -368(r30)                # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 1
	.loc	1 112 16 is_stmt 1              # gelu-lut-refined.mlir:112:16
	addli r15, r15, 1
	setlt.sl r4, r[17:18], r[7:8]
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	addli r7, r7, 1
	.loc	1 110 16 is_stmt 1              # gelu-lut-refined.mlir:110:16
	storeli.w r7, -300(r30)                 # 4-byte Folded Spill
	loadli.w r7,  -304(r30)                 # 4-byte Folded Reload
	addli r7, r7, 1
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	storeli.w r7, -304(r30)                 # 4-byte Folded Spill
	beq r4, zero, .LBB0_45
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_27 Depth 3
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_41 Depth 2
                                        #     Child Loop BB0_35 Depth 2
	.loc	1 0 16 is_stmt 0                # gelu-lut-refined.mlir:0:16
	addli r1, zero, 6
	storeli.w r15, -316(r30)                # 4-byte Folded Spill
	.loc	1 49 5 is_stmt 1                # gelu-lut-refined.mlir:49:5
	bneq r2, r21, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	addli r4, zero, 11
	xwait r4, 0
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r4,  48(r30)
	loadli.w r7,  44(r30)
	addli r11, zero, 16
	addli r15, zero, 8
	store.d r[17:18], -328(r30)             # 8-byte Folded Spill
	addli r8, zero, 0
	div.s r4, r17, r4
	addli r18, zero, 5
	mod.s r10, r14, r18
	addli r14, r14, 1
	storeli.w r14, -312(r30)                # 4-byte Folded Spill
	div.s r4, r4, r7
	div.s r7, r4, r16
	slli r9, r7, 3
	slli r7, r7, 7
	sub.s r11, r11, r9
	sub.s r7, r4, r7
	min.s r11, r11, r15
	mod.s r4, r4, r11
	div.s r11, r7, r11
	slli r7, r10, 16
	add.s r4, r9, r4
	slli r9, r11, 7
	storeli.w r9, -332(r30)                 # 4-byte Folded Spill
	zext_int2long r[9:10], r11
	slli r11, r4, 7
	zext_int2long r[14:15], r4
	addli r4, zero, 18
	storeli.w r11, -356(r30)                # 4-byte Folded Spill
	addli r11, zero, 7
	store.d r[14:15], -352(r30)             # 8-byte Folded Spill
	sll.d r[14:15], r[14:15], r4
	addli r4, zero, 0
	sll.d r[9:10], r[9:10], r11
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	sll.d r[19:20], r[9:10], r23
	load.d r[9:10], 8(r30)
	store.d r[19:20], -344(r30)             # 8-byte Folded Spill
	add.ul r[9:10], r[9:10], r[19:20]
	store.d r[9:10], -296(r30)              # 8-byte Folded Spill
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	and.d r[19:20], r[14:15], r[9:10]
	j .LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 5                           # gelu-lut-refined.mlir:0:5
	addli r17, zero, 2048
	.loc	1 58 13 is_stmt 1               # gelu-lut-refined.mlir:58:13
	sub.sl r[27:28], r[9:10], r[27:28]
	addli r25, zero, 1920
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	xwait r24, 0
	sll.d r[9:10], r[9:10], r23
	lock zero, r21
	dma_cfg zero, zero, zero, 0
	zext_int2long r[17:18], r17
	.loc	1 59 13                         # gelu-lut-refined.mlir:59:13
	div.sl r[17:18], r[27:28], r[17:18]
	zext_int2long r[27:28], r25
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	load.d r[24:25], 0(r30)
	add.ul r[9:10], r[24:25], r[9:10]
	addli r24, zero, 3
	addli r25, zero, 1
	dma_cfg zero, r10, zero, 2
	.loc	1 61 13                         # gelu-lut-refined.mlir:61:13
	min.sl r[27:28], r[17:18], r[27:28]
	.loc	1 62 13                         # gelu-lut-refined.mlir:62:13
	sub.sl r[17:18], r[27:28], r[17:18]
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	addli r17, r17, 128
	addli r18, zero, 256
	dma_cfg r11, r9, r18, 3
	addli r9, zero, 8192
	dma_cfg r18, r9, r17, 4
	dma_run zero
	unlock r21
	xsignal r23, 0
	addli r18, zero, 5
.LBB0_13:                               # %.thread16
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r13, r13, 1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	addli r8, r8, 1
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	addli r12, r12, 1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	beq r8, r6, .LBB0_30
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 13                         # gelu-lut-refined.mlir:89:13
	addli r4, r4, 1
.LBB0_15:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_27 Depth 3
	.loc	1 66 19                         # gelu-lut-refined.mlir:66:19
	mod.s r9, r26, r21
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	mod.s r10, r5, r22
	addli r5, r5, 1
	.loc	1 66 19                         # gelu-lut-refined.mlir:66:19
	addli r26, r26, 1
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	slli r17, r10, 15
	.loc	1 66 19                         # gelu-lut-refined.mlir:66:19
	slli r9, r9, 15
	lui r10, 80
	add.s r11, r9, r10
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	beq r2, r23, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	zext_int2long r[27:28], r8
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	bneq r2, r25, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7                           # gelu-lut-refined.mlir:0:7
	loadli.w r17,  -284(r30)                # 4-byte Folded Reload
	.loc	1 51 13 is_stmt 1               # gelu-lut-refined.mlir:51:13
	sll.d r[9:10], r[27:28], r1
	.loc	1 53 13                         # gelu-lut-refined.mlir:53:13
	add.ul r[9:10], r[9:10], r[14:15]
	zext_int2long r[27:28], r17
	.loc	1 54 13                         # gelu-lut-refined.mlir:54:13
	setlt.ul r17, r[27:28], r[9:10]
	addli.d r[27:28], r[19:20], 0
	.loc	1 58 13                         # gelu-lut-refined.mlir:58:13
	bneq r17, zero, .LBB0_12
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 13 is_stmt 0                # gelu-lut-refined.mlir:0:13
	zext_int2long r[27:28], zero
	j .LBB0_12
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 71 7 is_stmt 1                # gelu-lut-refined.mlir:71:7
	xwait r23, 0
	xwait r18, 0
	lock zero, zero
	ds_cfg r23, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r16, zero, 13
	shuffle_batch r17, r11, r3, 1
	unlock zero
	xsignal r24, 0
	xsignal r21, 0
	j .LBB0_13
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r10, zero, 40
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	mod.s r9, r12, r21
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	mod.s r10, r13, r10
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	slli r9, r9, 15
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	slli r11, r10, 15
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	lui r10, 112
	add.s r9, r9, r10
	.loc	1 85 7                          # gelu-lut-refined.mlir:85:7
	addli r10, zero, 7
	beq r2, r10, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # gelu-lut-refined.mlir:0:7
	addli r1, zero, 6
	.loc	1 85 7                          # gelu-lut-refined.mlir:85:7
	bneq r2, r1, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_15 Depth=2
	addli r10, zero, 19
	addli r17, zero, 7
	addli r22, zero, 6
	addli r1, zero, 6
	xwait r17, 0
	sll.d r[10:11], r[27:28], r10
	load.d r[27:28], -296(r30)              # 8-byte Folded Reload
	lock zero, r21
	addli r17, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[10:11], r[27:28], r[10:11]
	dma_cfg zero, r11, zero, 2
	dma_cfg r9, r10, r17, 3
	addli r9, zero, 8192
	dma_cfg r17, r9, r3, 4
	dma_run zero
	unlock r21
	xsignal r22, 0
	addli r22, zero, 24
	.loc	1 86 7 is_stmt 1                # gelu-lut-refined.mlir:86:7
	j .LBB0_13
.LBB0_23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r10, zero, 9
	xwait r1, 0
	xwait r10, 0
	lock zero, zero
	ds_cfg r23, zero, 0
	ds_cfg r16, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r16, zero, 13
	shuffle_coa r11, r9, r3, 2
	addli r9, zero, 7
	unlock zero
	xsignal r9, 0
	addli r9, zero, 8
	xsignal r9, 0
	j .LBB0_13
.LBB0_24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # gelu-lut-refined.mlir:0:7
	addli r1, zero, 6
	.loc	1 88 7 is_stmt 1                # gelu-lut-refined.mlir:88:7
	bneq r2, r21, .LBB0_29
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	addli r9, zero, 8
	xwait r21, 0
	addli r10, zero, 1
	addli r27, zero, 0
	xwait r9, 0
	addli r9, zero, 1
	beq r4, zero, .LBB0_27
.LBB0_26:                               # %.preheader17
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r18, r27, 14
	slli r27, r27, 8
	lock zero, r9
	mm_cfg r3, r3, r16, 0
	or r18, r18, r11
	or r27, r27, r7
	mm_cfg r21, r21, r9, 2
	mm_acc r27, r17, r18, 8
	andi r18, r10, 1
	addli r27, zero, 1
	addli r10, zero, 0
	unlock r9
	bneq r18, zero, .LBB0_26
	j .LBB0_28
.LBB0_27:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r18, r27, 14
	slli r27, r27, 8
	lock zero, r9
	mm_cfg r3, r3, r16, 0
	or r18, r18, r11
	or r27, r27, r7
	mm_cfg r21, r21, r9, 2
	mm r27, r17, r18, 8
	andi r18, r10, 1
	addli r27, zero, 1
	addli r10, zero, 0
	unlock r9
	bneq r18, zero, .LBB0_27
.LBB0_28:                               # %.thread16.thread72
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # gelu-lut-refined.mlir:0:7
	addli r18, zero, 5
	.loc	1 80 19 is_stmt 1               # gelu-lut-refined.mlir:80:19
	addli r13, r13, 1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	addli r8, r8, 1
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	addli r12, r12, 1
	.loc	1 88 7                          # gelu-lut-refined.mlir:88:7
	addli r9, zero, 9
	xsignal r18, 0
	xsignal r9, 0
	bneq r8, r6, .LBB0_14
	j .LBB0_31
.LBB0_29:                               # %.thread16.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r13, r13, 1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	addli r8, r8, 1
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	addli r12, r12, 1
	bneq r8, r6, .LBB0_14
	j .LBB0_32
.LBB0_30:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	bneq r2, r21, .LBB0_32
.LBB0_31:                               # %.thread74
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, zero, 10
	xsignal r4, 0
.LBB0_32:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	addli r4, zero, 1920
	.loc	1 98 11 is_stmt 1               # gelu-lut-refined.mlir:98:11
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	zext_int2long r[19:20], r16
	zext_int2long r[14:15], r4
	.loc	1 104 16                        # gelu-lut-refined.mlir:104:16
	loadli.w r4,  -300(r30)                 # 4-byte Folded Reload
	.loc	1 98 11                         # gelu-lut-refined.mlir:98:11
	zext_int2long r[8:9], r1
	.loc	1 100 11                        # gelu-lut-refined.mlir:100:11
	min.ul r[10:11], r[8:9], r[14:15]
	.loc	1 104 16                        # gelu-lut-refined.mlir:104:16
	mod.s r4, r4, r18
	.loc	1 100 11                        # gelu-lut-refined.mlir:100:11
	addli.d r[10:11], r[10:11], 128
	.loc	1 102 11                        # gelu-lut-refined.mlir:102:11
	max.ul r[10:11], r[10:11], r[8:9]
	sub.sl r[8:9], r[10:11], r[8:9]
	.loc	1 104 16                        # gelu-lut-refined.mlir:104:16
	slli r4, r4, 9
	lui r10, 144
	.loc	1 103 11                        # gelu-lut-refined.mlir:103:11
	min.ul r[8:9], r[8:9], r[19:20]
	.loc	1 104 16                        # gelu-lut-refined.mlir:104:16
	add.s r10, r4, r10
	.loc	1 107 5                         # gelu-lut-refined.mlir:107:5
	beq r2, r25, .LBB0_5
# %bb.33:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r17,  -308(r30)                # 4-byte Folded Reload
	lui r11, 144
	ori r11, r11, 2560
	.loc	1 108 16 is_stmt 1              # gelu-lut-refined.mlir:108:16
	mod.s r4, r17, r18
	addli r17, r17, 1
	storeli.w r17, -308(r30)                # 4-byte Folded Spill
	slli r4, r4, 16
	add.s r4, r4, r11
	.loc	1 109 5                         # gelu-lut-refined.mlir:109:5
	bneq r2, r24, .LBB0_37
# %bb.34:                               #   in Loop: Header=BB0_9 Depth=1
	addli r9, zero, 10
	addli r8, zero, 0
	lui r14, 16
	xwait r9, 0
	addli r9, zero, 12
	xwait r9, 0
	addli r9, zero, 15
	xwait r9, 0
	lock zero, r23
	lui r9, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r9, r9, zero, 0
	addli r9, zero, 127
	ew_cfg zero, r9, zero, 2
	ew_cfg r25, zero, zero, 3
	load.d r[17:18], -328(r30)              # 8-byte Folded Reload
.LBB0_35:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r9, r4, r8
	add.s r11, r7, r8
	addli r8, r8, 512
	dsmadd r9, r11, r10, 0
	bneq r8, r14, .LBB0_35
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=1
	addli r4, zero, 11
	unlock r23
	xsignal r4, 0
	addli r4, zero, 13
	xsignal r4, 0
	addli r4, zero, 16
	xsignal r4, 0
	addli r4, zero, 17
	xsignal r4, 0
	addli r4, zero, 14
	xsignal r4, 0
	loadli.w r14,  -312(r30)                # 4-byte Folded Reload
	loadli.w r15,  -316(r30)                # 4-byte Folded Reload
	j .LBB0_8
.LBB0_37:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 110 16                        # gelu-lut-refined.mlir:110:16
	loadli.w r7,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r10,  -380(r30)                # 4-byte Folded Reload
	mod.s r7, r7, r18
	slli r7, r7, 16
	add.s r7, r7, r10
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
	bneq r2, r18, .LBB0_43
# %bb.38:                               #   in Loop: Header=BB0_9 Depth=1
	addli r8, zero, 14
	lui r10, 266232
	lui r11, 790528
	addli r9, zero, 0
	lui r19, 16
	xwait r8, 0
	addli r8, zero, 19
	xwait r8, 0
	lock zero, r23
	addli r8, zero, 4095
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r8, zero, 2
	addli r8, zero, 13
	ew_cfg r21, zero, zero, 3
	ew_cfg r21, r21, zero, 19
	ew_cfg r8, zero, zero, 10
	loadli.w r8,  -384(r30)                 # 4-byte Folded Reload
	ew_cfg r23, r25, r8, 11
	ew_cfg zero, zero, r24, 13
	loadli.w r15,  -316(r30)                # 4-byte Folded Reload
	ew_cfg r11, r21, r10, 14
	lui r10, 260096
	ew_cfg zero, r10, zero, 15
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	mod.s r8, r15, r18
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
	sslut r7, r4, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r23
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	loadli.w r10,  -388(r30)                # 4-byte Folded Reload
	slli r8, r8, 16
	add.s r8, r8, r10
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	addli r10, zero, 16
	xwait r10, 0
	addli r10, zero, 20
	xwait r10, 0
	lock zero, r23
	addli r10, zero, 127
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r10, zero, 2
	ew_cfg r25, zero, zero, 3
	loadli.w r10,  -392(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r10, zero, zero, 0
	loadli.w r14,  -312(r30)                # 4-byte Folded Reload
.LBB0_39:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r10, r8, r9
	add.s r11, r4, r9
	addli r9, r9, 512
	dscmpnsel r10, r11, r11, 0
	bneq r9, r19, .LBB0_39
# %bb.40:                               #   in Loop: Header=BB0_9 Depth=1
	unlock r23
	.loc	1 114 5                         # gelu-lut-refined.mlir:114:5
	addli r10, zero, 127
	addli r9, zero, 0
	lock zero, r23
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r10, zero, 2
	ew_cfg r25, zero, zero, 3
	loadli.w r10,  -396(r30)                # 4-byte Folded Reload
	ewcoeff_cfg r10, zero, zero, 0
	load.d r[17:18], -328(r30)              # 8-byte Folded Reload
.LBB0_41:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r10, r8, r9
	addli r9, r9, 512
	dscmpnsel r10, r10, r10, 4
	bneq r9, r19, .LBB0_41
# %bb.42:                               # %.critedge2
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 115 5                         # gelu-lut-refined.mlir:115:5
	addli r9, zero, 17
	.loc	1 114 5                         # gelu-lut-refined.mlir:114:5
	unlock r23
	.loc	1 115 5                         # gelu-lut-refined.mlir:115:5
	lui r10, 784384
	xwait r9, 0
	lock zero, r23
	lui r9, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r9, r10, zero, 0
	addli r10, zero, 4095
	ew_cfg zero, r10, zero, 2
	ew_cfg r21, zero, zero, 3
	ew_cfg r21, r21, r21, 19
	dsmadd r4, r4, r8, 0
	addli r8, zero, 20
	ew_cfg zero, zero, zero, 19
	unlock r23
	xsignal r8, 0
	.loc	1 116 5                         # gelu-lut-refined.mlir:116:5
	lock zero, r23
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r9, r9, zero, 0
	ew_cfg zero, r10, zero, 2
	ew_cfg r21, zero, zero, 3
	ew_cfg r21, r21, r21, 19
	dsmadd r7, r7, r4, 0
	addli r4, zero, 15
	ew_cfg zero, zero, zero, 19
	unlock r23
	xsignal r4, 0
	addli r4, zero, 18
	xsignal r4, 0
	j .LBB0_8
.LBB0_43:                               # %.critedge4
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	bneq r2, zero, .LBB0_7
# %bb.44:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	loadli.w r1,  -356(r30)                 # 4-byte Folded Reload
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	load.d r[17:18], -352(r30)              # 8-byte Folded Reload
	addli r4, zero, 20
	load.d r[27:28], 24(r30)
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	sext_int2long r[10:11], r1
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	sll.d r[17:18], r[17:18], r4
	addli r4, zero, 18
	addli r1, zero, 5
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	min.sl r[14:15], r[10:11], r[14:15]
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	xwait r4, 0
	lock zero, r1
	add.ul r[17:18], r[27:28], r[17:18]
	slli r4, r8, 2
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	addli.d r[14:15], r[14:15], 128
	max.sl r[14:15], r[14:15], r[10:11]
	sub.sl r[10:11], r[14:15], r[10:11]
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	load.d r[14:15], -344(r30)              # 8-byte Folded Reload
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r25, zero, 1
	.loc	1 120 11 is_stmt 1              # gelu-lut-refined.mlir:120:11
	min.sl r[10:11], r[10:11], r[19:20]
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	add.ul r[14:15], r[17:18], r[14:15]
	dma_cfg r15, zero, zero, 2
	dma_cfg r14, r7, r4, 3
	addli r4, zero, 512
	addli r7, zero, 8192
	dma_cfg r7, r4, r10, 4
	addli r4, zero, 19
	dma_run zero
	unlock r1
	j .LBB0_6
.LBB0_45:                               # %._crit_edge
	.loc	1 125 5                         # gelu-lut-refined.mlir:125:5
	xsignal zero, 0
	bneq r2, zero, .LBB0_47
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
	addli sp, sp, 400
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
	.long	464                             # 0x1d0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-mwl_an_k" # string offset=29
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
