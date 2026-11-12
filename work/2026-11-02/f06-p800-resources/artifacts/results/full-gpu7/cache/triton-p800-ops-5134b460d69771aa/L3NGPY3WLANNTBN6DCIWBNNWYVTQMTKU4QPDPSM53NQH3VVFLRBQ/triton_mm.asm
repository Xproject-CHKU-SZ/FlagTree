	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/se" "csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py"
	.loc	1 22 0                          # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1000
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:73:26
	core_id r2
	addli r30, sp, 936
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:0:26
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
	ble.s r3, r1, .LBB0_34
# %bb.4:                                # %.lr.ph
	loadli.w r6,  -176(r30)
	loadli.w r7,  -676(r30)
	loadli.w r17,  -872(r30)
	loadli.w r10,  -500(r30)
	sext_int2long r[3:4], r3
	sext_int2long r[27:28], r1
	addli r11, zero, 64
	addli r12, zero, 1
	addli r14, zero, 7
	addli r15, zero, 3
	addli r16, zero, 4
	addli r19, zero, 80
	addli r20, zero, 43
	lui r21, 220
	addli r22, zero, 6
	addli r24, zero, 128
	addli r26, zero, 256
	addli r25, zero, 2
	lui r13, 48
	addli r18, zero, 0
	store.d r[3:4], -896(r30)               # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split18.thread89
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:86:20
	addli r7, r7, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:73:26
	addli r1, zero, 10
	lui r13, 48
	xsignal r1, 0
	load.d r[27:28], -880(r30)              # 8-byte Folded Reload
	loadli.w r18,  -884(r30)                # 4-byte Folded Reload
.LBB0_7:                                # %.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:0:26
	load.d r[8:9], -896(r30)                # 8-byte Folded Reload
	addli.d r[27:28], r[27:28], 1
	addli r18, r18, 1
	addli r17, r4, 0
	setlt.sl r1, r[27:28], r[8:9]
	beq r1, zero, .LBB0_34
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	.loc	1 54 50 is_stmt 1               # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:54:50
	addli r8, zero, 8
	div.s r1, r27, r1
	div.s r3, r1, r3
	.loc	1 53 22                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:53:22
	div.s r4, r3, r11
	.loc	1 54 41                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:54:41
	slli r1, r4, 3
	.loc	1 54 30 is_stmt 0               # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:54:30
	sub.s r5, r12, r1
	.loc	1 54 50                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:54:50
	min.s r5, r5, r8
	.loc	1 55 40 is_stmt 1               # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:55:40
	mod.s r8, r3, r5
	.loc	1 55 34 is_stmt 0               # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:55:34
	add.s r1, r1, r8
	.loc	1 95 15 is_stmt 1               # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:95:15
	zext_int2long r[8:9], r1
	.loc	1 73 26                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:73:26
	bneq r2, r16, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:0:26
	store.d r[8:9], -904(r30)               # 8-byte Folded Spill
	.loc	1 73 26                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:73:26
	addli r8, zero, 11
	xwait r8, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:0:26
	beq r2, r12, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	store.d r[8:9], -904(r30)               # 8-byte Folded Spill
	bneq r2, r25, .LBB0_15
# %bb.12:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	addli r5, zero, 48
	addli r8, zero, 5
.LBB0_13:                               # %.thread.us23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:81:20
	mod.s r3, r7, r20
	.loc	1 89 25                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:89:25
	mod.s r4, r17, r5
	xwait r25, 0
	xwait r8, 0
	lock zero, zero
	addli r17, r17, 1
	.loc	1 81 20                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:81:20
	addli r7, r7, 1
	.loc	1 89 25                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:89:25
	ds_cfg r15, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r24, zero, 13
	.loc	1 81 20                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:89:25
	slli r4, r4, 14
	.loc	1 81 20                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:81:20
	add.s r3, r3, r13
	.loc	1 89 25                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:89:25
	shuffle_batch r4, r3, r11, 1
	.loc	1 73 26                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:73:26
	andi r3, r1, 1
	addli r1, zero, 0
	.loc	1 89 25                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:89:25
	unlock zero
	xsignal r15, 0
	xsignal r16, 0
	bneq r3, zero, .LBB0_13
# %bb.14:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:73:26
	addli r10, r10, 2
	addli r6, r6, 2
	addli r4, r17, 0
	.loc	1 89 25                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:89:25
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:0:25
	slli r4, r4, 6
	slli r1, r1, 7
	store.d r[27:28], -880(r30)             # 8-byte Folded Spill
	addli r13, zero, 0
	storeli.w r18, -884(r30)                # 4-byte Folded Spill
	sub.s r3, r3, r4
	mod.s r4, r18, r15
	storeli.w r1, -920(r30)                 # 4-byte Folded Spill
	addli r1, zero, 1
	addli r18, zero, 0
	div.s r3, r3, r5
	slli r5, r4, 16
	zext_int2long r[8:9], r3
	slli r3, r3, 7
	sll.d r[8:9], r[8:9], r14
	storeli.w r3, -928(r30)                 # 4-byte Folded Spill
	.loc	1 73 26 is_stmt 1               # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:73:26
	load.d r[3:4], 8(r30)
	store.d r[8:9], -912(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r1
	add.ul r[27:28], r[3:4], r[8:9]
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:89:25
	addli r8, zero, 9
	xwait r22, 0
	xwait r8, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r23, r3, r11, 2
	addli r3, zero, 8
	unlock zero
	xsignal r14, 0
	xsignal r3, 0
	.loc	1 73 26                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:73:26
	andi r1, r1, 1
	bneq r1, zero, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	.loc	1 86 20                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:86:20
	mod.s r3, r6, r20
	.loc	1 89 25                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:89:25
	mod.s r8, r10, r19
	addli r4, r17, 1
	addli r10, r10, 1
	.loc	1 86 20                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:86:20
	addli r6, r6, 1
	slli r3, r3, 14
	.loc	1 89 25                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:89:25
	slli r23, r8, 14
	.loc	1 86 20                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:86:20
	add.s r3, r3, r21
	beq r2, r14, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:0:20
	bneq r2, r22, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 20                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:86:20
	zext_int2long r[8:9], r13
	xwait r14, 0
	lock zero, r16
	dma_cfg r12, r12, zero, 0
	add.ul r[8:9], r[27:28], r[8:9]
	dma_cfg zero, r9, zero, 2
	dma_cfg r3, r8, r26, 3
	addli r3, zero, 2048
	dma_cfg r26, r3, r11, 4
	dma_run zero
	unlock r16
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:73:26
	andi r1, r1, 1
	bneq r1, zero, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:0:26
	andi r1, r1, 1
	.loc	1 89 25 is_stmt 1               # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:89:25
	bneq r2, r16, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25 is_stmt 0                # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:0:25
	addli r3, zero, 48
	.loc	1 89 25                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:89:25
	xwait r16, 0
	addli r8, zero, 0
	mod.s r3, r17, r3
	addli r17, zero, 1
	slli r13, r3, 14
	addli r3, zero, 8
	xwait r3, 0
	addli r3, zero, 1
	beq r18, zero, .LBB0_23
.LBB0_22:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r9, r8, 13
	slli r8, r8, 8
	lock zero, r3
	mm_cfg r11, r11, r24, 0
	or r9, r9, r23
	or r8, r8, r5
	mm_cfg r25, r16, r3, 2
	mm_acc r8, r13, r9, 5
	andi r9, r17, 1
	addli r8, zero, 1
	addli r17, zero, 0
	unlock r3
	bneq r9, zero, .LBB0_22
	j .LBB0_24
.LBB0_23:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r9, r8, 13
	slli r8, r8, 8
	lock zero, r3
	mm_cfg r11, r11, r24, 0
	or r9, r9, r23
	or r8, r8, r5
	mm_cfg r25, r16, r3, 2
	mm r8, r13, r9, 5
	andi r9, r17, 1
	addli r8, zero, 1
	addli r17, zero, 0
	unlock r3
	bneq r9, zero, .LBB0_23
.LBB0_24:                               # %.thread6.thread88
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r3, zero, 5
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	bneq r1, zero, .LBB0_26
	j .LBB0_5
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:73:26
	beq r1, zero, .LBB0_31
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:0:26
	addli r1, zero, 0
	.loc	1 89 25 is_stmt 1               # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:89:25
	addli r18, r18, 1
	lui r13, 32
	addli r17, r4, 0
	j .LBB0_17
.LBB0_27:                               # %.split18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:86:20
	addli r7, r7, 2
	.loc	1 73 26                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:73:26
	beq r2, r16, .LBB0_6
	j .LBB0_32
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:0:26
	addli r1, zero, 15
	store.d r[27:28], -880(r30)             # 8-byte Folded Spill
	sll.d r[3:4], r[8:9], r1
	load.d r[8:9], 0(r30)
	addli r1, zero, 1
	add.ul r[4:5], r[8:9], r[3:4]
	addli r3, zero, 0
.LBB0_29:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:81:20
	mod.s r8, r7, r20
	.loc	1 86 25                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:86:25
	zext_int2long r[27:28], r3
	.loc	1 81 20                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:81:20
	xwait r15, 0
	lock zero, r16
	addli r7, r7, 1
	dma_cfg r12, r12, zero, 0
	sll.d r[27:28], r[27:28], r12
	slli r3, r8, 14
	add.ul r[8:9], r[4:5], r[27:28]
	add.s r3, r3, r13
	dma_cfg zero, r9, zero, 2
	dma_cfg r3, r8, r24, 3
	.loc	1 73 26                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:73:26
	andi r8, r1, 1
	addli r3, zero, 64
	addli r1, zero, 0
	.loc	1 81 20                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:81:20
	dma_cfg r24, r26, r24, 4
	dma_run zero
	unlock r16
	xsignal r25, 0
	.loc	1 73 26                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:73:26
	bneq r8, zero, .LBB0_29
# %bb.30:                               # %.split18.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:0:26
	load.d r[27:28], -880(r30)              # 8-byte Folded Reload
	.loc	1 73 26                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:73:26
	addli r4, r17, 2
	addli r10, r10, 2
	addli r6, r6, 2
	.loc	1 89 25 is_stmt 1               # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:89:25
	j .LBB0_7
.LBB0_31:                               # %.split18.thread87
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:86:20
	addli r7, r7, 2
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:0:20
	load.d r[27:28], -880(r30)              # 8-byte Folded Reload
	loadli.w r18,  -884(r30)                # 4-byte Folded Reload
	lui r13, 48
	bneq r2, zero, .LBB0_7
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:101:67
	loadli.w r1,  -928(r30)                 # 4-byte Folded Reload
	addli r3, zero, 5
	zext_int2long r[8:9], r1
	addli r1, zero, 896
	zext_int2long r[17:18], r1
	loadli.w r1,  -920(r30)                 # 4-byte Folded Reload
	min.ul r[17:18], r[8:9], r[17:18]
	sext_int2long r[27:28], r1
	addli r1, zero, 18
	addli.d r[17:18], r[17:18], 128
	store.d r[17:18], -928(r30)             # 8-byte Folded Spill
	zext_int2long r[17:18], zero
	store.d r[17:18], -920(r30)             # 8-byte Folded Spill
	load.d r[17:18], -928(r30)              # 8-byte Folded Reload
	max.ul r[17:18], r[17:18], r[8:9]
	store.d r[17:18], -928(r30)             # 8-byte Folded Spill
	load.d r[17:18], -920(r30)              # 8-byte Folded Reload
	min.sl r[17:18], r[27:28], r[17:18]
	store.d r[17:18], -920(r30)             # 8-byte Folded Spill
	load.d r[17:18], -928(r30)              # 8-byte Folded Reload
	sub.sl r[8:9], r[17:18], r[8:9]
	zext_int2long r[17:18], r24
	store.d r[8:9], -928(r30)               # 8-byte Folded Spill
	load.d r[8:9], -920(r30)                # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 128
	store.d r[8:9], -936(r30)               # 8-byte Folded Spill
	load.d r[8:9], -928(r30)                # 8-byte Folded Reload
	min.ul r[8:9], r[8:9], r[17:18]
	store.d r[8:9], -920(r30)               # 8-byte Folded Spill
	load.d r[8:9], -936(r30)                # 8-byte Folded Reload
	max.sl r[8:9], r[8:9], r[27:28]
	store.d r[8:9], -928(r30)               # 8-byte Folded Spill
	load.d r[8:9], -904(r30)                # 8-byte Folded Reload
	sll.d r[8:9], r[8:9], r1
	addli r1, zero, 10
	store.d r[8:9], -936(r30)               # 8-byte Folded Spill
	load.d r[8:9], -928(r30)                # 8-byte Folded Reload
	sub.sl r[8:9], r[8:9], r[27:28]
	load.d r[27:28], 16(r30)
	store.d r[8:9], -904(r30)               # 8-byte Folded Spill
	load.d r[8:9], -936(r30)                # 8-byte Folded Reload
	add.ul r[8:9], r[27:28], r[8:9]
	load.d r[27:28], -904(r30)              # 8-byte Folded Reload
	store.d r[8:9], -928(r30)               # 8-byte Folded Spill
	load.d r[8:9], -912(r30)                # 8-byte Folded Reload
	min.sl r[17:18], r[27:28], r[17:18]
	load.d r[27:28], -880(r30)              # 8-byte Folded Reload
	store.d r[17:18], -904(r30)             # 8-byte Folded Spill
	load.d r[17:18], -928(r30)              # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r3
	sll.d r[8:9], r[8:9], r12
	dma_cfg r12, zero, zero, 0
	dma_cfg zero, r12, zero, 1
	add.ul r[8:9], r[17:18], r[8:9]
	load.d r[17:18], -920(r30)              # 8-byte Folded Reload
	dma_cfg r9, zero, zero, 2
	slli r1, r17, 2
	dma_cfg r8, r5, r1, 3
	addli r1, zero, 512
	addli r5, zero, 2048
	load.d r[8:9], -904(r30)                # 8-byte Folded Reload
	dma_cfg r5, r1, r8, 4
	addli r1, zero, 11
	loadli.w r18,  -884(r30)                # 4-byte Folded Reload
	dma_run zero
	unlock r3
	xsignal r1, 0
	j .LBB0_7
.LBB0_34:                               # %._crit_edge
	.loc	1 22 0                          # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_36
# %bb.35:
	.loc	1 0 0 is_stmt 0                 # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:22:0
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
.LBB0_36:
	.loc	1 22 0 epilogue_begin           # csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py:22:0
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
.asciz	"csearq4o55i46lj7azz2oograckwq6tj6xcn7l3ko2xc5ijukwkg.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/se" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
