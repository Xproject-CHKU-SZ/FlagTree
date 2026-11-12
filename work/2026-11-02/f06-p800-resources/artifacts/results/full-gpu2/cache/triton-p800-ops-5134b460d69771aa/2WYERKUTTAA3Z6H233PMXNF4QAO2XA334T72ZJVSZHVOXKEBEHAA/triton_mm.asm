	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/q6" "cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py"
	.loc	1 22 0                          # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2120
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	core_id r21
	addli r30, sp, 2056
	xsignal_mode_cfg r1
	beq r21, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -292(r30)
	storeli.w zero, -1316(r30)
	storeli.w zero, -1608(r30)
	storeli.w zero, -1996(r30)
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
	loadli.w r28,  -292(r30)
	loadli.w r26,  -1316(r30)
	loadli.w r8,  -1608(r30)
	loadli.w r27,  -1996(r30)
	sext_int2long r[3:4], r3
	sext_int2long r[6:7], r1
	addli r9, zero, 128
	addli r10, zero, 1
	addli r12, zero, 6
	addli r13, zero, 4
	addli r16, zero, 96
	addli r17, zero, 72
	lui r18, 320
	addli r19, zero, 7
	addli r2, zero, 3
	addli r22, zero, 64
	addli r23, zero, 32
	addli r14, zero, 2
	lui r24, 32
	addli r15, zero, 0
	store.d r[3:4], -2032(r30)              # 8-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:86:20
	addli r8, r8, 4
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:101:67
	addli r27, r20, 1
	addli r26, r15, 1
	addli r28, r3, 1
	addli r16, zero, 96
	addli r14, zero, 2
	lui r24, 32
	.loc	1 73 26                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	xsignal r1, 0
	load.d r[6:7], -2008(r30)               # 8-byte Folded Reload
.LBB0_7:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:0:26
	loadli.w r15,  -2012(r30)               # 4-byte Folded Reload
.LBB0_8:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -2032(r30)               # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	addli r15, r15, 1
	setlt.sl r1, r[6:7], r[3:4]
	beq r1, zero, .LBB0_38
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:54:50
	addli r11, zero, 8
	div.s r1, r6, r1
	div.s r3, r1, r3
	.loc	1 53 22                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:53:22
	div.s r4, r3, r9
	.loc	1 54 41                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:54:41
	slli r1, r4, 3
	.loc	1 54 30 is_stmt 0               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:54:30
	sub.s r5, r10, r1
	.loc	1 54 50                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:54:50
	min.s r5, r5, r11
	.loc	1 55 40 is_stmt 1               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:55:40
	mod.s r11, r3, r5
	.loc	1 55 34 is_stmt 0               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:55:34
	add.s r1, r1, r11
	.loc	1 95 15 is_stmt 1               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:95:15
	zext_int2long r[20:21], r1
	.loc	1 73 26                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	store.d r[20:21], -2024(r30)            # 8-byte Folded Spill
	core_id r21
	bneq r21, r13, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r11, zero, 11
	xwait r11, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:0:26
	beq r21, r10, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r21, r14, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 0
	addli r5, zero, 5
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	add.s r3, r8, r1
	add.s r4, r27, r1
	xwait r14, 0
	xwait r5, 0
	lock zero, zero
	.loc	1 73 26                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	ds_cfg r2, zero, 0
	.loc	1 81 20                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:81:20
	mod.s r3, r3, r17
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	mod.s r4, r4, r16
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r9, zero, 13
	.loc	1 81 20                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	slli r4, r4, 13
	.loc	1 81 20                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:81:20
	add.s r3, r3, r24
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	shuffle_batch r4, r3, r23, 1
	unlock zero
	xsignal r2, 0
	xsignal r13, 0
	bneq r1, r13, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	addli r26, r26, 4
	addli r28, r28, 4
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	add.s r27, r27, r1
	add.s r8, r8, r1
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:0:25
	slli r4, r4, 7
	slli r1, r1, 7
	storeli.w r15, -2012(r30)               # 4-byte Folded Spill
	store.d r[6:7], -2008(r30)              # 8-byte Folded Spill
	addli r24, zero, 0
	addli r11, zero, 0
	addli r16, zero, 255
	sub.s r3, r3, r4
	mod.s r4, r15, r13
	storeli.w r1, -2048(r30)                # 4-byte Folded Spill
	div.s r3, r3, r5
	zext_int2long r[14:15], r3
	slli r1, r3, 6
	sll.d r[14:15], r[14:15], r12
	.loc	1 73 26 is_stmt 1               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	storeli.w r1, -2052(r30)                # 4-byte Folded Spill
	slli r1, r4, 15
	load.d r[3:4], 8(r30)
	sll.d r[5:6], r[14:15], r10
	store.d r[5:6], -2040(r30)              # 8-byte Folded Spill
	add.ul r[4:5], r[3:4], r[5:6]
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	addli r6, zero, 9
	xwait r12, 0
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 8
	ds_cfg r2, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r25, r14, r23, 2
	unlock zero
	xsignal r19, 0
	xsignal r6, 0
	.loc	1 73 26                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	addli r24, r24, 1
	bneq r24, r13, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	add.s r3, r28, r11
	add.s r15, r26, r11
	add.s r20, r27, r11
	.loc	1 86 20                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:86:20
	mod.s r6, r3, r17
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	mod.s r7, r15, r16
	.loc	1 86 20                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:86:20
	slli r6, r6, 12
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	slli r25, r7, 12
	.loc	1 86 20                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:86:20
	add.s r14, r6, r18
	beq r21, r19, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:0:20
	bneq r21, r12, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:86:25
	zext_int2long r[6:7], r24
	.loc	1 86 20                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:86:20
	addli r25, zero, 16
	xwait r19, 0
	lock zero, r13
	dma_cfg r10, r10, zero, 0
	sll.d r[6:7], r[6:7], r25
	add.ul r[6:7], r[4:5], r[6:7]
	dma_cfg zero, r7, zero, 2
	dma_cfg r14, r6, r9, 3
	addli r6, zero, 2048
	dma_cfg r9, r6, r23, 4
	dma_run zero
	unlock r13
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	addli r24, r24, 1
	bneq r24, r13, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	bneq r21, r13, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:0:0
	addli r6, zero, 96
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	addli r7, zero, 8
	xwait r13, 0
	.loc	1 0 0                           # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:0:0
	mod.s r6, r20, r6
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	xwait r7, 0
	lock zero, r10
	mm_cfg r22, r23, r9, 0
	.loc	1 0 0                           # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:0:0
	slli r14, r6, 13
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	addli r6, zero, 2
	mm_cfg r10, r6, r10, 2
	beq r11, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r1, r14, r25, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	addli r24, r24, 1
	bneq r24, r13, .LBB0_27
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	mm r1, r14, r25, 5
.LBB0_26:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r6, zero, 5
	unlock r10
	.loc	1 73 26                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	addli r24, r24, 1
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	xsignal r6, 0
	addli r6, zero, 9
	xsignal r6, 0
	.loc	1 73 26                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	beq r24, r13, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	addli r11, r11, 1
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:86:20
	addli r8, r8, 4
	.loc	1 73 26                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	beq r21, r13, .LBB0_6
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:0:26
	load.d r[3:4], -2024(r30)               # 8-byte Folded Reload
	addli r1, zero, 14
	addli r11, zero, 5
	storeli.w r15, -2012(r30)               # 4-byte Folded Spill
	store.d r[6:7], -2008(r30)              # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 0
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	add.s r5, r8, r1
	.loc	1 81 25 is_stmt 1               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:81:25
	srl.d r[6:7], r[24:25], r19
	.loc	1 81 20 is_stmt 0               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:81:20
	load.d r[24:25], 0(r30)
	sll.d r[14:15], r[14:15], r10
	xwait r2, 0
	lock zero, r13
	.loc	1 73 26 is_stmt 1               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	addli r1, r1, 1
	.loc	1 81 20                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:81:20
	dma_cfg r10, r10, zero, 0
	.loc	1 81 0 is_stmt 0                # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:81:0
	mod.s r5, r5, r17
	.loc	1 81 20                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:81:20
	sub.s r6, r9, r6
	add.ul r[14:15], r[24:25], r[14:15]
	lui r24, 32
	dma_cfg zero, r15, zero, 2
	.loc	1 81 0                          # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:81:0
	slli r5, r5, 14
	add.s r5, r5, r24
	.loc	1 81 20                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:81:20
	dma_cfg r5, r14, r22, 3
	addli r5, zero, 256
	addli r14, zero, 2
	dma_cfg r9, r5, r6, 4
	dma_run zero
	unlock r13
	xsignal r14, 0
	.loc	1 73 26 is_stmt 1               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	beq r1, r13, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:86:25
	zext_int2long r[14:15], r1
	addli r5, zero, 16383
	sll.d r[24:25], r[14:15], r11
	zext_int2long r[5:6], r5
	.loc	1 81 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:81:25
	add.ul r[14:15], r[24:25], r[3:4]
	setlt.ul r5, r[5:6], r[14:15]
	bneq r5, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:0:25
	addli.d r[24:25], r[14:15], 0
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[6:7], -2008(r30)               # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:73:26
	addli r27, r27, 4
	addli r26, r26, 4
	addli r28, r28, 4
	.loc	1 89 25                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:89:25
	add.s r8, r8, r1
	j .LBB0_7
.LBB0_34:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:86:20
	addli r8, r8, 4
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:101:67
	addli r27, r20, 1
	addli r26, r15, 1
	addli r28, r3, 1
	addli r11, zero, 5
	lui r24, 32
	bneq r21, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=1
	loadli.w r3,  -2052(r30)                # 4-byte Folded Reload
	addli r5, zero, 960
	loadli.w r7,  -2048(r30)                # 4-byte Folded Reload
	zext_int2long r[24:25], zero
	zext_int2long r[5:6], r5
	zext_int2long r[3:4], r3
	sext_int2long r[14:15], r7
	addli r7, zero, 18
	min.ul r[5:6], r[3:4], r[5:6]
	min.sl r[24:25], r[14:15], r[24:25]
	addli.d r[5:6], r[5:6], 64
	max.ul r[5:6], r[5:6], r[3:4]
	sub.sl r[3:4], r[5:6], r[3:4]
	addli.d r[5:6], r[24:25], 128
	zext_int2long r[24:25], r22
	min.ul r[3:4], r[3:4], r[24:25]
	max.sl r[5:6], r[5:6], r[14:15]
	zext_int2long r[24:25], r9
	store.d r[3:4], -2048(r30)              # 8-byte Folded Spill
	load.d r[3:4], -2024(r30)               # 8-byte Folded Reload
	sub.sl r[5:6], r[5:6], r[14:15]
	min.sl r[5:6], r[5:6], r[24:25]
	lui r24, 32
	sll.d r[14:15], r[3:4], r7
	load.d r[3:4], 16(r30)
	addli r7, zero, 10
	add.ul r[14:15], r[3:4], r[14:15]
	load.d r[3:4], -2040(r30)               # 8-byte Folded Reload
	xwait r7, 0
	lock zero, r11
	dma_cfg r10, zero, zero, 0
	dma_cfg zero, r10, zero, 1
	add.ul r[14:15], r[14:15], r[3:4]
	load.d r[3:4], -2048(r30)               # 8-byte Folded Reload
	dma_cfg r15, zero, zero, 2
	slli r3, r3, 2
	dma_cfg r14, r1, r3, 3
	addli r1, zero, 256
	addli r3, zero, 2048
	dma_cfg r3, r1, r5, 4
	addli r1, zero, 11
	dma_run zero
	unlock r11
	xsignal r1, 0
.LBB0_37:                               # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:0:67
	load.d r[6:7], -2008(r30)               # 8-byte Folded Reload
	addli r16, zero, 96
	addli r14, zero, 2
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:22:0
	xsignal zero, 0
	bneq r21, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py:22:0
	addli sp, sp, 2056
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
	.long	2120                            # 0x848
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
.asciz	"cq67hxxbzgf3j4wijjn2dk57yj6kf5irgkwu7vmnbsfjscjlvxvw.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/q6" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
