	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/lk" "clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py"
	.loc	1 22 0                          # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -968
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:73:26
	core_id r2
	addli r30, sp, 904
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -160(r30)
	storeli.w zero, -484(r30)
	storeli.w zero, -644(r30)
	storeli.w zero, -840(r30)
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
	ble.s r3, r1, .LBB0_34
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	loadli.w r6,  -160(r30)
	loadli.w r7,  -644(r30)
	loadli.w r17,  -840(r30)
	loadli.w r10,  -484(r30)
	addli r11, zero, 64
	addli r14, zero, 7
	addli r15, zero, 5
	addli r16, zero, 4
	addli r19, zero, 80
	addli r20, zero, 39
	lui r21, 236
	addli r22, zero, 6
	addli r24, zero, 3
	addli r25, zero, 128
	addli r27, zero, 256
	addli r26, zero, 2
	lui r23, 80
	addli r28, zero, 0
	store.d r[3:4], -864(r30)               # 8-byte Folded Spill
	sext_int2long r[4:5], r1
	addli r3, zero, 1
	j .LBB0_8
.LBB0_5:                                # %.split18.thread89
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:86:20
	addli r7, r7, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:73:26
	addli r1, zero, 10
	addli r15, zero, 5
	lui r23, 80
	xsignal r1, 0
	loadli.w r28,  -852(r30)                # 4-byte Folded Reload
.LBB0_7:                                # %.thread90
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:0:26
	load.d r[12:13], -848(r30)              # 8-byte Folded Reload
	load.d r[8:9], -864(r30)                # 8-byte Folded Reload
	addli r28, r28, 1
	addli r17, r4, 0
	addli.d r[12:13], r[12:13], 1
	setlt.sl r1, r[12:13], r[8:9]
	addli.d r[4:5], r[12:13], 0
	beq r1, zero, .LBB0_34
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	loadli.w r1,  32(r30)
	store.d r[4:5], -848(r30)               # 8-byte Folded Spill
	.loc	1 54 50 is_stmt 1               # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:54:50
	addli r9, zero, 8
	div.s r1, r4, r1
	loadli.w r4,  28(r30)
	div.s r4, r1, r4
	.loc	1 53 22                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:53:22
	div.s r5, r4, r11
	.loc	1 54 41                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:54:41
	slli r1, r5, 3
	.loc	1 54 30 is_stmt 0               # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:54:30
	sub.s r8, r3, r1
	.loc	1 54 50                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:54:50
	min.s r8, r8, r9
	.loc	1 55 40 is_stmt 1               # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:55:40
	mod.s r9, r4, r8
	.loc	1 55 34 is_stmt 0               # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:55:34
	add.s r1, r1, r9
	.loc	1 95 15 is_stmt 1               # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:95:15
	zext_int2long r[12:13], r1
	.loc	1 73 26                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:73:26
	bneq r2, r16, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r9, zero, 11
	xwait r9, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:0:26
	beq r2, r3, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r26, .LBB0_15
# %bb.12:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 1
	addli r8, zero, 48
.LBB0_13:                               # %.thread.us23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:81:20
	mod.s r1, r7, r20
	.loc	1 89 25                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:89:25
	mod.s r5, r17, r8
	xwait r26, 0
	xwait r15, 0
	lock zero, zero
	addli r17, r17, 1
	.loc	1 81 20                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:81:20
	addli r7, r7, 1
	.loc	1 89 25                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:89:25
	ds_cfg r24, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r25, zero, 13
	.loc	1 81 20                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:81:20
	slli r1, r1, 14
	.loc	1 89 25                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:89:25
	slli r5, r5, 14
	.loc	1 81 20                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:81:20
	add.s r1, r1, r23
	.loc	1 89 25                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:89:25
	shuffle_batch r5, r1, r11, 1
	.loc	1 73 26                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:73:26
	andi r1, r4, 1
	addli r4, zero, 0
	.loc	1 89 25                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:89:25
	unlock zero
	xsignal r24, 0
	xsignal r16, 0
	bneq r1, zero, .LBB0_13
# %bb.14:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:73:26
	addli r10, r10, 2
	addli r6, r6, 2
	addli r4, r17, 0
	.loc	1 89 25                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:89:25
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:0:25
	slli r5, r5, 6
	store.d r[12:13], -872(r30)             # 8-byte Folded Spill
	.loc	1 73 26 is_stmt 1               # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:73:26
	load.d r[12:13], 8(r30)
	slli r1, r1, 7
	addli r23, zero, 0
	storeli.w r28, -852(r30)                # 4-byte Folded Spill
	sub.s r4, r4, r5
	mod.s r5, r28, r15
	addli r15, zero, 1
	storeli.w r1, -888(r30)                 # 4-byte Folded Spill
	addli r28, zero, 0
	div.s r4, r4, r8
	slli r5, r5, 16
	zext_int2long r[8:9], r4
	slli r1, r4, 7
	sll.d r[8:9], r[8:9], r14
	storeli.w r1, -896(r30)                 # 4-byte Folded Spill
	store.d r[8:9], -880(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r15
	add.ul r[8:9], r[12:13], r[8:9]
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:89:25
	addli r12, zero, 9
	xwait r22, 0
	xwait r12, 0
	lock zero, zero
	ds_cfg r24, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r25, zero, 13
	shuffle_coa r18, r1, r11, 2
	addli r1, zero, 8
	unlock zero
	xsignal r14, 0
	xsignal r1, 0
	.loc	1 73 26                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:73:26
	andi r1, r15, 1
	bneq r1, zero, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	.loc	1 86 20                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:86:20
	mod.s r1, r6, r20
	.loc	1 89 25                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:89:25
	mod.s r12, r10, r19
	addli r4, r17, 1
	addli r10, r10, 1
	.loc	1 86 20                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:86:20
	addli r6, r6, 1
	slli r1, r1, 14
	.loc	1 89 25                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:89:25
	slli r18, r12, 14
	.loc	1 86 20                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:86:20
	add.s r1, r1, r21
	beq r2, r14, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:0:20
	bneq r2, r22, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 20                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:86:20
	zext_int2long r[12:13], r23
	xwait r14, 0
	lock zero, r16
	dma_cfg r3, r3, zero, 0
	add.ul r[12:13], r[8:9], r[12:13]
	dma_cfg zero, r13, zero, 2
	dma_cfg r1, r12, r27, 3
	addli r1, zero, 2048
	dma_cfg r27, r1, r11, 4
	dma_run zero
	unlock r16
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:73:26
	andi r1, r15, 1
	bneq r1, zero, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:0:26
	andi r15, r15, 1
	.loc	1 89 25 is_stmt 1               # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:89:25
	bneq r2, r16, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25 is_stmt 0                # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:0:25
	addli r1, zero, 48
	.loc	1 89 25                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:89:25
	xwait r16, 0
	addli r23, zero, 1
	addli r13, zero, 0
	mod.s r1, r17, r1
	slli r17, r1, 14
	addli r1, zero, 8
	xwait r1, 0
	addli r1, zero, 1
	beq r28, zero, .LBB0_23
.LBB0_22:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r13, 13
	slli r13, r13, 8
	lock zero, r1
	mm_cfg r11, r11, r25, 0
	or r12, r12, r18
	or r13, r13, r5
	mm_cfg r26, r16, r1, 2
	mm_acc r13, r17, r12, 5
	andi r12, r23, 1
	addli r13, zero, 1
	addli r23, zero, 0
	unlock r1
	bneq r12, zero, .LBB0_22
	j .LBB0_24
.LBB0_23:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r12, r13, 13
	slli r13, r13, 8
	lock zero, r1
	mm_cfg r11, r11, r25, 0
	or r12, r12, r18
	or r13, r13, r5
	mm_cfg r26, r16, r1, 2
	mm r13, r17, r12, 5
	andi r12, r23, 1
	addli r13, zero, 1
	addli r23, zero, 0
	unlock r1
	bneq r12, zero, .LBB0_23
.LBB0_24:                               # %.thread6.thread88
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r1, zero, 5
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r15, zero, .LBB0_26
	j .LBB0_5
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:73:26
	beq r15, zero, .LBB0_31
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:0:26
	addli r15, zero, 0
	.loc	1 89 25 is_stmt 1               # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:89:25
	addli r28, r28, 1
	lui r23, 32
	addli r17, r4, 0
	j .LBB0_17
.LBB0_27:                               # %.split18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:86:20
	addli r7, r7, 2
	.loc	1 73 26                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:73:26
	beq r2, r16, .LBB0_6
	j .LBB0_32
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:0:26
	addli r1, zero, 15
	load.d r[8:9], 0(r30)
	sll.d r[4:5], r[12:13], r1
	addli r1, zero, 0
	add.ul r[4:5], r[8:9], r[4:5]
	addli r8, zero, 1
.LBB0_29:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:81:20
	mod.s r9, r7, r20
	.loc	1 86 25                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:86:25
	zext_int2long r[12:13], r1
	.loc	1 81 20                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:81:20
	xwait r24, 0
	lock zero, r16
	addli r7, r7, 1
	dma_cfg r3, r3, zero, 0
	sll.d r[12:13], r[12:13], r3
	add.ul r[12:13], r[4:5], r[12:13]
	slli r1, r9, 14
	dma_cfg zero, r13, zero, 2
	.loc	1 73 26                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:73:26
	andi r9, r8, 1
	addli r8, zero, 0
	.loc	1 81 20                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:81:20
	add.s r1, r1, r23
	dma_cfg r1, r12, r25, 3
	addli r1, zero, 64
	dma_cfg r25, r27, r25, 4
	dma_run zero
	unlock r16
	xsignal r26, 0
	.loc	1 73 26                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:73:26
	bneq r9, zero, .LBB0_29
# %bb.30:                               # %.split18.us
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, r17, 2
	addli r10, r10, 2
	addli r6, r6, 2
	.loc	1 89 25                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:89:25
	j .LBB0_7
.LBB0_31:                               # %.split18.thread87
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:86:20
	addli r7, r7, 2
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:0:20
	loadli.w r28,  -852(r30)                # 4-byte Folded Reload
	addli r15, zero, 5
	lui r23, 80
	bneq r2, zero, .LBB0_7
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:101:67
	loadli.w r1,  -896(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], r1
	addli r1, zero, 896
	zext_int2long r[12:13], r1
	loadli.w r1,  -888(r30)                 # 4-byte Folded Reload
	min.ul r[12:13], r[8:9], r[12:13]
	sext_int2long r[17:18], r1
	addli r1, zero, 18
	addli.d r[12:13], r[12:13], 128
	store.d r[12:13], -896(r30)             # 8-byte Folded Spill
	zext_int2long r[12:13], zero
	store.d r[12:13], -888(r30)             # 8-byte Folded Spill
	load.d r[12:13], -896(r30)              # 8-byte Folded Reload
	max.ul r[12:13], r[12:13], r[8:9]
	store.d r[12:13], -896(r30)             # 8-byte Folded Spill
	load.d r[12:13], -888(r30)              # 8-byte Folded Reload
	min.sl r[12:13], r[17:18], r[12:13]
	store.d r[12:13], -888(r30)             # 8-byte Folded Spill
	load.d r[12:13], -896(r30)              # 8-byte Folded Reload
	sub.sl r[8:9], r[12:13], r[8:9]
	zext_int2long r[12:13], r25
	store.d r[8:9], -896(r30)               # 8-byte Folded Spill
	load.d r[8:9], -888(r30)                # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 128
	store.d r[8:9], -904(r30)               # 8-byte Folded Spill
	load.d r[8:9], -896(r30)                # 8-byte Folded Reload
	min.ul r[8:9], r[8:9], r[12:13]
	store.d r[8:9], -888(r30)               # 8-byte Folded Spill
	load.d r[8:9], -904(r30)                # 8-byte Folded Reload
	max.sl r[8:9], r[8:9], r[17:18]
	store.d r[8:9], -896(r30)               # 8-byte Folded Spill
	load.d r[8:9], -872(r30)                # 8-byte Folded Reload
	sll.d r[8:9], r[8:9], r1
	addli r1, zero, 10
	store.d r[8:9], -904(r30)               # 8-byte Folded Spill
	load.d r[8:9], -896(r30)                # 8-byte Folded Reload
	sub.sl r[8:9], r[8:9], r[17:18]
	load.d r[17:18], 16(r30)
	store.d r[8:9], -872(r30)               # 8-byte Folded Spill
	load.d r[8:9], -904(r30)                # 8-byte Folded Reload
	add.ul r[8:9], r[17:18], r[8:9]
	load.d r[17:18], -872(r30)              # 8-byte Folded Reload
	store.d r[8:9], -896(r30)               # 8-byte Folded Spill
	load.d r[8:9], -880(r30)                # 8-byte Folded Reload
	min.sl r[12:13], r[17:18], r[12:13]
	load.d r[17:18], -896(r30)              # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r15
	dma_cfg r3, zero, zero, 0
	sll.d r[8:9], r[8:9], r3
	dma_cfg zero, r3, zero, 1
	add.ul r[8:9], r[17:18], r[8:9]
	load.d r[17:18], -888(r30)              # 8-byte Folded Reload
	dma_cfg r9, zero, zero, 2
	slli r1, r17, 2
	dma_cfg r8, r5, r1, 3
	addli r1, zero, 512
	addli r5, zero, 2048
	dma_cfg r5, r1, r12, 4
	addli r1, zero, 11
	dma_run zero
	unlock r15
	xsignal r1, 0
	j .LBB0_7
.LBB0_34:                               # %._crit_edge
	.loc	1 22 0                          # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_36
# %bb.35:
	.loc	1 0 0 is_stmt 0                 # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:22:0
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
.LBB0_36:
	.loc	1 22 0 epilogue_begin           # clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py:22:0
	addli sp, sp, 904
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
	.long	968                             # 0x3c8
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
.asciz	"clkeq23xjmhs523rd5f6qjihvqejn42uc6dfdbcborigeo2bshaa.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/lk" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
