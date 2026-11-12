	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/3g" "c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py"
	.loc	1 22 0                          # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1640
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:73:26
	core_id r21
	addli r30, sp, 1576
	xsignal_mode_cfg r1
	beq r21, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -244(r30)
	storeli.w zero, -888(r30)
	storeli.w zero, -1132(r30)
	storeli.w zero, -1520(r30)
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
	loadli.w r8,  -244(r30)
	loadli.w r9,  -888(r30)
	loadli.w r10,  -1132(r30)
	sext_int2long r[17:18], r1
	addli r11, zero, 64
	addli r15, zero, 1
	addli r28, zero, 8
	addli r14, zero, 7
	addli r23, zero, 2
	addli r16, zero, 4
	addli r12, zero, 96
	addli r20, zero, 60
	addli r22, zero, 6
	addli r24, zero, 3
	addli r25, zero, 128
	addli r26, zero, 32
	addli r27, zero, 5
	addli r19, zero, 256
	storeli.w zero, -1524(r30)              # 4-byte Folded Spill
	store.d r[3:4], -1552(r30)              # 8-byte Folded Spill
	loadli.w r4,  -1520(r30)
	j .LBB0_9
.LBB0_5:                                # %.split17.thread95
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:86:20
	addli r10, r10, 4
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:73:26
	addli r3, zero, 10
	addli r23, zero, 2
	xsignal r3, 0
.LBB0_7:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:0:26
	load.d r[17:18], -1536(r30)             # 8-byte Folded Reload
	addli r12, zero, 96
	addli r27, zero, 5
.LBB0_8:                                # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -1552(r30)               # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 1
	setlt.sl r3, r[17:18], r[3:4]
	loadli.w r4,  -1524(r30)                # 4-byte Folded Reload
	addli r4, r4, 1
	storeli.w r4, -1524(r30)                # 4-byte Folded Spill
	addli r4, r1, 0
	beq r3, zero, .LBB0_38
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	div.s r1, r17, r1
	div.s r5, r1, r3
	.loc	1 53 22 is_stmt 1               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:53:22
	div.s r6, r5, r11
	.loc	1 54 41                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:54:41
	slli r1, r6, 3
	.loc	1 54 30 is_stmt 0               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:54:30
	sub.s r7, r15, r1
	.loc	1 54 50                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:54:50
	min.s r13, r7, r28
	.loc	1 55 40 is_stmt 1               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:55:40
	mod.s r7, r5, r13
	.loc	1 55 34 is_stmt 0               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:55:34
	add.s r1, r1, r7
	.loc	1 95 15 is_stmt 1               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:95:15
	zext_int2long r[2:3], r1
	.loc	1 73 26                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:73:26
	store.d r[2:3], -1544(r30)              # 8-byte Folded Spill
	bneq r21, r16, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:0:26
	beq r21, r15, .LBB0_32
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r21, r23, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r5, zero, 0
	lui r3, 32
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	add.s r1, r10, r5
	add.s r6, r4, r5
	xwait r23, 0
	xwait r27, 0
	lock zero, zero
	.loc	1 73 26                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:73:26
	addli r5, r5, 1
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	ds_cfg r24, zero, 0
	.loc	1 81 20                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:81:20
	mod.s r1, r1, r20
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	mod.s r6, r6, r12
	ds_cfg r11, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r25, zero, 13
	.loc	1 81 20                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:81:20
	slli r1, r1, 14
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	slli r6, r6, 13
	.loc	1 81 20                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:81:20
	add.s r1, r1, r3
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	shuffle_batch r6, r1, r26, 1
	unlock zero
	xsignal r24, 0
	xsignal r16, 0
	bneq r5, r16, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:73:26
	addli r9, r9, 4
	addli r8, r8, 4
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	add.s r1, r4, r5
	add.s r10, r10, r5
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:0:25
	slli r6, r6, 6
	loadli.w r3,  -1524(r30)                # 4-byte Folded Reload
	slli r1, r1, 7
	store.d r[17:18], -1536(r30)            # 8-byte Folded Spill
	addli r18, zero, 0
	sub.s r5, r5, r6
	storeli.w r1, -1568(r30)                # 4-byte Folded Spill
	mod.s r6, r3, r23
	addli r23, zero, 0
	div.s r5, r5, r13
	zext_int2long r[27:28], r5
	slli r1, r5, 7
	sll.d r[27:28], r[27:28], r14
	.loc	1 73 26 is_stmt 1               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:73:26
	storeli.w r1, -1576(r30)                # 4-byte Folded Spill
	sll.d r[1:2], r[27:28], r15
	slli r27, r6, 16
	load.d r[5:6], 8(r30)
	addli r28, zero, 8
	store.d r[1:2], -1560(r30)              # 8-byte Folded Spill
	add.ul r[5:6], r[5:6], r[1:2]
	lui r2, 272
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	addli r3, zero, 9
	xwait r22, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r24, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r25, zero, 13
	shuffle_coa r17, r13, r26, 2
	unlock zero
	xsignal r14, 0
	xsignal r28, 0
	.loc	1 73 26                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:73:26
	addli r18, r18, 1
	beq r18, r16, .LBB0_29
.LBB0_18:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	addli r23, r23, 1
	addli r4, r1, 0
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 86 20                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:86:20
	mod.s r7, r8, r20
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	addli r1, zero, 160
	.loc	1 86 20                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:86:20
	addli r8, r8, 1
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	mod.s r12, r9, r1
	addli r1, r4, 1
	addli r9, r9, 1
	.loc	1 86 20                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:86:20
	slli r7, r7, 13
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	slli r17, r12, 13
	.loc	1 86 20                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:86:20
	add.s r13, r7, r2
	beq r21, r14, .LBB0_17
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:0:20
	bneq r21, r22, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:86:25
	zext_int2long r[3:4], r18
	.loc	1 86 20                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:86:20
	addli r7, zero, 16
	xwait r14, 0
	lock zero, r16
	addli r19, zero, 256
	dma_cfg r15, r15, zero, 0
	sll.d r[3:4], r[3:4], r7
	addli r7, zero, 256
	add.ul r[3:4], r[5:6], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r13, r3, r7, 3
	addli r3, zero, 2048
	dma_cfg r7, r3, r26, 4
	dma_run zero
	unlock r16
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:73:26
	addli r18, r18, 1
	bneq r18, r16, .LBB0_18
	j .LBB0_29
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	bneq r21, r16, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:0:0
	addli r3, zero, 96
	addli r13, zero, 1
	addli r15, zero, 1
	addli r7, zero, 0
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	xwait r16, 0
	xwait r28, 0
	.loc	1 0 0                           # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:0:0
	mod.s r3, r4, r3
	slli r4, r3, 13
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	beq r23, zero, .LBB0_25
.LBB0_24:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r3, r7, 12
	slli r7, r7, 8
	lock zero, r13
	mm_cfg r11, r26, r25, 0
	or r3, r3, r17
	or r7, r7, r27
	mm_cfg r13, r16, r13, 2
	mm_acc r7, r4, r3, 5
	andi r3, r15, 1
	addli r7, zero, 1
	addli r15, zero, 0
	unlock r13
	bneq r3, zero, .LBB0_24
	j .LBB0_26
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r3, r7, 12
	slli r7, r7, 8
	lock zero, r13
	mm_cfg r11, r26, r25, 0
	or r3, r3, r17
	or r7, r7, r27
	mm_cfg r13, r16, r13, 2
	mm r7, r4, r3, 5
	andi r3, r15, 1
	addli r7, zero, 1
	addli r15, zero, 0
	unlock r13
	bneq r3, zero, .LBB0_25
.LBB0_26:                               # %.thread6.thread93
                                        #   in Loop: Header=BB0_19 Depth=2
	addli r3, zero, 5
	.loc	1 73 26 is_stmt 1               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:73:26
	addli r18, r18, 1
	addli r15, zero, 1
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	bneq r18, r16, .LBB0_18
	j .LBB0_5
.LBB0_27:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:73:26
	addli r18, r18, 1
	bneq r18, r16, .LBB0_18
# %bb.28:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:86:20
	addli r10, r10, 4
	addli r23, zero, 2
	bneq r21, zero, .LBB0_7
	j .LBB0_31
.LBB0_29:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r10, r10, 4
	.loc	1 73 26                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:73:26
	beq r21, r16, .LBB0_6
# %bb.30:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:0:26
	addli r23, zero, 2
	bneq r21, zero, .LBB0_7
.LBB0_31:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67 is_stmt 1              # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:101:67
	loadli.w r2,  -1576(r30)                # 4-byte Folded Reload
	addli r5, zero, 896
	zext_int2long r[17:18], zero
	addli r7, zero, 10
	zext_int2long r[5:6], r5
	zext_int2long r[3:4], r2
	loadli.w r2,  -1568(r30)                # 4-byte Folded Reload
	min.ul r[5:6], r[3:4], r[5:6]
	sext_int2long r[12:13], r2
	addli.d r[5:6], r[5:6], 128
	min.sl r[17:18], r[12:13], r[17:18]
	max.ul r[5:6], r[5:6], r[3:4]
	addli.d r[17:18], r[17:18], 128
	sub.sl r[3:4], r[5:6], r[3:4]
	zext_int2long r[5:6], r25
	min.ul r[2:3], r[3:4], r[5:6]
	store.d r[2:3], -1568(r30)              # 8-byte Folded Spill
	max.sl r[2:3], r[17:18], r[12:13]
	load.d r[17:18], -1544(r30)             # 8-byte Folded Reload
	store.d r[2:3], -1576(r30)              # 8-byte Folded Spill
	addli r3, zero, 18
	sll.d r[3:4], r[17:18], r3
	load.d r[17:18], -1576(r30)             # 8-byte Folded Reload
	sub.sl r[12:13], r[17:18], r[12:13]
	load.d r[17:18], 16(r30)
	min.sl r[5:6], r[12:13], r[5:6]
	load.d r[12:13], -1560(r30)             # 8-byte Folded Reload
	xwait r7, 0
	addli r7, zero, 5
	add.ul r[3:4], r[17:18], r[3:4]
	lock zero, r7
	dma_cfg r15, zero, zero, 0
	add.ul r[3:4], r[3:4], r[12:13]
	dma_cfg zero, r15, zero, 1
	load.d r[12:13], -1568(r30)             # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r7, r12, 2
	dma_cfg r3, r27, r7, 3
	addli r3, zero, 512
	addli r4, zero, 2048
	addli r27, zero, 5
	dma_cfg r4, r3, r5, 4
	addli r3, zero, 11
	dma_run zero
	unlock r27
	xsignal r3, 0
	load.d r[17:18], -1536(r30)             # 8-byte Folded Reload
	j .LBB0_37
.LBB0_32:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:0:67
	load.d r[2:3], -1544(r30)               # 8-byte Folded Reload
	addli r1, zero, 14
	store.d r[17:18], -1536(r30)            # 8-byte Folded Spill
	addli r5, zero, 0
	sll.d r[17:18], r[2:3], r1
	j .LBB0_34
.LBB0_33:                               # %.thread.us
                                        #   in Loop: Header=BB0_34 Depth=2
	add.s r1, r10, r5
	.loc	1 81 20 is_stmt 1               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:81:20
	sll.d r[12:13], r[27:28], r15
	load.d r[27:28], 0(r30)
	lui r3, 32
	.loc	1 81 25 is_stmt 0               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:81:25
	srl.d r[6:7], r[6:7], r14
	.loc	1 81 20                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:81:20
	xwait r24, 0
	lock zero, r16
	.loc	1 73 26 is_stmt 1               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:73:26
	addli r5, r5, 1
	.loc	1 81 20                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:81:20
	dma_cfg r15, r15, zero, 0
	.loc	1 81 0 is_stmt 0                # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:81:0
	mod.s r1, r1, r20
	.loc	1 81 20                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:81:20
	sub.s r6, r25, r6
	add.ul r[12:13], r[27:28], r[12:13]
	addli r27, zero, 5
	dma_cfg zero, r13, zero, 2
	.loc	1 81 0                          # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:81:0
	slli r1, r1, 14
	add.s r1, r1, r3
	.loc	1 81 20                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:81:20
	dma_cfg r1, r12, r11, 3
	dma_cfg r25, r19, r6, 4
	dma_run zero
	unlock r16
	xsignal r23, 0
	.loc	1 73 26 is_stmt 1               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:73:26
	beq r5, r16, .LBB0_36
.LBB0_34:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:86:25
	zext_int2long r[6:7], r5
	addli r1, zero, 16383
	sll.d r[6:7], r[6:7], r27
	zext_int2long r[12:13], r1
	.loc	1 81 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:81:25
	add.ul r[27:28], r[6:7], r[17:18]
	setlt.ul r1, r[12:13], r[27:28]
	bneq r1, zero, .LBB0_33
# %bb.35:                               # %.thread.us
                                        #   in Loop: Header=BB0_34 Depth=2
	.loc	1 0 25 is_stmt 0                # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:0:25
	addli.d r[6:7], r[27:28], 0
	j .LBB0_33
.LBB0_36:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[17:18], -1536(r30)             # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:73:26
	addli r1, r4, 4
	addli r9, r9, 4
	addli r8, r8, 4
	.loc	1 89 25                         # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:89:25
	add.s r10, r10, r5
	addli r28, zero, 8
.LBB0_37:                               # %.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:0:25
	addli r12, zero, 96
	j .LBB0_8
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:22:0
	xsignal zero, 0
	bneq r21, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:22:0
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
	.loc	1 22 0 epilogue_begin           # c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py:22:0
	addli sp, sp, 1576
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
	.long	1640                            # 0x668
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
.asciz	"c3g5g4f43pw6zvjy63ksrkvwhwnxpt3dwhrleu2ivc7jqlw6g7x3.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/3g" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
