	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-madyucmv" "gelu-lut-refined.mlir"
	.loc	1 7 0                           # gelu-lut-refined.mlir:7:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -448
	addli r1, zero, 1
.Ltmp0:
	.loc	1 27 5 prologue_end             # gelu-lut-refined.mlir:27:5
	core_id r2
	addli r30, sp, 384
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
	ble.s r3, r1, .LBB0_44
# %bb.4:                                # %.lr.ph
	sext_int2long r[18:19], r1
	lui r1, 224
	sext_int2long r[3:4], r3
	loadli.w r15,  -24(r30)
	loadli.w r22,  -48(r30)
	loadli.w r20,  -96(r30)
	loadli.w r12,  -116(r30)
	loadli.w r13,  -280(r30)
	addli r14, zero, 0
	addli r5, zero, 0
	addli r16, zero, 64
	addli r25, zero, 1
	addli r24, zero, 8
	addli r21, zero, 4
	addli r23, zero, 2
	addli r6, zero, 24
	lui r26, 80
	addli r27, zero, 128
	addli r28, zero, 512
	ori r1, r1, 2560
	store.d r[3:4], -360(r30)               # 8-byte Folded Spill
	lui r4, 304
	loadli.w r3,  -72(r30)
	storeli.w r1, -364(r30)                 # 4-byte Folded Spill
	lui r1, 216
	storeli.w r3, -296(r30)                 # 4-byte Folded Spill
	ori r1, r1, 2893
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
	ori r1, r4, 2560
	lui r4, 522239
	storeli.w r1, -372(r30)                 # 4-byte Folded Spill
	lui r1, 1046527
	ori r1, r1, 4095
	storeli.w r1, -376(r30)                 # 4-byte Folded Spill
	ori r1, r4, 4095
	addli r4, zero, 0
	storeli.w r1, -380(r30)                 # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.thread71
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 107 5 is_stmt 1               # gelu-lut-refined.mlir:107:5
	load.d r[9:10], 16(r30)
	load.d r[18:19], -336(r30)              # 8-byte Folded Reload
	addli r7, zero, 13
	xwait r7, 0
	lock zero, r21
	slli r7, r14, 2
	add.ul r[9:10], r[9:10], r[18:19]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r10, zero, 2
	dma_cfg r8, r9, r7, 3
	dma_cfg r28, r28, r25, 4
	dma_run zero
	unlock r21
	.loc	1 108 16                        # gelu-lut-refined.mlir:108:16
	loadli.w r7,  -296(r30)                 # 4-byte Folded Reload
	addli r7, r7, 1
	.loc	1 107 5                         # gelu-lut-refined.mlir:107:5
	storeli.w r7, -296(r30)                 # 4-byte Folded Spill
	addli r7, zero, 12
	xsignal r7, 0
	loadli.w r14,  -300(r30)                # 4-byte Folded Reload
	loadli.w r15,  -304(r30)                # 4-byte Folded Reload
	loadli.w r22,  -308(r30)                # 4-byte Folded Reload
.LBB0_6:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	load.d r[18:19], -320(r30)              # 8-byte Folded Reload
.LBB0_7:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r24, zero, 8
.LBB0_8:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[7:8], -360(r30)                # 8-byte Folded Reload
	addli.d r[18:19], r[18:19], 1
	addli r20, r20, 1
	.loc	1 110 16 is_stmt 1              # gelu-lut-refined.mlir:110:16
	addli r22, r22, 1
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	addli r15, r15, 1
	setlt.sl r7, r[18:19], r[7:8]
	beq r7, zero, .LBB0_44
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_33 Depth 2
	.loc	1 0 16 is_stmt 0                # gelu-lut-refined.mlir:0:16
	addli r3, zero, 6
	storeli.w r20, -292(r30)                # 4-byte Folded Spill
	storeli.w r22, -308(r30)                # 4-byte Folded Spill
	storeli.w r15, -304(r30)                # 4-byte Folded Spill
	.loc	1 49 5 is_stmt 1                # gelu-lut-refined.mlir:49:5
	bneq r2, r21, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	addli r7, zero, 11
	xwait r7, 0
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r7,  48(r30)
	loadli.w r8,  44(r30)
	store.d r[18:19], -320(r30)             # 8-byte Folded Spill
	addli r20, zero, 0
	addli r22, zero, 0
	div.s r7, r18, r7
	addli r19, zero, 5
	mod.s r10, r14, r19
	addli r14, r14, 1
	storeli.w r14, -300(r30)                # 4-byte Folded Spill
	div.s r7, r7, r8
	slli r10, r10, 16
	div.s r8, r7, r16
	slli r9, r8, 3
	slli r8, r8, 6
	sub.s r11, r25, r9
	sub.s r8, r7, r8
	min.s r11, r11, r24
	mod.s r7, r7, r11
	div.s r8, r8, r11
	add.s r7, r9, r7
	slli r1, r8, 7
	zext_int2long r[8:9], r8
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	slli r1, r7, 7
	zext_int2long r[14:15], r7
	addli r7, zero, 16
	storeli.w r1, -352(r30)                 # 4-byte Folded Spill
	addli r1, zero, 7
	store.d r[14:15], -344(r30)             # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	sll.d r[17:18], r[8:9], r23
	sll.d r[7:8], r[14:15], r7
	load.d r[14:15], 8(r30)
	addli r9, zero, 1
	store.d r[17:18], -336(r30)             # 8-byte Folded Spill
	add.ul r[14:15], r[14:15], r[17:18]
	addli r17, zero, 256
	store.d r[14:15], -288(r30)             # 8-byte Folded Spill
	load.d r[14:15], 0(r30)
	add.ul r[14:15], r[14:15], r[7:8]
	j .LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 71 7 is_stmt 1                # gelu-lut-refined.mlir:71:7
	xwait r23, 0
	xwait r19, 0
	lock zero, zero
	addli r1, zero, 3
	ds_cfg r23, zero, 0
	ds_cfg r16, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r27, zero, 13
	shuffle_batch r11, r18, r16, 1
	unlock zero
	xsignal r1, 0
	xsignal r21, 0
.LBB0_13:                               # %.thread16
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r13, r13, 1
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	addli r12, r12, 1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	beq r9, zero, .LBB0_28
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 13                         # gelu-lut-refined.mlir:89:13
	addli r22, r22, 1
	addli r20, zero, 1
	addli r9, zero, 0
.LBB0_15:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 66 19                         # gelu-lut-refined.mlir:66:19
	mod.s r7, r4, r21
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	mod.s r8, r5, r6
	addli r5, r5, 1
	.loc	1 66 19                         # gelu-lut-refined.mlir:66:19
	addli r4, r4, 1
	andi r9, r9, 1
	slli r7, r7, 15
	.loc	1 65 19                         # gelu-lut-refined.mlir:65:19
	slli r11, r8, 15
	.loc	1 66 19                         # gelu-lut-refined.mlir:66:19
	add.s r18, r7, r26
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	beq r2, r23, .LBB0_12
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	zext_int2long r[7:8], r20
	.loc	1 70 7                          # gelu-lut-refined.mlir:70:7
	bneq r2, r25, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	sll.d r[7:8], r[7:8], r24
	addli r1, zero, 3
	xwait r1, 0
	lock zero, r21
	add.ul r[7:8], r[14:15], r[7:8]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r8, zero, 2
	dma_cfg r18, r7, r17, 3
	dma_cfg r17, r28, r27, 4
	dma_run zero
	unlock r21
	xsignal r23, 0
	.loc	1 71 7 is_stmt 1                # gelu-lut-refined.mlir:71:7
	j .LBB0_13
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r19, zero, 40
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	mod.s r18, r12, r21
	.loc	1 85 7                          # gelu-lut-refined.mlir:85:7
	addli r1, zero, 7
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	mod.s r19, r13, r19
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	slli r18, r18, 15
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	slli r20, r19, 15
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	lui r19, 112
	add.s r18, r18, r19
	.loc	1 85 7                          # gelu-lut-refined.mlir:85:7
	beq r2, r1, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # gelu-lut-refined.mlir:0:7
	addli r19, zero, 5
	addli r1, zero, 6
	.loc	1 85 7                          # gelu-lut-refined.mlir:85:7
	bneq r2, r1, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 7
	addli r11, zero, 18
	addli r28, zero, 512
	xwait r3, 0
	load.d r[25:26], -288(r30)              # 8-byte Folded Reload
	sll.d r[7:8], r[7:8], r11
	lock zero, r21
	addli r3, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[7:8], r[25:26], r[7:8]
	lui r26, 80
	addli r25, zero, 1
	dma_cfg zero, r8, zero, 2
	dma_cfg r18, r7, r3, 3
	addli r7, zero, 4096
	dma_cfg r3, r7, r16, 4
	dma_run zero
	unlock r21
	addli r3, zero, 6
	xsignal r1, 0
	.loc	1 86 7 is_stmt 1                # gelu-lut-refined.mlir:86:7
	j .LBB0_13
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 9
	xwait r3, 0
	addli r19, zero, 5
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 7
	ds_cfg r23, zero, 0
	ds_cfg r27, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r27, zero, 13
	shuffle_coa r20, r18, r16, 2
	unlock zero
	xsignal r1, 0
	xsignal r24, 0
	j .LBB0_13
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # gelu-lut-refined.mlir:0:7
	addli r3, zero, 6
	.loc	1 88 7 is_stmt 1                # gelu-lut-refined.mlir:88:7
	bneq r2, r21, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # gelu-lut-refined.mlir:0:7
	addli r18, zero, 1
	addli r19, zero, 1
	addli r7, zero, 0
	.loc	1 88 7                          # gelu-lut-refined.mlir:88:7
	xwait r21, 0
	xwait r24, 0
	beq r22, zero, .LBB0_25
.LBB0_24:                               # %.preheader17
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r8, r7, 14
	slli r7, r7, 8
	lock zero, r18
	mm_cfg r16, r16, r27, 0
	or r8, r8, r20
	or r7, r7, r10
	mm_cfg r21, r21, r18, 2
	mm_acc r7, r11, r8, 8
	andi r8, r19, 1
	addli r7, zero, 1
	addli r19, zero, 0
	unlock r18
	bneq r8, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r8, r7, 14
	slli r7, r7, 8
	lock zero, r18
	mm_cfg r16, r16, r27, 0
	or r8, r8, r20
	or r7, r7, r10
	mm_cfg r21, r21, r18, 2
	mm r7, r11, r8, 8
	andi r8, r19, 1
	addli r7, zero, 1
	addli r19, zero, 0
	unlock r18
	bneq r8, zero, .LBB0_25
.LBB0_26:                               # %.thread16.thread69
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7                           # gelu-lut-refined.mlir:0:7
	addli r19, zero, 5
	.loc	1 80 19 is_stmt 1               # gelu-lut-refined.mlir:80:19
	addli r13, r13, 1
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	addli r12, r12, 1
	.loc	1 88 7                          # gelu-lut-refined.mlir:88:7
	addli r1, zero, 9
	xsignal r19, 0
	xsignal r1, 0
	bneq r9, zero, .LBB0_14
	j .LBB0_29
.LBB0_27:                               # %.thread16.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 80 19                         # gelu-lut-refined.mlir:80:19
	addli r13, r13, 1
	.loc	1 81 19                         # gelu-lut-refined.mlir:81:19
	addli r12, r12, 1
	bneq r9, zero, .LBB0_14
	j .LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 49 5                          # gelu-lut-refined.mlir:49:5
	bneq r2, r21, .LBB0_30
.LBB0_29:                               # %.thread70
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r7, zero, 10
	xsignal r7, 0
.LBB0_30:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 98 11                         # gelu-lut-refined.mlir:98:11
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	addli r9, zero, 896
	loadli.w r20,  -292(r30)                # 4-byte Folded Reload
	lui r22, 144
	addli r24, zero, 5
	zext_int2long r[14:15], r9
	zext_int2long r[7:8], r1
	.loc	1 104 16                        # gelu-lut-refined.mlir:104:16
	mod.s r9, r20, r19
	zext_int2long r[18:19], r27
	.loc	1 100 11                        # gelu-lut-refined.mlir:100:11
	min.ul r[14:15], r[7:8], r[14:15]
	addli.d r[14:15], r[14:15], 128
	.loc	1 102 11                        # gelu-lut-refined.mlir:102:11
	max.ul r[14:15], r[14:15], r[7:8]
	.loc	1 104 16                        # gelu-lut-refined.mlir:104:16
	slli r9, r9, 9
	.loc	1 102 11                        # gelu-lut-refined.mlir:102:11
	sub.sl r[7:8], r[14:15], r[7:8]
	.loc	1 103 11                        # gelu-lut-refined.mlir:103:11
	min.ul r[14:15], r[7:8], r[18:19]
	.loc	1 104 16                        # gelu-lut-refined.mlir:104:16
	add.s r8, r9, r22
	.loc	1 107 5                         # gelu-lut-refined.mlir:107:5
	beq r2, r25, .LBB0_5
# %bb.31:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r11,  -296(r30)                # 4-byte Folded Reload
	ori r9, r22, 2560
	loadli.w r22,  -308(r30)                # 4-byte Folded Reload
	.loc	1 109 5 is_stmt 1               # gelu-lut-refined.mlir:109:5
	addli r1, zero, 3
	.loc	1 108 16                        # gelu-lut-refined.mlir:108:16
	mod.s r7, r11, r24
	addli r11, r11, 1
	storeli.w r11, -296(r30)                # 4-byte Folded Spill
	slli r7, r7, 16
	add.s r7, r7, r9
	.loc	1 109 5                         # gelu-lut-refined.mlir:109:5
	bneq r2, r1, .LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_9 Depth=1
	addli r11, zero, 10
	addli r9, zero, 0
	lui r15, 16
	xwait r11, 0
	addli r11, zero, 12
	xwait r11, 0
	addli r11, zero, 15
	xwait r11, 0
	lock zero, r23
	lui r11, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r11, r11, zero, 0
	addli r11, zero, 127
	ew_cfg zero, r11, zero, 2
	ew_cfg r25, zero, zero, 3
	load.d r[18:19], -320(r30)              # 8-byte Folded Reload
.LBB0_33:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r11, r7, r9
	add.s r14, r10, r9
	addli r9, r9, 512
	dsmadd r11, r14, r8, 0
	bneq r9, r15, .LBB0_33
# %bb.34:                               #   in Loop: Header=BB0_9 Depth=1
	addli r7, zero, 11
	unlock r23
	xsignal r7, 0
	addli r7, zero, 13
	xsignal r7, 0
	addli r7, zero, 16
	xsignal r7, 0
	addli r7, zero, 17
	xsignal r7, 0
	addli r7, zero, 14
	xsignal r7, 0
	loadli.w r14,  -300(r30)                # 4-byte Folded Reload
	loadli.w r15,  -304(r30)                # 4-byte Folded Reload
	j .LBB0_7
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 110 16                        # gelu-lut-refined.mlir:110:16
	mod.s r8, r22, r24
	loadli.w r9,  -364(r30)                 # 4-byte Folded Reload
	slli r8, r8, 16
	add.s r20, r8, r9
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
	bneq r2, r24, .LBB0_41
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=1
	addli r8, zero, 14
	addli r1, zero, 3
	lui r11, 790528
	addli r10, zero, 0
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
	loadli.w r8,  -368(r30)                 # 4-byte Folded Reload
	ew_cfg r23, r25, r8, 11
	lui r8, 266232
	ew_cfg zero, zero, r1, 13
	loadli.w r15,  -304(r30)                # 4-byte Folded Reload
	ew_cfg r11, r21, r8, 14
	lui r8, 260096
	ew_cfg zero, r8, zero, 15
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	mod.s r9, r15, r24
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
	sslut r20, r7, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r23
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	loadli.w r8,  -372(r30)                 # 4-byte Folded Reload
	slli r9, r9, 16
	add.s r9, r9, r8
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	addli r8, zero, 16
	xwait r8, 0
	addli r8, zero, 20
	xwait r8, 0
	lock zero, r23
	addli r8, zero, 127
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r8, zero, 2
	ew_cfg r25, zero, zero, 3
	loadli.w r8,  -376(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r8, zero, zero, 0
	lui r8, 16
.LBB0_37:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r11, r9, r10
	add.s r14, r7, r10
	addli r10, r10, 512
	dscmpnsel r11, r14, r14, 0
	bneq r10, r8, .LBB0_37
# %bb.38:                               #   in Loop: Header=BB0_9 Depth=1
	unlock r23
	.loc	1 114 5                         # gelu-lut-refined.mlir:114:5
	addli r8, zero, 127
	addli r10, zero, 0
	addli r24, zero, 8
	lock zero, r23
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r8, zero, 2
	ew_cfg r25, zero, zero, 3
	loadli.w r8,  -380(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r8, zero, zero, 0
	lui r8, 16
	load.d r[18:19], -320(r30)              # 8-byte Folded Reload
.LBB0_39:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r11, r9, r10
	addli r10, r10, 512
	dscmpnsel r11, r11, r11, 4
	bneq r10, r8, .LBB0_39
# %bb.40:                               # %.critedge2
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 115 5                         # gelu-lut-refined.mlir:115:5
	addli r8, zero, 17
	.loc	1 114 5                         # gelu-lut-refined.mlir:114:5
	unlock r23
	.loc	1 115 5                         # gelu-lut-refined.mlir:115:5
	lui r10, 784384
	xwait r8, 0
	lock zero, r23
	lui r8, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r8, r10, zero, 0
	addli r10, zero, 4095
	ew_cfg zero, r10, zero, 2
	ew_cfg r21, zero, zero, 3
	ew_cfg r21, r21, r21, 19
	dsmadd r7, r7, r9, 0
	addli r9, zero, 20
	ew_cfg zero, zero, zero, 19
	unlock r23
	xsignal r9, 0
	.loc	1 116 5                         # gelu-lut-refined.mlir:116:5
	lock zero, r23
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r8, r8, zero, 0
	ew_cfg zero, r10, zero, 2
	ew_cfg r21, zero, zero, 3
	ew_cfg r21, r21, r21, 19
	dsmadd r20, r20, r7, 0
	addli r7, zero, 15
	ew_cfg zero, zero, zero, 19
	unlock r23
	xsignal r7, 0
	addli r7, zero, 18
	xsignal r7, 0
	loadli.w r14,  -300(r30)                # 4-byte Folded Reload
	loadli.w r20,  -292(r30)                # 4-byte Folded Reload
	j .LBB0_8
.LBB0_41:                               # %.critedge4
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	bneq r2, zero, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r1,  -352(r30)                 # 4-byte Folded Reload
	zext_int2long r[7:8], zero
	addli r24, zero, 19
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	addli r11, zero, 18
	sext_int2long r[9:10], r1
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	min.sl r[7:8], r[9:10], r[7:8]
	store.d r[9:10], -352(r30)              # 8-byte Folded Spill
	store.d r[7:8], -288(r30)               # 8-byte Folded Spill
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	load.d r[7:8], -344(r30)                # 8-byte Folded Reload
	sll.d r[7:8], r[7:8], r24
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	store.d r[7:8], -328(r30)               # 8-byte Folded Spill
	load.d r[7:8], -288(r30)                # 8-byte Folded Reload
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	xwait r11, 0
	slli r11, r14, 2
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	addli.d r[7:8], r[7:8], 128
	max.sl r[7:8], r[7:8], r[9:10]
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	load.d r[9:10], -328(r30)               # 8-byte Folded Reload
	store.d r[7:8], -288(r30)               # 8-byte Folded Spill
	load.d r[7:8], 24(r30)
	add.ul r[7:8], r[7:8], r[9:10]
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	load.d r[9:10], -352(r30)               # 8-byte Folded Reload
	store.d r[7:8], -328(r30)               # 8-byte Folded Spill
	load.d r[7:8], -288(r30)                # 8-byte Folded Reload
	sub.sl r[7:8], r[7:8], r[9:10]
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	load.d r[9:10], -336(r30)               # 8-byte Folded Reload
	store.d r[7:8], -288(r30)               # 8-byte Folded Spill
	load.d r[7:8], -328(r30)                # 8-byte Folded Reload
	add.ul r[9:10], r[7:8], r[9:10]
	.loc	1 120 11 is_stmt 1              # gelu-lut-refined.mlir:120:11
	load.d r[7:8], -288(r30)                # 8-byte Folded Reload
	min.sl r[7:8], r[7:8], r[18:19]
	addli r18, zero, 5
	.loc	1 124 5                         # gelu-lut-refined.mlir:124:5
	lock zero, r18
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r25, zero, 1
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r20, r11, 3
	addli r9, zero, 4096
	dma_cfg r9, r28, r7, 4
	dma_run zero
	unlock r18
	xsignal r24, 0
.LBB0_43:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r14,  -300(r30)                # 4-byte Folded Reload
	loadli.w r15,  -304(r30)                # 4-byte Folded Reload
	loadli.w r20,  -292(r30)                # 4-byte Folded Reload
	j .LBB0_6
.LBB0_44:                               # %._crit_edge
	.loc	1 125 5 is_stmt 1               # gelu-lut-refined.mlir:125:5
	xsignal zero, 0
	bneq r2, zero, .LBB0_46
# %bb.45:
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
.LBB0_46:
	.loc	1 125 5 epilogue_begin          # gelu-lut-refined.mlir:125:5
	addli sp, sp, 384
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
	.long	448                             # 0x1c0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-madyucmv" # string offset=29
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
