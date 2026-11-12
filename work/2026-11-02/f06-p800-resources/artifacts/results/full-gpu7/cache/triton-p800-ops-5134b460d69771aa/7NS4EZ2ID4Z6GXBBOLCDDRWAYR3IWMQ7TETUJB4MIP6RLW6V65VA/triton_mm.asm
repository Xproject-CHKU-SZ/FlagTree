	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/jr" "cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py"
	.loc	1 22 0                          # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -720
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:73:26
	core_id r2
	addli r30, sp, 656
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:0:26
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
	addli r4, zero, 3
	unlock r3
	addli r3, zero, 5
	csr_set csr3, r1
	addli r1, zero, 11
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 9
	addli r3, zero, 7
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -128(r30)
	storeli.w zero, -452(r30)
	storeli.w zero, -584(r30)
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
	loadli.w r7,  -128(r30)
	loadli.w r28,  -584(r30)
	loadli.w r10,  -452(r30)
	sext_int2long r[8:9], r1
	addli r13, zero, 0
	addli r1, zero, 32
	addli r15, zero, 4
	addli r17, zero, 2
	addli r11, zero, 24
	lui r12, 10
	addli r23, zero, 128
	addli r26, zero, 1
	addli r5, zero, 0
	store.d r[3:4], -648(r30)               # 8-byte Folded Spill
	lui r3, 15
	ori r4, r3, 4095
	lui r3, 1047552
	store.d r[3:4], -656(r30)               # 8-byte Folded Spill
	lui r3, 1023
	ori r3, r3, 4095
	storeli.w r3, -588(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:73:26
	addli r3, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:0:0
	xsignal r3, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[8:9], -616(r30)                # 8-byte Folded Reload
	load.d r[3:4], -648(r30)                # 8-byte Folded Reload
	loadli.w r13,  -608(r30)                # 4-byte Folded Reload
	addli r5, r18, 1
	addli r28, r6, 1
	addli.d r[8:9], r[8:9], 1
	setlt.sl r3, r[8:9], r[3:4]
	beq r3, zero, .LBB0_32
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	addli r27, zero, 6
	.loc	1 73 26                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:73:26
	bneq r2, r15, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	xwait r3, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:0:26
	loadli.w r3,  32(r30)
	loadli.w r4,  28(r30)
	store.d r[8:9], -616(r30)               # 8-byte Folded Spill
	addli r16, zero, 5
	addli r14, zero, 8
	addli r19, zero, 0
	addli r24, zero, 0
	div.s r3, r8, r3
	mod.s r8, r13, r16
	addli r13, r13, 1
	storeli.w r13, -608(r30)                # 4-byte Folded Spill
	div.s r3, r3, r4
	addli r4, zero, 512
	slli r8, r8, 13
	storeli.w r8, -604(r30)                 # 4-byte Folded Spill
	div.s r4, r3, r4
	slli r6, r4, 3
	slli r4, r4, 9
	sub.s r9, r1, r6
	sub.s r4, r3, r4
	min.s r9, r9, r14
	div.s r4, r4, r9
	mod.s r3, r3, r9
	zext_int2long r[8:9], r4
	add.s r3, r6, r3
	slli r6, r4, 5
	sll.d r[8:9], r[8:9], r16
	slli r4, r3, 6
	zext_int2long r[20:21], r3
	addli r3, zero, 17
	storeli.w r6, -640(r30)                 # 4-byte Folded Spill
	.loc	1 73 26                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:73:26
	sll.d r[13:14], r[8:9], r17
	load.d r[8:9], 8(r30)
	storeli.w r4, -636(r30)                 # 4-byte Folded Spill
	sll.d r[3:4], r[20:21], r3
	store.d r[20:21], -632(r30)             # 8-byte Folded Spill
	store.d r[13:14], -624(r30)             # 8-byte Folded Spill
	add.ul r[8:9], r[8:9], r[13:14]
	store.d r[8:9], -600(r30)               # 8-byte Folded Spill
	load.d r[8:9], -656(r30)                # 8-byte Folded Reload
	and.d r[8:9], r[3:4], r[8:9]
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 26                          # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:0:26
	addli r11, zero, 2048
	.loc	1 81 25 is_stmt 1               # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:81:25
	sub.sl r[21:22], r[13:14], r[21:22]
	addli r16, zero, 1984
	.loc	1 81 20 is_stmt 0               # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:81:20
	sll.d r[13:14], r[13:14], r17
	.loc	1 89 25 is_stmt 1               # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:89:25
	addli r10, r10, 1
	zext_int2long r[25:26], r11
	.loc	1 81 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:81:20
	load.d r[11:12], 0(r30)
	.loc	1 81 25 is_stmt 0               # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:81:25
	div.sl r[21:22], r[21:22], r[25:26]
	zext_int2long r[25:26], r16
	.loc	1 81 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:81:20
	addli r16, zero, 3
	add.ul r[13:14], r[11:12], r[13:14]
	addli r11, zero, 24
	lui r12, 10
	xwait r16, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r14, zero, 2
	.loc	1 81 25                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:81:25
	min.sl r[25:26], r[21:22], r[25:26]
	sub.sl r[21:22], r[25:26], r[21:22]
	addli r26, zero, 1
	.loc	1 81 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:81:20
	addli r16, r21, 64
	addli r21, zero, 512
	dma_cfg r20, r13, r21, 3
	addli r13, zero, 8192
	dma_cfg r21, r13, r16, 4
	dma_run zero
	unlock r15
	xsignal r17, 0
.LBB0_12:                               # %.thread6
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 73 26 is_stmt 1               # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:73:26
	addli r19, r19, 1
	.loc	1 86 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:86:20
	addli r7, r7, 1
	.loc	1 73 26                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:73:26
	addli r13, zero, 16
	beq r19, r13, .LBB0_29
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 89 25                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:89:25
	addli r24, r24, 1
.LBB0_14:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:86:25
	add.s r6, r28, r24
	add.s r18, r5, r24
	.loc	1 81 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:81:20
	mod.s r13, r6, r1
	.loc	1 89 25                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:89:25
	mod.s r14, r18, r11
	.loc	1 81 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:81:20
	slli r20, r13, 15
	.loc	1 89 25                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:89:25
	slli r13, r14, 15
	.loc	1 81 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:81:20
	add.s r20, r20, r12
	beq r2, r17, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:0:0
	zext_int2long r[21:22], r19
	.loc	1 81 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:81:20
	bneq r2, r26, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 86 25 is_stmt 1               # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:86:25
	addli r13, zero, 7
	loadli.w r16,  -588(r30)                # 4-byte Folded Reload
	sll.d r[13:14], r[21:22], r13
	zext_int2long r[21:22], r16
	.loc	1 81 25                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:81:25
	add.ul r[13:14], r[13:14], r[3:4]
	setlt.ul r16, r[21:22], r[13:14]
	addli.d r[21:22], r[8:9], 0
	bneq r16, zero, .LBB0_11
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 25 is_stmt 0                # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:0:25
	zext_int2long r[21:22], zero
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 89 25 is_stmt 1               # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:89:25
	addli r14, zero, 5
	xwait r17, 0
	addli r10, r10, 1
	xwait r14, 0
	lock zero, zero
	addli r14, zero, 64
	ds_cfg r17, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r14, zero, 13
	shuffle_batch r13, r20, r23, 1
	addli r13, zero, 3
	unlock zero
	xsignal r13, 0
	xsignal r15, 0
	j .LBB0_12
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 86 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:86:20
	addli r16, zero, 31
	.loc	1 89 25                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:89:25
	addli r14, zero, 80
	.loc	1 86 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:86:20
	lui r20, 266
	mod.s r16, r7, r16
	.loc	1 89 25                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:89:25
	mod.s r14, r10, r14
	addli r10, r10, 1
	.loc	1 86 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:86:20
	slli r16, r16, 14
	.loc	1 89 25                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:89:25
	slli r14, r14, 14
	.loc	1 86 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:86:20
	add.s r20, r16, r20
	addli r16, zero, 7
	beq r2, r16, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 20 is_stmt 0                # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:0:20
	addli r25, zero, 6
	.loc	1 86 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:86:20
	bneq r2, r25, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	addli r13, zero, 20
	addli r16, zero, 7
	addli r27, zero, 6
	sll.d r[13:14], r[21:22], r13
	xwait r16, 0
	load.d r[21:22], -600(r30)              # 8-byte Folded Reload
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	add.ul r[13:14], r[21:22], r[13:14]
	dma_cfg zero, r14, zero, 2
	dma_cfg r20, r13, r23, 3
	addli r13, zero, 8192
	dma_cfg r23, r13, r23, 4
	dma_run zero
	unlock r15
	xsignal r25, 0
	.loc	1 89 25 is_stmt 1               # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:89:25
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r13, zero, 9
	xwait r27, 0
	xwait r13, 0
	lock zero, zero
	addli r13, zero, 7
	ds_cfg r17, zero, 0
	ds_cfg r1, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r1, zero, 13
	shuffle_coa r14, r20, r23, 2
	unlock zero
	xsignal r13, 0
	addli r13, zero, 8
	xsignal r13, 0
	j .LBB0_12
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 25 is_stmt 0                # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:0:25
	addli r27, zero, 6
	.loc	1 89 25                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:89:25
	bneq r2, r15, .LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 25                          # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:0:25
	addli r16, zero, 8
	.loc	1 89 25                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:89:25
	addli r20, zero, 64
	xwait r15, 0
	xwait r16, 0
	lock zero, r26
	mm_cfg r1, r23, r20, 0
	mm_cfg r16, r26, r26, 2
	beq r24, zero, .LBB0_27
# %bb.25:                               # %.preheader8
                                        #   in Loop: Header=BB0_14 Depth=2
	loadli.w r16,  -604(r30)                # 4-byte Folded Reload
	mm_acc r16, r13, r14, 8
	j .LBB0_28
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 73 26 is_stmt 1               # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:73:26
	addli r19, r19, 1
	.loc	1 86 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:86:20
	addli r7, r7, 1
	.loc	1 73 26                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:73:26
	addli r13, zero, 16
	bneq r19, r13, .LBB0_13
	j .LBB0_30
.LBB0_27:                               # %.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 89 25                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:89:25
	loadli.w r16,  -604(r30)                # 4-byte Folded Reload
	mm r16, r13, r14, 8
.LBB0_28:                               # %.thread6.thread43
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r13, zero, 5
	unlock r26
	.loc	1 73 26                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:73:26
	addli r19, r19, 1
	.loc	1 86 20                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:86:20
	addli r7, r7, 1
	.loc	1 89 25                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:89:25
	xsignal r13, 0
	addli r13, zero, 9
	xsignal r13, 0
	.loc	1 73 26                         # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:73:26
	addli r13, zero, 16
	bneq r19, r13, .LBB0_13
	j .LBB0_5
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	beq r2, r15, .LBB0_5
.LBB0_30:                               # %.thread42
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:101:67
	bneq r2, zero, .LBB0_7
# %bb.31:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r3,  -640(r30)                 # 4-byte Folded Reload
	addli r5, zero, 2016
	load.d r[21:22], 16(r30)
	zext_int2long r[8:9], r5
	loadli.w r5,  -636(r30)                 # 4-byte Folded Reload
	zext_int2long r[3:4], r3
	min.ul r[8:9], r[3:4], r[8:9]
	sext_int2long r[13:14], r5
	addli r5, zero, 1984
	zext_int2long r[19:20], r5
	addli.d r[8:9], r[8:9], 32
	addli r5, zero, 19
	max.ul r[8:9], r[8:9], r[3:4]
	min.sl r[19:20], r[13:14], r[19:20]
	sub.sl r[3:4], r[8:9], r[3:4]
	addli.d r[8:9], r[19:20], 64
	zext_int2long r[19:20], r1
	max.sl r[8:9], r[8:9], r[13:14]
	min.ul r[3:4], r[3:4], r[19:20]
	sub.sl r[8:9], r[8:9], r[13:14]
	load.d r[13:14], -632(r30)              # 8-byte Folded Reload
	slli r3, r3, 2
	sll.d r[13:14], r[13:14], r5
	addli r5, zero, 64
	zext_int2long r[19:20], r5
	addli r5, zero, 10
	add.ul r[13:14], r[21:22], r[13:14]
	min.sl r[8:9], r[8:9], r[19:20]
	load.d r[19:20], -624(r30)              # 8-byte Folded Reload
	xwait r5, 0
	addli r5, zero, 5
	lock zero, r5
	dma_cfg zero, zero, zero, 0
	add.ul r[13:14], r[13:14], r[19:20]
	dma_cfg zero, r26, zero, 1
	dma_cfg r14, zero, zero, 2
	loadli.w r4,  -604(r30)                 # 4-byte Folded Reload
	dma_cfg r13, r4, r3, 3
	addli r3, zero, 8192
	dma_cfg r3, r23, r8, 4
	addli r3, zero, 11
	dma_run zero
	unlock r5
	j .LBB0_6
.LBB0_32:                               # %._crit_edge
	.loc	1 22 0                          # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_34
# %bb.33:
	.loc	1 0 0 is_stmt 0                 # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py:22:0
	addli sp, sp, 656
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
	.long	720                             # 0x2d0
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
.asciz	"cjrnnddgzws57ydflnaikoo23sraxipxlad322eeqji3a2ddnffl.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/jr" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
