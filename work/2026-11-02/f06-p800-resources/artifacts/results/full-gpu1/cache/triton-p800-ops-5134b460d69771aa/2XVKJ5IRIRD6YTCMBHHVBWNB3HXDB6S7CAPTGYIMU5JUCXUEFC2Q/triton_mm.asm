	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/ol" "coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py"
	.loc	1 22 0                          # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -976
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:73:26
	core_id r2
	addli r30, sp, 912
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:0:26
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
	storeli.w zero, -160(r30)
	storeli.w zero, -484(r30)
	storeli.w zero, -644(r30)
	storeli.w zero, -840(r30)
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
	ble.s r3, r1, .LBB0_40
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[17:18], r1
	lui r1, 31
	loadli.w r6,  -160(r30)
	loadli.w r7,  -644(r30)
	loadli.w r15,  -840(r30)
	loadli.w r10,  -484(r30)
	addli r11, zero, 128
	addli r14, zero, 7
	addli r13, zero, 5
	addli r16, zero, 4
	addli r22, zero, 1
	addli r5, zero, 48
	addli r25, zero, 39
	addli r23, zero, 6
	addli r21, zero, 3
	addli r26, zero, 64
	addli r27, zero, 32
	addli r28, zero, 2
	addli r19, zero, 0
	store.d r[3:4], -880(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 1023
	lui r3, 1047552
	ori r24, r1, 4095
	store.d r[3:4], -912(r30)               # 8-byte Folded Spill
	storeli.w r24, -884(r30)                # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split18.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:86:20
	addli r7, r7, 32
.LBB0_6:                                #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:0:20
	loadli.w r19,  -852(r30)                # 4-byte Folded Reload
	addli r13, zero, 5
	addli r5, zero, 48
	beq r2, zero, .LBB0_36
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[17:18], -864(r30)              # 8-byte Folded Reload
.LBB0_8:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -880(r30)                # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 1
	addli r15, r24, 0
	loadli.w r24,  -884(r30)                # 4-byte Folded Reload
	addli r19, r19, 1
	setlt.sl r1, r[17:18], r[3:4]
	beq r1, zero, .LBB0_40
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_27 Depth 3
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:54:50
	addli r4, zero, 8
	div.s r1, r17, r1
	div.s r8, r1, r3
	.loc	1 54 30 is_stmt 0               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:54:30
	addli r3, zero, 16
	.loc	1 53 22 is_stmt 1               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:53:22
	div.s r9, r8, r11
	.loc	1 54 41                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:54:41
	slli r1, r9, 3
	.loc	1 54 30 is_stmt 0               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:54:30
	sub.s r3, r3, r1
	.loc	1 54 50                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:54:50
	min.s r12, r3, r4
	.loc	1 55 40 is_stmt 1               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:55:40
	mod.s r3, r8, r12
	.loc	1 55 34 is_stmt 0               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:55:34
	add.s r1, r1, r3
	.loc	1 95 15 is_stmt 1               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:95:15
	zext_int2long r[3:4], r1
	store.d r[3:4], -872(r30)               # 8-byte Folded Spill
	addli r3, zero, 1920
	zext_int2long r[3:4], r3
	.loc	1 73 26                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:73:26
	store.d r[3:4], -848(r30)               # 8-byte Folded Spill
	bneq r2, r16, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:0:26
	beq r2, r22, .LBB0_31
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r28, .LBB0_16
# %bb.13:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 0
	lui r8, 80
.LBB0_14:                               # %.thread.us23
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	add.s r3, r7, r1
	add.s r4, r15, r1
	xwait r28, 0
	xwait r13, 0
	lock zero, zero
	.loc	1 73 26                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	ds_cfg r21, zero, 0
	.loc	1 81 20                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:81:20
	mod.s r3, r3, r25
	.loc	1 89 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	mod.s r4, r4, r5
	ds_cfg r26, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	slli r4, r4, 14
	.loc	1 81 20                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:81:20
	add.s r3, r3, r8
	.loc	1 89 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	shuffle_batch r4, r3, r26, 1
	unlock zero
	xsignal r21, 0
	xsignal r16, 0
	bneq r1, r27, .LBB0_14
# %bb.15:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:73:26
	addli r10, r10, 32
	addli r6, r6, 32
	.loc	1 89 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	add.s r24, r15, r1
	add.s r7, r7, r1
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:0:25
	slli r3, r9, 7
	mod.s r4, r19, r13
	slli r1, r1, 7
	store.d r[17:18], -864(r30)             # 8-byte Folded Spill
	storeli.w r19, -852(r30)                # 4-byte Folded Spill
	addli r5, zero, 0
	addli r20, zero, 5
	addli r19, zero, 0
	addli r18, zero, 80
	sub.s r3, r8, r3
	storeli.w r1, -900(r30)                 # 4-byte Folded Spill
	div.s r3, r3, r12
	slli r17, r4, 16
	zext_int2long r[8:9], r3
	slli r1, r3, 7
	.loc	1 73 26 is_stmt 1               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:73:26
	load.d r[3:4], 8(r30)
	sll.d r[8:9], r[8:9], r14
	storeli.w r1, -904(r30)                 # 4-byte Folded Spill
	sll.d r[8:9], r[8:9], r22
	store.d r[8:9], -896(r30)               # 8-byte Folded Spill
	add.ul r[12:13], r[3:4], r[8:9]
	addli r9, zero, 8
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	addli r3, zero, 9
	xwait r23, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r21, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r11, zero, 13
	shuffle_coa r1, r8, r26, 2
	unlock zero
	xsignal r14, 0
	xsignal r9, 0
	.loc	1 73 26                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:73:26
	addli r5, r5, 1
	bneq r5, r27, .LBB0_29
	j .LBB0_30
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_27 Depth 3
	.loc	1 86 20                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:86:20
	mod.s r1, r6, r25
	.loc	1 89 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	mod.s r3, r10, r18
	addli r24, r15, 1
	addli r10, r10, 1
	.loc	1 86 20                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:86:20
	addli r6, r6, 1
	slli r4, r1, 14
	.loc	1 89 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	slli r1, r3, 14
	.loc	1 86 20                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:86:20
	lui r3, 236
	add.s r8, r4, r3
	beq r2, r14, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:0:20
	bneq r2, r23, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:86:25
	zext_int2long r[3:4], r5
	.loc	1 86 20                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:86:20
	addli r1, zero, 18
	xwait r14, 0
	lock zero, r16
	addli r15, zero, 256
	dma_cfg r22, r22, zero, 0
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 4096
	add.ul r[3:4], r[12:13], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r8, r3, r15, 3
	dma_cfg r15, r1, r26, 4
	dma_run zero
	unlock r16
	xsignal r23, 0
	.loc	1 73 26 is_stmt 1               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:73:26
	addli r5, r5, 1
	bneq r5, r27, .LBB0_29
	j .LBB0_30
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	bneq r2, r16, .LBB0_25
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:0:0
	addli r3, zero, 48
	.loc	1 89 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	xwait r16, 0
	xwait r9, 0
	addli r9, zero, 1
	.loc	1 0 0                           # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:0:0
	mod.s r3, r15, r3
	addli r15, zero, 1
	slli r8, r3, 14
	.loc	1 89 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	beq r19, zero, .LBB0_26
# %bb.23:                               # %.preheader8.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25                          # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:0:25
	addli r18, zero, 0
.LBB0_24:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	slli r3, r18, 13
	slli r4, r18, 8
	lock zero, r9
	addli r18, zero, 1
	mm_cfg r26, r26, r11, 0
	or r3, r3, r1
	or r4, r4, r17
	mm_cfg r28, r16, r9, 2
	mm_acc r4, r8, r3, 5
	andi r3, r15, 1
	addli r15, zero, 0
	unlock r9
	bneq r3, zero, .LBB0_24
	j .LBB0_28
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:73:26
	addli r5, r5, 1
	bneq r5, r27, .LBB0_29
	j .LBB0_5
.LBB0_26:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:0:26
	addli r3, zero, 0
.LBB0_27:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25 is_stmt 1               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	slli r4, r3, 13
	slli r3, r3, 8
	lock zero, r9
	mm_cfg r26, r26, r11, 0
	or r4, r4, r1
	or r3, r3, r17
	mm_cfg r28, r16, r9, 2
	mm r3, r8, r4, 5
	andi r4, r15, 1
	addli r3, zero, 1
	addli r15, zero, 0
	unlock r9
	bneq r4, zero, .LBB0_27
.LBB0_28:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:73:26
	addli r5, r5, 1
	.loc	1 89 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	addli r1, zero, 9
	addli r9, zero, 8
	addli r18, zero, 80
	xsignal r20, 0
	xsignal r1, 0
	beq r5, r27, .LBB0_37
.LBB0_29:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r19, r19, 1
	addli r15, r24, 0
	j .LBB0_18
.LBB0_30:                               # %.split18
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:86:20
	addli r7, r7, 32
	.loc	1 73 26                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:73:26
	bneq r2, r16, .LBB0_6
	j .LBB0_38
.LBB0_31:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:0:26
	load.d r[3:4], -872(r30)                # 8-byte Folded Reload
	addli r1, zero, 18
	storeli.w r19, -852(r30)                # 4-byte Folded Spill
	store.d r[17:18], -864(r30)             # 8-byte Folded Spill
	sll.d r[12:13], r[3:4], r1
	load.d r[3:4], -912(r30)                # 8-byte Folded Reload
	addli r1, zero, 0
	and.d r[3:4], r[12:13], r[3:4]
	j .LBB0_33
.LBB0_32:                               # %.thread.us
                                        #   in Loop: Header=BB0_33 Depth=2
	addli r5, zero, 2048
	.loc	1 81 25 is_stmt 1               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:81:25
	sub.sl r[8:9], r[17:18], r[8:9]
	.loc	1 81 20 is_stmt 0               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:81:20
	xwait r21, 0
	lock zero, r16
	addli r22, zero, 1
	zext_int2long r[19:20], r5
	.loc	1 0 0                           # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:0:0
	add.s r5, r7, r1
	.loc	1 73 26 is_stmt 1               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:73:26
	addli r1, r1, 1
	.loc	1 81 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:81:25
	div.sl r[8:9], r[8:9], r[19:20]
	addli r19, zero, 1
	.loc	1 81 20 is_stmt 0               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:81:20
	load.d r[20:21], 0(r30)
	.loc	1 81 0                          # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:81:0
	mod.s r5, r5, r25
	.loc	1 81 20                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:81:20
	sll.d r[17:18], r[17:18], r19
	dma_cfg r19, r19, zero, 0
	add.ul r[17:18], r[20:21], r[17:18]
	addli r21, zero, 3
	dma_cfg zero, r18, zero, 2
	.loc	1 81 0                          # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:81:0
	slli r5, r5, 14
	.loc	1 81 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:81:25
	load.d r[19:20], -848(r30)              # 8-byte Folded Reload
	min.sl r[19:20], r[8:9], r[19:20]
	sub.sl r[8:9], r[19:20], r[8:9]
	.loc	1 81 0                          # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:81:0
	lui r19, 80
	add.s r5, r5, r19
	.loc	1 81 20                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:81:20
	addli r8, r8, 128
	dma_cfg r5, r17, r11, 3
	addli r5, zero, 4096
	dma_cfg r11, r5, r8, 4
	dma_run zero
	unlock r16
	xsignal r28, 0
	.loc	1 73 26 is_stmt 1               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:73:26
	beq r1, r27, .LBB0_35
.LBB0_33:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:86:25
	zext_int2long r[8:9], r1
	sll.d r[8:9], r[8:9], r23
	.loc	1 81 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:81:25
	add.ul r[17:18], r[8:9], r[12:13]
	zext_int2long r[8:9], r24
	setlt.ul r5, r[8:9], r[17:18]
	addli.d r[8:9], r[3:4], 0
	bneq r5, zero, .LBB0_32
# %bb.34:                               # %.thread.us
                                        #   in Loop: Header=BB0_33 Depth=2
	.loc	1 0 25 is_stmt 0                # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:0:25
	zext_int2long r[8:9], zero
	j .LBB0_32
.LBB0_35:                               # %.split18.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26 is_stmt 1               # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:73:26
	addli r24, r15, 32
	addli r10, r10, 32
	addli r6, r6, 32
	.loc	1 89 25                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:89:25
	add.s r7, r7, r1
	j .LBB0_39
.LBB0_36:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:101:67
	loadli.w r1,  -904(r30)                 # 4-byte Folded Reload
	load.d r[18:19], -848(r30)              # 8-byte Folded Reload
	addli r22, zero, 1
	zext_int2long r[3:4], r1
	loadli.w r1,  -900(r30)                 # 4-byte Folded Reload
	min.ul r[8:9], r[3:4], r[18:19]
	sext_int2long r[12:13], r1
	addli r1, zero, 19
	addli.d r[8:9], r[8:9], 128
	min.sl r[18:19], r[12:13], r[18:19]
	max.ul r[8:9], r[8:9], r[3:4]
	addli.d r[18:19], r[18:19], 128
	sub.sl r[3:4], r[8:9], r[3:4]
	zext_int2long r[8:9], r11
	max.sl r[18:19], r[18:19], r[12:13]
	min.ul r[3:4], r[3:4], r[8:9]
	sub.sl r[12:13], r[18:19], r[12:13]
	load.d r[18:19], 16(r30)
	store.d r[3:4], -848(r30)               # 8-byte Folded Spill
	load.d r[3:4], -872(r30)                # 8-byte Folded Reload
	min.sl r[8:9], r[12:13], r[8:9]
	addli r13, zero, 5
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 10
	store.d r[8:9], -872(r30)               # 8-byte Folded Spill
	load.d r[8:9], -896(r30)                # 8-byte Folded Reload
	add.ul r[3:4], r[18:19], r[3:4]
	loadli.w r19,  -852(r30)                # 4-byte Folded Reload
	xwait r1, 0
	addli r1, zero, 1
	lock zero, r13
	dma_cfg r1, zero, zero, 0
	add.ul r[3:4], r[3:4], r[8:9]
	dma_cfg zero, r1, zero, 1
	load.d r[8:9], -848(r30)                # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r1, r8, 2
	dma_cfg r3, r17, r1, 3
	addli r1, zero, 512
	addli r3, zero, 4096
	load.d r[8:9], -872(r30)                # 8-byte Folded Reload
	dma_cfg r3, r1, r8, 4
	addli r1, zero, 11
	dma_run zero
	unlock r13
	xsignal r1, 0
	j .LBB0_7
.LBB0_37:                               # %.split18.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:86:20
	addli r7, r7, 32
.LBB0_38:                               # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:73:26
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_39:                               # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:0:26
	load.d r[17:18], -864(r30)              # 8-byte Folded Reload
	loadli.w r19,  -852(r30)                # 4-byte Folded Reload
	addli r13, zero, 5
	addli r5, zero, 48
	j .LBB0_8
.LBB0_40:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_42
# %bb.41:
	.loc	1 0 0 is_stmt 0                 # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:22:0
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
.LBB0_42:
	.loc	1 22 0 epilogue_begin           # coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py:22:0
	addli sp, sp, 912
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
	.long	976                             # 0x3d0
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
.asciz	"coljhisjup3yn6lc2osxvzhrjhr7scdoljs4enymvj6hmjbv6wz2.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/ol" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
