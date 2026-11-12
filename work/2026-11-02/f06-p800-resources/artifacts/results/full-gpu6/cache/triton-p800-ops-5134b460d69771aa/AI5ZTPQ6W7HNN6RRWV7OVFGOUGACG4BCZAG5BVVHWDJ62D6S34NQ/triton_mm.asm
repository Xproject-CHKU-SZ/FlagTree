	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/bo" "cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py"
	.loc	1 22 0                          # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1936
	addli r30, sp, 1872
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	core_id r23
	loadli.w r16,  28(r30)
	xsignal_mode_cfg r1
	beq r23, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:0:26
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r2, zero, 2
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	addli r3, zero, 3
	unlock r2
	addli r2, zero, 11
	csr_set csr3, r1
	addli r1, zero, 5
	sync_group
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -388(r30)
	storeli.w zero, -1032(r30)
	storeli.w zero, -1420(r30)
	storeli.w zero, -1808(r30)
	mul.s r1, r2, r1
	addli r2, r4, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r1, r2, r4
	fmac.s r2, r2, r4
	min.s r2, r2, r3
	ble.s r2, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	sext_int2long r[6:7], r1
	lui r1, 7
	loadli.w r28,  -388(r30)
	loadli.w r26,  -1032(r30)
	loadli.w r8,  -1420(r30)
	loadli.w r25,  -1808(r30)
	addli r14, zero, 128
	addli r17, zero, 8
	addli r27, zero, 6
	addli r12, zero, 2
	addli r13, zero, 4
	addli r15, zero, 96
	addli r18, zero, 7
	addli r20, zero, 64
	addli r21, zero, 32
	addli r19, zero, 5
	lui r22, 8
	addli r9, zero, 3
	addli r24, zero, 0
	store.d r[2:3], -1848(r30)              # 8-byte Folded Spill
	ori r3, r1, 4095
	lui r1, 127
	lui r2, 1048448
	ori r1, r1, 4095
	store.d r[2:3], -1872(r30)              # 8-byte Folded Spill
	storeli.w r1, -1820(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	addli r1, zero, 10
	loadli.w r16,  28(r30)
	.loc	1 101 67 is_stmt 1              # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:101:67
	addli r25, r14, 1
	addli r26, r5, 1
	addli r28, r9, 1
	addli r14, zero, 128
	addli r19, zero, 5
	lui r22, 8
	.loc	1 73 26                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	xsignal r1, 0
	load.d r[6:7], -1832(r30)               # 8-byte Folded Reload
.LBB0_6:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:0:26
	addli r9, zero, 3
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[1:2], -1848(r30)               # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	addli r24, r24, 1
	setlt.sl r1, r[6:7], r[1:2]
	beq r1, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r1,  32(r30)
	div.s r1, r6, r1
	div.s r4, r1, r16
	.loc	1 53 22 is_stmt 1               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:53:22
	div.s r1, r4, r14
	.loc	1 54 41                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:54:41
	slli r3, r1, 3
	.loc	1 54 30 is_stmt 0               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:54:30
	sub.s r2, r17, r3
	.loc	1 54 50                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:54:50
	min.s r2, r2, r17
	.loc	1 55 40 is_stmt 1               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:55:40
	mod.s r5, r4, r2
	.loc	1 55 34 is_stmt 0               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:55:34
	add.s r3, r3, r5
	addli r5, zero, 448
	.loc	1 95 15 is_stmt 1               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:95:15
	zext_int2long r[10:11], r3
	store.d r[10:11], -1840(r30)            # 8-byte Folded Spill
	zext_int2long r[10:11], r5
	.loc	1 73 26                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	store.d r[10:11], -1816(r30)            # 8-byte Folded Spill
	bneq r23, r13, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r5, zero, 11
	addli r11, zero, 160
	xwait r5, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:0:26
	addli r5, zero, 1
	addli r11, zero, 160
	beq r23, r5, .LBB0_29
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r23, r12, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 0
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	add.s r1, r8, r3
	add.s r2, r25, r3
	xwait r12, 0
	xwait r19, 0
	lock zero, zero
	.loc	1 73 26                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	ds_cfg r12, zero, 0
	.loc	1 81 20                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:20
	mod.s r1, r1, r15
	.loc	1 89 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	mod.s r2, r2, r15
	ds_cfg r21, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r20, zero, 13
	.loc	1 81 20                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:20
	slli r1, r1, 13
	.loc	1 89 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	slli r2, r2, 13
	.loc	1 81 20                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:20
	add.s r1, r1, r22
	.loc	1 89 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	shuffle_batch r2, r1, r21, 1
	unlock zero
	xsignal r9, 0
	xsignal r13, 0
	bneq r3, r21, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	addli r26, r26, 32
	addli r28, r28, 32
	.loc	1 89 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	add.s r25, r25, r3
	add.s r8, r8, r3
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:0:25
	slli r1, r1, 7
	slli r3, r3, 6
	addli r16, zero, 5
	store.d r[6:7], -1832(r30)              # 8-byte Folded Spill
	addli r19, zero, 0
	addli r10, zero, 0
	sub.s r1, r4, r1
	storeli.w r3, -1860(r30)                # 4-byte Folded Spill
	div.s r1, r1, r2
	mod.s r2, r24, r12
	zext_int2long r[4:5], r1
	slli r1, r1, 6
	sll.d r[3:4], r[4:5], r27
	.loc	1 73 26 is_stmt 1               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	storeli.w r1, -1864(r30)                # 4-byte Folded Spill
	sll.d r[4:5], r[3:4], r12
	slli r3, r2, 14
	load.d r[1:2], 8(r30)
	store.d r[4:5], -1856(r30)              # 8-byte Folded Spill
	add.ul r[6:7], r[1:2], r[4:5]
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	addli r1, zero, 9
	xwait r27, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r12, zero, 0
	ds_cfg r20, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r20, zero, 13
	shuffle_coa r22, r4, r21, 2
	unlock zero
	xsignal r18, 0
	xsignal r17, 0
	.loc	1 73 26                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	addli r19, r19, 1
	beq r19, r21, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	addli r10, r10, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r9, r28, r10
	add.s r5, r26, r10
	add.s r14, r25, r10
	.loc	1 86 20                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:86:20
	mod.s r1, r9, r15
	.loc	1 89 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	mod.s r2, r5, r11
	slli r22, r2, 13
	.loc	1 86 20                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:86:20
	slli r1, r1, 13
	lui r2, 200
	add.s r4, r1, r2
	beq r23, r18, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:0:20
	bneq r23, r27, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:86:25
	zext_int2long r[1:2], r19
	.loc	1 86 20                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:86:20
	addli r22, zero, 17
	xwait r18, 0
	lock zero, r13
	dma_cfg zero, zero, zero, 0
	sll.d r[1:2], r[1:2], r22
	addli r22, zero, 256
	add.ul r[1:2], r[6:7], r[1:2]
	dma_cfg zero, r2, zero, 2
	dma_cfg r4, r1, r22, 3
	addli r1, zero, 4096
	dma_cfg r22, r1, r21, 4
	dma_run zero
	unlock r13
	xsignal r27, 0
	.loc	1 73 26 is_stmt 1               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	addli r19, r19, 1
	bneq r19, r21, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	bneq r23, r13, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:0:0
	mod.s r1, r14, r15
	addli r2, zero, 1
	.loc	1 89 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	xwait r13, 0
	xwait r17, 0
	lock zero, r2
	mm_cfg r20, r21, r20, 0
	mm_cfg r12, r12, r2, 2
	.loc	1 0 0                           # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:0:0
	slli r1, r1, 13
	.loc	1 89 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	beq r10, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r3, r1, r22, 8
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	addli r19, r19, 1
	bneq r19, r21, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	mm r3, r1, r22, 8
.LBB0_26:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r1, zero, 1
	.loc	1 73 26                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	addli r19, r19, 1
	.loc	1 89 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	unlock r1
	addli r1, zero, 9
	xsignal r16, 0
	xsignal r1, 0
	.loc	1 73 26                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	bneq r19, r21, .LBB0_17
# %bb.27:                               # %.split17.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:86:20
	addli r8, r8, 32
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r8, r8, 32
	.loc	1 73 26                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	beq r23, r13, .LBB0_5
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:0:26
	load.d r[2:3], -1840(r30)               # 8-byte Folded Reload
	addli r1, zero, 16
	store.d r[6:7], -1832(r30)              # 8-byte Folded Spill
	storeli.w r24, -1856(r30)               # 4-byte Folded Spill
	addli r24, zero, 3
	sll.d r[5:6], r[2:3], r1
	load.d r[1:2], -1872(r30)               # 8-byte Folded Reload
	addli r3, zero, 0
	and.d r[16:17], r[5:6], r[1:2]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r4, zero, 1024
	.loc	1 81 25 is_stmt 1               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:25
	sub.sl r[9:10], r[1:2], r[9:10]
	.loc	1 81 20 is_stmt 0               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:20
	sll.d r[1:2], r[1:2], r12
	xwait r24, 0
	lock zero, r13
	dma_cfg zero, zero, zero, 0
	zext_int2long r[22:23], r4
	.loc	1 0 0                           # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:0:0
	add.s r4, r8, r3
	.loc	1 73 26 is_stmt 1               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	addli r3, r3, 1
	.loc	1 81 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:25
	div.sl r[9:10], r[9:10], r[22:23]
	.loc	1 81 20 is_stmt 0               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:20
	load.d r[22:23], 0(r30)
	.loc	1 81 0                          # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:0
	mod.s r4, r4, r15
	.loc	1 81 20                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:20
	add.ul r[1:2], r[22:23], r[1:2]
	dma_cfg zero, r2, zero, 2
	.loc	1 81 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:25
	load.d r[22:23], -1816(r30)             # 8-byte Folded Reload
	.loc	1 81 0                          # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:0
	slli r4, r4, 13
	.loc	1 81 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:25
	min.sl r[22:23], r[9:10], r[22:23]
	sub.sl r[9:10], r[22:23], r[9:10]
	lui r22, 8
	.loc	1 81 0                          # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:0
	add.s r4, r4, r22
	.loc	1 81 20                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:20
	addli r7, r9, 64
	dma_cfg r4, r1, r14, 3
	addli r1, zero, 4096
	dma_cfg r14, r1, r7, 4
	dma_run zero
	unlock r13
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	beq r3, r21, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:86:25
	zext_int2long r[1:2], r3
	loadli.w r4,  -1820(r30)                # 4-byte Folded Reload
	sll.d r[1:2], r[1:2], r19
	zext_int2long r[9:10], r4
	.loc	1 81 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:81:25
	add.ul r[1:2], r[1:2], r[5:6]
	setlt.ul r4, r[9:10], r[1:2]
	addli.d r[9:10], r[16:17], 0
	bneq r4, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:0:25
	zext_int2long r[9:10], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r16,  28(r30)
	load.d r[6:7], -1832(r30)               # 8-byte Folded Reload
	loadli.w r24,  -1856(r30)               # 4-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	addli r25, r25, 32
	addli r26, r26, 32
	addli r28, r28, 32
	.loc	1 89 25                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:89:25
	add.s r8, r8, r3
	.loc	1 73 26                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:73:26
	core_id r23
	addli r17, zero, 8
	j .LBB0_6
.LBB0_34:                               # %.split17.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:86:20
	addli r8, r8, 32
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:0:20
	loadli.w r16,  28(r30)
	.loc	1 101 67 is_stmt 1              # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:101:67
	addli r25, r14, 1
	addli r26, r5, 1
	addli r28, r9, 1
	addli r19, zero, 5
	lui r22, 8
	bneq r23, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -1864(r30)                # 4-byte Folded Reload
	loadli.w r6,  -1860(r30)                # 4-byte Folded Reload
	addli r4, zero, 960
	load.d r[9:10], -1816(r30)              # 8-byte Folded Reload
	load.d r[16:17], -1840(r30)             # 8-byte Folded Reload
	addli r14, zero, 18
	zext_int2long r[4:5], r4
	zext_int2long r[1:2], r1
	sext_int2long r[6:7], r6
	sll.d r[16:17], r[16:17], r14
	min.ul r[4:5], r[1:2], r[4:5]
	min.sl r[9:10], r[6:7], r[9:10]
	addli.d r[4:5], r[4:5], 64
	addli.d r[9:10], r[9:10], 64
	max.ul r[4:5], r[4:5], r[1:2]
	max.sl r[9:10], r[9:10], r[6:7]
	sub.sl r[1:2], r[4:5], r[1:2]
	zext_int2long r[4:5], r20
	sub.sl r[6:7], r[9:10], r[6:7]
	load.d r[9:10], 16(r30)
	min.ul r[1:2], r[1:2], r[4:5]
	min.sl r[4:5], r[6:7], r[4:5]
	load.d r[6:7], -1856(r30)               # 8-byte Folded Reload
	add.ul r[9:10], r[9:10], r[16:17]
	loadli.w r16,  28(r30)
	addli r17, zero, 8
	slli r1, r1, 2
	addli r2, zero, 4096
	add.ul r[6:7], r[9:10], r[6:7]
	addli r9, zero, 10
	xwait r9, 0
	lock zero, r19
	addli r9, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r9, zero, 1
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, r3, r1, 3
	addli r1, zero, 256
	dma_cfg r2, r1, r4, 4
	addli r1, zero, 11
	dma_run zero
	unlock r19
	xsignal r1, 0
.LBB0_37:                               # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:0:67
	load.d r[6:7], -1832(r30)               # 8-byte Folded Reload
	addli r14, zero, 128
	j .LBB0_6
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:22:0
	xsignal zero, 0
	bneq r23, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py:22:0
	addli sp, sp, 1872
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
	.long	1936                            # 0x790
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
.asciz	"cbotfyve4q4ow3bnrs4jn4fdxmk52g5zvyx2ejhkne6l5sfreyyu.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/bo" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
