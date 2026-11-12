	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu2/cache/inductor/tr" "ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py"
	.loc	1 22 0                          # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1360
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	core_id r2
	addli r30, sp, 1296
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -192(r30)
	storeli.w zero, -836(r30)
	storeli.w zero, -1032(r30)
	storeli.w zero, -1228(r30)
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
	ble.s r3, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[10:11], r1
	loadli.w r27,  -192(r30)
	loadli.w r6,  -1032(r30)
	loadli.w r24,  -1228(r30)
	loadli.w r1,  -836(r30)
	addli r12, zero, 5
	addli r13, zero, 4
	addli r15, zero, 1
	addli r14, zero, 48
	addli r22, zero, 160
	addli r19, zero, 47
	addli r20, zero, 7
	addli r21, zero, 6
	addli r23, zero, 3
	addli r25, zero, 64
	addli r26, zero, 128
	addli r28, zero, 16
	lui r16, 10
	addli r17, zero, 2
	storeli.w zero, -1248(r30)              # 4-byte Folded Spill
	store.d r[3:4], -1272(r30)              # 8-byte Folded Spill
	lui r3, 15
	ori r5, r3, 4095
	lui r3, 1023
	lui r4, 1047552
	ori r3, r3, 4095
	store.d r[4:5], -1296(r30)              # 8-byte Folded Spill
	storeli.w r3, -1244(r30)                # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split18.thread93
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:86:20
	addli r6, r6, 16
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	addli r3, zero, 10
	.loc	1 101 67                        # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:101:67
	addli r1, r10, 1
	addli r24, r14, 1
	addli r27, r5, 1
	addli r12, zero, 5
	addli r14, zero, 48
	lui r16, 10
	.loc	1 73 26                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	xsignal r3, 0
	load.d r[10:11], -1256(r30)             # 8-byte Folded Reload
.LBB0_7:                                # %.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:0:26
	addli r17, zero, 2
.LBB0_8:                                # %.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -1272(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 1
	setlt.sl r3, r[10:11], r[3:4]
	loadli.w r4,  -1248(r30)                # 4-byte Folded Reload
	addli r4, r4, 1
	storeli.w r4, -1248(r30)                # 4-byte Folded Spill
	beq r3, zero, .LBB0_39
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r3,  32(r30)
	loadli.w r4,  28(r30)
	.loc	1 54 50 is_stmt 1               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:54:50
	addli r5, zero, 8
	div.s r3, r10, r3
	div.s r7, r3, r4
	.loc	1 53 22                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:53:22
	addli r3, zero, 512
	.loc	1 54 30                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:54:30
	addli r4, zero, 32
	.loc	1 53 22                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:53:22
	div.s r8, r7, r3
	.loc	1 54 41                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:54:41
	slli r3, r8, 3
	.loc	1 54 30 is_stmt 0               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:54:30
	sub.s r4, r4, r3
	.loc	1 54 50                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:54:50
	min.s r9, r4, r5
	.loc	1 55 40 is_stmt 1               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:55:40
	mod.s r4, r7, r9
	.loc	1 55 34 is_stmt 0               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:55:34
	add.s r5, r3, r4
	.loc	1 95 15 is_stmt 1               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:95:15
	zext_int2long r[3:4], r5
	store.d r[3:4], -1264(r30)              # 8-byte Folded Spill
	addli r3, zero, 1984
	zext_int2long r[3:4], r3
	.loc	1 73 26                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	store.d r[3:4], -1240(r30)              # 8-byte Folded Spill
	bneq r2, r13, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r14, zero, 11
	xwait r14, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:0:26
	beq r2, r15, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r17, .LBB0_16
# %bb.13:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 0
.LBB0_14:                               # %.thread.us23
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	add.s r4, r6, r3
	add.s r5, r24, r3
	xwait r17, 0
	xwait r12, 0
	lock zero, zero
	.loc	1 73 26                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	ds_cfg r23, zero, 0
	.loc	1 81 20                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:20
	mod.s r4, r4, r14
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	mod.s r5, r5, r14
	ds_cfg r26, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r25, zero, 13
	.loc	1 81 20                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:20
	slli r4, r4, 14
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	slli r5, r5, 14
	.loc	1 81 20                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:20
	add.s r4, r4, r16
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	shuffle_batch r5, r4, r26, 1
	unlock zero
	xsignal r23, 0
	xsignal r13, 0
	bneq r3, r28, .LBB0_14
# %bb.15:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	addli r1, r1, 16
	addli r27, r27, 16
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	add.s r24, r24, r3
	add.s r6, r6, r3
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:0:25
	slli r8, r8, 9
	loadli.w r3,  -1248(r30)                # 4-byte Folded Reload
	store.d r[10:11], -1256(r30)            # 8-byte Folded Spill
	addli r11, zero, 0
	sub.s r7, r7, r8
	mod.s r8, r3, r12
	slli r3, r5, 6
	div.s r7, r7, r9
	storeli.w r3, -1280(r30)                # 4-byte Folded Spill
	slli r17, r8, 13
	zext_int2long r[9:10], r7
	slli r3, r7, 5
	.loc	1 73 26 is_stmt 1               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	load.d r[7:8], 8(r30)
	sll.d r[9:10], r[9:10], r12
	storeli.w r3, -1284(r30)                # 4-byte Folded Spill
	sll.d r[3:4], r[9:10], r15
	addli r9, zero, 0
	add.ul r[7:8], r[7:8], r[3:4]
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	addli r18, zero, 9
	xwait r21, 0
	xwait r18, 0
	lock zero, zero
	addli r18, zero, 32
	ds_cfg r23, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r18, zero, 13
	shuffle_coa r12, r16, r26, 2
	addli r12, zero, 8
	unlock zero
	xsignal r20, 0
	xsignal r12, 0
	.loc	1 73 26                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	addli r11, r11, 1
	bneq r11, r28, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	add.s r5, r27, r9
	add.s r10, r1, r9
	add.s r14, r24, r9
	.loc	1 86 20                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:86:20
	mod.s r12, r5, r19
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	mod.s r16, r10, r22
	.loc	1 86 20                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:86:20
	slli r18, r12, 14
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	slli r12, r16, 13
	.loc	1 86 20                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:86:20
	lui r16, 202
	add.s r16, r18, r16
	beq r2, r20, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:0:20
	bneq r2, r21, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:86:25
	zext_int2long r[18:19], r11
	.loc	1 86 20                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:86:20
	addli r12, zero, 19
	xwait r20, 0
	lock zero, r13
	dma_cfg r15, r15, zero, 0
	sll.d r[18:19], r[18:19], r12
	addli r12, zero, 4096
	add.ul r[18:19], r[7:8], r[18:19]
	dma_cfg zero, r19, zero, 2
	dma_cfg r16, r18, r25, 3
	addli r19, zero, 47
	dma_cfg r26, r12, r26, 4
	dma_run zero
	unlock r13
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	addli r11, r11, 1
	bneq r11, r28, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	bneq r2, r13, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:0:0
	addli r16, zero, 48
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	addli r18, zero, 8
	xwait r13, 0
	.loc	1 0 0                           # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:0:0
	mod.s r16, r14, r16
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	xwait r18, 0
	addli r18, zero, 32
	lock zero, r15
	mm_cfg r18, r26, r25, 0
	mm_cfg r13, r15, r15, 2
	.loc	1 0 0                           # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:0:0
	slli r16, r16, 14
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	beq r9, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r17, r16, r12, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	addli r11, r11, 1
	bneq r11, r28, .LBB0_27
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	mm r17, r16, r12, 5
.LBB0_26:                               # %.thread6.thread91
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r12, zero, 5
	unlock r15
	.loc	1 73 26                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	addli r11, r11, 1
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	xsignal r12, 0
	addli r12, zero, 9
	xsignal r12, 0
	.loc	1 73 26                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	beq r11, r28, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	addli r9, r9, 1
	j .LBB0_18
.LBB0_28:                               # %.split18
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:86:20
	addli r6, r6, 16
	.loc	1 73 26                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	beq r2, r13, .LBB0_6
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:0:26
	load.d r[7:8], -1264(r30)               # 8-byte Folded Reload
	addli r5, zero, 17
	store.d r[10:11], -1256(r30)            # 8-byte Folded Spill
	load.d r[9:10], -1296(r30)              # 8-byte Folded Reload
	addli r25, zero, 3
	addli r23, zero, 2
	lui r3, 10
	addli r22, zero, 48
	addli r4, zero, 2048
	sll.d r[7:8], r[7:8], r5
	addli r5, zero, 0
	and.d r[16:17], r[7:8], r[9:10]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 81 25 is_stmt 1               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:25
	sub.sl r[9:10], r[11:12], r[9:10]
	zext_int2long r[18:19], r4
	.loc	1 81 20 is_stmt 0               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:20
	sll.d r[11:12], r[11:12], r15
	.loc	1 0 0                           # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:0:0
	add.s r14, r6, r5
	.loc	1 81 20                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:20
	xwait r25, 0
	lock zero, r13
	.loc	1 73 26 is_stmt 1               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	addli r5, r5, 1
	.loc	1 81 20                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:20
	dma_cfg r15, r15, zero, 0
	.loc	1 81 25 is_stmt 0               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:25
	div.sl r[9:10], r[9:10], r[18:19]
	.loc	1 81 20                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:20
	load.d r[18:19], 0(r30)
	.loc	1 81 0                          # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:0
	mod.s r14, r14, r22
	.loc	1 81 20                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:20
	add.ul r[11:12], r[18:19], r[11:12]
	dma_cfg zero, r12, zero, 2
	.loc	1 81 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:25
	load.d r[18:19], -1240(r30)             # 8-byte Folded Reload
	.loc	1 81 0                          # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:0
	slli r14, r14, 14
	add.s r14, r14, r3
	.loc	1 81 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:25
	min.sl r[18:19], r[9:10], r[18:19]
	sub.sl r[9:10], r[18:19], r[9:10]
	addli r18, zero, 256
	.loc	1 81 20                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:20
	addli r9, r9, 64
	addli r10, zero, 4096
	dma_cfg r14, r11, r18, 3
	dma_cfg r18, r10, r9, 4
	dma_run zero
	unlock r13
	xsignal r23, 0
	.loc	1 73 26 is_stmt 1               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	beq r5, r28, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:86:25
	zext_int2long r[9:10], r5
	sll.d r[9:10], r[9:10], r20
	.loc	1 81 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:81:25
	add.ul r[11:12], r[9:10], r[7:8]
	loadli.w r9,  -1244(r30)                # 4-byte Folded Reload
	zext_int2long r[9:10], r9
	setlt.ul r14, r[9:10], r[11:12]
	addli.d r[9:10], r[16:17], 0
	bneq r14, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:0:25
	zext_int2long r[9:10], zero
	j .LBB0_30
.LBB0_33:                               # %.split18.us
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[10:11], -1256(r30)             # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:73:26
	addli r24, r24, 16
	addli r1, r1, 16
	addli r27, r27, 16
	.loc	1 89 25                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:89:25
	add.s r6, r6, r5
	addli r12, zero, 5
	addli r14, zero, 48
	addli r22, zero, 160
	addli r19, zero, 47
	lui r16, 10
	addli r17, zero, 2
	addli r23, zero, 3
	addli r25, zero, 64
	j .LBB0_8
.LBB0_34:                               # %.split18.thread90
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:86:20
	addli r6, r6, 16
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:101:67
	addli r24, r14, 1
	addli r1, r10, 1
	addli r27, r5, 1
	lui r16, 10
	beq r2, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:0:67
	load.d r[10:11], -1256(r30)             # 8-byte Folded Reload
	addli r12, zero, 5
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:101:67
	loadli.w r5,  -1284(r30)                # 4-byte Folded Reload
	zext_int2long r[7:8], r5
	addli r5, zero, 2016
	zext_int2long r[9:10], r5
	loadli.w r5,  -1280(r30)                # 4-byte Folded Reload
	store.d r[3:4], -1280(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1240(r30)               # 8-byte Folded Reload
	min.ul r[9:10], r[7:8], r[9:10]
	sext_int2long r[11:12], r5
	addli r5, zero, 32
	addli.d r[9:10], r[9:10], 32
	min.sl r[3:4], r[11:12], r[3:4]
	max.ul r[9:10], r[9:10], r[7:8]
	addli.d r[3:4], r[3:4], 64
	sub.sl r[7:8], r[9:10], r[7:8]
	zext_int2long r[9:10], r5
	addli r5, zero, 18
	max.sl r[3:4], r[3:4], r[11:12]
	min.ul r[7:8], r[7:8], r[9:10]
	sub.sl r[3:4], r[3:4], r[11:12]
	zext_int2long r[11:12], r25
	store.d r[7:8], -1240(r30)              # 8-byte Folded Spill
	load.d r[7:8], -1264(r30)               # 8-byte Folded Reload
	min.sl r[3:4], r[3:4], r[11:12]
	addli r12, zero, 5
	sll.d r[9:10], r[7:8], r5
	load.d r[7:8], 16(r30)
	addli r5, zero, 10
	add.ul r[9:10], r[7:8], r[9:10]
	load.d r[7:8], -1280(r30)               # 8-byte Folded Reload
	xwait r5, 0
	lock zero, r12
	dma_cfg r15, zero, zero, 0
	dma_cfg zero, r15, zero, 1
	add.ul r[9:10], r[9:10], r[7:8]
	load.d r[7:8], -1240(r30)               # 8-byte Folded Reload
	dma_cfg r10, zero, zero, 2
	slli r5, r7, 2
	dma_cfg r9, r17, r5, 3
	addli r5, zero, 4096
	dma_cfg r5, r26, r3, 4
	addli r3, zero, 11
	dma_run zero
	unlock r12
	xsignal r3, 0
	load.d r[10:11], -1256(r30)             # 8-byte Folded Reload
.LBB0_38:                               # %.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67                          # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:0:67
	addli r14, zero, 48
	j .LBB0_7
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:22:0
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
.LBB0_41:
	.loc	1 22 0 epilogue_begin           # ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py:22:0
	addli sp, sp, 1296
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
	.long	1360                            # 0x550
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
.asciz	"ctrqojgovr4fahltwhlxz23zrcpu23jjoko2jiliszbdbf7skppr.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu2/cache/inductor/tr" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
