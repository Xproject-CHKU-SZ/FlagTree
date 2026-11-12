	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/im" "cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py"
	.loc	1 22 0                          # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1032
	addli r30, sp, 968
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:73:26
	core_id r2
	loadli.w r18,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:0:26
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
	ble.s r3, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	addli r5, zero, 4095
	sext_int2long r[15:16], r1
	loadli.w r27,  -192(r30)
	loadli.w r6,  -712(r30)
	loadli.w r24,  -908(r30)
	loadli.w r1,  -516(r30)
	sext_int2long r[7:8], r3
	addli r19, zero, 128
	addli r10, zero, 2
	addli r12, zero, 6
	addli r23, zero, 3
	addli r14, zero, 4
	addli r28, zero, 48
	addli r17, zero, 80
	addli r20, zero, 7
	addli r22, zero, 64
	addli r11, zero, 5
	addli r3, zero, 256
	lui r13, 12
	storeli.w zero, -912(r30)               # 4-byte Folded Spill
	lui r4, 1048572
	store.d r[7:8], -936(r30)               # 8-byte Folded Spill
	store.d r[4:5], -968(r30)               # 8-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split18.thread88
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:86:20
	addli r6, r6, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:73:26
	addli r4, zero, 10
	.loc	1 101 67                        # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:101:67
	addli r27, r15, 1
	addli r24, r28, 1
	addli r1, r9, 1
	addli r19, zero, 128
	addli r23, zero, 3
	addli r28, zero, 48
	addli r11, zero, 5
	addli r18, r25, 0
	.loc	1 73 26                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:73:26
	xsignal r4, 0
	load.d r[15:16], -920(r30)              # 8-byte Folded Reload
.LBB0_7:                                # %.thread89
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:0:26
	lui r13, 12
.LBB0_8:                                # %.thread89
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[4:5], -936(r30)                # 8-byte Folded Reload
	addli.d r[15:16], r[15:16], 1
	setlt.sl r4, r[15:16], r[4:5]
	loadli.w r5,  -912(r30)                 # 4-byte Folded Reload
	addli r5, r5, 1
	storeli.w r5, -912(r30)                 # 4-byte Folded Spill
	beq r4, zero, .LBB0_39
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	loadli.w r4,  32(r30)
	.loc	1 54 50 is_stmt 1               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:54:50
	addli r9, zero, 8
	div.s r4, r15, r4
	div.s r5, r4, r18
	.loc	1 53 22                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:53:22
	div.s r7, r5, r19
	.loc	1 54 41                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:54:41
	slli r4, r7, 3
	.loc	1 54 30 is_stmt 0               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:54:30
	sub.s r8, r10, r4
	.loc	1 54 50                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:54:50
	min.s r8, r8, r9
	.loc	1 55 40 is_stmt 1               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:55:40
	mod.s r9, r5, r8
	.loc	1 55 34 is_stmt 0               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:55:34
	add.s r4, r4, r9
	.loc	1 95 15 is_stmt 1               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:95:15
	zext_int2long r[25:26], r4
	.loc	1 73 26                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:73:26
	store.d r[25:26], -928(r30)             # 8-byte Folded Spill
	bneq r2, r14, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r9, zero, 11
	addli r26, zero, 1
	xwait r9, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:0:26
	addli r26, zero, 1
	beq r2, r26, .LBB0_29
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r2, r10, .LBB0_16
# %bb.13:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r4, zero, 1
.LBB0_14:                               # %.thread.us23
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:81:20
	mod.s r5, r6, r28
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	mod.s r7, r24, r28
	xwait r10, 0
	xwait r11, 0
	lock zero, zero
	addli r24, r24, 1
	.loc	1 81 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:81:20
	addli r6, r6, 1
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	ds_cfg r10, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	.loc	1 81 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:81:20
	slli r5, r5, 14
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	slli r7, r7, 14
	.loc	1 81 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:81:20
	add.s r5, r5, r13
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	shuffle_batch r7, r5, r22, 1
	.loc	1 73 26                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:73:26
	andi r5, r4, 1
	addli r4, zero, 0
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	unlock zero
	xsignal r23, 0
	xsignal r14, 0
	bneq r5, zero, .LBB0_14
# %bb.15:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:73:26
	addli r1, r1, 2
	addli r27, r27, 2
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:0:25
	slli r7, r7, 7
	slli r4, r4, 6
	store.d r[15:16], -920(r30)             # 8-byte Folded Spill
	addli r25, r18, 0
	addli r18, zero, 5
	addli r19, zero, 48
	addli r21, zero, 0
	sub.s r5, r5, r7
	loadli.w r7,  -912(r30)                 # 4-byte Folded Reload
	storeli.w r4, -952(r30)                 # 4-byte Folded Spill
	div.s r5, r5, r8
	mod.s r7, r7, r23
	addli r23, zero, 0
	zext_int2long r[8:9], r5
	slli r5, r5, 6
	slli r4, r7, 14
	sll.d r[8:9], r[8:9], r12
	.loc	1 73 26 is_stmt 1               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:73:26
	storeli.w r5, -960(r30)                 # 4-byte Folded Spill
	addli r5, zero, 1
	sll.d r[15:16], r[8:9], r10
	load.d r[7:8], 8(r30)
	store.d r[15:16], -944(r30)             # 8-byte Folded Spill
	add.ul r[7:8], r[7:8], r[15:16]
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	addli r16, zero, 9
	xwait r12, 0
	xwait r16, 0
	lock zero, zero
	ds_cfg r10, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r13, r11, r22, 2
	addli r11, zero, 8
	unlock zero
	xsignal r20, 0
	xsignal r11, 0
	.loc	1 73 26                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:73:26
	andi r5, r5, 1
	bneq r5, zero, .LBB0_27
	j .LBB0_28
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	add.s r15, r27, r23
	.loc	1 86 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:86:20
	addli r11, zero, 47
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	add.s r9, r1, r23
	.loc	1 86 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:86:20
	lui r16, 204
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	add.s r28, r24, r23
	.loc	1 86 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:86:20
	mod.s r11, r15, r11
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	mod.s r13, r9, r17
	.loc	1 86 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:86:20
	slli r11, r11, 14
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	slli r13, r13, 14
	.loc	1 86 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:86:20
	add.s r11, r11, r16
	beq r2, r20, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:0:20
	bneq r2, r12, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:86:20
	zext_int2long r[16:17], r21
	xwait r20, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	add.ul r[16:17], r[7:8], r[16:17]
	dma_cfg zero, r17, zero, 2
	dma_cfg r11, r16, r3, 3
	addli r11, zero, 4096
	addli r17, zero, 80
	dma_cfg r3, r11, r22, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:73:26
	andi r5, r5, 1
	bneq r5, zero, .LBB0_27
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:0:26
	andi r5, r5, 1
	.loc	1 89 25 is_stmt 1               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	bneq r2, r14, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25 is_stmt 0                # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:0:25
	mod.s r11, r28, r19
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	addli r16, zero, 8
	xwait r14, 0
	xwait r16, 0
	lock zero, r26
	mm_cfg r22, r22, r22, 0
	mm_cfg r14, r10, r26, 2
	slli r11, r11, 14
	beq r23, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc r4, r11, r13, 8
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25                          # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:0:25
	bneq r5, zero, .LBB0_27
	j .LBB0_31
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	mm r4, r11, r13, 8
.LBB0_26:                               # %.thread6.thread87
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r11, zero, 9
	unlock r26
	xsignal r18, 0
	xsignal r11, 0
	.loc	1 73 26 is_stmt 1               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:73:26
	beq r5, zero, .LBB0_5
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	addli r23, r23, 1
	lui r21, 64
	addli r5, zero, 0
	j .LBB0_18
.LBB0_28:                               # %.split18
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:86:20
	addli r6, r6, 2
	.loc	1 73 26                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:73:26
	beq r2, r14, .LBB0_6
	j .LBB0_32
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:0:26
	addli r9, zero, 1
	load.d r[2:3], -928(r30)                # 8-byte Folded Reload
	addli r5, zero, 13
	store.d r[15:16], -920(r30)             # 8-byte Folded Spill
	setlt.u r4, r9, r4
	sll.d r[7:8], r[2:3], r5
	bneq r4, zero, .LBB0_35
# %bb.30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	zext_int2long r[4:5], zero
	j .LBB0_36
.LBB0_31:                               # %.split18.thread86
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:86:20
	addli r6, r6, 2
.LBB0_32:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67                        # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:101:67
	addli r24, r28, 1
	addli r1, r9, 1
	addli r27, r15, 1
	addli r11, zero, 5
	addli r18, r25, 0
	bneq r2, zero, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_9 Depth=1
	loadli.w r5,  -960(r30)                 # 4-byte Folded Reload
	zext_int2long r[17:18], r22
	addli r9, zero, 1
	zext_int2long r[7:8], r5
	addli r5, zero, 960
	zext_int2long r[15:16], r5
	loadli.w r5,  -952(r30)                 # 4-byte Folded Reload
	min.ul r[15:16], r[7:8], r[15:16]
	sext_int2long r[25:26], r5
	addli r5, zero, 18
	addli.d r[15:16], r[15:16], 64
	max.ul r[15:16], r[15:16], r[7:8]
	store.d r[15:16], -960(r30)             # 8-byte Folded Spill
	min.sl r[15:16], r[25:26], r[17:18]
	store.d r[15:16], -952(r30)             # 8-byte Folded Spill
	load.d r[15:16], -960(r30)              # 8-byte Folded Reload
	sub.sl r[7:8], r[15:16], r[7:8]
	load.d r[15:16], -952(r30)              # 8-byte Folded Reload
	min.ul r[7:8], r[7:8], r[17:18]
	addli.d r[15:16], r[15:16], 64
	store.d r[7:8], -952(r30)               # 8-byte Folded Spill
	load.d r[7:8], -928(r30)                # 8-byte Folded Reload
	max.sl r[15:16], r[15:16], r[25:26]
	sll.d r[7:8], r[7:8], r5
	sub.sl r[15:16], r[15:16], r[25:26]
	addli r5, zero, 10
	store.d r[7:8], -928(r30)               # 8-byte Folded Spill
	load.d r[7:8], 16(r30)
	min.sl r[15:16], r[15:16], r[17:18]
	loadli.w r18,  28(r30)
	addli r17, zero, 80
	load.d r[25:26], -928(r30)              # 8-byte Folded Reload
	add.ul r[7:8], r[7:8], r[25:26]
	load.d r[25:26], -944(r30)              # 8-byte Folded Reload
	xwait r5, 0
	lock zero, r11
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r9, zero, 1
	add.ul r[7:8], r[7:8], r[25:26]
	load.d r[25:26], -952(r30)              # 8-byte Folded Reload
	dma_cfg r8, zero, zero, 2
	slli r5, r25, 2
	dma_cfg r7, r4, r5, 3
	addli r4, zero, 4096
	dma_cfg r4, r3, r15, 4
	addli r4, zero, 11
	dma_run zero
	unlock r11
	xsignal r4, 0
.LBB0_34:                               # %.thread89
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 67 is_stmt 0                # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:0:67
	load.d r[15:16], -920(r30)              # 8-byte Folded Reload
	addli r19, zero, 128
	addli r23, zero, 3
	addli r28, zero, 48
	j .LBB0_7
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	load.d r[4:5], -968(r30)                # 8-byte Folded Reload
	and.d r[4:5], r[7:8], r[4:5]
.LBB0_36:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	load.d r[2:3], 0(r30)
	addli r15, zero, 0
	addli r21, zero, 256
	lui r12, 12
.LBB0_37:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25 is_stmt 1               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:86:25
	zext_int2long r[15:16], r15
	addli r11, zero, 128
	.loc	1 73 26                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:73:26
	andi r13, r9, 1
	.loc	1 81 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:81:20
	xwait r23, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	.loc	1 81 25 is_stmt 0               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:81:25
	or.d r[16:17], r[7:8], r[15:16]
	zext_int2long r[18:19], r11
	.loc	1 81 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:81:20
	mod.s r11, r6, r28
	addli r15, zero, 64
	addli r6, r6, 1
	.loc	1 81 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:81:25
	sub.sl r[25:26], r[16:17], r[4:5]
	.loc	1 81 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:81:20
	sll.d r[16:17], r[16:17], r10
	.loc	1 81 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:81:25
	div.sl r[18:19], r[25:26], r[18:19]
	zext_int2long r[25:26], r15
	.loc	1 81 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:81:20
	add.ul r[16:17], r[2:3], r[16:17]
	slli r9, r11, 14
	dma_cfg zero, r17, zero, 2
	add.s r9, r9, r12
	dma_cfg r9, r16, r21, 3
	addli r9, zero, 0
	.loc	1 81 25                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:81:25
	min.sl r[25:26], r[18:19], r[25:26]
	sub.sl r[18:19], r[25:26], r[18:19]
	addli r25, zero, 512
	.loc	1 81 20                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:81:20
	addli r11, r18, 64
	addli r19, zero, 128
	dma_cfg r21, r25, r11, 4
	dma_run zero
	unlock r14
	xsignal r10, 0
	.loc	1 73 26 is_stmt 1               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:73:26
	bneq r13, zero, .LBB0_37
# %bb.38:                               # %.split18.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:0:26
	loadli.w r18,  28(r30)
	load.d r[15:16], -920(r30)              # 8-byte Folded Reload
	.loc	1 73 26                         # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:73:26
	addli r24, r24, 2
	addli r1, r1, 2
	addli r27, r27, 2
	addli r17, zero, 80
	addli r11, zero, 5
	core_id r2
	addli r3, zero, 256
	lui r13, 12
	addli r12, zero, 6
	.loc	1 89 25 is_stmt 1               # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:89:25
	j .LBB0_8
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0                          # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py:22:0
	addli sp, sp, 968
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
	.long	1032                            # 0x408
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
.asciz	"cimfgh76l4j2fnv7ezvsv6fpev2nk6fnppzi5web3k5xxncalhay.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/im" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
