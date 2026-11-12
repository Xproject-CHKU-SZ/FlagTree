	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/gn" "cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py"
	.loc	1 22 0                          # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1344
	addli r30, sp, 1280
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:73:26
	core_id r2
	loadli.w r27,  32(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:26
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	storeli.w zero, -568(r30)
	storeli.w zero, -812(r30)
	storeli.w zero, -1200(r30)
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
	sext_int2long r[3:4], r3
	sext_int2long r[16:17], r1
	loadli.w r8,  -244(r30)
	loadli.w r9,  -568(r30)
	loadli.w r10,  -812(r30)
	loadli.w r1,  -1200(r30)
	addli r11, zero, 64
	addli r12, zero, 2
	addli r14, zero, 7
	addli r15, zero, 4
	addli r25, zero, 96
	addli r19, zero, 60
	addli r21, zero, 6
	addli r23, zero, 128
	addli r24, zero, 32
	addli r26, zero, 5
	addli r18, zero, 512
	storeli.w zero, -1228(r30)              # 4-byte Folded Spill
	store.d r[3:4], -1256(r30)              # 8-byte Folded Spill
	addli r4, zero, 4095
	lui r3, 1048572
	store.d r[3:4], -1280(r30)              # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r10,  -1208(r30)               # 4-byte Folded Reload
	loadli.w r27,  32(r30)
	.loc	1 73 26                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:73:26
	addli r22, r1, 4
	addli r9, r9, 4
	addli r8, r8, 4
	.loc	1 89 25 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	add.s r10, r10, r3
.LBB0_6:                                # %.thread97
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:25
	load.d r[16:17], -1240(r30)             # 8-byte Folded Reload
	addli r25, zero, 96
.LBB0_7:                                # %.thread97
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[3:4], -1256(r30)               # 8-byte Folded Reload
	addli.d r[16:17], r[16:17], 1
	loadli.w r1,  -1228(r30)                # 4-byte Folded Reload
	setlt.sl r3, r[16:17], r[3:4]
	addli r1, r1, 1
	storeli.w r1, -1228(r30)                # 4-byte Folded Spill
	addli r1, r22, 0
	beq r3, zero, .LBB0_39
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	div.s r3, r16, r27
	loadli.w r4,  28(r30)
	.loc	1 54 50 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:54:50
	addli r5, zero, 8
	storeli.w r10, -1208(r30)               # 4-byte Folded Spill
	addli r10, zero, 3
	lui r20, 32
	div.s r6, r3, r4
	.loc	1 53 22                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:53:22
	div.s r7, r6, r11
	.loc	1 54 41                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:54:41
	slli r3, r7, 3
	.loc	1 54 30 is_stmt 0               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:54:30
	sub.s r4, r12, r3
	.loc	1 54 50                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:54:50
	min.s r13, r4, r5
	.loc	1 55 40 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:55:40
	mod.s r4, r6, r13
	.loc	1 55 34 is_stmt 0               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:55:34
	add.s r3, r3, r4
	zext_int2long r[4:5], r23
	.loc	1 95 15 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:95:15
	store.d r[4:5], -1224(r30)              # 8-byte Folded Spill
	zext_int2long r[4:5], r3
	store.d r[4:5], -1248(r30)              # 8-byte Folded Spill
	zext_int2long r[4:5], r11
	.loc	1 73 26                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:73:26
	store.d r[4:5], -1216(r30)              # 8-byte Folded Spill
	bneq r2, r15, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 11
	xwait r4, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:26
	addli r4, zero, 1
	beq r2, r4, .LBB0_30
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r2, r12, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r10,  -1208(r30)               # 4-byte Folded Reload
	addli r3, zero, 0
	lui r6, 32
	addli r7, zero, 3
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	add.s r4, r10, r3
	add.s r5, r1, r3
	xwait r12, 0
	xwait r26, 0
	lock zero, zero
	.loc	1 73 26                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	ds_cfg r12, zero, 0
	.loc	1 81 20                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:20
	mod.s r4, r4, r19
	.loc	1 89 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	mod.s r5, r5, r25
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:20
	slli r4, r4, 13
	.loc	1 89 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	slli r5, r5, 13
	.loc	1 81 20                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:20
	add.s r4, r4, r6
	.loc	1 89 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	shuffle_batch r5, r4, r24, 1
	unlock zero
	xsignal r7, 0
	xsignal r15, 0
	bneq r3, r15, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:73:26
	addli r9, r9, 4
	addli r8, r8, 4
	.loc	1 89 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	add.s r22, r1, r3
	add.s r10, r10, r3
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:25
	slli r4, r7, 6
	loadli.w r5,  -1228(r30)                # 4-byte Folded Reload
	slli r10, r3, 6
	store.d r[16:17], -1240(r30)            # 8-byte Folded Spill
	addli r27, zero, 96
	addli r26, zero, 0
	addli r16, zero, 8
	addli r17, zero, 9
	lui r20, 152
	sub.s r4, r6, r4
	mod.s r5, r5, r15
	div.s r4, r4, r13
	addli r13, zero, 0
	slli r25, r5, 15
	zext_int2long r[6:7], r4
	slli r3, r4, 7
	sll.d r[6:7], r[6:7], r14
	.loc	1 73 26 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:73:26
	storeli.w r3, -1272(r30)                # 4-byte Folded Spill
	load.d r[3:4], 8(r30)
	sll.d r[6:7], r[6:7], r12
	store.d r[6:7], -1264(r30)              # 8-byte Folded Spill
	add.ul r[6:7], r[3:4], r[6:7]
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	xwait r21, 0
	xwait r17, 0
	lock zero, zero
	ds_cfg r12, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r3, r28, r24, 2
	unlock zero
	xsignal r14, 0
	xsignal r16, 0
	.loc	1 73 26                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:73:26
	addli r26, r26, 1
	bneq r26, r15, .LBB0_28
	j .LBB0_29
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	.loc	1 86 20                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:86:20
	mod.s r3, r8, r19
	.loc	1 89 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	addli r4, zero, 80
	addli r22, r1, 1
	.loc	1 86 20                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:86:20
	addli r8, r8, 1
	.loc	1 89 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	mod.s r4, r9, r4
	addli r9, r9, 1
	.loc	1 86 20                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:86:20
	slli r5, r3, 14
	.loc	1 89 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	slli r3, r4, 14
	.loc	1 86 20                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:86:20
	add.s r28, r5, r20
	beq r2, r14, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:20
	bneq r2, r21, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:86:25
	zext_int2long r[3:4], r26
	.loc	1 86 20                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:86:20
	addli r1, zero, 17
	xwait r14, 0
	lock zero, r15
	addli r18, zero, 512
	dma_cfg zero, zero, zero, 0
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 512
	add.ul r[3:4], r[6:7], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r28, r3, r1, 3
	addli r3, zero, 4096
	dma_cfg r1, r3, r24, 4
	dma_run zero
	unlock r15
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:73:26
	addli r26, r26, 1
	bneq r26, r15, .LBB0_28
	j .LBB0_29
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	bneq r2, r15, .LBB0_24
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 0 is_stmt 0                 # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:0
	mod.s r1, r1, r27
	.loc	1 89 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	xwait r15, 0
	xwait r16, 0
	addli r28, zero, 1
	addli r16, zero, 1
	.loc	1 0 0                           # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:0
	slli r1, r1, 13
	.loc	1 89 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	beq r13, zero, .LBB0_25
# %bb.22:                               # %.preheader8.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25                          # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:25
	addli r17, zero, 0
.LBB0_23:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	slli r4, r17, 13
	slli r5, r17, 8
	lock zero, r28
	addli r17, zero, 1
	mm_cfg r11, r24, r11, 0
	or r4, r4, r3
	or r5, r5, r25
	mm_cfg r12, r15, r28, 2
	mm_acc r5, r1, r4, 8
	andi r4, r16, 1
	addli r16, zero, 0
	unlock r28
	bneq r4, zero, .LBB0_23
	j .LBB0_27
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:73:26
	addli r26, r26, 1
	bneq r26, r15, .LBB0_28
	j .LBB0_34
.LBB0_25:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:26
	addli r4, zero, 0
.LBB0_26:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	slli r5, r4, 13
	slli r4, r4, 8
	lock zero, r28
	mm_cfg r11, r24, r11, 0
	or r5, r5, r3
	or r4, r4, r25
	mm_cfg r12, r15, r28, 2
	mm r4, r1, r5, 8
	andi r5, r16, 1
	addli r4, zero, 1
	addli r16, zero, 0
	unlock r28
	bneq r5, zero, .LBB0_26
.LBB0_27:                               # %.thread6.thread94
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r1, zero, 5
	.loc	1 73 26                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:73:26
	addli r26, r26, 1
	addli r17, zero, 9
	addli r16, zero, 8
	.loc	1 89 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:89:25
	xsignal r1, 0
	xsignal r17, 0
	beq r26, r15, .LBB0_37
.LBB0_28:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r13, r13, 1
	addli r1, r22, 0
	j .LBB0_17
.LBB0_29:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:25
	addli r7, r10, 0
	loadli.w r10,  -1208(r30)               # 4-byte Folded Reload
	.loc	1 86 20 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:86:20
	addli r10, r10, 4
	.loc	1 73 26                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:73:26
	bneq r2, r15, .LBB0_35
	j .LBB0_38
.LBB0_30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:26
	load.d r[4:5], -1248(r30)               # 8-byte Folded Reload
	addli r3, zero, 13
	store.d r[16:17], -1240(r30)            # 8-byte Folded Spill
	sll.d r[6:7], r[4:5], r3
	load.d r[3:4], -1280(r30)               # 8-byte Folded Reload
	and.d r[4:5], r[6:7], r[3:4]
	addli r3, zero, 0
	j .LBB0_32
.LBB0_31:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 81 25 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:25
	load.d r[27:28], -1224(r30)             # 8-byte Folded Reload
	sub.sl r[25:26], r[16:17], r[25:26]
	.loc	1 0 0 is_stmt 0                 # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:0
	loadli.w r13,  -1208(r30)               # 4-byte Folded Reload
	.loc	1 81 20                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:20
	sll.d r[16:17], r[16:17], r12
	xwait r10, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	.loc	1 81 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:25
	div.sl r[25:26], r[25:26], r[27:28]
	.loc	1 81 20                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:20
	load.d r[27:28], 0(r30)
	.loc	1 0 0                           # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:0
	add.s r13, r13, r3
	.loc	1 73 26 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:73:26
	addli r3, r3, 1
	.loc	1 81 0                          # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:0
	mod.s r13, r13, r19
	.loc	1 81 20 is_stmt 0               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:20
	add.ul r[16:17], r[27:28], r[16:17]
	dma_cfg zero, r17, zero, 2
	.loc	1 81 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:25
	load.d r[27:28], -1216(r30)             # 8-byte Folded Reload
	.loc	1 81 0                          # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:0
	slli r13, r13, 13
	add.s r13, r13, r20
	.loc	1 81 20                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:20
	dma_cfg r13, r16, r23, 3
	.loc	1 81 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:25
	min.sl r[27:28], r[25:26], r[27:28]
	sub.sl r[25:26], r[27:28], r[25:26]
	.loc	1 81 20                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:20
	addli r22, r25, 64
	addli r26, zero, 5
	dma_cfg r23, r18, r22, 4
	dma_run zero
	unlock r15
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:73:26
	beq r3, r15, .LBB0_5
.LBB0_32:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:86:25
	zext_int2long r[16:17], r3
	addli r13, zero, 16383
	sll.d r[16:17], r[16:17], r26
	zext_int2long r[25:26], r13
	.loc	1 81 25                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:81:25
	add.ul r[16:17], r[16:17], r[6:7]
	setlt.ul r13, r[25:26], r[16:17]
	addli.d r[25:26], r[4:5], 0
	bneq r13, zero, .LBB0_31
# %bb.33:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 25 is_stmt 0                # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:25
	zext_int2long r[25:26], zero
	j .LBB0_31
.LBB0_34:                               # %.split17.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r7, r10, 0
	loadli.w r10,  -1208(r30)               # 4-byte Folded Reload
	.loc	1 86 20 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:86:20
	addli r10, r10, 4
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:20
	loadli.w r27,  32(r30)
	addli r26, zero, 5
	bneq r2, zero, .LBB0_6
# %bb.36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:101:67
	loadli.w r1,  -1272(r30)                # 4-byte Folded Reload
	sext_int2long r[16:17], r7
	zext_int2long r[3:4], r1
	addli r1, zero, 896
	zext_int2long r[5:6], r1
	addli r1, zero, 18
	min.ul r[5:6], r[3:4], r[5:6]
	addli.d r[5:6], r[5:6], 128
	max.ul r[5:6], r[5:6], r[3:4]
	store.d r[5:6], -1208(r30)              # 8-byte Folded Spill
	load.d r[5:6], -1216(r30)               # 8-byte Folded Reload
	min.sl r[26:27], r[16:17], r[5:6]
	store.d r[26:27], -1272(r30)            # 8-byte Folded Spill
	load.d r[26:27], -1208(r30)             # 8-byte Folded Reload
	sub.sl r[3:4], r[26:27], r[3:4]
	store.d r[3:4], -1208(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1272(r30)               # 8-byte Folded Reload
	load.d r[26:27], -1208(r30)             # 8-byte Folded Reload
	addli.d r[3:4], r[3:4], 64
	store.d r[3:4], -1272(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1224(r30)               # 8-byte Folded Reload
	min.ul r[3:4], r[26:27], r[3:4]
	load.d r[26:27], -1248(r30)             # 8-byte Folded Reload
	store.d r[3:4], -1208(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1272(r30)               # 8-byte Folded Reload
	sll.d r[26:27], r[26:27], r1
	addli r1, zero, 10
	max.sl r[3:4], r[3:4], r[16:17]
	sub.sl r[3:4], r[3:4], r[16:17]
	load.d r[16:17], 16(r30)
	min.sl r[5:6], r[3:4], r[5:6]
	load.d r[3:4], -1264(r30)               # 8-byte Folded Reload
	xwait r1, 0
	addli r1, zero, 1
	add.ul r[16:17], r[16:17], r[26:27]
	addli r26, zero, 5
	loadli.w r27,  32(r30)
	lock zero, r26
	add.ul r[16:17], r[16:17], r[3:4]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	load.d r[3:4], -1208(r30)               # 8-byte Folded Reload
	dma_cfg r17, zero, zero, 2
	slli r1, r3, 2
	dma_cfg r16, r25, r1, 3
	addli r1, zero, 4096
	dma_cfg r1, r18, r5, 4
	addli r1, zero, 11
	dma_run zero
	unlock r26
	xsignal r1, 0
	j .LBB0_6
.LBB0_37:                               # %.split17.thread96
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:67
	loadli.w r10,  -1208(r30)               # 4-byte Folded Reload
	.loc	1 86 20 is_stmt 1               # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:86:20
	addli r10, r10, 4
.LBB0_38:                               # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:73:26
	addli r1, zero, 10
	loadli.w r27,  32(r30)
	addli r25, zero, 96
	addli r26, zero, 5
	xsignal r1, 0
	load.d r[16:17], -1240(r30)             # 8-byte Folded Reload
	j .LBB0_7
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0                          # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py:22:0
	addli sp, sp, 1280
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
	.long	1344                            # 0x540
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
.asciz	"cgnbpl3u6mjb2aelmmhlmcf2pubzbgjiviwud4lnbpq2ecomrj73.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/gn" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
