	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu6/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-bokfp4e5" "gelu-lut-refined.mlir"
	.loc	1 7 0                           # gelu-lut-refined.mlir:7:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -120
	addli r30, sp, 56
	addli r1, zero, 1
.Ltmp0:
	.loc	1 25 5 prologue_end             # gelu-lut-refined.mlir:25:5
	core_id r2
	loadli.w r20,  48(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	lui r3, 1048575
	.loc	1 25 5                          # gelu-lut-refined.mlir:25:5
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
	.loc	1 25 5                          # gelu-lut-refined.mlir:25:5
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
	addli r1, zero, 3
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 7
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 15
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 19
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	.loc	1 0 5                           # gelu-lut-refined.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r3,  44(r30)
	load_param_i r5, 1
	loadli.w r4,  48(r30)
	mul.s r1, r3, r1
	addli r3, r5, 0
	fmac.s r3, r1, r4
	mul.s r4, r1, r4
	addli r3, r3, -1
	div.s r3, r3, r5
	load_param_i r5, 0
	mul.s r1, r3, r5
	fmac.s r3, r3, r5
	min.s r3, r3, r4
	ble.s r3, r1, .LBB0_33
# %bb.4:                                # %.lr.ph
	sext_int2long r[7:8], r1
	lui r1, 19
	sext_int2long r[5:6], r3
	lui r3, 216
	addli r4, zero, 0
	addli r9, zero, 3
	addli r10, zero, 8
	addli r11, zero, 1
	addli r15, zero, 4
	addli r16, zero, 128
	addli r17, zero, 16
	addli r19, zero, 2
	addli r26, zero, 8192
	addli r18, zero, 64
	addli r23, zero, 0
	ori r1, r1, 2048
	store.d r[5:6], -8(r30)                 # 8-byte Folded Spill
	storeli.w r1, -12(r30)                  # 4-byte Folded Spill
	lui r1, 25
	ori r1, r1, 3584
	storeli.w r1, -16(r30)                  # 4-byte Folded Spill
	ori r1, r3, 2893
	lui r3, 1046527
	storeli.w r1, -24(r30)                  # 4-byte Folded Spill
	lui r1, 31
	ori r1, r1, 3584
	storeli.w r1, -28(r30)                  # 4-byte Folded Spill
	ori r1, r3, 4095
	lui r3, 7
	storeli.w r1, -32(r30)                  # 4-byte Folded Spill
	lui r1, 522239
	ori r1, r1, 4095
	storeli.w r1, -36(r30)                  # 4-byte Folded Spill
	ori r1, r3, 2048
	storeli.w r1, -20(r30)                  # 4-byte Folded Spill
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_13 Depth 2
	div.s r1, r7, r20
	loadli.w r3,  44(r30)
	.loc	1 26 14 is_stmt 1               # gelu-lut-refined.mlir:26:14
	mod.s r14, r4, r9
	div.s r1, r1, r3
	.loc	1 57 16                         # gelu-lut-refined.mlir:57:16
	slli r12, r14, 11
	.loc	1 26 14                         # gelu-lut-refined.mlir:26:14
	slli r25, r14, 13
	.loc	1 28 10                         # gelu-lut-refined.mlir:28:10
	div.s r3, r1, r10
	slli r3, r3, 3
	.loc	1 30 10                         # gelu-lut-refined.mlir:30:10
	sub.s r5, r11, r3
	.loc	1 28 10                         # gelu-lut-refined.mlir:28:10
	sub.s r6, r1, r3
	.loc	1 31 10                         # gelu-lut-refined.mlir:31:10
	min.s r5, r5, r10
	.loc	1 32 10                         # gelu-lut-refined.mlir:32:10
	mod.s r1, r1, r5
	.loc	1 35 10                         # gelu-lut-refined.mlir:35:10
	div.s r24, r6, r5
	.loc	1 33 10                         # gelu-lut-refined.mlir:33:10
	add.s r3, r1, r3
	.loc	1 43 11                         # gelu-lut-refined.mlir:43:11
	zext_int2long r[5:6], r24
	.loc	1 44 11                         # gelu-lut-refined.mlir:44:11
	addli r1, zero, 7
	sll.d r[27:28], r[5:6], r1
	.loc	1 58 16                         # gelu-lut-refined.mlir:58:16
	lui r1, 6
	.loc	1 41 11                         # gelu-lut-refined.mlir:41:11
	zext_int2long r[21:22], r3
	.loc	1 58 16                         # gelu-lut-refined.mlir:58:16
	add.s r1, r12, r1
	.loc	1 62 5                          # gelu-lut-refined.mlir:62:5
	bneq r2, r11, .LBB0_7
# %bb.6:                                # %.thread12
                                        #   in Loop: Header=BB0_5 Depth=1
	addli r5, zero, 11
	load.d r[12:13], 0(r30)
	xwait r9, 0
	lock zero, r15
	dma_cfg r11, r11, zero, 0
	sll.d r[5:6], r[21:22], r5
	add.ul r[5:6], r[12:13], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r1, r5, r16, 3
	dma_cfg r16, r16, r17, 4
	dma_run zero
	unlock r15
	xsignal r19, 0
	.loc	1 63 5                          # gelu-lut-refined.mlir:63:5
	j .LBB0_9
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	bneq r2, r19, .LBB0_15
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	addli r5, zero, 5
	xwait r19, 0
	xwait r5, 0
	lock zero, zero
	ds_cfg r9, zero, 0
	ds_cfg r18, zero, 1
	ds_cfg r18, zero, 14
	ds_cfg r17, zero, 13
	shuffle_batch r12, r1, r18, 1
	unlock zero
	xsignal r9, 0
	xsignal r15, 0
.LBB0_9:                                # %.thread13
                                        #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	slli r1, r24, 7
	zext_int2long r[5:6], r16
	.loc	1 84 11 is_stmt 1               # gelu-lut-refined.mlir:84:11
	zext_int2long r[12:13], r1
	.loc	1 90 17                         # gelu-lut-refined.mlir:90:17
	slli r1, r14, 9
	.loc	1 88 11                         # gelu-lut-refined.mlir:88:11
	max.ul r[5:6], r[12:13], r[5:6]
	sub.sl r[12:13], r[5:6], r[12:13]
	.loc	1 90 17                         # gelu-lut-refined.mlir:90:17
	loadli.w r5,  -12(r30)                  # 4-byte Folded Reload
	add.s r14, r1, r5
	.loc	1 93 5                          # gelu-lut-refined.mlir:93:5
	bneq r2, r11, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	load.d r[21:22], 16(r30)
	sll.d r[5:6], r[27:28], r11
	addli r1, zero, 13
	addli r3, zero, 512
	.loc	1 94 17                         # gelu-lut-refined.mlir:94:17
	addli r23, r23, 1
	.loc	1 93 5                          # gelu-lut-refined.mlir:93:5
	xwait r1, 0
	lock zero, r15
	slli r1, r12, 1
	add.ul r[5:6], r[21:22], r[5:6]
	dma_cfg zero, r11, zero, 0
	dma_cfg zero, r6, zero, 2
	dma_cfg r14, r5, r1, 3
	addli r1, zero, 256
	dma_cfg r3, r1, r11, 4
	dma_run zero
	unlock r15
	addli r1, zero, 12
	j .LBB0_27
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 94 17                         # gelu-lut-refined.mlir:94:17
	mod.s r1, r23, r9
	lui r5, 19
	addli r23, r23, 1
	ori r5, r5, 3584
	slli r1, r1, 13
	add.s r24, r1, r5
	.loc	1 95 5                          # gelu-lut-refined.mlir:95:5
	bneq r2, r9, .LBB0_19
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=1
	addli r3, zero, 10
	addli r1, zero, 0
	xwait r3, 0
	addli r3, zero, 12
	xwait r3, 0
	addli r3, zero, 15
	xwait r3, 0
	lock zero, r19
	lui r3, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r3, r3, zero, 0
	addli r3, zero, 127
	ew_cfg zero, r3, zero, 2
	ew_cfg r11, zero, zero, 3
.LBB0_13:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r24, r1
	add.s r5, r25, r1
	addli r1, r1, 512
	dsmadd r3, r5, r14, 0
	bneq r1, r26, .LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_5 Depth=1
	addli r1, zero, 11
	unlock r19
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 17
	xsignal r17, 0
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_27
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 70 16                         # gelu-lut-refined.mlir:70:16
	slli r13, r14, 14
	.loc	1 75 5                          # gelu-lut-refined.mlir:75:5
	beq r2, r15, .LBB0_30
# %bb.16:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	loadli.w r1,  -20(r30)                  # 4-byte Folded Reload
	.loc	1 75 5                          # gelu-lut-refined.mlir:75:5
	addli r5, zero, 7
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	add.s r1, r13, r1
	.loc	1 75 5                          # gelu-lut-refined.mlir:75:5
	beq r2, r5, .LBB0_29
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=1
	addli r5, zero, 6
	bneq r2, r5, .LBB0_9
# %bb.18:                               #   in Loop: Header=BB0_5 Depth=1
	addli r12, zero, 7
	sll.d r[5:6], r[27:28], r11
	xwait r12, 0
	load.d r[12:13], 8(r30)
	lock zero, r15
	dma_cfg r11, r11, zero, 0
	add.ul r[5:6], r[12:13], r[5:6]
	addli r12, zero, 256
	dma_cfg zero, r6, zero, 2
	dma_cfg r1, r5, r12, 3
	addli r1, zero, 6
	dma_cfg r12, r12, r18, 4
	dma_run zero
	unlock r15
	xsignal r1, 0
	j .LBB0_9
.LBB0_19:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 96 17 is_stmt 1               # gelu-lut-refined.mlir:96:17
	loadli.w r1,  -16(r30)                  # 4-byte Folded Reload
	add.s r14, r25, r1
	.loc	1 97 5                          # gelu-lut-refined.mlir:97:5
	addli r1, zero, 5
	bneq r2, r1, .LBB0_25
# %bb.20:                               #   in Loop: Header=BB0_5 Depth=1
	addli r1, zero, 14
	lui r3, 790528
	addli r12, zero, 0
	xwait r1, 0
	addli r1, zero, 19
	xwait r1, 0
	lock zero, r19
	addli r1, zero, 511
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 13
	ew_cfg r15, zero, zero, 3
	ew_cfg r15, r15, zero, 19
	ew_cfg r1, zero, zero, 10
	loadli.w r1,  -24(r30)                  # 4-byte Folded Reload
	ew_cfg r19, r11, r1, 11
	lui r1, 266232
	ew_cfg zero, zero, r9, 13
	ew_cfg r3, r15, r1, 14
	lui r1, 260096
	ew_cfg zero, r1, zero, 15
	sslut r14, r24, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r19
	.loc	1 98 17                         # gelu-lut-refined.mlir:98:17
	loadli.w r1,  -28(r30)                  # 4-byte Folded Reload
	.loc	1 99 5                          # gelu-lut-refined.mlir:99:5
	xwait r17, 0
	.loc	1 98 17                         # gelu-lut-refined.mlir:98:17
	add.s r3, r25, r1
	.loc	1 99 5                          # gelu-lut-refined.mlir:99:5
	addli r1, zero, 20
	xwait r1, 0
	lock zero, r19
	addli r1, zero, 127
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	ew_cfg r11, zero, zero, 3
	loadli.w r1,  -32(r30)                  # 4-byte Folded Reload
	ewcoeff_cfg r1, zero, zero, 0
.LBB0_21:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r1, r3, r12
	add.s r5, r24, r12
	addli r12, r12, 512
	dscmpnsel r1, r5, r5, 0
	bneq r12, r26, .LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_5 Depth=1
	unlock r19
	.loc	1 100 5                         # gelu-lut-refined.mlir:100:5
	addli r5, zero, 127
	addli r1, zero, 0
	lock zero, r19
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r5, zero, 2
	ew_cfg r11, zero, zero, 3
	loadli.w r5,  -36(r30)                  # 4-byte Folded Reload
	ewcoeff_cfg r5, zero, zero, 0
.LBB0_23:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r3, r1
	addli r1, r1, 512
	dscmpnsel r5, r5, r5, 4
	bneq r1, r26, .LBB0_23
# %bb.24:                               # %.critedge2
                                        #   in Loop: Header=BB0_5 Depth=1
	.loc	1 101 5                         # gelu-lut-refined.mlir:101:5
	addli r1, zero, 17
	.loc	1 100 5                         # gelu-lut-refined.mlir:100:5
	unlock r19
	.loc	1 101 5                         # gelu-lut-refined.mlir:101:5
	lui r5, 784384
	xwait r1, 0
	lock zero, r19
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r5, zero, 0
	addli r5, zero, 511
	ew_cfg zero, r5, zero, 2
	ew_cfg r15, zero, zero, 3
	ew_cfg r15, r15, r15, 19
	dsmadd r24, r24, r3, 0
	addli r3, zero, 20
	ew_cfg zero, zero, zero, 19
	unlock r19
	xsignal r3, 0
	.loc	1 102 5                         # gelu-lut-refined.mlir:102:5
	lock zero, r19
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, r1, zero, 0
	addli r1, zero, 15
	ew_cfg zero, r5, zero, 2
	ew_cfg r15, zero, zero, 3
	ew_cfg r15, r15, r15, 19
	dsmadd r14, r14, r24, 0
	ew_cfg zero, zero, zero, 19
	unlock r19
	xsignal r1, 0
	addli r1, zero, 18
	j .LBB0_27
.LBB0_25:                               # %.critedge4
                                        #   in Loop: Header=BB0_5 Depth=1
	.loc	1 110 5                         # gelu-lut-refined.mlir:110:5
	bneq r2, zero, .LBB0_28
# %bb.26:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	slli r1, r3, 4
	zext_int2long r[5:6], zero
	.loc	1 110 5                         # gelu-lut-refined.mlir:110:5
	addli r3, zero, 512
	sext_int2long r[24:25], r1
	addli r1, zero, 12
	sll.d r[20:21], r[21:22], r1
	min.sl r[5:6], r[24:25], r[5:6]
	addli r1, zero, 18
	addli r22, zero, 5
	store.d r[20:21], -48(r30)              # 8-byte Folded Spill
	sll.d r[20:21], r[27:28], r11
	addli.d r[5:6], r[5:6], 16
	load.d r[27:28], -48(r30)               # 8-byte Folded Reload
	store.d r[20:21], -56(r30)              # 8-byte Folded Spill
	load.d r[20:21], 24(r30)
	max.sl r[5:6], r[5:6], r[24:25]
	sub.sl r[5:6], r[5:6], r[24:25]
	zext_int2long r[24:25], r17
	add.ul r[20:21], r[20:21], r[27:28]
	load.d r[27:28], -56(r30)               # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r22
	slli r1, r12, 2
	dma_cfg r11, zero, zero, 0
	.loc	1 106 11 is_stmt 1              # gelu-lut-refined.mlir:106:11
	min.sl r[5:6], r[5:6], r[24:25]
	.loc	1 110 5                         # gelu-lut-refined.mlir:110:5
	dma_cfg zero, r11, zero, 1
	add.ul r[20:21], r[20:21], r[27:28]
	dma_cfg r21, zero, zero, 2
	dma_cfg r20, r14, r1, 3
	addli r1, zero, 256
	loadli.w r20,  48(r30)
	dma_cfg r1, r3, r5, 4
	addli r1, zero, 19
	dma_run zero
	unlock r22
.LBB0_27:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	xsignal r1, 0
.LBB0_28:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	load.d r[5:6], -8(r30)                  # 8-byte Folded Reload
	addli.d r[7:8], r[7:8], 1
	addli r4, r4, 1
	setlt.sl r1, r[7:8], r[5:6]
	bneq r1, zero, .LBB0_5
	j .LBB0_33
.LBB0_29:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 76 5 is_stmt 1                # gelu-lut-refined.mlir:76:5
	addli r5, zero, 6
	xwait r5, 0
	addli r5, zero, 9
	xwait r5, 0
	lock zero, zero
	ds_cfg r9, zero, 0
	ds_cfg r16, zero, 1
	ds_cfg r18, zero, 14
	ds_cfg r16, zero, 13
	shuffle_coa r13, r1, r18, 2
	addli r1, zero, 7
	unlock zero
	xsignal r1, 0
	xsignal r10, 0
	.loc	1 77 5                          # gelu-lut-refined.mlir:77:5
	j .LBB0_9
.LBB0_30:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	addli r6, zero, 0
	addli r1, zero, 1
	addli r5, zero, 1
	.loc	1 77 5                          # gelu-lut-refined.mlir:77:5
	addli r20, zero, 11
	xwait r15, 0
	xwait r10, 0
	xwait r20, 0
.LBB0_31:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r20, r6, 13
	slli r6, r6, 8
	lock zero, r1
	mm_cfg r18, r18, r17, 0
	or r20, r20, r13
	or r6, r6, r25
	mm_cfg r19, r15, r1, 2
	mm r6, r12, r20, 5
	andi r20, r5, 1
	addli r6, zero, 1
	addli r5, zero, 0
	unlock r1
	bneq r20, zero, .LBB0_31
# %bb.32:                               #   in Loop: Header=BB0_5 Depth=1
	addli r1, zero, 5
	loadli.w r20,  48(r30)
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 10
	xsignal r1, 0
	j .LBB0_9
.LBB0_33:                               # %._crit_edge
	.loc	1 111 5 is_stmt 1               # gelu-lut-refined.mlir:111:5
	xsignal zero, 0
	bneq r2, zero, .LBB0_35
# %bb.34:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	addli r1, zero, 2
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
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
.LBB0_35:
	.loc	1 111 5 epilogue_begin          # gelu-lut-refined.mlir:111:5
	addli sp, sp, 56
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
	.long	120                             # 0x78
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu6/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-bokfp4e5" # string offset=29
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
