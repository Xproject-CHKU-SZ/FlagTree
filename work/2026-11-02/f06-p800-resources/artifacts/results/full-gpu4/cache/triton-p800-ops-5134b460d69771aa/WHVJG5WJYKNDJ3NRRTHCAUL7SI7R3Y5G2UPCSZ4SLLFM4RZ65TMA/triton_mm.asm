	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/gl" "cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py"
	.loc	1 22 0                          # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1000
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:73:26
	core_id r2
	addli r30, sp, 936
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -176(r30)
	storeli.w zero, -500(r30)
	storeli.w zero, -676(r30)
	storeli.w zero, -872(r30)
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
	ble.s r3, r1, .LBB0_36
# %bb.4:                                # %.lr.ph
	loadli.w r6,  -176(r30)
	loadli.w r7,  -676(r30)
	loadli.w r5,  -872(r30)
	loadli.w r10,  -500(r30)
	sext_int2long r[3:4], r3
	sext_int2long r[8:9], r1
	addli r11, zero, 64
	addli r17, zero, 1
	addli r15, zero, 8
	addli r14, zero, 7
	addli r19, zero, 3
	addli r16, zero, 4
	addli r18, zero, 2
	addli r21, zero, 43
	addli r23, zero, 6
	addli r25, zero, 128
	addli r26, zero, 32
	addli r20, zero, 5
	addli r22, zero, 512
	addli r13, zero, 0
	store.d r[3:4], -904(r30)               # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split18.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:86:20
	addli r7, r7, 4
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:73:26
	addli r1, zero, 10
	addli r17, zero, 1
	addli r19, zero, 3
	xsignal r1, 0
	load.d r[8:9], -880(r30)                # 8-byte Folded Reload
	loadli.w r13,  -884(r30)                # 4-byte Folded Reload
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:0:26
	load.d r[3:4], -904(r30)                # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	addli r13, r13, 1
	addli r5, r12, 0
	setlt.sl r1, r[8:9], r[3:4]
	beq r1, zero, .LBB0_36
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	store.d r[8:9], -880(r30)               # 8-byte Folded Spill
	div.s r1, r8, r1
	div.s r8, r1, r3
	.loc	1 53 22 is_stmt 1               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:53:22
	div.s r9, r8, r11
	.loc	1 54 41                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:54:41
	slli r1, r9, 3
	.loc	1 54 30 is_stmt 0               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:54:30
	sub.s r3, r17, r1
	.loc	1 54 50                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:54:50
	min.s r12, r3, r15
	.loc	1 55 40 is_stmt 1               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:55:40
	mod.s r3, r8, r12
	.loc	1 55 34 is_stmt 0               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:55:34
	add.s r3, r1, r3
	.loc	1 95 15 is_stmt 1               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:95:15
	zext_int2long r[27:28], r3
	.loc	1 73 26                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:73:26
	store.d r[27:28], -896(r30)             # 8-byte Folded Spill
	bneq r2, r16, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:0:26
	beq r2, r17, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r18, .LBB0_15
# %bb.12:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 0
	addli r8, zero, 48
	addli r9, zero, 5
	lui r12, 48
.LBB0_13:                               # %.thread.us23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	add.s r3, r7, r1
	add.s r4, r5, r1
	xwait r18, 0
	xwait r9, 0
	lock zero, zero
	.loc	1 73 26                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	ds_cfg r18, zero, 0
	.loc	1 81 20                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:81:20
	mod.s r3, r3, r21
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	mod.s r4, r4, r8
	ds_cfg r26, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r25, zero, 13
	.loc	1 81 20                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	slli r4, r4, 14
	.loc	1 81 20                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:81:20
	add.s r3, r3, r12
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	shuffle_batch r4, r3, r26, 1
	unlock zero
	xsignal r19, 0
	xsignal r16, 0
	bneq r1, r16, .LBB0_13
# %bb.14:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:0:25
	load.d r[8:9], -880(r30)                # 8-byte Folded Reload
	addli r20, zero, 5
	.loc	1 73 26 is_stmt 1               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:73:26
	addli r10, r10, 4
	addli r6, r6, 4
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	add.s r12, r5, r1
	add.s r7, r7, r1
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:0:25
	slli r4, r9, 6
	slli r3, r3, 7
	storeli.w r13, -884(r30)                # 4-byte Folded Spill
	addli r1, zero, 0
	sub.s r4, r8, r4
	mod.s r8, r13, r19
	storeli.w r3, -912(r30)                 # 4-byte Folded Spill
	addli r19, zero, 0
	div.s r4, r4, r12
	zext_int2long r[12:13], r4
	slli r3, r4, 7
	sll.d r[12:13], r[12:13], r14
	.loc	1 73 26 is_stmt 1               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:73:26
	storeli.w r3, -920(r30)                 # 4-byte Folded Spill
	slli r3, r8, 16
	load.d r[8:9], 8(r30)
	sll.d r[27:28], r[12:13], r18
	add.ul r[8:9], r[8:9], r[27:28]
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	addli r4, zero, 9
	xwait r23, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r18, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r25, zero, 13
	shuffle_coa r24, r17, r26, 2
	unlock zero
	xsignal r14, 0
	xsignal r15, 0
	.loc	1 73 26                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:73:26
	addli r1, r1, 1
	bneq r1, r16, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	addli r12, zero, 80
	.loc	1 86 20                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:86:20
	mod.s r4, r6, r21
	addli r6, r6, 1
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	mod.s r13, r10, r12
	addli r12, r5, 1
	addli r10, r10, 1
	.loc	1 86 20                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:86:20
	slli r4, r4, 14
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	slli r24, r13, 14
	.loc	1 86 20                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:86:20
	lui r13, 220
	add.s r17, r4, r13
	beq r2, r14, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:0:20
	bneq r2, r23, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:86:25
	zext_int2long r[4:5], r1
	.loc	1 86 20                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:86:20
	addli r13, zero, 17
	xwait r14, 0
	lock zero, r16
	addli r22, zero, 512
	dma_cfg zero, zero, zero, 0
	sll.d r[4:5], r[4:5], r13
	addli r13, zero, 512
	add.ul r[4:5], r[8:9], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r17, r4, r13, 3
	addli r4, zero, 4096
	dma_cfg r13, r4, r26, 4
	dma_run zero
	unlock r16
	xsignal r23, 0
	.loc	1 73 26 is_stmt 1               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:73:26
	addli r1, r1, 1
	bneq r1, r16, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	bneq r2, r16, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:0:0
	addli r4, zero, 48
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	xwait r16, 0
	xwait r15, 0
	addli r17, zero, 1
	addli r15, zero, 1
	.loc	1 0 0                           # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:0:0
	mod.s r4, r5, r4
	slli r5, r4, 14
	addli r4, zero, 0
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	beq r19, zero, .LBB0_23
.LBB0_22:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r13, r4, 13
	slli r4, r4, 8
	lock zero, r17
	mm_cfg r11, r26, r25, 0
	or r13, r13, r24
	or r4, r4, r3
	mm_cfg r18, r16, r17, 2
	mm_acc r4, r5, r13, 8
	andi r13, r15, 1
	addli r4, zero, 1
	addli r15, zero, 0
	unlock r17
	bneq r13, zero, .LBB0_22
	j .LBB0_24
.LBB0_23:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r13, r4, 13
	slli r4, r4, 8
	lock zero, r17
	mm_cfg r11, r26, r25, 0
	or r13, r13, r24
	or r4, r4, r3
	mm_cfg r18, r16, r17, 2
	mm r4, r5, r13, 8
	andi r13, r15, 1
	addli r4, zero, 1
	addli r15, zero, 0
	unlock r17
	bneq r13, zero, .LBB0_23
.LBB0_24:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:73:26
	addli r1, r1, 1
	addli r15, zero, 8
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	addli r4, zero, 9
	xsignal r20, 0
	xsignal r4, 0
	bneq r1, r16, .LBB0_26
	j .LBB0_5
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:73:26
	addli r1, r1, 1
	beq r1, r16, .LBB0_33
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	addli r19, r19, 1
	addli r5, r12, 0
	j .LBB0_17
.LBB0_27:                               # %.split18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:86:20
	addli r7, r7, 4
	.loc	1 73 26                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:73:26
	beq r2, r16, .LBB0_6
	j .LBB0_34
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:0:26
	load.d r[3:4], -896(r30)                # 8-byte Folded Reload
	addli r1, zero, 14
	addli r24, r13, 0
	sll.d r[8:9], r[3:4], r1
	addli r1, zero, 0
	j .LBB0_30
.LBB0_29:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	add.s r15, r7, r1
	.loc	1 81 25 is_stmt 1               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:81:25
	srl.d r[12:13], r[12:13], r14
	.loc	1 81 20 is_stmt 0               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:81:20
	load.d r[27:28], 0(r30)
	sll.d r[3:4], r[3:4], r18
	xwait r19, 0
	lock zero, r16
	.loc	1 73 26 is_stmt 1               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:73:26
	addli r1, r1, 1
	.loc	1 81 20                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:81:20
	dma_cfg zero, zero, zero, 0
	.loc	1 81 0 is_stmt 0                # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:81:0
	mod.s r15, r15, r21
	.loc	1 81 20                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:81:20
	sub.s r12, r25, r12
	add.ul r[3:4], r[27:28], r[3:4]
	dma_cfg zero, r4, zero, 2
	.loc	1 81 0                          # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:81:0
	slli r13, r15, 14
	lui r15, 48
	add.s r13, r13, r15
	.loc	1 81 20                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:81:20
	dma_cfg r13, r3, r25, 3
	dma_cfg r25, r22, r12, 4
	dma_run zero
	unlock r16
	xsignal r18, 0
	.loc	1 73 26 is_stmt 1               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:73:26
	beq r1, r16, .LBB0_32
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:86:25
	zext_int2long r[3:4], r1
	addli r15, zero, 16383
	sll.d r[12:13], r[3:4], r20
	zext_int2long r[27:28], r15
	.loc	1 81 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:81:25
	add.ul r[3:4], r[12:13], r[8:9]
	setlt.ul r15, r[27:28], r[3:4]
	bneq r15, zero, .LBB0_29
# %bb.31:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 0 25 is_stmt 0                # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:0:25
	addli.d r[12:13], r[3:4], 0
	j .LBB0_29
.LBB0_32:                               # %.split18.us
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[8:9], -880(r30)                # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:73:26
	addli r12, r5, 4
	addli r10, r10, 4
	addli r6, r6, 4
	.loc	1 89 25                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:89:25
	add.s r7, r7, r1
	addli r15, zero, 8
	addli r13, r24, 0
	j .LBB0_7
.LBB0_33:                               # %.split18.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:86:20
	addli r7, r7, 4
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:0:20
	load.d r[8:9], -880(r30)                # 8-byte Folded Reload
	loadli.w r13,  -884(r30)                # 4-byte Folded Reload
	addli r17, zero, 1
	addli r19, zero, 3
	bneq r2, zero, .LBB0_7
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:101:67
	loadli.w r1,  -920(r30)                 # 4-byte Folded Reload
	store.d r[27:28], -920(r30)             # 8-byte Folded Spill
	addli r13, zero, 5
	addli r20, zero, 5
	zext_int2long r[4:5], r1
	addli r1, zero, 896
	zext_int2long r[8:9], r1
	loadli.w r1,  -912(r30)                 # 4-byte Folded Reload
	min.ul r[8:9], r[4:5], r[8:9]
	sext_int2long r[27:28], r1
	addli r1, zero, 19
	addli.d r[8:9], r[8:9], 128
	store.d r[8:9], -928(r30)               # 8-byte Folded Spill
	zext_int2long r[8:9], zero
	store.d r[8:9], -912(r30)               # 8-byte Folded Spill
	load.d r[8:9], -928(r30)                # 8-byte Folded Reload
	max.ul r[8:9], r[8:9], r[4:5]
	store.d r[8:9], -928(r30)               # 8-byte Folded Spill
	load.d r[8:9], -912(r30)                # 8-byte Folded Reload
	min.sl r[8:9], r[27:28], r[8:9]
	store.d r[8:9], -912(r30)               # 8-byte Folded Spill
	load.d r[8:9], -928(r30)                # 8-byte Folded Reload
	sub.sl r[4:5], r[8:9], r[4:5]
	zext_int2long r[8:9], r25
	store.d r[4:5], -928(r30)               # 8-byte Folded Spill
	load.d r[4:5], -912(r30)                # 8-byte Folded Reload
	addli.d r[4:5], r[4:5], 128
	store.d r[4:5], -936(r30)               # 8-byte Folded Spill
	load.d r[4:5], -928(r30)                # 8-byte Folded Reload
	min.ul r[4:5], r[4:5], r[8:9]
	store.d r[4:5], -912(r30)               # 8-byte Folded Spill
	load.d r[4:5], -936(r30)                # 8-byte Folded Reload
	max.sl r[4:5], r[4:5], r[27:28]
	store.d r[4:5], -928(r30)               # 8-byte Folded Spill
	load.d r[4:5], -896(r30)                # 8-byte Folded Reload
	sll.d r[4:5], r[4:5], r1
	addli r1, zero, 10
	store.d r[4:5], -896(r30)               # 8-byte Folded Spill
	load.d r[4:5], -928(r30)                # 8-byte Folded Reload
	sub.sl r[4:5], r[4:5], r[27:28]
	load.d r[27:28], -896(r30)              # 8-byte Folded Reload
	store.d r[4:5], -928(r30)               # 8-byte Folded Spill
	load.d r[4:5], 16(r30)
	add.ul r[4:5], r[4:5], r[27:28]
	load.d r[27:28], -928(r30)              # 8-byte Folded Reload
	min.sl r[8:9], r[27:28], r[8:9]
	load.d r[27:28], -920(r30)              # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r13
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r17, zero, 1
	add.ul r[4:5], r[4:5], r[27:28]
	load.d r[27:28], -912(r30)              # 8-byte Folded Reload
	dma_cfg r5, zero, zero, 2
	slli r1, r27, 2
	dma_cfg r4, r3, r1, 3
	addli r1, zero, 4096
	dma_cfg r1, r22, r8, 4
	addli r1, zero, 11
	load.d r[8:9], -880(r30)                # 8-byte Folded Reload
	dma_run zero
	unlock r13
	loadli.w r13,  -884(r30)                # 4-byte Folded Reload
	xsignal r1, 0
	j .LBB0_7
.LBB0_36:                               # %._crit_edge
	.loc	1 22 0                          # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:22:0
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
.LBB0_38:
	.loc	1 22 0 epilogue_begin           # cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py:22:0
	addli sp, sp, 936
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
	.long	1000                            # 0x3e8
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
.asciz	"cgl7wyt5kk5lck6mgk3sjwde7muojmnlcngwcrov7wgo7cew6wnu.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/gl" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
