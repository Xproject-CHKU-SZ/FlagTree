	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/5a" "c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py"
	.loc	1 22 0                          # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -728
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:73:26
	core_id r2
	addli r30, sp, 664
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -128(r30)
	storeli.w zero, -452(r30)
	storeli.w zero, -584(r30)
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
	ble.s r3, r1, .LBB0_32
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[11:12], r1
	lui r1, 7
	loadli.w r7,  -128(r30)
	loadli.w r28,  -584(r30)
	loadli.w r10,  -452(r30)
	addli r9, zero, 0
	addli r25, zero, 8
	addli r14, zero, 4
	addli r16, zero, 2
	addli r15, zero, 32
	lui r22, 10
	addli r23, zero, 128
	addli r20, zero, 1
	addli r21, zero, 7
	addli r26, zero, 0
	store.d r[3:4], -656(r30)               # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 127
	lui r3, 1048448
	ori r1, r1, 4095
	store.d r[3:4], -664(r30)               # 8-byte Folded Spill
	storeli.w r1, -596(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:73:26
	addli r1, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[11:12], -624(r30)              # 8-byte Folded Reload
	load.d r[3:4], -656(r30)                # 8-byte Folded Reload
	loadli.w r9,  -616(r30)                 # 4-byte Folded Reload
	addli r26, r6, 1
	addli r28, r5, 1
	addli.d r[11:12], r[11:12], 1
	setlt.sl r1, r[11:12], r[3:4]
	beq r1, zero, .LBB0_32
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	addli r27, zero, 6
	.loc	1 73 26                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:73:26
	bneq r2, r14, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:0:26
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	addli r17, zero, 0
	addli r24, zero, 0
	store.d r[11:12], -624(r30)             # 8-byte Folded Spill
	div.s r1, r11, r1
	div.s r1, r1, r3
	addli r3, zero, 256
	div.s r4, r1, r3
	addli r3, zero, 5
	mod.s r6, r9, r3
	addli r9, r9, 1
	storeli.w r9, -616(r30)                 # 4-byte Folded Spill
	slli r5, r4, 3
	slli r4, r4, 8
	sub.s r8, r25, r5
	sub.s r4, r1, r4
	slli r6, r6, 13
	min.s r8, r8, r25
	storeli.w r6, -612(r30)                 # 4-byte Folded Spill
	mod.s r1, r1, r8
	div.s r4, r4, r8
	add.s r1, r5, r1
	slli r5, r4, 5
	storeli.w r5, -648(r30)                 # 4-byte Folded Spill
	zext_int2long r[4:5], r4
	slli r6, r1, 6
	zext_int2long r[8:9], r1
	addli r1, zero, 16
	sll.d r[4:5], r[4:5], r3
	storeli.w r6, -644(r30)                 # 4-byte Folded Spill
	sll.d r[18:19], r[8:9], r1
	store.d r[8:9], -640(r30)               # 8-byte Folded Spill
	addli r9, zero, 24
	.loc	1 73 26                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:73:26
	sll.d r[5:6], r[4:5], r16
	load.d r[3:4], 8(r30)
	store.d r[5:6], -632(r30)               # 8-byte Folded Spill
	add.ul r[3:4], r[3:4], r[5:6]
	store.d r[3:4], -608(r30)               # 8-byte Folded Spill
	load.d r[3:4], -664(r30)                # 8-byte Folded Reload
	and.d r[3:4], r[18:19], r[3:4]
	store.d r[3:4], -592(r30)               # 8-byte Folded Spill
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 26                          # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:0:26
	addli r1, zero, 1024
	.loc	1 81 25 is_stmt 1               # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:81:25
	sub.sl r[8:9], r[11:12], r[8:9]
	.loc	1 81 20 is_stmt 0               # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:81:20
	load.d r[20:21], 0(r30)
	sll.d r[11:12], r[11:12], r16
	.loc	1 89 25 is_stmt 1               # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:89:25
	addli r10, r10, 1
	zext_int2long r[3:4], r1
	addli r1, zero, 448
	.loc	1 81 20                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:81:20
	add.ul r[11:12], r[20:21], r[11:12]
	addli r20, zero, 1
	addli r21, zero, 7
	.loc	1 81 25 is_stmt 0               # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:81:25
	div.sl r[3:4], r[8:9], r[3:4]
	zext_int2long r[8:9], r1
	.loc	1 81 20                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:81:20
	addli r1, zero, 3
	xwait r1, 0
	lock zero, r14
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r12, zero, 2
	.loc	1 81 25                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:81:25
	min.sl r[8:9], r[3:4], r[8:9]
	sub.sl r[3:4], r[8:9], r[3:4]
	addli r9, zero, 24
	.loc	1 81 20                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:81:20
	addli r1, r3, 64
	addli r4, zero, 512
	addli r3, zero, 4096
	dma_cfg r13, r11, r4, 3
	dma_cfg r4, r3, r1, 4
	dma_run zero
	unlock r14
	xsignal r16, 0
.LBB0_12:                               # %.thread6
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 73 26 is_stmt 1               # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:73:26
	addli r17, r17, 1
	.loc	1 86 20                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:86:20
	addli r7, r7, 1
	.loc	1 73 26                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:73:26
	beq r17, r25, .LBB0_29
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 89 25                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:89:25
	addli r24, r24, 1
.LBB0_14:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:86:25
	add.s r5, r28, r24
	add.s r6, r26, r24
	.loc	1 81 20                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:81:20
	mod.s r1, r5, r15
	.loc	1 89 25                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:89:25
	mod.s r4, r6, r9
	.loc	1 81 20                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:81:20
	slli r8, r1, 15
	.loc	1 89 25                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:89:25
	slli r1, r4, 15
	.loc	1 81 20                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:81:20
	add.s r13, r8, r22
	beq r2, r16, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:0:0
	zext_int2long r[11:12], r17
	.loc	1 81 20                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:81:20
	bneq r2, r20, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 20                          # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:0:20
	loadli.w r1,  -596(r30)                 # 4-byte Folded Reload
	.loc	1 86 25 is_stmt 1               # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:86:25
	sll.d r[8:9], r[11:12], r21
	.loc	1 81 25                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:81:25
	add.ul r[11:12], r[8:9], r[18:19]
	zext_int2long r[8:9], r1
	setlt.ul r1, r[8:9], r[11:12]
	load.d r[8:9], -592(r30)                # 8-byte Folded Reload
	bneq r1, zero, .LBB0_11
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 25 is_stmt 0                # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:0:25
	zext_int2long r[8:9], zero
	j .LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 89 25 is_stmt 1               # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:89:25
	addli r3, zero, 5
	xwait r16, 0
	addli r10, r10, 1
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 64
	ds_cfg r16, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r3, zero, 13
	shuffle_batch r1, r13, r23, 1
	addli r1, zero, 3
	unlock zero
	xsignal r1, 0
	xsignal r14, 0
	j .LBB0_12
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 80
	.loc	1 86 20                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:86:20
	addli r4, zero, 31
	.loc	1 89 25                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:89:25
	mod.s r3, r10, r3
	.loc	1 86 20                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:86:20
	mod.s r4, r7, r4
	.loc	1 89 25                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:89:25
	addli r10, r10, 1
	slli r13, r3, 14
	.loc	1 86 20                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:86:20
	slli r3, r4, 14
	lui r4, 266
	add.s r4, r3, r4
	beq r2, r21, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 20 is_stmt 0                # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:0:20
	addli r3, zero, 6
	.loc	1 86 20                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:86:20
	bneq r2, r3, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 19
	xwait r21, 0
	addli r27, zero, 6
	sll.d r[8:9], r[11:12], r1
	load.d r[11:12], -608(r30)              # 8-byte Folded Reload
	lock zero, r14
	addli r1, zero, 4096
	dma_cfg zero, zero, zero, 0
	add.ul r[8:9], r[11:12], r[8:9]
	dma_cfg zero, r9, zero, 2
	dma_cfg r4, r8, r23, 3
	addli r9, zero, 24
	dma_cfg r23, r1, r23, 4
	dma_run zero
	unlock r14
	xsignal r3, 0
	.loc	1 89 25 is_stmt 1               # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:89:25
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 9
	xwait r27, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r16, zero, 0
	ds_cfg r15, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r15, zero, 13
	shuffle_coa r13, r4, r23, 2
	unlock zero
	xsignal r21, 0
	xsignal r25, 0
	j .LBB0_12
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 25 is_stmt 0                # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:0:25
	addli r27, zero, 6
	.loc	1 89 25                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:89:25
	bneq r2, r14, .LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 64
	xwait r14, 0
	xwait r25, 0
	lock zero, r20
	mm_cfg r15, r23, r3, 0
	mm_cfg r25, r20, r20, 2
	beq r24, zero, .LBB0_27
# %bb.25:                               # %.preheader8
                                        #   in Loop: Header=BB0_14 Depth=2
	loadli.w r3,  -612(r30)                 # 4-byte Folded Reload
	mm_acc r3, r1, r13, 8
	j .LBB0_28
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 73 26 is_stmt 1               # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:73:26
	addli r17, r17, 1
	.loc	1 86 20                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:86:20
	addli r7, r7, 1
	bneq r17, r25, .LBB0_13
	j .LBB0_30
.LBB0_27:                               # %.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 89 25                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:89:25
	loadli.w r3,  -612(r30)                 # 4-byte Folded Reload
	mm r3, r1, r13, 8
.LBB0_28:                               # %.thread6.thread43
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r1, zero, 5
	unlock r20
	.loc	1 73 26                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:73:26
	addli r17, r17, 1
	.loc	1 86 20                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:86:20
	addli r7, r7, 1
	.loc	1 89 25                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:89:25
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r17, r25, .LBB0_13
	j .LBB0_5
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:73:26
	beq r2, r14, .LBB0_5
.LBB0_30:                               # %.thread42
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:101:67
	bneq r2, zero, .LBB0_7
# %bb.31:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -648(r30)                 # 4-byte Folded Reload
	addli r13, zero, 5
	zext_int2long r[3:4], r1
	addli r1, zero, 992
	zext_int2long r[8:9], r1
	loadli.w r1,  -644(r30)                 # 4-byte Folded Reload
	min.ul r[8:9], r[3:4], r[8:9]
	sext_int2long r[11:12], r1
	addli r1, zero, 448
	addli.d r[8:9], r[8:9], 32
	zext_int2long r[17:18], r1
	addli r1, zero, 18
	max.ul r[8:9], r[8:9], r[3:4]
	min.sl r[17:18], r[11:12], r[17:18]
	sub.sl r[3:4], r[8:9], r[3:4]
	addli.d r[8:9], r[17:18], 64
	zext_int2long r[17:18], r15
	min.ul r[26:27], r[3:4], r[17:18]
	load.d r[3:4], -640(r30)                # 8-byte Folded Reload
	max.sl r[8:9], r[8:9], r[11:12]
	sub.sl r[8:9], r[8:9], r[11:12]
	sll.d r[11:12], r[3:4], r1
	load.d r[3:4], 16(r30)
	addli r1, zero, 64
	zext_int2long r[17:18], r1
	addli r1, zero, 10
	add.ul r[11:12], r[3:4], r[11:12]
	load.d r[3:4], -632(r30)                # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r13
	slli r1, r26, 2
	min.sl r[8:9], r[8:9], r[17:18]
	dma_cfg zero, zero, zero, 0
	add.ul r[11:12], r[11:12], r[3:4]
	dma_cfg zero, r20, zero, 1
	dma_cfg r12, zero, zero, 2
	loadli.w r3,  -612(r30)                 # 4-byte Folded Reload
	dma_cfg r11, r3, r1, 3
	addli r1, zero, 4096
	dma_cfg r1, r23, r8, 4
	addli r1, zero, 11
	dma_run zero
	unlock r13
	j .LBB0_6
.LBB0_32:                               # %._crit_edge
	.loc	1 22 0                          # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_34
# %bb.33:
	.loc	1 0 0 is_stmt 0                 # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:22:0
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
.LBB0_34:
	.loc	1 22 0 epilogue_begin           # c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py:22:0
	addli sp, sp, 664
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
	.long	728                             # 0x2d8
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
.asciz	"c5a2w3e7be5eu5gw3c4gpsyrl6sup2v4kqlkpmqp4bo3awfgzqev.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/5a" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
