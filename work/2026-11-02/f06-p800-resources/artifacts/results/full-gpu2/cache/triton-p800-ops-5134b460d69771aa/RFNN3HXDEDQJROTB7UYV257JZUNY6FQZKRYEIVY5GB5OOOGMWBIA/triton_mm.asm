	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/gu" "cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py"
	.loc	1 22 0                          # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1616
	addli r30, sp, 1552
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	core_id r15
	loadli.w r20,  32(r30)
	xsignal_mode_cfg r1
	beq r15, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -236(r30)
	storeli.w zero, -880(r30)
	storeli.w zero, -1112(r30)
	storeli.w zero, -1500(r30)
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
	loadli.w r8,  -236(r30)
	loadli.w r9,  -880(r30)
	loadli.w r21,  -1112(r30)
	loadli.w r26,  -1500(r30)
	sext_int2long r[3:4], r3
	sext_int2long r[17:18], r1
	addli r11, zero, 64
	addli r23, zero, 1
	addli r27, zero, 8
	addli r14, zero, 7
	addli r16, zero, 4
	addli r7, zero, 96
	addli r19, zero, 160
	addli r22, zero, 6
	addli r24, zero, 128
	addli r25, zero, 32
	addli r1, zero, 256
	addli r28, zero, 57
	storeli.w zero, -1504(r30)              # 4-byte Folded Spill
	store.d r[3:4], -1536(r30)              # 8-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread93
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r21,  -1512(r30)               # 4-byte Folded Reload
	.loc	1 86 20 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:86:20
	addli r21, r21, 4
.LBB0_6:                                #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:20
	loadli.w r12,  32(r30)
	addli r23, zero, 1
	addli r20, r12, 0
	beq r15, zero, .LBB0_34
.LBB0_7:                                # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[17:18], -1520(r30)             # 8-byte Folded Reload
.LBB0_8:                                # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -1536(r30)               # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 1
	addli r26, r28, 0
	addli r7, zero, 96
	addli r28, zero, 57
	setlt.sl r3, r[17:18], r[3:4]
	loadli.w r4,  -1504(r30)                # 4-byte Folded Reload
	addli r4, r4, 1
	storeli.w r4, -1504(r30)                # 4-byte Folded Spill
	beq r3, zero, .LBB0_38
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	div.s r3, r17, r20
	loadli.w r4,  28(r30)
	storeli.w r21, -1512(r30)               # 4-byte Folded Spill
	addli r10, zero, 3
	addli r2, zero, 2
	.loc	1 73 26 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	core_id r12
	lui r15, 48
	div.s r4, r3, r4
	.loc	1 53 22                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:53:22
	div.s r5, r4, r11
	.loc	1 54 41                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:54:41
	slli r3, r5, 3
	.loc	1 54 30 is_stmt 0               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:54:30
	sub.s r6, r23, r3
	.loc	1 54 50                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:54:50
	min.s r13, r6, r27
	.loc	1 55 40 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:55:40
	mod.s r6, r4, r13
	.loc	1 55 34 is_stmt 0               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:55:34
	add.s r3, r3, r6
	.loc	1 95 15 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:95:15
	zext_int2long r[20:21], r3
	.loc	1 73 26                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	store.d r[20:21], -1528(r30)            # 8-byte Folded Spill
	bneq r12, r16, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r6, zero, 11
	core_id r15
	xwait r6, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:26
	beq r12, r23, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	core_id r15
	bneq r15, r2, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26                          # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:26
	loadli.w r21,  -1512(r30)               # 4-byte Folded Reload
	addli r4, zero, 0
	addli r6, zero, 5
	lui r13, 48
	addli r20, zero, 2
	addli r2, zero, 3
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	add.s r3, r21, r4
	add.s r5, r26, r4
	xwait r20, 0
	xwait r6, 0
	lock zero, zero
	.loc	1 73 26                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	addli r4, r4, 1
	.loc	1 89 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	ds_cfg r2, zero, 0
	.loc	1 81 20                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:81:20
	mod.s r3, r3, r28
	.loc	1 89 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	mod.s r5, r5, r7
	ds_cfg r11, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	.loc	1 81 20                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	slli r5, r5, 13
	.loc	1 81 20                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:81:20
	add.s r3, r3, r13
	.loc	1 89 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	shuffle_batch r5, r3, r25, 1
	unlock zero
	xsignal r2, 0
	xsignal r16, 0
	bneq r4, r16, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:25
	loadli.w r20,  32(r30)
	.loc	1 73 26 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	addli r9, r9, 4
	addli r8, r8, 4
	.loc	1 89 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	add.s r28, r26, r4
	add.s r21, r21, r4
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:25
	slli r5, r5, 6
	addli r2, zero, 3
	slli r10, r3, 7
	store.d r[17:18], -1520(r30)            # 8-byte Folded Spill
	addli r17, zero, 1
	addli r23, zero, 0
	addli r12, zero, 1
	addli r20, zero, 58
	lui r21, 276
	sub.s r4, r4, r5
	loadli.w r5,  -1504(r30)                # 4-byte Folded Reload
	div.s r4, r4, r13
	addli r13, zero, 0
	mod.s r5, r5, r2
	zext_int2long r[6:7], r4
	slli r3, r4, 7
	slli r18, r5, 16
	sll.d r[6:7], r[6:7], r14
	storeli.w r3, -1552(r30)                # 4-byte Folded Spill
	.loc	1 73 26 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	load.d r[3:4], 8(r30)
	sll.d r[6:7], r[6:7], r17
	add.ul r[4:5], r[3:4], r[6:7]
	store.d r[6:7], -1544(r30)              # 8-byte Folded Spill
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	addli r6, zero, 9
	xwait r22, 0
	xwait r6, 0
	lock zero, zero
	ds_cfg r2, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r17, r3, r25, 2
	unlock zero
	xsignal r14, 0
	xsignal r27, 0
	.loc	1 73 26                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	addli r23, r23, 1
	beq r23, r16, .LBB0_28
.LBB0_18:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	addli r13, r13, 1
	addli r26, r28, 0
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 86 20                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:86:20
	mod.s r3, r8, r20
	.loc	1 89 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	mod.s r6, r9, r19
	addli r28, r26, 1
	addli r9, r9, 1
	.loc	1 86 20                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:86:20
	addli r8, r8, 1
	slli r3, r3, 13
	.loc	1 89 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	slli r17, r6, 13
	.loc	1 86 20                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:86:20
	add.s r3, r3, r21
	beq r15, r14, .LBB0_17
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:20
	bneq r15, r22, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:86:25
	zext_int2long r[6:7], r23
	.loc	1 86 20                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:86:20
	addli r17, zero, 16
	xwait r14, 0
	lock zero, r16
	dma_cfg r12, r12, zero, 0
	sll.d r[6:7], r[6:7], r17
	add.ul r[6:7], r[4:5], r[6:7]
	dma_cfg zero, r7, zero, 2
	dma_cfg r3, r6, r1, 3
	addli r3, zero, 2048
	dma_cfg r1, r3, r25, 4
	dma_run zero
	unlock r16
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	addli r23, r23, 1
	bneq r23, r16, .LBB0_18
	j .LBB0_28
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	bneq r15, r16, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:0
	addli r3, zero, 96
	.loc	1 89 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	xwait r16, 0
	xwait r27, 0
	addli r27, zero, 1
	addli r6, zero, 0
	.loc	1 0 0                           # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:0
	mod.s r3, r26, r3
	slli r26, r3, 13
	addli r3, zero, 1
	.loc	1 89 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	beq r13, zero, .LBB0_25
.LBB0_24:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r7, r6, 12
	slli r6, r6, 8
	lock zero, r3
	mm_cfg r11, r25, r24, 0
	or r7, r7, r17
	or r6, r6, r18
	mm_cfg r3, r16, r3, 2
	mm_acc r6, r26, r7, 5
	andi r7, r27, 1
	addli r6, zero, 1
	addli r27, zero, 0
	unlock r3
	bneq r7, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r7, r6, 12
	slli r6, r6, 8
	lock zero, r3
	mm_cfg r11, r25, r24, 0
	or r7, r7, r17
	or r6, r6, r18
	mm_cfg r3, r16, r3, 2
	mm r6, r26, r7, 5
	andi r7, r27, 1
	addli r6, zero, 1
	addli r27, zero, 0
	unlock r3
	bneq r7, zero, .LBB0_25
.LBB0_26:                               # %.thread6.thread94
                                        #   in Loop: Header=BB0_19 Depth=2
	addli r3, zero, 5
	.loc	1 73 26 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	addli r23, r23, 1
	addli r27, zero, 8
	.loc	1 89 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	bneq r23, r16, .LBB0_18
	j .LBB0_35
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	addli r23, r23, 1
	bneq r23, r16, .LBB0_18
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:26
	loadli.w r21,  -1512(r30)               # 4-byte Folded Reload
	.loc	1 86 20 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:86:20
	addli r21, r21, 4
	.loc	1 73 26                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	beq r15, r16, .LBB0_36
	j .LBB0_6
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:26
	load.d r[4:5], -1528(r30)               # 8-byte Folded Reload
	addli r3, zero, 14
	loadli.w r21,  -1512(r30)               # 4-byte Folded Reload
	store.d r[17:18], -1520(r30)            # 8-byte Folded Spill
	addli r19, zero, 256
	addli r1, zero, 57
	sll.d r[17:18], r[4:5], r3
	addli r4, zero, 0
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	add.s r3, r21, r4
	.loc	1 81 25 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:81:25
	srl.d r[12:13], r[27:28], r14
	.loc	1 81 20 is_stmt 0               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:81:20
	sll.d r[5:6], r[5:6], r23
	xwait r10, 0
	lock zero, r16
	.loc	1 73 26 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	addli r4, r4, 1
	.loc	1 81 20                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:81:20
	dma_cfg r23, r23, zero, 0
	.loc	1 81 0 is_stmt 0                # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:81:0
	mod.s r3, r3, r1
	.loc	1 81 20                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:81:20
	sub.s r7, r24, r12
	load.d r[12:13], 0(r30)
	add.ul r[5:6], r[12:13], r[5:6]
	dma_cfg zero, r6, zero, 2
	.loc	1 81 0                          # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:81:0
	slli r3, r3, 14
	add.s r3, r3, r15
	.loc	1 81 20                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:81:20
	dma_cfg r3, r5, r11, 3
	dma_cfg r24, r19, r7, 4
	dma_run zero
	unlock r16
	xsignal r2, 0
	.loc	1 73 26 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	beq r4, r16, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:86:25
	zext_int2long r[5:6], r4
	addli r3, zero, 5
	sll.d r[27:28], r[5:6], r3
	addli r3, zero, 16383
	.loc	1 81 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:81:25
	add.ul r[5:6], r[27:28], r[17:18]
	zext_int2long r[12:13], r3
	setlt.ul r3, r[12:13], r[5:6]
	bneq r3, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:25
	addli.d r[27:28], r[5:6], 0
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r12,  32(r30)
	load.d r[17:18], -1520(r30)             # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	addli r28, r26, 4
	addli r9, r9, 4
	addli r8, r8, 4
	.loc	1 89 25                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:89:25
	add.s r21, r21, r4
	addli r27, zero, 8
	addli r1, zero, 256
	addli r19, zero, 160
	.loc	1 73 26                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	core_id r15
	j .LBB0_37
.LBB0_34:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:101:67
	loadli.w r2,  -1552(r30)                # 4-byte Folded Reload
	addli r5, zero, 896
	sext_int2long r[12:13], r10
	zext_int2long r[26:27], zero
	addli r7, zero, 10
	zext_int2long r[5:6], r5
	min.sl r[26:27], r[12:13], r[26:27]
	zext_int2long r[3:4], r2
	addli.d r[26:27], r[26:27], 128
	min.ul r[5:6], r[3:4], r[5:6]
	max.sl r[26:27], r[26:27], r[12:13]
	addli.d r[5:6], r[5:6], 128
	max.ul r[5:6], r[5:6], r[3:4]
	sub.sl r[3:4], r[5:6], r[3:4]
	zext_int2long r[5:6], r24
	min.ul r[2:3], r[3:4], r[5:6]
	store.d r[2:3], -1512(r30)              # 8-byte Folded Spill
	addli r2, r21, 0
	load.d r[20:21], -1528(r30)             # 8-byte Folded Reload
	addli r3, zero, 18
	sll.d r[3:4], r[20:21], r3
	addli r21, r2, 0
	store.d r[3:4], -1528(r30)              # 8-byte Folded Spill
	sub.sl r[2:3], r[26:27], r[12:13]
	addli r27, zero, 8
	load.d r[12:13], -1528(r30)             # 8-byte Folded Reload
	store.d r[2:3], -1552(r30)              # 8-byte Folded Spill
	load.d r[3:4], 16(r30)
	addli r2, zero, 5
	add.ul r[3:4], r[3:4], r[12:13]
	load.d r[12:13], -1552(r30)             # 8-byte Folded Reload
	min.sl r[5:6], r[12:13], r[5:6]
	loadli.w r12,  32(r30)
	addli r20, r12, 0
	load.d r[12:13], -1544(r30)             # 8-byte Folded Reload
	xwait r7, 0
	lock zero, r2
	dma_cfg r23, zero, zero, 0
	dma_cfg zero, r23, zero, 1
	add.ul r[3:4], r[3:4], r[12:13]
	load.d r[12:13], -1512(r30)             # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r7, r12, 2
	dma_cfg r3, r18, r7, 3
	addli r3, zero, 512
	addli r4, zero, 2048
	dma_cfg r4, r3, r5, 4
	addli r3, zero, 11
	dma_run zero
	unlock r2
	xsignal r3, 0
	j .LBB0_7
.LBB0_35:                               # %.split17.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:67
	loadli.w r21,  -1512(r30)               # 4-byte Folded Reload
	.loc	1 86 20 is_stmt 1               # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:86:20
	addli r21, r21, 4
.LBB0_36:                               # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:73:26
	addli r3, zero, 10
	loadli.w r12,  32(r30)
	addli r23, zero, 1
	xsignal r3, 0
	load.d r[17:18], -1520(r30)             # 8-byte Folded Reload
.LBB0_37:                               # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:26
	addli r20, r12, 0
	j .LBB0_8
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:22:0
	xsignal zero, 0
	bneq r15, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py:22:0
	addli sp, sp, 1552
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
	.long	1616                            # 0x650
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
.asciz	"cgu7jx7n7gl7v3tjrbyafar2mbj75qh5bbgfpevg2ox2upgwdqst.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/gu" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
