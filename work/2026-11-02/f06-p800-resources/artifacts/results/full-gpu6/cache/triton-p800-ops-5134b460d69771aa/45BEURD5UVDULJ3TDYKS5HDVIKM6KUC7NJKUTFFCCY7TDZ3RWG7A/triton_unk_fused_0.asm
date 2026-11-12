	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-_lqkk0hm" "gelu-lut-refined.mlir"
	.loc	1 7 0                           # gelu-lut-refined.mlir:7:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -104
	addli r1, zero, 1
.Ltmp0:
	.loc	1 26 5 prologue_end             # gelu-lut-refined.mlir:26:5
	core_id r2
	addli r30, sp, 40
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
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
	addli r1, zero, 3
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 7
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 15
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 19
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r3, 0
	xsignal r3, 0
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
	ble.s r3, r1, .LBB0_32
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	lui r13, 8
	sext_int2long r[6:7], r1
	addli r8, zero, 2
	addli r9, zero, 32
	addli r10, zero, 1
	addli r26, zero, 5
	addli r14, zero, 3
	addli r15, zero, 4
	addli r5, zero, 128
	addli r1, zero, 64
	addli r27, zero, 2048
	addli r16, zero, 511
	addli r23, zero, 0
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	lui r3, 7
	ori r3, r3, 256
	storeli.w r3, -12(r30)                  # 4-byte Folded Spill
	lui r3, 216
	ori r3, r3, 2893
	storeli.w r3, -16(r30)                  # 4-byte Folded Spill
	ori r3, r13, 256
	lui r13, 522239
	storeli.w r3, -20(r30)                  # 4-byte Folded Spill
	lui r3, 1046527
	ori r3, r3, 4095
	storeli.w r3, -24(r30)                  # 4-byte Folded Spill
	ori r3, r13, 4095
	storeli.w r3, -28(r30)                  # 4-byte Folded Spill
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_20 Depth 2
	loadli.w r3,  48(r30)
	loadli.w r11,  44(r30)
	.loc	1 27 14 is_stmt 1               # gelu-lut-refined.mlir:27:14
	mod.s r13, r23, r8
	div.s r3, r6, r3
	slli r28, r13, 11
	div.s r3, r3, r11
	.loc	1 32 10                         # gelu-lut-refined.mlir:32:10
	addli r11, zero, 8
	.loc	1 29 10                         # gelu-lut-refined.mlir:29:10
	div.s r17, r3, r9
	.loc	1 30 10                         # gelu-lut-refined.mlir:30:10
	slli r18, r17, 3
	.loc	1 29 10                         # gelu-lut-refined.mlir:29:10
	slli r17, r17, 5
	.loc	1 31 10                         # gelu-lut-refined.mlir:31:10
	sub.s r19, r10, r18
	.loc	1 29 10                         # gelu-lut-refined.mlir:29:10
	sub.s r17, r3, r17
	.loc	1 32 10                         # gelu-lut-refined.mlir:32:10
	min.s r19, r19, r11
	.loc	1 33 10                         # gelu-lut-refined.mlir:33:10
	mod.s r3, r3, r19
	.loc	1 36 10                         # gelu-lut-refined.mlir:36:10
	div.s r22, r17, r19
	.loc	1 34 10                         # gelu-lut-refined.mlir:34:10
	add.s r3, r3, r18
	.loc	1 44 11                         # gelu-lut-refined.mlir:44:11
	zext_int2long r[19:20], r22
	.loc	1 45 11                         # gelu-lut-refined.mlir:45:11
	sll.d r[24:25], r[19:20], r26
	.loc	1 42 11                         # gelu-lut-refined.mlir:42:11
	zext_int2long r[17:18], r3
	.loc	1 59 16                         # gelu-lut-refined.mlir:59:16
	addli r19, r28, 4096
	.loc	1 63 5                          # gelu-lut-refined.mlir:63:5
	bneq r2, r10, .LBB0_7
# %bb.6:                                # %.thread12
                                        #   in Loop: Header=BB0_5 Depth=1
	addli r11, zero, 11
	load.d r[20:21], 0(r30)
	xwait r14, 0
	lock zero, r15
	dma_cfg r10, r10, zero, 0
	sll.d r[11:12], r[17:18], r11
	add.ul r[11:12], r[20:21], r[11:12]
	dma_cfg zero, r12, zero, 2
	dma_cfg r19, r11, r5, 3
	addli r11, zero, 16
	dma_cfg r5, r5, r11, 4
	dma_run zero
	unlock r15
	xsignal r8, 0
	.loc	1 64 5                          # gelu-lut-refined.mlir:64:5
	j .LBB0_16
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	bneq r2, r8, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	xwait r8, 0
	xwait r26, 0
	lock zero, zero
	addli r11, zero, 16
	ds_cfg r14, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r11, zero, 13
	shuffle_batch r28, r19, r1, 1
	unlock zero
	xsignal r14, 0
	xsignal r15, 0
	j .LBB0_16
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 71 16                         # gelu-lut-refined.mlir:71:16
	slli r20, r13, 12
	.loc	1 76 5                          # gelu-lut-refined.mlir:76:5
	beq r2, r15, .LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	slli r11, r13, 13
	.loc	1 76 5                          # gelu-lut-refined.mlir:76:5
	addli r4, zero, 7
	.loc	1 0 0                           # gelu-lut-refined.mlir:0:0
	addli r19, r11, 8192
	.loc	1 76 5                          # gelu-lut-refined.mlir:76:5
	beq r2, r4, .LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	addli r4, zero, 6
	bneq r2, r4, .LBB0_16
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=1
	load.d r[20:21], 8(r30)
	sll.d r[11:12], r[24:25], r10
	addli r4, zero, 7
	xwait r4, 0
	lock zero, r15
	addli r4, zero, 256
	add.ul r[11:12], r[20:21], r[11:12]
	dma_cfg r10, r10, zero, 0
	dma_cfg zero, r12, zero, 2
	dma_cfg r19, r11, r1, 3
	dma_cfg r5, r4, r1, 4
	addli r4, zero, 6
	dma_run zero
	unlock r15
	xsignal r4, 0
	.loc	1 77 5 is_stmt 1                # gelu-lut-refined.mlir:77:5
	j .LBB0_16
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=1
	addli r4, zero, 6
	addli r11, zero, 8
	xwait r4, 0
	addli r4, zero, 9
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 7
	ds_cfg r14, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r9, zero, 13
	shuffle_coa r20, r19, r1, 2
	unlock zero
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 78 5                          # gelu-lut-refined.mlir:78:5
	addli r11, zero, 8
	xwait r15, 0
	addli r4, zero, 9
	xwait r11, 0
	addli r11, zero, 11
	xwait r11, 0
	addli r11, zero, 16
	lock zero, r10
	mm_cfg r9, r1, r11, 0
	addli r11, zero, 10
	mm_cfg r8, r10, r10, 2
	mm r28, r28, r20, 5
	unlock r10
	xsignal r26, 0
.LBB0_15:                               # %.thread13
                                        #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	xsignal r4, 0
	xsignal r11, 0
.LBB0_16:                               # %.thread13
                                        #   in Loop: Header=BB0_5 Depth=1
	slli r11, r22, 5
	addli r12, zero, 96
	zext_int2long r[21:22], r9
	.loc	1 91 17 is_stmt 1               # gelu-lut-refined.mlir:91:17
	slli r13, r13, 7
	zext_int2long r[19:20], r12
	.loc	1 85 11                         # gelu-lut-refined.mlir:85:11
	zext_int2long r[11:12], r11
	.loc	1 87 11                         # gelu-lut-refined.mlir:87:11
	min.ul r[19:20], r[11:12], r[19:20]
	addli.d r[19:20], r[19:20], 32
	.loc	1 89 11                         # gelu-lut-refined.mlir:89:11
	max.ul r[19:20], r[19:20], r[11:12]
	sub.sl r[11:12], r[19:20], r[11:12]
	.loc	1 90 11                         # gelu-lut-refined.mlir:90:11
	min.ul r[19:20], r[11:12], r[21:22]
	lui r11, 6
	.loc	1 91 17                         # gelu-lut-refined.mlir:91:17
	add.s r13, r13, r11
	.loc	1 94 5                          # gelu-lut-refined.mlir:94:5
	bneq r2, r10, .LBB0_18
# %bb.17:                               # %.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	addli r3, zero, 13
	sll.d r[11:12], r[24:25], r10
	xwait r3, 0
	load.d r[3:4], 16(r30)
	lock zero, r15
	dma_cfg zero, r10, zero, 0
	add.ul r[11:12], r[3:4], r[11:12]
	slli r3, r19, 1
	dma_cfg zero, r12, zero, 2
	dma_cfg r13, r11, r3, 3
	addli r3, zero, 12
	dma_cfg r5, r1, r10, 4
	dma_run zero
	unlock r15
	j .LBB0_30
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	ori r11, r11, 256
	.loc	1 95 17 is_stmt 1               # gelu-lut-refined.mlir:95:17
	add.s r22, r28, r11
	.loc	1 96 5                          # gelu-lut-refined.mlir:96:5
	bneq r2, r14, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_5 Depth=1
	addli r11, zero, 10
	addli r3, zero, 0
	xwait r11, 0
	addli r11, zero, 12
	xwait r11, 0
	addli r11, zero, 15
	xwait r11, 0
	lock zero, r8
	lui r11, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r11, r11, zero, 0
	addli r11, zero, 31
	ew_cfg zero, r11, zero, 2
	ew_cfg r10, zero, zero, 3
.LBB0_20:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r11, r22, r3
	add.s r12, r28, r3
	addli r3, r3, 128
	dsmadd r11, r12, r13, 0
	bneq r3, r27, .LBB0_20
# %bb.21:                               #   in Loop: Header=BB0_5 Depth=1
	addli r3, zero, 11
	unlock r8
	xsignal r3, 0
	addli r3, zero, 13
	xsignal r3, 0
	addli r3, zero, 16
	xsignal r3, 0
	addli r3, zero, 17
	xsignal r3, 0
	addli r3, zero, 14
	j .LBB0_30
.LBB0_22:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 97 17                         # gelu-lut-refined.mlir:97:17
	loadli.w r11,  -12(r30)                 # 4-byte Folded Reload
	add.s r13, r28, r11
	.loc	1 98 5                          # gelu-lut-refined.mlir:98:5
	bneq r2, r26, .LBB0_28
# %bb.23:                               #   in Loop: Header=BB0_5 Depth=1
	addli r3, zero, 14
	lui r4, 790528
	.loc	1 100 5                         # gelu-lut-refined.mlir:100:5
	addli r11, zero, 16
	addli r17, zero, 0
	.loc	1 98 5                          # gelu-lut-refined.mlir:98:5
	xwait r3, 0
	addli r3, zero, 19
	xwait r3, 0
	lock zero, r8
	addli r3, zero, 13
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r16, zero, 2
	ew_cfg r10, zero, zero, 3
	ew_cfg r10, r10, zero, 19
	ew_cfg r3, zero, zero, 10
	loadli.w r3,  -16(r30)                  # 4-byte Folded Reload
	ew_cfg r8, r10, r3, 11
	lui r3, 266232
	ew_cfg zero, zero, r14, 13
	ew_cfg r4, r15, r3, 14
	lui r3, 260096
	.loc	1 100 5                         # gelu-lut-refined.mlir:100:5
	addli r4, zero, 20
	.loc	1 98 5                          # gelu-lut-refined.mlir:98:5
	ew_cfg zero, r3, zero, 15
	sslut r13, r22, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r8
	.loc	1 99 17                         # gelu-lut-refined.mlir:99:17
	loadli.w r3,  -20(r30)                  # 4-byte Folded Reload
	.loc	1 100 5                         # gelu-lut-refined.mlir:100:5
	xwait r11, 0
	xwait r4, 0
	lock zero, r8
	addli r11, zero, 31
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r11, zero, 2
	ew_cfg r10, zero, zero, 3
	.loc	1 99 17                         # gelu-lut-refined.mlir:99:17
	add.s r3, r28, r3
	.loc	1 100 5                         # gelu-lut-refined.mlir:100:5
	loadli.w r11,  -24(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r11, zero, zero, 0
.LBB0_24:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r11, r3, r17
	add.s r12, r22, r17
	addli r17, r17, 128
	dscmpnsel r11, r12, r12, 0
	bneq r17, r27, .LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_5 Depth=1
	unlock r8
	.loc	1 101 5                         # gelu-lut-refined.mlir:101:5
	addli r11, zero, 31
	addli r17, zero, 0
	lock zero, r8
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r11, zero, 2
	ew_cfg r10, zero, zero, 3
	loadli.w r11,  -28(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r11, zero, zero, 0
.LBB0_26:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r11, r3, r17
	addli r17, r17, 128
	dscmpnsel r11, r11, r11, 4
	bneq r17, r27, .LBB0_26
# %bb.27:                               # %.critedge2
                                        #   in Loop: Header=BB0_5 Depth=1
	.loc	1 102 5                         # gelu-lut-refined.mlir:102:5
	addli r11, zero, 17
	.loc	1 101 5                         # gelu-lut-refined.mlir:101:5
	unlock r8
	.loc	1 102 5                         # gelu-lut-refined.mlir:102:5
	lui r4, 784384
	xwait r11, 0
	lock zero, r8
	lui r11, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r11, r4, zero, 0
	ew_cfg zero, r16, zero, 2
	ew_cfg r10, zero, zero, 3
	ew_cfg r10, r10, r10, 19
	dsmadd r22, r22, r3, 0
	addli r3, zero, 20
	ew_cfg zero, zero, zero, 19
	unlock r8
	xsignal r3, 0
	.loc	1 103 5                         # gelu-lut-refined.mlir:103:5
	lock zero, r8
	addli r3, zero, 15
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r11, r11, zero, 0
	ew_cfg zero, r16, zero, 2
	ew_cfg r10, zero, zero, 3
	ew_cfg r10, r10, r10, 19
	dsmadd r13, r13, r22, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	xsignal r3, 0
	addli r3, zero, 18
	j .LBB0_30
.LBB0_28:                               # %.critedge4
                                        #   in Loop: Header=BB0_5 Depth=1
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
	bneq r2, zero, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	slli r3, r3, 4
	zext_int2long r[11:12], zero
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
	sll.d r[24:25], r[24:25], r10
	sext_int2long r[21:22], r3
	addli r3, zero, 12
	min.sl r[11:12], r[21:22], r[11:12]
	sll.d r[3:4], r[17:18], r3
	addli.d r[11:12], r[11:12], 16
	store.d r[3:4], -40(r30)                # 8-byte Folded Spill
	load.d r[3:4], 24(r30)
	max.sl r[16:17], r[11:12], r[21:22]
	load.d r[11:12], -40(r30)               # 8-byte Folded Reload
	add.ul r[4:5], r[3:4], r[11:12]
	addli r3, zero, 16
	sub.sl r[11:12], r[16:17], r[21:22]
	addli r16, zero, 511
	zext_int2long r[21:22], r3
	addli r3, zero, 18
	add.ul r[17:18], r[4:5], r[24:25]
	addli r5, zero, 128
	xwait r3, 0
	lock zero, r26
	slli r3, r19, 2
	.loc	1 107 11 is_stmt 1              # gelu-lut-refined.mlir:107:11
	min.sl r[11:12], r[11:12], r[21:22]
	.loc	1 111 5                         # gelu-lut-refined.mlir:111:5
	dma_cfg r10, zero, zero, 0
	dma_cfg zero, r10, zero, 1
	dma_cfg r18, zero, zero, 2
	dma_cfg r17, r13, r3, 3
	addli r3, zero, 256
	dma_cfg r3, r5, r11, 4
	addli r3, zero, 19
	dma_run zero
	unlock r26
.LBB0_30:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 0 is_stmt 0                 # gelu-lut-refined.mlir:0:0
	xsignal r3, 0
.LBB0_31:                               # %.critedge4.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	load.d r[3:4], -8(r30)                  # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	addli r23, r23, 1
	setlt.sl r3, r[6:7], r[3:4]
	bneq r3, zero, .LBB0_5
.LBB0_32:                               # %._crit_edge
	.loc	1 112 5 is_stmt 1               # gelu-lut-refined.mlir:112:5
	xsignal zero, 0
	bneq r2, zero, .LBB0_34
# %bb.33:
	.loc	1 0 5 is_stmt 0                 # gelu-lut-refined.mlir:0:5
	addli r1, zero, 2
	.loc	1 112 5                         # gelu-lut-refined.mlir:112:5
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
.LBB0_34:
	.loc	1 112 5 epilogue_begin          # gelu-lut-refined.mlir:112:5
	addli sp, sp, 40
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
	.long	104                             # 0x68
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/gelu-lut-_lqkk0hm" # string offset=29
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
