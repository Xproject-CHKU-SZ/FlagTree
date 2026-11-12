	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-0gtlrt9i" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -480
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r12
	addli r30, sp, 416
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
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
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -24(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -48(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -72(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -96(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -116(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -280(r30)
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
	storeli.w r3, -20(r30)
	storeli.w r3, -16(r30)
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	storeli.w r3, -36(r30)
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	storeli.w r3, -60(r30)
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	storeli.w r3, -80(r30)
	storeli.w r3, -76(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r3, -112(r30)
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r6
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r2, r2, r4
	.loc	1 52 5                          # parallel-rne.mlir:52:5
	ble.s r2, r1, .LBB0_273
# %bb.4:                                # %.lr.ph
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	sext_int2long r[2:3], r2
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[4:5], r1
	lui r1, 31
	loadli.w r14,  -116(r30)
	loadli.w r23,  -280(r30)
	addli r9, zero, 0
	addli r13, zero, 0
	addli r28, zero, 128
	addli r16, zero, 5
	addli r26, zero, 4
	addli r11, zero, 2
	addli r22, zero, 24
	addli r20, zero, 64
	lui r25, 522240
	addli r19, zero, 0
	store.d r[2:3], -392(r30)               # 8-byte Folded Spill
	loadli.w r2,  -24(r30)
	storeli.w r2, -312(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -48(r30)
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -72(r30)
	storeli.w r2, -320(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -96(r30)
	storeli.w r2, -324(r30)                 # 4-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1047552
	store.d r[1:2], -400(r30)               # 8-byte Folded Spill
	lui r1, 224
	lui r2, 304
	ori r1, r1, 2560
	storeli.w r1, -404(r30)                 # 4-byte Folded Spill
	lui r1, 40
	ori r1, r1, 2114
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2560
	lui r2, 1023
	storeli.w r1, -408(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r24, r1, 4095
	ori r1, r2, 4095
	storeli.w r1, -296(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 442 7                         # parallel-rne.mlir:442:7
	addli r1, zero, 12
	addli r26, zero, 4
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
	loadli.w r9,  -332(r30)                 # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[4:5], -344(r30)                # 8-byte Folded Reload
	.loc	1 52 5 is_stmt 1                # parallel-rne.mlir:52:5
	load.d r[1:2], -392(r30)                # 8-byte Folded Reload
	addli.d r[4:5], r[4:5], 1
	setlt.sl r1, r[4:5], r[1:2]
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
	beq r1, zero, .LBB0_273
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_76 Depth 2
                                        #       Child Loop BB0_93 Depth 3
                                        #       Child Loop BB0_79 Depth 3
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #     Child Loop BB0_132 Depth 2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_135 Depth 3
                                        #     Child Loop BB0_160 Depth 2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_163 Depth 3
                                        #     Child Loop BB0_188 Depth 2
                                        #       Child Loop BB0_205 Depth 3
                                        #       Child Loop BB0_191 Depth 3
                                        #     Child Loop BB0_216 Depth 2
                                        #       Child Loop BB0_233 Depth 3
                                        #       Child Loop BB0_219 Depth 3
                                        #     Child Loop BB0_49 Depth 2
                                        #       Child Loop BB0_66 Depth 3
                                        #       Child Loop BB0_52 Depth 3
                                        #     Child Loop BB0_244 Depth 2
                                        #       Child Loop BB0_261 Depth 3
                                        #       Child Loop BB0_247 Depth 3
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	bneq r12, r26, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 13
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r1,  48(r30)
	loadli.w r2,  44(r30)
	store.d r[4:5], -344(r30)               # 8-byte Folded Spill
	addli r6, zero, 16
	addli r7, zero, 8
	addli r3, zero, 0
	addli r10, zero, 0
	div.s r1, r4, r1
	mod.s r5, r9, r16
	addli r9, r9, 1
	storeli.w r9, -332(r30)                 # 4-byte Folded Spill
	div.s r1, r1, r2
	slli r15, r5, 16
	div.s r2, r1, r28
	slli r4, r2, 3
	slli r2, r2, 7
	sub.s r6, r6, r4
	sub.s r2, r1, r2
	min.s r6, r6, r7
	mod.s r1, r1, r6
	div.s r2, r2, r6
	add.s r1, r4, r1
	slli r4, r2, 7
	zext_int2long r[5:6], r2
	slli r2, r1, 7
	zext_int2long r[7:8], r1
	addli r1, zero, 18
	storeli.w r4, -292(r30)                 # 4-byte Folded Spill
	storeli.w r2, -364(r30)                 # 4-byte Folded Spill
	addli r2, zero, 7
	store.d r[7:8], -360(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[7:8], r1
	sll.d r[5:6], r[5:6], r2
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	load.d r[1:2], 8(r30)
	sll.d r[4:5], r[5:6], r11
	add.ul r[1:2], r[1:2], r[4:5]
	store.d r[4:5], -352(r30)               # 8-byte Folded Spill
	addli r4, zero, 32
	store.d r[1:2], -288(r30)               # 8-byte Folded Spill
	load.d r[1:2], -400(r30)                # 8-byte Folded Reload
	and.d r[17:18], r[7:8], r[1:2]
	j .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 2048
	.loc	1 87 15 is_stmt 1               # parallel-rne.mlir:87:15
	sub.sl r[21:22], r[19:20], r[21:22]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	load.d r[4:5], 0(r30)
	sll.d r[19:20], r[19:20], r11
	zext_int2long r[26:27], r1
	addli r1, zero, 1920
	add.ul r[19:20], r[4:5], r[19:20]
	addli r4, zero, 256
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	div.sl r[21:22], r[21:22], r[26:27]
	zext_int2long r[26:27], r1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r1, zero, 3
	xwait r1, 0
	addli r1, zero, 4
	lock zero, r1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r20, zero, 2
	dma_cfg r2, r19, r4, 3
	addli r2, zero, 8192
	addli r20, zero, 64
	addli r19, r6, 0
	.loc	1 90 15                         # parallel-rne.mlir:90:15
	min.sl r[26:27], r[21:22], r[26:27]
	.loc	1 91 15                         # parallel-rne.mlir:91:15
	sub.sl r[21:22], r[26:27], r[21:22]
	addli r26, zero, 4
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r1, r21, 128
	addli r22, zero, 24
	dma_cfg r4, r2, r1, 4
	dma_run zero
	unlock r26
	xsignal r11, 0
	addli r4, zero, 32
.LBB0_11:                               # %.thread25
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r23, r23, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r3, r3, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r14, r14, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	beq r3, r4, .LBB0_28
.LBB0_12:                               # %.backedge
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r10, r10, 1
.LBB0_13:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r1, r19, r26
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	mod.s r2, r13, r22
	addli r13, r13, 1
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r19, r19, 1
	slli r5, r1, 15
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r1, r2, 15
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	lui r2, 80
	add.s r2, r5, r2
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	beq r12, r11, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, r19, 0
	zext_int2long r[19:20], r3
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r5, zero, 1
	bneq r12, r5, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 80 15 is_stmt 1               # parallel-rne.mlir:80:15
	addli r1, zero, 6
	sll.d r[19:20], r[19:20], r1
	loadli.w r1,  -296(r30)                 # 4-byte Folded Reload
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	add.ul r[19:20], r[19:20], r[7:8]
	zext_int2long r[21:22], r1
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	setlt.ul r1, r[21:22], r[19:20]
	addli.d r[21:22], r[17:18], 0
	.loc	1 87 15                         # parallel-rne.mlir:87:15
	bneq r1, zero, .LBB0_10
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[21:22], zero
	j .LBB0_10
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	xwait r11, 0
	xwait r16, 0
	lock zero, zero
	ds_cfg r11, zero, 0
	ds_cfg r20, zero, 1
	ds_cfg r20, zero, 14
	ds_cfg r28, zero, 13
	shuffle_batch r1, r2, r20, 1
	addli r1, zero, 3
	unlock zero
	xsignal r1, 0
	xsignal r26, 0
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r5, zero, 40
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r2, r14, r26
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r5, r23, r5
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r11, r2, 15
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r2, r5, 15
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	lui r5, 112
	add.s r5, r11, r5
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r11, zero, 7
	beq r12, r11, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 6
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	bneq r12, r11, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 19
	addli r11, zero, 7
	sll.d r[1:2], r[19:20], r1
	xwait r11, 0
	addli.d r[20:21], r[7:8], 0
	addli.d r[7:8], r[17:18], 0
	load.d r[17:18], -288(r30)              # 8-byte Folded Reload
	lock zero, r26
	addli r11, zero, 512
	addli r19, zero, 6
	dma_cfg zero, zero, zero, 0
	add.ul r[1:2], r[17:18], r[1:2]
	addli.d r[17:18], r[7:8], 0
	addli.d r[7:8], r[20:21], 0
	addli r20, zero, 64
	dma_cfg zero, r2, zero, 2
	dma_cfg r5, r1, r11, 3
	addli r1, zero, 8192
	dma_cfg r11, r1, r20, 4
	dma_run zero
	unlock r26
	xsignal r19, 0
	addli r11, zero, 2
	addli r19, r6, 0
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=2
	addli r1, zero, 6
	addli r11, zero, 2
	addli r20, zero, 64
	addli r19, r6, 0
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	lock zero, zero
	addli r1, zero, 7
	ds_cfg r11, zero, 0
	ds_cfg r28, zero, 1
	ds_cfg r20, zero, 14
	ds_cfg r28, zero, 13
	shuffle_coa r2, r5, r20, 2
	unlock zero
	xsignal r1, 0
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_11
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	bneq r12, r26, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_13 Depth=2
	addli r5, zero, 8
	xwait r26, 0
	addli r20, zero, 64
	addli r11, zero, 1
	addli r16, zero, 0
	xwait r5, 0
	addli r5, zero, 1
	beq r10, zero, .LBB0_25
.LBB0_24:                               # %.preheader38
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r19, r16, 14
	slli r16, r16, 8
	lock zero, r5
	mm_cfg r20, r20, r28, 0
	or r19, r19, r2
	or r16, r16, r15
	mm_cfg r26, r26, r5, 2
	mm_acc r16, r1, r19, 8
	andi r19, r11, 1
	addli r16, zero, 1
	addli r11, zero, 0
	unlock r5
	bneq r19, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader37
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r19, r16, 14
	slli r16, r16, 8
	lock zero, r5
	mm_cfg r20, r20, r28, 0
	or r19, r19, r2
	or r16, r16, r15
	mm_cfg r26, r26, r5, 2
	mm r16, r1, r19, 8
	andi r19, r11, 1
	addli r16, zero, 1
	addli r11, zero, 0
	unlock r5
	bneq r19, zero, .LBB0_25
.LBB0_26:                               # %.thread25.thread99
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r16, zero, 5
	.loc	1 112 15 is_stmt 1              # parallel-rne.mlir:112:15
	addli r23, r23, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r3, r3, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r14, r14, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	addli r1, zero, 9
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r12
	addli r11, zero, 2
	addli r19, r6, 0
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	xsignal r16, 0
	xsignal r1, 0
	bneq r3, r4, .LBB0_12
	j .LBB0_29
.LBB0_27:                               # %.thread25.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r23, r23, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r3, r3, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r14, r14, 1
	addli r11, zero, 2
	addli r20, zero, 64
	addli r19, r6, 0
	bneq r3, r4, .LBB0_12
	j .LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	bneq r12, r26, .LBB0_30
.LBB0_29:                               # %.thread101
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_30:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 1920
	.loc	1 139 13 is_stmt 1              # parallel-rne.mlir:139:13
	loadli.w r5,  -324(r30)                 # 4-byte Folded Reload
	zext_int2long r[3:4], r1
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	mod.s r5, r5, r16
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	zext_int2long r[1:2], r1
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	min.ul r[3:4], r[1:2], r[3:4]
	addli.d r[3:4], r[3:4], 128
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	slli r5, r5, 9
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	max.ul r[6:7], r[3:4], r[1:2]
	zext_int2long r[3:4], r28
	sub.sl r[1:2], r[6:7], r[1:2]
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	min.ul r[9:10], r[1:2], r[3:4]
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	lui r1, 144
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	addli r2, zero, 1
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	add.s r1, r5, r1
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	bneq r12, r2, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[5:6], 16(r30)
	load.d r[7:8], -352(r30)                # 8-byte Folded Reload
	addli r2, zero, 15
	xwait r2, 0
	lock zero, r26
	slli r2, r9, 2
	add.ul r[5:6], r[5:6], r[7:8]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r6, zero, 2
	dma_cfg r1, r5, r2, 3
	addli r2, zero, 1
	addli r5, zero, 512
	dma_cfg r5, r5, r2, 4
	addli r2, zero, 14
	dma_run zero
	unlock r26
	xsignal r2, 0
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	lui r8, 16
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	store.d r[9:10], -376(r30)              # 8-byte Folded Spill
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	mod.s r5, r2, r16
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	mod.s r6, r2, r16
	lui r2, 144
	ori r7, r2, 2560
	loadli.w r2,  -312(r30)                 # 4-byte Folded Reload
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	slli r5, r5, 16
	mod.s r2, r2, r16
	add.s r18, r5, r7
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	loadli.w r5,  -404(r30)                 # 4-byte Folded Reload
	slli r6, r6, 16
	add.s r26, r6, r5
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	bneq r12, r16, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 10
	addli r5, zero, 0
	xwait r6, 0
	addli r6, zero, 14
	xwait r6, 0
	addli r6, zero, 17
	xwait r6, 0
	lock zero, r11
	lui r6, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r6, r6, zero, 0
	addli r6, zero, 127
	ew_cfg zero, r6, zero, 2
	addli r6, zero, 1
	ew_cfg r6, zero, zero, 3
.LBB0_34:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r26, r5
	add.s r7, r15, r5
	addli r5, r5, 512
	dsmadd r6, r7, r1, 0
	bneq r5, r8, .LBB0_34
# %bb.35:                               # %.thread29
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	storeli.w zero, -328(r30)               # 4-byte Folded Spill
	addli r7, zero, 4095
	addli r5, zero, 4
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r6, zero, 1
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	unlock r11
	xsignal r1, 0
	addli r1, zero, 15
	xsignal r1, 0
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r11
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r7, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, zero, 19
	ew_cfg r11, zero, zero, 10
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	ew_cfg r11, r6, r1, 11
	lui r1, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r5, r1, 14
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	slli r1, r2, 16
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	ew_cfg zero, zero, zero, 15
	sslut r18, r26, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r11
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	add.s r8, r1, r2
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	addli r1, zero, 21
	xwait r1, 0
	lock zero, r11
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r1, 0
	addli r1, zero, 16
	ew_cfg zero, r7, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	dsmul r8, r26, r18, 0
	ew_cfg zero, zero, zero, 19
	unlock r11
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
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	add.s r8, r1, r2
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	addli r1, zero, 3
	bneq r12, r1, .LBB0_38
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
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	addli r1, zero, 20
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -328(r30)               # 4-byte Folded Spill
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
	storeli.w r14, -300(r30)                # 4-byte Folded Spill
	storeli.w r23, -304(r30)                # 4-byte Folded Spill
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	storeli.w r19, -308(r30)                # 4-byte Folded Spill
	zext_int2long r[9:10], r1
	beq r12, zero, .LBB0_74
# %bb.40:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 196 7                         # parallel-rne.mlir:196:7
	addli r1, zero, 1
	beq r12, r1, .LBB0_102
.LBB0_41:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 231 7                         # parallel-rne.mlir:231:7
	beq r12, r11, .LBB0_130
.LBB0_42:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_158
.LBB0_43:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 301 7                         # parallel-rne.mlir:301:7
	addli r1, zero, 4
	beq r12, r1, .LBB0_186
.LBB0_44:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 336 7                         # parallel-rne.mlir:336:7
	beq r12, r16, .LBB0_214
.LBB0_45:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r1, zero, 7
	beq r12, r1, .LBB0_242
.LBB0_46:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 6
	bneq r12, r1, .LBB0_270
# %bb.47:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 378 9                         # parallel-rne.mlir:378:9
	sub.s r1, r15, r8
	addli r2, zero, 16
	addli r28, r13, 0
	setlt.u r1, r1, r2
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
	addli r1, zero, 96
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_49
.LBB0_48:                               # %middle.block
                                        #   in Loop: Header=BB0_49 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 111
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 378 9 is_stmt 1               # parallel-rne.mlir:378:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_269
.LBB0_49:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_66 Depth 3
                                        #       Child Loop BB0_52 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[16:17], r[5:6], r1
	.loc	1 379 11 is_stmt 1              # parallel-rne.mlir:379:11
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_64
# %bb.50:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_49 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_52
.LBB0_51:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	setlt.ul r5, r[1:2], r[9:10]
	.loc	1 401 13 is_stmt 1              # parallel-rne.mlir:401:13
	add.s r6, r15, r7
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 401 13                        # parallel-rne.mlir:401:13
	stores.w r11, 0(r6)
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	beq r5, zero, .LBB0_48
.LBB0_52:                               # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	add.ul r[5:6], r[1:2], r[16:17]
	lui r11, 523264
	lui r20, 523264
	slli r7, r5, 2
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	add.s r5, r18, r7
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	add.s r6, r8, r7
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	loads.w r5, 0(r5)
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	loads.w r21, 0(r6)
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	and r5, r5, r24
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	beq r5, r25, .LBB0_54
# %bb.53:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_54:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	add.s r6, r26, r7
	loads.w r6, 0(r6)
	and r19, r6, r24
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r19, zero, .LBB0_62
# %bb.55:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r5, zero, .LBB0_63
.LBB0_56:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	beq r19, r25, .LBB0_58
.LBB0_57:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_58:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	setlt.u r6, r25, r5
	lui r5, 523264
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r6, zero, .LBB0_60
# %bb.59:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r21, 0
.LBB0_60:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	setlt.u r6, r25, r19
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r6, zero, .LBB0_51
# %bb.61:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	j .LBB0_51
.LBB0_62:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	beq r5, zero, .LBB0_56
.LBB0_63:                               # %scalar.ph
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r19, r25, .LBB0_57
	j .LBB0_58
.LBB0_64:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_49 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_66
.LBB0_65:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 379 11 is_stmt 1              # parallel-rne.mlir:379:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 401 13                        # parallel-rne.mlir:401:13
	add.s r7, r15, r7
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	seteq.d r6, r[1:2], r[3:4]
	.loc	1 401 13                        # parallel-rne.mlir:401:13
	stores.w r11, 12(r7)
	stores.w r5, 8(r7)
	stores.w r21, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 379 11                        # parallel-rne.mlir:379:11
	bneq r6, zero, .LBB0_48
.LBB0_66:                               # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	add.ul r[11:12], r[1:2], r[16:17]
	slli r7, r11, 2
	add.s r23, r26, r7
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	add.s r19, r18, r7
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	add.s r22, r8, r7
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	loads.w r5, 0(r23)
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	loads.w r11, 0(r19)
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	and r5, r5, r24
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	and r11, r11, r24
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	seteq r12, r5, r25
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	seteq r20, r5, zero
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	seteq r13, r11, zero
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	seteq r14, r11, r25
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	max.u r5, r5, r11
	setlt.u r5, r25, r5
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	and r11, r12, r13
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	and r12, r20, r14
	lui r20, 523264
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	or r11, r11, r12
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	or r5, r5, r11
	lui r11, 523264
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r5, zero, .LBB0_68
# %bb.67:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r20, 0(r22)
.LBB0_68:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	loads.w r5, 4(r23)
	loads.w r12, 4(r19)
	and r5, r5, r24
	and r12, r12, r24
	seteq r13, r5, r25
	seteq r6, r5, zero
	seteq r21, r12, r25
	seteq r14, r12, zero
	max.u r5, r5, r12
	setlt.u r5, r25, r5
	and r6, r6, r21
	and r12, r13, r14
	lui r21, 523264
	or r6, r12, r6
	or r5, r5, r6
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r5, zero, .LBB0_70
# %bb.69:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r22)
.LBB0_70:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	loads.w r5, 8(r23)
	loads.w r6, 8(r19)
	and r5, r5, r24
	and r6, r6, r24
	seteq r12, r5, r25
	seteq r27, r5, zero
	seteq r13, r6, zero
	seteq r14, r6, r25
	max.u r5, r5, r6
	setlt.u r5, r25, r5
	and r6, r12, r13
	and r12, r27, r14
	or r6, r6, r12
	or r6, r5, r6
	lui r5, 523264
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r6, zero, .LBB0_72
# %bb.71:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r22)
.LBB0_72:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	loads.w r6, 12(r23)
	loads.w r12, 12(r19)
	and r6, r6, r24
	and r12, r12, r24
	seteq r13, r6, r25
	seteq r23, r6, zero
	seteq r14, r12, zero
	seteq r19, r12, r25
	max.u r6, r6, r12
	setlt.u r6, r25, r6
	and r12, r13, r14
	and r13, r23, r19
	or r12, r12, r13
	or r6, r6, r12
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	bneq r6, zero, .LBB0_65
# %bb.73:                               # %vector.body
                                        #   in Loop: Header=BB0_66 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r22)
	j .LBB0_65
.LBB0_74:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 168 9 is_stmt 1               # parallel-rne.mlir:168:9
	sub.s r1, r15, r8
	addli r2, zero, 16
	addli r28, r13, 0
	zext_int2long r[5:6], zero
	setlt.u r1, r1, r2
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_76
.LBB0_75:                               # %middle.block241
                                        #   in Loop: Header=BB0_76 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 168 9 is_stmt 1               # parallel-rne.mlir:168:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_101
.LBB0_76:                               # %.preheader36
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_93 Depth 3
                                        #       Child Loop BB0_79 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[16:17], r[5:6], r1
	.loc	1 169 11 is_stmt 1              # parallel-rne.mlir:169:11
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_91
# %bb.77:                               # %scalar.ph233.preheader
                                        #   in Loop: Header=BB0_76 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_79
.LBB0_78:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	setlt.ul r5, r[1:2], r[9:10]
	.loc	1 191 13 is_stmt 1              # parallel-rne.mlir:191:13
	add.s r6, r15, r7
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	stores.w r11, 0(r6)
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	beq r5, zero, .LBB0_75
.LBB0_79:                               # %scalar.ph233
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	add.ul r[5:6], r[1:2], r[16:17]
	lui r11, 523264
	lui r20, 523264
	slli r7, r5, 2
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	add.s r5, r18, r7
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.s r6, r8, r7
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	loads.w r5, 0(r5)
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	loads.w r21, 0(r6)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r5, r5, r24
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	beq r5, r25, .LBB0_81
# %bb.80:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_81:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	add.s r6, r26, r7
	loads.w r6, 0(r6)
	and r19, r6, r24
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r19, zero, .LBB0_89
# %bb.82:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r5, zero, .LBB0_90
.LBB0_83:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	beq r19, r25, .LBB0_85
.LBB0_84:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_85:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	setlt.u r6, r25, r5
	lui r5, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r6, zero, .LBB0_87
# %bb.86:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r21, 0
.LBB0_87:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	setlt.u r6, r25, r19
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r6, zero, .LBB0_78
# %bb.88:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	j .LBB0_78
.LBB0_89:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	beq r5, zero, .LBB0_83
.LBB0_90:                               # %scalar.ph233
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r19, r25, .LBB0_84
	j .LBB0_85
.LBB0_91:                               # %vector.body235.preheader
                                        #   in Loop: Header=BB0_76 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_93
.LBB0_92:                               # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 169 11 is_stmt 1              # parallel-rne.mlir:169:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	add.s r7, r15, r7
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	seteq.d r6, r[1:2], r[3:4]
	.loc	1 191 13                        # parallel-rne.mlir:191:13
	stores.w r11, 12(r7)
	stores.w r5, 8(r7)
	stores.w r21, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	bneq r6, zero, .LBB0_75
.LBB0_93:                               # %vector.body235
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	add.ul r[19:20], r[1:2], r[16:17]
	slli r7, r19, 2
	add.s r23, r26, r7
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	add.s r22, r18, r7
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	loads.w r5, 0(r23)
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	loads.w r11, 0(r22)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r5, r5, r24
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r11, r11, r24
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	seteq r19, r5, r25
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	seteq r14, r5, zero
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	seteq r21, r11, r25
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	seteq r20, r11, zero
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	max.u r5, r5, r11
	setlt.u r5, r25, r5
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r11, r19, r20
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	and r14, r14, r21
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.s r19, r8, r7
	lui r20, 523264
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	or r11, r11, r14
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	or r5, r5, r11
	lui r11, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r5, zero, .LBB0_95
# %bb.94:                               # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r20, 0(r19)
.LBB0_95:                               # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	loads.w r5, 4(r23)
	loads.w r14, 4(r22)
	and r5, r5, r24
	and r14, r14, r24
	seteq r21, r5, r25
	seteq r6, r14, zero
	seteq r13, r5, zero
	seteq r12, r14, r25
	max.u r5, r5, r14
	setlt.u r5, r25, r5
	and r6, r21, r6
	and r12, r13, r12
	lui r21, 523264
	or r6, r6, r12
	or r5, r5, r6
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r5, zero, .LBB0_97
# %bb.96:                               # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r19)
.LBB0_97:                               # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	loads.w r5, 8(r23)
	loads.w r6, 8(r22)
	and r5, r5, r24
	and r6, r6, r24
	seteq r12, r5, r25
	seteq r27, r5, zero
	seteq r13, r6, zero
	seteq r14, r6, r25
	max.u r5, r5, r6
	setlt.u r5, r25, r5
	and r6, r12, r13
	and r12, r27, r14
	or r6, r6, r12
	or r6, r5, r6
	lui r5, 523264
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r6, zero, .LBB0_99
# %bb.98:                               # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r19)
.LBB0_99:                               # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	loads.w r6, 12(r23)
	loads.w r12, 12(r22)
	and r6, r6, r24
	and r12, r12, r24
	seteq r13, r6, r25
	seteq r23, r6, zero
	seteq r14, r12, zero
	seteq r22, r12, r25
	max.u r6, r6, r12
	setlt.u r6, r25, r6
	and r12, r13, r14
	and r13, r23, r22
	or r12, r12, r13
	or r6, r6, r12
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	bneq r6, zero, .LBB0_92
# %bb.100:                              # %vector.body235
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r19)
	j .LBB0_92
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 161 7 is_stmt 1               # parallel-rne.mlir:161:7
	mfence { sm }
	addli r13, r28, 0
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r12
	addli r28, zero, 128
	addli r16, zero, 5
	addli r11, zero, 2
	addli r22, zero, 24
	addli r20, zero, 64
	loadli.w r14,  -300(r30)                # 4-byte Folded Reload
	loadli.w r23,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -308(r30)                # 4-byte Folded Reload
	.loc	1 196 7                         # parallel-rne.mlir:196:7
	addli r1, zero, 1
	bneq r12, r1, .LBB0_41
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 203 9 is_stmt 1               # parallel-rne.mlir:203:9
	sub.s r1, r15, r8
	addli r28, r13, 0
	setlt.u r1, r1, r2
	zext_int2long r[5:6], r2
	.loc	1 196 7                         # parallel-rne.mlir:196:7
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_104
.LBB0_103:                              # %middle.block226
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 203 9 is_stmt 1               # parallel-rne.mlir:203:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_129
.LBB0_104:                              # %.preheader35
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[16:17], r[5:6], r1
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_119
# %bb.105:                              # %scalar.ph218.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_107
.LBB0_106:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	setlt.ul r5, r[1:2], r[9:10]
	.loc	1 226 13 is_stmt 1              # parallel-rne.mlir:226:13
	add.s r6, r15, r7
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 226 13                        # parallel-rne.mlir:226:13
	stores.w r11, 0(r6)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	beq r5, zero, .LBB0_103
.LBB0_107:                              # %scalar.ph218
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[5:6], r[1:2], r[16:17]
	lui r11, 523264
	lui r20, 523264
	slli r7, r5, 2
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	add.s r5, r18, r7
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.s r6, r8, r7
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	loads.w r5, 0(r5)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	loads.w r21, 0(r6)
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	and r5, r5, r24
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	beq r5, r25, .LBB0_109
# %bb.108:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_109:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	add.s r6, r26, r7
	loads.w r6, 0(r6)
	and r19, r6, r24
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r19, zero, .LBB0_117
# %bb.110:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r5, zero, .LBB0_118
.LBB0_111:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	beq r19, r25, .LBB0_113
.LBB0_112:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_113:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	setlt.u r6, r25, r5
	lui r5, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r6, zero, .LBB0_115
# %bb.114:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r21, 0
.LBB0_115:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	setlt.u r6, r25, r19
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r6, zero, .LBB0_106
# %bb.116:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	j .LBB0_106
.LBB0_117:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	beq r5, zero, .LBB0_111
.LBB0_118:                              # %scalar.ph218
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r19, r25, .LBB0_112
	j .LBB0_113
.LBB0_119:                              # %vector.body220.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_121
.LBB0_120:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 226 13                        # parallel-rne.mlir:226:13
	add.s r7, r15, r7
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	seteq.d r6, r[1:2], r[3:4]
	.loc	1 226 13                        # parallel-rne.mlir:226:13
	stores.w r11, 12(r7)
	stores.w r5, 8(r7)
	stores.w r21, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	bneq r6, zero, .LBB0_103
.LBB0_121:                              # %vector.body220
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[11:12], r[1:2], r[16:17]
	slli r7, r11, 2
	add.s r23, r26, r7
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	add.s r19, r18, r7
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.s r22, r8, r7
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	loads.w r5, 0(r23)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	loads.w r11, 0(r19)
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	and r5, r5, r24
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	and r11, r11, r24
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	seteq r12, r5, r25
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	seteq r20, r5, zero
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	seteq r13, r11, zero
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	seteq r14, r11, r25
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	max.u r5, r5, r11
	setlt.u r5, r25, r5
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	and r11, r12, r13
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r12, r20, r14
	lui r20, 523264
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	or r11, r11, r12
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	or r5, r5, r11
	lui r11, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r5, zero, .LBB0_123
# %bb.122:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r20, 0(r22)
.LBB0_123:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	loads.w r5, 4(r23)
	loads.w r12, 4(r19)
	and r5, r5, r24
	and r12, r12, r24
	seteq r13, r5, r25
	seteq r6, r5, zero
	seteq r21, r12, r25
	seteq r14, r12, zero
	max.u r5, r5, r12
	setlt.u r5, r25, r5
	and r6, r6, r21
	and r12, r13, r14
	lui r21, 523264
	or r6, r12, r6
	or r5, r5, r6
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r5, zero, .LBB0_125
# %bb.124:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r22)
.LBB0_125:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	loads.w r5, 8(r23)
	loads.w r6, 8(r19)
	and r5, r5, r24
	and r6, r6, r24
	seteq r12, r5, r25
	seteq r27, r5, zero
	seteq r13, r6, zero
	seteq r14, r6, r25
	max.u r5, r5, r6
	setlt.u r5, r25, r5
	and r6, r12, r13
	and r12, r27, r14
	or r6, r6, r12
	or r6, r5, r6
	lui r5, 523264
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r6, zero, .LBB0_127
# %bb.126:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r22)
.LBB0_127:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	loads.w r6, 12(r23)
	loads.w r12, 12(r19)
	and r6, r6, r24
	and r12, r12, r24
	seteq r13, r6, r25
	seteq r23, r6, zero
	seteq r14, r12, zero
	seteq r19, r12, r25
	max.u r6, r6, r12
	setlt.u r6, r25, r6
	and r12, r13, r14
	and r13, r23, r19
	or r12, r12, r13
	or r6, r6, r12
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	bneq r6, zero, .LBB0_120
# %bb.128:                              # %vector.body220
                                        #   in Loop: Header=BB0_121 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r22)
	j .LBB0_120
.LBB0_129:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 196 7 is_stmt 1               # parallel-rne.mlir:196:7
	mfence { sm }
	addli r13, r28, 0
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r12
	addli r28, zero, 128
	addli r16, zero, 5
	addli r11, zero, 2
	addli r22, zero, 24
	addli r20, zero, 64
	loadli.w r14,  -300(r30)                # 4-byte Folded Reload
	loadli.w r23,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -308(r30)                # 4-byte Folded Reload
	.loc	1 231 7                         # parallel-rne.mlir:231:7
	bneq r12, r11, .LBB0_42
.LBB0_130:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 238 9                         # parallel-rne.mlir:238:9
	sub.s r1, r15, r8
	addli r2, zero, 16
	addli r28, r13, 0
	setlt.u r1, r1, r2
	.loc	1 231 7                         # parallel-rne.mlir:231:7
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
	addli r1, zero, 32
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_132
.LBB0_131:                              # %middle.block211
                                        #   in Loop: Header=BB0_132 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 238 9 is_stmt 1               # parallel-rne.mlir:238:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_157
.LBB0_132:                              # %.preheader34
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_135 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[16:17], r[5:6], r1
	.loc	1 239 11 is_stmt 1              # parallel-rne.mlir:239:11
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_147
# %bb.133:                              # %scalar.ph203.preheader
                                        #   in Loop: Header=BB0_132 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_135
.LBB0_134:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	setlt.ul r5, r[1:2], r[9:10]
	.loc	1 261 13 is_stmt 1              # parallel-rne.mlir:261:13
	add.s r6, r15, r7
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	stores.w r11, 0(r6)
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	beq r5, zero, .LBB0_131
.LBB0_135:                              # %scalar.ph203
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_132 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	add.ul r[5:6], r[1:2], r[16:17]
	lui r11, 523264
	lui r20, 523264
	slli r7, r5, 2
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	add.s r5, r18, r7
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	add.s r6, r8, r7
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	loads.w r5, 0(r5)
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	loads.w r21, 0(r6)
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	and r5, r5, r24
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r5, r25, .LBB0_137
# %bb.136:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_137:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	add.s r6, r26, r7
	loads.w r6, 0(r6)
	and r19, r6, r24
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r19, zero, .LBB0_145
# %bb.138:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r5, zero, .LBB0_146
.LBB0_139:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	beq r19, r25, .LBB0_141
.LBB0_140:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_141:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	setlt.u r6, r25, r5
	lui r5, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r6, zero, .LBB0_143
# %bb.142:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r21, 0
.LBB0_143:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	setlt.u r6, r25, r19
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r6, zero, .LBB0_134
# %bb.144:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	j .LBB0_134
.LBB0_145:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r5, zero, .LBB0_139
.LBB0_146:                              # %scalar.ph203
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r19, r25, .LBB0_140
	j .LBB0_141
.LBB0_147:                              # %vector.body205.preheader
                                        #   in Loop: Header=BB0_132 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_149
.LBB0_148:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 239 11 is_stmt 1              # parallel-rne.mlir:239:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	add.s r7, r15, r7
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	seteq.d r6, r[1:2], r[3:4]
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	stores.w r11, 12(r7)
	stores.w r5, 8(r7)
	stores.w r21, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 239 11                        # parallel-rne.mlir:239:11
	bneq r6, zero, .LBB0_131
.LBB0_149:                              # %vector.body205
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_132 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	add.ul r[11:12], r[1:2], r[16:17]
	slli r7, r11, 2
	add.s r23, r26, r7
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	add.s r19, r18, r7
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	add.s r22, r8, r7
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	loads.w r5, 0(r23)
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	loads.w r11, 0(r19)
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	and r5, r5, r24
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	and r11, r11, r24
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	seteq r12, r5, r25
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	seteq r20, r5, zero
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	seteq r13, r11, zero
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	seteq r14, r11, r25
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	max.u r5, r5, r11
	setlt.u r5, r25, r5
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	and r11, r12, r13
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	and r12, r20, r14
	lui r20, 523264
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	or r11, r11, r12
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	or r5, r5, r11
	lui r11, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r5, zero, .LBB0_151
# %bb.150:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r20, 0(r22)
.LBB0_151:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r5, 4(r23)
	loads.w r12, 4(r19)
	and r5, r5, r24
	and r12, r12, r24
	seteq r13, r5, r25
	seteq r6, r5, zero
	seteq r21, r12, r25
	seteq r14, r12, zero
	max.u r5, r5, r12
	setlt.u r5, r25, r5
	and r6, r6, r21
	and r12, r13, r14
	lui r21, 523264
	or r6, r12, r6
	or r5, r5, r6
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r5, zero, .LBB0_153
# %bb.152:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r22)
.LBB0_153:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r5, 8(r23)
	loads.w r6, 8(r19)
	and r5, r5, r24
	and r6, r6, r24
	seteq r12, r5, r25
	seteq r27, r5, zero
	seteq r13, r6, zero
	seteq r14, r6, r25
	max.u r5, r5, r6
	setlt.u r5, r25, r5
	and r6, r12, r13
	and r12, r27, r14
	or r6, r6, r12
	or r6, r5, r6
	lui r5, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r6, zero, .LBB0_155
# %bb.154:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r22)
.LBB0_155:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r6, 12(r23)
	loads.w r12, 12(r19)
	and r6, r6, r24
	and r12, r12, r24
	seteq r13, r6, r25
	seteq r23, r6, zero
	seteq r14, r12, zero
	seteq r19, r12, r25
	max.u r6, r6, r12
	setlt.u r6, r25, r6
	and r12, r13, r14
	and r13, r23, r19
	or r12, r12, r13
	or r6, r6, r12
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r6, zero, .LBB0_148
# %bb.156:                              # %vector.body205
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r22)
	j .LBB0_148
.LBB0_157:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 231 7 is_stmt 1               # parallel-rne.mlir:231:7
	mfence { sm }
	addli r13, r28, 0
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r12
	addli r28, zero, 128
	addli r16, zero, 5
	addli r11, zero, 2
	addli r22, zero, 24
	addli r20, zero, 64
	loadli.w r14,  -300(r30)                # 4-byte Folded Reload
	loadli.w r23,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -308(r30)                # 4-byte Folded Reload
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_43
.LBB0_158:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 273 9                         # parallel-rne.mlir:273:9
	sub.s r1, r15, r8
	addli r2, zero, 16
	addli r28, r13, 0
	setlt.u r1, r1, r2
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
	addli r1, zero, 48
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_160
.LBB0_159:                              # %middle.block196
                                        #   in Loop: Header=BB0_160 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 273 9 is_stmt 1               # parallel-rne.mlir:273:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_185
.LBB0_160:                              # %.preheader33
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_163 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[16:17], r[5:6], r1
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_175
# %bb.161:                              # %scalar.ph188.preheader
                                        #   in Loop: Header=BB0_160 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_163
.LBB0_162:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	setlt.ul r5, r[1:2], r[9:10]
	.loc	1 296 13 is_stmt 1              # parallel-rne.mlir:296:13
	add.s r6, r15, r7
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	stores.w r11, 0(r6)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	beq r5, zero, .LBB0_159
.LBB0_163:                              # %scalar.ph188
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_160 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[5:6], r[1:2], r[16:17]
	lui r11, 523264
	lui r20, 523264
	slli r7, r5, 2
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.s r5, r18, r7
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	add.s r6, r8, r7
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	loads.w r5, 0(r5)
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	loads.w r21, 0(r6)
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	and r5, r5, r24
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r5, r25, .LBB0_165
# %bb.164:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_165:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	add.s r6, r26, r7
	loads.w r6, 0(r6)
	and r19, r6, r24
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r19, zero, .LBB0_173
# %bb.166:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r5, zero, .LBB0_174
.LBB0_167:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	beq r19, r25, .LBB0_169
.LBB0_168:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_169:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	setlt.u r6, r25, r5
	lui r5, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r6, zero, .LBB0_171
# %bb.170:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r21, 0
.LBB0_171:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	setlt.u r6, r25, r19
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r6, zero, .LBB0_162
# %bb.172:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	j .LBB0_162
.LBB0_173:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r5, zero, .LBB0_167
.LBB0_174:                              # %scalar.ph188
                                        #   in Loop: Header=BB0_163 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r19, r25, .LBB0_168
	j .LBB0_169
.LBB0_175:                              # %vector.body190.preheader
                                        #   in Loop: Header=BB0_160 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_177
.LBB0_176:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 274 11 is_stmt 1              # parallel-rne.mlir:274:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	add.s r7, r15, r7
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	seteq.d r6, r[1:2], r[3:4]
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	stores.w r11, 12(r7)
	stores.w r5, 8(r7)
	stores.w r21, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 274 11                        # parallel-rne.mlir:274:11
	bneq r6, zero, .LBB0_159
.LBB0_177:                              # %vector.body190
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_160 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	add.ul r[11:12], r[1:2], r[16:17]
	slli r7, r11, 2
	add.s r23, r26, r7
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.s r19, r18, r7
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	add.s r22, r8, r7
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	loads.w r5, 0(r23)
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	loads.w r11, 0(r19)
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	and r5, r5, r24
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	and r11, r11, r24
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	seteq r12, r5, r25
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	seteq r20, r5, zero
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	seteq r13, r11, zero
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	seteq r14, r11, r25
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	max.u r5, r5, r11
	setlt.u r5, r25, r5
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	and r11, r12, r13
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r12, r20, r14
	lui r20, 523264
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	or r11, r11, r12
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	or r5, r5, r11
	lui r11, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r5, zero, .LBB0_179
# %bb.178:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r20, 0(r22)
.LBB0_179:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r5, 4(r23)
	loads.w r12, 4(r19)
	and r5, r5, r24
	and r12, r12, r24
	seteq r13, r5, r25
	seteq r6, r5, zero
	seteq r21, r12, r25
	seteq r14, r12, zero
	max.u r5, r5, r12
	setlt.u r5, r25, r5
	and r6, r6, r21
	and r12, r13, r14
	lui r21, 523264
	or r6, r12, r6
	or r5, r5, r6
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r5, zero, .LBB0_181
# %bb.180:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r22)
.LBB0_181:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r5, 8(r23)
	loads.w r6, 8(r19)
	and r5, r5, r24
	and r6, r6, r24
	seteq r12, r5, r25
	seteq r27, r5, zero
	seteq r13, r6, zero
	seteq r14, r6, r25
	max.u r5, r5, r6
	setlt.u r5, r25, r5
	and r6, r12, r13
	and r12, r27, r14
	or r6, r6, r12
	or r6, r5, r6
	lui r5, 523264
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r6, zero, .LBB0_183
# %bb.182:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r22)
.LBB0_183:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r6, 12(r23)
	loads.w r12, 12(r19)
	and r6, r6, r24
	and r12, r12, r24
	seteq r13, r6, r25
	seteq r23, r6, zero
	seteq r14, r12, zero
	seteq r19, r12, r25
	max.u r6, r6, r12
	setlt.u r6, r25, r6
	and r12, r13, r14
	and r13, r23, r19
	or r12, r12, r13
	or r6, r6, r12
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r6, zero, .LBB0_176
# %bb.184:                              # %vector.body190
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r22)
	j .LBB0_176
.LBB0_185:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 266 7 is_stmt 1               # parallel-rne.mlir:266:7
	mfence { sm }
	addli r13, r28, 0
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r12
	addli r28, zero, 128
	addli r16, zero, 5
	addli r11, zero, 2
	addli r22, zero, 24
	addli r20, zero, 64
	loadli.w r14,  -300(r30)                # 4-byte Folded Reload
	loadli.w r23,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -308(r30)                # 4-byte Folded Reload
	.loc	1 301 7                         # parallel-rne.mlir:301:7
	addli r1, zero, 4
	bneq r12, r1, .LBB0_44
.LBB0_186:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 308 9                         # parallel-rne.mlir:308:9
	sub.s r1, r15, r8
	addli r2, zero, 16
	addli r28, r13, 0
	zext_int2long r[5:6], r20
	setlt.u r1, r1, r2
	.loc	1 301 7                         # parallel-rne.mlir:301:7
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_188
.LBB0_187:                              # %middle.block181
                                        #   in Loop: Header=BB0_188 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 79
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 308 9 is_stmt 1               # parallel-rne.mlir:308:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_213
.LBB0_188:                              # %.preheader32
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_205 Depth 3
                                        #       Child Loop BB0_191 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[16:17], r[5:6], r1
	.loc	1 309 11 is_stmt 1              # parallel-rne.mlir:309:11
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_203
# %bb.189:                              # %scalar.ph173.preheader
                                        #   in Loop: Header=BB0_188 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_191
.LBB0_190:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	setlt.ul r5, r[1:2], r[9:10]
	.loc	1 331 13 is_stmt 1              # parallel-rne.mlir:331:13
	add.s r6, r15, r7
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 331 13                        # parallel-rne.mlir:331:13
	stores.w r11, 0(r6)
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	beq r5, zero, .LBB0_187
.LBB0_191:                              # %scalar.ph173
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_188 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	add.ul r[5:6], r[1:2], r[16:17]
	lui r11, 523264
	lui r20, 523264
	slli r7, r5, 2
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	add.s r5, r18, r7
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.s r6, r8, r7
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	loads.w r5, 0(r5)
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	loads.w r21, 0(r6)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r5, r5, r24
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	beq r5, r25, .LBB0_193
# %bb.192:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_193:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	add.s r6, r26, r7
	loads.w r6, 0(r6)
	and r19, r6, r24
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r19, zero, .LBB0_201
# %bb.194:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r5, zero, .LBB0_202
.LBB0_195:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	beq r19, r25, .LBB0_197
.LBB0_196:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_197:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	setlt.u r6, r25, r5
	lui r5, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r6, zero, .LBB0_199
# %bb.198:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r21, 0
.LBB0_199:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	setlt.u r6, r25, r19
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r6, zero, .LBB0_190
# %bb.200:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	j .LBB0_190
.LBB0_201:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	beq r5, zero, .LBB0_195
.LBB0_202:                              # %scalar.ph173
                                        #   in Loop: Header=BB0_191 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r19, r25, .LBB0_196
	j .LBB0_197
.LBB0_203:                              # %vector.body175.preheader
                                        #   in Loop: Header=BB0_188 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_205
.LBB0_204:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 309 11 is_stmt 1              # parallel-rne.mlir:309:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 331 13                        # parallel-rne.mlir:331:13
	add.s r7, r15, r7
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	seteq.d r6, r[1:2], r[3:4]
	.loc	1 331 13                        # parallel-rne.mlir:331:13
	stores.w r11, 12(r7)
	stores.w r5, 8(r7)
	stores.w r21, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	bneq r6, zero, .LBB0_187
.LBB0_205:                              # %vector.body175
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_188 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	add.ul r[11:12], r[1:2], r[16:17]
	slli r7, r11, 2
	add.s r23, r26, r7
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	add.s r19, r18, r7
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.s r22, r8, r7
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	loads.w r5, 0(r23)
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	loads.w r11, 0(r19)
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	and r5, r5, r24
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r11, r11, r24
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	seteq r12, r5, r25
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	seteq r20, r5, zero
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	seteq r13, r11, zero
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	seteq r14, r11, r25
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	max.u r5, r5, r11
	setlt.u r5, r25, r5
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	and r11, r12, r13
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r12, r20, r14
	lui r20, 523264
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	or r11, r11, r12
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	or r5, r5, r11
	lui r11, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r5, zero, .LBB0_207
# %bb.206:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r20, 0(r22)
.LBB0_207:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	loads.w r5, 4(r23)
	loads.w r12, 4(r19)
	and r5, r5, r24
	and r12, r12, r24
	seteq r13, r5, r25
	seteq r6, r5, zero
	seteq r21, r12, r25
	seteq r14, r12, zero
	max.u r5, r5, r12
	setlt.u r5, r25, r5
	and r6, r6, r21
	and r12, r13, r14
	lui r21, 523264
	or r6, r12, r6
	or r5, r5, r6
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r5, zero, .LBB0_209
# %bb.208:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r22)
.LBB0_209:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	loads.w r5, 8(r23)
	loads.w r6, 8(r19)
	and r5, r5, r24
	and r6, r6, r24
	seteq r12, r5, r25
	seteq r27, r5, zero
	seteq r13, r6, zero
	seteq r14, r6, r25
	max.u r5, r5, r6
	setlt.u r5, r25, r5
	and r6, r12, r13
	and r12, r27, r14
	or r6, r6, r12
	or r6, r5, r6
	lui r5, 523264
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r6, zero, .LBB0_211
# %bb.210:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r22)
.LBB0_211:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	loads.w r6, 12(r23)
	loads.w r12, 12(r19)
	and r6, r6, r24
	and r12, r12, r24
	seteq r13, r6, r25
	seteq r23, r6, zero
	seteq r14, r12, zero
	seteq r19, r12, r25
	max.u r6, r6, r12
	setlt.u r6, r25, r6
	and r12, r13, r14
	and r13, r23, r19
	or r12, r12, r13
	or r6, r6, r12
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	bneq r6, zero, .LBB0_204
# %bb.212:                              # %vector.body175
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r22)
	j .LBB0_204
.LBB0_213:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 301 7 is_stmt 1               # parallel-rne.mlir:301:7
	mfence { sm }
	addli r13, r28, 0
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r12
	addli r28, zero, 128
	addli r16, zero, 5
	addli r11, zero, 2
	addli r22, zero, 24
	addli r20, zero, 64
	loadli.w r14,  -300(r30)                # 4-byte Folded Reload
	loadli.w r23,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -308(r30)                # 4-byte Folded Reload
	.loc	1 336 7                         # parallel-rne.mlir:336:7
	bneq r12, r16, .LBB0_45
.LBB0_214:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 343 9                         # parallel-rne.mlir:343:9
	sub.s r1, r15, r8
	addli r2, zero, 16
	addli r28, r13, 0
	setlt.u r1, r1, r2
	.loc	1 336 7                         # parallel-rne.mlir:336:7
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
	addli r1, zero, 80
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_216
.LBB0_215:                              # %middle.block166
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 95
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 343 9 is_stmt 1               # parallel-rne.mlir:343:9
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_241
.LBB0_216:                              # %.preheader31
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_233 Depth 3
                                        #       Child Loop BB0_219 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[16:17], r[5:6], r1
	.loc	1 344 11 is_stmt 1              # parallel-rne.mlir:344:11
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_231
# %bb.217:                              # %scalar.ph158.preheader
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_219
.LBB0_218:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	setlt.ul r5, r[1:2], r[9:10]
	.loc	1 366 13 is_stmt 1              # parallel-rne.mlir:366:13
	add.s r6, r15, r7
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	stores.w r11, 0(r6)
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	beq r5, zero, .LBB0_215
.LBB0_219:                              # %scalar.ph158
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	add.ul r[5:6], r[1:2], r[16:17]
	lui r11, 523264
	lui r20, 523264
	slli r7, r5, 2
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	add.s r5, r18, r7
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	add.s r6, r8, r7
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	loads.w r5, 0(r5)
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	loads.w r21, 0(r6)
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r5, r5, r24
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r5, r25, .LBB0_221
# %bb.220:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_221:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	add.s r6, r26, r7
	loads.w r6, 0(r6)
	and r19, r6, r24
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r19, zero, .LBB0_229
# %bb.222:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r5, zero, .LBB0_230
.LBB0_223:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	beq r19, r25, .LBB0_225
.LBB0_224:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_225:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	setlt.u r6, r25, r5
	lui r5, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r6, zero, .LBB0_227
# %bb.226:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r21, 0
.LBB0_227:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	setlt.u r6, r25, r19
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r6, zero, .LBB0_218
# %bb.228:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	j .LBB0_218
.LBB0_229:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r5, zero, .LBB0_223
.LBB0_230:                              # %scalar.ph158
                                        #   in Loop: Header=BB0_219 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r19, r25, .LBB0_224
	j .LBB0_225
.LBB0_231:                              # %vector.body160.preheader
                                        #   in Loop: Header=BB0_216 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_233
.LBB0_232:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 344 11 is_stmt 1              # parallel-rne.mlir:344:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	add.s r7, r15, r7
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	seteq.d r6, r[1:2], r[3:4]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	stores.w r11, 12(r7)
	stores.w r5, 8(r7)
	stores.w r21, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 344 11                        # parallel-rne.mlir:344:11
	bneq r6, zero, .LBB0_215
.LBB0_233:                              # %vector.body160
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	add.ul r[11:12], r[1:2], r[16:17]
	slli r7, r11, 2
	add.s r23, r26, r7
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	add.s r19, r18, r7
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	add.s r22, r8, r7
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	loads.w r5, 0(r23)
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	loads.w r11, 0(r19)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r5, r5, r24
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r11, r11, r24
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	seteq r12, r5, r25
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	seteq r20, r5, zero
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	seteq r13, r11, zero
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	seteq r14, r11, r25
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	max.u r5, r5, r11
	setlt.u r5, r25, r5
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	and r11, r12, r13
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	and r12, r20, r14
	lui r20, 523264
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	or r11, r11, r12
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	or r5, r5, r11
	lui r11, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r5, zero, .LBB0_235
# %bb.234:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r20, 0(r22)
.LBB0_235:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r5, 4(r23)
	loads.w r12, 4(r19)
	and r5, r5, r24
	and r12, r12, r24
	seteq r13, r5, r25
	seteq r6, r5, zero
	seteq r21, r12, r25
	seteq r14, r12, zero
	max.u r5, r5, r12
	setlt.u r5, r25, r5
	and r6, r6, r21
	and r12, r13, r14
	lui r21, 523264
	or r6, r12, r6
	or r5, r5, r6
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r5, zero, .LBB0_237
# %bb.236:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r22)
.LBB0_237:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r5, 8(r23)
	loads.w r6, 8(r19)
	and r5, r5, r24
	and r6, r6, r24
	seteq r12, r5, r25
	seteq r27, r5, zero
	seteq r13, r6, zero
	seteq r14, r6, r25
	max.u r5, r5, r6
	setlt.u r5, r25, r5
	and r6, r12, r13
	and r12, r27, r14
	or r6, r6, r12
	or r6, r5, r6
	lui r5, 523264
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r6, zero, .LBB0_239
# %bb.238:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r22)
.LBB0_239:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	loads.w r6, 12(r23)
	loads.w r12, 12(r19)
	and r6, r6, r24
	and r12, r12, r24
	seteq r13, r6, r25
	seteq r23, r6, zero
	seteq r14, r12, zero
	seteq r19, r12, r25
	max.u r6, r6, r12
	setlt.u r6, r25, r6
	and r12, r13, r14
	and r13, r23, r19
	or r12, r12, r13
	or r6, r6, r12
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r6, zero, .LBB0_232
# %bb.240:                              # %vector.body160
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r22)
	j .LBB0_232
.LBB0_241:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 336 7 is_stmt 1               # parallel-rne.mlir:336:7
	mfence { sm }
	addli r13, r28, 0
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r12
	addli r28, zero, 128
	addli r16, zero, 5
	addli r11, zero, 2
	addli r22, zero, 24
	addli r20, zero, 64
	loadli.w r14,  -300(r30)                # 4-byte Folded Reload
	loadli.w r23,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -308(r30)                # 4-byte Folded Reload
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r1, zero, 7
	bneq r12, r1, .LBB0_46
.LBB0_242:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 413 9                         # parallel-rne.mlir:413:9
	sub.s r1, r15, r8
	addli r2, zero, 16
	addli r28, r13, 0
	setlt.u r1, r1, r2
	.loc	1 406 7                         # parallel-rne.mlir:406:7
	storeli.w r1, -292(r30)                 # 4-byte Folded Spill
	addli r1, zero, 112
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_244
.LBB0_243:                              # %middle.block151
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[5:6], -288(r30)                # 8-byte Folded Reload
	.loc	1 413 9 is_stmt 1               # parallel-rne.mlir:413:9
	setlt.ul r1, r[5:6], r[9:10]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_269
.LBB0_244:                              # %.preheader30
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_261 Depth 3
                                        #       Child Loop BB0_247 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -288(r30)               # 8-byte Folded Spill
	sll.d r[16:17], r[5:6], r1
	.loc	1 414 11 is_stmt 1              # parallel-rne.mlir:414:11
	loadli.w r1,  -292(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_259
# %bb.245:                              # %scalar.ph143.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_247
.LBB0_246:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	setlt.ul r5, r[1:2], r[9:10]
	.loc	1 436 13 is_stmt 1              # parallel-rne.mlir:436:13
	add.s r6, r15, r7
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 436 13                        # parallel-rne.mlir:436:13
	stores.w r11, 0(r6)
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	beq r5, zero, .LBB0_243
.LBB0_247:                              # %scalar.ph143
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	add.ul r[5:6], r[1:2], r[16:17]
	lui r11, 523264
	lui r20, 523264
	slli r7, r5, 2
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	add.s r5, r18, r7
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	add.s r6, r8, r7
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	loads.w r5, 0(r5)
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	loads.w r21, 0(r6)
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	and r5, r5, r24
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	beq r5, r25, .LBB0_249
# %bb.248:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_249:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	add.s r6, r26, r7
	loads.w r6, 0(r6)
	and r19, r6, r24
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r19, zero, .LBB0_257
# %bb.250:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r21, 523264
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r5, zero, .LBB0_258
.LBB0_251:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	beq r19, r25, .LBB0_253
.LBB0_252:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_253:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	setlt.u r6, r25, r5
	lui r5, 523264
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r6, zero, .LBB0_255
# %bb.254:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r21, 0
.LBB0_255:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	setlt.u r6, r25, r19
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r6, zero, .LBB0_246
# %bb.256:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r5, 0
	j .LBB0_246
.LBB0_257:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	beq r5, zero, .LBB0_251
.LBB0_258:                              # %scalar.ph143
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r19, r25, .LBB0_252
	j .LBB0_253
.LBB0_259:                              # %vector.body145.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[1:2], zero
	j .LBB0_261
.LBB0_260:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 414 11 is_stmt 1              # parallel-rne.mlir:414:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 436 13                        # parallel-rne.mlir:436:13
	add.s r7, r15, r7
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	seteq.d r6, r[1:2], r[3:4]
	.loc	1 436 13                        # parallel-rne.mlir:436:13
	stores.w r11, 12(r7)
	stores.w r5, 8(r7)
	stores.w r21, 4(r7)
	stores.w r20, 0(r7)
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	bneq r6, zero, .LBB0_243
.LBB0_261:                              # %vector.body145
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	add.ul r[11:12], r[1:2], r[16:17]
	slli r7, r11, 2
	add.s r23, r26, r7
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	add.s r19, r18, r7
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	add.s r22, r8, r7
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	loads.w r5, 0(r23)
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	loads.w r11, 0(r19)
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	and r5, r5, r24
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	and r11, r11, r24
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	seteq r12, r5, r25
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	seteq r20, r5, zero
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	seteq r13, r11, zero
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	seteq r14, r11, r25
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	max.u r5, r5, r11
	setlt.u r5, r25, r5
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	and r11, r12, r13
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	and r12, r20, r14
	lui r20, 523264
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	or r11, r11, r12
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	or r5, r5, r11
	lui r11, 523264
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r5, zero, .LBB0_263
# %bb.262:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r20, 0(r22)
.LBB0_263:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r5, 4(r23)
	loads.w r12, 4(r19)
	and r5, r5, r24
	and r12, r12, r24
	seteq r13, r5, r25
	seteq r6, r5, zero
	seteq r21, r12, r25
	seteq r14, r12, zero
	max.u r5, r5, r12
	setlt.u r5, r25, r5
	and r6, r6, r21
	and r12, r13, r14
	lui r21, 523264
	or r6, r12, r6
	or r5, r5, r6
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r5, zero, .LBB0_265
# %bb.264:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 4(r22)
.LBB0_265:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r5, 8(r23)
	loads.w r6, 8(r19)
	and r5, r5, r24
	and r6, r6, r24
	seteq r12, r5, r25
	seteq r27, r5, zero
	seteq r13, r6, zero
	seteq r14, r6, r25
	max.u r5, r5, r6
	setlt.u r5, r25, r5
	and r6, r12, r13
	and r12, r27, r14
	or r6, r6, r12
	or r6, r5, r6
	lui r5, 523264
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r6, zero, .LBB0_267
# %bb.266:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r22)
.LBB0_267:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r6, 12(r23)
	loads.w r12, 12(r19)
	and r6, r6, r24
	and r12, r12, r24
	seteq r13, r6, r25
	seteq r23, r6, zero
	seteq r14, r12, zero
	seteq r19, r12, r25
	max.u r6, r6, r12
	setlt.u r6, r25, r6
	and r12, r13, r14
	and r13, r23, r19
	or r12, r12, r13
	or r6, r6, r12
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	bneq r6, zero, .LBB0_260
# %bb.268:                              # %vector.body145
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r22)
	j .LBB0_260
.LBB0_269:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	mfence { sm }
	addli r13, r28, 0
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r12
	addli r28, zero, 128
	addli r16, zero, 5
	addli r11, zero, 2
	addli r22, zero, 24
	addli r20, zero, 64
	loadli.w r14,  -300(r30)                # 4-byte Folded Reload
	loadli.w r23,  -304(r30)                # 4-byte Folded Reload
	loadli.w r19,  -308(r30)                # 4-byte Folded Reload
.LBB0_270:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 441 7                         # parallel-rne.mlir:441:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 442 7                         # parallel-rne.mlir:442:7
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.271:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r9,  -332(r30)                 # 4-byte Folded Reload
	addli r26, zero, 4
	.loc	1 453 7 is_stmt 1               # parallel-rne.mlir:453:7
	bneq r12, zero, .LBB0_6
# %bb.272:                              #   in Loop: Header=BB0_7 Depth=1
	load.d r[6:7], -360(r30)                # 8-byte Folded Reload
	loadli.w r1,  -364(r30)                 # 4-byte Folded Reload
	addli r5, zero, 20
	addli r10, zero, 12
	load.d r[17:18], 24(r30)
	sll.d r[5:6], r[6:7], r5
	load.d r[7:8], -384(r30)                # 8-byte Folded Reload
	sext_int2long r[1:2], r1
	xwait r10, 0
	lock zero, r16
	add.ul r[5:6], r[17:18], r[5:6]
	min.sl r[7:8], r[1:2], r[7:8]
	addli.d r[7:8], r[7:8], 128
	max.sl r[7:8], r[7:8], r[1:2]
	sub.sl r[1:2], r[7:8], r[1:2]
	load.d r[7:8], -352(r30)                # 8-byte Folded Reload
	dma_cfg zero, zero, zero, 0
	.loc	1 449 13                        # parallel-rne.mlir:449:13
	min.sl r[1:2], r[1:2], r[3:4]
	.loc	1 453 7                         # parallel-rne.mlir:453:7
	addli r3, zero, 1
	add.ul r[5:6], r[5:6], r[7:8]
	dma_cfg zero, r3, zero, 1
	load.d r[3:4], -376(r30)                # 8-byte Folded Reload
	dma_cfg r6, zero, zero, 2
	slli r3, r3, 2
	addli r4, zero, 8192
	dma_cfg r5, r15, r3, 3
	addli r3, zero, 512
	dma_cfg r4, r3, r1, 4
	addli r1, zero, 13
	dma_run zero
	unlock r16
	xsignal r1, 0
	j .LBB0_6
.LBB0_273:                              # %._crit_edge
	.loc	1 455 5                         # parallel-rne.mlir:455:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_275
# %bb.274:
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
.LBB0_275:
	.loc	1 456 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:456:5
	addli sp, sp, 416
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
	.long	480                             # 0x1e0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-0gtlrt9i" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
