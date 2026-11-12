	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/52" "c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py"
	.loc	1 22 0                          # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1632
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	core_id r2
	addli r30, sp, 1568
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:0:26
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
	ble.s r3, r1, .LBB0_37
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[17:18], r1
	loadli.w r8,  -236(r30)
	loadli.w r9,  -880(r30)
	loadli.w r10,  -1112(r30)
	loadli.w r1,  -1500(r30)
	addli r11, zero, 128
	addli r14, zero, 7
	addli r15, zero, 3
	addli r16, zero, 4
	addli r20, zero, 1
	addli r13, zero, 96
	addli r21, zero, 58
	addli r23, zero, 6
	addli r25, zero, 32
	addli r26, zero, 64
	addli r19, zero, 5
	addli r27, zero, 2
	storeli.w zero, -1520(r30)              # 4-byte Folded Spill
	store.d r[3:4], -1544(r30)              # 8-byte Folded Spill
	lui r3, 31
	ori r5, r3, 4095
	lui r3, 1023
	lui r4, 1047552
	ori r3, r3, 4095
	store.d r[4:5], -1568(r30)              # 8-byte Folded Spill
	storeli.w r3, -1516(r30)                # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:86:20
	addli r10, r10, 64
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	addli r1, zero, 10
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:0:26
	load.d r[17:18], -1528(r30)             # 8-byte Folded Reload
	addli r13, zero, 96
	addli r19, zero, 5
.LBB0_8:                                # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -1544(r30)               # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 1
	loadli.w r1,  -1520(r30)                # 4-byte Folded Reload
	addli r27, zero, 2
	setlt.sl r3, r[17:18], r[3:4]
	addli r1, r1, 1
	storeli.w r1, -1520(r30)                # 4-byte Folded Spill
	addli r1, r28, 0
	beq r3, zero, .LBB0_37
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	loadli.w r3,  32(r30)
	loadli.w r4,  28(r30)
	.loc	1 54 50 is_stmt 1               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:54:50
	addli r5, zero, 8
	lui r22, 48
	addli r24, zero, 57
	div.s r3, r17, r3
	div.s r6, r3, r4
	.loc	1 54 30 is_stmt 0               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:54:30
	addli r4, zero, 16
	.loc	1 53 22 is_stmt 1               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:53:22
	div.s r7, r6, r11
	.loc	1 54 41                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:54:41
	slli r3, r7, 3
	.loc	1 54 30 is_stmt 0               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:54:30
	sub.s r4, r4, r3
	.loc	1 54 50                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:54:50
	min.s r12, r4, r5
	.loc	1 55 40 is_stmt 1               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:55:40
	mod.s r4, r6, r12
	.loc	1 55 34 is_stmt 0               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:55:34
	add.s r5, r3, r4
	.loc	1 95 15 is_stmt 1               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:95:15
	zext_int2long r[3:4], r5
	store.d r[3:4], -1536(r30)              # 8-byte Folded Spill
	addli r3, zero, 1920
	zext_int2long r[3:4], r3
	.loc	1 73 26                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	store.d r[3:4], -1512(r30)              # 8-byte Folded Spill
	bneq r2, r16, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:0:26
	beq r2, r20, .LBB0_30
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r27, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 0
	addli r6, zero, 57
	lui r7, 48
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	add.s r4, r10, r3
	add.s r5, r1, r3
	xwait r27, 0
	xwait r19, 0
	lock zero, zero
	.loc	1 73 26                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	ds_cfg r15, zero, 0
	.loc	1 81 20                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:20
	mod.s r4, r4, r6
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	mod.s r5, r5, r13
	ds_cfg r26, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:20
	slli r4, r4, 14
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	slli r5, r5, 13
	.loc	1 81 20                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:20
	add.s r4, r4, r7
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	shuffle_batch r5, r4, r25, 1
	unlock zero
	xsignal r15, 0
	xsignal r16, 0
	bneq r3, r26, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	addli r9, r9, 64
	addli r8, r8, 64
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	add.s r28, r1, r3
	add.s r10, r10, r3
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:0:25
	slli r7, r7, 7
	loadli.w r3,  -1520(r30)                # 4-byte Folded Reload
	store.d r[17:18], -1528(r30)            # 8-byte Folded Spill
	addli r13, zero, 0
	addli r24, zero, 0
	lui r22, 276
	sub.s r6, r6, r7
	mod.s r7, r3, r15
	slli r3, r5, 7
	div.s r6, r6, r12
	addli r12, zero, 160
	storeli.w r3, -1556(r30)                # 4-byte Folded Spill
	slli r19, r7, 16
	zext_int2long r[17:18], r6
	slli r3, r6, 7
	sll.d r[17:18], r[17:18], r14
	.loc	1 73 26 is_stmt 1               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	storeli.w r3, -1560(r30)                # 4-byte Folded Spill
	load.d r[3:4], 8(r30)
	sll.d r[5:6], r[17:18], r20
	addli r18, zero, 8
	addli r17, zero, 9
	store.d r[5:6], -1552(r30)              # 8-byte Folded Spill
	add.ul r[5:6], r[3:4], r[5:6]
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	xwait r23, 0
	xwait r17, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r11, zero, 13
	shuffle_coa r7, r27, r25, 2
	unlock zero
	xsignal r14, 0
	xsignal r18, 0
	.loc	1 73 26                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	addli r13, r13, 1
	bneq r13, r26, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 86 20                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:86:20
	mod.s r3, r8, r21
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	mod.s r4, r9, r12
	addli r28, r1, 1
	addli r9, r9, 1
	.loc	1 86 20                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:86:20
	addli r8, r8, 1
	slli r3, r3, 13
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	slli r7, r4, 13
	.loc	1 86 20                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:86:20
	add.s r27, r3, r22
	beq r2, r14, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:0:20
	bneq r2, r23, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:86:25
	zext_int2long r[3:4], r13
	.loc	1 86 20                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:86:20
	addli r1, zero, 17
	xwait r14, 0
	lock zero, r16
	addli r7, zero, 256
	dma_cfg r20, r20, zero, 0
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 4096
	add.ul r[3:4], r[5:6], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r27, r3, r7, 3
	dma_cfg r7, r1, r25, 4
	dma_run zero
	unlock r16
	xsignal r23, 0
	.loc	1 73 26 is_stmt 1               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	addli r13, r13, 1
	bneq r13, r26, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	bneq r2, r16, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:0:0
	addli r3, zero, 96
	addli r27, zero, 1
	addli r12, zero, 1
	addli r17, zero, 0
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	xwait r16, 0
	xwait r18, 0
	.loc	1 0 0                           # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:0:0
	mod.s r1, r1, r3
	slli r1, r1, 13
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	beq r24, zero, .LBB0_24
.LBB0_23:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r3, r17, 12
	slli r4, r17, 8
	lock zero, r27
	addli r17, zero, 1
	mm_cfg r26, r25, r11, 0
	or r3, r3, r7
	or r4, r4, r19
	mm_cfg r27, r16, r27, 2
	mm_acc r4, r1, r3, 5
	andi r3, r12, 1
	addli r12, zero, 0
	unlock r27
	bneq r3, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r3, r17, 12
	slli r4, r17, 8
	lock zero, r27
	addli r17, zero, 1
	mm_cfg r26, r25, r11, 0
	or r3, r3, r7
	or r4, r4, r19
	mm_cfg r27, r16, r27, 2
	mm r4, r1, r3, 5
	andi r3, r12, 1
	addli r12, zero, 0
	unlock r27
	bneq r3, zero, .LBB0_24
.LBB0_25:                               # %.thread6.thread94
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r1, zero, 5
	.loc	1 73 26 is_stmt 1               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	addli r13, r13, 1
	addli r17, zero, 9
	addli r12, zero, 160
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	xsignal r1, 0
	xsignal r17, 0
	bneq r13, r26, .LBB0_27
	j .LBB0_5
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	addli r13, r13, 1
	beq r13, r26, .LBB0_35
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	addli r24, r24, 1
	addli r1, r28, 0
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:86:20
	addli r10, r10, 64
	.loc	1 73 26                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	beq r2, r16, .LBB0_6
# %bb.29:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:0:26
	bneq r2, zero, .LBB0_7
	j .LBB0_36
.LBB0_30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[4:5], -1536(r30)               # 8-byte Folded Reload
	addli r3, zero, 18
	addli r2, zero, 2
	store.d r[17:18], -1528(r30)            # 8-byte Folded Spill
	addli r7, zero, 0
	sll.d r[5:6], r[4:5], r3
	load.d r[3:4], -1568(r30)               # 8-byte Folded Reload
	and.d r[17:18], r[5:6], r[3:4]
	j .LBB0_32
.LBB0_31:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	addli r3, zero, 2048
	.loc	1 81 25 is_stmt 1               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:25
	sub.sl r[27:28], r[12:13], r[27:28]
	.loc	1 81 20 is_stmt 0               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:20
	load.d r[20:21], 0(r30)
	.loc	1 0 0                           # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:0:0
	add.s r19, r10, r7
	.loc	1 81 20                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:20
	xwait r15, 0
	lock zero, r16
	.loc	1 73 26 is_stmt 1               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	addli r7, r7, 1
	zext_int2long r[3:4], r3
	.loc	1 81 0                          # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:0
	mod.s r19, r19, r24
	.loc	1 81 25 is_stmt 0               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:25
	div.sl r[3:4], r[27:28], r[3:4]
	addli r27, zero, 1
	.loc	1 81 20                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:20
	sll.d r[12:13], r[12:13], r27
	dma_cfg r27, r27, zero, 0
	add.ul r[12:13], r[20:21], r[12:13]
	.loc	1 81 0                          # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:0
	slli r19, r19, 14
	addli r20, zero, 1
	.loc	1 81 20                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:20
	dma_cfg zero, r13, zero, 2
	.loc	1 81 0                          # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:0
	add.s r19, r19, r22
	.loc	1 81 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:25
	load.d r[27:28], -1512(r30)             # 8-byte Folded Reload
	.loc	1 81 20                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:20
	dma_cfg r19, r12, r26, 3
	addli r19, zero, 5
	.loc	1 81 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:25
	min.sl r[27:28], r[3:4], r[27:28]
	sub.sl r[3:4], r[27:28], r[3:4]
	.loc	1 81 20                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:20
	addli r3, r3, 128
	addli r4, zero, 4096
	dma_cfg r11, r4, r3, 4
	dma_run zero
	unlock r16
	xsignal r2, 0
	.loc	1 73 26 is_stmt 1               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	beq r7, r26, .LBB0_34
.LBB0_32:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:86:25
	zext_int2long r[12:13], r7
	loadli.w r3,  -1516(r30)                # 4-byte Folded Reload
	sll.d r[12:13], r[12:13], r19
	zext_int2long r[27:28], r3
	.loc	1 81 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:81:25
	add.ul r[12:13], r[12:13], r[5:6]
	setlt.ul r19, r[27:28], r[12:13]
	addli.d r[27:28], r[17:18], 0
	bneq r19, zero, .LBB0_31
# %bb.33:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 25 is_stmt 0                # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:0:25
	zext_int2long r[27:28], zero
	j .LBB0_31
.LBB0_34:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[17:18], -1528(r30)             # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	addli r28, r1, 64
	addli r9, r9, 64
	addli r8, r8, 64
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	add.s r10, r10, r7
	addli r13, zero, 96
	addli r21, zero, 58
	.loc	1 73 26                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:73:26
	core_id r2
	.loc	1 89 25                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:89:25
	j .LBB0_8
.LBB0_35:                               # %.split17.thread93
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:86:20
	addli r10, r10, 64
	bneq r2, zero, .LBB0_7
.LBB0_36:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:101:67
	loadli.w r1,  -1560(r30)                # 4-byte Folded Reload
	load.d r[17:18], -1512(r30)             # 8-byte Folded Reload
	addli r20, zero, 1
	zext_int2long r[3:4], r1
	loadli.w r1,  -1556(r30)                # 4-byte Folded Reload
	min.ul r[5:6], r[3:4], r[17:18]
	sext_int2long r[12:13], r1
	addli r1, zero, 19
	addli.d r[5:6], r[5:6], 128
	min.sl r[17:18], r[12:13], r[17:18]
	max.ul r[5:6], r[5:6], r[3:4]
	addli.d r[17:18], r[17:18], 128
	sub.sl r[3:4], r[5:6], r[3:4]
	zext_int2long r[5:6], r11
	max.sl r[17:18], r[17:18], r[12:13]
	min.ul r[3:4], r[3:4], r[5:6]
	sub.sl r[12:13], r[17:18], r[12:13]
	load.d r[17:18], 16(r30)
	store.d r[3:4], -1512(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1536(r30)               # 8-byte Folded Reload
	min.sl r[5:6], r[12:13], r[5:6]
	load.d r[12:13], -1552(r30)             # 8-byte Folded Reload
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 5
	add.ul r[3:4], r[17:18], r[3:4]
	lock zero, r1
	addli r1, zero, 1
	add.ul r[3:4], r[3:4], r[12:13]
	dma_cfg r1, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	load.d r[12:13], -1512(r30)             # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r1, r12, 2
	addli r13, zero, 96
	dma_cfg r3, r19, r1, 3
	addli r1, zero, 512
	addli r3, zero, 4096
	addli r19, zero, 5
	dma_cfg r3, r1, r5, 4
	addli r1, zero, 11
	dma_run zero
	unlock r19
	xsignal r1, 0
	load.d r[17:18], -1528(r30)             # 8-byte Folded Reload
	j .LBB0_8
.LBB0_37:                               # %._crit_edge
	.loc	1 22 0                          # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_39
# %bb.38:
	.loc	1 0 0 is_stmt 0                 # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:22:0
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
	.loc	1 22 0 epilogue_begin           # c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py:22:0
	addli sp, sp, 1568
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
	.long	1632                            # 0x660
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
.asciz	"c5225ev74lv5bbnvapzpayy47tvxm2prc74te634wg3omggxitsv.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/52" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
