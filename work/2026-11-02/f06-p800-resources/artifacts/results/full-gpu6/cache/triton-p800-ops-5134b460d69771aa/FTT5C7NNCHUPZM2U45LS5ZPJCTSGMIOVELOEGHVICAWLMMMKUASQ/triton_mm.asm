	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/nf" "cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py"
	.loc	1 22 0                          # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1040
	addli r30, sp, 976
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	core_id r2
	loadli.w r12,  32(r30)
	loadli.w r6,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:0:26
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
	sext_int2long r[16:17], r1
	lui r1, 7
	loadli.w r27,  -192(r30)
	loadli.w r28,  -712(r30)
	loadli.w r24,  -908(r30)
	loadli.w r25,  -516(r30)
	addli r11, zero, 6
	addli r14, zero, 3
	addli r13, zero, 4
	addli r15, zero, 2
	addli r26, zero, 48
	lui r21, 204
	addli r20, zero, 7
	addli r22, zero, 64
	addli r23, zero, 16
	addli r18, zero, 5
	addli r9, zero, 256
	lui r5, 12
	storeli.w zero, -928(r30)               # 4-byte Folded Spill
	store.d r[3:4], -952(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 127
	lui r3, 1048448
	ori r1, r1, 4095
	store.d r[3:4], -976(r30)               # 8-byte Folded Spill
	storeli.w r1, -924(r30)                 # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split18.thread93
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:86:20
	addli r28, r28, 16
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:101:67
	addli r25, r1, 1
	.loc	1 73 26                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	addli r1, zero, 10
	loadli.w r12,  32(r30)
	loadli.w r6,  28(r30)
	.loc	1 101 67                        # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:101:67
	addli r24, r14, 1
	addli r27, r26, 1
	addli r14, zero, 3
	addli r26, zero, 48
	.loc	1 73 26                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	xsignal r1, 0
	load.d r[16:17], -936(r30)              # 8-byte Folded Reload
.LBB0_7:                                # %.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:0:26
	addli r18, zero, 5
	lui r5, 12
.LBB0_8:                                # %.thread94
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[3:4], -952(r30)                # 8-byte Folded Reload
	addli.d r[16:17], r[16:17], 1
	setlt.sl r1, r[16:17], r[3:4]
	loadli.w r3,  -928(r30)                 # 4-byte Folded Reload
	addli r3, r3, 1
	storeli.w r3, -928(r30)                 # 4-byte Folded Spill
	beq r1, zero, .LBB0_38
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r1, r16, r12
	addli r4, zero, 8
	addli r19, zero, 8
	div.s r7, r1, r6
	.loc	1 53 22 is_stmt 1               # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:53:22
	addli r1, zero, 128
	div.s r8, r7, r1
	.loc	1 54 41                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:54:41
	slli r1, r8, 3
	.loc	1 54 30 is_stmt 0               # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:54:30
	sub.s r3, r4, r1
	.loc	1 54 50                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:54:50
	min.s r10, r3, r4
	.loc	1 55 40 is_stmt 1               # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:55:40
	mod.s r3, r7, r10
	.loc	1 55 34 is_stmt 0               # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:55:34
	add.s r1, r1, r3
	.loc	1 95 15 is_stmt 1               # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:95:15
	zext_int2long r[3:4], r1
	store.d r[3:4], -944(r30)               # 8-byte Folded Spill
	addli r3, zero, 448
	zext_int2long r[3:4], r3
	.loc	1 73 26                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	store.d r[3:4], -920(r30)               # 8-byte Folded Spill
	bneq r2, r13, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:0:26
	addli r3, zero, 1
	beq r2, r3, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r15, .LBB0_16
# %bb.13:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 0
.LBB0_14:                               # %.thread.us23
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	add.s r3, r28, r1
	add.s r4, r24, r1
	xwait r15, 0
	xwait r18, 0
	lock zero, zero
	.loc	1 73 26                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	ds_cfg r15, zero, 0
	.loc	1 81 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:20
	mod.s r3, r3, r26
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	mod.s r4, r4, r26
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	.loc	1 81 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	slli r4, r4, 14
	.loc	1 81 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:20
	add.s r3, r3, r5
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	shuffle_batch r4, r3, r22, 1
	unlock zero
	xsignal r14, 0
	xsignal r13, 0
	bneq r1, r23, .LBB0_14
# %bb.15:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	addli r25, r25, 16
	addli r27, r27, 16
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	add.s r24, r24, r1
	add.s r28, r28, r1
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:0:25
	slli r3, r8, 7
	loadli.w r4,  -928(r30)                 # 4-byte Folded Reload
	slli r1, r1, 6
	addli r6, zero, 5
	addli r5, zero, 48
	addli r12, zero, 0
	store.d r[16:17], -936(r30)             # 8-byte Folded Spill
	sub.s r3, r7, r3
	storeli.w r1, -964(r30)                 # 4-byte Folded Spill
	mod.s r4, r4, r14
	div.s r3, r3, r10
	addli r10, zero, 0
	slli r18, r4, 14
	zext_int2long r[7:8], r3
	slli r1, r3, 6
	.loc	1 73 26 is_stmt 1               # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	load.d r[3:4], 8(r30)
	sll.d r[7:8], r[7:8], r11
	storeli.w r1, -968(r30)                 # 4-byte Folded Spill
	sll.d r[7:8], r[7:8], r15
	store.d r[7:8], -960(r30)               # 8-byte Folded Spill
	add.ul r[7:8], r[3:4], r[7:8]
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	addli r3, zero, 9
	xwait r11, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r15, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r16, r17, r22, 2
	unlock zero
	xsignal r20, 0
	xsignal r19, 0
	.loc	1 73 26                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	addli r12, r12, 1
	bneq r12, r23, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	add.s r26, r27, r10
	.loc	1 86 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:86:20
	addli r3, zero, 47
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	add.s r1, r25, r10
	addli r4, zero, 80
	add.s r14, r24, r10
	.loc	1 86 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:86:20
	mod.s r3, r26, r3
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	mod.s r4, r1, r4
	.loc	1 86 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:86:20
	slli r3, r3, 14
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	slli r16, r4, 14
	.loc	1 86 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:86:20
	add.s r17, r3, r21
	beq r2, r20, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:0:20
	bneq r2, r11, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:86:25
	zext_int2long r[3:4], r12
	.loc	1 86 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:86:20
	addli r16, zero, 18
	xwait r20, 0
	lock zero, r13
	dma_cfg zero, zero, zero, 0
	sll.d r[3:4], r[3:4], r16
	add.ul r[3:4], r[7:8], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r17, r3, r9, 3
	addli r3, zero, 4096
	dma_cfg r9, r3, r22, 4
	dma_run zero
	unlock r13
	xsignal r11, 0
	.loc	1 73 26 is_stmt 1               # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	addli r12, r12, 1
	bneq r12, r23, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	bneq r2, r13, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:0:0
	mod.s r3, r14, r5
	addli r4, zero, 1
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	xwait r13, 0
	xwait r19, 0
	lock zero, r4
	mm_cfg r22, r22, r22, 0
	mm_cfg r13, r15, r4, 2
	.loc	1 0 0                           # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:0:0
	slli r3, r3, 14
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	beq r10, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r18, r3, r16, 8
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	addli r12, r12, 1
	bneq r12, r23, .LBB0_27
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	mm r18, r3, r16, 8
.LBB0_26:                               # %.thread6.thread91
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r3, zero, 1
	.loc	1 73 26                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	addli r12, r12, 1
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	unlock r3
	addli r3, zero, 9
	xsignal r6, 0
	xsignal r3, 0
	.loc	1 73 26                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	beq r12, r23, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	addli r10, r10, 1
	j .LBB0_18
.LBB0_28:                               # %.split18
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:86:20
	addli r28, r28, 16
	.loc	1 73 26                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	beq r2, r13, .LBB0_6
	j .LBB0_35
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:0:26
	load.d r[3:4], -944(r30)                # 8-byte Folded Reload
	lui r12, 12
	addli r1, zero, 0
	store.d r[16:17], -936(r30)             # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r23
	load.d r[3:4], -976(r30)                # 8-byte Folded Reload
	and.d r[3:4], r[7:8], r[3:4]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	addli r5, zero, 1024
	.loc	1 81 25 is_stmt 1               # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:25
	sub.sl r[16:17], r[18:19], r[16:17]
	.loc	1 0 0 is_stmt 0                 # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:0:0
	add.s r10, r28, r1
	.loc	1 81 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:20
	xwait r14, 0
	lock zero, r13
	.loc	1 73 26 is_stmt 1               # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	addli r1, r1, 1
	.loc	1 81 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:20
	dma_cfg zero, zero, zero, 0
	zext_int2long r[5:6], r5
	.loc	1 81 0 is_stmt 0                # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:0
	mod.s r10, r10, r26
	.loc	1 81 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:25
	div.sl r[5:6], r[16:17], r[5:6]
	.loc	1 81 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:20
	sll.d r[16:17], r[18:19], r15
	load.d r[18:19], 0(r30)
	add.ul r[16:17], r[18:19], r[16:17]
	.loc	1 81 0                          # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:0
	slli r10, r10, 14
	.loc	1 81 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:20
	dma_cfg zero, r17, zero, 2
	.loc	1 81 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:25
	load.d r[18:19], -920(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:0
	add.s r10, r10, r12
	.loc	1 81 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:20
	dma_cfg r10, r16, r9, 3
	.loc	1 81 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:25
	min.sl r[18:19], r[5:6], r[18:19]
	sub.sl r[5:6], r[18:19], r[5:6]
	.loc	1 81 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:20
	addli r5, r5, 64
	addli r6, zero, 4096
	dma_cfg r9, r6, r5, 4
	dma_run zero
	unlock r13
	xsignal r15, 0
	.loc	1 73 26 is_stmt 1               # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	beq r1, r23, .LBB0_33
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:86:25
	zext_int2long r[16:17], r1
	loadli.w r5,  -924(r30)                 # 4-byte Folded Reload
	sll.d r[16:17], r[16:17], r11
	.loc	1 81 25                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:81:25
	add.ul r[18:19], r[16:17], r[7:8]
	zext_int2long r[16:17], r5
	setlt.ul r10, r[16:17], r[18:19]
	addli.d r[16:17], r[3:4], 0
	bneq r10, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:0:25
	zext_int2long r[16:17], zero
	j .LBB0_30
.LBB0_33:                               # %.split18.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 89 25 is_stmt 1               # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:89:25
	add.s r28, r28, r1
	loadli.w r1,  32(r30)
	loadli.w r6,  28(r30)
	load.d r[16:17], -936(r30)              # 8-byte Folded Reload
	.loc	1 73 26                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:73:26
	addli r24, r24, 16
	addli r25, r25, 16
	addli r27, r27, 16
	addli r12, r1, 0
	j .LBB0_7
.LBB0_34:                               # %.split18.thread90
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:86:20
	addli r28, r28, 16
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:0:20
	loadli.w r12,  32(r30)
	.loc	1 101 67 is_stmt 1              # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:101:67
	addli r24, r14, 1
	addli r25, r1, 1
	addli r27, r26, 1
	lui r5, 12
	beq r2, zero, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:0:67
	load.d r[16:17], -936(r30)              # 8-byte Folded Reload
	loadli.w r6,  28(r30)
	addli r14, zero, 3
	addli r26, zero, 48
	addli r18, zero, 5
	.loc	1 101 67                        # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:101:67
	j .LBB0_8
.LBB0_37:                               #   in Loop: Header=BB0_9 Depth=1
	loadli.w r1,  -968(r30)                 # 4-byte Folded Reload
	load.d r[16:17], -920(r30)              # 8-byte Folded Reload
	addli r14, zero, 3
	addli r26, zero, 48
	zext_int2long r[3:4], r1
	addli r1, zero, 960
	zext_int2long r[5:6], r1
	loadli.w r1,  -964(r30)                 # 4-byte Folded Reload
	min.ul r[5:6], r[3:4], r[5:6]
	sext_int2long r[7:8], r1
	addli r1, zero, 18
	addli.d r[5:6], r[5:6], 64
	min.sl r[16:17], r[7:8], r[16:17]
	max.ul r[5:6], r[5:6], r[3:4]
	addli.d r[16:17], r[16:17], 64
	sub.sl r[3:4], r[5:6], r[3:4]
	zext_int2long r[5:6], r22
	max.sl r[16:17], r[16:17], r[7:8]
	min.ul r[3:4], r[3:4], r[5:6]
	sub.sl r[7:8], r[16:17], r[7:8]
	load.d r[16:17], 16(r30)
	store.d r[3:4], -920(r30)               # 8-byte Folded Spill
	load.d r[3:4], -944(r30)                # 8-byte Folded Reload
	min.sl r[5:6], r[7:8], r[5:6]
	load.d r[7:8], -960(r30)                # 8-byte Folded Reload
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 5
	add.ul r[3:4], r[16:17], r[3:4]
	lock zero, r1
	addli r1, zero, 1
	add.ul r[3:4], r[3:4], r[7:8]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	load.d r[7:8], -920(r30)                # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r1, r7, 2
	dma_cfg r3, r18, r1, 3
	addli r1, zero, 4096
	addli r18, zero, 5
	dma_cfg r1, r9, r5, 4
	addli r1, zero, 11
	dma_run zero
	unlock r18
	loadli.w r6,  28(r30)
	lui r5, 12
	xsignal r1, 0
	load.d r[16:17], -936(r30)              # 8-byte Folded Reload
	j .LBB0_8
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py:22:0
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
.asciz	"cnf6firvqjyavlwp4qssqrlljifwm4bvylxujuefavoxb6w3mxjl.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/inductor/nf" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
