	.text
	.file	"native_transfer.xpu"
	.section	.text.native_transfer,"ax",@progbits
	.globl	native_transfer                 # -- Begin function native_transfer
	.type	native_transfer,@function
native_transfer:                        # @native_transfer
# %bb.0:                                # %entry
	addli sp, sp, -1152
	load_param_i r5, 0
	load_param_i r4, 2
	core_id r2
	addli r30, sp, 1088
	addli r6, zero, 2
	fmac.s r2, r4, r5
	loadli.w r3,  32(r30)
	loadli.w r1,  28(r30)
	loadli.w r10,  24(r30)
	load.d r[15:16], 0(r30)
	load_param_i r5, 1
	slli r13, r2, 10
	bneq r3, r6, .LBB0_3
# %bb.1:                                # %entry
	ble.s r10, r13, .LBB0_3
# %bb.2:                                # %if.then
	addli r6, zero, 1024
	lui r7, 983040
	addli r8, r30, -1024
	or r6, r6, r7
	l_gm2lm r6, r8, 0(r[15:16])
	mfence { lm, gm }
.LBB0_3:                                # %if.end
	lui r11, 1048575
	load.d r[7:8], 8(r30)
	mul.s r4, r5, r4
	get_clock r[5:6]
	addli r9, zero, 1
	ori r14, r11, 4095
	blt.s r1, r9, .LBB0_11
# %bb.4:                                # %for.cond11.preheader.lr.ph
	ble.s r10, r13, .LBB0_11
# %bb.5:                                # %for.cond11.preheader.lr.ph.split.us
	addli r11, zero, 2
	slli r14, r4, 10
	bneq r3, r11, .LBB0_15
# %bb.6:                                # %for.cond11.preheader.us.us.preheader
	zext_int2long r[11:12], zero
	addli r15, r30, -1024
	addli r16, zero, 1024
	addli r17, zero, 0
.LBB0_7:                                # %for.cond11.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	addli r18, r13, 0
.LBB0_8:                                # %for.body14.us.us.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	zext_int2long r[19:20], r18
	lui r21, 983040
	add.s r18, r18, r14
	addli.d r[11:12], r[11:12], 1024
	add.ul r[19:20], r[7:8], r[19:20]
	or r21, r16, r21
	s_lm2gm r21, r15, 0(r[19:20])
	mfence { lm, gm }
	blt.s r18, r10, .LBB0_8
# %bb.9:                                # %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r17, r17, 1
	bneq r17, r1, .LBB0_7
# %bb.10:                               # %for.cond.cleanup.loopexit
	sub.s r14, r18, r14
	load.d r[15:16], 16(r30)
	get_clock r[17:18]
	beq r3, r9, .LBB0_12
	j .LBB0_14
.LBB0_11:
	zext_int2long r[11:12], zero
	load.d r[15:16], 16(r30)
	get_clock r[17:18]
	bneq r3, r9, .LBB0_14
.LBB0_12:                               # %for.cond.cleanup
	blt.s r14, zero, .LBB0_14
# %bb.13:                               # %if.then34
	zext_int2long r[9:10], r14
	addli r13, zero, 1024
	add.ul r[7:8], r[7:8], r[9:10]
	lui r9, 983040
	addli r10, r30, -1024
	or r9, r13, r9
	s_lm2gm r9, r10, 0(r[7:8])
	mfence { lm, gm }
.LBB0_14:                               # %if.end38
	addli r7, r30, -1088
	store.d r[5:6], -1088(r30)
	zext_int2long r[5:6], r2
	slli r2, r2, 3
	store.d r[11:12], -1072(r30)
	ori r8, r7, 8
	store.d r[5:6], -1064(r30)
	zext_int2long r[4:5], r4
	store.d r[17:18], 0(r8)
	sext_int2long r[8:9], r3
	store.d r[4:5], -1056(r30)
	sext_int2long r[3:4], r14
	sext_int2long r[5:6], r1
	store.d r[3:4], -1040(r30)
	zext_int2long r[2:3], r2
	addli r4, zero, 3
	store.d r[8:9], -1048(r30)
	store.d r[5:6], -1032(r30)
	mfence { lm }
	sll.d r[1:2], r[2:3], r4
	addli r3, zero, 64
	lui r4, 983040
	add.ul r[1:2], r[15:16], r[1:2]
	or r3, r3, r4
	s_lm2gm r3, r7, 0(r[1:2])
	mfence { lm, gm }
	addli sp, r30, -1088
	addli sp, sp, 1088
	mfence { lm, sm, gm }
	exit
.LBB0_15:                               # %for.cond11.preheader.lr.ph.split.us.split
	addli r11, zero, 1
	bneq r3, r11, .LBB0_20
# %bb.16:                               # %for.cond11.preheader.us.us116.preheader
	zext_int2long r[11:12], zero
	addli r17, r30, -1024
	addli r18, zero, 1024
	addli r19, zero, 0
.LBB0_17:                               # %for.cond11.preheader.us.us116
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
	addli r20, r13, 0
.LBB0_18:                               # %for.body14.us80.us.us
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	zext_int2long r[21:22], r20
	lui r23, 983040
	add.s r20, r20, r14
	addli.d r[11:12], r[11:12], 1024
	add.ul r[21:22], r[15:16], r[21:22]
	or r23, r18, r23
	l_gm2lm r23, r17, 0(r[21:22])
	mfence { lm, gm }
	blt.s r20, r10, .LBB0_18
# %bb.19:                               # %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us
                                        #   in Loop: Header=BB0_17 Depth=1
	addli r19, r19, 1
	bneq r19, r1, .LBB0_17
	j .LBB0_24
.LBB0_20:                               # %for.cond11.preheader.us.preheader
	zext_int2long r[11:12], zero
	addli r17, r30, -1024
	addli r18, zero, 1024
	addli r19, zero, 0
.LBB0_21:                               # %for.cond11.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	addli r20, r13, 0
.LBB0_22:                               # %for.body14.us97
                                        #   Parent Loop BB0_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	zext_int2long r[21:22], r20
	lui r23, 983040
	add.s r20, r20, r14
	addli.d r[11:12], r[11:12], 1024
	add.ul r[24:25], r[15:16], r[21:22]
	or r23, r18, r23
	add.ul r[21:22], r[7:8], r[21:22]
	l_gm2lm r23, r17, 0(r[24:25])
	lui r23, 983040
	mfence { lm, gm }
	or r23, r18, r23
	s_lm2gm r23, r17, 0(r[21:22])
	mfence { lm, gm }
	blt.s r20, r10, .LBB0_22
# %bb.23:                               # %for.cond11.for.cond.cleanup13_crit_edge.split.split.us107
                                        #   in Loop: Header=BB0_21 Depth=1
	addli r19, r19, 1
	bneq r19, r1, .LBB0_21
.LBB0_24:                               # %for.cond.cleanup.loopexit135
	sub.s r14, r20, r14
	load.d r[15:16], 16(r30)
	get_clock r[17:18]
	beq r3, r9, .LBB0_12
	j .LBB0_14
.Lfunc_end0:
	.size	native_transfer, .Lfunc_end0-native_transfer
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_native_transfer,@object # @XPU_KERNEL_PARAM_SIZE_native_transfer
	.section	.XPU.KERNEL_PARAM_SIZE.native_transfer,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_native_transfer
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_native_transfer:
	.long	36                              # 0x24
	.size	XPU_KERNEL_PARAM_SIZE_native_transfer, 4

	.type	XPU_KERNEL_STACK_SIZE_native_transfer,@object # @XPU_KERNEL_STACK_SIZE_native_transfer
	.section	.XPU.KERNEL_STACK_SIZE.native_transfer,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_native_transfer
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_native_transfer:
	.long	1152                            # 0x480
	.size	XPU_KERNEL_STACK_SIZE_native_transfer, 4

	.type	XPU_KERNEL_DYNAMIC_LM_native_transfer,@object # @XPU_KERNEL_DYNAMIC_LM_native_transfer
	.section	.XPU.KERNEL_DYNAMIC_LM.native_transfer,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_native_transfer
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_native_transfer:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_native_transfer, 4

	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 19.1.7 (b526e9ed77e93b92ce71f434d0bfd2c7ad245c37)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
