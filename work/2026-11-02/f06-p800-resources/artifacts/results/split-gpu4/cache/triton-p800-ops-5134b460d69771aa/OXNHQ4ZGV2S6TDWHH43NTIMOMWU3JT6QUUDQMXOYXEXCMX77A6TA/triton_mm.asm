	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu4/cache/inductor/sz" "csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py"
	.loc	1 22 0                          # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1936
	addli r30, sp, 1872
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	core_id r9
	loadli.w r8,  32(r30)
	loadli.w r6,  28(r30)
	xsignal_mode_cfg r1
	beq r9, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -384(r30)
	storeli.w zero, -1028(r30)
	storeli.w zero, -1412(r30)
	storeli.w zero, -1800(r30)
	mul.s r1, r2, r1
	addli r2, r4, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r1, r2, r4
	fmac.s r2, r2, r4
	min.s r3, r2, r3
	ble.s r3, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	sext_int2long r[17:18], r1
	lui r1, 15
	sext_int2long r[2:3], r3
	loadli.w r28,  -384(r30)
	loadli.w r26,  -1028(r30)
	addli r10, zero, 32
	addli r12, zero, 6
	addli r13, zero, 3
	addli r14, zero, 4
	addli r16, zero, 1
	addli r22, zero, 96
	addli r19, zero, 95
	addli r21, zero, 7
	addli r23, zero, 64
	addli r27, zero, 5
	addli r20, zero, 128
	addli r11, zero, 2
	lui r15, 12
	addli r24, zero, 0
	ori r5, r1, 4095
	lui r1, 1023
	store.d r[2:3], -1848(r30)              # 8-byte Folded Spill
	loadli.w r2,  -1412(r30)
	loadli.w r3,  -1800(r30)
	lui r4, 1047552
	ori r1, r1, 4095
	store.d r[4:5], -1872(r30)              # 8-byte Folded Spill
	storeli.w r1, -1812(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	addli r1, zero, 10
	loadli.w r25,  28(r30)
	loadli.w r8,  32(r30)
	.loc	1 101 67 is_stmt 1              # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:101:67
	addli r3, r11, 1
	addli r26, r27, 1
	addli r28, r15, 1
	addli r22, zero, 96
	addli r27, zero, 5
	addli r11, zero, 2
	lui r15, 12
	.loc	1 73 26                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	xsignal r1, 0
	load.d r[17:18], -1824(r30)             # 8-byte Folded Reload
	loadli.w r24,  -1828(r30)               # 4-byte Folded Reload
.LBB0_6:                                # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:26
	addli r6, r25, 0
.LBB0_7:                                # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[4:5], -1848(r30)               # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 1
	addli r24, r24, 1
	setlt.sl r1, r[17:18], r[4:5]
	beq r1, zero, .LBB0_39
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r1, r17, r8
	addli r25, r6, 0
	.loc	1 54 50 is_stmt 1               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:54:50
	addli r7, zero, 8
	div.s r6, r1, r6
	.loc	1 53 22                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:53:22
	addli r1, zero, 256
	div.s r4, r6, r1
	.loc	1 54 41                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:54:41
	slli r1, r4, 3
	.loc	1 54 30 is_stmt 0               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:54:30
	sub.s r5, r10, r1
	.loc	1 54 50                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:54:50
	min.s r5, r5, r7
	.loc	1 55 40 is_stmt 1               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:55:40
	mod.s r7, r6, r5
	.loc	1 55 34 is_stmt 0               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:55:34
	add.s r1, r1, r7
	.loc	1 95 15 is_stmt 1               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:95:15
	zext_int2long r[7:8], r1
	store.d r[7:8], -1840(r30)              # 8-byte Folded Spill
	addli r7, zero, 1984
	zext_int2long r[7:8], r7
	.loc	1 73 26                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	store.d r[7:8], -1808(r30)              # 8-byte Folded Spill
	bneq r9, r14, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r7, zero, 11
	xwait r7, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:26
	beq r9, r16, .LBB0_29
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r9, r11, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 0
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	add.s r4, r2, r1
	add.s r5, r3, r1
	xwait r11, 0
	xwait r27, 0
	lock zero, zero
	.loc	1 73 26                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	ds_cfg r13, zero, 0
	.loc	1 81 20                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:20
	mod.s r4, r4, r19
	.loc	1 89 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	mod.s r5, r5, r22
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:20
	slli r4, r4, 13
	.loc	1 89 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	slli r5, r5, 13
	.loc	1 81 20                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:20
	add.s r4, r4, r15
	.loc	1 89 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	shuffle_batch r5, r4, r23, 1
	unlock zero
	xsignal r13, 0
	xsignal r14, 0
	bneq r1, r10, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:25
	loadli.w r8,  32(r30)
	.loc	1 73 26 is_stmt 1               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	addli r26, r26, 32
	addli r28, r28, 32
	.loc	1 89 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	add.s r3, r3, r1
	add.s r2, r2, r1
	j .LBB0_6
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:25
	slli r4, r4, 8
	slli r1, r1, 6
	addli r8, zero, 5
	addli r25, zero, 96
	addli r22, zero, 0
	storeli.w r24, -1828(r30)               # 4-byte Folded Spill
	store.d r[17:18], -1824(r30)            # 8-byte Folded Spill
	sub.s r4, r6, r4
	storeli.w r1, -1860(r30)                # 4-byte Folded Spill
	div.s r4, r4, r5
	mod.s r5, r24, r13
	addli r24, zero, 0
	zext_int2long r[6:7], r4
	slli r1, r4, 6
	sll.d r[6:7], r[6:7], r12
	.loc	1 73 26 is_stmt 1               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	storeli.w r1, -1864(r30)                # 4-byte Folded Spill
	slli r1, r5, 14
	load.d r[4:5], 8(r30)
	sll.d r[6:7], r[6:7], r16
	store.d r[6:7], -1856(r30)              # 8-byte Folded Spill
	add.ul r[6:7], r[4:5], r[6:7]
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	addli r4, zero, 9
	xwait r12, 0
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 8
	ds_cfg r13, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r17, r18, r23, 2
	unlock zero
	xsignal r21, 0
	xsignal r4, 0
	.loc	1 73 26                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	addli r22, r22, 1
	beq r22, r10, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	addli r24, r24, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r15, r28, r24
	add.s r27, r26, r24
	addli r5, zero, 160
	add.s r11, r3, r24
	.loc	1 86 20                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:86:20
	mod.s r4, r15, r19
	.loc	1 89 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	mod.s r5, r27, r5
	slli r17, r5, 13
	.loc	1 86 20                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:86:20
	slli r4, r4, 13
	lui r5, 202
	add.s r18, r4, r5
	beq r9, r21, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:20
	bneq r9, r12, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:86:25
	zext_int2long r[4:5], r22
	.loc	1 86 20                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:86:20
	addli r17, zero, 18
	xwait r21, 0
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	sll.d r[4:5], r[4:5], r17
	add.ul r[4:5], r[6:7], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r18, r4, r20, 3
	addli r4, zero, 4096
	dma_cfg r20, r4, r23, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	addli r22, r22, 1
	bneq r22, r10, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	bneq r9, r14, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:0
	mod.s r4, r11, r25
	.loc	1 89 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	addli r5, zero, 8
	xwait r14, 0
	xwait r5, 0
	lock zero, r16
	addli r5, zero, 2
	mm_cfg r23, r23, r23, 0
	mm_cfg r5, r5, r16, 2
	.loc	1 0 0                           # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:0
	slli r4, r4, 13
	.loc	1 89 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	beq r24, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r1, r4, r17, 5
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	addli r22, r22, 1
	bneq r22, r10, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	mm r1, r4, r17, 5
.LBB0_26:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	addli r22, r22, 1
	.loc	1 89 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	addli r4, zero, 9
	unlock r16
	xsignal r8, 0
	xsignal r4, 0
	.loc	1 73 26                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	bneq r22, r10, .LBB0_17
# %bb.27:                               # %.split17.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:86:20
	addli r2, r2, 32
	j .LBB0_5
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, r2, 32
	.loc	1 73 26                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	beq r9, r14, .LBB0_5
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:26
	load.d r[4:5], -1840(r30)               # 8-byte Folded Reload
	addli r1, zero, 17
	storeli.w r24, -1828(r30)               # 4-byte Folded Spill
	store.d r[17:18], -1824(r30)            # 8-byte Folded Spill
	sll.d r[6:7], r[4:5], r1
	load.d r[4:5], -1872(r30)               # 8-byte Folded Reload
	addli r1, zero, 0
	and.d r[8:9], r[6:7], r[4:5]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r11, zero, 2048
	.loc	1 81 25 is_stmt 1               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:25
	sub.sl r[17:18], r[4:5], r[17:18]
	.loc	1 81 20 is_stmt 0               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:20
	sll.d r[4:5], r[4:5], r16
	xwait r13, 0
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	zext_int2long r[24:25], r11
	.loc	1 0 0                           # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:0
	add.s r11, r2, r1
	.loc	1 73 26 is_stmt 1               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	addli r1, r1, 1
	.loc	1 81 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:25
	div.sl r[17:18], r[17:18], r[24:25]
	.loc	1 81 20 is_stmt 0               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:20
	load.d r[24:25], 0(r30)
	.loc	1 81 0                          # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:0
	mod.s r11, r11, r19
	.loc	1 81 20                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:20
	add.ul r[4:5], r[24:25], r[4:5]
	dma_cfg zero, r5, zero, 2
	.loc	1 81 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:25
	load.d r[24:25], -1808(r30)             # 8-byte Folded Reload
	.loc	1 81 0                          # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:0
	slli r11, r11, 13
	add.s r11, r11, r15
	.loc	1 81 20                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:20
	dma_cfg r11, r4, r20, 3
	addli r4, zero, 4096
	addli r11, zero, 2
	.loc	1 81 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:25
	min.sl r[24:25], r[17:18], r[24:25]
	sub.sl r[17:18], r[24:25], r[17:18]
	.loc	1 81 20                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:20
	addli r15, r17, 64
	dma_cfg r20, r4, r15, 4
	lui r15, 12
	dma_run zero
	unlock r14
	xsignal r11, 0
	.loc	1 73 26 is_stmt 1               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	beq r1, r10, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:86:25
	zext_int2long r[4:5], r1
	loadli.w r11,  -1812(r30)               # 4-byte Folded Reload
	sll.d r[4:5], r[4:5], r12
	zext_int2long r[17:18], r11
	.loc	1 81 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:81:25
	add.ul r[4:5], r[4:5], r[6:7]
	setlt.ul r11, r[17:18], r[4:5]
	addli.d r[17:18], r[8:9], 0
	bneq r11, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:25
	zext_int2long r[17:18], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r25,  28(r30)
	loadli.w r8,  32(r30)
	load.d r[17:18], -1824(r30)             # 8-byte Folded Reload
	loadli.w r24,  -1828(r30)               # 4-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	addli r3, r3, 32
	addli r26, r26, 32
	addli r28, r28, 32
	.loc	1 89 25                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:89:25
	add.s r2, r2, r1
	.loc	1 73 26                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	core_id r9
	j .LBB0_6
.LBB0_34:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:86:20
	addli r2, r2, 32
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:20
	load.d r[17:18], -1824(r30)             # 8-byte Folded Reload
	loadli.w r24,  -1828(r30)               # 4-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:101:67
	addli r3, r11, 1
	addli r26, r27, 1
	addli r28, r15, 1
	addli r22, zero, 96
	beq r9, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:67
	loadli.w r25,  28(r30)
	loadli.w r8,  32(r30)
	addli r27, zero, 5
	addli r6, r25, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:101:67
	loadli.w r4,  -1864(r30)                # 4-byte Folded Reload
	loadli.w r8,  -1860(r30)                # 4-byte Folded Reload
	load.d r[17:18], -1808(r30)             # 8-byte Folded Reload
	load.d r[24:25], -1840(r30)             # 8-byte Folded Reload
	addli r11, zero, 18
	addli r27, zero, 5
	zext_int2long r[4:5], r4
	sext_int2long r[8:9], r8
	sll.d r[24:25], r[24:25], r11
	addli r11, zero, 10
	min.ul r[6:7], r[4:5], r[17:18]
	min.sl r[17:18], r[8:9], r[17:18]
	addli.d r[6:7], r[6:7], 64
	addli.d r[17:18], r[17:18], 64
	max.ul r[6:7], r[6:7], r[4:5]
	max.sl r[17:18], r[17:18], r[8:9]
	sub.sl r[4:5], r[6:7], r[4:5]
	zext_int2long r[6:7], r23
	sub.sl r[8:9], r[17:18], r[8:9]
	load.d r[17:18], 16(r30)
	min.ul r[4:5], r[4:5], r[6:7]
	min.sl r[6:7], r[8:9], r[6:7]
	load.d r[8:9], -1856(r30)               # 8-byte Folded Reload
	add.ul r[17:18], r[17:18], r[24:25]
	loadli.w r24,  -1828(r30)               # 4-byte Folded Reload
	loadli.w r25,  28(r30)
	slli r4, r4, 2
	add.ul r[8:9], r[17:18], r[8:9]
	load.d r[17:18], -1824(r30)             # 8-byte Folded Reload
	xwait r11, 0
	lock zero, r27
	dma_cfg r16, zero, zero, 0
	dma_cfg zero, r16, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r1, r4, 3
	addli r1, zero, 256
	addli r4, zero, 4096
	loadli.w r8,  32(r30)
	.loc	1 73 26 is_stmt 1               # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:73:26
	core_id r9
	.loc	1 101 67                        # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:101:67
	dma_cfg r4, r1, r6, 4
	addli r6, r25, 0
	addli r1, zero, 11
	dma_run zero
	unlock r27
	xsignal r1, 0
.LBB0_38:                               # %.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:67
	addli r11, zero, 2
	lui r15, 12
	j .LBB0_7
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:22:0
	xsignal zero, 0
	bneq r9, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:22:0
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
	.loc	1 22 0 epilogue_begin           # csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py:22:0
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
.asciz	"csz7zrosx23jsfo5rkmdbj7oowb6aot4iqkoa7cmebx6ebve7lxr.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu4/cache/inductor/sz" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
