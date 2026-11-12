	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/7q" "c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py"
	.loc	1 22 0                          # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1360
	addli r30, sp, 1296
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	core_id r26
	loadli.w r11,  32(r30)
	loadli.w r17,  28(r30)
	xsignal_mode_cfg r1
	beq r26, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	storeli.w zero, -192(r30)
	storeli.w zero, -836(r30)
	storeli.w zero, -1032(r30)
	storeli.w zero, -1228(r30)
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
	ble.s r3, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[15:16], r1
	lui r1, 7
	loadli.w r27,  -192(r30)
	loadli.w r6,  -1032(r30)
	loadli.w r24,  -1228(r30)
	loadli.w r28,  -836(r30)
	addli r13, zero, 256
	addli r10, zero, 8
	addli r22, zero, 5
	addli r12, zero, 4
	addli r14, zero, 1
	addli r9, zero, 48
	addli r19, zero, 7
	addli r20, zero, 6
	addli r23, zero, 64
	addli r25, zero, 128
	lui r21, 10
	addli r18, zero, 2
	store.d r[3:4], -1272(r30)              # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 127
	lui r3, 1048448
	ori r1, r1, 4095
	store.d r[3:4], -1296(r30)              # 8-byte Folded Spill
	addli r4, zero, 0
	storeli.w r1, -1244(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split18.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:86:20
	addli r6, r6, 8
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	addli r1, zero, 10
	addli r11, r17, 0
	loadli.w r17,  28(r30)
	.loc	1 101 67                        # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:101:67
	addli r28, r21, 1
	addli r27, r9, 1
	addli r24, r5, 1
	addli r13, zero, 256
	addli r9, zero, 48
	lui r21, 10
	addli r18, zero, 2
	.loc	1 73 26                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	xsignal r1, 0
	load.d r[15:16], -1256(r30)             # 8-byte Folded Reload
.LBB0_7:                                # %.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:0:26
	load.d r[3:4], -1272(r30)               # 8-byte Folded Reload
	addli.d r[15:16], r[15:16], 1
	setlt.sl r1, r[15:16], r[3:4]
	loadli.w r4,  -1248(r30)                # 4-byte Folded Reload
	addli r4, r4, 1
	beq r1, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	div.s r1, r15, r11
	.loc	1 73 26                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	storeli.w r4, -1248(r30)                # 4-byte Folded Spill
	div.s r5, r1, r17
	.loc	1 53 22 is_stmt 1               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:53:22
	div.s r7, r5, r13
	.loc	1 54 41                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:54:41
	slli r1, r7, 3
	.loc	1 54 30 is_stmt 0               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:54:30
	sub.s r3, r10, r1
	.loc	1 54 50                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:54:50
	min.s r8, r3, r10
	.loc	1 55 40 is_stmt 1               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:55:40
	mod.s r3, r5, r8
	.loc	1 55 34 is_stmt 0               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:55:34
	add.s r1, r1, r3
	.loc	1 95 15 is_stmt 1               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:95:15
	zext_int2long r[2:3], r1
	store.d r[2:3], -1264(r30)              # 8-byte Folded Spill
	addli r3, zero, 448
	zext_int2long r[2:3], r3
	.loc	1 73 26                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	store.d r[2:3], -1240(r30)              # 8-byte Folded Spill
	bneq r26, r12, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	addli r2, zero, 3
	xwait r3, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:0:26
	beq r26, r14, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 3
	bneq r26, r18, .LBB0_15
# %bb.12:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 0
.LBB0_13:                               # %.thread.us23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	add.s r1, r6, r3
	add.s r4, r24, r3
	xwait r18, 0
	xwait r22, 0
	lock zero, zero
	.loc	1 73 26                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	ds_cfg r2, zero, 0
	.loc	1 81 20                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:20
	mod.s r1, r1, r9
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	mod.s r4, r4, r9
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:20
	slli r1, r1, 14
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	slli r4, r4, 14
	.loc	1 81 20                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:20
	add.s r1, r1, r21
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	shuffle_batch r4, r1, r25, 1
	unlock zero
	xsignal r2, 0
	xsignal r12, 0
	bneq r3, r10, .LBB0_13
# %bb.14:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	addli r28, r28, 8
	addli r27, r27, 8
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	add.s r24, r24, r3
	add.s r6, r6, r3
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:0:25
	slli r3, r7, 8
	mod.s r4, r4, r22
	slli r1, r1, 6
	store.d r[15:16], -1256(r30)            # 8-byte Folded Spill
	addli r17, r11, 0
	addli r18, zero, 48
	addli r11, zero, 0
	addli r13, zero, 0
	sub.s r3, r5, r3
	storeli.w r1, -1284(r30)                # 4-byte Folded Spill
	div.s r3, r3, r8
	slli r15, r4, 13
	zext_int2long r[7:8], r3
	slli r1, r3, 5
	.loc	1 73 26 is_stmt 1               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	load.d r[3:4], 8(r30)
	sll.d r[7:8], r[7:8], r22
	storeli.w r1, -1288(r30)                # 4-byte Folded Spill
	sll.d r[7:8], r[7:8], r14
	store.d r[7:8], -1280(r30)              # 8-byte Folded Spill
	add.ul r[7:8], r[3:4], r[7:8]
	addli r4, zero, 160
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	addli r3, zero, 9
	xwait r20, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 32
	ds_cfg r2, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r3, zero, 13
	shuffle_coa r16, r1, r25, 2
	unlock zero
	xsignal r19, 0
	xsignal r10, 0
	.loc	1 73 26                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	addli r11, r11, 1
	bneq r11, r10, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	add.s r21, r28, r13
	add.s r9, r27, r13
	.loc	1 86 20                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:86:20
	addli r1, zero, 47
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	add.s r5, r24, r13
	.loc	1 86 20                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:86:20
	mod.s r1, r9, r1
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	mod.s r3, r21, r4
	slli r16, r3, 13
	.loc	1 86 20                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:86:20
	slli r1, r1, 14
	lui r3, 202
	add.s r1, r1, r3
	beq r26, r19, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:0:20
	bneq r26, r20, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:86:25
	zext_int2long r[3:4], r11
	.loc	1 86 20                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:86:20
	addli r16, zero, 18
	xwait r19, 0
	lock zero, r12
	dma_cfg r14, r14, zero, 0
	sll.d r[3:4], r[3:4], r16
	add.ul r[3:4], r[7:8], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r1, r3, r23, 3
	addli r1, zero, 2048
	addli r4, zero, 160
	dma_cfg r25, r1, r25, 4
	dma_run zero
	unlock r12
	xsignal r20, 0
	.loc	1 73 26 is_stmt 1               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	addli r11, r11, 1
	bneq r11, r10, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	bneq r26, r12, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:0:0
	mod.s r1, r5, r18
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	addli r3, zero, 32
	xwait r12, 0
	xwait r10, 0
	lock zero, r14
	mm_cfg r3, r25, r23, 0
	mm_cfg r12, r14, r14, 2
	.loc	1 0 0                           # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:0:0
	slli r1, r1, 14
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	beq r13, zero, .LBB0_24
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc r15, r1, r16, 5
	j .LBB0_25
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	addli r11, r11, 1
	bneq r11, r10, .LBB0_26
	j .LBB0_33
.LBB0_24:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	mm r15, r1, r16, 5
.LBB0_25:                               # %.thread6.thread91
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	addli r11, r11, 1
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	addli r1, zero, 9
	unlock r14
	xsignal r22, 0
	xsignal r1, 0
	.loc	1 73 26                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	beq r11, r10, .LBB0_5
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	addli r13, r13, 1
	j .LBB0_17
.LBB0_27:                               # %.split18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:86:20
	addli r6, r6, 8
	.loc	1 73 26                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	beq r26, r12, .LBB0_6
	j .LBB0_34
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:0:26
	load.d r[2:3], -1264(r30)               # 8-byte Folded Reload
	addli r1, zero, 16
	addli r5, zero, 0
	store.d r[15:16], -1256(r30)            # 8-byte Folded Spill
	sll.d r[7:8], r[2:3], r1
	load.d r[3:4], -1296(r30)               # 8-byte Folded Reload
	addli r2, zero, 3
	and.d r[3:4], r[7:8], r[3:4]
	j .LBB0_30
.LBB0_29:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	addli r1, zero, 1024
	.loc	1 81 25 is_stmt 1               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:25
	sub.sl r[15:16], r[17:18], r[15:16]
	.loc	1 81 20 is_stmt 0               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:20
	sll.d r[17:18], r[17:18], r14
	xwait r2, 0
	lock zero, r12
	dma_cfg r14, r14, zero, 0
	zext_int2long r[21:22], r1
	.loc	1 0 0                           # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:0:0
	add.s r1, r6, r5
	.loc	1 73 26 is_stmt 1               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	addli r5, r5, 1
	.loc	1 81 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:25
	div.sl r[15:16], r[15:16], r[21:22]
	.loc	1 81 20 is_stmt 0               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:20
	load.d r[21:22], 0(r30)
	.loc	1 81 0                          # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:0
	mod.s r1, r1, r9
	.loc	1 81 20                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:20
	add.ul r[17:18], r[21:22], r[17:18]
	dma_cfg zero, r18, zero, 2
	.loc	1 81 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:25
	load.d r[21:22], -1240(r30)             # 8-byte Folded Reload
	.loc	1 81 0                          # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:0
	slli r1, r1, 14
	.loc	1 81 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:25
	min.sl r[21:22], r[15:16], r[21:22]
	sub.sl r[15:16], r[21:22], r[15:16]
	lui r21, 10
	.loc	1 81 0                          # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:0
	add.s r1, r1, r21
	.loc	1 81 20                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:20
	addli r9, r15, 64
	dma_cfg r1, r17, r13, 3
	addli r1, zero, 2048
	addli r18, zero, 2
	dma_cfg r13, r1, r9, 4
	addli r9, zero, 48
	dma_run zero
	unlock r12
	xsignal r18, 0
	.loc	1 73 26 is_stmt 1               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	beq r5, r10, .LBB0_32
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:86:25
	zext_int2long r[15:16], r5
	loadli.w r1,  -1244(r30)                # 4-byte Folded Reload
	sll.d r[15:16], r[15:16], r19
	.loc	1 81 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:81:25
	add.ul r[17:18], r[15:16], r[7:8]
	zext_int2long r[15:16], r1
	setlt.ul r1, r[15:16], r[17:18]
	addli.d r[15:16], r[3:4], 0
	bneq r1, zero, .LBB0_29
# %bb.31:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 0 25 is_stmt 0                # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:0:25
	zext_int2long r[15:16], zero
	j .LBB0_29
.LBB0_32:                               # %.split18.us
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r17,  28(r30)
	load.d r[15:16], -1256(r30)             # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:73:26
	addli r24, r24, 8
	addli r28, r28, 8
	addli r27, r27, 8
	.loc	1 89 25                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:89:25
	add.s r6, r6, r5
	addli r22, zero, 5
	j .LBB0_7
.LBB0_33:                               # %.split18.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:86:20
	addli r6, r6, 8
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:101:67
	addli r24, r5, 1
	addli r28, r21, 1
	addli r27, r9, 1
	addli r13, zero, 256
	addli r11, r17, 0
	addli r18, zero, 2
	beq r26, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:0:67
	load.d r[15:16], -1256(r30)             # 8-byte Folded Reload
	loadli.w r17,  28(r30)
	addli r9, zero, 48
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:101:67
	loadli.w r1,  -1288(r30)                # 4-byte Folded Reload
	load.d r[21:22], -1240(r30)             # 8-byte Folded Reload
	addli r9, zero, 48
	zext_int2long r[3:4], r1
	addli r1, zero, 992
	zext_int2long r[7:8], r1
	loadli.w r1,  -1284(r30)                # 4-byte Folded Reload
	min.ul r[7:8], r[3:4], r[7:8]
	sext_int2long r[16:17], r1
	addli r1, zero, 32
	addli.d r[7:8], r[7:8], 32
	min.sl r[21:22], r[16:17], r[21:22]
	max.ul r[7:8], r[7:8], r[3:4]
	addli.d r[21:22], r[21:22], 64
	sub.sl r[3:4], r[7:8], r[3:4]
	zext_int2long r[7:8], r1
	max.sl r[21:22], r[21:22], r[16:17]
	min.ul r[1:2], r[3:4], r[7:8]
	sub.sl r[7:8], r[21:22], r[16:17]
	zext_int2long r[21:22], r23
	store.d r[1:2], -1240(r30)              # 8-byte Folded Spill
	load.d r[2:3], -1264(r30)               # 8-byte Folded Reload
	addli r1, zero, 17
	min.sl r[7:8], r[7:8], r[21:22]
	addli r22, zero, 5
	sll.d r[16:17], r[2:3], r1
	load.d r[3:4], 16(r30)
	load.d r[1:2], -1280(r30)               # 8-byte Folded Reload
	add.ul r[16:17], r[3:4], r[16:17]
	add.ul r[16:17], r[16:17], r[1:2]
	addli r1, zero, 10
	xwait r1, 0
	lock zero, r22
	dma_cfg r14, zero, zero, 0
	dma_cfg zero, r14, zero, 1
	load.d r[1:2], -1240(r30)               # 8-byte Folded Reload
	dma_cfg r17, zero, zero, 2
	slli r1, r1, 2
	dma_cfg r16, r15, r1, 3
	addli r1, zero, 2048
	loadli.w r17,  28(r30)
	dma_cfg r1, r25, r7, 4
	addli r1, zero, 11
	dma_run zero
	unlock r22
	xsignal r1, 0
	load.d r[15:16], -1256(r30)             # 8-byte Folded Reload
.LBB0_37:                               # %.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67                          # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:0:67
	lui r21, 10
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:22:0
	xsignal zero, 0
	bneq r26, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:22:0
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
.LBB0_40:
	.loc	1 22 0 epilogue_begin           # c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py:22:0
	addli sp, sp, 1296
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
	.long	1360                            # 0x550
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
.asciz	"c7q3fu2r5u2cvuw4wmudgbxdmtwh2lxxe6zr5zx6obbgrprn6moq.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/7q" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
