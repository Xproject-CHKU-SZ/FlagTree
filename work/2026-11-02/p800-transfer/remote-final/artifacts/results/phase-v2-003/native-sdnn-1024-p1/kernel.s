	.text
	.file	"native_transfer.xpu"
	.section	.text.native_transfer,"ax",@progbits
	.globl	native_transfer                 # -- Begin function native_transfer
	.type	native_transfer,@function
native_transfer:                        # @native_transfer
# %bb.0:                                # %entry
	addli sp, sp, -144
	core_id r1
	addli r30, sp, 80
	beq r1, zero, .LBB0_2
# %bb.1:                                # %cleanup
	addli sp, r30, -80
	addli sp, sp, 80
	mfence { lm, sm, gm }
	exit
.LBB0_2:                                # %if.end
	addli r11, zero, 1
	load_param_i r2, 0
	lui r8, 1048575
	addli r4, zero, 2
	loadli.w r3,  32(r30)
	loadli.w r1,  28(r30)
	loadli.w r5,  24(r30)
	load.d r[6:7], 0(r30)
	xsignal_mode_cfg r11
	ori r10, r8, 4095
	slli r13, r2, 10
	uni_sram_cfg r11, r11
	lock zero, r4
	ew_cfg r11, zero, zero, 16
	unlock r4
	csr_set csr3, r10
	sync_group
	bneq r3, r4, .LBB0_5
# %bb.3:                                # %if.end
	ble.s r5, r13, .LBB0_5
# %bb.4:                                # %if.then5
	addli r4, zero, 4
	addli r8, zero, 1024
	addli r9, zero, 1
	lock zero, r4
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r7, zero, 2
	dma_cfg zero, r6, r8, 3
	dma_cfg r8, r8, r9, 4
	addli r8, zero, 2
	dma_run zero
	unlock r4
	xsignal r8, 0
	xwait r8, 0
.LBB0_5:                                # %if.end6
	load.d r[14:15], 8(r30)
	get_clock r[8:9]
	load_param_i r4, 1
	store.d r[8:9], -72(r30)                # 8-byte Folded Spill
	blt.s r1, r11, .LBB0_14
# %bb.6:                                # %for.cond10.preheader.lr.ph
	lui r10, 1048575
	slli r16, r4, 10
	zext_int2long r[11:12], zero
	addli r18, zero, 2
	addli r19, zero, 5
	addli r20, zero, 1
	addli r21, zero, 1024
	addli r22, zero, 3
	addli r23, zero, 4
	addli r24, zero, 0
	neg.s r17, r16
	ori r10, r10, 4095
	j .LBB0_9
.LBB0_7:                                # %for.cond.cleanup12.loopexit
                                        #   in Loop: Header=BB0_9 Depth=1
	add.s r10, r17, r25
.LBB0_8:                                # %for.cond.cleanup12
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r24, r24, 1
	beq r24, r1, .LBB0_15
.LBB0_9:                                # %for.cond10.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	addli r25, r13, 0
	ble.s r5, r13, .LBB0_8
	j .LBB0_12
.LBB0_10:                               # %if.then18
                                        #   in Loop: Header=BB0_12 Depth=2
	lock zero, r19
	add.ul r[8:9], r[14:15], r[26:27]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r20, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, zero, r21, 3
	dma_cfg r21, r21, r20, 4
	dma_run zero
	unlock r19
	xsignal r22, 0
	xwait r22, 0
.LBB0_11:                               # %if.end21
                                        #   in Loop: Header=BB0_12 Depth=2
	add.s r25, r25, r16
	addli.d r[11:12], r[11:12], 1024
	blt.s r25, r5, .LBB0_12
	j .LBB0_7
.LBB0_12:                               # %for.body13
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	zext_int2long r[26:27], r25
	beq r3, r18, .LBB0_10
# %bb.13:                               # %if.then15
                                        #   in Loop: Header=BB0_12 Depth=2
	lock zero, r23
	add.ul r[8:9], r[6:7], r[26:27]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r9, zero, 2
	dma_cfg zero, r8, r21, 3
	dma_cfg r21, r21, r20, 4
	dma_run zero
	unlock r23
	xsignal r18, 0
	xwait r18, 0
	bneq r3, r20, .LBB0_10
	j .LBB0_11
.LBB0_14:
	zext_int2long r[11:12], zero
.LBB0_15:                               # %for.cond.cleanup
	load.d r[5:6], 16(r30)
	addli r7, zero, 1
	get_clock r[16:17]
	bneq r3, r7, .LBB0_18
# %bb.16:                               # %for.cond.cleanup
	lui r7, 1048575
	ori r7, r7, 4095
	blt.s r7, r10, .LBB0_17
	j .LBB0_18
.LBB0_17:                               # %if.then30
	addli r9, zero, 5
	zext_int2long r[7:8], r10
	addli r13, zero, 1
	lock zero, r9
	add.ul r[7:8], r[14:15], r[7:8]
	addli r14, zero, 1024
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r13, zero, 1
	dma_cfg r8, zero, zero, 2
	dma_cfg r7, zero, r14, 3
	addli r7, zero, 3
	dma_cfg r14, r14, r13, 4
	dma_run zero
	unlock r9
	xsignal r7, 0
	xwait r7, 0
.LBB0_18:                               # %if.end33
	addli r7, r30, -64
	load.d r[13:14], -72(r30)               # 8-byte Folded Reload
	store.d r[11:12], -48(r30)
	ori r8, r7, 8
	store.d r[13:14], -64(r30)
	store.d r[16:17], 0(r8)
	zext_int2long r[8:9], r2
	slli r2, r2, 3
	store.d r[8:9], -40(r30)
	zext_int2long r[8:9], r4
	sext_int2long r[3:4], r3
	store.d r[3:4], -24(r30)
	sext_int2long r[3:4], r10
	store.d r[8:9], -32(r30)
	sext_int2long r[8:9], r1
	store.d r[3:4], -16(r30)
	zext_int2long r[2:3], r2
	addli r4, zero, 3
	store.d r[8:9], -8(r30)
	mfence { lm }
	sll.d r[1:2], r[2:3], r4
	addli r3, zero, 64
	lui r4, 983040
	add.ul r[1:2], r[5:6], r[1:2]
	or r3, r3, r4
	s_lm2gm r3, r7, 0(r[1:2])
	addli r1, zero, 2
	mfence { lm, gm }
	lock zero, r1
	ew_cfg zero, zero, zero, 16
	unlock r1
	xsignal_mode_cfg zero
	addli sp, r30, -80
	addli sp, sp, 80
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
	.long	144                             # 0x90
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
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
