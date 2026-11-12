	.text
	.file	"native_transfer.xpu"
	.section	.text.native_transfer,"ax",@progbits
	.globl	native_transfer                 # -- Begin function native_transfer
	.type	native_transfer,@function
native_transfer:                        # @native_transfer
# %bb.0:                                # %entry
	lui r1, -9
	ori r1, r1, 3968
	add.s sp, sp, r1
	lui r1, 8
	load_param_i r3, 0
	load_param_i r4, 2
	load_param_i r5, 1
	ori r1, r1, 64
	add.s r30, sp, r1
	core_id r1
	fmac.s r1, r4, r3
	loadli.w r2,  32(r30)
	loadli.w r12,  24(r30)
	load.d r[16:17], 0(r30)
	addli r3, zero, 2
	slli r13, r1, 11
	bneq r2, r3, .LBB0_3
# %bb.1:                                # %entry
	ble.s r12, r13, .LBB0_3
# %bb.2:                                # %if.then
	lui r8, 1048568
	addli r3, zero, 2048
	lui r6, 983040
	ori r8, r8, 0
	or r3, r3, r6
	add.s r7, r30, r8
	l_gm2lm r3, r7, 0(r[16:17])
	mfence { lm, gm }
.LBB0_3:                                # %if.end
	loadli.w r25,  28(r30)
	load.d r[7:8], 8(r30)
	mul.s r4, r5, r4
	addli r9, zero, 1
	get_clock r[5:6]
	blt.s r25, r9, .LBB0_13
# %bb.4:                                # %for.cond11.preheader.lr.ph
	loadli.w r14,  28(r30)
	blt.s r13, r12, .LBB0_5
	j .LBB0_14
.LBB0_5:                                # %for.cond11.preheader.lr.ph.split.us
	slli r15, r4, 11
	beq r2, zero, .LBB0_18
# %bb.6:                                # %for.cond11.preheader.lr.ph.split.us
	addli r10, zero, 2
	bneq r2, r10, .LBB0_25
# %bb.7:                                # %for.cond11.preheader.us.us178.preheader
	lui r3, 1048568
	zext_int2long r[10:11], zero
	addli r17, zero, 2048
	addli r19, zero, 16
	addli r20, zero, 0
	ori r3, r3, 0
	add.s r16, r30, r3
	j .LBB0_9
.LBB0_8:                                # %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r20, r20, 1
	mfence { lm, sm, gm }
	beq r20, r14, .LBB0_17
.LBB0_9:                                # %for.cond11.preheader.us.us178
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	addli r22, zero, 0
	addli r21, r13, 0
	j .LBB0_11
.LBB0_10:                               # %for.inc.us129.us.us
                                        #   in Loop: Header=BB0_11 Depth=2
	add.s r21, r21, r15
	addli.d r[10:11], r[10:11], 2048
	blt.s r21, r12, .LBB0_11
	j .LBB0_8
.LBB0_11:                               # %for.body14.us113.us.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	zext_int2long r[23:24], r21
	lui r3, 983040
	addli r18, r22, 0
	add.ul r[23:24], r[7:8], r[23:24]
	or r3, r17, r3
	addli r22, r18, 1
	s_lm2gm r3, r16, 0(r[23:24])
	bneq r22, r19, .LBB0_10
# %bb.12:                               # %if.then42.us128.us.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addli r22, zero, 0
	mfence { lm, sm, gm }
	j .LBB0_10
.LBB0_13:
	lui r10, 1048575
	ori r12, r10, 4095
	j .LBB0_16
.LBB0_14:
	lui r10, 1048575
	ori r12, r10, 4095
.LBB0_15:                               # %for.cond11.preheader
                                        # =>This Inner Loop Header: Depth=1
	addli r14, r14, -1
	mfence { lm, sm, gm }
	bneq r14, zero, .LBB0_15
.LBB0_16:
	zext_int2long r[10:11], zero
	addli r18, zero, 0
	j .LBB0_37
.LBB0_17:                               # %for.cond.cleanup.loopexit259
	sub.s r12, r21, r15
	j .LBB0_37
.LBB0_18:                               # %for.cond11.preheader.us.us.us227.preheader
	lui r3, 1048568
	addli r9, r25, 0
	zext_int2long r[10:11], zero
	addli r20, zero, 2048
	addli r21, zero, 16
	addli r22, zero, 0
	ori r3, r3, 0
	add.s r19, r30, r3
	j .LBB0_20
.LBB0_19:                               # %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us.split.split.us.us
                                        #   in Loop: Header=BB0_20 Depth=1
	addli r22, r22, 1
	mfence { lm, sm, gm }
	beq r22, r14, .LBB0_24
.LBB0_20:                               # %for.cond11.preheader.us.us.us227
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	addli r24, zero, 0
	addli r23, r13, 0
	j .LBB0_22
.LBB0_21:                               # %for.inc.us.us.us.us212.us
                                        #   in Loop: Header=BB0_22 Depth=2
	add.s r23, r23, r15
	addli.d r[10:11], r[10:11], 2048
	blt.s r23, r12, .LBB0_22
	j .LBB0_19
.LBB0_22:                               # %for.body14.us.us.us.us201.us
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	zext_int2long r[25:26], r23
	lui r18, 983040
	or r3, r20, r18
	add.ul r[27:28], r[16:17], r[25:26]
	addli r18, r24, 0
	add.ul r[24:25], r[7:8], r[25:26]
	l_gm2lm r3, r19, 0(r[27:28])
	lui r3, 983040
	mfence { lm, gm }
	or r3, r20, r3
	s_lm2gm r3, r19, 0(r[24:25])
	addli r24, r18, 1
	mfence { lm, gm }
	bneq r24, r21, .LBB0_21
# %bb.23:                               # %if.then42.us.us.us.us211.us
                                        #   in Loop: Header=BB0_22 Depth=2
	addli r24, zero, 0
	mfence { lm, sm, gm }
	j .LBB0_21
.LBB0_24:                               # %for.cond.cleanup.loopexit258
	sub.s r12, r23, r15
	addli r25, r9, 0
	j .LBB0_36
.LBB0_25:                               # %for.cond11.preheader.us.preheader
	lui r3, 1048568
	zext_int2long r[10:11], zero
	addli r20, zero, 2048
	addli r21, zero, 1
	addli r22, zero, 16
	addli r23, zero, 0
	ori r3, r3, 0
	add.s r19, r30, r3
	j .LBB0_27
.LBB0_26:                               # %for.cond11.for.cond.cleanup13_crit_edge.split.split.us166
                                        #   in Loop: Header=BB0_27 Depth=1
	addli r23, r23, 1
	mfence { lm, sm, gm }
	beq r23, r14, .LBB0_35
.LBB0_27:                               # %for.cond11.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_31 Depth 2
	addli r25, zero, 0
	addli r24, r13, 0
	j .LBB0_31
.LBB0_28:                               # %if.else34.us154
                                        #   in Loop: Header=BB0_31 Depth=2
	mfence { lm, gm }
	s_lm2gm r3, r19, 0(r[25:26])
.LBB0_29:                               # %if.end39.us157
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r25, r18, 1
	beq r25, r22, .LBB0_34
# %bb.30:                               # %for.inc.us162
                                        #   in Loop: Header=BB0_31 Depth=2
	add.s r24, r24, r15
	addli.d r[10:11], r[10:11], 2048
	blt.s r24, r12, .LBB0_31
	j .LBB0_26
.LBB0_31:                               # %for.body14.us147
                                        #   Parent Loop BB0_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r18, r25, 0
	lui r9, 983040
	zext_int2long r[25:26], r24
	mfence { lm, gm }
	slli r3, r18, 11
	add.ul r[27:28], r[16:17], r[25:26]
	or r9, r20, r9
	add.s r3, r19, r3
	l_gm2lm r9, r3, 0(r[27:28])
	beq r2, r21, .LBB0_29
# %bb.32:                               # %for.body14.us147
                                        #   in Loop: Header=BB0_31 Depth=2
	lui r3, 983040
	add.ul r[25:26], r[7:8], r[25:26]
	or r3, r20, r3
	bneq r2, zero, .LBB0_28
# %bb.33:                               # %if.then30.us151
                                        #   in Loop: Header=BB0_31 Depth=2
	mfence { lm, gm }
	s_lm2gm r3, r19, 0(r[25:26])
	mfence { lm, gm }
	j .LBB0_29
.LBB0_34:                               # %if.then42.us161
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r25, zero, 0
	mfence { lm, sm, gm }
	add.s r24, r24, r15
	addli.d r[10:11], r[10:11], 2048
	blt.s r24, r12, .LBB0_31
	j .LBB0_26
.LBB0_35:                               # %for.cond.cleanup.loopexit
	loadli.w r25,  28(r30)
	sub.s r12, r24, r15
.LBB0_36:                               # %for.cond.cleanup
	addli r9, zero, 1
.LBB0_37:                               # %for.cond.cleanup
	load.d r[13:14], 16(r30)
	get_clock r[15:16]
	bneq r2, r9, .LBB0_40
# %bb.38:                               # %for.cond.cleanup
	blt.s r12, zero, .LBB0_40
# %bb.39:                               # %if.then53
	lui r17, 1048568
	slli r3, r18, 11
	lui r19, 983040
	ori r17, r17, 0
	add.s r9, r30, r17
	zext_int2long r[17:18], r12
	add.s r3, r9, r3
	addli r9, zero, 2048
	add.ul r[7:8], r[7:8], r[17:18]
	or r9, r9, r19
	s_lm2gm r9, r3, 0(r[7:8])
	mfence { lm, gm }
.LBB0_40:                               # %if.end59
	lui r7, 1048567
	lui r8, 1048567
	ori r7, r7, 4032
	ori r8, r8, 4032
	add.s r3, r30, r7
	add.s r8, r30, r8
	ori r7, r3, 8
	store.d r[5:6], 0(r8)
	zext_int2long r[5:6], r1
	slli r1, r1, 3
	store.d r[15:16], 0(r7)
	lui r7, 1048567
	ori r7, r7, 4048
	add.s r7, r30, r7
	store.d r[10:11], 0(r7)
	lui r7, 1048567
	ori r7, r7, 4056
	add.s r7, r30, r7
	store.d r[5:6], 0(r7)
	sext_int2long r[6:7], r2
	lui r2, 1048567
	zext_int2long r[4:5], r4
	ori r2, r2, 4064
	add.s r2, r30, r2
	store.d r[4:5], 0(r2)
	lui r2, 1048567
	sext_int2long r[4:5], r12
	ori r2, r2, 4072
	add.s r2, r30, r2
	store.d r[6:7], 0(r2)
	lui r2, 1048567
	lui r7, 983040
	ori r2, r2, 4080
	add.s r2, r30, r2
	store.d r[4:5], 0(r2)
	zext_int2long r[1:2], r1
	addli r4, zero, 3
	sext_int2long r[5:6], r25
	sll.d r[1:2], r[1:2], r4
	addli r4, zero, 64
	or r4, r4, r7
	lui r7, 1048567
	add.ul r[1:2], r[13:14], r[1:2]
	ori r7, r7, 4088
	add.s r7, r30, r7
	store.d r[5:6], 0(r7)
	mfence { lm }
	s_lm2gm r4, r3, 0(r[1:2])
	lui r1, -9
	mfence { lm, gm }
	ori r1, r1, 4032
	add.s sp, r30, r1
	lui r1, 8
	ori r1, r1, 64
	add.s sp, sp, r1
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
	.long	32896                           # 0x8080
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
