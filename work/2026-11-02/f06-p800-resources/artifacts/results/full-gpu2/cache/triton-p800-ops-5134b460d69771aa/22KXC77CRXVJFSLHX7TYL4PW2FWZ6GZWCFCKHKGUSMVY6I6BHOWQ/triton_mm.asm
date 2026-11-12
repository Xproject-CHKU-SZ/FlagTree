	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/7k" "c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py"
	.loc	1 22 0                          # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1040
	addli r30, sp, 976
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	core_id r2
	loadli.w r19,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:0:26
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
	storeli.w zero, -516(r30)
	storeli.w zero, -712(r30)
	storeli.w zero, -908(r30)
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
	sext_int2long r[3:4], r3
	sext_int2long r[17:18], r1
	loadli.w r27,  -192(r30)
	loadli.w r6,  -712(r30)
	loadli.w r24,  -908(r30)
	loadli.w r1,  -516(r30)
	addli r9, zero, 256
	addli r10, zero, 32
	addli r28, zero, 8
	addli r12, zero, 6
	addli r15, zero, 3
	addli r14, zero, 4
	addli r16, zero, 2
	addli r13, zero, 48
	addli r22, zero, 47
	addli r21, zero, 7
	addli r23, zero, 64
	addli r20, zero, 5
	lui r25, 12
	addli r26, zero, 0
	store.d r[3:4], -952(r30)               # 8-byte Folded Spill
	lui r3, 15
	ori r5, r3, 4095
	lui r3, 1023
	lui r4, 1047552
	ori r3, r3, 4095
	store.d r[4:5], -976(r30)               # 8-byte Folded Spill
	storeli.w r3, -924(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split18.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:86:20
	addli r6, r6, 32
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	addli r3, zero, 10
	loadli.w r19,  28(r30)
	.loc	1 101 67                        # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:101:67
	addli r1, r25, 1
	addli r27, r15, 1
	addli r28, zero, 8
	addli r24, r11, 1
	addli r15, zero, 3
	addli r13, zero, 48
	addli r20, zero, 5
	lui r25, 12
	.loc	1 73 26                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	xsignal r3, 0
	load.d r[17:18], -936(r30)              # 8-byte Folded Reload
	loadli.w r26,  -928(r30)                # 4-byte Folded Reload
.LBB0_7:                                # %.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:0:26
	load.d r[3:4], -952(r30)                # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 1
	addli r26, r26, 1
	setlt.sl r3, r[17:18], r[3:4]
	beq r3, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	loadli.w r3,  32(r30)
	div.s r3, r17, r3
	div.s r7, r3, r19
	.loc	1 53 22 is_stmt 1               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:53:22
	div.s r8, r7, r9
	.loc	1 54 41                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:54:41
	slli r3, r8, 3
	.loc	1 54 30 is_stmt 0               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:54:30
	sub.s r4, r10, r3
	.loc	1 54 50                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:54:50
	min.s r11, r4, r28
	.loc	1 55 40 is_stmt 1               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:55:40
	mod.s r4, r7, r11
	.loc	1 55 34 is_stmt 0               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:55:34
	add.s r5, r3, r4
	.loc	1 95 15 is_stmt 1               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:95:15
	zext_int2long r[3:4], r5
	store.d r[3:4], -944(r30)               # 8-byte Folded Spill
	addli r3, zero, 1984
	zext_int2long r[3:4], r3
	.loc	1 73 26                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	store.d r[3:4], -920(r30)               # 8-byte Folded Spill
	bneq r2, r14, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:0:26
	addli r3, zero, 1
	beq r2, r3, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r16, .LBB0_15
# %bb.12:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 0
.LBB0_13:                               # %.thread.us23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	add.s r4, r6, r3
	add.s r5, r24, r3
	xwait r16, 0
	xwait r20, 0
	lock zero, zero
	.loc	1 73 26                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	ds_cfg r16, zero, 0
	.loc	1 81 20                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:20
	mod.s r4, r4, r13
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	mod.s r5, r5, r13
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:20
	slli r4, r4, 14
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	slli r5, r5, 14
	.loc	1 81 20                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:20
	add.s r4, r4, r25
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	shuffle_batch r5, r4, r23, 1
	unlock zero
	xsignal r15, 0
	xsignal r14, 0
	bneq r3, r10, .LBB0_13
# %bb.14:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	addli r1, r1, 32
	addli r27, r27, 32
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	add.s r24, r24, r3
	add.s r6, r6, r3
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:0:25
	slli r8, r8, 8
	slli r3, r5, 6
	store.d r[17:18], -936(r30)             # 8-byte Folded Spill
	storeli.w r26, -928(r30)                # 4-byte Folded Spill
	addli r19, zero, 5
	addli r20, zero, 48
	addli r13, zero, 0
	addli r28, zero, 0
	sub.s r7, r7, r8
	mod.s r8, r26, r15
	storeli.w r3, -964(r30)                 # 4-byte Folded Spill
	div.s r7, r7, r11
	zext_int2long r[17:18], r7
	slli r3, r7, 6
	sll.d r[17:18], r[17:18], r12
	.loc	1 73 26 is_stmt 1               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	storeli.w r3, -968(r30)                 # 4-byte Folded Spill
	load.d r[3:4], 8(r30)
	sll.d r[25:26], r[17:18], r16
	slli r17, r8, 14
	addli r18, zero, 8
	add.ul r[7:8], r[3:4], r[25:26]
	store.d r[25:26], -960(r30)             # 8-byte Folded Spill
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	addli r3, zero, 9
	xwait r12, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r16, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r26, r5, r23, 2
	unlock zero
	xsignal r21, 0
	xsignal r18, 0
	.loc	1 73 26                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	addli r13, r13, 1
	bneq r13, r10, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	add.s r15, r27, r28
	add.s r25, r1, r28
	addli r4, zero, 80
	add.s r11, r24, r28
	.loc	1 86 20                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:86:20
	mod.s r3, r15, r22
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	mod.s r4, r25, r4
	slli r26, r4, 14
	.loc	1 86 20                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:86:20
	slli r3, r3, 14
	lui r4, 204
	add.s r5, r3, r4
	beq r2, r21, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:0:20
	bneq r2, r12, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:86:25
	zext_int2long r[3:4], r13
	.loc	1 86 20                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:86:20
	addli r26, zero, 19
	xwait r21, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	sll.d r[3:4], r[3:4], r26
	add.ul r[3:4], r[7:8], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r5, r3, r9, 3
	addli r3, zero, 8192
	dma_cfg r9, r3, r23, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	addli r13, r13, 1
	bneq r13, r10, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	bneq r2, r14, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:0:0
	mod.s r3, r11, r20
	addli r4, zero, 1
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	xwait r14, 0
	xwait r18, 0
	lock zero, r4
	mm_cfg r23, r23, r23, 0
	mm_cfg r14, r16, r4, 2
	.loc	1 0 0                           # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:0:0
	slli r5, r3, 14
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	beq r28, zero, .LBB0_24
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc r17, r5, r26, 8
	j .LBB0_25
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	addli r13, r13, 1
	bneq r13, r10, .LBB0_26
	j .LBB0_33
.LBB0_24:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	mm r17, r5, r26, 8
.LBB0_25:                               # %.thread6.thread91
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r3, zero, 1
	.loc	1 73 26                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	addli r13, r13, 1
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	unlock r3
	addli r3, zero, 9
	xsignal r19, 0
	xsignal r3, 0
	.loc	1 73 26                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	beq r13, r10, .LBB0_5
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	addli r28, r28, 1
	j .LBB0_17
.LBB0_27:                               # %.split18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:86:20
	addli r6, r6, 32
	.loc	1 73 26                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	beq r2, r14, .LBB0_6
	j .LBB0_34
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:0:26
	load.d r[4:5], -944(r30)                # 8-byte Folded Reload
	addli r3, zero, 17
	addli r13, zero, 48
	addli r11, zero, 0
	storeli.w r26, -928(r30)                # 4-byte Folded Spill
	store.d r[17:18], -936(r30)             # 8-byte Folded Spill
	sll.d r[7:8], r[4:5], r3
	load.d r[3:4], -976(r30)                # 8-byte Folded Reload
	and.d r[19:20], r[7:8], r[3:4]
	j .LBB0_30
.LBB0_29:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	addli r3, zero, 2048
	.loc	1 81 25 is_stmt 1               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:25
	sub.sl r[25:26], r[17:18], r[25:26]
	.loc	1 81 20 is_stmt 0               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:20
	sll.d r[17:18], r[17:18], r16
	.loc	1 0 0                           # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:0:0
	add.s r5, r6, r11
	.loc	1 81 20                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:20
	xwait r15, 0
	lock zero, r14
	.loc	1 73 26 is_stmt 1               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	addli r11, r11, 1
	.loc	1 81 20                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:20
	dma_cfg zero, zero, zero, 0
	zext_int2long r[3:4], r3
	.loc	1 81 0 is_stmt 0                # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:0
	mod.s r5, r5, r13
	.loc	1 81 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:25
	div.sl r[3:4], r[25:26], r[3:4]
	.loc	1 81 20                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:20
	load.d r[25:26], 0(r30)
	add.ul r[17:18], r[25:26], r[17:18]
	.loc	1 81 0                          # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:0
	slli r5, r5, 14
	.loc	1 81 20                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:20
	dma_cfg zero, r18, zero, 2
	.loc	1 81 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:25
	load.d r[25:26], -920(r30)              # 8-byte Folded Reload
	min.sl r[25:26], r[3:4], r[25:26]
	sub.sl r[3:4], r[25:26], r[3:4]
	lui r25, 12
	.loc	1 81 0                          # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:0
	add.s r5, r5, r25
	.loc	1 81 20                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:20
	addli r3, r3, 64
	addli r4, zero, 8192
	dma_cfg r5, r17, r9, 3
	dma_cfg r9, r4, r3, 4
	dma_run zero
	unlock r14
	xsignal r16, 0
	.loc	1 73 26 is_stmt 1               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	beq r11, r10, .LBB0_32
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:86:25
	zext_int2long r[17:18], r11
	loadli.w r3,  -924(r30)                 # 4-byte Folded Reload
	sll.d r[17:18], r[17:18], r12
	zext_int2long r[25:26], r3
	.loc	1 81 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:81:25
	add.ul r[17:18], r[17:18], r[7:8]
	setlt.ul r5, r[25:26], r[17:18]
	addli.d r[25:26], r[19:20], 0
	bneq r5, zero, .LBB0_29
# %bb.31:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 0 25 is_stmt 0                # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:0:25
	zext_int2long r[25:26], zero
	j .LBB0_29
.LBB0_32:                               # %.split18.us
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r19,  28(r30)
	load.d r[17:18], -936(r30)              # 8-byte Folded Reload
	loadli.w r26,  -928(r30)                # 4-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:73:26
	addli r24, r24, 32
	addli r1, r1, 32
	addli r27, r27, 32
	.loc	1 89 25                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:89:25
	add.s r6, r6, r11
	addli r13, zero, 48
	addli r20, zero, 5
	.loc	1 101 67                        # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:101:67
	j .LBB0_7
.LBB0_33:                               # %.split18.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:86:20
	addli r6, r6, 32
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:0:20
	loadli.w r26,  -928(r30)                # 4-byte Folded Reload
	addli r28, zero, 8
	.loc	1 101 67 is_stmt 1              # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:101:67
	addli r24, r11, 1
	addli r1, r25, 1
	addli r27, r15, 1
	addli r13, zero, 48
	addli r20, zero, 5
	beq r2, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:0:67
	load.d r[17:18], -936(r30)              # 8-byte Folded Reload
	loadli.w r19,  28(r30)
	addli r15, zero, 3
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:101:67
	loadli.w r3,  -968(r30)                 # 4-byte Folded Reload
	load.d r[25:26], -920(r30)              # 8-byte Folded Reload
	loadli.w r5,  -964(r30)                 # 4-byte Folded Reload
	addli r15, zero, 3
	zext_int2long r[3:4], r3
	sext_int2long r[18:19], r5
	min.ul r[7:8], r[3:4], r[25:26]
	min.sl r[25:26], r[18:19], r[25:26]
	addli.d r[7:8], r[7:8], 64
	addli.d r[25:26], r[25:26], 64
	max.ul r[7:8], r[7:8], r[3:4]
	max.sl r[25:26], r[25:26], r[18:19]
	sub.sl r[3:4], r[7:8], r[3:4]
	zext_int2long r[7:8], r23
	sub.sl r[18:19], r[25:26], r[18:19]
	load.d r[25:26], 16(r30)
	min.ul r[3:4], r[3:4], r[7:8]
	min.sl r[7:8], r[18:19], r[7:8]
	loadli.w r19,  28(r30)
	store.d r[3:4], -920(r30)               # 8-byte Folded Spill
	load.d r[4:5], -944(r30)                # 8-byte Folded Reload
	addli r3, zero, 19
	store.d r[7:8], -944(r30)               # 8-byte Folded Spill
	sll.d r[3:4], r[4:5], r3
	addli r5, r19, 0
	load.d r[18:19], -960(r30)              # 8-byte Folded Reload
	add.ul r[3:4], r[25:26], r[3:4]
	loadli.w r26,  -928(r30)                # 4-byte Folded Reload
	add.ul r[3:4], r[3:4], r[18:19]
	addli r19, r5, 0
	addli r5, zero, 10
	xwait r5, 0
	lock zero, r20
	addli r5, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r5, zero, 1
	load.d r[7:8], -920(r30)                # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r5, r7, 2
	dma_cfg r3, r17, r5, 3
	addli r3, zero, 8192
	load.d r[4:5], -944(r30)                # 8-byte Folded Reload
	dma_cfg r3, r9, r4, 4
	addli r3, zero, 11
	dma_run zero
	unlock r20
	xsignal r3, 0
	load.d r[17:18], -936(r30)              # 8-byte Folded Reload
.LBB0_37:                               # %.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67                          # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:0:67
	lui r25, 12
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:22:0
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
	.loc	1 22 0 epilogue_begin           # c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py:22:0
	addli sp, sp, 976
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
	.long	1040                            # 0x410
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
.asciz	"c7khwu5tf66up2bfwfgw2fwsccggwpl7llhbriwwsn5tq3s4lrlx.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/7k" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
