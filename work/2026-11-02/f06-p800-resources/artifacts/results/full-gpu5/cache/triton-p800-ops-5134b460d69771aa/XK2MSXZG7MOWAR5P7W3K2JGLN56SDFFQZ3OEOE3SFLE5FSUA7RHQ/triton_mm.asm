	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/yd" "cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py"
	.loc	1 22 0                          # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1936
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:73:26
	core_id r2
	addli r30, sp, 1872
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -388(r30)
	storeli.w zero, -1032(r30)
	storeli.w zero, -1420(r30)
	storeli.w zero, -1808(r30)
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
	ble.s r3, r1, .LBB0_36
# %bb.4:                                # %.lr.ph
	loadli.w r5,  -388(r30)
	loadli.w r28,  -1032(r30)
	loadli.w r10,  -1420(r30)
	loadli.w r27,  -1808(r30)
	sext_int2long r[3:4], r3
	sext_int2long r[8:9], r1
	addli r13, zero, 128
	addli r14, zero, 6
	addli r15, zero, 2
	addli r16, zero, 4
	addli r18, zero, 96
	addli r26, zero, 160
	addli r21, zero, 7
	addli r23, zero, 64
	addli r24, zero, 32
	addli r22, zero, 5
	lui r25, 8
	addli r17, zero, 0
	store.d r[3:4], -1840(r30)              # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split17.thread89
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:86:20
	addli r10, r10, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:101:67
	addli r28, r1, 1
	.loc	1 73 26                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:101:67
	addli r27, r25, 1
	addli r5, r7, 1
	addli r13, zero, 128
	addli r22, zero, 5
	lui r25, 8
	.loc	1 73 26                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:73:26
	xsignal r1, 0
	load.d r[8:9], -1816(r30)               # 8-byte Folded Reload
	loadli.w r17,  -1820(r30)               # 4-byte Folded Reload
.LBB0_7:                                # %.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:0:26
	load.d r[3:4], -1840(r30)               # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	addli r17, r17, 1
	setlt.sl r1, r[8:9], r[3:4]
	beq r1, zero, .LBB0_36
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	addli r11, zero, 1
	.loc	1 54 50 is_stmt 1               # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:54:50
	addli r2, zero, 8
	div.s r1, r8, r1
	div.s r3, r1, r3
	.loc	1 53 22                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:53:22
	div.s r4, r3, r13
	.loc	1 54 41                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:54:41
	slli r1, r4, 3
	.loc	1 54 30 is_stmt 0               # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:54:30
	sub.s r6, r11, r1
	.loc	1 54 50                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:54:50
	min.s r6, r6, r2
	addli r2, zero, 1
	.loc	1 55 40 is_stmt 1               # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:55:40
	mod.s r7, r3, r6
	.loc	1 55 34 is_stmt 0               # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:55:34
	add.s r1, r1, r7
	.loc	1 73 26 is_stmt 1               # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:73:26
	core_id r7
	.loc	1 95 15                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:95:15
	zext_int2long r[19:20], r1
	.loc	1 73 26                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:73:26
	store.d r[19:20], -1832(r30)            # 8-byte Folded Spill
	bneq r7, r16, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r7, zero, 11
	lui r19, 200
	addli r20, zero, 256
	xwait r7, 0
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:0:26
	lui r19, 200
	beq r7, r11, .LBB0_27
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli r20, zero, 256
	bneq r7, r15, .LBB0_14
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	addli r2, zero, 3
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:81:20
	mod.s r3, r10, r18
	.loc	1 89 25                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:89:25
	mod.s r4, r27, r18
	xwait r15, 0
	xwait r22, 0
	lock zero, zero
	addli r27, r27, 1
	.loc	1 81 20                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:81:20
	addli r10, r10, 1
	.loc	1 89 25                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:89:25
	ds_cfg r15, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:81:20
	slli r3, r3, 13
	.loc	1 89 25                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:89:25
	slli r4, r4, 13
	.loc	1 81 20                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:81:20
	add.s r3, r3, r25
	.loc	1 89 25                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:89:25
	shuffle_batch r4, r3, r24, 1
	.loc	1 73 26                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:73:26
	andi r3, r1, 1
	addli r1, zero, 0
	.loc	1 89 25                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:89:25
	unlock zero
	xsignal r2, 0
	xsignal r16, 0
	bneq r3, zero, .LBB0_13
	j .LBB0_30
.LBB0_14:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:0:25
	slli r4, r4, 7
	slli r1, r1, 6
	store.d r[8:9], -1816(r30)              # 8-byte Folded Spill
	addli r13, zero, 0
	addli r22, zero, 0
	.loc	1 73 26 is_stmt 1               # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:73:26
	core_id r9
	storeli.w r17, -1820(r30)               # 4-byte Folded Spill
	sub.s r3, r3, r4
	mod.s r4, r17, r15
	storeli.w r1, -1856(r30)                # 4-byte Folded Spill
	div.s r3, r3, r6
	zext_int2long r[6:7], r3
	slli r1, r3, 6
	sll.d r[11:12], r[6:7], r14
	slli r6, r4, 14
	load.d r[3:4], 8(r30)
	storeli.w r1, -1864(r30)                # 4-byte Folded Spill
	sll.d r[7:8], r[11:12], r15
	addli r11, zero, 1
	add.ul r[3:4], r[3:4], r[7:8]
	store.d r[7:8], -1848(r30)              # 8-byte Folded Spill
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:89:25
	addli r8, zero, 9
	xwait r14, 0
	xwait r8, 0
	lock zero, zero
	addli r8, zero, 8
	ds_cfg r15, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r12, r17, r24, 2
	unlock zero
	xsignal r21, 0
	xsignal r8, 0
	.loc	1 73 26                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:73:26
	andi r8, r11, 1
	bneq r8, zero, .LBB0_25
	j .LBB0_26
.LBB0_16:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:89:25
	add.s r7, r5, r22
	add.s r1, r28, r22
	add.s r25, r27, r22
	.loc	1 86 20                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:86:20
	mod.s r12, r7, r18
	.loc	1 89 25                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:89:25
	mod.s r17, r1, r26
	.loc	1 86 20                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:86:20
	slli r8, r12, 13
	.loc	1 89 25                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:89:25
	slli r12, r17, 13
	.loc	1 86 20                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:86:20
	add.s r17, r8, r19
	beq r9, r21, .LBB0_15
# %bb.17:                               # %.split
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 20 is_stmt 0                # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:0:20
	bneq r9, r14, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 86 20                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:86:20
	zext_int2long r[8:9], r13
	xwait r21, 0
	lock zero, r16
	dma_cfg zero, zero, zero, 0
	add.ul r[8:9], r[3:4], r[8:9]
	dma_cfg zero, r9, zero, 2
	dma_cfg r17, r8, r20, 3
	addli r8, zero, 4096
	.loc	1 73 26 is_stmt 1               # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:73:26
	core_id r9
	.loc	1 86 20                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:86:20
	dma_cfg r20, r8, r24, 4
	dma_run zero
	unlock r16
	xsignal r14, 0
	.loc	1 73 26                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:73:26
	andi r8, r11, 1
	bneq r8, zero, .LBB0_25
	j .LBB0_26
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 26 is_stmt 0                # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:0:26
	andi r11, r11, 1
	.loc	1 89 25 is_stmt 1               # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:89:25
	bneq r9, r16, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 25 is_stmt 0                # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:0:25
	mod.s r8, r25, r18
	.loc	1 89 25                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:89:25
	addli r2, zero, 8
	xwait r16, 0
	xwait r2, 0
	addli r2, zero, 1
	lock zero, r2
	mm_cfg r23, r24, r23, 0
	slli r13, r8, 13
	addli r8, zero, 1
	mm_cfg r15, r15, r8, 2
	beq r22, zero, .LBB0_23
# %bb.21:                               # %.preheader8
                                        #   in Loop: Header=BB0_16 Depth=2
	mm_acc r6, r13, r12, 8
	j .LBB0_24
.LBB0_22:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 25                          # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:0:25
	bneq r11, zero, .LBB0_25
	j .LBB0_31
.LBB0_23:                               # %.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:89:25
	mm r6, r13, r12, 8
.LBB0_24:                               # %.thread6.thread88
                                        #   in Loop: Header=BB0_16 Depth=2
	unlock r8
	addli r8, zero, 5
	addli r2, zero, 1
	xsignal r8, 0
	addli r8, zero, 9
	xsignal r8, 0
	.loc	1 73 26 is_stmt 1               # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:73:26
	beq r11, zero, .LBB0_5
.LBB0_25:                               # %.split.backedge
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:89:25
	addli r22, r22, 1
	lui r13, 32
	addli r11, zero, 0
	j .LBB0_16
.LBB0_26:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:86:20
	addli r10, r10, 2
	.loc	1 73 26                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:73:26
	beq r9, r16, .LBB0_6
	j .LBB0_32
.LBB0_27:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:0:26
	load.d r[2:3], -1832(r30)               # 8-byte Folded Reload
	addli r1, zero, 14
	addli r6, zero, 0
	addli r19, zero, 256
	sll.d r[3:4], r[2:3], r1
	load.d r[1:2], 0(r30)
	add.ul r[3:4], r[1:2], r[3:4]
	addli r1, zero, 1
	addli r2, zero, 3
.LBB0_28:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:81:20
	mod.s r7, r10, r18
	.loc	1 86 25                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:86:25
	zext_int2long r[11:12], r6
	.loc	1 81 20                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:81:20
	xwait r2, 0
	lock zero, r16
	addli r10, r10, 1
	dma_cfg zero, zero, zero, 0
	sll.d r[11:12], r[11:12], r15
	add.ul r[11:12], r[3:4], r[11:12]
	slli r6, r7, 13
	dma_cfg zero, r12, zero, 2
	.loc	1 73 26                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:73:26
	andi r7, r1, 1
	addli r1, zero, 0
	.loc	1 81 20                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:81:20
	add.s r6, r6, r25
	dma_cfg r6, r11, r13, 3
	addli r6, zero, 32
	dma_cfg r13, r19, r23, 4
	dma_run zero
	unlock r16
	xsignal r15, 0
	.loc	1 73 26                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:73:26
	bneq r7, zero, .LBB0_28
# %bb.29:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r27, r27, 2
.LBB0_30:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r28, r28, 2
	addli r5, r5, 2
	.loc	1 89 25                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:89:25
	j .LBB0_7
.LBB0_31:                               # %.split17.thread87
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:86:20
	addli r10, r10, 2
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:0:20
	load.d r[8:9], -1816(r30)               # 8-byte Folded Reload
	loadli.w r17,  -1820(r30)               # 4-byte Folded Reload
	.loc	1 101 67 is_stmt 1              # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:101:67
	addli r28, r1, 1
	addli r27, r25, 1
	addli r5, r7, 1
	core_id r1
	beq r1, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:0:67
	addli r13, zero, 128
	addli r22, zero, 5
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:101:67
	loadli.w r1,  -1864(r30)                # 4-byte Folded Reload
	addli r22, zero, 5
	loadli.w r17,  -1820(r30)               # 4-byte Folded Reload
	addli r13, zero, 128
	zext_int2long r[3:4], r1
	addli r1, zero, 960
	zext_int2long r[7:8], r1
	loadli.w r1,  -1856(r30)                # 4-byte Folded Reload
	min.ul r[7:8], r[3:4], r[7:8]
	sext_int2long r[11:12], r1
	addli r1, zero, 18
	addli.d r[7:8], r[7:8], 64
	store.d r[7:8], -1864(r30)              # 8-byte Folded Spill
	zext_int2long r[7:8], zero
	store.d r[7:8], -1856(r30)              # 8-byte Folded Spill
	load.d r[7:8], -1864(r30)               # 8-byte Folded Reload
	max.ul r[7:8], r[7:8], r[3:4]
	store.d r[7:8], -1864(r30)              # 8-byte Folded Spill
	load.d r[7:8], -1856(r30)               # 8-byte Folded Reload
	min.sl r[7:8], r[11:12], r[7:8]
	store.d r[7:8], -1856(r30)              # 8-byte Folded Spill
	load.d r[7:8], -1864(r30)               # 8-byte Folded Reload
	sub.sl r[3:4], r[7:8], r[3:4]
	zext_int2long r[7:8], r23
	store.d r[3:4], -1864(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1856(r30)               # 8-byte Folded Reload
	addli.d r[3:4], r[3:4], 64
	store.d r[3:4], -1872(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1864(r30)               # 8-byte Folded Reload
	min.ul r[3:4], r[3:4], r[7:8]
	store.d r[3:4], -1856(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1872(r30)               # 8-byte Folded Reload
	max.sl r[3:4], r[3:4], r[11:12]
	store.d r[3:4], -1864(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1832(r30)               # 8-byte Folded Reload
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 10
	store.d r[3:4], -1832(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1864(r30)               # 8-byte Folded Reload
	sub.sl r[3:4], r[3:4], r[11:12]
	load.d r[11:12], -1832(r30)             # 8-byte Folded Reload
	store.d r[3:4], -1864(r30)              # 8-byte Folded Spill
	load.d r[3:4], 16(r30)
	add.ul r[3:4], r[3:4], r[11:12]
	load.d r[11:12], -1864(r30)             # 8-byte Folded Reload
	min.sl r[7:8], r[11:12], r[7:8]
	store.d r[7:8], -1832(r30)              # 8-byte Folded Spill
	load.d r[7:8], -1848(r30)               # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r22
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r2, zero, 1
	load.d r[1:2], -1856(r30)               # 8-byte Folded Reload
	add.ul r[3:4], r[3:4], r[7:8]
	dma_cfg r4, zero, zero, 2
	slli r1, r1, 2
	dma_cfg r3, r6, r1, 3
	addli r1, zero, 4096
	load.d r[2:3], -1832(r30)               # 8-byte Folded Reload
	dma_cfg r1, r20, r2, 4
	addli r1, zero, 11
	load.d r[8:9], -1816(r30)               # 8-byte Folded Reload
	dma_run zero
	unlock r22
	xsignal r1, 0
.LBB0_35:                               # %.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67                          # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:0:67
	lui r25, 8
	j .LBB0_7
.LBB0_36:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:22:0
	core_id r1
	xsignal zero, 0
	bneq r1, zero, .LBB0_38
# %bb.37:
	.loc	1 0 0 is_stmt 0                 # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:22:0
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
.LBB0_38:
	.loc	1 22 0 epilogue_begin           # cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py:22:0
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
.asciz	"cydi4ey7ouczgu6rqxkq5txf4lpvtyn2xvh267gihftbimvjitn6.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/yd" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
