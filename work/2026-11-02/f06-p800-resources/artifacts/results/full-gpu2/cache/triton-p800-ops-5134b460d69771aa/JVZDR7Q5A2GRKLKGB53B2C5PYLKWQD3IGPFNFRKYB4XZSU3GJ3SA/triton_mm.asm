	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-cjfj1s8t" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -152
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r10
	addli r30, sp, 88
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	unlock r2
	addli r2, zero, 5
	csr_set csr3, r1
	addli r1, zero, 11
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 3
	addli r2, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 7
	addli r2, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r1, r2, r1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r4, 0
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
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	ble.s r2, r1, .LBB0_231
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[8:9], r1
	lui r1, 524287
	addli r19, zero, 3
	addli r21, zero, 1
	addli r22, zero, 7
	lui r20, 522240
	lui r5, 1048560
	addli r7, zero, 0
	store.d r[2:3], -88(r30)                # 8-byte Folded Spill
	ori r25, r1, 4095
	lui r1, 7
	lui r2, 522239
	lui r3, 1024
	ori r26, r1, 4095
	ori r1, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 355 7                         # parallel-rne.mlir:355:7
	addli r2, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[8:9], -32(r30)                 # 8-byte Folded Reload
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	load.d r[6:7], -88(r30)                 # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	setlt.sl r2, r[8:9], r[6:7]
	loadli.w r7,  -20(r30)                  # 4-byte Folded Reload
	addli r7, r7, 1
	beq r2, zero, .LBB0_231
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_37 Depth 2
                                        #       Child Loop BB0_39 Depth 3
                                        #     Child Loop BB0_61 Depth 2
                                        #       Child Loop BB0_63 Depth 3
                                        #     Child Loop BB0_85 Depth 2
                                        #       Child Loop BB0_87 Depth 3
                                        #     Child Loop BB0_109 Depth 2
                                        #       Child Loop BB0_111 Depth 3
                                        #     Child Loop BB0_133 Depth 2
                                        #       Child Loop BB0_135 Depth 3
                                        #     Child Loop BB0_157 Depth 2
                                        #       Child Loop BB0_159 Depth 3
                                        #     Child Loop BB0_181 Depth 2
                                        #       Child Loop BB0_183 Depth 3
                                        #     Child Loop BB0_206 Depth 2
                                        #       Child Loop BB0_208 Depth 3
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	loadli.w r2,  32(r30)
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	loadli.w r4,  28(r30)
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	addli r6, zero, 8
	.loc	1 54 13                         # parallel-rne.mlir:54:13
	mod.s r15, r7, r19
	store.d r[8:9], -32(r30)                # 8-byte Folded Spill
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	storeli.w r7, -20(r30)                  # 4-byte Folded Spill
	.loc	1 51 13                         # parallel-rne.mlir:51:13
	div.s r2, r8, r2
	.loc	1 85 13                         # parallel-rne.mlir:85:13
	slli r14, r15, 13
	.loc	1 52 13                         # parallel-rne.mlir:52:13
	div.s r11, r2, r4
	.loc	1 55 13                         # parallel-rne.mlir:55:13
	addli r2, zero, 16
	div.s r17, r11, r2
	.loc	1 56 13                         # parallel-rne.mlir:56:13
	slli r2, r17, 3
	.loc	1 57 13                         # parallel-rne.mlir:57:13
	sub.s r4, r21, r2
	.loc	1 58 13                         # parallel-rne.mlir:58:13
	min.s r18, r4, r6
	.loc	1 59 13                         # parallel-rne.mlir:59:13
	mod.s r4, r11, r18
	.loc	1 60 13                         # parallel-rne.mlir:60:13
	add.s r2, r4, r2
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	zext_int2long r[8:9], r2
	storeli.w r2, -60(r30)                  # 4-byte Folded Spill
	.loc	1 87 13                         # parallel-rne.mlir:87:13
	lui r2, 12
	add.s r6, r14, r2
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	store.d r[8:9], -56(r30)                # 8-byte Folded Spill
	bneq r10, r21, .LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 12
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	load.d r[12:13], 0(r30)
	addli r2, r7, 0
	xwait r19, 0
	sll.d r[7:8], r[8:9], r4
	addli r9, zero, 2
	add.ul r[7:8], r[12:13], r[7:8]
	blt.s r9, r2, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r12, zero, 5
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	addli r2, zero, 4
	addli r13, zero, 256
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r4, 10
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
	addli r2, zero, 27
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 28
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 64
	dma_cfg r21, r21, zero, 0
	dma_cfg r21, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r2, 3
	addli r2, zero, 128
	dma_cfg r2, zero, r9, 4
	addli r2, zero, 32
	dma_cfg r13, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 12
	addli r12, zero, 4
	addli r13, zero, 64
	addli r16, zero, 32
	addli r23, zero, 256
	addli r24, zero, 0
	ori r2, r2, 64
	.loc	1 91 7                          # parallel-rne.mlir:91:7
	lock zero, r12
	dma_cfg r21, r21, zero, 0
	add.s r2, r14, r2
	dma_cfg zero, r8, zero, 2
	dma_cfg r2, r7, r13, 3
	addli r8, zero, 128
	addli r7, zero, 5
	addli r2, zero, 6
	dma_cfg r8, r13, r9, 4
	dma_cfg r23, r8, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 2
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
	addli r2, zero, 27
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 28
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	dma_cfg r21, r21, zero, 0
	dma_cfg r21, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r13, 3
	dma_cfg r8, zero, r9, 4
	dma_cfg r23, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r9, 0
	.loc	1 92 7 is_stmt 1                # parallel-rne.mlir:92:7
	j .LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 2
	.loc	1 92 7                          # parallel-rne.mlir:92:7
	bneq r10, r2, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 5
	xwait r2, 0
	addli r7, zero, 32
	addli r24, zero, 1
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 2
	ds_cfg r2, zero, 0
	addli r2, zero, 64
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r7, zero, 13
	shuffle_batch r14, r6, r2, 1
	addli r2, zero, 4
	unlock zero
	xsignal r19, 0
	xsignal r2, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 2
	addli r24, zero, 0
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	slli r2, r17, 4
	.loc	1 100 13 is_stmt 1              # parallel-rne.mlir:100:13
	slli r7, r15, 15
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r2, r11, r2
	slli r11, r15, 14
	addli r15, zero, 6
	div.s r2, r2, r18
	zext_int2long r[8:9], r2
	storeli.w r2, -76(r30)                  # 4-byte Folded Spill
	.loc	1 102 13 is_stmt 1              # parallel-rne.mlir:102:13
	lui r2, 18
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[8:9], r[8:9], r22
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	add.s r6, r7, r2
	.loc	1 106 7 is_stmt 1               # parallel-rne.mlir:106:7
	sll.d r[17:18], r[8:9], r21
	store.d r[17:18], -72(r30)              # 8-byte Folded Spill
	bneq r10, r15, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[8:9], 8(r30)
	xwait r22, 0
	loadli.w r2,  -20(r30)                  # 4-byte Folded Reload
	addli r4, zero, 12
	addli r12, zero, 2
	addli r14, zero, 4
	add.ul r[8:9], r[8:9], r[17:18]
	blt.s r12, r2, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r13, zero, 5
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	addli r2, zero, 8
	addli r16, zero, 128
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r4, 10
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
	addli r2, zero, 27
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 28
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 64
	dma_cfg r21, r21, zero, 0
	dma_cfg r21, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r2, 3
	dma_cfg r16, zero, r14, 4
	addli r16, zero, 512
	dma_cfg r16, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
.LBB0_18:                               # %.thread15
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 18
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	addli r13, zero, 64
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	lock zero, r14
	ori r2, r2, 64
	dma_cfg r21, r21, zero, 0
	dma_cfg zero, r9, zero, 2
	add.s r2, r7, r2
	addli r7, zero, 5
	dma_cfg r2, r8, r13, 3
	addli r8, zero, 128
	addli r9, zero, 512
	addli r2, zero, 8
	dma_cfg r8, r13, r14, 4
	dma_cfg r9, r9, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r4, 10
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
	addli r2, zero, 27
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 28
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	dma_cfg r21, r21, zero, 0
	dma_cfg r21, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r13, 3
	dma_cfg r8, zero, r14, 4
	dma_cfg r9, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r15, 0
	.loc	1 107 7 is_stmt 1               # parallel-rne.mlir:107:7
	j .LBB0_28
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 4
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	beq r10, r9, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r10, r22, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 9
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	xwait r15, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 64
	ds_cfg r4, zero, 0
	addli r4, zero, 128
	ds_cfg r4, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r4, zero, 13
	shuffle_coa r7, r6, r2, 2
	addli r2, zero, 1
	unlock zero
	xsignal r22, 0
	storeli.w r2, -36(r30)                  # 4-byte Folded Spill
	addli r2, zero, 8
	xsignal r2, 0
	.loc	1 108 7 is_stmt 1               # parallel-rne.mlir:108:7
	j .LBB0_28
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 8
	xwait r9, 0
	addli r6, zero, 0
	addli r4, zero, 1
	addli r8, zero, 11
	addli r12, zero, 64
	addli r13, zero, 32
	xwait r2, 0
	addli r2, zero, 1
	xwait r8, 0
.LBB0_23:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r8, r6, 14
	slli r6, r6, 8
	lock zero, r2
	mm_cfg r12, r12, r13, 0
	or r8, r8, r7
	or r6, r6, r11
	mm_cfg r9, r9, r2, 2
	mm r6, r14, r8, 8
	andi r8, r4, 1
	addli r6, zero, 1
	addli r4, zero, 0
	unlock r2
	bneq r8, zero, .LBB0_23
# %bb.24:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	addli r2, zero, 1
	storeli.w r2, -40(r30)                  # 4-byte Folded Spill
	addli r2, zero, 10
	xsignal r2, 0
	j .LBB0_28
.LBB0_25:                               # %.thread16
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 115 7                         # parallel-rne.mlir:115:7
	bneq r10, r19, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
	xwait r2, 0
	.loc	1 116 7                         # parallel-rne.mlir:116:7
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -36(r30)                # 4-byte Folded Spill
	storeli.w zero, -40(r30)                # 4-byte Folded Spill
.LBB0_28:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 113 13 is_stmt 1              # parallel-rne.mlir:113:13
	lui r2, 42
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	xfence
	.loc	1 119 7                         # parallel-rne.mlir:119:7
	mfence { lm, sm, gm }
	.loc	1 113 13                        # parallel-rne.mlir:113:13
	add.s r18, r11, r2
	.loc	1 120 7                         # parallel-rne.mlir:120:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 128
	sync_core
	zext_int2long r[14:15], r2
	.loc	1 121 7                         # parallel-rne.mlir:121:7
	beq r10, zero, .LBB0_35
# %bb.29:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	beq r10, r21, .LBB0_59
.LBB0_30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	bneq r24, zero, .LBB0_83
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	beq r10, r19, .LBB0_107
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	loadli.w r2,  -40(r30)                  # 4-byte Folded Reload
	bneq r2, zero, .LBB0_131
.LBB0_33:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	addli r2, zero, 5
	beq r10, r2, .LBB0_155
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	addli r2, zero, 6
	beq r10, r2, .LBB0_179
	j .LBB0_203
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w r24, -44(r30)                 # 4-byte Folded Spill
	zext_int2long r[6:7], zero
	.loc	1 121 7 is_stmt 1               # parallel-rne.mlir:121:7
	xfence
	mfence { lm, sm, gm }
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	j .LBB0_37
.LBB0_36:                               # %middle.block98
                                        #   in Loop: Header=BB0_37 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r19, zero, 3
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r22, zero, 7
	zext_int2long r[6:7], r19
	.loc	1 129 9 is_stmt 1               # parallel-rne.mlir:129:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_58
.LBB0_37:                               # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_39 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[16:17], -16(r30)               # 8-byte Folded Reload
	sll.d r[9:10], r[6:7], r22
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_39
.LBB0_38:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 130 11 is_stmt 1              # parallel-rne.mlir:130:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	add.s r2, r18, r2
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	setneq.d r4, r[16:17], r[14:15]
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	stores.w r8, 12(r2)
	stores.w r13, 8(r2)
	stores.w r22, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 130 11                        # parallel-rne.mlir:130:11
	beq r4, zero, .LBB0_36
.LBB0_39:                               # %vector.body94
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 131 19                        # parallel-rne.mlir:131:19
	add.ul r[6:7], r[16:17], r[9:10]
	slli r2, r6, 2
	add.s r4, r11, r2
	loads.w r19, 12(r4)
	loads.w r21, 0(r4)
	loads.w r23, 4(r4)
	loads.w r4, 8(r4)
	.loc	1 133 19                        # parallel-rne.mlir:133:19
	and r24, r19, r25
	.loc	1 135 19                        # parallel-rne.mlir:135:19
	setlt.u r6, r20, r24
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r6, zero, .LBB0_41
# %bb.40:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r19, 0
	j .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_39 Depth=3
	or r8, r19, r3
.LBB0_42:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	and r12, r4, r25
	setlt.u r6, r20, r12
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r6, zero, .LBB0_44
# %bb.43:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r4, 0
	j .LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_39 Depth=3
	or r13, r4, r3
.LBB0_45:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	and r28, r23, r25
	setlt.u r6, r20, r28
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r6, zero, .LBB0_47
# %bb.46:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r23, 0
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_39 Depth=3
	or r22, r23, r3
.LBB0_48:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	and r6, r21, r25
	setlt.u r7, r20, r6
	.loc	1 136 19                        # parallel-rne.mlir:136:19
	bneq r7, zero, .LBB0_50
# %bb.49:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r21, 0
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r6, r1, r6
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r6, zero, .LBB0_51
	j .LBB0_52
.LBB0_50:                               #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r27, r21, r3
	.loc	1 142 19 is_stmt 1              # parallel-rne.mlir:142:19
	setlt.u r6, r1, r6
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r6, zero, .LBB0_52
.LBB0_51:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r26
	and r27, r6, r5
.LBB0_52:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	setlt.u r6, r1, r28
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r6, zero, .LBB0_55
# %bb.53:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r12
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	beq r6, zero, .LBB0_56
.LBB0_54:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r1, r24
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r4, zero, .LBB0_38
	j .LBB0_57
.LBB0_55:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r23, 16
	andi r6, r6, 1
	add.s r6, r23, r6
	add.s r6, r6, r26
	and r22, r6, r5
	setlt.u r6, r1, r12
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r6, zero, .LBB0_54
.LBB0_56:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r4, 16
	andi r6, r6, 1
	add.s r4, r4, r6
	add.s r4, r4, r26
	and r13, r4, r5
	setlt.u r4, r1, r24
	.loc	1 143 19                        # parallel-rne.mlir:143:19
	bneq r4, zero, .LBB0_38
.LBB0_57:                               # %vector.body94
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r19, 16
	andi r4, r4, 1
	add.s r4, r19, r4
	add.s r4, r4, r26
	and r8, r4, r5
	j .LBB0_38
.LBB0_58:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 121 7 is_stmt 1               # parallel-rne.mlir:121:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	addli r21, zero, 1
	loadli.w r24,  -44(r30)                 # 4-byte Folded Reload
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	bneq r10, r21, .LBB0_30
.LBB0_59:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 4
	storeli.w r24, -44(r30)                 # 4-byte Folded Spill
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	xfence
	zext_int2long r[6:7], r2
	mfence { lm, sm, gm }
	j .LBB0_61
.LBB0_60:                               # %middle.block89
                                        #   in Loop: Header=BB0_61 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r22, zero, 7
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	zext_int2long r[6:7], r22
	.loc	1 158 9 is_stmt 1               # parallel-rne.mlir:158:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_82
.LBB0_61:                               # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_63 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r22
	zext_int2long r[9:10], zero
	j .LBB0_63
.LBB0_62:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 159 11 is_stmt 1              # parallel-rne.mlir:159:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	add.s r2, r18, r2
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	setneq.d r12, r[9:10], r[14:15]
	.loc	1 174 13                        # parallel-rne.mlir:174:13
	stores.w r8, 12(r2)
	stores.w r4, 8(r2)
	stores.w r23, 4(r2)
	stores.w r21, 0(r2)
	.loc	1 159 11                        # parallel-rne.mlir:159:11
	beq r12, zero, .LBB0_60
.LBB0_63:                               # %vector.body85
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 160 19                        # parallel-rne.mlir:160:19
	add.ul r[12:13], r[9:10], r[6:7]
	slli r2, r12, 2
	add.s r4, r11, r2
	loads.w r19, 12(r4)
	loads.w r27, 0(r4)
	loads.w r22, 4(r4)
	loads.w r13, 8(r4)
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	and r24, r19, r25
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	setlt.u r4, r20, r24
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r4, zero, .LBB0_65
# %bb.64:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r19, 0
	j .LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_63 Depth=3
	or r8, r19, r3
.LBB0_66:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	and r12, r13, r25
	setlt.u r4, r20, r12
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r4, zero, .LBB0_68
# %bb.67:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
	j .LBB0_69
.LBB0_68:                               #   in Loop: Header=BB0_63 Depth=3
	or r4, r13, r3
.LBB0_69:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	and r28, r22, r25
	setlt.u r16, r20, r28
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r16, zero, .LBB0_71
# %bb.70:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_72
.LBB0_71:                               #   in Loop: Header=BB0_63 Depth=3
	or r23, r22, r3
.LBB0_72:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	and r16, r27, r25
	setlt.u r17, r20, r16
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	bneq r17, zero, .LBB0_74
# %bb.73:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r27, 0
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r16, r1, r16
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r16, zero, .LBB0_75
	j .LBB0_76
.LBB0_74:                               #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r27, r3
	.loc	1 171 19 is_stmt 1              # parallel-rne.mlir:171:19
	setlt.u r16, r1, r16
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r16, zero, .LBB0_76
.LBB0_75:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r27, 16
	andi r16, r16, 1
	add.s r16, r27, r16
	add.s r16, r16, r26
	and r21, r16, r5
.LBB0_76:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	setlt.u r16, r1, r28
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r16, zero, .LBB0_79
# %bb.77:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r1, r12
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	beq r12, zero, .LBB0_80
.LBB0_78:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r1, r24
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r12, zero, .LBB0_62
	j .LBB0_81
.LBB0_79:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r22, 16
	andi r16, r16, 1
	add.s r16, r22, r16
	add.s r16, r16, r26
	and r23, r16, r5
	setlt.u r12, r1, r12
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r12, zero, .LBB0_78
.LBB0_80:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r26
	and r4, r4, r5
	setlt.u r12, r1, r24
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	bneq r12, zero, .LBB0_62
.LBB0_81:                               # %vector.body85
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r26
	and r8, r8, r5
	j .LBB0_62
.LBB0_82:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 150 7 is_stmt 1               # parallel-rne.mlir:150:7
	mfence { sm }
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r10
	addli r19, zero, 3
	addli r21, zero, 1
	loadli.w r24,  -44(r30)                 # 4-byte Folded Reload
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	beq r24, zero, .LBB0_31
.LBB0_83:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_85
.LBB0_84:                               # %middle.block80
                                        #   in Loop: Header=BB0_85 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 11
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r22, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 187 9 is_stmt 1               # parallel-rne.mlir:187:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_106
.LBB0_85:                               # %.preheader21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_87 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r22
	zext_int2long r[9:10], zero
	j .LBB0_87
.LBB0_86:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 188 11 is_stmt 1              # parallel-rne.mlir:188:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 203 13                        # parallel-rne.mlir:203:13
	add.s r2, r18, r2
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	setneq.d r12, r[9:10], r[14:15]
	.loc	1 203 13                        # parallel-rne.mlir:203:13
	stores.w r8, 12(r2)
	stores.w r4, 8(r2)
	stores.w r23, 4(r2)
	stores.w r21, 0(r2)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	beq r12, zero, .LBB0_84
.LBB0_87:                               # %vector.body76
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[12:13], r[9:10], r[6:7]
	slli r2, r12, 2
	add.s r4, r11, r2
	loads.w r19, 12(r4)
	loads.w r27, 0(r4)
	loads.w r22, 4(r4)
	loads.w r13, 8(r4)
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	and r24, r19, r25
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	setlt.u r4, r20, r24
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r4, zero, .LBB0_89
# %bb.88:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r19, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_87 Depth=3
	or r8, r19, r3
.LBB0_90:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	and r12, r13, r25
	setlt.u r4, r20, r12
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r4, zero, .LBB0_92
# %bb.91:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
	j .LBB0_93
.LBB0_92:                               #   in Loop: Header=BB0_87 Depth=3
	or r4, r13, r3
.LBB0_93:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	and r28, r22, r25
	setlt.u r16, r20, r28
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r16, zero, .LBB0_95
# %bb.94:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_87 Depth=3
	or r23, r22, r3
.LBB0_96:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	and r16, r27, r25
	setlt.u r17, r20, r16
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r17, zero, .LBB0_98
# %bb.97:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r27, 0
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r16, r1, r16
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	beq r16, zero, .LBB0_99
	j .LBB0_100
.LBB0_98:                               #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r27, r3
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r16, r1, r16
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r16, zero, .LBB0_100
.LBB0_99:                               # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r27, 16
	andi r16, r16, 1
	add.s r16, r27, r16
	add.s r16, r16, r26
	and r21, r16, r5
.LBB0_100:                              # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	setlt.u r16, r1, r28
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	beq r16, zero, .LBB0_103
# %bb.101:                              # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r1, r12
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	beq r12, zero, .LBB0_104
.LBB0_102:                              # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r1, r24
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r12, zero, .LBB0_86
	j .LBB0_105
.LBB0_103:                              # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r22, 16
	andi r16, r16, 1
	add.s r16, r22, r16
	add.s r16, r16, r26
	and r23, r16, r5
	setlt.u r12, r1, r12
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r12, zero, .LBB0_102
.LBB0_104:                              # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r26
	and r4, r4, r5
	setlt.u r12, r1, r24
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	bneq r12, zero, .LBB0_86
.LBB0_105:                              # %vector.body76
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r26
	and r8, r8, r5
	j .LBB0_86
.LBB0_106:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r19, zero, 3
	addli r21, zero, 1
	.loc	1 179 7                         # parallel-rne.mlir:179:7
	mfence { sm }
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	bneq r10, r19, .LBB0_32
.LBB0_107:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 12
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_109
.LBB0_108:                              # %middle.block71
                                        #   in Loop: Header=BB0_109 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r22, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 216 9 is_stmt 1               # parallel-rne.mlir:216:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_130
.LBB0_109:                              # %.preheader20
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_111 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r22
	zext_int2long r[9:10], zero
	j .LBB0_111
.LBB0_110:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 217 11 is_stmt 1              # parallel-rne.mlir:217:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 232 13                        # parallel-rne.mlir:232:13
	add.s r2, r18, r2
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	setneq.d r12, r[9:10], r[14:15]
	.loc	1 232 13                        # parallel-rne.mlir:232:13
	stores.w r8, 12(r2)
	stores.w r4, 8(r2)
	stores.w r23, 4(r2)
	stores.w r21, 0(r2)
	.loc	1 217 11                        # parallel-rne.mlir:217:11
	beq r12, zero, .LBB0_108
.LBB0_111:                              # %vector.body67
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_109 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	add.ul r[12:13], r[9:10], r[6:7]
	slli r2, r12, 2
	add.s r4, r11, r2
	loads.w r19, 12(r4)
	loads.w r27, 0(r4)
	loads.w r22, 4(r4)
	loads.w r13, 8(r4)
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	and r24, r19, r25
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	setlt.u r4, r20, r24
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r4, zero, .LBB0_113
# %bb.112:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r19, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_111 Depth=3
	or r8, r19, r3
.LBB0_114:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	and r12, r13, r25
	setlt.u r4, r20, r12
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r4, zero, .LBB0_116
# %bb.115:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_111 Depth=3
	or r4, r13, r3
.LBB0_117:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	and r28, r22, r25
	setlt.u r16, r20, r28
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r16, zero, .LBB0_119
# %bb.118:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_111 Depth=3
	or r23, r22, r3
.LBB0_120:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	and r16, r27, r25
	setlt.u r17, r20, r16
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	bneq r17, zero, .LBB0_122
# %bb.121:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r27, 0
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r16, r1, r16
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	beq r16, zero, .LBB0_123
	j .LBB0_124
.LBB0_122:                              #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r27, r3
	.loc	1 229 19 is_stmt 1              # parallel-rne.mlir:229:19
	setlt.u r16, r1, r16
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r16, zero, .LBB0_124
.LBB0_123:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r27, 16
	andi r16, r16, 1
	add.s r16, r27, r16
	add.s r16, r16, r26
	and r21, r16, r5
.LBB0_124:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	setlt.u r16, r1, r28
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	beq r16, zero, .LBB0_127
# %bb.125:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r1, r12
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	beq r12, zero, .LBB0_128
.LBB0_126:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r1, r24
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r12, zero, .LBB0_110
	j .LBB0_129
.LBB0_127:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r22, 16
	andi r16, r16, 1
	add.s r16, r22, r16
	add.s r16, r16, r26
	and r23, r16, r5
	setlt.u r12, r1, r12
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r12, zero, .LBB0_126
.LBB0_128:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r26
	and r4, r4, r5
	setlt.u r12, r1, r24
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	bneq r12, zero, .LBB0_110
.LBB0_129:                              # %vector.body67
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r26
	and r8, r8, r5
	j .LBB0_110
.LBB0_130:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r19, zero, 3
	addli r21, zero, 1
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	mfence { sm }
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	loadli.w r2,  -40(r30)                  # 4-byte Folded Reload
	beq r2, zero, .LBB0_33
.LBB0_131:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_133
.LBB0_132:                              # %middle.block62
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 19
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r22, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 245 9 is_stmt 1               # parallel-rne.mlir:245:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_154
.LBB0_133:                              # %.preheader19
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_135 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r22
	zext_int2long r[9:10], zero
	j .LBB0_135
.LBB0_134:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 246 11 is_stmt 1              # parallel-rne.mlir:246:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	add.s r2, r18, r2
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	setneq.d r12, r[9:10], r[14:15]
	.loc	1 261 13                        # parallel-rne.mlir:261:13
	stores.w r8, 12(r2)
	stores.w r4, 8(r2)
	stores.w r23, 4(r2)
	stores.w r21, 0(r2)
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	beq r12, zero, .LBB0_132
.LBB0_135:                              # %vector.body58
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_133 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	add.ul r[12:13], r[9:10], r[6:7]
	slli r2, r12, 2
	add.s r4, r11, r2
	loads.w r19, 12(r4)
	loads.w r27, 0(r4)
	loads.w r22, 4(r4)
	loads.w r13, 8(r4)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r24, r19, r25
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	setlt.u r4, r20, r24
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r4, zero, .LBB0_137
# %bb.136:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r19, 0
	j .LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_135 Depth=3
	or r8, r19, r3
.LBB0_138:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	and r12, r13, r25
	setlt.u r4, r20, r12
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r4, zero, .LBB0_140
# %bb.139:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
	j .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_135 Depth=3
	or r4, r13, r3
.LBB0_141:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	and r28, r22, r25
	setlt.u r16, r20, r28
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r16, zero, .LBB0_143
# %bb.142:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_135 Depth=3
	or r23, r22, r3
.LBB0_144:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	and r16, r27, r25
	setlt.u r17, r20, r16
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	bneq r17, zero, .LBB0_146
# %bb.145:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r27, 0
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r16, r1, r16
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r16, zero, .LBB0_147
	j .LBB0_148
.LBB0_146:                              #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r27, r3
	.loc	1 258 19 is_stmt 1              # parallel-rne.mlir:258:19
	setlt.u r16, r1, r16
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r16, zero, .LBB0_148
.LBB0_147:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r27, 16
	andi r16, r16, 1
	add.s r16, r27, r16
	add.s r16, r16, r26
	and r21, r16, r5
.LBB0_148:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	setlt.u r16, r1, r28
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r16, zero, .LBB0_151
# %bb.149:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r1, r12
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	beq r12, zero, .LBB0_152
.LBB0_150:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r1, r24
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r12, zero, .LBB0_134
	j .LBB0_153
.LBB0_151:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r22, 16
	andi r16, r16, 1
	add.s r16, r22, r16
	add.s r16, r16, r26
	and r23, r16, r5
	setlt.u r12, r1, r12
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r12, zero, .LBB0_150
.LBB0_152:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r26
	and r4, r4, r5
	setlt.u r12, r1, r24
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r12, zero, .LBB0_134
.LBB0_153:                              # %vector.body58
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r26
	and r8, r8, r5
	j .LBB0_134
.LBB0_154:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r19, zero, 3
	addli r21, zero, 1
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	mfence { sm }
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	addli r2, zero, 5
	bneq r10, r2, .LBB0_34
.LBB0_155:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 20
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_157
.LBB0_156:                              # %middle.block53
                                        #   in Loop: Header=BB0_157 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 23
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r22, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 274 9 is_stmt 1               # parallel-rne.mlir:274:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_178
.LBB0_157:                              # %.preheader18
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_159 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r22
	zext_int2long r[9:10], zero
	j .LBB0_159
.LBB0_158:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 275 11 is_stmt 1              # parallel-rne.mlir:275:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 290 13                        # parallel-rne.mlir:290:13
	add.s r2, r18, r2
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	setneq.d r12, r[9:10], r[14:15]
	.loc	1 290 13                        # parallel-rne.mlir:290:13
	stores.w r8, 12(r2)
	stores.w r4, 8(r2)
	stores.w r23, 4(r2)
	stores.w r21, 0(r2)
	.loc	1 275 11                        # parallel-rne.mlir:275:11
	beq r12, zero, .LBB0_156
.LBB0_159:                              # %vector.body49
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_157 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	add.ul r[12:13], r[9:10], r[6:7]
	slli r2, r12, 2
	add.s r4, r11, r2
	loads.w r19, 12(r4)
	loads.w r27, 0(r4)
	loads.w r22, 4(r4)
	loads.w r13, 8(r4)
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	and r24, r19, r25
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	setlt.u r4, r20, r24
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r4, zero, .LBB0_161
# %bb.160:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r19, 0
	j .LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_159 Depth=3
	or r8, r19, r3
.LBB0_162:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	and r12, r13, r25
	setlt.u r4, r20, r12
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r4, zero, .LBB0_164
# %bb.163:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
	j .LBB0_165
.LBB0_164:                              #   in Loop: Header=BB0_159 Depth=3
	or r4, r13, r3
.LBB0_165:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	and r28, r22, r25
	setlt.u r16, r20, r28
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r16, zero, .LBB0_167
# %bb.166:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_168
.LBB0_167:                              #   in Loop: Header=BB0_159 Depth=3
	or r23, r22, r3
.LBB0_168:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	and r16, r27, r25
	setlt.u r17, r20, r16
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	bneq r17, zero, .LBB0_170
# %bb.169:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r27, 0
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r16, r1, r16
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r16, zero, .LBB0_171
	j .LBB0_172
.LBB0_170:                              #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r27, r3
	.loc	1 287 19 is_stmt 1              # parallel-rne.mlir:287:19
	setlt.u r16, r1, r16
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r16, zero, .LBB0_172
.LBB0_171:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r27, 16
	andi r16, r16, 1
	add.s r16, r27, r16
	add.s r16, r16, r26
	and r21, r16, r5
.LBB0_172:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	setlt.u r16, r1, r28
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r16, zero, .LBB0_175
# %bb.173:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r1, r12
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	beq r12, zero, .LBB0_176
.LBB0_174:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r1, r24
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r12, zero, .LBB0_158
	j .LBB0_177
.LBB0_175:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r22, 16
	andi r16, r16, 1
	add.s r16, r22, r16
	add.s r16, r16, r26
	and r23, r16, r5
	setlt.u r12, r1, r12
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r12, zero, .LBB0_174
.LBB0_176:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r26
	and r4, r4, r5
	setlt.u r12, r1, r24
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	bneq r12, zero, .LBB0_158
.LBB0_177:                              # %vector.body49
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r26
	and r8, r8, r5
	j .LBB0_158
.LBB0_178:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r19, zero, 3
	addli r21, zero, 1
	.loc	1 266 7                         # parallel-rne.mlir:266:7
	mfence { sm }
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	addli r2, zero, 6
	bneq r10, r2, .LBB0_203
.LBB0_179:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_181
.LBB0_180:                              # %middle.block44
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 27
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r22, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 303 9 is_stmt 1               # parallel-rne.mlir:303:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_202
.LBB0_181:                              # %.preheader17
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_183 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r22
	zext_int2long r[9:10], zero
	j .LBB0_183
.LBB0_182:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 304 11 is_stmt 1              # parallel-rne.mlir:304:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 319 13                        # parallel-rne.mlir:319:13
	add.s r2, r18, r2
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	setneq.d r12, r[9:10], r[14:15]
	.loc	1 319 13                        # parallel-rne.mlir:319:13
	stores.w r8, 12(r2)
	stores.w r4, 8(r2)
	stores.w r23, 4(r2)
	stores.w r21, 0(r2)
	.loc	1 304 11                        # parallel-rne.mlir:304:11
	beq r12, zero, .LBB0_180
.LBB0_183:                              # %vector.body40
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_181 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	add.ul r[12:13], r[9:10], r[6:7]
	slli r2, r12, 2
	add.s r4, r11, r2
	loads.w r19, 12(r4)
	loads.w r27, 0(r4)
	loads.w r22, 4(r4)
	loads.w r13, 8(r4)
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	and r24, r19, r25
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	setlt.u r4, r20, r24
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r4, zero, .LBB0_185
# %bb.184:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r19, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_183 Depth=3
	or r8, r19, r3
.LBB0_186:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	and r12, r13, r25
	setlt.u r4, r20, r12
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r4, zero, .LBB0_188
# %bb.187:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
	j .LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_183 Depth=3
	or r4, r13, r3
.LBB0_189:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	and r28, r22, r25
	setlt.u r16, r20, r28
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r16, zero, .LBB0_191
# %bb.190:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_192
.LBB0_191:                              #   in Loop: Header=BB0_183 Depth=3
	or r23, r22, r3
.LBB0_192:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	and r16, r27, r25
	setlt.u r17, r20, r16
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	bneq r17, zero, .LBB0_194
# %bb.193:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r27, 0
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r16, r1, r16
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r16, zero, .LBB0_195
	j .LBB0_196
.LBB0_194:                              #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r21, r27, r3
	.loc	1 316 19 is_stmt 1              # parallel-rne.mlir:316:19
	setlt.u r16, r1, r16
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r16, zero, .LBB0_196
.LBB0_195:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r27, 16
	andi r16, r16, 1
	add.s r16, r27, r16
	add.s r16, r16, r26
	and r21, r16, r5
.LBB0_196:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	setlt.u r16, r1, r28
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r16, zero, .LBB0_199
# %bb.197:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r1, r12
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	beq r12, zero, .LBB0_200
.LBB0_198:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r12, r1, r24
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r12, zero, .LBB0_182
	j .LBB0_201
.LBB0_199:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r16, r22, 16
	andi r16, r16, 1
	add.s r16, r22, r16
	add.s r16, r16, r26
	and r23, r16, r5
	setlt.u r12, r1, r12
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r12, zero, .LBB0_198
.LBB0_200:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r26
	and r4, r4, r5
	setlt.u r12, r1, r24
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r12, zero, .LBB0_182
.LBB0_201:                              # %vector.body40
                                        #   in Loop: Header=BB0_183 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r8, r19, 16
	andi r8, r8, 1
	add.s r8, r19, r8
	add.s r8, r8, r26
	and r8, r8, r5
	j .LBB0_182
.LBB0_202:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r19, zero, 3
	addli r21, zero, 1
	.loc	1 295 7                         # parallel-rne.mlir:295:7
	mfence { sm }
.LBB0_203:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 324 7                         # parallel-rne.mlir:324:7
	loadli.w r2,  -36(r30)                  # 4-byte Folded Reload
	zext_int2long r[6:7], zero
	store.d r[6:7], -16(r30)                # 8-byte Folded Spill
	beq r2, zero, .LBB0_228
# %bb.204:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 28
	.loc	1 324 7                         # parallel-rne.mlir:324:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_206
.LBB0_205:                              # %middle.block
                                        #   in Loop: Header=BB0_206 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[8:9], -8(r30)                  # 8-byte Folded Reload
	addli r22, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 332 9 is_stmt 1               # parallel-rne.mlir:332:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_227
.LBB0_206:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_208 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	load.d r[27:28], -16(r30)               # 8-byte Folded Reload
	sll.d r[9:10], r[6:7], r22
	store.d r[6:7], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_208
.LBB0_207:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 333 11 is_stmt 1              # parallel-rne.mlir:333:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	add.s r2, r18, r2
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	setneq.d r6, r[27:28], r[14:15]
	.loc	1 348 13                        # parallel-rne.mlir:348:13
	stores.w r8, 12(r2)
	stores.w r4, 8(r2)
	stores.w r23, 4(r2)
	stores.w r16, 0(r2)
	.loc	1 333 11                        # parallel-rne.mlir:333:11
	beq r6, zero, .LBB0_205
.LBB0_208:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.ul r[6:7], r[27:28], r[9:10]
	slli r2, r6, 2
	add.s r4, r11, r2
	loads.w r19, 12(r4)
	loads.w r21, 0(r4)
	loads.w r22, 4(r4)
	loads.w r13, 8(r4)
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	and r24, r19, r25
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	setlt.u r4, r20, r24
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r4, zero, .LBB0_210
# %bb.209:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r19, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_208 Depth=3
	or r8, r19, r3
.LBB0_211:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	and r12, r13, r25
	setlt.u r4, r20, r12
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r4, zero, .LBB0_213
# %bb.212:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r13, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_208 Depth=3
	or r4, r13, r3
.LBB0_214:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	and r17, r22, r25
	setlt.u r6, r20, r17
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r6, zero, .LBB0_216
# %bb.215:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r22, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_208 Depth=3
	or r23, r22, r3
.LBB0_217:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	and r6, r21, r25
	setlt.u r7, r20, r6
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	bneq r7, zero, .LBB0_219
# %bb.218:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r21, 0
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r6, r1, r6
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r6, zero, .LBB0_220
	j .LBB0_221
.LBB0_219:                              #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r21, r3
	.loc	1 345 19 is_stmt 1              # parallel-rne.mlir:345:19
	setlt.u r6, r1, r6
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r6, zero, .LBB0_221
.LBB0_220:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r21, 16
	andi r6, r6, 1
	add.s r6, r21, r6
	add.s r6, r6, r26
	and r16, r6, r5
.LBB0_221:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	setlt.u r6, r1, r17
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r6, zero, .LBB0_224
# %bb.222:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r12
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	beq r6, zero, .LBB0_225
.LBB0_223:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r1, r24
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r6, zero, .LBB0_207
	j .LBB0_226
.LBB0_224:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r26
	and r23, r6, r5
	setlt.u r6, r1, r12
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r6, zero, .LBB0_223
.LBB0_225:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r13, 16
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r26
	and r4, r4, r5
	setlt.u r6, r1, r24
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r6, zero, .LBB0_207
.LBB0_226:                              # %vector.body
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r26
	and r8, r6, r5
	j .LBB0_207
.LBB0_227:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r10
	addli r19, zero, 3
	addli r21, zero, 1
	.loc	1 324 7                         # parallel-rne.mlir:324:7
	mfence { sm }
.LBB0_228:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 353 7                         # parallel-rne.mlir:353:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 354 7                         # parallel-rne.mlir:354:7
	beq r10, r19, .LBB0_5
# %bb.229:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	bneq r10, zero, .LBB0_7
# %bb.230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -76(r30)                  # 4-byte Folded Reload
	loadli.w r4,  -60(r30)                  # 4-byte Folded Reload
	.loc	1 358 13 is_stmt 1              # parallel-rne.mlir:358:13
	load.d r[16:17], -16(r30)               # 8-byte Folded Reload
	slli r2, r2, 7
	slli r4, r4, 5
	.loc	1 361 13                        # parallel-rne.mlir:361:13
	zext_int2long r[6:7], r2
	.loc	1 356 13                        # parallel-rne.mlir:356:13
	sext_int2long r[8:9], r4
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r2, zero, 14
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	min.ul r[12:13], r[6:7], r[14:15]
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	min.sl r[16:17], r[8:9], r[16:17]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	addli.d r[12:13], r[12:13], 128
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	addli.d r[16:17], r[16:17], 32
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	max.ul r[12:13], r[12:13], r[6:7]
	.loc	1 359 13                        # parallel-rne.mlir:359:13
	max.sl r[16:17], r[16:17], r[8:9]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	sub.sl r[6:7], r[12:13], r[6:7]
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	load.d r[12:13], -56(r30)               # 8-byte Folded Reload
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	sub.sl r[8:9], r[16:17], r[8:9]
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	load.d r[16:17], 16(r30)
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	min.ul r[6:7], r[6:7], r[14:15]
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	sll.d r[12:13], r[12:13], r2
	addli r2, zero, 32
	addli r4, r6, 31
	zext_int2long r[14:15], r2
	add.ul r[12:13], r[16:17], r[12:13]
	addli r2, zero, 12
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	min.sl r[8:9], r[8:9], r[14:15]
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	load.d r[14:15], -72(r30)               # 8-byte Folded Reload
	xwait r2, 0
	lui r2, 42
	ori r2, r2, 64
	add.ul r[12:13], r[12:13], r[14:15]
	addli r14, zero, 5
	add.s r2, r11, r2
	addli r11, zero, 64
	lock zero, r14
	dma_cfg r21, r21, zero, 0
	dma_cfg zero, r21, zero, 1
	dma_cfg r13, zero, zero, 2
	dma_cfg r12, r2, r11, 3
	srli r2, r4, 5
	slli r4, r6, 1
	addli r6, zero, 128
	dma_cfg r11, r6, r2, 4
	andi r2, r4, 62
	addli r4, zero, 512
	dma_cfg r4, r4, r8, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r14
	j .LBB0_6
.LBB0_231:                              # %._crit_edge
	.loc	1 373 5                         # parallel-rne.mlir:373:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_233
# %bb.232:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 373 5                         # parallel-rne.mlir:373:5
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
.LBB0_233:
	.loc	1 374 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:374:5
	addli sp, sp, 88
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
	.long	152                             # 0x98
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-cjfj1s8t" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
