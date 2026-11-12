	.text
	.file	"native_transfer.xpu"
	.section	.text.native_transfer,"ax",@progbits
	.globl	native_transfer                 # -- Begin function native_transfer
	.type	native_transfer,@function
native_transfer:                        # @native_transfer
# %bb.0:                                # %entry
	addli sp, sp, -192
	load_param_i r3, 0
	load_param_i r4, 2
	core_id r1
	addli r30, sp, 128
	load_param_i r5, 1
	fmac.s r1, r4, r3
	loadli.w r2,  32(r30)
	loadli.w r12,  24(r30)
	load.d r[16:17], 0(r30)
	addli r3, zero, 2
	slli r13, r1, 6
	bneq r2, r3, .LBB0_3
# %bb.1:                                # %entry
	ble.s r12, r13, .LBB0_3
# %bb.2:                                # %if.then
	addli r3, zero, 64
	lui r6, 983040
	addli r7, r30, -64
	or r3, r3, r6
	l_gm2lm r3, r7, 0(r[16:17])
	mfence { lm, gm }
.LBB0_3:                                # %if.end
	loadli.w r3,  28(r30)
	load.d r[7:8], 8(r30)
	mul.s r4, r5, r4
	addli r9, zero, 1
	get_clock r[5:6]
	blt.s r3, r9, .LBB0_12
# %bb.4:                                # %for.cond11.preheader.lr.ph
	loadli.w r14,  28(r30)
	blt.s r13, r12, .LBB0_5
	j .LBB0_13
.LBB0_5:                                # %for.cond11.preheader.lr.ph.split.us
	slli r15, r4, 6
	beq r2, zero, .LBB0_20
# %bb.6:                                # %for.cond11.preheader.lr.ph.split.us
	addli r10, zero, 2
	beq r2, r10, .LBB0_15
# %bb.7:                                # %for.cond11.preheader.lr.ph.split.us
	addli r10, zero, 1
	bneq r2, r10, .LBB0_24
# %bb.8:                                # %for.cond11.preheader.us.us199.preheader
	zext_int2long r[10:11], zero
	addli r18, r30, -64
	addli r19, zero, 64
	addli r20, zero, 0
.LBB0_9:                                # %for.cond11.preheader.us.us199
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	addli r21, r13, 0
.LBB0_10:                               # %for.body14.us128.us.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	zext_int2long r[22:23], r21
	lui r24, 983040
	addli.d r[10:11], r[10:11], 64
	add.s r21, r21, r15
	add.ul r[22:23], r[16:17], r[22:23]
	or r24, r19, r24
	l_gm2lm r24, r18, 0(r[22:23])
	mfence { lm, sm, gm }
	blt.s r21, r12, .LBB0_10
# %bb.11:                               # %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.us.us.us
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r20, r20, 1
	mfence { lm, sm, gm }
	bneq r20, r14, .LBB0_9
	j .LBB0_28
.LBB0_12:
	lui r10, 1048575
	ori r12, r10, 4095
	zext_int2long r[10:11], zero
	j .LBB0_29
.LBB0_13:
	lui r10, 1048575
	ori r12, r10, 4095
	zext_int2long r[10:11], zero
.LBB0_14:                               # %for.cond11.preheader
                                        # =>This Inner Loop Header: Depth=1
	addli r14, r14, -1
	mfence { lm, sm, gm }
	bneq r14, zero, .LBB0_14
	j .LBB0_29
.LBB0_15:                               # %for.cond11.preheader.us.us184.preheader
	zext_int2long r[10:11], zero
	addli r16, r30, -64
	addli r17, zero, 64
	addli r18, zero, 0
.LBB0_16:                               # %for.cond11.preheader.us.us184
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	addli r19, r13, 0
.LBB0_17:                               # %for.body14.us110.us.us
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	zext_int2long r[20:21], r19
	lui r22, 983040
	addli.d r[10:11], r[10:11], 64
	add.s r19, r19, r15
	add.ul r[20:21], r[7:8], r[20:21]
	or r22, r17, r22
	s_lm2gm r22, r16, 0(r[20:21])
	mfence { lm, sm, gm }
	blt.s r19, r12, .LBB0_17
# %bb.18:                               # %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us
                                        #   in Loop: Header=BB0_16 Depth=1
	addli r18, r18, 1
	mfence { lm, sm, gm }
	bneq r18, r14, .LBB0_16
# %bb.19:                               # %for.cond.cleanup.loopexit276
	sub.s r12, r19, r15
	j .LBB0_29
.LBB0_20:                               # %for.cond11.preheader.us.us.us244.preheader
	zext_int2long r[10:11], zero
	addli r18, r30, -64
	addli r19, zero, 64
	addli r20, zero, 0
.LBB0_21:                               # %for.cond11.preheader.us.us.us244
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	addli r21, r13, 0
.LBB0_22:                               # %for.body14.us.us.us.us227.us
                                        #   Parent Loop BB0_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	zext_int2long r[22:23], r21
	lui r24, 983040
	addli.d r[10:11], r[10:11], 64
	add.s r21, r21, r15
	add.ul r[25:26], r[16:17], r[22:23]
	or r24, r19, r24
	add.ul r[22:23], r[7:8], r[22:23]
	l_gm2lm r24, r18, 0(r[25:26])
	lui r24, 983040
	mfence { lm, gm }
	or r24, r19, r24
	s_lm2gm r24, r18, 0(r[22:23])
	mfence { lm, gm }
	mfence { lm, sm, gm }
	blt.s r21, r12, .LBB0_22
# %bb.23:                               # %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us.split.split.us.us
                                        #   in Loop: Header=BB0_21 Depth=1
	addli r20, r20, 1
	mfence { lm, sm, gm }
	bneq r20, r14, .LBB0_21
	j .LBB0_28
.LBB0_24:                               # %for.cond11.preheader.us.preheader
	zext_int2long r[10:11], zero
	addli r18, r30, -64
	addli r19, zero, 64
	addli r20, zero, 0
.LBB0_25:                               # %for.cond11.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
	addli r21, r13, 0
.LBB0_26:                               # %for.body14.us162
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	zext_int2long r[22:23], r21
	lui r24, 983040
	lui r27, 983040
	addli.d r[10:11], r[10:11], 64
	add.s r21, r21, r15
	add.ul r[25:26], r[16:17], r[22:23]
	or r24, r19, r24
	add.ul r[22:23], r[7:8], r[22:23]
	or r27, r19, r27
	l_gm2lm r24, r18, 0(r[25:26])
	mfence { lm, gm }
	s_lm2gm r27, r18, 0(r[22:23])
	mfence { lm, sm, gm }
	blt.s r21, r12, .LBB0_26
# %bb.27:                               # %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.split.us172
                                        #   in Loop: Header=BB0_25 Depth=1
	addli r20, r20, 1
	mfence { lm, sm, gm }
	bneq r20, r14, .LBB0_25
.LBB0_28:                               # %for.cond.cleanup.loopexit277
	sub.s r12, r21, r15
.LBB0_29:                               # %for.cond.cleanup
	load.d r[13:14], 16(r30)
	get_clock r[15:16]
	bneq r2, r9, .LBB0_32
# %bb.30:                               # %for.cond.cleanup
	blt.s r12, zero, .LBB0_32
# %bb.31:                               # %if.then53
	zext_int2long r[17:18], r12
	addli r9, zero, 64
	add.ul r[7:8], r[7:8], r[17:18]
	lui r17, 983040
	addli r18, r30, -64
	or r9, r9, r17
	s_lm2gm r9, r18, 0(r[7:8])
	mfence { lm, gm }
.LBB0_32:                               # %if.end59
	store.d r[5:6], -128(r30)
	zext_int2long r[5:6], r1
	addli r7, r30, -128
	slli r1, r1, 3
	store.d r[10:11], -112(r30)
	store.d r[5:6], -104(r30)
	zext_int2long r[4:5], r4
	ori r8, r7, 8
	store.d r[4:5], -96(r30)
	sext_int2long r[4:5], r12
	store.d r[15:16], 0(r8)
	sext_int2long r[8:9], r2
	zext_int2long r[1:2], r1
	store.d r[4:5], -80(r30)
	addli r4, zero, 3
	sext_int2long r[5:6], r3
	addli r3, zero, 64
	store.d r[8:9], -88(r30)
	sll.d r[1:2], r[1:2], r4
	lui r4, 983040
	store.d r[5:6], -72(r30)
	mfence { lm }
	add.ul r[1:2], r[13:14], r[1:2]
	or r3, r3, r4
	s_lm2gm r3, r7, 0(r[1:2])
	mfence { lm, gm }
	addli sp, r30, -128
	addli sp, sp, 128
	mfence { lm, sm, gm }
	exit
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
	.long	192                             # 0xc0
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
