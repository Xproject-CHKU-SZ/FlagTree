	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-_2gz44gy" "gelu-lut-refined.mlir"
	.loc	1 7 0                           # gelu-lut-refined.mlir:7:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -464
	addli r1, zero, 1
.Ltmp0:
	.loc	1 29 5 prologue_end             # gelu-lut-refined.mlir:29:5
	core_id r6
	addli r30, sp, 400
	xsignal_mode_cfg r1
	beq r6, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	lui r3, 1048575
	.loc	1 29 5                          # gelu-lut-refined.mlir:29:5
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
	.loc	1 29 5                          # gelu-lut-refined.mlir:29:5
	uni_sram_cfg r1, r1
	addli r2, zero, 4
	load.d r[3:4], 32(r30)
	addli r7, zero, 4096
	lock zero, r5
	ew_cfg r1, zero, zero, 16
	unlock r5
	lock zero, r2
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg zero, r3, r7, 3
	addli r3, zero, 32
	addli r4, zero, 1024
	dma_cfg zero, zero, r1, 4
	dma_run zero
	unlock r2
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
	lui r2, 1048575
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
	ori r4, r2, 4095
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
	sext_int2long r[2:3], r3
	sext_int2long r[9:10], r1
	lui r1, 15
	lui r4, 224
	loadli.w r11,  -24(r30)
	loadli.w r19,  -48(r30)
	loadli.w r20,  -96(r30)
	loadli.w r12,  -116(r30)
	loadli.w r13,  -280(r30)
	addli r15, zero, 0
	addli r5, zero, 0
	addli r16, zero, 64
	addli r17, zero, 4
	addli r22, zero, 2
	addli r18, zero, 24
	addli r28, zero, 128
	addli r24, zero, 16
	addli r8, zero, 0
	store.d r[2:3], -368(r30)               # 8-byte Folded Spill
	loadli.w r2,  -72(r30)
	storeli.w r2, -308(r30)                 # 4-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1048448
	store.d r[1:2], -376(r30)               # 8-byte Folded Spill
	lui r1, 216
	ori r2, r4, 2560
	lui r4, 304
	ori r1, r1, 2893
	storeli.w r2, -380(r30)                 # 4-byte Folded Spill
	ori r2, r4, 2560
	lui r4, 522239
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
	lui r1, 1046527
	storeli.w r2, -388(r30)                 # 4-byte Folded Spill
	ori r2, r4, 4095
	ori r1, r1, 4095
	storeli.w r2, -396(r30)                 # 4-byte Folded Spill
	storeli.w r1, -392(r30)                 # 4-byte Folded Spill
	lui r1, 127
	ori r1, r1, 4095
	storeli.w r1, -284(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.thread75
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 109 5 is_stmt 1               # gelu-lut-refined.mlir:109:5
	load.d r[1:2], 16(r30)
	load.d r[3:4], -344(r30)                # 8-byte Folded Reload
	addli r18, zero, 24
	add.ul r[1:2], r[1:2], r[3:4]
	addli r3, zero, 13
	slli r4, r9, 2
	xwait r3, 0
	lock zero, r17
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r2, zero, 2
	dma_cfg r7, r1, r4, 3
	addli r1, zero, 512
	dma_cfg r1, r1, r21, 4
	dma_run zero
	unlock r17
	.loc	1 110 16                        # gelu-lut-refined.mlir:110:16
	loadli.w r1,  -308(r30)                 # 4-byte Folded Reload
	addli r1, r1, 1
	.loc	1 109 5                         # gelu-lut-refined.mlir:109:5
	storeli.w r1, -308(r30)                 # 4-byte Folded Spill
	addli r1, zero, 12
	xsignal r1, 0
	loadli.w r15,  -312(r30)                # 4-byte Folded Reload
	loadli.w r11,  -316(r30)                # 4-byte Folded Reload
	loadli.w r19,  -300(r30)                # 4-byte Folded Reload
.LBB0_6:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	load.d r[9:10], -328(r30)               # 8-byte Folded Reload
	load.d r[1:2], -368(r30)                # 8-byte Folded Reload
	addli r20, r20, 1
	.loc	1 112 16 is_stmt 1              # gelu-lut-refined.mlir:112:16
	addli r19, r19, 1
	.loc	1 114 16                        # gelu-lut-refined.mlir:114:16
	addli r11, r11, 1
	addli.d r[9:10], r[9:10], 1
	setlt.sl r1, r[9:10], r[1:2]
	beq r1, zero, .LBB0_45
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_33 Depth 2
	.loc	1 0 16 is_stmt 0                # gelu-lut-refined.mlir:0:16
	addli r3, zero, 1
	storeli.w r20, -304(r30)                # 4-byte Folded Spill
	storeli.w r19, -300(r30)                # 4-byte Folded Spill
	storeli.w r11, -316(r30)                # 4-byte Folded Spill
	.loc	1 51 5 is_stmt 1                # gelu-lut-refined.mlir:51:5
	bneq r6, r17, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r1,  48(r30)
	store.d r[9:10], -328(r30)              # 8-byte Folded Spill
	addli r7, zero, 0
	lui r19, 80
	div.s r4, r9, r1
	loadli.w r1,  44(r30)
	div.s r4, r4, r1
	addli r1, zero, 5
	mod.s r11, r15, r1
	addli r1, zero, 8
	addli r15, r15, 1
	storeli.w r15, -312(r30)                # 4-byte Folded Spill
	div.s r9, r4, r16
	slli r25, r11, 16
	slli r10, r9, 3
	slli r9, r9, 6
	sub.s r14, r17, r10
	sub.s r9, r4, r9
	min.s r14, r14, r1
	mod.s r4, r4, r14
	div.s r9, r9, r14
	add.s r4, r10, r4
	slli r1, r9, 7
	zext_int2long r[9:10], r9
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	slli r1, r4, 7
	zext_int2long r[14:15], r4
	addli r4, zero, 0
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
	addli r1, zero, 7
	store.d r[14:15], -352(r30)             # 8-byte Folded Spill
	sll.d r[9:10], r[9:10], r1
	addli r1, zero, 17
	sll.d r[14:15], r[14:15], r1
	.loc	1 51 5                          # gelu-lut-refined.mlir:51:5
	load.d r[1:2], 8(r30)
	sll.d r[9:10], r[9:10], r22
	store.d r[9:10], -344(r30)              # 8-byte Folded Spill
	add.ul r[1:2], r[1:2], r[9:10]
	store.d r[1:2], -296(r30)               # 8-byte Folded Spill
	load.d r[1:2], -376(r30)                # 8-byte Folded Reload
	and.d r[20:21], r[14:15], r[1:2]
	j .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 5                           # gelu-lut-refined.mlir:0:5
	addli r1, zero, 1024
	.loc	1 60 13 is_stmt 1               # gelu-lut-refined.mlir:60:13
	sub.sl r[26:27], r[9:10], r[26:27]
	addli r11, zero, 384
	.loc	1 72 7                          # gelu-lut-refined.mlir:72:7
	load.d r[18:19], 0(r30)
	sll.d r[9:10], r[9:10], r22
	zext_int2long r[1:2], r1
	add.ul r[9:10], r[18:19], r[9:10]
	addli r18, zero, 24
	lui r19, 80
	.loc	1 61 13                         # gelu-lut-refined.mlir:61:13
	div.sl r[1:2], r[26:27], r[1:2]
	zext_int2long r[26:27], r11
	.loc	1 72 7                          # gelu-lut-refined.mlir:72:7
	addli r11, zero, 3
	xwait r11, 0
	lock zero, r17
	addli r11, zero, 256
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r10, zero, 2
	dma_cfg r23, r9, r11, 3
	.loc	1 63 13                         # gelu-lut-refined.mlir:63:13
	min.sl r[26:27], r[1:2], r[26:27]
	.loc	1 64 13                         # gelu-lut-refined.mlir:64:13
	sub.sl r[1:2], r[26:27], r[1:2]
	.loc	1 72 7                          # gelu-lut-refined.mlir:72:7
	addli r1, r1, 128
	addli r2, zero, 4096
	dma_cfg r11, r2, r1, 4
	dma_run zero
	unlock r17
	xsignal r22, 0
.LBB0_11:                               # %.thread16
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 82 19                         # gelu-lut-refined.mlir:82:19
	addli r13, r13, 1
	.loc	1 51 5                          # gelu-lut-refined.mlir:51:5
	addli r7, r7, 1
	.loc	1 83 19                         # gelu-lut-refined.mlir:83:19
	addli r12, r12, 1
	.loc	1 51 5                          # gelu-lut-refined.mlir:51:5
	beq r7, r24, .LBB0_28
.LBB0_12:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 91 13                         # gelu-lut-refined.mlir:91:13
	addli r4, r4, 1
.LBB0_13:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 68 19                         # gelu-lut-refined.mlir:68:19
	mod.s r9, r8, r17
	.loc	1 67 19                         # gelu-lut-refined.mlir:67:19
	mod.s r10, r5, r18
	addli r5, r5, 1
	.loc	1 68 19                         # gelu-lut-refined.mlir:68:19
	addli r8, r8, 1
	slli r9, r9, 15
	.loc	1 67 19                         # gelu-lut-refined.mlir:67:19
	slli r11, r10, 15
	.loc	1 68 19                         # gelu-lut-refined.mlir:68:19
	add.s r23, r9, r19
	.loc	1 72 7                          # gelu-lut-refined.mlir:72:7
	beq r6, r22, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	zext_int2long r[26:27], r7
	addli r10, zero, 6
	.loc	1 72 7                          # gelu-lut-refined.mlir:72:7
	bneq r6, r3, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 7                           # gelu-lut-refined.mlir:0:7
	addli r1, zero, 6
	.loc	1 53 13 is_stmt 1               # gelu-lut-refined.mlir:53:13
	sll.d r[9:10], r[26:27], r1
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	.loc	1 55 13                         # gelu-lut-refined.mlir:55:13
	add.ul r[9:10], r[9:10], r[14:15]
	zext_int2long r[26:27], r1
	.loc	1 56 13                         # gelu-lut-refined.mlir:56:13
	setlt.ul r11, r[26:27], r[9:10]
	addli.d r[26:27], r[20:21], 0
	.loc	1 60 13                         # gelu-lut-refined.mlir:60:13
	bneq r11, zero, .LBB0_10
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 13 is_stmt 0                # gelu-lut-refined.mlir:0:13
	zext_int2long r[26:27], zero
	j .LBB0_10
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 73 7 is_stmt 1                # gelu-lut-refined.mlir:73:7
	addli r1, zero, 5
	xwait r22, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 3
	ds_cfg r22, zero, 0
	ds_cfg r16, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r28, zero, 13
	shuffle_batch r11, r23, r16, 1
	unlock zero
	xsignal r1, 0
	xsignal r17, 0
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 82 19                         # gelu-lut-refined.mlir:82:19
	addli r2, zero, 40
	.loc	1 83 19                         # gelu-lut-refined.mlir:83:19
	mod.s r1, r12, r17
	.loc	1 82 19                         # gelu-lut-refined.mlir:82:19
	mod.s r2, r13, r2
	.loc	1 83 19                         # gelu-lut-refined.mlir:83:19
	slli r1, r1, 15
	.loc	1 82 19                         # gelu-lut-refined.mlir:82:19
	slli r23, r2, 15
	.loc	1 83 19                         # gelu-lut-refined.mlir:83:19
	lui r2, 112
	add.s r9, r1, r2
	.loc	1 87 7                          # gelu-lut-refined.mlir:87:7
	addli r1, zero, 7
	beq r6, r1, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	bneq r6, r10, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 18
	addli r10, zero, 7
	addli r11, zero, 6
	xwait r10, 0
	sll.d r[1:2], r[26:27], r1
	load.d r[26:27], -296(r30)              # 8-byte Folded Reload
	lock zero, r17
	addli r10, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[1:2], r[26:27], r[1:2]
	dma_cfg zero, r2, zero, 2
	dma_cfg r9, r1, r10, 3
	addli r1, zero, 4096
	dma_cfg r10, r1, r16, 4
	dma_run zero
	unlock r17
	xsignal r11, 0
	.loc	1 88 7                          # gelu-lut-refined.mlir:88:7
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 9
	xwait r10, 0
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 7
	ds_cfg r22, zero, 0
	ds_cfg r28, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r28, zero, 13
	shuffle_coa r23, r9, r16, 2
	unlock zero
	xsignal r1, 0
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 90 7                          # gelu-lut-refined.mlir:90:7
	bneq r6, r17, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 8
	addli r9, zero, 1
	addli r10, zero, 1
	addli r26, zero, 0
	xwait r17, 0
	xwait r1, 0
	beq r4, zero, .LBB0_25
.LBB0_24:                               # %.preheader17
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r1, r26, 14
	slli r2, r26, 8
	lock zero, r9
	addli r26, zero, 1
	mm_cfg r16, r16, r28, 0
	or r1, r1, r23
	or r2, r2, r25
	mm_cfg r17, r17, r9, 2
	mm_acc r2, r11, r1, 8
	andi r1, r10, 1
	addli r10, zero, 0
	unlock r9
	bneq r1, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r1, r26, 14
	slli r2, r26, 8
	lock zero, r9
	addli r26, zero, 1
	mm_cfg r16, r16, r28, 0
	or r1, r1, r23
	or r2, r2, r25
	mm_cfg r17, r17, r9, 2
	mm r2, r11, r1, 8
	andi r1, r10, 1
	addli r10, zero, 0
	unlock r9
	bneq r1, zero, .LBB0_25
.LBB0_26:                               # %.thread16.thread72
                                        #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 5
	.loc	1 82 19                         # gelu-lut-refined.mlir:82:19
	addli r13, r13, 1
	.loc	1 51 5                          # gelu-lut-refined.mlir:51:5
	addli r7, r7, 1
	.loc	1 83 19                         # gelu-lut-refined.mlir:83:19
	addli r12, r12, 1
	.loc	1 90 7                          # gelu-lut-refined.mlir:90:7
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r7, r24, .LBB0_12
	j .LBB0_29
.LBB0_27:                               # %.thread16.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 82 19                         # gelu-lut-refined.mlir:82:19
	addli r13, r13, 1
	.loc	1 51 5                          # gelu-lut-refined.mlir:51:5
	addli r7, r7, 1
	.loc	1 83 19                         # gelu-lut-refined.mlir:83:19
	addli r12, r12, 1
	bneq r7, r24, .LBB0_12
	j .LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 51 5                          # gelu-lut-refined.mlir:51:5
	bneq r6, r17, .LBB0_30
.LBB0_29:                               # %.thread74
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_30:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 100 11                        # gelu-lut-refined.mlir:100:11
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	addli r3, zero, 896
	loadli.w r20,  -304(r30)                # 4-byte Folded Reload
	addli r18, zero, 5
	zext_int2long r[14:15], r28
	addli r21, zero, 1
	zext_int2long r[9:10], r3
	zext_int2long r[1:2], r1
	.loc	1 106 16                        # gelu-lut-refined.mlir:106:16
	mod.s r4, r20, r18
	.loc	1 102 11                        # gelu-lut-refined.mlir:102:11
	min.ul r[9:10], r[1:2], r[9:10]
	addli.d r[9:10], r[9:10], 128
	.loc	1 104 11                        # gelu-lut-refined.mlir:104:11
	max.ul r[9:10], r[9:10], r[1:2]
	.loc	1 106 16                        # gelu-lut-refined.mlir:106:16
	slli r4, r4, 9
	.loc	1 104 11                        # gelu-lut-refined.mlir:104:11
	sub.sl r[1:2], r[9:10], r[1:2]
	.loc	1 105 11                        # gelu-lut-refined.mlir:105:11
	min.ul r[9:10], r[1:2], r[14:15]
	lui r2, 144
	.loc	1 106 16                        # gelu-lut-refined.mlir:106:16
	add.s r7, r4, r2
	.loc	1 109 5                         # gelu-lut-refined.mlir:109:5
	beq r6, r21, .LBB0_5
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r11,  -308(r30)                # 4-byte Folded Reload
	ori r2, r2, 2560
	loadli.w r19,  -300(r30)                # 4-byte Folded Reload
	.loc	1 110 16 is_stmt 1              # gelu-lut-refined.mlir:110:16
	mod.s r1, r11, r18
	addli r11, r11, 1
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
	storeli.w r11, -308(r30)                # 4-byte Folded Spill
	.loc	1 110 16                        # gelu-lut-refined.mlir:110:16
	slli r1, r1, 16
	add.s r4, r1, r2
	addli r2, zero, 5
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
	addli r1, zero, 3
	bneq r6, r1, .LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	addli r9, zero, 0
	addli r18, zero, 24
	lui r3, 16
	xwait r1, 0
	addli r1, zero, 12
	xwait r1, 0
	addli r1, zero, 15
	xwait r1, 0
	lock zero, r22
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 127
	ew_cfg zero, r1, zero, 2
	ew_cfg r21, zero, zero, 3
	loadli.w r15,  -312(r30)                # 4-byte Folded Reload
.LBB0_33:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r4, r9
	add.s r2, r25, r9
	addli r9, r9, 512
	dsmadd r1, r2, r7, 0
	bneq r9, r3, .LBB0_33
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	unlock r22
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 17
	xsignal r24, 0
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r1, 0
	j .LBB0_44
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 112 16                        # gelu-lut-refined.mlir:112:16
	mod.s r1, r19, r2
	loadli.w r7,  -380(r30)                 # 4-byte Folded Reload
	addli r18, zero, 24
	slli r1, r1, 16
	add.s r7, r1, r7
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	bneq r6, r2, .LBB0_41
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 14
	lui r3, 790528
	addli r10, zero, 0
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r22
	addli r1, zero, 4095
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 13
	ew_cfg r17, zero, zero, 3
	ew_cfg r17, r17, zero, 19
	ew_cfg r1, zero, zero, 10
	loadli.w r1,  -384(r30)                 # 4-byte Folded Reload
	ew_cfg r22, r21, r1, 11
	addli r1, zero, 3
	ew_cfg zero, zero, r1, 13
	loadli.w r11,  -316(r30)                # 4-byte Folded Reload
	.loc	1 114 16                        # gelu-lut-refined.mlir:114:16
	mod.s r1, r11, r2
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	lui r2, 266232
	ew_cfg r3, r17, r2, 14
	lui r2, 260096
	lui r3, 16
	ew_cfg zero, r2, zero, 15
	sslut r7, r4, 0
	ew_cfg zero, zero, zero, 10
	.loc	1 114 16                        # gelu-lut-refined.mlir:114:16
	slli r1, r1, 16
	.loc	1 113 5                         # gelu-lut-refined.mlir:113:5
	ew_cfg zero, zero, zero, 19
	unlock r22
	.loc	1 114 16                        # gelu-lut-refined.mlir:114:16
	loadli.w r2,  -388(r30)                 # 4-byte Folded Reload
	.loc	1 115 5                         # gelu-lut-refined.mlir:115:5
	xwait r24, 0
	.loc	1 114 16                        # gelu-lut-refined.mlir:114:16
	add.s r9, r1, r2
	.loc	1 115 5                         # gelu-lut-refined.mlir:115:5
	addli r1, zero, 20
	xwait r1, 0
	lock zero, r22
	addli r1, zero, 127
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r21, zero, zero, 3
	loadli.w r1,  -392(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r1, zero, zero, 0
.LBB0_37:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r9, r10
	add.s r2, r4, r10
	addli r10, r10, 512
	dscmpnsel r1, r2, r2, 0
	bneq r10, r3, .LBB0_37
# %bb.38:                               #   in Loop: Header=BB0_7 Depth=1
	unlock r22
	.loc	1 116 5                         # gelu-lut-refined.mlir:116:5
	addli r1, zero, 127
	addli r10, zero, 0
	lock zero, r22
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r21, zero, zero, 3
	loadli.w r1,  -396(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r1, zero, zero, 0
	loadli.w r15,  -312(r30)                # 4-byte Folded Reload
.LBB0_39:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r9, r10
	addli r10, r10, 512
	dscmpnsel r1, r1, r1, 4
	bneq r10, r3, .LBB0_39
# %bb.40:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 117 5                         # gelu-lut-refined.mlir:117:5
	addli r1, zero, 17
	.loc	1 116 5                         # gelu-lut-refined.mlir:116:5
	unlock r22
	.loc	1 117 5                         # gelu-lut-refined.mlir:117:5
	lui r2, 784384
	addli r3, zero, 20
	xwait r1, 0
	lock zero, r22
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r2, zero, 0
	addli r2, zero, 4095
	ew_cfg zero, r2, zero, 2
	ew_cfg r17, zero, zero, 3
	ew_cfg r17, r17, r17, 19
	dsmadd r4, r4, r9, 0
	ew_cfg zero, zero, zero, 19
	unlock r22
	xsignal r3, 0
	.loc	1 118 5                         # gelu-lut-refined.mlir:118:5
	lock zero, r22
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 15
	ew_cfg zero, r2, zero, 2
	ew_cfg r17, zero, zero, 3
	ew_cfg r17, r17, r17, 19
	dsmadd r7, r7, r4, 0
	ew_cfg zero, zero, zero, 19
	unlock r22
	xsignal r1, 0
	addli r1, zero, 18
	xsignal r1, 0
	j .LBB0_6
.LBB0_41:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 126 5                         # gelu-lut-refined.mlir:126:5
	bneq r6, zero, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	addli r3, zero, 384
	addli r23, zero, 19
	loadli.w r1,  -356(r30)                 # 4-byte Folded Reload
	.loc	1 126 5                         # gelu-lut-refined.mlir:126:5
	load.d r[25:26], 24(r30)
	addli r11, zero, 5
	zext_int2long r[19:20], r3
	load.d r[3:4], -352(r30)                # 8-byte Folded Reload
	sext_int2long r[1:2], r1
	sll.d r[3:4], r[3:4], r23
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	min.sl r[19:20], r[1:2], r[19:20]
	store.d r[3:4], -296(r30)               # 8-byte Folded Spill
	.loc	1 126 5                         # gelu-lut-refined.mlir:126:5
	addli r3, zero, 18
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	addli.d r[19:20], r[19:20], 128
	.loc	1 126 5                         # gelu-lut-refined.mlir:126:5
	xwait r3, 0
	load.d r[3:4], -296(r30)                # 8-byte Folded Reload
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	max.sl r[19:20], r[19:20], r[1:2]
	sub.sl r[1:2], r[19:20], r[1:2]
	.loc	1 126 5                         # gelu-lut-refined.mlir:126:5
	add.ul r[25:26], r[25:26], r[3:4]
	load.d r[3:4], -344(r30)                # 8-byte Folded Reload
	lock zero, r11
	dma_cfg zero, zero, zero, 0
	.loc	1 122 11 is_stmt 1              # gelu-lut-refined.mlir:122:11
	min.sl r[1:2], r[1:2], r[14:15]
	.loc	1 126 5                         # gelu-lut-refined.mlir:126:5
	dma_cfg zero, r21, zero, 1
	add.ul r[19:20], r[25:26], r[3:4]
	slli r4, r9, 2
	addli r3, zero, 512
	dma_cfg r20, zero, zero, 2
	dma_cfg r19, r7, r4, 3
	addli r4, zero, 4096
	loadli.w r20,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -300(r30)                # 4-byte Folded Reload
	dma_cfg r4, r3, r1, 4
	dma_run zero
	unlock r11
	xsignal r23, 0
.LBB0_43:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	loadli.w r15,  -312(r30)                # 4-byte Folded Reload
.LBB0_44:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	loadli.w r11,  -316(r30)                # 4-byte Folded Reload
	j .LBB0_6
.LBB0_45:                               # %._crit_edge
	.loc	1 127 5 is_stmt 1               # gelu-lut-refined.mlir:127:5
	xsignal zero, 0
	bneq r6, zero, .LBB0_47
# %bb.46:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	addli r1, zero, 2
	.loc	1 127 5                         # gelu-lut-refined.mlir:127:5
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
	.loc	1 127 5 epilogue_begin          # gelu-lut-refined.mlir:127:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-_2gz44gy" # string offset=29
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
