	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/mv" "cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py"
	.loc	1 22 0                          # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1944
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	core_id r17
	addli r30, sp, 1880
	xsignal_mode_cfg r1
	beq r17, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:0:26
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
	min.s r3, r2, r3
	ble.s r3, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r3
	sext_int2long r[22:23], r1
	loadli.w r28,  -388(r30)
	loadli.w r26,  -1032(r30)
	loadli.w r8,  -1420(r30)
	loadli.w r1,  -1808(r30)
	addli r18, zero, 256
	addli r10, zero, 32
	addli r12, zero, 6
	addli r13, zero, 2
	addli r14, zero, 4
	addli r16, zero, 96
	addli r19, zero, 7
	addli r21, zero, 64
	addli r11, zero, 5
	lui r20, 8
	addli r25, zero, 3
	addli r27, zero, 0
	store.d r[2:3], -1848(r30)              # 8-byte Folded Spill
	lui r3, 15
	ori r5, r3, 4095
	lui r3, 1023
	lui r4, 1047552
	ori r15, r3, 4095
	store.d r[4:5], -1880(r30)              # 8-byte Folded Spill
	storeli.w r15, -1868(r30)               # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:86:20
	addli r8, r8, 64
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	addli r2, zero, 10
	.loc	1 101 67                        # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:101:67
	addli r1, r11, 1
	addli r28, r20, 1
	addli r26, r5, 1
	addli r11, zero, 5
	lui r20, 8
	.loc	1 73 26                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	xsignal r2, 0
	load.d r[22:23], -1824(r30)             # 8-byte Folded Reload
	loadli.w r15,  -1868(r30)               # 4-byte Folded Reload
.LBB0_7:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:0:26
	loadli.w r27,  -1828(r30)               # 4-byte Folded Reload
	addli r25, zero, 3
.LBB0_8:                                # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[2:3], -1848(r30)               # 8-byte Folded Reload
	addli.d r[22:23], r[22:23], 1
	addli r27, r27, 1
	setlt.sl r2, r[22:23], r[2:3]
	beq r2, zero, .LBB0_39
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r2,  32(r30)
	div.s r3, r22, r2
	loadli.w r2,  28(r30)
	div.s r9, r3, r2
	addli r2, zero, 8
	.loc	1 53 22 is_stmt 1               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:53:22
	div.s r6, r9, r18
	.loc	1 54 41                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:54:41
	slli r3, r6, 3
	.loc	1 54 30 is_stmt 0               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:54:30
	sub.s r4, r10, r3
	.loc	1 54 50                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:54:50
	min.s r7, r4, r2
	.loc	1 55 40 is_stmt 1               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:55:40
	mod.s r4, r9, r7
	.loc	1 55 34 is_stmt 0               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:55:34
	add.s r5, r3, r4
	.loc	1 95 15 is_stmt 1               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:95:15
	zext_int2long r[2:3], r5
	store.d r[2:3], -1840(r30)              # 8-byte Folded Spill
	addli r2, zero, 1984
	zext_int2long r[2:3], r2
	.loc	1 73 26                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	store.d r[2:3], -1816(r30)              # 8-byte Folded Spill
	bneq r17, r14, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r2, zero, 11
	xwait r2, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:0:26
	addli r2, zero, 1
	beq r17, r2, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r17, r13, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 0
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	add.s r2, r8, r3
	add.s r4, r1, r3
	xwait r13, 0
	xwait r11, 0
	lock zero, zero
	.loc	1 73 26                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	ds_cfg r13, zero, 0
	.loc	1 81 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:20
	mod.s r2, r2, r16
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	mod.s r4, r4, r16
	ds_cfg r10, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r21, zero, 13
	.loc	1 81 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:20
	slli r2, r2, 13
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	slli r4, r4, 13
	.loc	1 81 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:20
	add.s r2, r2, r20
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	shuffle_batch r4, r2, r10, 1
	unlock zero
	xsignal r25, 0
	xsignal r14, 0
	bneq r3, r21, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	addli r26, r26, 64
	addli r28, r28, 64
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	add.s r1, r1, r3
	add.s r8, r8, r3
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:0:25
	slli r6, r6, 8
	slli r2, r5, 6
	store.d r[22:23], -1824(r30)            # 8-byte Folded Spill
	addli r15, zero, 0
	storeli.w r27, -1828(r30)               # 4-byte Folded Spill
	sub.s r6, r9, r6
	storeli.w r2, -1860(r30)                # 4-byte Folded Spill
	div.s r6, r6, r7
	mod.s r7, r27, r13
	addli r27, zero, 0
	zext_int2long r[17:18], r6
	slli r2, r6, 6
	slli r22, r7, 14
	addli r7, zero, 160
	lui r6, 200
	sll.d r[17:18], r[17:18], r12
	.loc	1 73 26 is_stmt 1               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	storeli.w r2, -1864(r30)                # 4-byte Folded Spill
	load.d r[2:3], 8(r30)
	sll.d r[4:5], r[17:18], r13
	addli r18, zero, 256
	core_id r17
	store.d r[4:5], -1856(r30)              # 8-byte Folded Spill
	add.ul r[23:24], r[2:3], r[4:5]
	addli r4, zero, 8
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	addli r2, zero, 9
	xwait r12, 0
	xwait r2, 0
	lock zero, zero
	ds_cfg r13, zero, 0
	ds_cfg r21, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r21, zero, 13
	shuffle_coa r25, r9, r10, 2
	unlock zero
	xsignal r19, 0
	xsignal r4, 0
	.loc	1 73 26                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	addli r15, r15, 1
	bneq r15, r21, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	add.s r20, r28, r27
	add.s r5, r26, r27
	add.s r11, r1, r27
	.loc	1 86 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:86:20
	mod.s r2, r20, r16
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	mod.s r3, r5, r7
	.loc	1 86 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:86:20
	slli r2, r2, 13
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	slli r25, r3, 13
	.loc	1 86 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:86:20
	add.s r9, r2, r6
	beq r17, r19, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:0:20
	bneq r17, r12, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:86:25
	zext_int2long r[2:3], r15
	.loc	1 86 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:86:20
	addli r25, zero, 18
	xwait r19, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	sll.d r[2:3], r[2:3], r25
	add.ul r[2:3], r[23:24], r[2:3]
	dma_cfg zero, r3, zero, 2
	dma_cfg r9, r2, r18, 3
	addli r2, zero, 8192
	dma_cfg r18, r2, r10, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	addli r15, r15, 1
	bneq r15, r21, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	bneq r17, r14, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:0:0
	mod.s r2, r11, r16
	addli r3, zero, 1
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	xwait r14, 0
	xwait r4, 0
	lock zero, r3
	mm_cfg r21, r10, r21, 0
	mm_cfg r13, r13, r3, 2
	.loc	1 0 0                           # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:0:0
	slli r6, r2, 13
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	beq r27, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r22, r6, r25, 8
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	addli r15, r15, 1
	bneq r15, r21, .LBB0_27
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	mm r22, r6, r25, 8
.LBB0_26:                               # %.thread6.thread92
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r2, zero, 1
	.loc	1 73 26                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	addli r15, r15, 1
	lui r6, 200
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	unlock r2
	addli r2, zero, 5
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 73 26                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	beq r15, r21, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	addli r27, r27, 1
	j .LBB0_18
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:86:20
	addli r8, r8, 64
	.loc	1 73 26                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	beq r17, r14, .LBB0_6
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:0:26
	load.d r[3:4], -1840(r30)               # 8-byte Folded Reload
	addli r2, zero, 17
	store.d r[22:23], -1824(r30)            # 8-byte Folded Spill
	storeli.w r27, -1828(r30)               # 4-byte Folded Spill
	addli r27, zero, 3
	addli r5, zero, 0
	sll.d r[22:23], r[3:4], r2
	load.d r[2:3], -1880(r30)               # 8-byte Folded Reload
	and.d r[17:18], r[22:23], r[2:3]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r2, zero, 2048
	.loc	1 81 25 is_stmt 1               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:25
	sub.sl r[24:25], r[6:7], r[24:25]
	.loc	1 81 20 is_stmt 0               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:20
	sll.d r[6:7], r[6:7], r13
	.loc	1 0 0                           # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:0:0
	add.s r4, r8, r5
	.loc	1 81 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:20
	xwait r27, 0
	lock zero, r14
	addli r9, zero, 128
	.loc	1 73 26 is_stmt 1               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	addli r5, r5, 1
	.loc	1 81 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:20
	dma_cfg zero, zero, zero, 0
	zext_int2long r[2:3], r2
	.loc	1 81 0 is_stmt 0                # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:0
	mod.s r4, r4, r16
	.loc	1 81 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:25
	div.sl r[2:3], r[24:25], r[2:3]
	.loc	1 81 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:20
	load.d r[24:25], 0(r30)
	add.ul r[6:7], r[24:25], r[6:7]
	.loc	1 81 0                          # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:0
	slli r4, r4, 13
	.loc	1 81 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:20
	dma_cfg zero, r7, zero, 2
	.loc	1 81 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:25
	load.d r[24:25], -1816(r30)             # 8-byte Folded Reload
	.loc	1 81 0                          # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:0
	add.s r4, r4, r20
	.loc	1 81 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:20
	dma_cfg r4, r6, r9, 3
	.loc	1 81 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:25
	min.sl r[24:25], r[2:3], r[24:25]
	sub.sl r[2:3], r[24:25], r[2:3]
	.loc	1 81 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:20
	addli r2, r2, 64
	addli r3, zero, 8192
	dma_cfg r9, r3, r2, 4
	dma_run zero
	unlock r14
	xsignal r13, 0
	.loc	1 73 26 is_stmt 1               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	beq r5, r21, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:86:25
	zext_int2long r[6:7], r5
	zext_int2long r[24:25], r15
	sll.d r[6:7], r[6:7], r11
	.loc	1 81 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:81:25
	add.ul r[6:7], r[6:7], r[22:23]
	setlt.ul r9, r[24:25], r[6:7]
	addli.d r[24:25], r[17:18], 0
	bneq r9, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:0:25
	zext_int2long r[24:25], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[22:23], -1824(r30)             # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	addli r1, r1, 64
	addli r26, r26, 64
	addli r28, r28, 64
	.loc	1 89 25                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:89:25
	add.s r8, r8, r5
	.loc	1 73 26                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	core_id r17
	addli r18, zero, 256
	j .LBB0_7
.LBB0_34:                               # %.split17.thread91
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:86:20
	addli r8, r8, 64
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:0:20
	loadli.w r15,  -1868(r30)               # 4-byte Folded Reload
	loadli.w r27,  -1828(r30)               # 4-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:101:67
	addli r1, r11, 1
	addli r26, r5, 1
	addli r28, r20, 1
	addli r25, zero, 3
	beq r17, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:0:67
	load.d r[22:23], -1824(r30)             # 8-byte Folded Reload
	addli r11, zero, 5
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:101:67
	loadli.w r2,  -1864(r30)                # 4-byte Folded Reload
	loadli.w r6,  -1860(r30)                # 4-byte Folded Reload
	load.d r[17:18], -1816(r30)             # 8-byte Folded Reload
	load.d r[23:24], -1840(r30)             # 8-byte Folded Reload
	addli r9, zero, 19
	addli r11, zero, 5
	zext_int2long r[2:3], r2
	sext_int2long r[6:7], r6
	sll.d r[23:24], r[23:24], r9
	addli r9, zero, 10
	min.ul r[4:5], r[2:3], r[17:18]
	min.sl r[17:18], r[6:7], r[17:18]
	addli.d r[4:5], r[4:5], 64
	addli.d r[17:18], r[17:18], 64
	max.ul r[4:5], r[4:5], r[2:3]
	max.sl r[17:18], r[17:18], r[6:7]
	sub.sl r[2:3], r[4:5], r[2:3]
	zext_int2long r[4:5], r21
	sub.sl r[6:7], r[17:18], r[6:7]
	load.d r[17:18], 16(r30)
	min.ul r[2:3], r[2:3], r[4:5]
	min.sl r[4:5], r[6:7], r[4:5]
	load.d r[6:7], -1856(r30)               # 8-byte Folded Reload
	xwait r9, 0
	lock zero, r11
	addli r9, zero, 1
	add.ul r[17:18], r[17:18], r[23:24]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r9, zero, 1
	slli r2, r2, 2
	add.ul r[6:7], r[17:18], r[6:7]
	addli r18, zero, 256
	.loc	1 73 26 is_stmt 1               # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:73:26
	core_id r17
	.loc	1 101 67                        # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:101:67
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, r22, r2, 3
	addli r2, zero, 8192
	dma_cfg r2, r18, r4, 4
	addli r2, zero, 11
	dma_run zero
	unlock r11
	xsignal r2, 0
	load.d r[22:23], -1824(r30)             # 8-byte Folded Reload
.LBB0_38:                               # %.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:0:67
	lui r20, 8
	j .LBB0_8
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:22:0
	xsignal zero, 0
	bneq r17, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py:22:0
	addli sp, sp, 1880
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
	.long	1944                            # 0x798
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
.asciz	"cmvfq2tg6jy52wwxiefizzp7kfa675osdxbtrvghk4n4jl3norqj.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/mv" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
