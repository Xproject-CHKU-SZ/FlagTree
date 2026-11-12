	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/it" "cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py"
	.loc	1 22 0                          # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1936
	addli r30, sp, 1872
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	core_id r17
	loadli.w r16,  32(r30)
	loadli.w r20,  28(r30)
	xsignal_mode_cfg r1
	beq r17, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:0:26
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
	load_param_i r5, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -388(r30)
	storeli.w zero, -1032(r30)
	storeli.w zero, -1420(r30)
	storeli.w zero, -1808(r30)
	mul.s r1, r2, r1
	addli r2, r5, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r5
	load_param_i r5, 0
	mul.s r1, r2, r5
	fmac.s r2, r2, r5
	min.s r3, r2, r3
	ble.s r3, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r3
	sext_int2long r[22:23], r1
	loadli.w r28,  -388(r30)
	loadli.w r26,  -1032(r30)
	loadli.w r8,  -1420(r30)
	loadli.w r24,  -1808(r30)
	addli r14, zero, 128
	addli r10, zero, 2
	addli r12, zero, 6
	addli r13, zero, 4
	addli r15, zero, 96
	addli r25, zero, 160
	lui r9, 200
	addli r18, zero, 7
	addli r4, zero, 64
	addli r21, zero, 32
	addli r27, zero, 5
	lui r11, 8
	addli r19, zero, 3
	storeli.w zero, -1820(r30)              # 4-byte Folded Spill
	store.d r[2:3], -1848(r30)              # 8-byte Folded Spill
	addli r2, zero, 4095
	lui r1, 1048572
	store.d r[1:2], -1872(r30)              # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split17.thread94
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:86:20
	addli r8, r8, 4
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:101:67
	addli r26, r1, 1
	.loc	1 73 26                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:101:67
	addli r28, r22, 1
	loadli.w r20,  28(r30)
	addli r24, r11, 1
	addli r14, zero, 128
	addli r27, zero, 5
	lui r11, 8
	addli r19, zero, 3
	.loc	1 73 26                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	xsignal r1, 0
	load.d r[22:23], -1832(r30)             # 8-byte Folded Reload
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:0:26
	load.d r[1:2], -1848(r30)               # 8-byte Folded Reload
	addli.d r[22:23], r[22:23], 1
	setlt.sl r1, r[22:23], r[1:2]
	loadli.w r2,  -1820(r30)                # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -1820(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_38
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	div.s r1, r22, r16
	.loc	1 54 50 is_stmt 1               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:54:50
	addli r3, zero, 8
	div.s r5, r1, r20
	.loc	1 53 22                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:53:22
	div.s r6, r5, r14
	.loc	1 54 41                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:54:41
	slli r1, r6, 3
	.loc	1 54 30 is_stmt 0               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:54:30
	sub.s r2, r10, r1
	.loc	1 54 50                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:54:50
	min.s r7, r2, r3
	.loc	1 55 40 is_stmt 1               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:55:40
	mod.s r2, r5, r7
	.loc	1 55 34 is_stmt 0               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:55:34
	add.s r1, r1, r2
	.loc	1 95 15 is_stmt 1               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:95:15
	zext_int2long r[2:3], r1
	store.d r[2:3], -1840(r30)              # 8-byte Folded Spill
	zext_int2long r[2:3], r4
	.loc	1 73 26                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	store.d r[2:3], -1816(r30)              # 8-byte Folded Spill
	bneq r17, r13, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:0:26
	addli r2, zero, 1
	beq r17, r2, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r17, r10, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 0
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	add.s r2, r8, r1
	add.s r3, r24, r1
	xwait r10, 0
	xwait r27, 0
	lock zero, zero
	.loc	1 73 26                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	ds_cfg r10, zero, 0
	.loc	1 81 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:20
	mod.s r2, r2, r15
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	mod.s r3, r3, r15
	ds_cfg r21, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r4, zero, 13
	.loc	1 81 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:20
	slli r2, r2, 13
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	slli r3, r3, 13
	.loc	1 81 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:20
	add.s r2, r2, r11
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	shuffle_batch r3, r2, r21, 1
	unlock zero
	xsignal r19, 0
	xsignal r13, 0
	bneq r1, r13, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	addli r26, r26, 4
	addli r28, r28, 4
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	add.s r24, r24, r1
	add.s r8, r8, r1
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:0:25
	slli r2, r6, 7
	loadli.w r3,  -1820(r30)                # 4-byte Folded Reload
	slli r1, r1, 6
	addli r20, zero, 5
	addli r19, zero, 0
	addli r27, zero, 0
	store.d r[22:23], -1832(r30)            # 8-byte Folded Spill
	sub.s r2, r5, r2
	storeli.w r1, -1860(r30)                # 4-byte Folded Spill
	mod.s r3, r3, r10
	div.s r2, r2, r7
	zext_int2long r[5:6], r2
	slli r1, r2, 6
	sll.d r[5:6], r[5:6], r12
	.loc	1 73 26 is_stmt 1               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	storeli.w r1, -1864(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[6:7], r[5:6], r10
	slli r5, r3, 14
	store.d r[6:7], -1856(r30)              # 8-byte Folded Spill
	add.ul r[6:7], r[1:2], r[6:7]
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	addli r2, zero, 9
	xwait r12, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 8
	ds_cfg r10, zero, 0
	ds_cfg r4, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r4, zero, 13
	shuffle_coa r23, r14, r21, 2
	unlock zero
	xsignal r18, 0
	xsignal r2, 0
	.loc	1 73 26                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	addli r19, r19, 1
	bneq r19, r13, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	add.s r22, r28, r27
	add.s r1, r26, r27
	add.s r11, r24, r27
	.loc	1 86 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:86:20
	mod.s r2, r22, r15
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	mod.s r3, r1, r25
	.loc	1 86 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:86:20
	slli r2, r2, 13
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	slli r23, r3, 13
	.loc	1 86 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:86:20
	add.s r14, r2, r9
	beq r17, r18, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:0:20
	bneq r17, r12, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:86:25
	zext_int2long r[2:3], r19
	.loc	1 86 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:86:20
	addli r23, zero, 17
	xwait r18, 0
	lock zero, r13
	dma_cfg zero, zero, zero, 0
	sll.d r[2:3], r[2:3], r23
	addli r23, zero, 256
	add.ul r[2:3], r[6:7], r[2:3]
	dma_cfg zero, r3, zero, 2
	dma_cfg r14, r2, r23, 3
	addli r2, zero, 4096
	dma_cfg r23, r2, r21, 4
	dma_run zero
	unlock r13
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	addli r19, r19, 1
	bneq r19, r13, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	bneq r17, r13, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:0:0
	mod.s r2, r11, r15
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	addli r3, zero, 8
	xwait r13, 0
	xwait r3, 0
	addli r3, zero, 1
	lock zero, r3
	mm_cfg r4, r21, r4, 0
	.loc	1 0 0                           # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:0:0
	slli r2, r2, 13
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	mm_cfg r10, r10, r3, 2
	beq r27, zero, .LBB0_24
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB0_17 Depth=2
	mm_acc r5, r2, r23, 8
	j .LBB0_25
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	addli r19, r19, 1
	bneq r19, r13, .LBB0_26
	j .LBB0_33
.LBB0_24:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	mm r5, r2, r23, 8
.LBB0_25:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r2, zero, 1
	.loc	1 73 26                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	addli r19, r19, 1
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	unlock r2
	addli r2, zero, 9
	xsignal r20, 0
	xsignal r2, 0
	.loc	1 73 26                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	beq r19, r13, .LBB0_5
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	addli r27, r27, 1
	j .LBB0_17
.LBB0_27:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:86:20
	addli r8, r8, 4
	.loc	1 73 26                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	beq r17, r13, .LBB0_6
	j .LBB0_34
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:0:26
	load.d r[2:3], -1840(r30)               # 8-byte Folded Reload
	addli r1, zero, 13
	addli r25, zero, 3
	store.d r[22:23], -1832(r30)            # 8-byte Folded Spill
	sll.d r[5:6], r[2:3], r1
	load.d r[1:2], -1872(r30)               # 8-byte Folded Reload
	and.d r[2:3], r[5:6], r[1:2]
	addli r1, zero, 0
	j .LBB0_30
.LBB0_29:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 81 25 is_stmt 1               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:25
	sub.sl r[22:23], r[16:17], r[22:23]
	zext_int2long r[19:20], r14
	.loc	1 0 0 is_stmt 0                 # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:0:0
	add.s r7, r8, r1
	.loc	1 81 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:20
	sll.d r[16:17], r[16:17], r10
	xwait r25, 0
	lock zero, r13
	.loc	1 73 26 is_stmt 1               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	addli r1, r1, 1
	.loc	1 81 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:20
	dma_cfg zero, zero, zero, 0
	.loc	1 81 25 is_stmt 0               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:25
	div.sl r[19:20], r[22:23], r[19:20]
	.loc	1 81 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:20
	load.d r[22:23], 0(r30)
	.loc	1 81 0                          # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:0
	mod.s r7, r7, r15
	.loc	1 81 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:20
	add.ul r[16:17], r[22:23], r[16:17]
	dma_cfg zero, r17, zero, 2
	.loc	1 81 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:25
	load.d r[22:23], -1816(r30)             # 8-byte Folded Reload
	.loc	1 81 0                          # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:0
	slli r7, r7, 13
	add.s r7, r7, r11
	.loc	1 81 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:20
	dma_cfg r7, r16, r14, 3
	addli r7, zero, 512
	.loc	1 81 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:25
	min.sl r[22:23], r[19:20], r[22:23]
	sub.sl r[19:20], r[22:23], r[19:20]
	.loc	1 81 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:20
	addli r11, r19, 64
	dma_cfg r14, r7, r11, 4
	lui r11, 8
	dma_run zero
	unlock r13
	xsignal r10, 0
	.loc	1 73 26 is_stmt 1               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	beq r1, r13, .LBB0_32
.LBB0_30:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:86:25
	zext_int2long r[16:17], r1
	addli r7, zero, 16383
	sll.d r[16:17], r[16:17], r27
	zext_int2long r[22:23], r7
	.loc	1 81 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:81:25
	add.ul r[16:17], r[16:17], r[5:6]
	setlt.ul r7, r[22:23], r[16:17]
	addli.d r[22:23], r[2:3], 0
	bneq r7, zero, .LBB0_29
# %bb.31:                               # %.thread.us
                                        #   in Loop: Header=BB0_30 Depth=2
	.loc	1 0 25 is_stmt 0                # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:0:25
	zext_int2long r[22:23], zero
	j .LBB0_29
.LBB0_32:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r16,  32(r30)
	loadli.w r20,  28(r30)
	load.d r[22:23], -1832(r30)             # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	addli r24, r24, 4
	addli r26, r26, 4
	addli r28, r28, 4
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	add.s r8, r8, r1
	.loc	1 73 26                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	core_id r17
	addli r19, zero, 3
	addli r25, zero, 160
	.loc	1 89 25                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:89:25
	j .LBB0_7
.LBB0_33:                               # %.split17.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:86:20
	addli r8, r8, 4
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:101:67
	addli r24, r11, 1
	addli r26, r1, 1
	addli r28, r22, 1
	addli r14, zero, 128
	addli r27, zero, 5
	addli r19, zero, 3
	beq r17, zero, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:0:67
	load.d r[22:23], -1832(r30)             # 8-byte Folded Reload
	loadli.w r20,  28(r30)
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:101:67
	loadli.w r1,  -1864(r30)                # 4-byte Folded Reload
	addli r3, zero, 960
	load.d r[22:23], -1816(r30)             # 8-byte Folded Reload
	zext_int2long r[6:7], r3
	loadli.w r3,  -1860(r30)                # 4-byte Folded Reload
	zext_int2long r[1:2], r1
	min.ul r[6:7], r[1:2], r[6:7]
	sext_int2long r[16:17], r3
	addli r3, zero, 18
	addli.d r[6:7], r[6:7], 64
	min.sl r[19:20], r[16:17], r[22:23]
	max.ul r[6:7], r[6:7], r[1:2]
	addli.d r[19:20], r[19:20], 64
	sub.sl r[1:2], r[6:7], r[1:2]
	max.sl r[6:7], r[19:20], r[16:17]
	load.d r[19:20], -1840(r30)             # 8-byte Folded Reload
	sub.sl r[6:7], r[6:7], r[16:17]
	load.d r[16:17], 16(r30)
	min.ul r[1:2], r[1:2], r[22:23]
	sll.d r[19:20], r[19:20], r3
	addli r3, zero, 10
	min.sl r[6:7], r[6:7], r[22:23]
	load.d r[22:23], -1856(r30)             # 8-byte Folded Reload
	slli r1, r1, 2
	addli r2, zero, 4096
	add.ul r[16:17], r[16:17], r[19:20]
	xwait r3, 0
	lock zero, r27
	addli r3, zero, 1
	loadli.w r20,  28(r30)
	addli r19, zero, 3
	dma_cfg zero, zero, zero, 0
	add.ul r[16:17], r[16:17], r[22:23]
	dma_cfg zero, r3, zero, 1
	dma_cfg r17, zero, zero, 2
	dma_cfg r16, r5, r1, 3
	addli r1, zero, 256
	loadli.w r16,  32(r30)
	.loc	1 73 26 is_stmt 1               # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:73:26
	core_id r17
	.loc	1 101 67                        # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:101:67
	dma_cfg r2, r1, r6, 4
	addli r1, zero, 11
	dma_run zero
	unlock r27
	xsignal r1, 0
	load.d r[22:23], -1832(r30)             # 8-byte Folded Reload
.LBB0_37:                               # %.thread95
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:0:67
	lui r11, 8
	j .LBB0_7
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:22:0
	xsignal zero, 0
	bneq r17, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py:22:0
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
.asciz	"cit3j7i4tgf24lk3orlsz7gngoc7n7dxw2vp4xkf2gjzwewxy6fm.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/it" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
