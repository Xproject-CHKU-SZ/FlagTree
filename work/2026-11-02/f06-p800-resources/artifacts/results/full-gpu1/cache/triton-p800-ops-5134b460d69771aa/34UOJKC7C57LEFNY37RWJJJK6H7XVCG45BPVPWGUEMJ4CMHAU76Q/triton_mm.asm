	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/os" "cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py"
	.loc	1 22 0                          # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -984
	addli r30, sp, 920
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:73:26
	core_id r2
	loadli.w r16,  32(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	load_param_i r6, 0
	storeli.w zero, -160(r30)
	storeli.w zero, -484(r30)
	storeli.w zero, -644(r30)
	storeli.w zero, -840(r30)
	mul.s r1, r3, r1
	addli r3, r5, 0
	fmac.s r3, r1, r4
	mul.s r1, r1, r4
	addli r3, r3, -1
	div.s r5, r3, r5
	mul.s r3, r5, r6
	fmac.s r5, r5, r6
	min.s r1, r5, r1
	ble.s r1, r3, .LBB0_42
# %bb.4:                                # %.lr.ph
	sext_int2long r[4:5], r1
	sext_int2long r[17:18], r3
	lui r3, 15
	loadli.w r6,  -160(r30)
	loadli.w r19,  -644(r30)
	loadli.w r1,  -840(r30)
	loadli.w r10,  -484(r30)
	addli r11, zero, 64
	addli r12, zero, 4
	addli r14, zero, 7
	addli r13, zero, 5
	addli r21, zero, 1
	addli r24, zero, 48
	addli r7, zero, 39
	addli r22, zero, 6
	addli r20, zero, 3
	addli r25, zero, 128
	addli r26, zero, 16
	addli r28, zero, 2
	lui r15, 80
	addli r27, zero, 0
	store.d r[4:5], -888(r30)               # 8-byte Folded Spill
	ori r5, r3, 4095
	lui r3, 127
	lui r4, 1048448
	ori r3, r3, 4095
	store.d r[4:5], -920(r30)               # 8-byte Folded Spill
	storeli.w r3, -852(r30)                 # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:73:26
	addli r1, zero, 10
	loadli.w r27,  32(r30)
	addli r13, zero, 5
	addli r24, zero, 48
	xsignal r1, 0
	load.d r[17:18], -864(r30)              # 8-byte Folded Reload
.LBB0_6:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26                          # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:26
	addli r16, r27, 0
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r27,  -868(r30)                # 4-byte Folded Reload
.LBB0_8:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -888(r30)                # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 1
	addli r27, r27, 1
	addli r1, r23, 0
	lui r15, 80
	setlt.sl r3, r[17:18], r[3:4]
	beq r3, zero, .LBB0_42
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_28 Depth 3
	div.s r3, r17, r16
	loadli.w r4,  28(r30)
	.loc	1 54 50 is_stmt 1               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:54:50
	addli r9, zero, 8
	div.s r5, r3, r4
	.loc	1 53 22                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:53:22
	div.s r8, r5, r11
	.loc	1 54 41                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:54:41
	slli r3, r8, 3
	.loc	1 54 30 is_stmt 0               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:54:30
	sub.s r4, r12, r3
	.loc	1 54 50                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:54:50
	min.s r9, r4, r9
	.loc	1 55 40 is_stmt 1               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:55:40
	mod.s r4, r5, r9
	.loc	1 55 34 is_stmt 0               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:55:34
	add.s r4, r3, r4
	.loc	1 95 15 is_stmt 1               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:95:15
	zext_int2long r[2:3], r4
	store.d r[2:3], -880(r30)               # 8-byte Folded Spill
	addli r3, zero, 384
	zext_int2long r[2:3], r3
	.loc	1 73 26                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:73:26
	store.d r[2:3], -848(r30)               # 8-byte Folded Spill
	core_id r2
	bneq r2, r12, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:26
	beq r2, r21, .LBB0_32
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r28, .LBB0_16
# %bb.13:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 0
.LBB0_14:                               # %.thread.us23
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	add.s r4, r19, r3
	add.s r5, r1, r3
	xwait r28, 0
	xwait r13, 0
	lock zero, zero
	.loc	1 73 26                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	ds_cfg r20, zero, 0
	.loc	1 81 20                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:20
	mod.s r4, r4, r7
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	mod.s r5, r5, r24
	ds_cfg r11, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r25, zero, 13
	.loc	1 81 20                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:20
	slli r4, r4, 14
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	slli r5, r5, 14
	.loc	1 81 20                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:20
	add.s r4, r4, r15
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	shuffle_batch r5, r4, r11, 1
	unlock zero
	xsignal r20, 0
	xsignal r12, 0
	bneq r3, r26, .LBB0_14
# %bb.15:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:73:26
	addli r10, r10, 16
	addli r6, r6, 16
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	add.s r23, r1, r3
	add.s r19, r19, r3
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:25
	slli r8, r8, 6
	slli r4, r4, 7
	store.d r[17:18], -864(r30)             # 8-byte Folded Spill
	addli r3, zero, 0
	addli r24, zero, 5
	storeli.w r27, -868(r30)                # 4-byte Folded Spill
	addli r18, zero, 0
	addli r17, zero, 8
	sub.s r5, r5, r8
	mod.s r8, r27, r13
	storeli.w r4, -904(r30)                 # 4-byte Folded Spill
	div.s r5, r5, r9
	slli r27, r8, 16
	zext_int2long r[15:16], r5
	slli r4, r5, 7
	sll.d r[15:16], r[15:16], r14
	.loc	1 73 26 is_stmt 1               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:73:26
	storeli.w r4, -908(r30)                 # 4-byte Folded Spill
	load.d r[4:5], 8(r30)
	sll.d r[15:16], r[15:16], r21
	add.ul r[4:5], r[4:5], r[15:16]
	store.d r[15:16], -896(r30)             # 8-byte Folded Spill
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	addli r1, zero, 9
	xwait r22, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r20, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r25, zero, 13
	shuffle_coa r13, r8, r11, 2
	unlock zero
	xsignal r14, 0
	xsignal r17, 0
	.loc	1 73 26                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:73:26
	addli r3, r3, 1
	beq r3, r26, .LBB0_31
.LBB0_18:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	addli r18, r18, 1
	addli r1, r23, 0
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_28 Depth 3
	addli r9, zero, 80
	.loc	1 86 20                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:86:20
	mod.s r8, r6, r7
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	addli r23, r1, 1
	.loc	1 86 20                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:86:20
	addli r6, r6, 1
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	mod.s r9, r10, r9
	addli r10, r10, 1
	.loc	1 86 20                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:86:20
	slli r8, r8, 14
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	slli r13, r9, 14
	.loc	1 86 20                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:86:20
	lui r9, 236
	add.s r8, r8, r9
	beq r2, r14, .LBB0_17
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:20
	bneq r2, r22, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:86:25
	zext_int2long r[15:16], r3
	.loc	1 86 20                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:86:20
	addli r1, zero, 17
	xwait r14, 0
	lock zero, r12
	addli r9, zero, 256
	dma_cfg r21, r21, zero, 0
	sll.d r[15:16], r[15:16], r1
	addli r1, zero, 2048
	add.ul r[15:16], r[4:5], r[15:16]
	dma_cfg zero, r16, zero, 2
	dma_cfg r8, r15, r9, 3
	dma_cfg r9, r1, r11, 4
	dma_run zero
	unlock r12
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:73:26
	addli r3, r3, 1
	bneq r3, r26, .LBB0_18
	j .LBB0_31
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	bneq r2, r12, .LBB0_26
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:0
	addli r8, zero, 48
	addli r9, zero, 1
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	xwait r12, 0
	xwait r17, 0
	.loc	1 0 0                           # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:0
	mod.s r1, r1, r8
	addli r8, zero, 1
	slli r1, r1, 14
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	beq r18, zero, .LBB0_27
# %bb.24:                               # %.preheader8.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 25                          # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:25
	addli r17, zero, 0
.LBB0_25:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	slli r15, r17, 13
	slli r16, r17, 8
	lock zero, r8
	addli r17, zero, 1
	mm_cfg r11, r11, r25, 0
	or r15, r15, r13
	or r16, r16, r27
	mm_cfg r28, r12, r8, 2
	mm_acc r16, r1, r15, 5
	andi r15, r9, 1
	addli r9, zero, 0
	unlock r8
	bneq r15, zero, .LBB0_25
	j .LBB0_29
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26 is_stmt 1               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:73:26
	addli r3, r3, 1
	bneq r3, r26, .LBB0_18
	j .LBB0_37
.LBB0_27:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 26 is_stmt 0                # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:26
	addli r15, zero, 0
.LBB0_28:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25 is_stmt 1               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	slli r16, r15, 13
	slli r15, r15, 8
	lock zero, r8
	mm_cfg r11, r11, r25, 0
	or r16, r16, r13
	or r15, r15, r27
	mm_cfg r28, r12, r8, 2
	mm r15, r1, r16, 5
	andi r16, r9, 1
	addli r15, zero, 1
	addli r9, zero, 0
	unlock r8
	bneq r16, zero, .LBB0_28
.LBB0_29:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:73:26
	addli r3, r3, 1
	addli r17, zero, 8
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	addli r1, zero, 9
	xsignal r24, 0
	xsignal r1, 0
	bneq r3, r26, .LBB0_18
# %bb.30:                               # %.split18.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:86:20
	addli r19, r19, 16
	j .LBB0_5
.LBB0_31:                               # %.split18
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r19, r19, 16
	.loc	1 73 26                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:73:26
	beq r2, r12, .LBB0_5
	j .LBB0_38
.LBB0_32:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:26
	load.d r[4:5], -880(r30)                # 8-byte Folded Reload
	addli r3, zero, 17
	load.d r[8:9], -920(r30)                # 8-byte Folded Reload
	storeli.w r27, -868(r30)                # 4-byte Folded Spill
	lui r27, 80
	store.d r[17:18], -864(r30)             # 8-byte Folded Spill
	sll.d r[3:4], r[4:5], r3
	addli r5, zero, 0
	and.d r[15:16], r[3:4], r[8:9]
	j .LBB0_34
.LBB0_33:                               # %.thread.us
                                        #   in Loop: Header=BB0_34 Depth=2
	addli r13, zero, 1024
	.loc	1 81 25 is_stmt 1               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:25
	sub.sl r[8:9], r[17:18], r[8:9]
	.loc	1 81 20 is_stmt 0               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:20
	xwait r20, 0
	addli r21, r19, 0
	lock zero, r12
	zext_int2long r[23:24], r13
	.loc	1 0 0                           # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:0
	add.s r13, r19, r5
	.loc	1 81 20                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:20
	load.d r[19:20], 0(r30)
	.loc	1 73 26 is_stmt 1               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:73:26
	addli r5, r5, 1
	.loc	1 81 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:25
	div.sl r[8:9], r[8:9], r[23:24]
	addli r23, zero, 1
	.loc	1 81 0 is_stmt 0                # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:0
	mod.s r13, r13, r7
	.loc	1 81 20                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:20
	sll.d r[17:18], r[17:18], r23
	dma_cfg r23, r23, zero, 0
	add.ul r[17:18], r[19:20], r[17:18]
	addli r19, r21, 0
	addli r20, zero, 3
	addli r21, zero, 1
	dma_cfg zero, r18, zero, 2
	.loc	1 81 0                          # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:0
	slli r13, r13, 14
	.loc	1 81 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:25
	load.d r[23:24], -848(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:0
	add.s r13, r13, r27
	.loc	1 81 20                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:20
	dma_cfg r13, r17, r25, 3
	.loc	1 81 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:25
	min.sl r[23:24], r[8:9], r[23:24]
	sub.sl r[8:9], r[23:24], r[8:9]
	.loc	1 81 20                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:20
	addli r8, r8, 128
	addli r9, zero, 2048
	dma_cfg r25, r9, r8, 4
	dma_run zero
	unlock r12
	xsignal r28, 0
	.loc	1 73 26 is_stmt 1               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:73:26
	beq r5, r26, .LBB0_36
.LBB0_34:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:86:25
	zext_int2long r[8:9], r5
	sll.d r[8:9], r[8:9], r22
	.loc	1 81 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:81:25
	add.ul r[17:18], r[8:9], r[3:4]
	loadli.w r8,  -852(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], r8
	setlt.ul r13, r[8:9], r[17:18]
	addli.d r[8:9], r[15:16], 0
	bneq r13, zero, .LBB0_33
# %bb.35:                               # %.thread.us
                                        #   in Loop: Header=BB0_34 Depth=2
	.loc	1 0 25 is_stmt 0                # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:25
	zext_int2long r[8:9], zero
	j .LBB0_33
.LBB0_36:                               # %.split18.us
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r16,  32(r30)
	load.d r[17:18], -864(r30)              # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:73:26
	addli r23, r1, 16
	addli r10, r10, 16
	addli r6, r6, 16
	.loc	1 89 25                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:89:25
	add.s r19, r19, r5
	addli r13, zero, 5
	addli r24, zero, 48
	j .LBB0_7
.LBB0_37:                               # %.split18.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:86:20
	addli r19, r19, 16
.LBB0_38:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:20
	load.d r[17:18], -864(r30)              # 8-byte Folded Reload
	addli r24, zero, 48
	beq r2, zero, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_9 Depth=1
	addli r13, zero, 5
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67 is_stmt 1              # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:101:67
	loadli.w r1,  -908(r30)                 # 4-byte Folded Reload
	load.d r[17:18], -848(r30)              # 8-byte Folded Reload
	addli r21, zero, 1
	addli r13, zero, 5
	zext_int2long r[3:4], r1
	addli r1, zero, 896
	zext_int2long r[8:9], r1
	loadli.w r1,  -904(r30)                 # 4-byte Folded Reload
	min.ul r[8:9], r[3:4], r[8:9]
	sext_int2long r[15:16], r1
	addli r1, zero, 18
	addli.d r[8:9], r[8:9], 128
	min.sl r[17:18], r[15:16], r[17:18]
	max.ul r[8:9], r[8:9], r[3:4]
	addli.d r[17:18], r[17:18], 128
	sub.sl r[3:4], r[8:9], r[3:4]
	zext_int2long r[8:9], r25
	max.sl r[17:18], r[17:18], r[15:16]
	min.ul r[3:4], r[3:4], r[8:9]
	store.d r[3:4], -848(r30)               # 8-byte Folded Spill
	load.d r[3:4], -880(r30)                # 8-byte Folded Reload
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 10
	store.d r[3:4], -880(r30)               # 8-byte Folded Spill
	sub.sl r[3:4], r[17:18], r[15:16]
	load.d r[17:18], -864(r30)              # 8-byte Folded Reload
	load.d r[15:16], -880(r30)              # 8-byte Folded Reload
	store.d r[3:4], -904(r30)               # 8-byte Folded Spill
	load.d r[3:4], 16(r30)
	add.ul r[3:4], r[3:4], r[15:16]
	load.d r[15:16], -904(r30)              # 8-byte Folded Reload
	min.sl r[8:9], r[15:16], r[8:9]
	load.d r[15:16], -896(r30)              # 8-byte Folded Reload
	xwait r1, 0
	addli r1, zero, 5
	lock zero, r1
	addli r1, zero, 1
	add.ul r[3:4], r[3:4], r[15:16]
	dma_cfg r1, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	load.d r[15:16], -848(r30)              # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r1, r15, 2
	dma_cfg r3, r27, r1, 3
	addli r1, zero, 512
	addli r3, zero, 2048
	dma_cfg r3, r1, r8, 4
	addli r1, zero, 11
	dma_run zero
	unlock r13
	xsignal r1, 0
.LBB0_41:                               # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:67
	loadli.w r27,  32(r30)
	j .LBB0_6
.LBB0_42:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_44
# %bb.43:
	.loc	1 0 0 is_stmt 0                 # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:22:0
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
.LBB0_44:
	.loc	1 22 0 epilogue_begin           # cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py:22:0
	addli sp, sp, 920
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
	.long	984                             # 0x3d8
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
.asciz	"cos7rzinfhd5xwclwsmsdbklcnsqvsld7b7x55imcwd46ovk6ajg.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/os" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
