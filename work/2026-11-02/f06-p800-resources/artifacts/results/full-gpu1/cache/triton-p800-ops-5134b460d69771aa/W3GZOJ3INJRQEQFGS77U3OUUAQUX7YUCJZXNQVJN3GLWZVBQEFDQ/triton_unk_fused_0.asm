	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-kuwb_urp" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -472
	addli r1, zero, 1
.Ltmp0:
	.loc	1 32 5 prologue_end             # parallel-rne.mlir:32:5
	core_id r12
	addli r30, sp, 408
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 32 5                          # parallel-rne.mlir:32:5
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
	.loc	1 32 5                          # parallel-rne.mlir:32:5
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
	addli r2, zero, 9
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
	addli r1, zero, 19
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 17
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 21
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 34 10 is_stmt 1               # parallel-rne.mlir:34:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -24(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -48(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -72(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -96(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -116(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -280(r30)
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r1, r2, r1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r4, r1, r4
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r2, r2, -1
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r3, -20(r30)
	storeli.w r3, -16(r30)
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	storeli.w r3, -36(r30)
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	storeli.w r3, -60(r30)
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	storeli.w r3, -80(r30)
	storeli.w r3, -76(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r3, -112(r30)
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
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
	storeli.w r3, -120(r30)
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r1, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	fmac.s r2, r2, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	min.s r2, r2, r4
	.loc	1 54 5                          # parallel-rne.mlir:54:5
	ble.s r2, r1, .LBB0_274
# %bb.4:                                # %.lr.ph
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	sext_int2long r[2:3], r2
	loadli.w r14,  -116(r30)
	loadli.w r19,  -280(r30)
	addli r7, zero, 0
	addli r22, zero, 64
	addli r27, zero, 4
	addli r28, zero, 5
	addli r25, zero, 2
	addli r26, zero, 24
	addli r17, zero, 128
	lui r24, 522240
	addli r13, zero, 0
	storeli.w zero, -332(r30)               # 4-byte Folded Spill
	store.d r[2:3], -384(r30)               # 8-byte Folded Spill
	loadli.w r2,  -24(r30)
	.loc	1 43 11 is_stmt 1               # parallel-rne.mlir:43:11
	sext_int2long r[3:4], r1
	lui r1, 15
	storeli.w r2, -312(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -48(r30)
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -72(r30)
	storeli.w r2, -320(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -96(r30)
	storeli.w r2, -324(r30)                 # 4-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1048448
	store.d r[1:2], -392(r30)               # 8-byte Folded Spill
	lui r1, 224
	lui r2, 304
	ori r1, r1, 2560
	storeli.w r1, -396(r30)                 # 4-byte Folded Spill
	lui r1, 40
	ori r1, r1, 2114
	storeli.w r1, -404(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2560
	lui r2, 127
	storeli.w r1, -400(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r23, r1, 4095
	ori r1, r2, 4095
	storeli.w r1, -296(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	addli r1, zero, 12
	addli r25, zero, 2
	xsignal r1, 0
	.loc	1 445 7                         # parallel-rne.mlir:445:7
	addli r1, zero, 17
	xsignal r1, 0
	.loc	1 446 7                         # parallel-rne.mlir:446:7
	addli r1, zero, 19
	xsignal r1, 0
	.loc	1 447 7                         # parallel-rne.mlir:447:7
	addli r1, zero, 21
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[3:4], -344(r30)                # 8-byte Folded Reload
	.loc	1 54 5 is_stmt 1                # parallel-rne.mlir:54:5
	load.d r[1:2], -384(r30)                # 8-byte Folded Reload
	loadli.w r7,  -336(r30)                 # 4-byte Folded Reload
	addli.d r[3:4], r[3:4], 1
	setlt.sl r1, r[3:4], r[1:2]
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -324(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -320(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -312(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -312(r30)                 # 4-byte Folded Spill
	beq r1, zero, .LBB0_274
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_89 Depth 3
                                        #       Child Loop BB0_75 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_47 Depth 3
                                        #     Child Loop BB0_101 Depth 2
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_104 Depth 3
                                        #     Child Loop BB0_130 Depth 2
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_133 Depth 3
                                        #     Child Loop BB0_158 Depth 2
                                        #       Child Loop BB0_175 Depth 3
                                        #       Child Loop BB0_161 Depth 3
                                        #     Child Loop BB0_187 Depth 2
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_190 Depth 3
                                        #     Child Loop BB0_217 Depth 2
                                        #       Child Loop BB0_234 Depth 3
                                        #       Child Loop BB0_220 Depth 3
                                        #     Child Loop BB0_245 Depth 2
                                        #       Child Loop BB0_262 Depth 3
                                        #       Child Loop BB0_248 Depth 3
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	bneq r12, r27, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 13
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r2,  48(r30)
	store.d r[3:4], -344(r30)               # 8-byte Folded Spill
	addli r8, zero, 8
	mod.s r5, r7, r28
	addli r7, r7, 1
	loadli.w r20,  -332(r30)                # 4-byte Folded Reload
	addli r1, zero, 0
	addli r18, zero, 0
	storeli.w r7, -336(r30)                 # 4-byte Folded Spill
	div.s r2, r3, r2
	loadli.w r3,  44(r30)
	slli r15, r5, 16
	div.s r2, r2, r3
	div.s r3, r2, r22
	slli r4, r3, 3
	slli r3, r3, 6
	sub.s r6, r27, r4
	sub.s r3, r2, r3
	min.s r6, r6, r8
	mod.s r2, r2, r6
	div.s r3, r3, r6
	add.s r2, r4, r2
	slli r21, r3, 7
	zext_int2long r[5:6], r3
	slli r3, r2, 7
	zext_int2long r[7:8], r2
	addli r2, zero, 17
	storeli.w r3, -364(r30)                 # 4-byte Folded Spill
	addli r3, zero, 7
	store.d r[7:8], -360(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[7:8], r2
	sll.d r[5:6], r[5:6], r3
	.loc	1 80 7 is_stmt 1                # parallel-rne.mlir:80:7
	load.d r[2:3], 8(r30)
	sll.d r[4:5], r[5:6], r25
	add.ul r[2:3], r[2:3], r[4:5]
	store.d r[4:5], -352(r30)               # 8-byte Folded Spill
	addli r4, zero, 6
	store.d r[2:3], -288(r30)               # 8-byte Folded Spill
	load.d r[2:3], -392(r30)                # 8-byte Folded Reload
	and.d r[10:11], r[8:9], r[2:3]
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 1024
	.loc	1 89 15 is_stmt 1               # parallel-rne.mlir:89:15
	sub.sl r[16:17], r[5:6], r[16:17]
	zext_int2long r[25:26], r3
	addli r3, zero, 384
	.loc	1 90 15                         # parallel-rne.mlir:90:15
	div.sl r[16:17], r[16:17], r[25:26]
	zext_int2long r[25:26], r3
	addli r3, zero, 2
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	sll.d r[5:6], r[5:6], r3
	addli r3, zero, 3
	xwait r3, 0
	load.d r[3:4], 0(r30)
	lock zero, r27
	dma_cfg zero, zero, zero, 0
	add.ul r[5:6], r[3:4], r[5:6]
	addli r4, zero, 256
	dma_cfg zero, r6, zero, 2
	dma_cfg r2, r5, r4, 3
	addli r2, zero, 4096
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	min.sl r[25:26], r[16:17], r[25:26]
	.loc	1 93 15                         # parallel-rne.mlir:93:15
	sub.sl r[16:17], r[25:26], r[16:17]
	addli r25, zero, 2
	addli r26, zero, 24
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	addli r3, r16, 128
	addli r17, zero, 128
	dma_cfg r4, r2, r3, 4
	dma_run zero
	unlock r27
	xsignal r25, 0
	addli r4, zero, 6
.LBB0_12:                               # %.thread25
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r19, r19, 1
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r1, r1, 1
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	addli r14, r14, 1
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r2, zero, 16
	beq r1, r2, .LBB0_29
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 124 15                        # parallel-rne.mlir:124:15
	addli r18, r18, 1
.LBB0_14:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	mod.s r2, r13, r27
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r3, r20, r26
	addli r20, r20, 1
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	addli r13, r13, 1
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r6, r3, 15
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	slli r2, r2, 15
	lui r3, 80
	add.s r2, r2, r3
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	beq r12, r25, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[16:17], r1
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	addli r3, zero, 1
	bneq r12, r3, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	loadli.w r3,  -296(r30)                 # 4-byte Folded Reload
	.loc	1 82 15 is_stmt 1               # parallel-rne.mlir:82:15
	sll.d r[5:6], r[16:17], r4
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	add.ul r[5:6], r[5:6], r[8:9]
	zext_int2long r[16:17], r3
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	setlt.ul r3, r[16:17], r[5:6]
	addli.d r[16:17], r[10:11], 0
	.loc	1 89 15                         # parallel-rne.mlir:89:15
	bneq r3, zero, .LBB0_11
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[16:17], zero
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 104 9 is_stmt 1               # parallel-rne.mlir:104:9
	xwait r25, 0
	xwait r28, 0
	lock zero, zero
	ds_cfg r25, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r17, zero, 13
	shuffle_batch r6, r2, r22, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	xsignal r27, 0
	j .LBB0_12
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r3, zero, 40
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	mod.s r2, r14, r27
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r3, r19, r3
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	slli r5, r2, 15
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r2, r3, 15
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	lui r3, 112
	add.s r3, r5, r3
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	addli r5, zero, 7
	beq r12, r5, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r12, r4, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 18
	sll.d r[5:6], r[16:17], r2
	addli r2, zero, 7
	xwait r2, 0
	load.d r[16:17], -288(r30)              # 8-byte Folded Reload
	lock zero, r27
	addli r2, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[5:6], r[16:17], r[5:6]
	addli r17, zero, 128
	dma_cfg zero, r6, zero, 2
	dma_cfg r3, r5, r2, 3
	addli r3, zero, 4096
	dma_cfg r2, r3, r22, 4
	dma_run zero
	unlock r27
	xsignal r4, 0
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r5, zero, 9
	xwait r4, 0
	addli r17, zero, 128
	xwait r5, 0
	lock zero, zero
	ds_cfg r25, zero, 0
	ds_cfg r17, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r17, zero, 13
	shuffle_coa r2, r3, r22, 2
	addli r2, zero, 7
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
	j .LBB0_12
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 123 9                         # parallel-rne.mlir:123:9
	bneq r12, r27, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 8
	xwait r27, 0
	addli r17, zero, 128
	addli r5, zero, 1
	addli r7, zero, 0
	xwait r3, 0
	addli r3, zero, 1
	beq r18, zero, .LBB0_26
.LBB0_25:                               # %.preheader38
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r16, r7, 14
	slli r7, r7, 8
	lock zero, r3
	mm_cfg r22, r22, r17, 0
	or r16, r16, r2
	or r7, r7, r15
	mm_cfg r27, r27, r3, 2
	mm_acc r7, r6, r16, 8
	andi r16, r5, 1
	addli r7, zero, 1
	addli r5, zero, 0
	unlock r3
	bneq r16, zero, .LBB0_25
	j .LBB0_27
.LBB0_26:                               # %.preheader37
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r16, r7, 14
	slli r7, r7, 8
	lock zero, r3
	mm_cfg r22, r22, r17, 0
	or r16, r16, r2
	or r7, r7, r15
	mm_cfg r27, r27, r3, 2
	mm r7, r6, r16, 8
	andi r16, r5, 1
	addli r7, zero, 1
	addli r5, zero, 0
	unlock r3
	bneq r16, zero, .LBB0_26
.LBB0_27:                               # %.thread25.thread99
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 9
	xsignal r28, 0
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r19, r19, 1
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r1, r1, 1
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	addli r14, r14, 1
	.loc	1 123 9                         # parallel-rne.mlir:123:9
	xsignal r2, 0
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r2, zero, 16
	bneq r1, r2, .LBB0_13
	j .LBB0_30
.LBB0_28:                               # %.thread25.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r19, r19, 1
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r1, r1, 1
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	addli r14, r14, 1
	addli r17, zero, 128
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r2, zero, 16
	bneq r1, r2, .LBB0_13
	j .LBB0_31
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 127 7                         # parallel-rne.mlir:127:7
	bneq r12, r27, .LBB0_31
.LBB0_30:                               # %.thread101
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_31:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 896
	.loc	1 134 13 is_stmt 1              # parallel-rne.mlir:134:13
	zext_int2long r[1:2], r21
	.loc	1 141 13                        # parallel-rne.mlir:141:13
	loadli.w r5,  -324(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], r17
	zext_int2long r[3:4], r3
	mod.s r5, r5, r28
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	min.ul r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 128
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	max.ul r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	.loc	1 141 13                        # parallel-rne.mlir:141:13
	slli r3, r5, 9
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	min.ul r[10:11], r[1:2], r[8:9]
	.loc	1 141 13                        # parallel-rne.mlir:141:13
	lui r1, 144
	add.s r2, r3, r1
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	addli r1, zero, 1
	bneq r12, r1, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[3:4], 16(r30)
	load.d r[5:6], -352(r30)                # 8-byte Folded Reload
	addli r1, zero, 15
	xwait r1, 0
	lock zero, r27
	slli r1, r10, 2
	add.ul r[3:4], r[3:4], r[5:6]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg r2, r3, r1, 3
	addli r1, zero, 1
	addli r3, zero, 512
	dma_cfg r3, r3, r1, 4
	addli r1, zero, 14
	dma_run zero
	unlock r27
	xsignal r1, 0
.LBB0_33:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	loadli.w r1,  -320(r30)                 # 4-byte Folded Reload
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	loadli.w r3,  -316(r30)                 # 4-byte Folded Reload
	store.d r[10:11], -376(r30)             # 8-byte Folded Spill
	lui r10, 16
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	storeli.w r20, -332(r30)                # 4-byte Folded Spill
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	mod.s r1, r1, r28
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	mod.s r4, r3, r28
	lui r3, 144
	ori r5, r3, 2560
	loadli.w r3,  -312(r30)                 # 4-byte Folded Reload
	mod.s r3, r3, r28
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	slli r1, r1, 16
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	slli r4, r4, 16
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	add.s r1, r1, r5
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	loadli.w r5,  -396(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r5
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	bneq r12, r28, .LBB0_37
# %bb.34:                               #   in Loop: Header=BB0_8 Depth=1
	addli r6, zero, 10
	addli r5, zero, 0
	xwait r6, 0
	addli r6, zero, 14
	xwait r6, 0
	addli r6, zero, 17
	xwait r6, 0
	lock zero, r25
	lui r6, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r6, r6, zero, 0
	addli r6, zero, 127
	ew_cfg zero, r6, zero, 2
	addli r6, zero, 1
	ew_cfg r6, zero, zero, 3
.LBB0_35:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r4, r5
	add.s r7, r15, r5
	addli r5, r5, 512
	dsmadd r6, r7, r2, 0
	bneq r5, r10, .LBB0_35
# %bb.36:                               # %.thread29
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	storeli.w zero, -328(r30)               # 4-byte Folded Spill
	addli r6, zero, 4095
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r5, zero, 1
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	unlock r25
	xsignal r2, 0
	addli r2, zero, 15
	xsignal r2, 0
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r2, zero, 19
	xwait r2, 0
	lock zero, r25
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r6, zero, 2
	ew_cfg r27, zero, zero, 3
	ew_cfg r27, r27, zero, 19
	ew_cfg r25, zero, zero, 10
	loadli.w r2,  -404(r30)                 # 4-byte Folded Reload
	ew_cfg r25, r5, r2, 11
	lui r2, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r27, r2, 14
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	slli r2, r3, 16
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	ew_cfg zero, zero, zero, 15
	sslut r1, r4, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r25
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	loadli.w r3,  -400(r30)                 # 4-byte Folded Reload
	add.s r18, r2, r3
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	addli r2, zero, 21
	xwait r2, 0
	lock zero, r25
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	addli r2, zero, 16
	ew_cfg zero, r6, zero, 2
	ew_cfg r27, zero, zero, 3
	ew_cfg r27, r27, r27, 19
	dsmul r18, r4, r1, 0
	ew_cfg zero, zero, zero, 19
	unlock r25
	xsignal r2, 0
	addli r2, zero, 18
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r2, 0
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	j .LBB0_40
.LBB0_37:                               # %.thread26
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	slli r2, r3, 16
	loadli.w r3,  -400(r30)                 # 4-byte Folded Reload
	add.s r18, r2, r3
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	addli r2, zero, 3
	bneq r12, r2, .LBB0_39
# %bb.38:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	addli r2, zero, 16
	xwait r2, 0
	.loc	1 157 7                         # parallel-rne.mlir:157:7
	addli r2, zero, 18
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 158 7                         # parallel-rne.mlir:158:7
	storeli.w r2, -328(r30)                 # 4-byte Folded Spill
	addli r2, zero, 20
	xwait r2, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -328(r30)               # 4-byte Folded Spill
.LBB0_40:                               # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 162 7 is_stmt 1               # parallel-rne.mlir:162:7
	addli r2, zero, 255
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	xfence
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	mfence { lm, sm, gm }
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	csr_set csr5, r2
	addli r2, zero, 127
	sync_core
	storeli.w r14, -304(r30)                # 4-byte Folded Spill
	storeli.w r19, -300(r30)                # 4-byte Folded Spill
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	storeli.w r13, -308(r30)                # 4-byte Folded Spill
	zext_int2long r[20:21], r2
	beq r12, zero, .LBB0_70
# %bb.41:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 198 7                         # parallel-rne.mlir:198:7
	addli r2, zero, 1
	bneq r12, r2, .LBB0_98
.LBB0_42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 16
	.loc	1 205 9 is_stmt 1               # parallel-rne.mlir:205:9
	sub.s r2, r15, r18
	addli r26, r13, 0
	setlt.u r2, r2, r3
	zext_int2long r[5:6], r3
	.loc	1 198 7                         # parallel-rne.mlir:198:7
	storeli.w r2, -292(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_44
.LBB0_43:                               # %middle.block226
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	.loc	1 205 9 is_stmt 1               # parallel-rne.mlir:205:9
	setlt.ul r2, r[5:6], r[2:3]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_69
.LBB0_44:                               # %.preheader35
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_47 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[5:6], r2
	.loc	1 206 11 is_stmt 1              # parallel-rne.mlir:206:11
	loadli.w r2,  -292(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_59
# %bb.45:                               # %scalar.ph218.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_47
.LBB0_46:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	setlt.ul r5, r[2:3], r[20:21]
	.loc	1 228 13 is_stmt 1              # parallel-rne.mlir:228:13
	add.s r10, r15, r11
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 228 13                        # parallel-rne.mlir:228:13
	stores.w r16, 0(r10)
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	beq r5, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph218
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.ul r[10:11], r[2:3], r[6:7]
	lui r16, 523264
	lui r19, 523264
	slli r11, r10, 2
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	add.s r5, r1, r11
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	add.s r10, r18, r11
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	loads.w r5, 0(r5)
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	loads.w r22, 0(r10)
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	and r5, r5, r23
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	beq r5, r24, .LBB0_49
# %bb.48:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_49:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_47 Depth=3
	add.s r10, r4, r11
	loads.w r10, 0(r10)
	and r17, r10, r23
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	beq r17, zero, .LBB0_57
# %bb.50:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
	lui r22, 523264
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r5, zero, .LBB0_58
.LBB0_51:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_47 Depth=3
	beq r17, r24, .LBB0_53
.LBB0_52:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
.LBB0_53:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_47 Depth=3
	setlt.u r10, r24, r5
	lui r5, 523264
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r10, zero, .LBB0_55
# %bb.54:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r22, 0
.LBB0_55:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_47 Depth=3
	setlt.u r10, r24, r17
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r10, zero, .LBB0_46
# %bb.56:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r5, 0
	j .LBB0_46
.LBB0_57:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_47 Depth=3
	lui r22, 523264
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	beq r5, zero, .LBB0_51
.LBB0_58:                               # %scalar.ph218
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r17, r24, .LBB0_52
	j .LBB0_53
.LBB0_59:                               # %vector.body220.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_61
.LBB0_60:                               # %vector.body220
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 206 11 is_stmt 1              # parallel-rne.mlir:206:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 228 13                        # parallel-rne.mlir:228:13
	add.s r11, r15, r11
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	seteq.d r10, r[27:28], r[8:9]
	.loc	1 228 13                        # parallel-rne.mlir:228:13
	stores.w r2, 12(r11)
	stores.w r5, 8(r11)
	stores.w r17, 4(r11)
	stores.w r3, 0(r11)
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	bneq r10, zero, .LBB0_43
.LBB0_61:                               # %vector.body220
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.ul r[2:3], r[27:28], r[6:7]
	slli r11, r2, 2
	add.s r22, r4, r11
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	add.s r16, r1, r11
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	add.s r19, r18, r11
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	loads.w r2, 0(r22)
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	loads.w r3, 0(r16)
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	and r2, r2, r23
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	and r3, r3, r23
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	seteq r5, r2, r24
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	seteq r14, r2, zero
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	seteq r12, r3, zero
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	seteq r13, r3, r24
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	max.u r2, r2, r3
	setlt.u r2, r24, r2
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	and r3, r5, r12
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	and r5, r14, r13
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	or r3, r3, r5
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	or r5, r2, r3
	lui r2, 523264
	lui r3, 523264
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r5, zero, .LBB0_63
# %bb.62:                               # %vector.body220
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_63:                               # %vector.body220
                                        #   in Loop: Header=BB0_61 Depth=3
	loads.w r5, 4(r22)
	loads.w r12, 4(r16)
	and r5, r5, r23
	and r12, r12, r23
	seteq r13, r5, r24
	seteq r10, r5, zero
	seteq r17, r12, r24
	seteq r14, r12, zero
	max.u r5, r5, r12
	setlt.u r5, r24, r5
	and r10, r10, r17
	and r12, r13, r14
	lui r17, 523264
	or r10, r12, r10
	or r5, r5, r10
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r5, zero, .LBB0_65
# %bb.64:                               # %vector.body220
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r19)
.LBB0_65:                               # %vector.body220
                                        #   in Loop: Header=BB0_61 Depth=3
	loads.w r5, 8(r22)
	loads.w r10, 8(r16)
	and r5, r5, r23
	and r10, r10, r23
	seteq r12, r5, r24
	seteq r25, r5, zero
	seteq r13, r10, zero
	seteq r14, r10, r24
	max.u r5, r5, r10
	setlt.u r5, r24, r5
	and r10, r12, r13
	and r12, r25, r14
	or r10, r10, r12
	or r10, r5, r10
	lui r5, 523264
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r10, zero, .LBB0_67
# %bb.66:                               # %vector.body220
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r19)
.LBB0_67:                               # %vector.body220
                                        #   in Loop: Header=BB0_61 Depth=3
	loads.w r10, 12(r22)
	loads.w r12, 12(r16)
	and r10, r10, r23
	and r12, r12, r23
	seteq r13, r10, r24
	seteq r22, r10, zero
	seteq r14, r12, zero
	seteq r16, r12, r24
	max.u r10, r10, r12
	setlt.u r10, r24, r10
	and r12, r13, r14
	and r13, r22, r16
	or r12, r12, r13
	or r10, r10, r12
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	bneq r10, zero, .LBB0_60
# %bb.68:                               # %vector.body220
                                        #   in Loop: Header=BB0_61 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r19)
	j .LBB0_60
.LBB0_69:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 198 7 is_stmt 1               # parallel-rne.mlir:198:7
	mfence { sm }
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r12
	addli r22, zero, 64
	addli r27, zero, 4
	addli r28, zero, 5
	addli r17, zero, 128
	addli r13, r26, 0
	loadli.w r14,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -300(r30)                # 4-byte Folded Reload
	.loc	1 233 7                         # parallel-rne.mlir:233:7
	addli r2, zero, 2
	bneq r12, r2, .LBB0_127
	j .LBB0_99
.LBB0_70:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 170 9                         # parallel-rne.mlir:170:9
	sub.s r2, r15, r18
	addli r3, zero, 16
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	xfence
	zext_int2long r[5:6], zero
	mfence { lm, sm, gm }
	setlt.u r26, r2, r3
	j .LBB0_72
.LBB0_71:                               # %middle.block241
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	.loc	1 170 9 is_stmt 1               # parallel-rne.mlir:170:9
	setlt.ul r2, r[5:6], r[2:3]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_97
.LBB0_72:                               # %.preheader36
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_89 Depth 3
                                        #       Child Loop BB0_75 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[5:6], r2
	.loc	1 171 11 is_stmt 1              # parallel-rne.mlir:171:11
	beq r26, zero, .LBB0_87
# %bb.73:                               # %scalar.ph233.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_75
.LBB0_74:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	setlt.ul r5, r[2:3], r[20:21]
	.loc	1 193 13 is_stmt 1              # parallel-rne.mlir:193:13
	add.s r10, r15, r11
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 193 13                        # parallel-rne.mlir:193:13
	stores.w r16, 0(r10)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	beq r5, zero, .LBB0_71
.LBB0_75:                               # %scalar.ph233
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[10:11], r[2:3], r[6:7]
	lui r16, 523264
	lui r19, 523264
	slli r11, r10, 2
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.s r5, r1, r11
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.s r10, r18, r11
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	loads.w r5, 0(r5)
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	loads.w r22, 0(r10)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r5, r5, r23
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	beq r5, r24, .LBB0_77
# %bb.76:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_77:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_75 Depth=3
	add.s r10, r4, r11
	loads.w r10, 0(r10)
	and r17, r10, r23
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	beq r17, zero, .LBB0_85
# %bb.78:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
	lui r22, 523264
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r5, zero, .LBB0_86
.LBB0_79:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_75 Depth=3
	beq r17, r24, .LBB0_81
.LBB0_80:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
.LBB0_81:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_75 Depth=3
	setlt.u r10, r24, r5
	lui r5, 523264
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r10, zero, .LBB0_83
# %bb.82:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r22, 0
.LBB0_83:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_75 Depth=3
	setlt.u r10, r24, r17
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r10, zero, .LBB0_74
# %bb.84:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r5, 0
	j .LBB0_74
.LBB0_85:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_75 Depth=3
	lui r22, 523264
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	beq r5, zero, .LBB0_79
.LBB0_86:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r17, r24, .LBB0_80
	j .LBB0_81
.LBB0_87:                               # %vector.body235.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_89
.LBB0_88:                               # %vector.body235
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 171 11 is_stmt 1              # parallel-rne.mlir:171:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 193 13                        # parallel-rne.mlir:193:13
	add.s r11, r15, r11
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	seteq.d r10, r[27:28], r[8:9]
	.loc	1 193 13                        # parallel-rne.mlir:193:13
	stores.w r2, 12(r11)
	stores.w r5, 8(r11)
	stores.w r17, 4(r11)
	stores.w r3, 0(r11)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	bneq r10, zero, .LBB0_71
.LBB0_89:                               # %vector.body235
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[2:3], r[27:28], r[6:7]
	slli r11, r2, 2
	add.s r22, r4, r11
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.s r16, r1, r11
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	loads.w r2, 0(r22)
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	loads.w r3, 0(r16)
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	and r2, r2, r23
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r3, r3, r23
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	seteq r5, r2, r24
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	seteq r14, r2, zero
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	seteq r17, r3, zero
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	seteq r19, r3, r24
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	max.u r2, r2, r3
	setlt.u r2, r24, r2
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	and r3, r5, r17
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	and r5, r14, r19
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.s r19, r18, r11
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	or r3, r3, r5
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	or r5, r2, r3
	lui r2, 523264
	lui r3, 523264
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r5, zero, .LBB0_91
# %bb.90:                               # %vector.body235
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_91:                               # %vector.body235
                                        #   in Loop: Header=BB0_89 Depth=3
	loads.w r5, 4(r22)
	loads.w r14, 4(r16)
	and r5, r5, r23
	and r14, r14, r23
	seteq r17, r5, r24
	seteq r10, r14, zero
	seteq r13, r5, zero
	seteq r12, r14, r24
	max.u r5, r5, r14
	setlt.u r5, r24, r5
	and r10, r17, r10
	and r12, r13, r12
	lui r17, 523264
	or r10, r10, r12
	or r5, r5, r10
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r5, zero, .LBB0_93
# %bb.92:                               # %vector.body235
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r19)
.LBB0_93:                               # %vector.body235
                                        #   in Loop: Header=BB0_89 Depth=3
	loads.w r5, 8(r22)
	loads.w r10, 8(r16)
	and r5, r5, r23
	and r10, r10, r23
	seteq r12, r5, r24
	seteq r25, r5, zero
	seteq r13, r10, zero
	seteq r14, r10, r24
	max.u r5, r5, r10
	setlt.u r5, r24, r5
	and r10, r12, r13
	and r12, r25, r14
	or r10, r10, r12
	or r10, r5, r10
	lui r5, 523264
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r10, zero, .LBB0_95
# %bb.94:                               # %vector.body235
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r19)
.LBB0_95:                               # %vector.body235
                                        #   in Loop: Header=BB0_89 Depth=3
	loads.w r10, 12(r22)
	loads.w r12, 12(r16)
	and r10, r10, r23
	and r12, r12, r23
	seteq r13, r10, r24
	seteq r22, r10, zero
	seteq r14, r12, zero
	seteq r16, r12, r24
	max.u r10, r10, r12
	setlt.u r10, r24, r10
	and r12, r13, r14
	and r13, r22, r16
	or r12, r12, r13
	or r10, r10, r12
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	bneq r10, zero, .LBB0_88
# %bb.96:                               # %vector.body235
                                        #   in Loop: Header=BB0_89 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r19)
	j .LBB0_88
.LBB0_97:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 163 7 is_stmt 1               # parallel-rne.mlir:163:7
	mfence { sm }
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r12
	addli r22, zero, 64
	addli r27, zero, 4
	addli r28, zero, 5
	addli r17, zero, 128
	loadli.w r14,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -300(r30)                # 4-byte Folded Reload
	loadli.w r13,  -308(r30)                # 4-byte Folded Reload
	.loc	1 198 7                         # parallel-rne.mlir:198:7
	addli r2, zero, 1
	beq r12, r2, .LBB0_42
.LBB0_98:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 233 7                         # parallel-rne.mlir:233:7
	addli r2, zero, 2
	bneq r12, r2, .LBB0_127
.LBB0_99:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 240 9                         # parallel-rne.mlir:240:9
	sub.s r2, r15, r18
	addli r3, zero, 16
	addli r26, zero, 47
	setlt.u r2, r2, r3
	.loc	1 233 7                         # parallel-rne.mlir:233:7
	storeli.w r2, -292(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	xfence
	zext_int2long r[5:6], r2
	mfence { lm, sm, gm }
	j .LBB0_101
.LBB0_100:                              # %middle.block211
                                        #   in Loop: Header=BB0_101 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r26
	.loc	1 240 9 is_stmt 1               # parallel-rne.mlir:240:9
	setlt.ul r2, r[5:6], r[2:3]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_126
.LBB0_101:                              # %.preheader34
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_104 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[5:6], r2
	.loc	1 241 11 is_stmt 1              # parallel-rne.mlir:241:11
	loadli.w r2,  -292(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_116
# %bb.102:                              # %scalar.ph203.preheader
                                        #   in Loop: Header=BB0_101 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_104
.LBB0_103:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	setlt.ul r5, r[2:3], r[20:21]
	.loc	1 263 13 is_stmt 1              # parallel-rne.mlir:263:13
	add.s r10, r15, r11
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 263 13                        # parallel-rne.mlir:263:13
	stores.w r16, 0(r10)
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	beq r5, zero, .LBB0_100
.LBB0_104:                              # %scalar.ph203
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	add.ul r[10:11], r[2:3], r[6:7]
	lui r16, 523264
	lui r19, 523264
	slli r11, r10, 2
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	add.s r5, r1, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.s r10, r18, r11
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	loads.w r5, 0(r5)
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	loads.w r22, 0(r10)
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	and r5, r5, r23
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	beq r5, r24, .LBB0_106
# %bb.105:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_106:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_104 Depth=3
	add.s r10, r4, r11
	loads.w r10, 0(r10)
	and r17, r10, r23
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	beq r17, zero, .LBB0_114
# %bb.107:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
	lui r22, 523264
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r5, zero, .LBB0_115
.LBB0_108:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_104 Depth=3
	beq r17, r24, .LBB0_110
.LBB0_109:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
.LBB0_110:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_104 Depth=3
	setlt.u r10, r24, r5
	lui r5, 523264
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r10, zero, .LBB0_112
# %bb.111:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r22, 0
.LBB0_112:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_104 Depth=3
	setlt.u r10, r24, r17
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r10, zero, .LBB0_103
# %bb.113:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r5, 0
	j .LBB0_103
.LBB0_114:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_104 Depth=3
	lui r22, 523264
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	beq r5, zero, .LBB0_108
.LBB0_115:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_104 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r17, r24, .LBB0_109
	j .LBB0_110
.LBB0_116:                              # %vector.body205.preheader
                                        #   in Loop: Header=BB0_101 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_118
.LBB0_117:                              # %vector.body205
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 241 11 is_stmt 1              # parallel-rne.mlir:241:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 263 13                        # parallel-rne.mlir:263:13
	add.s r11, r15, r11
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	seteq.d r10, r[27:28], r[8:9]
	.loc	1 263 13                        # parallel-rne.mlir:263:13
	stores.w r2, 12(r11)
	stores.w r5, 8(r11)
	stores.w r17, 4(r11)
	stores.w r3, 0(r11)
	.loc	1 241 11                        # parallel-rne.mlir:241:11
	bneq r10, zero, .LBB0_100
.LBB0_118:                              # %vector.body205
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	add.ul r[2:3], r[27:28], r[6:7]
	slli r11, r2, 2
	add.s r22, r4, r11
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	add.s r16, r1, r11
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.s r19, r18, r11
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	loads.w r2, 0(r22)
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	loads.w r3, 0(r16)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r2, r2, r23
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	and r3, r3, r23
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	seteq r5, r2, r24
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	seteq r14, r2, zero
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	seteq r12, r3, zero
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	seteq r13, r3, r24
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	max.u r2, r2, r3
	setlt.u r2, r24, r2
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	and r3, r5, r12
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	and r5, r14, r13
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	or r3, r3, r5
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	or r5, r2, r3
	lui r2, 523264
	lui r3, 523264
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r5, zero, .LBB0_120
# %bb.119:                              # %vector.body205
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_120:                              # %vector.body205
                                        #   in Loop: Header=BB0_118 Depth=3
	loads.w r5, 4(r22)
	loads.w r12, 4(r16)
	and r5, r5, r23
	and r12, r12, r23
	seteq r13, r5, r24
	seteq r10, r5, zero
	seteq r17, r12, r24
	seteq r14, r12, zero
	max.u r5, r5, r12
	setlt.u r5, r24, r5
	and r10, r10, r17
	and r12, r13, r14
	lui r17, 523264
	or r10, r12, r10
	or r5, r5, r10
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r5, zero, .LBB0_122
# %bb.121:                              # %vector.body205
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r19)
.LBB0_122:                              # %vector.body205
                                        #   in Loop: Header=BB0_118 Depth=3
	loads.w r5, 8(r22)
	loads.w r10, 8(r16)
	and r5, r5, r23
	and r10, r10, r23
	seteq r12, r5, r24
	seteq r25, r5, zero
	seteq r13, r10, zero
	seteq r14, r10, r24
	max.u r5, r5, r10
	setlt.u r5, r24, r5
	and r10, r12, r13
	and r12, r25, r14
	or r10, r10, r12
	or r10, r5, r10
	lui r5, 523264
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r10, zero, .LBB0_124
# %bb.123:                              # %vector.body205
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r19)
.LBB0_124:                              # %vector.body205
                                        #   in Loop: Header=BB0_118 Depth=3
	loads.w r10, 12(r22)
	loads.w r12, 12(r16)
	and r10, r10, r23
	and r12, r12, r23
	seteq r13, r10, r24
	seteq r22, r10, zero
	seteq r14, r12, zero
	seteq r16, r12, r24
	max.u r10, r10, r12
	setlt.u r10, r24, r10
	and r12, r13, r14
	and r13, r22, r16
	or r12, r12, r13
	or r10, r10, r12
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r10, zero, .LBB0_117
# %bb.125:                              # %vector.body205
                                        #   in Loop: Header=BB0_118 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r19)
	j .LBB0_117
.LBB0_126:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 233 7 is_stmt 1               # parallel-rne.mlir:233:7
	mfence { sm }
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r12
	addli r22, zero, 64
	addli r27, zero, 4
	addli r28, zero, 5
	addli r17, zero, 128
	loadli.w r14,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -300(r30)                # 4-byte Folded Reload
	loadli.w r13,  -308(r30)                # 4-byte Folded Reload
.LBB0_127:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 268 7                         # parallel-rne.mlir:268:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	addli r26, zero, 24
	beq r2, zero, .LBB0_155
# %bb.128:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 275 9                         # parallel-rne.mlir:275:9
	sub.s r2, r15, r18
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 268 7                         # parallel-rne.mlir:268:7
	storeli.w r2, -292(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	xfence
	zext_int2long r[5:6], r2
	mfence { lm, sm, gm }
	j .LBB0_130
.LBB0_129:                              # %middle.block196
                                        #   in Loop: Header=BB0_130 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	.loc	1 275 9 is_stmt 1               # parallel-rne.mlir:275:9
	setlt.ul r2, r[5:6], r[2:3]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_183
.LBB0_130:                              # %.preheader33
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_133 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[5:6], r2
	.loc	1 276 11 is_stmt 1              # parallel-rne.mlir:276:11
	loadli.w r2,  -292(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_145
# %bb.131:                              # %scalar.ph188.preheader
                                        #   in Loop: Header=BB0_130 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_133
.LBB0_132:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 276 11                        # parallel-rne.mlir:276:11
	setlt.ul r5, r[2:3], r[20:21]
	.loc	1 298 13 is_stmt 1              # parallel-rne.mlir:298:13
	add.s r10, r15, r11
	.loc	1 276 11                        # parallel-rne.mlir:276:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	stores.w r16, 0(r10)
	.loc	1 276 11                        # parallel-rne.mlir:276:11
	beq r5, zero, .LBB0_129
.LBB0_133:                              # %scalar.ph188
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	add.ul r[10:11], r[2:3], r[6:7]
	lui r16, 523264
	lui r19, 523264
	slli r11, r10, 2
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	add.s r5, r1, r11
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	add.s r10, r18, r11
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	loads.w r5, 0(r5)
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	loads.w r22, 0(r10)
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	and r5, r5, r23
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r5, r24, .LBB0_135
# %bb.134:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_135:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_133 Depth=3
	add.s r10, r4, r11
	loads.w r10, 0(r10)
	and r17, r10, r23
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r17, zero, .LBB0_143
# %bb.136:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
	lui r22, 523264
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r5, zero, .LBB0_144
.LBB0_137:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_133 Depth=3
	beq r17, r24, .LBB0_139
.LBB0_138:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
.LBB0_139:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_133 Depth=3
	setlt.u r10, r24, r5
	lui r5, 523264
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r10, zero, .LBB0_141
# %bb.140:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r22, 0
.LBB0_141:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_133 Depth=3
	setlt.u r10, r24, r17
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r10, zero, .LBB0_132
# %bb.142:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r5, 0
	j .LBB0_132
.LBB0_143:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_133 Depth=3
	lui r22, 523264
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r5, zero, .LBB0_137
.LBB0_144:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_133 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r17, r24, .LBB0_138
	j .LBB0_139
.LBB0_145:                              # %vector.body190.preheader
                                        #   in Loop: Header=BB0_130 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_147
.LBB0_146:                              # %vector.body190
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 276 11 is_stmt 1              # parallel-rne.mlir:276:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	add.s r11, r15, r11
	.loc	1 276 11                        # parallel-rne.mlir:276:11
	seteq.d r10, r[27:28], r[8:9]
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	stores.w r2, 12(r11)
	stores.w r5, 8(r11)
	stores.w r17, 4(r11)
	stores.w r3, 0(r11)
	.loc	1 276 11                        # parallel-rne.mlir:276:11
	bneq r10, zero, .LBB0_129
.LBB0_147:                              # %vector.body190
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	add.ul r[2:3], r[27:28], r[6:7]
	slli r11, r2, 2
	add.s r22, r4, r11
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	add.s r16, r1, r11
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	add.s r19, r18, r11
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	loads.w r2, 0(r22)
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	loads.w r3, 0(r16)
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	and r2, r2, r23
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	and r3, r3, r23
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	seteq r5, r2, r24
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	seteq r14, r2, zero
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	seteq r12, r3, zero
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	seteq r13, r3, r24
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	max.u r2, r2, r3
	setlt.u r2, r24, r2
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r3, r5, r12
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	and r5, r14, r13
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	or r3, r3, r5
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	or r5, r2, r3
	lui r2, 523264
	lui r3, 523264
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r5, zero, .LBB0_149
# %bb.148:                              # %vector.body190
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_149:                              # %vector.body190
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r5, 4(r22)
	loads.w r12, 4(r16)
	and r5, r5, r23
	and r12, r12, r23
	seteq r13, r5, r24
	seteq r10, r5, zero
	seteq r17, r12, r24
	seteq r14, r12, zero
	max.u r5, r5, r12
	setlt.u r5, r24, r5
	and r10, r10, r17
	and r12, r13, r14
	lui r17, 523264
	or r10, r12, r10
	or r5, r5, r10
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r5, zero, .LBB0_151
# %bb.150:                              # %vector.body190
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r19)
.LBB0_151:                              # %vector.body190
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r5, 8(r22)
	loads.w r10, 8(r16)
	and r5, r5, r23
	and r10, r10, r23
	seteq r12, r5, r24
	seteq r25, r5, zero
	seteq r13, r10, zero
	seteq r14, r10, r24
	max.u r5, r5, r10
	setlt.u r5, r24, r5
	and r10, r12, r13
	and r12, r25, r14
	or r10, r10, r12
	or r10, r5, r10
	lui r5, 523264
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r10, zero, .LBB0_153
# %bb.152:                              # %vector.body190
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r19)
.LBB0_153:                              # %vector.body190
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r10, 12(r22)
	loads.w r12, 12(r16)
	and r10, r10, r23
	and r12, r12, r23
	seteq r13, r10, r24
	seteq r22, r10, zero
	seteq r14, r12, zero
	seteq r16, r12, r24
	max.u r10, r10, r12
	setlt.u r10, r24, r10
	and r12, r13, r14
	and r13, r22, r16
	or r12, r12, r13
	or r10, r10, r12
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r10, zero, .LBB0_146
# %bb.154:                              # %vector.body190
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r19)
	j .LBB0_146
.LBB0_155:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 303 7 is_stmt 1               # parallel-rne.mlir:303:7
	bneq r12, r27, .LBB0_184
.LBB0_156:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 310 9                         # parallel-rne.mlir:310:9
	sub.s r2, r15, r18
	addli r3, zero, 16
	zext_int2long r[5:6], r22
	setlt.u r2, r2, r3
	.loc	1 303 7                         # parallel-rne.mlir:303:7
	storeli.w r2, -292(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_158
.LBB0_157:                              # %middle.block181
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 79
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	.loc	1 310 9 is_stmt 1               # parallel-rne.mlir:310:9
	setlt.ul r2, r[5:6], r[2:3]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_212
.LBB0_158:                              # %.preheader32
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_175 Depth 3
                                        #       Child Loop BB0_161 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[5:6], r2
	.loc	1 311 11 is_stmt 1              # parallel-rne.mlir:311:11
	loadli.w r2,  -292(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_173
# %bb.159:                              # %scalar.ph173.preheader
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_161
.LBB0_160:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	setlt.ul r5, r[2:3], r[20:21]
	.loc	1 333 13 is_stmt 1              # parallel-rne.mlir:333:13
	add.s r10, r15, r11
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	stores.w r16, 0(r10)
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	beq r5, zero, .LBB0_157
.LBB0_161:                              # %scalar.ph173
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.ul r[10:11], r[2:3], r[6:7]
	lui r16, 523264
	lui r19, 523264
	slli r11, r10, 2
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.s r5, r1, r11
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	add.s r10, r18, r11
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	loads.w r5, 0(r5)
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	loads.w r22, 0(r10)
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	and r5, r5, r23
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r5, r24, .LBB0_163
# %bb.162:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_163:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	add.s r10, r4, r11
	loads.w r10, 0(r10)
	and r17, r10, r23
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r17, zero, .LBB0_171
# %bb.164:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
	lui r22, 523264
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r5, zero, .LBB0_172
.LBB0_165:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	beq r17, r24, .LBB0_167
.LBB0_166:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
.LBB0_167:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	setlt.u r10, r24, r5
	lui r5, 523264
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r10, zero, .LBB0_169
# %bb.168:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r22, 0
.LBB0_169:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	setlt.u r10, r24, r17
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r10, zero, .LBB0_160
# %bb.170:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r5, 0
	j .LBB0_160
.LBB0_171:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	lui r22, 523264
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	beq r5, zero, .LBB0_165
.LBB0_172:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r17, r24, .LBB0_166
	j .LBB0_167
.LBB0_173:                              # %vector.body175.preheader
                                        #   in Loop: Header=BB0_158 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_175
.LBB0_174:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 311 11 is_stmt 1              # parallel-rne.mlir:311:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	add.s r11, r15, r11
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	seteq.d r10, r[27:28], r[8:9]
	.loc	1 333 13                        # parallel-rne.mlir:333:13
	stores.w r2, 12(r11)
	stores.w r5, 8(r11)
	stores.w r17, 4(r11)
	stores.w r3, 0(r11)
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	bneq r10, zero, .LBB0_157
.LBB0_175:                              # %vector.body175
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.ul r[2:3], r[27:28], r[6:7]
	slli r11, r2, 2
	add.s r22, r4, r11
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.s r16, r1, r11
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	add.s r19, r18, r11
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	loads.w r2, 0(r22)
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	loads.w r3, 0(r16)
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	and r2, r2, r23
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	and r3, r3, r23
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	seteq r5, r2, r24
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	seteq r14, r2, zero
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	seteq r12, r3, zero
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	seteq r13, r3, r24
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	max.u r2, r2, r3
	setlt.u r2, r24, r2
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	and r3, r5, r12
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	and r5, r14, r13
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	or r3, r3, r5
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	or r5, r2, r3
	lui r2, 523264
	lui r3, 523264
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r5, zero, .LBB0_177
# %bb.176:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_177:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r5, 4(r22)
	loads.w r12, 4(r16)
	and r5, r5, r23
	and r12, r12, r23
	seteq r13, r5, r24
	seteq r10, r5, zero
	seteq r17, r12, r24
	seteq r14, r12, zero
	max.u r5, r5, r12
	setlt.u r5, r24, r5
	and r10, r10, r17
	and r12, r13, r14
	lui r17, 523264
	or r10, r12, r10
	or r5, r5, r10
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r5, zero, .LBB0_179
# %bb.178:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r19)
.LBB0_179:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r5, 8(r22)
	loads.w r10, 8(r16)
	and r5, r5, r23
	and r10, r10, r23
	seteq r12, r5, r24
	seteq r25, r5, zero
	seteq r13, r10, zero
	seteq r14, r10, r24
	max.u r5, r5, r10
	setlt.u r5, r24, r5
	and r10, r12, r13
	and r12, r25, r14
	or r10, r10, r12
	or r10, r5, r10
	lui r5, 523264
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r10, zero, .LBB0_181
# %bb.180:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r19)
.LBB0_181:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	loads.w r10, 12(r22)
	loads.w r12, 12(r16)
	and r10, r10, r23
	and r12, r12, r23
	seteq r13, r10, r24
	seteq r22, r10, zero
	seteq r14, r12, zero
	seteq r16, r12, r24
	max.u r10, r10, r12
	setlt.u r10, r24, r10
	and r12, r13, r14
	and r13, r22, r16
	or r12, r12, r13
	or r10, r10, r12
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	bneq r10, zero, .LBB0_174
# %bb.182:                              # %vector.body175
                                        #   in Loop: Header=BB0_175 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r19)
	j .LBB0_174
.LBB0_183:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 268 7 is_stmt 1               # parallel-rne.mlir:268:7
	mfence { sm }
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r12
	addli r22, zero, 64
	addli r27, zero, 4
	addli r28, zero, 5
	addli r17, zero, 128
	loadli.w r14,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -300(r30)                # 4-byte Folded Reload
	loadli.w r13,  -308(r30)                # 4-byte Folded Reload
	.loc	1 303 7                         # parallel-rne.mlir:303:7
	beq r12, r27, .LBB0_156
.LBB0_184:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 338 7                         # parallel-rne.mlir:338:7
	bneq r12, r28, .LBB0_213
.LBB0_185:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 345 9                         # parallel-rne.mlir:345:9
	sub.s r2, r15, r18
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 338 7                         # parallel-rne.mlir:338:7
	storeli.w r2, -292(r30)                 # 4-byte Folded Spill
	addli r2, zero, 80
	xfence
	zext_int2long r[5:6], r2
	mfence { lm, sm, gm }
	j .LBB0_187
.LBB0_186:                              # %middle.block166
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 95
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	.loc	1 345 9 is_stmt 1               # parallel-rne.mlir:345:9
	setlt.ul r2, r[5:6], r[2:3]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_242
.LBB0_187:                              # %.preheader31
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_190 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[5:6], r2
	.loc	1 346 11 is_stmt 1              # parallel-rne.mlir:346:11
	loadli.w r2,  -292(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_202
# %bb.188:                              # %scalar.ph158.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_190
.LBB0_189:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 346 11                        # parallel-rne.mlir:346:11
	setlt.ul r5, r[2:3], r[20:21]
	.loc	1 368 13 is_stmt 1              # parallel-rne.mlir:368:13
	add.s r10, r15, r11
	.loc	1 346 11                        # parallel-rne.mlir:346:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	stores.w r16, 0(r10)
	.loc	1 346 11                        # parallel-rne.mlir:346:11
	beq r5, zero, .LBB0_186
.LBB0_190:                              # %scalar.ph158
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	add.ul r[10:11], r[2:3], r[6:7]
	lui r16, 523264
	lui r19, 523264
	slli r11, r10, 2
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.s r5, r1, r11
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	add.s r10, r18, r11
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	loads.w r5, 0(r5)
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	loads.w r22, 0(r10)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r5, r5, r23
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	beq r5, r24, .LBB0_192
# %bb.191:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_192:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	add.s r10, r4, r11
	loads.w r10, 0(r10)
	and r17, r10, r23
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	beq r17, zero, .LBB0_200
# %bb.193:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
	lui r22, 523264
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r5, zero, .LBB0_201
.LBB0_194:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	beq r17, r24, .LBB0_196
.LBB0_195:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
.LBB0_196:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	setlt.u r10, r24, r5
	lui r5, 523264
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r10, zero, .LBB0_198
# %bb.197:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r22, 0
.LBB0_198:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	setlt.u r10, r24, r17
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r10, zero, .LBB0_189
# %bb.199:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r5, 0
	j .LBB0_189
.LBB0_200:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	lui r22, 523264
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	beq r5, zero, .LBB0_194
.LBB0_201:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_190 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r17, r24, .LBB0_195
	j .LBB0_196
.LBB0_202:                              # %vector.body160.preheader
                                        #   in Loop: Header=BB0_187 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_204
.LBB0_203:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 346 11 is_stmt 1              # parallel-rne.mlir:346:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	add.s r11, r15, r11
	.loc	1 346 11                        # parallel-rne.mlir:346:11
	seteq.d r10, r[27:28], r[8:9]
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	stores.w r2, 12(r11)
	stores.w r5, 8(r11)
	stores.w r17, 4(r11)
	stores.w r3, 0(r11)
	.loc	1 346 11                        # parallel-rne.mlir:346:11
	bneq r10, zero, .LBB0_186
.LBB0_204:                              # %vector.body160
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	add.ul r[2:3], r[27:28], r[6:7]
	slli r11, r2, 2
	add.s r22, r4, r11
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	add.s r16, r1, r11
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	add.s r19, r18, r11
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	loads.w r2, 0(r22)
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	loads.w r3, 0(r16)
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	and r2, r2, r23
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r3, r3, r23
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	seteq r5, r2, r24
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	seteq r14, r2, zero
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	seteq r12, r3, zero
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	seteq r13, r3, r24
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	max.u r2, r2, r3
	setlt.u r2, r24, r2
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	and r3, r5, r12
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	and r5, r14, r13
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	or r3, r3, r5
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	or r5, r2, r3
	lui r2, 523264
	lui r3, 523264
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r5, zero, .LBB0_206
# %bb.205:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_206:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r5, 4(r22)
	loads.w r12, 4(r16)
	and r5, r5, r23
	and r12, r12, r23
	seteq r13, r5, r24
	seteq r10, r5, zero
	seteq r17, r12, r24
	seteq r14, r12, zero
	max.u r5, r5, r12
	setlt.u r5, r24, r5
	and r10, r10, r17
	and r12, r13, r14
	lui r17, 523264
	or r10, r12, r10
	or r5, r5, r10
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r5, zero, .LBB0_208
# %bb.207:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r19)
.LBB0_208:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r5, 8(r22)
	loads.w r10, 8(r16)
	and r5, r5, r23
	and r10, r10, r23
	seteq r12, r5, r24
	seteq r25, r5, zero
	seteq r13, r10, zero
	seteq r14, r10, r24
	max.u r5, r5, r10
	setlt.u r5, r24, r5
	and r10, r12, r13
	and r12, r25, r14
	or r10, r10, r12
	or r10, r5, r10
	lui r5, 523264
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r10, zero, .LBB0_210
# %bb.209:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r19)
.LBB0_210:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	loads.w r10, 12(r22)
	loads.w r12, 12(r16)
	and r10, r10, r23
	and r12, r12, r23
	seteq r13, r10, r24
	seteq r22, r10, zero
	seteq r14, r12, zero
	seteq r16, r12, r24
	max.u r10, r10, r12
	setlt.u r10, r24, r10
	and r12, r13, r14
	and r13, r22, r16
	or r12, r12, r13
	or r10, r10, r12
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	bneq r10, zero, .LBB0_203
# %bb.211:                              # %vector.body160
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r19)
	j .LBB0_203
.LBB0_212:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 303 7 is_stmt 1               # parallel-rne.mlir:303:7
	mfence { sm }
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r12
	addli r22, zero, 64
	addli r27, zero, 4
	addli r28, zero, 5
	addli r17, zero, 128
	loadli.w r14,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -300(r30)                # 4-byte Folded Reload
	loadli.w r13,  -308(r30)                # 4-byte Folded Reload
	.loc	1 338 7                         # parallel-rne.mlir:338:7
	beq r12, r28, .LBB0_185
.LBB0_213:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	addli r2, zero, 7
	beq r12, r2, .LBB0_243
.LBB0_214:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 6
	bneq r12, r2, .LBB0_271
# %bb.215:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 380 9                         # parallel-rne.mlir:380:9
	sub.s r2, r15, r18
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	storeli.w r2, -292(r30)                 # 4-byte Folded Spill
	addli r2, zero, 96
	xfence
	zext_int2long r[5:6], r2
	mfence { lm, sm, gm }
	j .LBB0_217
.LBB0_216:                              # %middle.block
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 111
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	.loc	1 380 9 is_stmt 1               # parallel-rne.mlir:380:9
	setlt.ul r2, r[5:6], r[2:3]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_270
.LBB0_217:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_234 Depth 3
                                        #       Child Loop BB0_220 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[5:6], r2
	.loc	1 381 11 is_stmt 1              # parallel-rne.mlir:381:11
	loadli.w r2,  -292(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_232
# %bb.218:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_220
.LBB0_219:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 381 11                        # parallel-rne.mlir:381:11
	setlt.ul r5, r[2:3], r[20:21]
	.loc	1 403 13 is_stmt 1              # parallel-rne.mlir:403:13
	add.s r10, r15, r11
	.loc	1 381 11                        # parallel-rne.mlir:381:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 403 13                        # parallel-rne.mlir:403:13
	stores.w r16, 0(r10)
	.loc	1 381 11                        # parallel-rne.mlir:381:11
	beq r5, zero, .LBB0_216
.LBB0_220:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_217 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	add.ul r[10:11], r[2:3], r[6:7]
	lui r16, 523264
	lui r19, 523264
	slli r11, r10, 2
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	add.s r5, r1, r11
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	add.s r10, r18, r11
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	loads.w r5, 0(r5)
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	loads.w r22, 0(r10)
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	and r5, r5, r23
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	beq r5, r24, .LBB0_222
# %bb.221:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_222:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	add.s r10, r4, r11
	loads.w r10, 0(r10)
	and r17, r10, r23
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	beq r17, zero, .LBB0_230
# %bb.223:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
	lui r22, 523264
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r5, zero, .LBB0_231
.LBB0_224:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	beq r17, r24, .LBB0_226
.LBB0_225:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
.LBB0_226:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	setlt.u r10, r24, r5
	lui r5, 523264
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r10, zero, .LBB0_228
# %bb.227:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r22, 0
.LBB0_228:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	setlt.u r10, r24, r17
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r10, zero, .LBB0_219
# %bb.229:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r5, 0
	j .LBB0_219
.LBB0_230:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	lui r22, 523264
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	beq r5, zero, .LBB0_224
.LBB0_231:                              # %scalar.ph
                                        #   in Loop: Header=BB0_220 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r17, r24, .LBB0_225
	j .LBB0_226
.LBB0_232:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_217 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_234
.LBB0_233:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 381 11 is_stmt 1              # parallel-rne.mlir:381:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 403 13                        # parallel-rne.mlir:403:13
	add.s r11, r15, r11
	.loc	1 381 11                        # parallel-rne.mlir:381:11
	seteq.d r10, r[27:28], r[8:9]
	.loc	1 403 13                        # parallel-rne.mlir:403:13
	stores.w r2, 12(r11)
	stores.w r5, 8(r11)
	stores.w r17, 4(r11)
	stores.w r3, 0(r11)
	.loc	1 381 11                        # parallel-rne.mlir:381:11
	bneq r10, zero, .LBB0_216
.LBB0_234:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_217 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	add.ul r[2:3], r[27:28], r[6:7]
	slli r11, r2, 2
	add.s r22, r4, r11
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	add.s r16, r1, r11
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	add.s r19, r18, r11
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	loads.w r2, 0(r22)
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	loads.w r3, 0(r16)
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	and r2, r2, r23
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	and r3, r3, r23
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	seteq r5, r2, r24
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	seteq r14, r2, zero
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	seteq r12, r3, zero
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	seteq r13, r3, r24
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	max.u r2, r2, r3
	setlt.u r2, r24, r2
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	and r3, r5, r12
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	and r5, r14, r13
	.loc	1 396 19                        # parallel-rne.mlir:396:19
	or r3, r3, r5
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	or r5, r2, r3
	lui r2, 523264
	lui r3, 523264
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r5, zero, .LBB0_236
# %bb.235:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_236:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r5, 4(r22)
	loads.w r12, 4(r16)
	and r5, r5, r23
	and r12, r12, r23
	seteq r13, r5, r24
	seteq r10, r5, zero
	seteq r17, r12, r24
	seteq r14, r12, zero
	max.u r5, r5, r12
	setlt.u r5, r24, r5
	and r10, r10, r17
	and r12, r13, r14
	lui r17, 523264
	or r10, r12, r10
	or r5, r5, r10
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r5, zero, .LBB0_238
# %bb.237:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r19)
.LBB0_238:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r5, 8(r22)
	loads.w r10, 8(r16)
	and r5, r5, r23
	and r10, r10, r23
	seteq r12, r5, r24
	seteq r25, r5, zero
	seteq r13, r10, zero
	seteq r14, r10, r24
	max.u r5, r5, r10
	setlt.u r5, r24, r5
	and r10, r12, r13
	and r12, r25, r14
	or r10, r10, r12
	or r10, r5, r10
	lui r5, 523264
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r10, zero, .LBB0_240
# %bb.239:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r19)
.LBB0_240:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	loads.w r10, 12(r22)
	loads.w r12, 12(r16)
	and r10, r10, r23
	and r12, r12, r23
	seteq r13, r10, r24
	seteq r22, r10, zero
	seteq r14, r12, zero
	seteq r16, r12, r24
	max.u r10, r10, r12
	setlt.u r10, r24, r10
	and r12, r13, r14
	and r13, r22, r16
	or r12, r12, r13
	or r10, r10, r12
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	bneq r10, zero, .LBB0_233
# %bb.241:                              # %vector.body
                                        #   in Loop: Header=BB0_234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r19)
	j .LBB0_233
.LBB0_242:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 338 7 is_stmt 1               # parallel-rne.mlir:338:7
	mfence { sm }
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r12
	addli r22, zero, 64
	addli r27, zero, 4
	addli r28, zero, 5
	addli r17, zero, 128
	loadli.w r14,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -300(r30)                # 4-byte Folded Reload
	loadli.w r13,  -308(r30)                # 4-byte Folded Reload
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	addli r2, zero, 7
	bneq r12, r2, .LBB0_214
.LBB0_243:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 415 9                         # parallel-rne.mlir:415:9
	sub.s r2, r15, r18
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 408 7                         # parallel-rne.mlir:408:7
	storeli.w r2, -292(r30)                 # 4-byte Folded Spill
	addli r2, zero, 112
	xfence
	zext_int2long r[5:6], r2
	mfence { lm, sm, gm }
	j .LBB0_245
.LBB0_244:                              # %middle.block151
                                        #   in Loop: Header=BB0_245 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	.loc	1 415 9 is_stmt 1               # parallel-rne.mlir:415:9
	setlt.ul r2, r[5:6], r[20:21]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_270
.LBB0_245:                              # %.preheader30
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_262 Depth 3
                                        #       Child Loop BB0_248 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[5:6], r2
	.loc	1 416 11 is_stmt 1              # parallel-rne.mlir:416:11
	loadli.w r2,  -292(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_260
# %bb.246:                              # %scalar.ph143.preheader
                                        #   in Loop: Header=BB0_245 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_248
.LBB0_247:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 416 11                        # parallel-rne.mlir:416:11
	setlt.ul r5, r[2:3], r[20:21]
	.loc	1 438 13 is_stmt 1              # parallel-rne.mlir:438:13
	add.s r10, r15, r11
	.loc	1 416 11                        # parallel-rne.mlir:416:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 438 13                        # parallel-rne.mlir:438:13
	stores.w r16, 0(r10)
	.loc	1 416 11                        # parallel-rne.mlir:416:11
	beq r5, zero, .LBB0_244
.LBB0_248:                              # %scalar.ph143
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	add.ul r[10:11], r[2:3], r[6:7]
	lui r16, 523264
	lui r19, 523264
	slli r11, r10, 2
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	add.s r5, r1, r11
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	add.s r10, r18, r11
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	loads.w r5, 0(r5)
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	loads.w r22, 0(r10)
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	and r5, r5, r23
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	beq r5, r24, .LBB0_250
# %bb.249:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_250:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_248 Depth=3
	add.s r10, r4, r11
	loads.w r10, 0(r10)
	and r17, r10, r23
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	beq r17, zero, .LBB0_258
# %bb.251:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
	lui r22, 523264
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	bneq r5, zero, .LBB0_259
.LBB0_252:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_248 Depth=3
	beq r17, r24, .LBB0_254
.LBB0_253:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
.LBB0_254:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_248 Depth=3
	setlt.u r10, r24, r5
	lui r5, 523264
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	bneq r10, zero, .LBB0_256
# %bb.255:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r22, 0
.LBB0_256:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_248 Depth=3
	setlt.u r10, r24, r17
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	bneq r10, zero, .LBB0_247
# %bb.257:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r5, 0
	j .LBB0_247
.LBB0_258:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_248 Depth=3
	lui r22, 523264
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	beq r5, zero, .LBB0_252
.LBB0_259:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_248 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	bneq r17, r24, .LBB0_253
	j .LBB0_254
.LBB0_260:                              # %vector.body145.preheader
                                        #   in Loop: Header=BB0_245 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_262
.LBB0_261:                              # %vector.body145
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 416 11 is_stmt 1              # parallel-rne.mlir:416:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 438 13                        # parallel-rne.mlir:438:13
	add.s r11, r15, r11
	.loc	1 416 11                        # parallel-rne.mlir:416:11
	seteq.d r10, r[27:28], r[8:9]
	.loc	1 438 13                        # parallel-rne.mlir:438:13
	stores.w r2, 12(r11)
	stores.w r5, 8(r11)
	stores.w r17, 4(r11)
	stores.w r3, 0(r11)
	.loc	1 416 11                        # parallel-rne.mlir:416:11
	bneq r10, zero, .LBB0_244
.LBB0_262:                              # %vector.body145
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	add.ul r[2:3], r[27:28], r[6:7]
	slli r11, r2, 2
	add.s r22, r4, r11
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	add.s r16, r1, r11
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	add.s r19, r18, r11
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	loads.w r2, 0(r22)
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	loads.w r3, 0(r16)
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	and r2, r2, r23
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	and r3, r3, r23
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	seteq r5, r2, r24
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	seteq r14, r2, zero
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	seteq r12, r3, zero
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	seteq r13, r3, r24
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	max.u r2, r2, r3
	setlt.u r2, r24, r2
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	and r3, r5, r12
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	and r5, r14, r13
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	or r3, r3, r5
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	or r5, r2, r3
	lui r2, 523264
	lui r3, 523264
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	bneq r5, zero, .LBB0_264
# %bb.263:                              # %vector.body145
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
.LBB0_264:                              # %vector.body145
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r5, 4(r22)
	loads.w r12, 4(r16)
	and r5, r5, r23
	and r12, r12, r23
	seteq r13, r5, r24
	seteq r10, r5, zero
	seteq r17, r12, r24
	seteq r14, r12, zero
	max.u r5, r5, r12
	setlt.u r5, r24, r5
	and r10, r10, r17
	and r12, r13, r14
	lui r17, 523264
	or r10, r12, r10
	or r5, r5, r10
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	bneq r5, zero, .LBB0_266
# %bb.265:                              # %vector.body145
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r19)
.LBB0_266:                              # %vector.body145
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r5, 8(r22)
	loads.w r10, 8(r16)
	and r5, r5, r23
	and r10, r10, r23
	seteq r12, r5, r24
	seteq r25, r5, zero
	seteq r13, r10, zero
	seteq r14, r10, r24
	max.u r5, r5, r10
	setlt.u r5, r24, r5
	and r10, r12, r13
	and r12, r25, r14
	or r10, r10, r12
	or r10, r5, r10
	lui r5, 523264
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	bneq r10, zero, .LBB0_268
# %bb.267:                              # %vector.body145
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r19)
.LBB0_268:                              # %vector.body145
                                        #   in Loop: Header=BB0_262 Depth=3
	loads.w r10, 12(r22)
	loads.w r12, 12(r16)
	and r10, r10, r23
	and r12, r12, r23
	seteq r13, r10, r24
	seteq r22, r10, zero
	seteq r14, r12, zero
	seteq r16, r12, r24
	max.u r10, r10, r12
	setlt.u r10, r24, r10
	and r12, r13, r14
	and r13, r22, r16
	or r12, r12, r13
	or r10, r10, r12
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	bneq r10, zero, .LBB0_261
# %bb.269:                              # %vector.body145
                                        #   in Loop: Header=BB0_262 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r19)
	j .LBB0_261
.LBB0_270:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	mfence { sm }
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r12
	addli r22, zero, 64
	addli r27, zero, 4
	addli r28, zero, 5
	addli r17, zero, 128
	loadli.w r14,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -300(r30)                # 4-byte Folded Reload
	loadli.w r13,  -308(r30)                # 4-byte Folded Reload
.LBB0_271:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 443 7                         # parallel-rne.mlir:443:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 444 7                         # parallel-rne.mlir:444:7
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.272:                              # %.critedge8
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r25, zero, 2
	.loc	1 455 7 is_stmt 1               # parallel-rne.mlir:455:7
	bneq r12, zero, .LBB0_7
# %bb.273:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -364(r30)                 # 4-byte Folded Reload
	addli r3, zero, 384
	.loc	1 455 7                         # parallel-rne.mlir:455:7
	load.d r[6:7], -360(r30)                # 8-byte Folded Reload
	addli r5, zero, 19
	load.d r[10:11], 24(r30)
	zext_int2long r[3:4], r3
	sext_int2long r[1:2], r1
	sll.d r[5:6], r[6:7], r5
	addli r7, zero, 12
	min.sl r[3:4], r[1:2], r[3:4]
	xwait r7, 0
	add.ul r[5:6], r[10:11], r[5:6]
	addli.d r[3:4], r[3:4], 128
	max.sl r[3:4], r[3:4], r[1:2]
	sub.sl r[1:2], r[3:4], r[1:2]
	load.d r[3:4], -352(r30)                # 8-byte Folded Reload
	lock zero, r28
	dma_cfg zero, zero, zero, 0
	.loc	1 451 13 is_stmt 1              # parallel-rne.mlir:451:13
	min.sl r[1:2], r[1:2], r[8:9]
	.loc	1 455 7                         # parallel-rne.mlir:455:7
	add.ul r[3:4], r[5:6], r[3:4]
	addli r5, zero, 1
	dma_cfg zero, r5, zero, 1
	load.d r[5:6], -376(r30)                # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r5, r5, 2
	dma_cfg r3, r15, r5, 3
	addli r3, zero, 512
	addli r4, zero, 4096
	dma_cfg r4, r3, r1, 4
	addli r1, zero, 13
	dma_run zero
	unlock r28
	j .LBB0_6
.LBB0_274:                              # %._crit_edge
	.loc	1 457 5                         # parallel-rne.mlir:457:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_276
# %bb.275:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 457 5                         # parallel-rne.mlir:457:5
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
	.loc	1 458 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:458:5
	addli sp, sp, 408
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
	.long	472                             # 0x1d8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/triton-p800-ops-5134b460d69771aa/division-kuwb_urp" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
