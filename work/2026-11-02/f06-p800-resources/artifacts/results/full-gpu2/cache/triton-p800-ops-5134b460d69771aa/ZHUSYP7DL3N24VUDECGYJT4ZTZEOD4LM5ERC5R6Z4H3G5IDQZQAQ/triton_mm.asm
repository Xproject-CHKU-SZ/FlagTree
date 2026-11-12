	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/ri" "criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py"
	.loc	1 22 0                          # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1344
	addli r30, sp, 1280
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:73:26
	core_id r2
	loadli.w r19,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -248(r30)
	storeli.w zero, -572(r30)
	storeli.w zero, -824(r30)
	storeli.w zero, -1212(r30)
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
	ble.s r3, r1, .LBB0_37
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	loadli.w r8,  -248(r30)
	loadli.w r9,  -572(r30)
	loadli.w r10,  -824(r30)
	loadli.w r27,  -1212(r30)
	sext_int2long r[5:6], r1
	addli r11, zero, 64
	addli r12, zero, 2
	addli r20, zero, 8
	addli r15, zero, 3
	addli r16, zero, 4
	addli r28, zero, 96
	lui r21, 148
	addli r22, zero, 6
	addli r24, zero, 128
	lui r17, 24
	addli r23, zero, 0
	store.d r[3:4], -1232(r30)              # 8-byte Folded Spill
	addli r4, zero, 4095
	lui r3, 1048572
	store.d r[3:4], -1280(r30)              # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split17.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:86:20
	addli r10, r10, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:73:26
	addli r1, zero, 10
	lui r17, 24
	addli r23, r25, 0
	xsignal r1, 0
	load.d r[5:6], -1224(r30)               # 8-byte Folded Reload
.LBB0_7:                                # %.thread92
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:0:26
	load.d r[3:4], -1232(r30)               # 8-byte Folded Reload
	addli.d r[5:6], r[5:6], 1
	addli r23, r23, 1
	addli r27, r18, 0
	setlt.sl r1, r[5:6], r[3:4]
	beq r1, zero, .LBB0_37
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	loadli.w r1,  32(r30)
	store.d r[5:6], -1224(r30)              # 8-byte Folded Spill
	zext_int2long r[13:14], r24
	div.s r1, r5, r1
	div.s r1, r1, r19
	.loc	1 53 22 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:53:22
	div.s r6, r1, r11
	.loc	1 54 41                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:54:41
	slli r3, r6, 3
	.loc	1 54 30 is_stmt 0               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:54:30
	sub.s r4, r12, r3
	.loc	1 54 50                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:54:50
	min.s r7, r4, r20
	.loc	1 55 40 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:55:40
	mod.s r4, r1, r7
	.loc	1 55 34 is_stmt 0               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:55:34
	add.s r5, r3, r4
	.loc	1 95 15 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:95:15
	zext_int2long r[25:26], r5
	.loc	1 73 26                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:73:26
	bneq r2, r16, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:0:26
	addli r3, zero, 1
	beq r2, r3, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r12, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	addli r5, zero, 5
	addli r6, zero, 62
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:81:20
	mod.s r3, r10, r6
	.loc	1 89 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:89:25
	mod.s r4, r27, r28
	xwait r12, 0
	xwait r5, 0
	lock zero, zero
	addli r27, r27, 1
	.loc	1 81 20                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:81:20
	addli r10, r10, 1
	.loc	1 89 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:89:25
	ds_cfg r15, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:81:20
	slli r3, r3, 13
	.loc	1 89 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:89:25
	slli r4, r4, 13
	.loc	1 81 20                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:81:20
	add.s r3, r3, r17
	.loc	1 89 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:89:25
	shuffle_batch r4, r3, r11, 1
	.loc	1 73 26                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:73:26
	andi r3, r1, 1
	addli r1, zero, 0
	.loc	1 89 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:89:25
	unlock zero
	xsignal r15, 0
	xsignal r16, 0
	bneq r3, zero, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:0:25
	load.d r[5:6], -1224(r30)               # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:73:26
	addli r9, r9, 2
	addli r8, r8, 2
	addli r18, r27, 0
	.loc	1 89 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:89:25
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:0:25
	slli r6, r6, 6
	store.d r[13:14], -1240(r30)            # 8-byte Folded Spill
	addli r14, zero, 7
	slli r5, r5, 6
	store.d r[25:26], -1248(r30)            # 8-byte Folded Spill
	addli r17, zero, 0
	addli r25, r23, 0
	sub.s r1, r1, r6
	mod.s r6, r23, r15
	storeli.w r5, -1260(r30)                # 4-byte Folded Spill
	addli r23, zero, 0
	div.s r1, r1, r7
	addli r7, zero, 1
	slli r26, r6, 15
	.loc	1 73 26 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:73:26
	load.d r[5:6], 8(r30)
	zext_int2long r[3:4], r1
	slli r1, r1, 7
	sll.d r[3:4], r[3:4], r14
	storeli.w r1, -1264(r30)                # 4-byte Folded Spill
	store.d r[3:4], -1256(r30)              # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r7
	add.ul r[5:6], r[5:6], r[3:4]
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:89:25
	addli r3, zero, 9
	xwait r22, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r1, r13, r11, 2
	unlock zero
	xsignal r14, 0
	xsignal r20, 0
	.loc	1 73 26                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:73:26
	andi r1, r7, 1
	bneq r1, zero, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	.loc	1 86 20                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:86:20
	addli r1, zero, 61
	.loc	1 89 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:89:25
	addli r3, zero, 80
	addli r18, r27, 1
	.loc	1 86 20                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:86:20
	mod.s r1, r8, r1
	.loc	1 89 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:89:25
	mod.s r3, r9, r3
	addli r9, r9, 1
	.loc	1 86 20                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:86:20
	addli r8, r8, 1
	slli r4, r1, 14
	.loc	1 89 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:89:25
	slli r1, r3, 14
	.loc	1 86 20                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:86:20
	add.s r13, r4, r21
	beq r2, r14, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:0:20
	bneq r2, r22, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 20                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:86:20
	zext_int2long r[3:4], r17
	addli r1, zero, 1
	xwait r14, 0
	lock zero, r16
	addli r17, zero, 256
	add.ul r[3:4], r[5:6], r[3:4]
	dma_cfg r1, r1, zero, 0
	addli r1, zero, 2048
	dma_cfg zero, r4, zero, 2
	dma_cfg r13, r3, r17, 3
	dma_cfg r17, r1, r11, 4
	dma_run zero
	unlock r16
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:73:26
	andi r1, r7, 1
	bneq r1, zero, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:0:26
	andi r7, r7, 1
	.loc	1 89 25 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:89:25
	bneq r2, r16, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25 is_stmt 0                # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:0:25
	mod.s r3, r27, r28
	addli r13, zero, 1
	addli r27, zero, 1
	addli r28, zero, 0
	.loc	1 89 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:89:25
	xwait r16, 0
	xwait r20, 0
	slli r17, r3, 13
	beq r23, zero, .LBB0_23
.LBB0_22:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r3, r28, 13
	slli r4, r28, 8
	lock zero, r13
	addli r28, zero, 1
	mm_cfg r11, r11, r11, 0
	or r3, r3, r1
	or r4, r4, r26
	mm_cfg r12, r16, r13, 2
	mm_acc r4, r17, r3, 5
	andi r3, r27, 1
	addli r27, zero, 0
	unlock r13
	bneq r3, zero, .LBB0_22
	j .LBB0_24
.LBB0_23:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r3, r28, 13
	slli r4, r28, 8
	lock zero, r13
	addli r28, zero, 1
	mm_cfg r11, r11, r11, 0
	or r3, r3, r1
	or r4, r4, r26
	mm_cfg r12, r16, r13, 2
	mm r4, r17, r3, 5
	andi r3, r27, 1
	addli r27, zero, 0
	unlock r13
	bneq r3, zero, .LBB0_23
.LBB0_24:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r1, zero, 5
	addli r28, zero, 96
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r7, zero, .LBB0_26
	j .LBB0_5
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:73:26
	beq r7, zero, .LBB0_30
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:0:26
	addli r7, zero, 0
	.loc	1 89 25 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:89:25
	addli r23, r23, 1
	lui r17, 32
	addli r27, r18, 0
	j .LBB0_17
.LBB0_27:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:86:20
	addli r10, r10, 2
	.loc	1 73 26                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:73:26
	beq r2, r16, .LBB0_6
	j .LBB0_31
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:0:26
	addli r1, zero, 1
	addli r3, zero, 13
	addli.d r[14:15], r[13:14], 0
	storeli.w r23, -1268(r30)               # 4-byte Folded Spill
	setlt.u r7, r1, r5
	sll.d r[5:6], r[25:26], r3
	bneq r7, zero, .LBB0_33
# %bb.29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	zext_int2long r[21:22], zero
	j .LBB0_34
.LBB0_30:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:86:20
	addli r10, r10, 2
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:0:20
	load.d r[5:6], -1224(r30)               # 8-byte Folded Reload
	lui r17, 24
	addli r23, r25, 0
	bneq r2, zero, .LBB0_7
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:101:67
	loadli.w r1,  -1264(r30)                # 4-byte Folded Reload
	zext_int2long r[27:28], r11
	addli r25, zero, 5
	addli r7, zero, 1
	zext_int2long r[3:4], r1
	addli r1, zero, 896
	zext_int2long r[5:6], r1
	loadli.w r1,  -1260(r30)                # 4-byte Folded Reload
	min.ul r[5:6], r[3:4], r[5:6]
	sext_int2long r[19:20], r1
	addli r1, zero, 17
	addli.d r[5:6], r[5:6], 128
	min.sl r[13:14], r[19:20], r[27:28]
	max.ul r[5:6], r[5:6], r[3:4]
	sub.sl r[3:4], r[5:6], r[3:4]
	addli.d r[5:6], r[13:14], 64
	load.d r[13:14], -1240(r30)             # 8-byte Folded Reload
	max.sl r[5:6], r[5:6], r[19:20]
	min.ul r[3:4], r[3:4], r[13:14]
	load.d r[13:14], -1256(r30)             # 8-byte Folded Reload
	sub.sl r[5:6], r[5:6], r[19:20]
	load.d r[19:20], 16(r30)
	store.d r[3:4], -1240(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1248(r30)               # 8-byte Folded Reload
	min.sl r[5:6], r[5:6], r[27:28]
	addli r28, zero, 96
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 10
	xwait r1, 0
	lock zero, r25
	add.ul r[3:4], r[19:20], r[3:4]
	sll.d r[19:20], r[13:14], r7
	dma_cfg r7, zero, zero, 0
	dma_cfg zero, r7, zero, 1
	add.ul r[3:4], r[3:4], r[19:20]
	loadli.w r19,  28(r30)
	addli r20, zero, 8
	load.d r[13:14], -1240(r30)             # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r1, r13, 2
	dma_cfg r3, r26, r1, 3
	addli r1, zero, 512
	addli r3, zero, 2048
	dma_cfg r3, r1, r5, 4
	addli r1, zero, 11
	load.d r[5:6], -1224(r30)               # 8-byte Folded Reload
	dma_run zero
	unlock r25
	xsignal r1, 0
	j .LBB0_7
.LBB0_33:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:0:67
	load.d r[3:4], -1280(r30)               # 8-byte Folded Reload
	and.d r[21:22], r[5:6], r[3:4]
.LBB0_34:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r7, zero, 0
	addli r2, zero, 1
	addli r24, zero, 128
.LBB0_35:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:86:25
	zext_int2long r[3:4], r7
	.loc	1 81 20                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:81:20
	addli r7, zero, 62
	addli r19, zero, 3
	addli.d r[17:18], r[5:6], 0
	.loc	1 73 26                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:73:26
	andi r23, r1, 1
	.loc	1 81 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:81:25
	or.d r[3:4], r[5:6], r[3:4]
	.loc	1 81 20 is_stmt 0               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:81:20
	mod.s r13, r10, r7
	addli r7, zero, 64
	xwait r19, 0
	load.d r[5:6], 0(r30)
	lock zero, r16
	addli r10, r10, 1
	dma_cfg r2, r2, zero, 0
	.loc	1 81 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:81:25
	sub.sl r[25:26], r[3:4], r[21:22]
	zext_int2long r[19:20], r7
	.loc	1 81 20                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:81:20
	sll.d r[3:4], r[3:4], r2
	.loc	1 81 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:81:25
	div.sl r[25:26], r[25:26], r[14:15]
	.loc	1 81 20                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:81:20
	add.ul r[3:4], r[5:6], r[3:4]
	addli.d r[5:6], r[17:18], 0
	slli r1, r13, 13
	lui r13, 24
	dma_cfg zero, r4, zero, 2
	add.s r1, r1, r13
	dma_cfg r1, r3, r24, 3
	addli r1, zero, 0
	.loc	1 81 25                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:81:25
	min.sl r[19:20], r[25:26], r[19:20]
	sub.sl r[19:20], r[19:20], r[25:26]
	addli r25, zero, 256
	.loc	1 81 20                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:81:20
	addli r13, r19, 64
	dma_cfg r24, r25, r13, 4
	dma_run zero
	unlock r16
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:73:26
	bneq r23, zero, .LBB0_35
# %bb.36:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:0:26
	loadli.w r19,  28(r30)
	load.d r[5:6], -1224(r30)               # 8-byte Folded Reload
	loadli.w r23,  -1268(r30)               # 4-byte Folded Reload
	.loc	1 73 26                         # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:73:26
	addli r18, r27, 2
	addli r9, r9, 2
	addli r8, r8, 2
	addli r20, zero, 8
	lui r21, 148
	addli r15, zero, 3
	core_id r2
	lui r17, 24
	addli r24, zero, 128
	addli r22, zero, 6
	.loc	1 89 25 is_stmt 1               # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:89:25
	j .LBB0_7
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0                          # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:22:0
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
.LBB0_39:
	.loc	1 22 0 epilogue_begin           # criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py:22:0
	addli sp, sp, 1280
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
	.long	1344                            # 0x540
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
.asciz	"criwdfclhrew5wyaaaeqpicoyqdcqqt5deoxzs6x7i5nreyhjfyk.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/ri" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
