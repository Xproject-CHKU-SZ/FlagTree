	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-0kro0b2b" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -208
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r11
	addli r30, sp, 144
	xsignal_mode_cfg r1
	beq r11, zero, .LBB0_2
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
	addli r2, zero, 3
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
	addli r1, zero, 5
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 7
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 11
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 16
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 18
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
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	lui r5, 1048575
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -24(r30)
	ori r5, r5, 4095
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r1, r2, r1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r4, 0
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w r5, -20(r30)
	storeli.w r5, -16(r30)
	storeli.w r5, -12(r30)
	storeli.w r5, -8(r30)
	storeli.w r5, -4(r30)
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	fmac.s r2, r1, r3
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r3, r1, r3
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r2, -1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	div.s r2, r2, r4
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r4, 0
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r4
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r4
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r2, r2, r3
	.loc	1 52 5                          # parallel-rne.mlir:52:5
	ble.s r2, r1, .LBB0_251
# %bb.4:                                # %.lr.ph
	.loc	1 41 11                         # parallel-rne.mlir:41:11
	sext_int2long r[12:13], r1
	lui r1, 70
	sext_int2long r[2:3], r2
	loadli.w r10,  -24(r30)
	addli r15, zero, 1
	addli r16, zero, 7
	addli r17, zero, 5
	addli r18, zero, 4
	addli r20, zero, 32
	addli r21, zero, 2
	addli r14, zero, 6
	addli r19, zero, 64
	lui r28, 522240
	addli r8, zero, 0
	ori r1, r1, 2560
	store.d r[2:3], -128(r30)               # 8-byte Folded Spill
	lui r2, 110
	storeli.w r1, -132(r30)                 # 4-byte Folded Spill
	lui r1, 90
	ori r1, r1, 2560
	storeli.w r1, -136(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2560
	lui r2, 40
	storeli.w r1, -140(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r3, r1, 4095
	ori r1, r2, 2114
	storeli.w r1, -144(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge8.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 436 7                         # parallel-rne.mlir:436:7
	addli r1, zero, 14
	addli r15, zero, 1
	addli r17, zero, 5
	addli r20, zero, 32
	addli r21, zero, 2
	addli r14, zero, 6
	xsignal r1, 0
	.loc	1 437 7                         # parallel-rne.mlir:437:7
	addli r1, zero, 16
	xsignal r1, 0
	.loc	1 438 7                         # parallel-rne.mlir:438:7
	addli r1, zero, 18
	xsignal r1, 0
	.loc	1 439 7                         # parallel-rne.mlir:439:7
	addli r1, zero, 19
	xsignal r1, 0
	loadli.w r10,  -76(r30)                 # 4-byte Folded Reload
	load.d r[12:13], -88(r30)               # 8-byte Folded Reload
	loadli.w r8,  -92(r30)                  # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 52 5                          # parallel-rne.mlir:52:5
	load.d r[1:2], -128(r30)                # 8-byte Folded Reload
	addli.d r[12:13], r[12:13], 1
	addli r8, r8, 1
	addli r10, r10, 1
	addli r18, zero, 4
	addli r19, zero, 64
	setlt.sl r1, r[12:13], r[1:2]
	beq r1, zero, .LBB0_251
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_41 Depth 3
                                        #     Child Loop BB0_65 Depth 2
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_67 Depth 3
                                        #     Child Loop BB0_91 Depth 2
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_93 Depth 3
                                        #     Child Loop BB0_117 Depth 2
                                        #       Child Loop BB0_132 Depth 3
                                        #       Child Loop BB0_119 Depth 3
                                        #     Child Loop BB0_143 Depth 2
                                        #       Child Loop BB0_158 Depth 3
                                        #       Child Loop BB0_145 Depth 3
                                        #     Child Loop BB0_169 Depth 2
                                        #       Child Loop BB0_184 Depth 3
                                        #       Child Loop BB0_171 Depth 3
                                        #     Child Loop BB0_195 Depth 2
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_197 Depth 3
                                        #     Child Loop BB0_222 Depth 2
                                        #       Child Loop BB0_239 Depth 3
                                        #       Child Loop BB0_225 Depth 3
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	loadli.w r1,  48(r30)
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	loadli.w r2,  44(r30)
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	addli r6, zero, 8
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	storeli.w r8, -92(r30)                  # 4-byte Folded Spill
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	div.s r1, r12, r1
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	div.s r4, r1, r2
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	addli r1, zero, 16
	div.s r5, r4, r1
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	slli r2, r5, 3
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	sub.s r1, r15, r2
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	min.s r6, r1, r6
	.loc	1 86 13                         # parallel-rne.mlir:86:13
	mod.s r1, r8, r17
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	mod.s r7, r4, r6
	.loc	1 61 13                         # parallel-rne.mlir:61:13
	add.s r2, r2, r7
	storeli.w r2, -116(r30)                 # 4-byte Folded Spill
	.loc	1 69 13                         # parallel-rne.mlir:69:13
	zext_int2long r[24:25], r2
	.loc	1 86 13                         # parallel-rne.mlir:86:13
	slli r2, r1, 13
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	bneq r11, r15, .LBB0_9
# %bb.8:                                # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 13
	load.d r[22:23], 0(r30)
	addli r9, zero, 3
	addli r26, zero, 0
	sll.d r[7:8], r[24:25], r7
	xwait r9, 0
	lock zero, r18
	addli r9, zero, 256
	dma_cfg zero, zero, zero, 0
	add.ul r[7:8], r[22:23], r[7:8]
	dma_cfg zero, r8, zero, 2
	dma_cfg r2, r7, r9, 3
	dma_cfg r9, r9, r20, 4
	dma_run zero
	unlock r18
	xsignal r21, 0
	.loc	1 93 7                          # parallel-rne.mlir:93:7
	j .LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	bneq r11, r21, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	xwait r21, 0
	xwait r17, 0
	lock zero, zero
	addli r26, zero, 1
	addli r7, zero, 3
	ds_cfg r21, zero, 0
	ds_cfg r19, zero, 1
	ds_cfg r19, zero, 14
	ds_cfg r20, zero, 13
	shuffle_batch r2, r2, r19, 1
	unlock zero
	xsignal r7, 0
	xsignal r18, 0
	j .LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r26, zero, 0
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	slli r5, r5, 4
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	store.d r[12:13], -88(r30)              # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r4, r4, r5
	.loc	1 103 13 is_stmt 1              # parallel-rne.mlir:103:13
	lui r5, 10
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r4, r4, r6
	.loc	1 101 13 is_stmt 1              # parallel-rne.mlir:101:13
	slli r6, r1, 15
	.loc	1 103 13                        # parallel-rne.mlir:103:13
	add.s r5, r6, r5
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[7:8], r4
	sll.d r[7:8], r[7:8], r16
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	store.d r[7:8], -104(r30)               # 8-byte Folded Spill
	bneq r11, r14, .LBB0_14
# %bb.13:                               # %.thread22
                                        #   in Loop: Header=BB0_7 Depth=1
	load.d r[12:13], 8(r30)
	sll.d r[7:8], r[7:8], r21
	storeli.w zero, -96(r30)                # 4-byte Folded Spill
	xwait r16, 0
	lock zero, r18
	addli r9, zero, 512
	dma_cfg zero, zero, zero, 0
	add.ul r[7:8], r[12:13], r[7:8]
	dma_cfg zero, r8, zero, 2
	dma_cfg r5, r7, r9, 3
	addli r5, zero, 1024
	dma_cfg r9, r5, r19, 4
	dma_run zero
	unlock r18
	xsignal r14, 0
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	j .LBB0_17
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r11, r16, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 9
	xwait r14, 0
	xwait r7, 0
	lock zero, zero
	addli r7, zero, 128
	ds_cfg r21, zero, 0
	ds_cfg r7, zero, 1
	ds_cfg r19, zero, 14
	ds_cfg r7, zero, 13
	shuffle_coa r6, r5, r19, 2
	addli r5, zero, 1
	unlock zero
	xsignal r16, 0
	storeli.w r5, -96(r30)                  # 4-byte Folded Spill
	addli r5, zero, 8
	xsignal r5, 0
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -96(r30)                # 4-byte Folded Spill
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 128
	slli r4, r4, 7
	zext_int2long r[13:14], r5
	.loc	1 115 13 is_stmt 1              # parallel-rne.mlir:115:13
	zext_int2long r[4:5], r4
	.loc	1 117 13                        # parallel-rne.mlir:117:13
	min.ul r[7:8], r[4:5], r[13:14]
	addli.d r[7:8], r[7:8], 128
	.loc	1 119 13                        # parallel-rne.mlir:119:13
	max.ul r[7:8], r[7:8], r[4:5]
	sub.sl r[4:5], r[7:8], r[4:5]
	.loc	1 122 13                        # parallel-rne.mlir:122:13
	slli r7, r1, 9
	.loc	1 120 13                        # parallel-rne.mlir:120:13
	min.ul r[4:5], r[4:5], r[13:14]
	.loc	1 122 13                        # parallel-rne.mlir:122:13
	store.d r[4:5], -112(r30)               # 8-byte Folded Spill
	lui r4, 50
	add.s r7, r7, r4
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	bneq r11, r15, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[4:5], -104(r30)                # 8-byte Folded Reload
	addli r8, zero, 11
	xwait r8, 0
	load.d r[8:9], 16(r30)
	lock zero, r18
	sll.d r[4:5], r[4:5], r21
	dma_cfg zero, zero, zero, 0
	add.ul r[4:5], r[8:9], r[4:5]
	load.d r[8:9], -112(r30)                # 8-byte Folded Reload
	dma_cfg zero, r5, zero, 2
	slli r8, r8, 2
	dma_cfg r7, r4, r8, 3
	addli r4, zero, 512
	dma_cfg r4, r4, r15, 4
	addli r4, zero, 10
	dma_run zero
	unlock r18
	xsignal r4, 0
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	mod.s r4, r10, r17
	.loc	1 127 13 is_stmt 1              # parallel-rne.mlir:127:13
	slli r5, r1, 14
	.loc	1 129 13                        # parallel-rne.mlir:129:13
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	storeli.w r10, -76(r30)                 # 4-byte Folded Spill
	.loc	1 129 13                        # parallel-rne.mlir:129:13
	add.s r1, r5, r1
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	bneq r11, r18, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 8
	xwait r18, 0
	addli r9, zero, 0
	addli r8, zero, 1
	addli r10, zero, 14
	xwait r7, 0
	addli r7, zero, 1
	xwait r10, 0
.LBB0_21:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r10, r9, 14
	slli r9, r9, 8
	lock zero, r7
	mm_cfg r19, r19, r20, 0
	or r10, r10, r6
	or r9, r9, r1
	mm_cfg r18, r18, r7, 2
	mm r9, r2, r10, 8
	andi r10, r8, 1
	addli r9, zero, 1
	addli r8, zero, 0
	unlock r7
	bneq r10, zero, .LBB0_21
# %bb.22:                               # %.thread23.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 9
	storeli.w zero, -72(r30)                # 4-byte Folded Spill
	xsignal r17, 0
	xsignal r2, 0
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	slli r2, r4, 14
	.loc	1 133 13                        # parallel-rne.mlir:133:13
	loadli.w r4,  -136(r30)                 # 4-byte Folded Reload
	add.s r20, r5, r4
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	loadli.w r4,  -140(r30)                 # 4-byte Folded Reload
	add.s r21, r2, r4
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	j .LBB0_30
.LBB0_23:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	bneq r11, r17, .LBB0_27
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 10
	addli r2, zero, 0
	lui r8, 4
	xwait r6, 0
	addli r6, zero, 12
	xwait r6, 0
	lock zero, r21
	lui r6, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r6, r6, zero, 0
	addli r6, zero, 127
	ew_cfg zero, r6, zero, 2
	ew_cfg r15, zero, zero, 3
.LBB0_25:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r1, r2
	addli r2, r2, 512
	dsmadd r6, r6, r7, 0
	bneq r2, r8, .LBB0_25
# %bb.26:                               # %.thread26
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	storeli.w zero, -72(r30)                # 4-byte Folded Spill
	addli r7, zero, 1023
	unlock r21
	xsignal r2, 0
	.loc	1 133 13                        # parallel-rne.mlir:133:13
	loadli.w r2,  -136(r30)                 # 4-byte Folded Reload
	add.s r20, r5, r2
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	addli r2, zero, 16
	xwait r2, 0
	lock zero, r21
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r7, zero, 2
	ew_cfg r18, zero, zero, 3
	ew_cfg r18, r18, zero, 19
	ew_cfg r21, zero, zero, 10
	loadli.w r2,  -144(r30)                 # 4-byte Folded Reload
	ew_cfg r21, r15, r2, 11
	lui r2, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r18, r2, 14
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	slli r2, r4, 14
	addli r4, zero, 2
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	ew_cfg zero, zero, zero, 15
	sslut r20, r1, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r21
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	loadli.w r6,  -140(r30)                 # 4-byte Folded Reload
	add.s r21, r2, r6
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	addli r2, zero, 18
	xwait r2, 0
	lock zero, r4
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	addli r2, zero, 13
	ew_cfg zero, r7, zero, 2
	ew_cfg r18, zero, zero, 3
	ew_cfg r18, r18, r18, 19
	dsmul r21, r1, r20, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r2, 0
	addli r2, zero, 15
	xsignal r2, 0
	addli r2, zero, 17
	xsignal r2, 0
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	j .LBB0_30
.LBB0_27:                               # %.thread23
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	slli r2, r4, 14
	.loc	1 133 13                        # parallel-rne.mlir:133:13
	loadli.w r4,  -136(r30)                 # 4-byte Folded Reload
	add.s r20, r5, r4
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	loadli.w r4,  -140(r30)                 # 4-byte Folded Reload
	add.s r21, r2, r4
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	addli r2, zero, 3
	bneq r11, r2, .LBB0_29
# %bb.28:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 13
	xwait r2, 0
	.loc	1 140 7                         # parallel-rne.mlir:140:7
	addli r2, zero, 15
	xwait r2, 0
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	addli r2, zero, 17
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	storeli.w r2, -72(r30)                  # 4-byte Folded Spill
	addli r2, zero, 20
	xwait r2, 0
	j .LBB0_30
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -72(r30)                # 4-byte Folded Spill
.LBB0_30:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	lui r2, 50
	.loc	1 144 7 is_stmt 1               # parallel-rne.mlir:144:7
	xfence
	ori r2, r2, 2560
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r19, r5, r2
	seteq r2, r19, r1
	.loc	1 145 7 is_stmt 1               # parallel-rne.mlir:145:7
	storeli.w r2, -60(r30)                  # 4-byte Folded Spill
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	addli r2, zero, 255
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	mfence { lm, sm, gm }
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	csr_set csr5, r2
	sub.s r2, r19, r20
	storeli.w r2, -64(r30)                  # 4-byte Folded Spill
	sub.s r2, r19, r21
	storeli.w r2, -68(r30)                  # 4-byte Folded Spill
	addli r2, zero, 127
	sync_core
	store.d r[24:25], -56(r30)              # 8-byte Folded Spill
	zext_int2long r[9:10], r2
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	beq r11, zero, .LBB0_37
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 183 7                         # parallel-rne.mlir:183:7
	addli r2, zero, 1
	beq r11, r2, .LBB0_63
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 219 7                         # parallel-rne.mlir:219:7
	bneq r26, zero, .LBB0_89
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	loadli.w r2,  -72(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_115
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 291 7                         # parallel-rne.mlir:291:7
	addli r2, zero, 4
	beq r11, r2, .LBB0_141
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 327 7                         # parallel-rne.mlir:327:7
	addli r2, zero, 5
	beq r11, r2, .LBB0_167
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	addli r2, zero, 6
	beq r11, r2, .LBB0_193
	j .LBB0_219
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -64(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -68(r30)                  # 4-byte Folded Reload
	storeli.w r26, -48(r30)                 # 4-byte Folded Spill
	.loc	1 147 7 is_stmt 1               # parallel-rne.mlir:147:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	loadli.w r4,  -60(r30)                  # 4-byte Folded Reload
	or r2, r2, r4
	zext_int2long r[4:5], zero
	storeli.w r2, -36(r30)                  # 4-byte Folded Spill
	j .LBB0_39
.LBB0_38:                               # %middle.block185
                                        #   in Loop: Header=BB0_39 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 3
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r16, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 155 9 is_stmt 1               # parallel-rne.mlir:155:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_62
.LBB0_39:                               # %.preheader33
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_41 Depth 3
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	sll.d r[26:27], r[4:5], r16
	zext_int2long r[17:18], zero
	store.d r[4:5], -32(r30)                # 8-byte Folded Spill
	bneq r2, zero, .LBB0_41
	j .LBB0_54
.LBB0_40:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_41 Depth=3
	setlt.ul r5, r[17:18], r[9:10]
	.loc	1 178 13                        # parallel-rne.mlir:178:13
	add.s r2, r19, r2
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	addli.d r[17:18], r[17:18], 1
	.loc	1 178 13                        # parallel-rne.mlir:178:13
	stores.w r4, 0(r2)
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	beq r5, zero, .LBB0_38
.LBB0_41:                               # %scalar.ph177
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	add.ul r[4:5], r[17:18], r[26:27]
	lui r15, 523264
	slli r2, r4, 2
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	add.s r4, r20, r2
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.s r5, r21, r2
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	loads.w r4, 0(r4)
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	loads.w r16, 0(r5)
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	and r8, r4, r3
	lui r4, 523264
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	beq r8, r28, .LBB0_43
# %bb.42:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_43:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_41 Depth=3
	add.s r5, r1, r2
	loads.w r5, 0(r5)
	and r11, r5, r3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r11, zero, .LBB0_51
# %bb.44:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r16, 523264
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r8, zero, .LBB0_52
.LBB0_45:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_41 Depth=3
	beq r11, r28, .LBB0_47
.LBB0_46:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_47:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_41 Depth=3
	setlt.u r5, r28, r8
	lui r8, 523264
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r5, zero, .LBB0_49
# %bb.48:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
.LBB0_49:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_41 Depth=3
	setlt.u r5, r28, r11
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r5, zero, .LBB0_40
# %bb.50:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r8, 0
	j .LBB0_40
.LBB0_51:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_41 Depth=3
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	beq r8, zero, .LBB0_45
.LBB0_52:                               # %scalar.ph177
                                        #   in Loop: Header=BB0_41 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r11, r28, .LBB0_46
	j .LBB0_47
.LBB0_53:                               # %vector.body179
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 156 11 is_stmt 1              # parallel-rne.mlir:156:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 178 13                        # parallel-rne.mlir:178:13
	add.s r5, r19, r8
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	seteq.d r2, r[17:18], r[13:14]
	.loc	1 178 13                        # parallel-rne.mlir:178:13
	stores.w r4, 12(r5)
	stores.w r23, 8(r5)
	stores.w r22, 4(r5)
	stores.w r15, 0(r5)
	.loc	1 156 11                        # parallel-rne.mlir:156:11
	bneq r2, zero, .LBB0_38
.LBB0_54:                               # %vector.body179
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	add.ul r[15:16], r[17:18], r[26:27]
	slli r8, r15, 2
	add.s r11, r1, r8
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	add.s r24, r20, r8
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	loads.w r2, 0(r11)
	.loc	1 158 19                        # parallel-rne.mlir:158:19
	loads.w r4, 0(r24)
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	and r2, r2, r3
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	and r4, r4, r3
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	seteq r15, r2, r28
	.loc	1 169 19                        # parallel-rne.mlir:169:19
	seteq r23, r2, zero
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	seteq r16, r4, zero
	.loc	1 168 19                        # parallel-rne.mlir:168:19
	seteq r22, r4, r28
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	max.u r2, r2, r4
	setlt.u r4, r28, r2
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	and r2, r15, r16
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	and r15, r23, r22
	.loc	1 171 19                        # parallel-rne.mlir:171:19
	or r15, r2, r15
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	add.s r2, r21, r8
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	or r16, r4, r15
	lui r4, 523264
	lui r15, 523264
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r16, zero, .LBB0_56
# %bb.55:                               # %vector.body179
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r2)
.LBB0_56:                               # %vector.body179
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r16, 4(r11)
	loads.w r22, 4(r24)
	and r16, r16, r3
	and r22, r22, r3
	seteq r23, r16, r28
	seteq r5, r16, zero
	seteq r12, r22, r28
	seteq r25, r22, zero
	max.u r16, r16, r22
	setlt.u r16, r28, r16
	and r22, r23, r25
	and r5, r5, r12
	or r5, r22, r5
	lui r22, 523264
	or r5, r16, r5
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r5, zero, .LBB0_58
# %bb.57:                               # %vector.body179
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 4(r2)
.LBB0_58:                               # %vector.body179
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r5, 8(r11)
	loads.w r12, 8(r24)
	and r5, r5, r3
	and r12, r12, r3
	seteq r16, r5, r28
	seteq r23, r12, zero
	seteq r6, r5, zero
	seteq r25, r12, r28
	max.u r5, r5, r12
	setlt.u r5, r28, r5
	and r7, r16, r23
	and r6, r6, r25
	lui r23, 523264
	or r6, r7, r6
	or r5, r5, r6
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r5, zero, .LBB0_60
# %bb.59:                               # %vector.body179
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 8(r2)
.LBB0_60:                               # %vector.body179
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r5, 12(r11)
	loads.w r6, 12(r24)
	and r5, r5, r3
	and r6, r6, r3
	seteq r7, r5, r28
	seteq r16, r5, zero
	seteq r11, r6, zero
	seteq r12, r6, r28
	max.u r5, r5, r6
	setlt.u r5, r28, r5
	and r6, r7, r11
	and r7, r16, r12
	or r6, r6, r7
	or r5, r5, r6
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	bneq r5, zero, .LBB0_53
# %bb.61:                               # %vector.body179
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r2)
	j .LBB0_53
.LBB0_62:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 147 7 is_stmt 1               # parallel-rne.mlir:147:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	load.d r[24:25], -56(r30)               # 8-byte Folded Reload
	loadli.w r26,  -48(r30)                 # 4-byte Folded Reload
	.loc	1 183 7                         # parallel-rne.mlir:183:7
	addli r2, zero, 1
	bneq r11, r2, .LBB0_32
.LBB0_63:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -64(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -68(r30)                  # 4-byte Folded Reload
	storeli.w r26, -48(r30)                 # 4-byte Folded Spill
	.loc	1 183 7                         # parallel-rne.mlir:183:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	loadli.w r4,  -60(r30)                  # 4-byte Folded Reload
	or r2, r2, r4
	storeli.w r2, -36(r30)                  # 4-byte Folded Spill
	addli r2, zero, 4
	zext_int2long r[4:5], r2
	j .LBB0_65
.LBB0_64:                               # %middle.block170
                                        #   in Loop: Header=BB0_65 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r16, zero, 7
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	zext_int2long r[4:5], r16
	.loc	1 191 9 is_stmt 1               # parallel-rne.mlir:191:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_88
.LBB0_65:                               # %.preheader32
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_67 Depth 3
	.loc	1 192 11                        # parallel-rne.mlir:192:11
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	sll.d r[26:27], r[4:5], r16
	zext_int2long r[17:18], zero
	store.d r[4:5], -32(r30)                # 8-byte Folded Spill
	bneq r2, zero, .LBB0_67
	j .LBB0_80
.LBB0_66:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_67 Depth=3
	setlt.ul r5, r[17:18], r[9:10]
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	add.s r2, r19, r2
	.loc	1 192 11                        # parallel-rne.mlir:192:11
	addli.d r[17:18], r[17:18], 1
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	stores.w r4, 0(r2)
	.loc	1 192 11                        # parallel-rne.mlir:192:11
	beq r5, zero, .LBB0_64
.LBB0_67:                               # %scalar.ph162
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	add.ul r[4:5], r[17:18], r[26:27]
	lui r15, 523264
	slli r2, r4, 2
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	add.s r4, r20, r2
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	add.s r5, r21, r2
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	loads.w r4, 0(r4)
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	loads.w r16, 0(r5)
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	and r8, r4, r3
	lui r4, 523264
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r8, r28, .LBB0_69
# %bb.68:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_69:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_67 Depth=3
	add.s r5, r1, r2
	loads.w r5, 0(r5)
	and r11, r5, r3
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r11, zero, .LBB0_77
# %bb.70:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r16, 523264
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r8, zero, .LBB0_78
.LBB0_71:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_67 Depth=3
	beq r11, r28, .LBB0_73
.LBB0_72:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_73:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_67 Depth=3
	setlt.u r5, r28, r8
	lui r8, 523264
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r5, zero, .LBB0_75
# %bb.74:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
.LBB0_75:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_67 Depth=3
	setlt.u r5, r28, r11
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r5, zero, .LBB0_66
# %bb.76:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r8, 0
	j .LBB0_66
.LBB0_77:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_67 Depth=3
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r8, zero, .LBB0_71
.LBB0_78:                               # %scalar.ph162
                                        #   in Loop: Header=BB0_67 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r11, r28, .LBB0_72
	j .LBB0_73
.LBB0_79:                               # %vector.body164
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 192 11 is_stmt 1              # parallel-rne.mlir:192:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	add.s r5, r19, r8
	.loc	1 192 11                        # parallel-rne.mlir:192:11
	seteq.d r2, r[17:18], r[13:14]
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	stores.w r4, 12(r5)
	stores.w r23, 8(r5)
	stores.w r22, 4(r5)
	stores.w r15, 0(r5)
	.loc	1 192 11                        # parallel-rne.mlir:192:11
	bneq r2, zero, .LBB0_64
.LBB0_80:                               # %vector.body164
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	add.ul r[11:12], r[17:18], r[26:27]
	slli r8, r11, 2
	add.s r11, r1, r8
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	add.s r2, r20, r8
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	add.s r24, r21, r8
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	loads.w r4, 0(r11)
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	loads.w r12, 0(r2)
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	and r4, r4, r3
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	and r12, r12, r3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	seteq r15, r4, r28
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	seteq r23, r4, zero
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	seteq r16, r12, zero
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	seteq r22, r12, r28
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	max.u r4, r4, r12
	setlt.u r4, r28, r4
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r12, r15, r16
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r15, r23, r22
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	or r12, r12, r15
	lui r15, 523264
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	or r12, r4, r12
	lui r4, 523264
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r12, zero, .LBB0_82
# %bb.81:                               # %vector.body164
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r24)
.LBB0_82:                               # %vector.body164
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r12, 4(r11)
	loads.w r16, 4(r2)
	and r12, r12, r3
	and r16, r16, r3
	seteq r22, r12, r28
	seteq r5, r12, zero
	seteq r25, r16, r28
	seteq r23, r16, zero
	max.u r12, r12, r16
	setlt.u r12, r28, r12
	and r16, r22, r23
	and r5, r5, r25
	lui r22, 523264
	or r5, r16, r5
	or r5, r12, r5
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r5, zero, .LBB0_84
# %bb.83:                               # %vector.body164
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 4(r24)
.LBB0_84:                               # %vector.body164
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r5, 8(r11)
	loads.w r12, 8(r2)
	and r5, r5, r3
	and r12, r12, r3
	seteq r16, r5, r28
	seteq r23, r12, zero
	seteq r6, r5, zero
	seteq r25, r12, r28
	max.u r5, r5, r12
	setlt.u r5, r28, r5
	and r7, r16, r23
	and r6, r6, r25
	lui r23, 523264
	or r6, r7, r6
	or r5, r5, r6
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r5, zero, .LBB0_86
# %bb.85:                               # %vector.body164
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 8(r24)
.LBB0_86:                               # %vector.body164
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r5, 12(r11)
	loads.w r2, 12(r2)
	and r5, r5, r3
	and r2, r2, r3
	seteq r6, r5, r28
	seteq r7, r2, zero
	seteq r11, r2, r28
	seteq r12, r5, zero
	max.u r2, r5, r2
	setlt.u r2, r28, r2
	and r5, r6, r7
	and r6, r12, r11
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r2, zero, .LBB0_79
# %bb.87:                               # %vector.body164
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r24)
	j .LBB0_79
.LBB0_88:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 183 7 is_stmt 1               # parallel-rne.mlir:183:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	load.d r[24:25], -56(r30)               # 8-byte Folded Reload
	loadli.w r26,  -48(r30)                 # 4-byte Folded Reload
	.loc	1 219 7                         # parallel-rne.mlir:219:7
	beq r26, zero, .LBB0_33
.LBB0_89:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -64(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -68(r30)                  # 4-byte Folded Reload
	.loc	1 219 7                         # parallel-rne.mlir:219:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	loadli.w r4,  -60(r30)                  # 4-byte Folded Reload
	or r2, r2, r4
	storeli.w r2, -36(r30)                  # 4-byte Folded Spill
	addli r2, zero, 8
	zext_int2long r[4:5], r2
	j .LBB0_91
.LBB0_90:                               # %middle.block155
                                        #   in Loop: Header=BB0_91 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 11
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r16, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 227 9 is_stmt 1               # parallel-rne.mlir:227:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_114
.LBB0_91:                               # %.preheader31
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_93 Depth 3
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	sll.d r[26:27], r[4:5], r16
	zext_int2long r[17:18], zero
	store.d r[4:5], -32(r30)                # 8-byte Folded Spill
	bneq r2, zero, .LBB0_93
	j .LBB0_106
.LBB0_92:                               # %scalar.ph147
                                        #   in Loop: Header=BB0_93 Depth=3
	setlt.ul r5, r[17:18], r[9:10]
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	add.s r2, r19, r2
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	addli.d r[17:18], r[17:18], 1
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	stores.w r4, 0(r2)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	beq r5, zero, .LBB0_90
.LBB0_93:                               # %scalar.ph147
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_91 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[4:5], r[17:18], r[26:27]
	lui r15, 523264
	slli r2, r4, 2
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.s r4, r20, r2
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	add.s r5, r21, r2
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	loads.w r4, 0(r4)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	loads.w r16, 0(r5)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r8, r4, r3
	lui r4, 523264
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r8, r28, .LBB0_95
# %bb.94:                               # %scalar.ph147
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_95:                               # %scalar.ph147
                                        #   in Loop: Header=BB0_93 Depth=3
	add.s r5, r1, r2
	loads.w r5, 0(r5)
	and r11, r5, r3
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r11, zero, .LBB0_103
# %bb.96:                               # %scalar.ph147
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r16, 523264
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r8, zero, .LBB0_104
.LBB0_97:                               # %scalar.ph147
                                        #   in Loop: Header=BB0_93 Depth=3
	beq r11, r28, .LBB0_99
.LBB0_98:                               # %scalar.ph147
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_99:                               # %scalar.ph147
                                        #   in Loop: Header=BB0_93 Depth=3
	setlt.u r5, r28, r8
	lui r8, 523264
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r5, zero, .LBB0_101
# %bb.100:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
.LBB0_101:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_93 Depth=3
	setlt.u r5, r28, r11
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r5, zero, .LBB0_92
# %bb.102:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r8, 0
	j .LBB0_92
.LBB0_103:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_93 Depth=3
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r8, zero, .LBB0_97
.LBB0_104:                              # %scalar.ph147
                                        #   in Loop: Header=BB0_93 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r11, r28, .LBB0_98
	j .LBB0_99
.LBB0_105:                              # %vector.body149
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	add.s r5, r19, r8
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	seteq.d r2, r[17:18], r[13:14]
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	stores.w r4, 12(r5)
	stores.w r23, 8(r5)
	stores.w r22, 4(r5)
	stores.w r15, 0(r5)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	bneq r2, zero, .LBB0_90
.LBB0_106:                              # %vector.body149
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_91 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[11:12], r[17:18], r[26:27]
	slli r8, r11, 2
	add.s r11, r1, r8
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	add.s r2, r20, r8
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	add.s r24, r21, r8
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	loads.w r4, 0(r11)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	loads.w r12, 0(r2)
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r4, r4, r3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r12, r12, r3
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	seteq r15, r4, r28
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	seteq r23, r4, zero
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	seteq r16, r12, zero
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	seteq r22, r12, r28
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	max.u r4, r4, r12
	setlt.u r4, r28, r4
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	and r12, r15, r16
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	and r15, r23, r22
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	or r12, r12, r15
	lui r15, 523264
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	or r12, r4, r12
	lui r4, 523264
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r12, zero, .LBB0_108
# %bb.107:                              # %vector.body149
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r24)
.LBB0_108:                              # %vector.body149
                                        #   in Loop: Header=BB0_106 Depth=3
	loads.w r12, 4(r11)
	loads.w r16, 4(r2)
	and r12, r12, r3
	and r16, r16, r3
	seteq r22, r12, r28
	seteq r5, r12, zero
	seteq r25, r16, r28
	seteq r23, r16, zero
	max.u r12, r12, r16
	setlt.u r12, r28, r12
	and r16, r22, r23
	and r5, r5, r25
	lui r22, 523264
	or r5, r16, r5
	or r5, r12, r5
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r5, zero, .LBB0_110
# %bb.109:                              # %vector.body149
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 4(r24)
.LBB0_110:                              # %vector.body149
                                        #   in Loop: Header=BB0_106 Depth=3
	loads.w r5, 8(r11)
	loads.w r12, 8(r2)
	and r5, r5, r3
	and r12, r12, r3
	seteq r16, r5, r28
	seteq r23, r12, zero
	seteq r6, r5, zero
	seteq r25, r12, r28
	max.u r5, r5, r12
	setlt.u r5, r28, r5
	and r7, r16, r23
	and r6, r6, r25
	lui r23, 523264
	or r6, r7, r6
	or r5, r5, r6
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r5, zero, .LBB0_112
# %bb.111:                              # %vector.body149
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 8(r24)
.LBB0_112:                              # %vector.body149
                                        #   in Loop: Header=BB0_106 Depth=3
	loads.w r5, 12(r11)
	loads.w r2, 12(r2)
	and r5, r5, r3
	and r2, r2, r3
	seteq r6, r5, r28
	seteq r7, r2, zero
	seteq r11, r2, r28
	seteq r12, r5, zero
	max.u r2, r5, r2
	setlt.u r2, r28, r2
	and r5, r6, r7
	and r6, r12, r11
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r2, zero, .LBB0_105
# %bb.113:                              # %vector.body149
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r24)
	j .LBB0_105
.LBB0_114:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 219 7 is_stmt 1               # parallel-rne.mlir:219:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	load.d r[24:25], -56(r30)               # 8-byte Folded Reload
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	loadli.w r2,  -72(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_34
.LBB0_115:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -64(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -68(r30)                  # 4-byte Folded Reload
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	loadli.w r4,  -60(r30)                  # 4-byte Folded Reload
	or r2, r2, r4
	storeli.w r2, -36(r30)                  # 4-byte Folded Spill
	addli r2, zero, 12
	zext_int2long r[4:5], r2
	j .LBB0_117
.LBB0_116:                              # %middle.block140
                                        #   in Loop: Header=BB0_117 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r16, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 263 9 is_stmt 1               # parallel-rne.mlir:263:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_140
.LBB0_117:                              # %.preheader30
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_132 Depth 3
                                        #       Child Loop BB0_119 Depth 3
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	sll.d r[26:27], r[4:5], r16
	zext_int2long r[17:18], zero
	store.d r[4:5], -32(r30)                # 8-byte Folded Spill
	bneq r2, zero, .LBB0_119
	j .LBB0_132
.LBB0_118:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_119 Depth=3
	setlt.ul r5, r[17:18], r[9:10]
	.loc	1 286 13                        # parallel-rne.mlir:286:13
	add.s r2, r19, r2
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	addli.d r[17:18], r[17:18], 1
	.loc	1 286 13                        # parallel-rne.mlir:286:13
	stores.w r4, 0(r2)
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	beq r5, zero, .LBB0_116
.LBB0_119:                              # %scalar.ph132
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_117 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	add.ul r[4:5], r[17:18], r[26:27]
	lui r15, 523264
	slli r2, r4, 2
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	add.s r4, r20, r2
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	add.s r5, r21, r2
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	loads.w r4, 0(r4)
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	loads.w r16, 0(r5)
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	and r8, r4, r3
	lui r4, 523264
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	beq r8, r28, .LBB0_121
# %bb.120:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_121:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_119 Depth=3
	add.s r5, r1, r2
	loads.w r5, 0(r5)
	and r11, r5, r3
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r11, zero, .LBB0_129
# %bb.122:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r16, 523264
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r8, zero, .LBB0_130
.LBB0_123:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_119 Depth=3
	beq r11, r28, .LBB0_125
.LBB0_124:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_125:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_119 Depth=3
	setlt.u r5, r28, r8
	lui r8, 523264
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r5, zero, .LBB0_127
# %bb.126:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
.LBB0_127:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_119 Depth=3
	setlt.u r5, r28, r11
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r5, zero, .LBB0_118
# %bb.128:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r8, 0
	j .LBB0_118
.LBB0_129:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_119 Depth=3
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	beq r8, zero, .LBB0_123
.LBB0_130:                              # %scalar.ph132
                                        #   in Loop: Header=BB0_119 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r11, r28, .LBB0_124
	j .LBB0_125
.LBB0_131:                              # %vector.body134
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 264 11 is_stmt 1              # parallel-rne.mlir:264:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 286 13                        # parallel-rne.mlir:286:13
	add.s r5, r19, r8
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	seteq.d r2, r[17:18], r[13:14]
	.loc	1 286 13                        # parallel-rne.mlir:286:13
	stores.w r4, 12(r5)
	stores.w r23, 8(r5)
	stores.w r22, 4(r5)
	stores.w r15, 0(r5)
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	bneq r2, zero, .LBB0_116
.LBB0_132:                              # %vector.body134
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_117 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	add.ul r[11:12], r[17:18], r[26:27]
	slli r8, r11, 2
	add.s r11, r1, r8
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	add.s r2, r20, r8
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	add.s r24, r21, r8
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	loads.w r4, 0(r11)
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	loads.w r12, 0(r2)
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	and r4, r4, r3
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	and r12, r12, r3
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	seteq r15, r4, r28
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	seteq r23, r4, zero
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	seteq r16, r12, zero
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	seteq r22, r12, r28
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	max.u r4, r4, r12
	setlt.u r4, r28, r4
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	and r12, r15, r16
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	and r15, r23, r22
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	or r12, r12, r15
	lui r15, 523264
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	or r12, r4, r12
	lui r4, 523264
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r12, zero, .LBB0_134
# %bb.133:                              # %vector.body134
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r24)
.LBB0_134:                              # %vector.body134
                                        #   in Loop: Header=BB0_132 Depth=3
	loads.w r12, 4(r11)
	loads.w r16, 4(r2)
	and r12, r12, r3
	and r16, r16, r3
	seteq r22, r12, r28
	seteq r5, r12, zero
	seteq r25, r16, r28
	seteq r23, r16, zero
	max.u r12, r12, r16
	setlt.u r12, r28, r12
	and r16, r22, r23
	and r5, r5, r25
	lui r22, 523264
	or r5, r16, r5
	or r5, r12, r5
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r5, zero, .LBB0_136
# %bb.135:                              # %vector.body134
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 4(r24)
.LBB0_136:                              # %vector.body134
                                        #   in Loop: Header=BB0_132 Depth=3
	loads.w r5, 8(r11)
	loads.w r12, 8(r2)
	and r5, r5, r3
	and r12, r12, r3
	seteq r16, r5, r28
	seteq r23, r12, zero
	seteq r6, r5, zero
	seteq r25, r12, r28
	max.u r5, r5, r12
	setlt.u r5, r28, r5
	and r7, r16, r23
	and r6, r6, r25
	lui r23, 523264
	or r6, r7, r6
	or r5, r5, r6
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r5, zero, .LBB0_138
# %bb.137:                              # %vector.body134
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 8(r24)
.LBB0_138:                              # %vector.body134
                                        #   in Loop: Header=BB0_132 Depth=3
	loads.w r5, 12(r11)
	loads.w r2, 12(r2)
	and r5, r5, r3
	and r2, r2, r3
	seteq r6, r5, r28
	seteq r7, r2, zero
	seteq r11, r2, r28
	seteq r12, r5, zero
	max.u r2, r5, r2
	setlt.u r2, r28, r2
	and r5, r6, r7
	and r6, r12, r11
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	bneq r2, zero, .LBB0_131
# %bb.139:                              # %vector.body134
                                        #   in Loop: Header=BB0_132 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r24)
	j .LBB0_131
.LBB0_140:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 255 7 is_stmt 1               # parallel-rne.mlir:255:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	load.d r[24:25], -56(r30)               # 8-byte Folded Reload
	.loc	1 291 7                         # parallel-rne.mlir:291:7
	addli r2, zero, 4
	bneq r11, r2, .LBB0_35
.LBB0_141:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -64(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -68(r30)                  # 4-byte Folded Reload
	.loc	1 291 7                         # parallel-rne.mlir:291:7
	xfence
	mfence { lm, sm, gm }
	loadli.w r5,  -60(r30)                  # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	or r2, r2, r5
	zext_int2long r[4:5], r4
	storeli.w r2, -36(r30)                  # 4-byte Folded Spill
	j .LBB0_143
.LBB0_142:                              # %middle.block125
                                        #   in Loop: Header=BB0_143 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 19
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r16, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 299 9 is_stmt 1               # parallel-rne.mlir:299:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_166
.LBB0_143:                              # %.preheader29
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_158 Depth 3
                                        #       Child Loop BB0_145 Depth 3
	.loc	1 300 11                        # parallel-rne.mlir:300:11
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	sll.d r[26:27], r[4:5], r16
	zext_int2long r[17:18], zero
	store.d r[4:5], -32(r30)                # 8-byte Folded Spill
	bneq r2, zero, .LBB0_145
	j .LBB0_158
.LBB0_144:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_145 Depth=3
	setlt.ul r5, r[17:18], r[9:10]
	.loc	1 322 13                        # parallel-rne.mlir:322:13
	add.s r2, r19, r2
	.loc	1 300 11                        # parallel-rne.mlir:300:11
	addli.d r[17:18], r[17:18], 1
	.loc	1 322 13                        # parallel-rne.mlir:322:13
	stores.w r4, 0(r2)
	.loc	1 300 11                        # parallel-rne.mlir:300:11
	beq r5, zero, .LBB0_142
.LBB0_145:                              # %scalar.ph117
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_143 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	add.ul r[4:5], r[17:18], r[26:27]
	lui r15, 523264
	slli r2, r4, 2
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	add.s r4, r20, r2
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.s r5, r21, r2
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	loads.w r4, 0(r4)
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	loads.w r16, 0(r5)
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	and r8, r4, r3
	lui r4, 523264
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	beq r8, r28, .LBB0_147
# %bb.146:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_147:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_145 Depth=3
	add.s r5, r1, r2
	loads.w r5, 0(r5)
	and r11, r5, r3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r11, zero, .LBB0_155
# %bb.148:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r16, 523264
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r8, zero, .LBB0_156
.LBB0_149:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_145 Depth=3
	beq r11, r28, .LBB0_151
.LBB0_150:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_151:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_145 Depth=3
	setlt.u r5, r28, r8
	lui r8, 523264
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r5, zero, .LBB0_153
# %bb.152:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
.LBB0_153:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_145 Depth=3
	setlt.u r5, r28, r11
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r5, zero, .LBB0_144
# %bb.154:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r8, 0
	j .LBB0_144
.LBB0_155:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_145 Depth=3
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	beq r8, zero, .LBB0_149
.LBB0_156:                              # %scalar.ph117
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r11, r28, .LBB0_150
	j .LBB0_151
.LBB0_157:                              # %vector.body119
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 300 11 is_stmt 1              # parallel-rne.mlir:300:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 322 13                        # parallel-rne.mlir:322:13
	add.s r5, r19, r8
	.loc	1 300 11                        # parallel-rne.mlir:300:11
	seteq.d r2, r[17:18], r[13:14]
	.loc	1 322 13                        # parallel-rne.mlir:322:13
	stores.w r4, 12(r5)
	stores.w r23, 8(r5)
	stores.w r22, 4(r5)
	stores.w r15, 0(r5)
	.loc	1 300 11                        # parallel-rne.mlir:300:11
	bneq r2, zero, .LBB0_142
.LBB0_158:                              # %vector.body119
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_143 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	add.ul r[11:12], r[17:18], r[26:27]
	slli r8, r11, 2
	add.s r11, r1, r8
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	add.s r2, r20, r8
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	add.s r24, r21, r8
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	loads.w r4, 0(r11)
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	loads.w r12, 0(r2)
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	and r4, r4, r3
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	and r12, r12, r3
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	seteq r15, r4, r28
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	seteq r23, r4, zero
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	seteq r16, r12, zero
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	seteq r22, r12, r28
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	max.u r4, r4, r12
	setlt.u r4, r28, r4
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	and r12, r15, r16
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	and r15, r23, r22
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	or r12, r12, r15
	lui r15, 523264
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	or r12, r4, r12
	lui r4, 523264
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r12, zero, .LBB0_160
# %bb.159:                              # %vector.body119
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r24)
.LBB0_160:                              # %vector.body119
                                        #   in Loop: Header=BB0_158 Depth=3
	loads.w r12, 4(r11)
	loads.w r16, 4(r2)
	and r12, r12, r3
	and r16, r16, r3
	seteq r22, r12, r28
	seteq r5, r12, zero
	seteq r25, r16, r28
	seteq r23, r16, zero
	max.u r12, r12, r16
	setlt.u r12, r28, r12
	and r16, r22, r23
	and r5, r5, r25
	lui r22, 523264
	or r5, r16, r5
	or r5, r12, r5
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r5, zero, .LBB0_162
# %bb.161:                              # %vector.body119
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 4(r24)
.LBB0_162:                              # %vector.body119
                                        #   in Loop: Header=BB0_158 Depth=3
	loads.w r5, 8(r11)
	loads.w r12, 8(r2)
	and r5, r5, r3
	and r12, r12, r3
	seteq r16, r5, r28
	seteq r23, r12, zero
	seteq r6, r5, zero
	seteq r25, r12, r28
	max.u r5, r5, r12
	setlt.u r5, r28, r5
	and r7, r16, r23
	and r6, r6, r25
	lui r23, 523264
	or r6, r7, r6
	or r5, r5, r6
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r5, zero, .LBB0_164
# %bb.163:                              # %vector.body119
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 8(r24)
.LBB0_164:                              # %vector.body119
                                        #   in Loop: Header=BB0_158 Depth=3
	loads.w r5, 12(r11)
	loads.w r2, 12(r2)
	and r5, r5, r3
	and r2, r2, r3
	seteq r6, r5, r28
	seteq r7, r2, zero
	seteq r11, r2, r28
	seteq r12, r5, zero
	max.u r2, r5, r2
	setlt.u r2, r28, r2
	and r5, r6, r7
	and r6, r12, r11
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r2, zero, .LBB0_157
# %bb.165:                              # %vector.body119
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r24)
	j .LBB0_157
.LBB0_166:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 291 7 is_stmt 1               # parallel-rne.mlir:291:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	load.d r[24:25], -56(r30)               # 8-byte Folded Reload
	.loc	1 327 7                         # parallel-rne.mlir:327:7
	addli r2, zero, 5
	bneq r11, r2, .LBB0_36
.LBB0_167:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -64(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -68(r30)                  # 4-byte Folded Reload
	.loc	1 327 7                         # parallel-rne.mlir:327:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	loadli.w r4,  -60(r30)                  # 4-byte Folded Reload
	or r2, r2, r4
	storeli.w r2, -36(r30)                  # 4-byte Folded Spill
	addli r2, zero, 20
	zext_int2long r[4:5], r2
	j .LBB0_169
.LBB0_168:                              # %middle.block110
                                        #   in Loop: Header=BB0_169 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 23
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r16, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 335 9 is_stmt 1               # parallel-rne.mlir:335:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_192
.LBB0_169:                              # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_184 Depth 3
                                        #       Child Loop BB0_171 Depth 3
	.loc	1 336 11                        # parallel-rne.mlir:336:11
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	sll.d r[26:27], r[4:5], r16
	zext_int2long r[17:18], zero
	store.d r[4:5], -32(r30)                # 8-byte Folded Spill
	bneq r2, zero, .LBB0_171
	j .LBB0_184
.LBB0_170:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_171 Depth=3
	setlt.ul r5, r[17:18], r[9:10]
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	add.s r2, r19, r2
	.loc	1 336 11                        # parallel-rne.mlir:336:11
	addli.d r[17:18], r[17:18], 1
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	stores.w r4, 0(r2)
	.loc	1 336 11                        # parallel-rne.mlir:336:11
	beq r5, zero, .LBB0_168
.LBB0_171:                              # %scalar.ph102
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_169 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	add.ul r[4:5], r[17:18], r[26:27]
	lui r15, 523264
	slli r2, r4, 2
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	add.s r4, r20, r2
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	add.s r5, r21, r2
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	loads.w r4, 0(r4)
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	loads.w r16, 0(r5)
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r8, r4, r3
	lui r4, 523264
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	beq r8, r28, .LBB0_173
# %bb.172:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_173:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_171 Depth=3
	add.s r5, r1, r2
	loads.w r5, 0(r5)
	and r11, r5, r3
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r11, zero, .LBB0_181
# %bb.174:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r16, 523264
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r8, zero, .LBB0_182
.LBB0_175:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_171 Depth=3
	beq r11, r28, .LBB0_177
.LBB0_176:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_177:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_171 Depth=3
	setlt.u r5, r28, r8
	lui r8, 523264
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r5, zero, .LBB0_179
# %bb.178:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
.LBB0_179:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_171 Depth=3
	setlt.u r5, r28, r11
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r5, zero, .LBB0_170
# %bb.180:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r8, 0
	j .LBB0_170
.LBB0_181:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_171 Depth=3
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	beq r8, zero, .LBB0_175
.LBB0_182:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r11, r28, .LBB0_176
	j .LBB0_177
.LBB0_183:                              # %vector.body104
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 336 11 is_stmt 1              # parallel-rne.mlir:336:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	add.s r5, r19, r8
	.loc	1 336 11                        # parallel-rne.mlir:336:11
	seteq.d r2, r[17:18], r[13:14]
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	stores.w r4, 12(r5)
	stores.w r23, 8(r5)
	stores.w r22, 4(r5)
	stores.w r15, 0(r5)
	.loc	1 336 11                        # parallel-rne.mlir:336:11
	bneq r2, zero, .LBB0_168
.LBB0_184:                              # %vector.body104
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_169 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	add.ul r[11:12], r[17:18], r[26:27]
	slli r8, r11, 2
	add.s r11, r1, r8
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	add.s r2, r20, r8
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	add.s r24, r21, r8
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	loads.w r4, 0(r11)
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	loads.w r12, 0(r2)
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r4, r4, r3
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r12, r12, r3
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	seteq r15, r4, r28
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	seteq r23, r4, zero
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	seteq r16, r12, zero
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	seteq r22, r12, r28
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	max.u r4, r4, r12
	setlt.u r4, r28, r4
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	and r12, r15, r16
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	and r15, r23, r22
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	or r12, r12, r15
	lui r15, 523264
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	or r12, r4, r12
	lui r4, 523264
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r12, zero, .LBB0_186
# %bb.185:                              # %vector.body104
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r24)
.LBB0_186:                              # %vector.body104
                                        #   in Loop: Header=BB0_184 Depth=3
	loads.w r12, 4(r11)
	loads.w r16, 4(r2)
	and r12, r12, r3
	and r16, r16, r3
	seteq r22, r12, r28
	seteq r5, r12, zero
	seteq r25, r16, r28
	seteq r23, r16, zero
	max.u r12, r12, r16
	setlt.u r12, r28, r12
	and r16, r22, r23
	and r5, r5, r25
	lui r22, 523264
	or r5, r16, r5
	or r5, r12, r5
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r5, zero, .LBB0_188
# %bb.187:                              # %vector.body104
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 4(r24)
.LBB0_188:                              # %vector.body104
                                        #   in Loop: Header=BB0_184 Depth=3
	loads.w r5, 8(r11)
	loads.w r12, 8(r2)
	and r5, r5, r3
	and r12, r12, r3
	seteq r16, r5, r28
	seteq r23, r12, zero
	seteq r6, r5, zero
	seteq r25, r12, r28
	max.u r5, r5, r12
	setlt.u r5, r28, r5
	and r7, r16, r23
	and r6, r6, r25
	lui r23, 523264
	or r6, r7, r6
	or r5, r5, r6
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r5, zero, .LBB0_190
# %bb.189:                              # %vector.body104
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 8(r24)
.LBB0_190:                              # %vector.body104
                                        #   in Loop: Header=BB0_184 Depth=3
	loads.w r5, 12(r11)
	loads.w r2, 12(r2)
	and r5, r5, r3
	and r2, r2, r3
	seteq r6, r5, r28
	seteq r7, r2, zero
	seteq r11, r2, r28
	seteq r12, r5, zero
	max.u r2, r5, r2
	setlt.u r2, r28, r2
	and r5, r6, r7
	and r6, r12, r11
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r2, zero, .LBB0_183
# %bb.191:                              # %vector.body104
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r24)
	j .LBB0_183
.LBB0_192:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 327 7 is_stmt 1               # parallel-rne.mlir:327:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	load.d r[24:25], -56(r30)               # 8-byte Folded Reload
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	addli r2, zero, 6
	bneq r11, r2, .LBB0_219
.LBB0_193:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -64(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -68(r30)                  # 4-byte Folded Reload
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	loadli.w r4,  -60(r30)                  # 4-byte Folded Reload
	or r2, r2, r4
	storeli.w r2, -36(r30)                  # 4-byte Folded Spill
	addli r2, zero, 24
	zext_int2long r[4:5], r2
	j .LBB0_195
.LBB0_194:                              # %middle.block95
                                        #   in Loop: Header=BB0_195 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 27
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r16, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 371 9 is_stmt 1               # parallel-rne.mlir:371:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_218
.LBB0_195:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_197 Depth 3
	.loc	1 372 11                        # parallel-rne.mlir:372:11
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	sll.d r[26:27], r[4:5], r16
	zext_int2long r[17:18], zero
	store.d r[4:5], -32(r30)                # 8-byte Folded Spill
	bneq r2, zero, .LBB0_197
	j .LBB0_210
.LBB0_196:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_197 Depth=3
	setlt.ul r5, r[17:18], r[9:10]
	.loc	1 394 13                        # parallel-rne.mlir:394:13
	add.s r2, r19, r2
	.loc	1 372 11                        # parallel-rne.mlir:372:11
	addli.d r[17:18], r[17:18], 1
	.loc	1 394 13                        # parallel-rne.mlir:394:13
	stores.w r4, 0(r2)
	.loc	1 372 11                        # parallel-rne.mlir:372:11
	beq r5, zero, .LBB0_194
.LBB0_197:                              # %scalar.ph87
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_195 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	add.ul r[4:5], r[17:18], r[26:27]
	lui r15, 523264
	slli r2, r4, 2
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	add.s r4, r20, r2
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	add.s r5, r21, r2
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	loads.w r4, 0(r4)
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	loads.w r16, 0(r5)
	.loc	1 378 19                        # parallel-rne.mlir:378:19
	and r8, r4, r3
	lui r4, 523264
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	beq r8, r28, .LBB0_199
# %bb.198:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
.LBB0_199:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_197 Depth=3
	add.s r5, r1, r2
	loads.w r5, 0(r5)
	and r11, r5, r3
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	bneq r11, zero, .LBB0_207
# %bb.200:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r16, 523264
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	bneq r8, zero, .LBB0_208
.LBB0_201:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_197 Depth=3
	beq r11, r28, .LBB0_203
.LBB0_202:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
.LBB0_203:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_197 Depth=3
	setlt.u r5, r28, r8
	lui r8, 523264
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	bneq r5, zero, .LBB0_205
# %bb.204:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r16, 0
.LBB0_205:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_197 Depth=3
	setlt.u r5, r28, r11
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	bneq r5, zero, .LBB0_196
# %bb.206:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r8, 0
	j .LBB0_196
.LBB0_207:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_197 Depth=3
	addli r15, r16, 0
	lui r16, 523264
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	beq r8, zero, .LBB0_201
.LBB0_208:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r15, 0
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	bneq r11, r28, .LBB0_202
	j .LBB0_203
.LBB0_209:                              # %vector.body89
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 372 11 is_stmt 1              # parallel-rne.mlir:372:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 394 13                        # parallel-rne.mlir:394:13
	add.s r5, r19, r8
	.loc	1 372 11                        # parallel-rne.mlir:372:11
	seteq.d r2, r[17:18], r[13:14]
	.loc	1 394 13                        # parallel-rne.mlir:394:13
	stores.w r4, 12(r5)
	stores.w r23, 8(r5)
	stores.w r22, 4(r5)
	stores.w r15, 0(r5)
	.loc	1 372 11                        # parallel-rne.mlir:372:11
	bneq r2, zero, .LBB0_194
.LBB0_210:                              # %vector.body89
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_195 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	add.ul r[11:12], r[17:18], r[26:27]
	slli r8, r11, 2
	add.s r11, r1, r8
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	add.s r2, r20, r8
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	add.s r24, r21, r8
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	loads.w r4, 0(r11)
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	loads.w r12, 0(r2)
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	and r4, r4, r3
	.loc	1 378 19                        # parallel-rne.mlir:378:19
	and r12, r12, r3
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	seteq r15, r4, r28
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	seteq r23, r4, zero
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	seteq r16, r12, zero
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	seteq r22, r12, r28
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	max.u r4, r4, r12
	setlt.u r4, r28, r4
	.loc	1 383 19                        # parallel-rne.mlir:383:19
	and r12, r15, r16
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	and r15, r23, r22
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	or r12, r12, r15
	lui r15, 523264
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	or r12, r4, r12
	lui r4, 523264
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	bneq r12, zero, .LBB0_212
# %bb.211:                              # %vector.body89
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r24)
.LBB0_212:                              # %vector.body89
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r12, 4(r11)
	loads.w r16, 4(r2)
	and r12, r12, r3
	and r16, r16, r3
	seteq r22, r12, r28
	seteq r5, r12, zero
	seteq r25, r16, r28
	seteq r23, r16, zero
	max.u r12, r12, r16
	setlt.u r12, r28, r12
	and r16, r22, r23
	and r5, r5, r25
	lui r22, 523264
	or r5, r16, r5
	or r5, r12, r5
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	bneq r5, zero, .LBB0_214
# %bb.213:                              # %vector.body89
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r22, 4(r24)
.LBB0_214:                              # %vector.body89
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r5, 8(r11)
	loads.w r12, 8(r2)
	and r5, r5, r3
	and r12, r12, r3
	seteq r16, r5, r28
	seteq r23, r12, zero
	seteq r6, r5, zero
	seteq r25, r12, r28
	max.u r5, r5, r12
	setlt.u r5, r28, r5
	and r7, r16, r23
	and r6, r6, r25
	lui r23, 523264
	or r6, r7, r6
	or r5, r5, r6
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	bneq r5, zero, .LBB0_216
# %bb.215:                              # %vector.body89
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 8(r24)
.LBB0_216:                              # %vector.body89
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r5, 12(r11)
	loads.w r2, 12(r2)
	and r5, r5, r3
	and r2, r2, r3
	seteq r6, r5, r28
	seteq r7, r2, zero
	seteq r11, r2, r28
	seteq r12, r5, zero
	max.u r2, r5, r2
	setlt.u r2, r28, r2
	and r5, r6, r7
	and r6, r12, r11
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	bneq r2, zero, .LBB0_209
# %bb.217:                              # %vector.body89
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r24)
	j .LBB0_209
.LBB0_218:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 363 7 is_stmt 1               # parallel-rne.mlir:363:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	load.d r[24:25], -56(r30)               # 8-byte Folded Reload
.LBB0_219:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 399 7                         # parallel-rne.mlir:399:7
	loadli.w r2,  -96(r30)                  # 4-byte Folded Reload
	zext_int2long r[4:5], zero
	store.d r[4:5], -48(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_248
# %bb.220:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -64(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -68(r30)                  # 4-byte Folded Reload
	.loc	1 399 7                         # parallel-rne.mlir:399:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	loadli.w r4,  -60(r30)                  # 4-byte Folded Reload
	or r2, r2, r4
	storeli.w r2, -36(r30)                  # 4-byte Folded Spill
	addli r2, zero, 28
	zext_int2long r[4:5], r2
	j .LBB0_222
.LBB0_221:                              # %middle.block
                                        #   in Loop: Header=BB0_222 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[6:7], -32(r30)                 # 8-byte Folded Reload
	addli r16, zero, 7
	zext_int2long r[4:5], r2
	.loc	1 407 9 is_stmt 1               # parallel-rne.mlir:407:9
	setlt.ul r2, r[6:7], r[4:5]
	addli.d r[4:5], r[6:7], 1
	beq r2, zero, .LBB0_247
.LBB0_222:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_239 Depth 3
                                        #       Child Loop BB0_225 Depth 3
	.loc	1 408 11                        # parallel-rne.mlir:408:11
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	sll.d r[26:27], r[4:5], r16
	store.d r[4:5], -32(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_237
# %bb.223:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_222 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[17:18], zero
	j .LBB0_225
.LBB0_224:                              # %scalar.ph
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 408 11                        # parallel-rne.mlir:408:11
	setlt.ul r2, r[17:18], r[9:10]
	.loc	1 430 13 is_stmt 1              # parallel-rne.mlir:430:13
	add.s r4, r19, r4
	.loc	1 408 11                        # parallel-rne.mlir:408:11
	addli.d r[17:18], r[17:18], 1
	.loc	1 430 13                        # parallel-rne.mlir:430:13
	stores.w r11, 0(r4)
	.loc	1 408 11                        # parallel-rne.mlir:408:11
	beq r2, zero, .LBB0_221
.LBB0_225:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_222 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	add.ul r[4:5], r[17:18], r[26:27]
	lui r11, 523264
	lui r22, 523264
	slli r4, r4, 2
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	add.s r2, r20, r4
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	add.s r5, r21, r4
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	loads.w r2, 0(r2)
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	loads.w r23, 0(r5)
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	and r15, r2, r3
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	beq r15, r28, .LBB0_227
# %bb.226:                              # %scalar.ph
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r22, r23, 0
.LBB0_227:                              # %scalar.ph
                                        #   in Loop: Header=BB0_225 Depth=3
	add.s r2, r1, r4
	loads.w r2, 0(r2)
	and r16, r2, r3
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r16, zero, .LBB0_235
# %bb.228:                              # %scalar.ph
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r23, 523264
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r15, zero, .LBB0_236
.LBB0_229:                              # %scalar.ph
                                        #   in Loop: Header=BB0_225 Depth=3
	beq r16, r28, .LBB0_231
.LBB0_230:                              # %scalar.ph
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
.LBB0_231:                              # %scalar.ph
                                        #   in Loop: Header=BB0_225 Depth=3
	setlt.u r2, r28, r15
	lui r15, 523264
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r2, zero, .LBB0_233
# %bb.232:                              # %scalar.ph
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r23, 0
.LBB0_233:                              # %scalar.ph
                                        #   in Loop: Header=BB0_225 Depth=3
	setlt.u r2, r28, r16
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r2, zero, .LBB0_224
# %bb.234:                              # %scalar.ph
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r15, 0
	j .LBB0_224
.LBB0_235:                              # %scalar.ph
                                        #   in Loop: Header=BB0_225 Depth=3
	addli r22, r23, 0
	lui r23, 523264
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	beq r15, zero, .LBB0_229
.LBB0_236:                              # %scalar.ph
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r16, r28, .LBB0_230
	j .LBB0_231
.LBB0_237:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_222 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	load.d r[17:18], -48(r30)               # 8-byte Folded Reload
	j .LBB0_239
.LBB0_238:                              # %vector.body
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 408 11 is_stmt 1              # parallel-rne.mlir:408:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 430 13                        # parallel-rne.mlir:430:13
	add.s r5, r19, r15
	.loc	1 408 11                        # parallel-rne.mlir:408:11
	seteq.d r2, r[17:18], r[13:14]
	.loc	1 430 13                        # parallel-rne.mlir:430:13
	stores.w r11, 12(r5)
	stores.w r16, 8(r5)
	stores.w r23, 4(r5)
	stores.w r4, 0(r5)
	.loc	1 408 11                        # parallel-rne.mlir:408:11
	bneq r2, zero, .LBB0_221
.LBB0_239:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_222 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	add.ul r[11:12], r[17:18], r[26:27]
	slli r15, r11, 2
	add.s r24, r1, r15
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	add.s r22, r20, r15
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	loads.w r4, 0(r24)
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	loads.w r11, 0(r22)
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	and r4, r4, r3
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	and r11, r11, r3
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	seteq r12, r4, r28
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	seteq r25, r4, zero
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	seteq r16, r11, zero
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	seteq r23, r11, r28
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	max.u r4, r4, r11
	setlt.u r4, r28, r4
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	and r11, r12, r16
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	and r12, r25, r23
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	add.s r25, r21, r15
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	or r11, r11, r12
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	or r12, r4, r11
	lui r11, 523264
	lui r4, 523264
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r12, zero, .LBB0_241
# %bb.240:                              # %vector.body
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r4, 0(r25)
.LBB0_241:                              # %vector.body
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r12, 4(r24)
	loads.w r16, 4(r22)
	and r12, r12, r3
	and r16, r16, r3
	seteq r23, r12, r28
	seteq r5, r16, zero
	seteq r2, r12, zero
	seteq r6, r16, r28
	max.u r12, r12, r16
	setlt.u r12, r28, r12
	and r5, r23, r5
	and r2, r2, r6
	lui r23, 523264
	or r2, r5, r2
	or r2, r12, r2
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r2, zero, .LBB0_243
# %bb.242:                              # %vector.body
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r25)
.LBB0_243:                              # %vector.body
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r2, 8(r24)
	loads.w r5, 8(r22)
	and r2, r2, r3
	and r5, r5, r3
	seteq r6, r2, r28
	seteq r7, r2, zero
	seteq r12, r5, zero
	seteq r16, r5, r28
	max.u r2, r2, r5
	setlt.u r2, r28, r2
	and r5, r6, r12
	and r6, r7, r16
	lui r16, 523264
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r2, zero, .LBB0_245
# %bb.244:                              # %vector.body
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 8(r25)
.LBB0_245:                              # %vector.body
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r2, 12(r24)
	loads.w r5, 12(r22)
	and r2, r2, r3
	and r5, r5, r3
	seteq r6, r2, r28
	seteq r12, r2, zero
	seteq r7, r5, zero
	seteq r8, r5, r28
	max.u r2, r2, r5
	setlt.u r2, r28, r2
	and r5, r6, r7
	and r6, r12, r8
	or r5, r5, r6
	or r2, r2, r5
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	bneq r2, zero, .LBB0_238
# %bb.246:                              # %vector.body
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r25)
	j .LBB0_238
.LBB0_247:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 399 7 is_stmt 1               # parallel-rne.mlir:399:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	load.d r[24:25], -56(r30)               # 8-byte Folded Reload
.LBB0_248:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 435 7                         # parallel-rne.mlir:435:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 436 7                         # parallel-rne.mlir:436:7
	loadli.w r1,  -72(r30)                  # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.249:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r10,  -76(r30)                 # 4-byte Folded Reload
	load.d r[12:13], -88(r30)               # 8-byte Folded Reload
	loadli.w r8,  -92(r30)                  # 4-byte Folded Reload
	addli r15, zero, 1
	addli r17, zero, 5
	addli r20, zero, 32
	addli r21, zero, 2
	addli r14, zero, 6
	.loc	1 447 7 is_stmt 1               # parallel-rne.mlir:447:7
	bneq r11, zero, .LBB0_6
# %bb.250:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -116(r30)                 # 4-byte Folded Reload
	load.d r[4:5], -48(r30)                 # 8-byte Folded Reload
	.loc	1 447 7                         # parallel-rne.mlir:447:7
	addli r6, zero, 15
	addli r18, zero, 19
	load.d r[22:23], 24(r30)
	sll.d r[6:7], r[24:25], r6
	addli r24, r8, 0
	load.d r[8:9], -104(r30)                # 8-byte Folded Reload
	xwait r18, 0
	lock zero, r17
	slli r1, r1, 5
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r15, zero, 1
	add.ul r[6:7], r[22:23], r[6:7]
	sext_int2long r[1:2], r1
	sll.d r[8:9], r[8:9], r21
	min.sl r[4:5], r[1:2], r[4:5]
	add.ul r[6:7], r[6:7], r[8:9]
	addli r8, r24, 0
	addli.d r[4:5], r[4:5], 32
	max.sl r[4:5], r[4:5], r[1:2]
	sub.sl r[1:2], r[4:5], r[1:2]
	zext_int2long r[4:5], r20
	.loc	1 443 13 is_stmt 1              # parallel-rne.mlir:443:13
	min.sl r[1:2], r[1:2], r[4:5]
	.loc	1 447 7                         # parallel-rne.mlir:447:7
	load.d r[4:5], -112(r30)                # 8-byte Folded Reload
	dma_cfg r7, zero, zero, 2
	slli r4, r4, 2
	addli r5, zero, 1024
	dma_cfg r6, r19, r4, 3
	addli r4, zero, 512
	dma_cfg r5, r4, r1, 4
	addli r1, zero, 20
	dma_run zero
	unlock r17
	xsignal r1, 0
	j .LBB0_6
.LBB0_251:                              # %._crit_edge
	.loc	1 449 5                         # parallel-rne.mlir:449:5
	xsignal zero, 0
	bneq r11, zero, .LBB0_253
# %bb.252:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 449 5                         # parallel-rne.mlir:449:5
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
.LBB0_253:
	.loc	1 450 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:450:5
	addli sp, sp, 144
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
	.long	208                             # 0xd0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-0kro0b2b" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
