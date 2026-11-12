	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/native-activation-onw92oxm" "relu-candidate.mlir"
	.loc	1 2 0                           # relu-candidate.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1944
	addli r1, zero, 1
.Ltmp0:
	.loc	1 49 11 prologue_end            # relu-candidate.mlir:49:11
	core_id r2
	addli r30, sp, 1880
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r3, zero, 2
	uni_sram_cfg r1, r1
	lui r4, 1048575
	lock zero, r3
	ew_cfg r1, zero, zero, 16
	ori r1, r4, 4095
	unlock r3
	addli r3, zero, 11
	csr_set csr3, r1
	sync_group
	addli r1, zero, 5
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 3
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
	addli r1, zero, 9
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
	addli r3, zero, 7
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
	addli r1, zero, 13
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
	addli r3, zero, 15
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
	storeli.w zero, -16(r30)
	storeli.w zero, -32(r30)
	storeli.w zero, -400(r30)
	storeli.w zero, -1044(r30)
	storeli.w zero, -1416(r30)
	storeli.w zero, -1804(r30)
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
	ble.s r3, r1, .LBB0_37
# %bb.4:                                # %.lr.ph
	loadli.w r12,  -16(r30)
	loadli.w r18,  -32(r30)
	loadli.w r10,  -400(r30)
	loadli.w r11,  -1044(r30)
	loadli.w r5,  -1416(r30)
	loadli.w r14,  -1804(r30)
	sext_int2long r[3:4], r3
	sext_int2long r[6:7], r1
	addli r28, zero, 1
	addli r17, zero, 4
	addli r19, zero, 2
	addli r21, zero, 96
	addli r22, zero, 92
	lui r23, 12
	addli r25, zero, 32
	addli r26, zero, 64
	addli r16, zero, 256
	addli r13, zero, 7
	addli r15, zero, 0
	store.d r[3:4], -1880(r30)              # 8-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.thread50
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 77 11 is_stmt 1               # relu-candidate.mlir:77:11
	load.d r[7:8], 16(r30)
	load.d r[14:15], -1856(r30)             # 8-byte Folded Reload
	addli r1, zero, 13
	xwait r1, 0
	lock zero, r17
	slli r1, r4, 2
	add.ul r[7:8], r[7:8], r[14:15]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r8, zero, 2
	dma_cfg r6, r7, r1, 3
	addli r1, zero, 12
	dma_cfg r16, r16, r28, 4
	dma_run zero
	unlock r17
	xsignal r1, 0
	loadli.w r12,  -1820(r30)               # 4-byte Folded Reload
.LBB0_6:                                # %.thread52
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	load.d r[6:7], -1832(r30)               # 8-byte Folded Reload
	load.d r[4:5], -1880(r30)               # 8-byte Folded Reload
	loadli.w r15,  -1836(r30)               # 4-byte Folded Reload
	addli r18, r18, 1
	addli r14, r3, 1
	.loc	1 78 11 is_stmt 1               # relu-candidate.mlir:78:11
	addli r12, r12, 1
	addli.d r[6:7], r[6:7], 1
	setlt.sl r1, r[6:7], r[4:5]
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	addli r5, r27, 1
	beq r1, zero, .LBB0_37
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_32 Depth 2
	storeli.w r18, -1824(r30)               # 4-byte Folded Spill
	storeli.w r12, -1820(r30)               # 4-byte Folded Spill
	.loc	1 49 11 is_stmt 1               # relu-candidate.mlir:49:11
	bneq r2, r17, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r1,  40(r30)
	loadli.w r3,  36(r30)
	store.d r[6:7], -1832(r30)              # 8-byte Folded Spill
	addli r9, zero, 8
	addli r12, zero, 3
	addli r4, zero, 0
	addli r24, zero, 1
	div.s r1, r6, r1
	mod.s r7, r15, r12
	addli r15, r15, 1
	storeli.w r15, -1836(r30)               # 4-byte Folded Spill
	div.s r1, r1, r3
	addli r3, zero, 128
	slli r20, r7, 14
	div.s r3, r1, r3
	slli r6, r3, 3
	slli r3, r3, 7
	sub.s r8, r28, r6
	sub.s r3, r1, r3
	min.s r8, r8, r9
	mod.s r1, r1, r8
	div.s r3, r3, r8
	add.s r1, r6, r1
	slli r6, r3, 6
	storeli.w r6, -1848(r30)                # 4-byte Folded Spill
	zext_int2long r[6:7], r3
	slli r3, r1, 6
	zext_int2long r[8:9], r1
	addli r1, zero, 14
	storeli.w r3, -1872(r30)                # 4-byte Folded Spill
	addli r3, zero, 6
	store.d r[8:9], -1864(r30)              # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r3
	.loc	1 49 11                         # relu-candidate.mlir:49:11
	sll.d r[27:28], r[6:7], r19
	sll.d r[6:7], r[8:9], r1
	load.d r[8:9], 8(r30)
	addli r1, zero, 0
	store.d r[27:28], -1856(r30)            # 8-byte Folded Spill
	add.ul r[8:9], r[8:9], r[27:28]
	addli r28, zero, 1
	store.d r[8:9], -1816(r30)              # 8-byte Folded Spill
	load.d r[8:9], 0(r30)
	add.ul r[8:9], r[8:9], r[6:7]
	j .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 64 13 is_stmt 1               # relu-candidate.mlir:64:13
	addli r4, zero, 5
	xwait r19, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r19, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r26, zero, 13
	shuffle_batch r15, r18, r25, 1
	unlock zero
	xsignal r12, 0
	xsignal r17, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_12 Depth=2
	addli r11, r11, 1
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	addli r10, r10, 1
	.loc	1 49 11                         # relu-candidate.mlir:49:11
	andi r4, r24, 1
	bneq r4, zero, .LBB0_20
	j .LBB0_27
.LBB0_12:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	add.s r27, r5, r1
	add.s r3, r14, r1
	.loc	1 58 13                         # relu-candidate.mlir:58:13
	mod.s r6, r27, r22
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	mod.s r7, r3, r21
	.loc	1 58 13                         # relu-candidate.mlir:58:13
	slli r6, r6, 13
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	slli r15, r7, 13
	.loc	1 58 13                         # relu-candidate.mlir:58:13
	add.s r18, r6, r23
	beq r2, r19, .LBB0_10
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # relu-candidate.mlir:0:0
	zext_int2long r[6:7], r4
	.loc	1 58 13                         # relu-candidate.mlir:58:13
	bneq r2, r28, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	sll.d r[6:7], r[6:7], r13
	xwait r12, 0
	lock zero, r17
	addli r4, zero, 128
	dma_cfg zero, zero, zero, 0
	add.ul r[6:7], r[8:9], r[6:7]
	dma_cfg zero, r7, zero, 2
	dma_cfg r18, r6, r4, 3
	dma_cfg r4, r16, r26, 4
	dma_run zero
	unlock r17
	xsignal r19, 0
	.loc	1 64 13 is_stmt 1               # relu-candidate.mlir:64:13
	j .LBB0_11
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	addli r4, zero, 91
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	addli r12, zero, 160
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	mod.s r4, r10, r4
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	mod.s r18, r11, r12
	addli r11, r11, 1
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	addli r10, r10, 1
	slli r12, r4, 13
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	slli r4, r18, 13
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	lui r18, 196
	add.s r18, r12, r18
	beq r2, r13, .LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	addli r12, zero, 6
	.loc	1 63 13                         # relu-candidate.mlir:63:13
	bneq r2, r12, .LBB0_21
# %bb.17:                               #   in Loop: Header=BB0_12 Depth=2
	addli r4, zero, 17
	xwait r13, 0
	load.d r[15:16], -1816(r30)             # 8-byte Folded Reload
	lock zero, r17
	dma_cfg zero, zero, zero, 0
	sll.d r[6:7], r[6:7], r4
	addli r4, zero, 256
	add.ul r[6:7], r[15:16], r[6:7]
	addli r16, zero, 256
	dma_cfg zero, r7, zero, 2
	dma_cfg r18, r6, r4, 3
	addli r6, zero, 4096
	dma_cfg r4, r6, r25, 4
	dma_run zero
	unlock r17
	xsignal r12, 0
	j .LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 13                          # relu-candidate.mlir:0:13
	addli r6, zero, 6
	.loc	1 64 13 is_stmt 1               # relu-candidate.mlir:64:13
	xwait r6, 0
	addli r6, zero, 9
	xwait r6, 0
	lock zero, zero
	ds_cfg r19, zero, 0
	ds_cfg r26, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r26, zero, 13
	shuffle_coa r4, r18, r25, 2
	addli r4, zero, 8
	unlock zero
	xsignal r13, 0
	xsignal r4, 0
.LBB0_19:                               # %.thread7
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	addli r12, zero, 3
	.loc	1 49 11 is_stmt 1               # relu-candidate.mlir:49:11
	andi r4, r24, 1
	beq r4, zero, .LBB0_27
.LBB0_20:                               # %.backedge
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	addli r1, r1, 1
	addli r4, zero, 1
	addli r24, zero, 0
	.loc	1 62 13                         # relu-candidate.mlir:62:13
	j .LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 13 is_stmt 0                # relu-candidate.mlir:0:13
	addli r12, zero, 3
	.loc	1 64 13 is_stmt 1               # relu-candidate.mlir:64:13
	bneq r2, r17, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_12 Depth=2
	addli r6, zero, 8
	xwait r17, 0
	xwait r6, 0
	lock zero, r28
	mm_cfg r26, r25, r26, 0
	mm_cfg r19, r19, r28, 2
	beq r1, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_12 Depth=2
	mm_acc r20, r15, r4, 8
	j .LBB0_26
.LBB0_24:                               # %.thread7.thread
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 49 11                         # relu-candidate.mlir:49:11
	andi r4, r24, 1
	bneq r4, zero, .LBB0_20
	j .LBB0_29
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	mm r20, r15, r4, 8
.LBB0_26:                               # %.thread7.thread48
                                        #   in Loop: Header=BB0_12 Depth=2
	addli r6, zero, 5
	unlock r28
	.loc	1 49 11                         # relu-candidate.mlir:49:11
	andi r4, r24, 1
	.loc	1 64 13                         # relu-candidate.mlir:64:13
	xsignal r6, 0
	addli r6, zero, 9
	xsignal r6, 0
	bneq r4, zero, .LBB0_20
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 49 11                         # relu-candidate.mlir:49:11
	bneq r2, r17, .LBB0_29
.LBB0_28:                               # %.thread49
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_29:                               # %.thread47
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 77 11                         # relu-candidate.mlir:77:11
	loadli.w r1,  -1848(r30)                # 4-byte Folded Reload
	loadli.w r18,  -1824(r30)               # 4-byte Folded Reload
	lui r9, 378
	zext_int2long r[4:5], r1
	addli r1, zero, 960
	zext_int2long r[6:7], r1
	mod.s r1, r18, r12
	min.ul r[6:7], r[4:5], r[6:7]
	addli.d r[6:7], r[6:7], 64
	max.ul r[14:15], r[6:7], r[4:5]
	slli r1, r1, 8
	zext_int2long r[7:8], r26
	sub.sl r[4:5], r[14:15], r[4:5]
	add.s r6, r1, r9
	addli r1, zero, 3
	min.ul r[4:5], r[4:5], r[7:8]
	beq r2, r28, .LBB0_5
# %bb.30:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # relu-candidate.mlir:0:11
	loadli.w r12,  -1820(r30)               # 4-byte Folded Reload
	ori r9, r9, 768
	.loc	1 78 11 is_stmt 1               # relu-candidate.mlir:78:11
	mod.s r1, r12, r1
	slli r1, r1, 14
	add.s r1, r1, r9
	addli r9, zero, 5
	bneq r2, r9, .LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 10
	addli r4, zero, 0
	lui r8, 4
	xwait r5, 0
	addli r5, zero, 12
	xwait r5, 0
	addli r5, zero, 15
	xwait r5, 0
	lock zero, r19
	lui r5, 260096
	ew_cfg r28, zero, zero, 10
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 63
	ew_cfg zero, r5, zero, 2
	ew_cfg r28, zero, zero, 3
.LBB0_32:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r1, r4
	add.s r7, r20, r4
	addli r4, r4, 256
	dsmadd r5, r7, r6, 0
	bneq r4, r8, .LBB0_32
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	ew_cfg zero, zero, zero, 10
	unlock r19
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 87 5                          # relu-candidate.mlir:87:5
	bneq r2, zero, .LBB0_6
# %bb.35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 5 is_stmt 0                 # relu-candidate.mlir:0:5
	loadli.w r6,  -1872(r30)                # 4-byte Folded Reload
	store.d r[4:5], -1848(r30)              # 8-byte Folded Spill
	sext_int2long r[14:15], r6
	.loc	1 87 5                          # relu-candidate.mlir:87:5
	addli r6, zero, 18
	store.d r[14:15], -1816(r30)            # 8-byte Folded Spill
	zext_int2long r[14:15], zero
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	load.d r[4:5], -1816(r30)               # 8-byte Folded Reload
	min.sl r[4:5], r[4:5], r[14:15]
	.loc	1 87 5                          # relu-candidate.mlir:87:5
	load.d r[14:15], -1864(r30)             # 8-byte Folded Reload
	sll.d r[14:15], r[14:15], r6
	addli r6, zero, 14
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	store.d r[14:15], -1864(r30)            # 8-byte Folded Spill
	addli.d r[14:15], r[4:5], 64
	.loc	1 87 5                          # relu-candidate.mlir:87:5
	xwait r6, 0
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	load.d r[4:5], -1816(r30)               # 8-byte Folded Reload
	max.sl r[4:5], r[14:15], r[4:5]
	.loc	1 87 5                          # relu-candidate.mlir:87:5
	load.d r[14:15], 24(r30)
	store.d r[4:5], -1872(r30)              # 8-byte Folded Spill
	load.d r[4:5], -1864(r30)               # 8-byte Folded Reload
	add.ul r[4:5], r[14:15], r[4:5]
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	load.d r[14:15], -1872(r30)             # 8-byte Folded Reload
	store.d r[4:5], -1864(r30)              # 8-byte Folded Spill
	load.d r[4:5], -1816(r30)               # 8-byte Folded Reload
	sub.sl r[4:5], r[14:15], r[4:5]
	.loc	1 87 5                          # relu-candidate.mlir:87:5
	load.d r[14:15], -1856(r30)             # 8-byte Folded Reload
	store.d r[4:5], -1816(r30)              # 8-byte Folded Spill
	load.d r[4:5], -1864(r30)               # 8-byte Folded Reload
	add.ul r[14:15], r[4:5], r[14:15]
	load.d r[4:5], -1816(r30)               # 8-byte Folded Reload
	min.sl r[6:7], r[4:5], r[7:8]
	addli r8, zero, 5
	lock zero, r8
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r28, zero, 1
	load.d r[4:5], -1848(r30)               # 8-byte Folded Reload
	dma_cfg r15, zero, zero, 2
	slli r4, r4, 2
	dma_cfg r14, r1, r4, 3
	addli r1, zero, 4096
	dma_cfg r1, r16, r6, 4
	addli r1, zero, 15
	dma_run zero
	unlock r8
.LBB0_36:                               # %.thread52
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # relu-candidate.mlir:0:0
	xsignal r1, 0
	j .LBB0_6
.LBB0_37:                               # %._crit_edge
	.loc	1 2 3 is_stmt 1                 # relu-candidate.mlir:2:3
	xsignal zero, 0
	bneq r2, zero, .LBB0_39
# %bb.38:
	.loc	1 0 3 is_stmt 0                 # relu-candidate.mlir:0:3
	addli r1, zero, 2
	.loc	1 2 3                           # relu-candidate.mlir:2:3
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
.LBB0_39:
	.loc	1 2 3 epilogue_begin            # relu-candidate.mlir:2:3
	addli sp, sp, 1880
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
	.long	44                              # 0x2c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	1944                            # 0x798
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
.asciz	"relu-candidate.mlir"           # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/native-activation-onw92oxm" # string offset=27
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
