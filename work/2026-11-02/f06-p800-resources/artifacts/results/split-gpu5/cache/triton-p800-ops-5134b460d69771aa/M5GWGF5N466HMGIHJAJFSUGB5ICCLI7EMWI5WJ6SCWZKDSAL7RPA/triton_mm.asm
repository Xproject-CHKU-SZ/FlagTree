	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu5/cache/inductor/5r" "c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py"
	.loc	1 22 0                          # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -744
	addli r30, sp, 680
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	core_id r12
	loadli.w r24,  32(r30)
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:26
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
	addli r3, zero, 5
	csr_set csr3, r1
	addli r1, zero, 11
	sync_group
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r2, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -124(r30)
	storeli.w zero, -288(r30)
	storeli.w zero, -412(r30)
	storeli.w zero, -608(r30)
	mul.s r1, r3, r1
	addli r3, r2, 0
	fmac.s r3, r1, r4
	mul.s r4, r1, r4
	addli r3, r3, -1
	div.s r3, r3, r2
	load_param_i r2, 0
	mul.s r1, r3, r2
	fmac.s r3, r3, r2
	min.s r3, r3, r4
	ble.s r3, r1, .LBB0_37
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r3
	sext_int2long r[17:18], r1
	loadli.w r6,  -124(r30)
	loadli.w r7,  -288(r30)
	loadli.w r9,  -412(r30)
	loadli.w r16,  -608(r30)
	addli r11, zero, 128
	addli r14, zero, 7
	addli r15, zero, 4
	addli r22, zero, 1
	addli r21, zero, 48
	addli r5, zero, 30
	addli r19, zero, 6
	addli r8, zero, 3
	addli r25, zero, 16
	addli r27, zero, 64
	addli r20, zero, 4096
	lui r26, 32
	addli r23, zero, 2
	store.d r[2:3], -656(r30)               # 8-byte Folded Spill
	lui r3, 15
	ori r2, r3, 4095
	lui r3, 1023
	lui r1, 1047552
	store.d r[1:2], -680(r30)               # 8-byte Folded Spill
	ori r1, r3, 4095
	addli r2, zero, 0
	storeli.w r1, -628(r30)                 # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split19.us.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r9,  -616(r30)                 # 4-byte Folded Reload
	.loc	1 86 20 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:86:20
	addli r9, r9, 16
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	addli r1, zero, 10
	xsignal r1, 0
	load.d r[17:18], -640(r30)              # 8-byte Folded Reload
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:26
	lui r26, 32
.LBB0_8:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[1:2], -656(r30)                # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 1
	addli r16, r23, 0
	addli r23, zero, 2
	setlt.sl r1, r[17:18], r[1:2]
	loadli.w r2,  -632(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	beq r1, zero, .LBB0_37
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	div.s r3, r17, r24
	loadli.w r1,  28(r30)
	storeli.w r9, -616(r30)                 # 4-byte Folded Spill
	.loc	1 73 26                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	storeli.w r2, -632(r30)                 # 4-byte Folded Spill
	div.s r10, r3, r1
	.loc	1 54 30 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:54:30
	addli r1, zero, 32
	.loc	1 53 22                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:53:22
	div.s r3, r10, r11
	.loc	1 54 41                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:54:41
	slli r9, r3, 3
	.loc	1 54 30 is_stmt 0               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:54:30
	sub.s r4, r1, r9
	.loc	1 54 50                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:54:50
	addli r1, zero, 8
	min.s r4, r4, r1
	addli r1, zero, 1984
	.loc	1 55 40 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:55:40
	mod.s r13, r10, r4
	.loc	1 55 34 is_stmt 0               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:55:34
	add.s r9, r9, r13
	.loc	1 95 15 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:95:15
	zext_int2long r[12:13], r9
	store.d r[12:13], -648(r30)             # 8-byte Folded Spill
	zext_int2long r[12:13], r1
	.loc	1 73 26                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	store.d r[12:13], -624(r30)             # 8-byte Folded Spill
	core_id r12
	bneq r12, r15, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 11
	xwait r1, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:26
	beq r12, r22, .LBB0_30
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r12, r23, .LBB0_16
# %bb.13:                               # %.thread.us25.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r9,  -616(r30)                 # 4-byte Folded Reload
	addli r4, zero, 0
	addli r3, zero, 3
	addli r8, zero, 5
.LBB0_14:                               # %.thread.us25
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	add.s r1, r9, r4
	add.s r2, r16, r4
	xwait r23, 0
	xwait r8, 0
	lock zero, zero
	.loc	1 73 26                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	addli r4, r4, 1
	.loc	1 89 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	ds_cfg r3, zero, 0
	.loc	1 81 20                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:20
	mod.s r1, r1, r5
	.loc	1 89 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	mod.s r2, r2, r21
	ds_cfg r11, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r27, zero, 13
	.loc	1 81 20                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:20
	slli r1, r1, 14
	.loc	1 89 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	slli r2, r2, 14
	.loc	1 81 20                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:20
	add.s r1, r1, r26
	.loc	1 89 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	shuffle_batch r2, r1, r11, 1
	unlock zero
	xsignal r3, 0
	xsignal r15, 0
	.loc	1 73 26                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	bneq r4, r25, .LBB0_14
# %bb.15:                               # %.split19.us.loopexit56
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:26
	addli r8, zero, 3
	.loc	1 73 26                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	addli r7, r7, 16
	addli r6, r6, 16
	.loc	1 89 25 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	add.s r23, r16, r4
	add.s r9, r9, r4
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:25
	slli r3, r3, 7
	slli r1, r9, 6
	store.d r[17:18], -640(r30)             # 8-byte Folded Spill
	addli r28, zero, 0
	addli r13, zero, 0
	sub.s r3, r10, r3
	storeli.w r1, -668(r30)                 # 4-byte Folded Spill
	div.s r3, r3, r4
	mod.s r4, r2, r15
	zext_int2long r[17:18], r3
	slli r1, r3, 7
	slli r26, r4, 15
	addli r3, zero, 8
	addli r4, zero, 40
	sll.d r[9:10], r[17:18], r14
	.loc	1 73 26 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	storeli.w r1, -672(r30)                 # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[9:10], r[9:10], r22
	store.d r[9:10], -664(r30)              # 8-byte Folded Spill
	add.ul r[9:10], r[1:2], r[9:10]
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	addli r1, zero, 9
	xwait r19, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r8, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r11, zero, 13
	shuffle_coa r18, r17, r11, 2
	unlock zero
	xsignal r14, 0
	xsignal r3, 0
	.loc	1 73 26                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	addli r28, r28, 1
	bneq r28, r25, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 86 20                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:86:20
	mod.s r1, r6, r5
	.loc	1 89 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	mod.s r2, r7, r4
	addli r23, r16, 1
	addli r7, r7, 1
	.loc	1 86 20                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:86:20
	addli r6, r6, 1
	.loc	1 89 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	slli r18, r2, 15
	.loc	1 86 20                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:86:20
	slli r1, r1, 15
	lui r2, 152
	add.s r17, r1, r2
	beq r12, r14, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:20
	bneq r12, r19, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:86:25
	zext_int2long r[1:2], r28
	.loc	1 86 20                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:86:20
	addli r16, zero, 19
	xwait r14, 0
	lock zero, r15
	dma_cfg r22, r22, zero, 0
	sll.d r[1:2], r[1:2], r16
	addli r16, zero, 256
	add.ul r[1:2], r[9:10], r[1:2]
	dma_cfg zero, r2, zero, 2
	dma_cfg r17, r1, r16, 3
	dma_cfg r16, r20, r11, 4
	dma_run zero
	unlock r15
	xsignal r19, 0
	.loc	1 73 26 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	addli r28, r28, 1
	bneq r28, r25, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	bneq r12, r15, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:0
	mod.s r1, r16, r21
	.loc	1 89 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	xwait r15, 0
	xwait r3, 0
	addli r17, zero, 1
	addli r3, zero, 1
	addli r4, zero, 0
	.loc	1 0 0                           # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:0
	slli r16, r1, 14
	.loc	1 89 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	beq r13, zero, .LBB0_24
.LBB0_23:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r1, r4, 14
	slli r2, r4, 8
	lock zero, r17
	addli r4, zero, 1
	mm_cfg r27, r11, r27, 0
	or r1, r1, r18
	or r2, r2, r26
	mm_cfg r15, r15, r17, 2
	mm_acc r2, r16, r1, 5
	andi r1, r3, 1
	addli r3, zero, 0
	unlock r17
	bneq r1, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r1, r4, 14
	slli r2, r4, 8
	lock zero, r17
	addli r4, zero, 1
	mm_cfg r27, r11, r27, 0
	or r1, r1, r18
	or r2, r2, r26
	mm_cfg r15, r15, r17, 2
	mm r2, r16, r1, 5
	andi r1, r3, 1
	addli r3, zero, 0
	unlock r17
	bneq r1, zero, .LBB0_24
.LBB0_25:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r1, zero, 5
	.loc	1 73 26 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	addli r28, r28, 1
	addli r3, zero, 8
	addli r4, zero, 40
	.loc	1 89 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r28, r25, .LBB0_27
	j .LBB0_5
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	addli r28, r28, 1
	beq r28, r25, .LBB0_35
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	addli r13, r13, 1
	addli r16, r23, 0
	j .LBB0_18
.LBB0_28:                               # %.split19.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:25
	loadli.w r9,  -616(r30)                 # 4-byte Folded Reload
	.loc	1 86 20 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:86:20
	addli r9, r9, 16
	.loc	1 73 26                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	beq r12, r15, .LBB0_6
# %bb.29:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:26
	load.d r[17:18], -640(r30)              # 8-byte Folded Reload
	bneq r12, zero, .LBB0_7
	j .LBB0_36
.LBB0_30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[2:3], -648(r30)                # 8-byte Folded Reload
	addli r1, zero, 17
	addli r28, zero, 2
	addli r13, zero, 0
	store.d r[17:18], -640(r30)             # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	load.d r[1:2], -680(r30)                # 8-byte Folded Reload
	and.d r[23:24], r[9:10], r[1:2]
	j .LBB0_32
.LBB0_31:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	addli r1, zero, 2048
	.loc	1 81 25 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:25
	sub.sl r[17:18], r[3:4], r[17:18]
	.loc	1 81 20 is_stmt 0               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:20
	load.d r[19:20], 0(r30)
	lui r26, 32
	zext_int2long r[21:22], r1
	.loc	1 0 0                           # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:0
	loadli.w r1,  -616(r30)                 # 4-byte Folded Reload
	.loc	1 81 20                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:20
	xwait r8, 0
	lock zero, r15
	.loc	1 81 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:25
	div.sl r[17:18], r[17:18], r[21:22]
	addli r22, zero, 1
	.loc	1 0 0                           # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:0
	add.s r21, r1, r13
	addli r1, zero, 1
	.loc	1 73 26 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	addli r13, r13, 1
	.loc	1 81 20                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:20
	sll.d r[3:4], r[3:4], r1
	dma_cfg r1, r1, zero, 0
	.loc	1 81 0 is_stmt 0                # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:0
	mod.s r21, r21, r5
	.loc	1 81 20                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:20
	add.ul r[3:4], r[19:20], r[3:4]
	addli r20, zero, 4096
	dma_cfg zero, r4, zero, 2
	.loc	1 81 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:25
	load.d r[1:2], -624(r30)                # 8-byte Folded Reload
	.loc	1 81 0                          # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:0
	slli r21, r21, 14
	.loc	1 81 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:25
	min.sl r[1:2], r[17:18], r[1:2]
	sub.sl r[1:2], r[1:2], r[17:18]
	.loc	1 81 0                          # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:0
	add.s r17, r21, r26
	.loc	1 81 20                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:20
	addli r1, r1, 64
	addli r2, zero, 256
	dma_cfg r17, r3, r2, 3
	dma_cfg r2, r20, r1, 4
	dma_run zero
	unlock r15
	xsignal r28, 0
	.loc	1 73 26 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	beq r13, r25, .LBB0_34
.LBB0_32:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:86:25
	zext_int2long r[3:4], r13
	loadli.w r1,  -628(r30)                 # 4-byte Folded Reload
	sll.d r[3:4], r[3:4], r14
	zext_int2long r[17:18], r1
	.loc	1 81 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:81:25
	add.ul r[3:4], r[3:4], r[9:10]
	setlt.ul r26, r[17:18], r[3:4]
	addli.d r[17:18], r[23:24], 0
	bneq r26, zero, .LBB0_31
# %bb.33:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 25 is_stmt 0                # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:25
	zext_int2long r[17:18], zero
	j .LBB0_31
.LBB0_34:                               # %.split19.us.loopexit55
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r9,  -616(r30)                 # 4-byte Folded Reload
	loadli.w r24,  32(r30)
	load.d r[17:18], -640(r30)              # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:73:26
	addli r23, r16, 16
	addli r7, r7, 16
	addli r6, r6, 16
	addli r21, zero, 48
	addli r19, zero, 6
	.loc	1 89 25                         # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:89:25
	add.s r9, r9, r13
	j .LBB0_8
.LBB0_35:                               # %.split19.us.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:25
	loadli.w r9,  -616(r30)                 # 4-byte Folded Reload
	.loc	1 86 20 is_stmt 1               # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:86:20
	addli r9, r9, 16
	load.d r[17:18], -640(r30)              # 8-byte Folded Reload
	bneq r12, zero, .LBB0_7
.LBB0_36:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:101:67
	loadli.w r1,  -672(r30)                 # 4-byte Folded Reload
	addli r3, zero, 1920
	addli r24, r9, 0
	loadli.w r9,  -668(r30)                 # 4-byte Folded Reload
	load.d r[16:17], -624(r30)              # 8-byte Folded Reload
	addli r13, zero, 10
	addli r22, zero, 1
	zext_int2long r[3:4], r3
	zext_int2long r[1:2], r1
	sext_int2long r[9:10], r9
	min.ul r[3:4], r[1:2], r[3:4]
	min.sl r[16:17], r[9:10], r[16:17]
	addli.d r[3:4], r[3:4], 128
	addli.d r[16:17], r[16:17], 64
	max.ul r[3:4], r[3:4], r[1:2]
	max.sl r[16:17], r[16:17], r[9:10]
	sub.sl r[1:2], r[3:4], r[1:2]
	zext_int2long r[3:4], r11
	min.ul r[1:2], r[1:2], r[3:4]
	sub.sl r[3:4], r[16:17], r[9:10]
	addli r9, zero, 18
	zext_int2long r[16:17], r27
	store.d r[1:2], -616(r30)               # 8-byte Folded Spill
	load.d r[1:2], -648(r30)                # 8-byte Folded Reload
	min.sl r[3:4], r[3:4], r[16:17]
	addli r16, zero, 5
	load.d r[17:18], -640(r30)              # 8-byte Folded Reload
	sll.d r[9:10], r[1:2], r9
	load.d r[1:2], 16(r30)
	add.ul r[9:10], r[1:2], r[9:10]
	load.d r[1:2], -664(r30)                # 8-byte Folded Reload
	xwait r13, 0
	addli r13, zero, 1
	lock zero, r16
	dma_cfg r13, zero, zero, 0
	dma_cfg zero, r13, zero, 1
	add.ul r[9:10], r[9:10], r[1:2]
	load.d r[1:2], -616(r30)                # 8-byte Folded Reload
	dma_cfg r10, zero, zero, 2
	slli r1, r1, 2
	dma_cfg r9, r26, r1, 3
	addli r1, zero, 512
	addli r9, r24, 0
	loadli.w r24,  32(r30)
	dma_cfg r20, r1, r3, 4
	addli r1, zero, 11
	dma_run zero
	unlock r16
	xsignal r1, 0
	j .LBB0_7
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0                          # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:22:0
	xsignal zero, 0
	bneq r12, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:22:0
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
	.loc	1 22 0 epilogue_begin           # c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py:22:0
	addli sp, sp, 680
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
	.long	744                             # 0x2e8
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
.asciz	"c5rr5z5ucm5r74hagciqmvxv6pikx2oaxsnpaqpew73mcann56fk.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu5/cache/inductor/5r" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
