	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/ka" "ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py"
	.loc	1 22 0                          # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1352
	addli r30, sp, 1288
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:73:26
	core_id r2
	loadli.w r19,  32(r30)
	loadli.w r20,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:26
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
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -248(r30)
	storeli.w zero, -572(r30)
	storeli.w zero, -824(r30)
	storeli.w zero, -1212(r30)
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
	ble.s r3, r1, .LBB0_40
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[27:28], r1
	loadli.w r8,  -248(r30)
	loadli.w r9,  -572(r30)
	loadli.w r10,  -824(r30)
	loadli.w r1,  -1212(r30)
	addli r11, zero, 64
	addli r12, zero, 2
	addli r17, zero, 8
	addli r14, zero, 7
	addli r15, zero, 3
	addli r16, zero, 4
	addli r18, zero, 96
	addli r22, zero, 6
	addli r24, zero, 128
	addli r25, zero, 32
	addli r26, zero, 512
	storeli.w zero, -1236(r30)              # 4-byte Folded Spill
	store.d r[3:4], -1256(r30)              # 8-byte Folded Spill
	addli r4, zero, 4095
	lui r3, 1048572
	store.d r[3:4], -1288(r30)              # 8-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.split17.us
                                        #   in Loop: Header=BB0_7 Depth=1
	loadli.w r19,  32(r30)
	loadli.w r20,  28(r30)
	load.d r[27:28], -1264(r30)             # 8-byte Folded Reload
	.loc	1 73 26                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:73:26
	addli r5, r1, 4
	addli r9, r9, 4
	addli r8, r8, 4
	.loc	1 89 25 is_stmt 1               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	add.s r10, r10, r7
	addli r17, zero, 8
	addli r18, zero, 96
.LBB0_6:                                # %.thread97
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:25
	load.d r[3:4], -1256(r30)               # 8-byte Folded Reload
	addli.d r[27:28], r[27:28], 1
	loadli.w r1,  -1236(r30)                # 4-byte Folded Reload
	setlt.sl r3, r[27:28], r[3:4]
	addli r1, r1, 1
	storeli.w r1, -1236(r30)                # 4-byte Folded Spill
	addli r1, r5, 0
	beq r3, zero, .LBB0_40
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	div.s r3, r27, r19
	lui r21, 24
	addli r23, zero, 62
	div.s r6, r3, r20
	.loc	1 53 22 is_stmt 1               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:53:22
	div.s r7, r6, r11
	.loc	1 54 41                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:54:41
	slli r3, r7, 3
	.loc	1 54 30 is_stmt 0               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:54:30
	sub.s r4, r12, r3
	.loc	1 54 50                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:54:50
	min.s r13, r4, r17
	.loc	1 55 40 is_stmt 1               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:55:40
	mod.s r4, r6, r13
	.loc	1 55 34 is_stmt 0               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:55:34
	add.s r5, r3, r4
	zext_int2long r[3:4], r24
	.loc	1 95 15 is_stmt 1               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:95:15
	store.d r[3:4], -1232(r30)              # 8-byte Folded Spill
	zext_int2long r[3:4], r5
	store.d r[3:4], -1248(r30)              # 8-byte Folded Spill
	zext_int2long r[3:4], r11
	.loc	1 73 26                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:73:26
	store.d r[3:4], -1224(r30)              # 8-byte Folded Spill
	bneq r2, r16, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_14
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:26
	addli r3, zero, 1
	beq r2, r3, .LBB0_29
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r2, r12, .LBB0_14
# %bb.11:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 0
	addli r6, zero, 5
	addli r7, zero, 62
	lui r13, 24
.LBB0_12:                               # %.thread.us21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	add.s r4, r10, r3
	add.s r5, r1, r3
	xwait r12, 0
	xwait r6, 0
	lock zero, zero
	.loc	1 73 26                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	ds_cfg r12, zero, 0
	.loc	1 81 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:20
	mod.s r4, r4, r7
	.loc	1 89 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	mod.s r5, r5, r18
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:20
	slli r4, r4, 13
	.loc	1 89 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	slli r5, r5, 13
	.loc	1 81 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:20
	add.s r4, r4, r13
	.loc	1 89 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	shuffle_batch r5, r4, r25, 1
	unlock zero
	xsignal r15, 0
	xsignal r16, 0
	bneq r3, r16, .LBB0_12
# %bb.13:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:73:26
	addli r9, r9, 4
	addli r8, r8, 4
	.loc	1 89 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	add.s r5, r1, r3
	add.s r10, r10, r3
	j .LBB0_6
.LBB0_14:                               # %.split.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:25
	slli r3, r7, 6
	loadli.w r4,  -1236(r30)                # 4-byte Folded Reload
	slli r5, r5, 6
	addli.d r[19:20], r[27:28], 0
	addli r28, zero, 0
	lui r21, 148
	sub.s r3, r6, r3
	storeli.w r5, -1272(r30)                # 4-byte Folded Spill
	mod.s r4, r4, r15
	div.s r3, r3, r13
	addli r13, zero, 0
	slli r15, r4, 15
	zext_int2long r[6:7], r3
	slli r3, r3, 7
	sll.d r[5:6], r[6:7], r14
	.loc	1 73 26 is_stmt 1               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:73:26
	storeli.w r3, -1280(r30)                # 4-byte Folded Spill
	load.d r[3:4], 8(r30)
	sll.d r[5:6], r[5:6], r12
	store.d r[5:6], -1264(r30)              # 8-byte Folded Spill
	add.ul r[6:7], r[3:4], r[5:6]
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	addli r1, zero, 9
	xwait r22, 0
	xwait r1, 0
	lock zero, zero
	ds_cfg r12, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r23, r27, r25, 2
	unlock zero
	xsignal r14, 0
	xsignal r17, 0
	.loc	1 73 26                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:73:26
	addli r28, r28, 1
	bneq r28, r16, .LBB0_27
	j .LBB0_28
.LBB0_16:                               # %.split
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	.loc	1 86 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:86:20
	addli r3, zero, 61
	.loc	1 89 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	addli r4, zero, 80
	addli r5, r1, 1
	.loc	1 86 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:86:20
	mod.s r3, r8, r3
	.loc	1 89 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	mod.s r4, r9, r4
	addli r9, r9, 1
	.loc	1 86 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:86:20
	addli r8, r8, 1
	slli r3, r3, 14
	.loc	1 89 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	slli r23, r4, 14
	.loc	1 86 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:86:20
	add.s r27, r3, r21
	beq r2, r14, .LBB0_15
# %bb.17:                               # %.split
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 20 is_stmt 0                # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:20
	bneq r2, r22, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 86 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:86:25
	zext_int2long r[3:4], r28
	.loc	1 86 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:86:20
	addli r1, zero, 17
	xwait r14, 0
	lock zero, r16
	addli r26, zero, 512
	dma_cfg zero, zero, zero, 0
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 512
	add.ul r[3:4], r[6:7], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r27, r3, r1, 3
	addli r3, zero, 4096
	dma_cfg r1, r3, r25, 4
	dma_run zero
	unlock r16
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:73:26
	addli r28, r28, 1
	bneq r28, r16, .LBB0_27
	j .LBB0_28
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	bneq r2, r16, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 0 is_stmt 0                 # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:0
	mod.s r1, r1, r18
	.loc	1 89 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	xwait r16, 0
	xwait r17, 0
	addli r27, zero, 1
	addli r17, zero, 1
	.loc	1 0 0                           # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:0
	slli r1, r1, 13
	.loc	1 89 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	beq r13, zero, .LBB0_24
# %bb.21:                               # %.preheader8.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 25                          # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:25
	addli r18, zero, 0
.LBB0_22:                               # %.preheader8
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	slli r3, r18, 13
	slli r4, r18, 8
	lock zero, r27
	addli r18, zero, 1
	mm_cfg r11, r25, r11, 0
	or r3, r3, r23
	or r4, r4, r15
	mm_cfg r12, r16, r27, 2
	mm_acc r4, r1, r3, 8
	andi r3, r17, 1
	addli r17, zero, 0
	unlock r27
	bneq r3, zero, .LBB0_22
	j .LBB0_26
.LBB0_23:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 73 26 is_stmt 1               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:73:26
	addli r28, r28, 1
	bneq r28, r16, .LBB0_27
	j .LBB0_33
.LBB0_24:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 26 is_stmt 0                # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:26
	addli r3, zero, 0
.LBB0_25:                               # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25 is_stmt 1               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	slli r4, r3, 13
	slli r3, r3, 8
	lock zero, r27
	mm_cfg r11, r25, r11, 0
	or r4, r4, r23
	or r3, r3, r15
	mm_cfg r12, r16, r27, 2
	mm r3, r1, r4, 8
	andi r4, r17, 1
	addli r3, zero, 1
	addli r17, zero, 0
	unlock r27
	bneq r4, zero, .LBB0_25
.LBB0_26:                               # %.thread6.thread94
                                        #   in Loop: Header=BB0_16 Depth=2
	addli r1, zero, 5
	.loc	1 73 26                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:73:26
	addli r28, r28, 1
	addli r17, zero, 8
	addli r18, zero, 96
	.loc	1 89 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:89:25
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	beq r28, r16, .LBB0_36
.LBB0_27:                               # %.split.backedge
                                        #   in Loop: Header=BB0_16 Depth=2
	addli r13, r13, 1
	addli r1, r5, 0
	j .LBB0_16
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:86:20
	addli r10, r10, 4
	.loc	1 73 26                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:73:26
	bneq r2, r16, .LBB0_34
	j .LBB0_37
.LBB0_29:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:26
	load.d r[4:5], -1248(r30)               # 8-byte Folded Reload
	addli r3, zero, 13
	addli r7, zero, 0
	store.d r[27:28], -1264(r30)            # 8-byte Folded Spill
	sll.d r[5:6], r[4:5], r3
	load.d r[3:4], -1288(r30)               # 8-byte Folded Reload
	and.d r[3:4], r[5:6], r[3:4]
	j .LBB0_31
.LBB0_30:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 81 25 is_stmt 1               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:25
	load.d r[19:20], -1232(r30)             # 8-byte Folded Reload
	sub.sl r[27:28], r[17:18], r[27:28]
	.loc	1 81 20 is_stmt 0               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:20
	sll.d r[17:18], r[17:18], r12
	.loc	1 0 0                           # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:0
	add.s r13, r10, r7
	.loc	1 81 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:20
	xwait r15, 0
	lock zero, r16
	.loc	1 73 26 is_stmt 1               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:73:26
	addli r7, r7, 1
	.loc	1 81 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:20
	dma_cfg zero, zero, zero, 0
	.loc	1 81 0 is_stmt 0                # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:0
	mod.s r13, r13, r23
	.loc	1 81 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:25
	div.sl r[27:28], r[27:28], r[19:20]
	.loc	1 81 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:20
	load.d r[19:20], 0(r30)
	add.ul r[17:18], r[19:20], r[17:18]
	dma_cfg zero, r18, zero, 2
	.loc	1 81 0                          # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:0
	slli r13, r13, 13
	.loc	1 81 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:25
	load.d r[19:20], -1224(r30)             # 8-byte Folded Reload
	.loc	1 81 0                          # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:0
	add.s r13, r13, r21
	.loc	1 81 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:20
	dma_cfg r13, r17, r24, 3
	.loc	1 81 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:25
	min.sl r[19:20], r[27:28], r[19:20]
	sub.sl r[19:20], r[19:20], r[27:28]
	.loc	1 81 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:20
	addli r15, r19, 64
	dma_cfg r24, r26, r15, 4
	addli r15, zero, 3
	dma_run zero
	unlock r16
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:73:26
	beq r7, r16, .LBB0_5
.LBB0_31:                               # %.thread.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:86:25
	zext_int2long r[17:18], r7
	addli r13, zero, 5
	sll.d r[17:18], r[17:18], r13
	addli r13, zero, 16383
	.loc	1 81 25                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:81:25
	add.ul r[17:18], r[17:18], r[5:6]
	zext_int2long r[27:28], r13
	setlt.ul r13, r[27:28], r[17:18]
	addli.d r[27:28], r[3:4], 0
	bneq r13, zero, .LBB0_30
# %bb.32:                               # %.thread.us
                                        #   in Loop: Header=BB0_31 Depth=2
	.loc	1 0 25 is_stmt 0                # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:25
	zext_int2long r[27:28], zero
	j .LBB0_30
.LBB0_33:                               # %.split17.thread93
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20 is_stmt 1               # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:86:20
	addli r10, r10, 4
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:20
	addli.d r[27:28], r[19:20], 0
	addli r13, zero, 5
	bneq r2, zero, .LBB0_38
# %bb.35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67 is_stmt 1              # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:101:67
	loadli.w r1,  -1280(r30)                # 4-byte Folded Reload
	zext_int2long r[3:4], r1
	addli r1, zero, 896
	zext_int2long r[6:7], r1
	loadli.w r1,  -1272(r30)                # 4-byte Folded Reload
	min.ul r[6:7], r[3:4], r[6:7]
	sext_int2long r[17:18], r1
	addli r1, zero, 18
	addli.d r[6:7], r[6:7], 128
	max.ul r[6:7], r[6:7], r[3:4]
	store.d r[6:7], -1272(r30)              # 8-byte Folded Spill
	load.d r[6:7], -1224(r30)               # 8-byte Folded Reload
	min.sl r[19:20], r[17:18], r[6:7]
	store.d r[19:20], -1280(r30)            # 8-byte Folded Spill
	load.d r[19:20], -1272(r30)             # 8-byte Folded Reload
	sub.sl r[3:4], r[19:20], r[3:4]
	store.d r[3:4], -1272(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1280(r30)               # 8-byte Folded Reload
	load.d r[19:20], -1272(r30)             # 8-byte Folded Reload
	addli.d r[3:4], r[3:4], 64
	store.d r[3:4], -1280(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1232(r30)               # 8-byte Folded Reload
	min.ul r[3:4], r[19:20], r[3:4]
	load.d r[19:20], -1248(r30)             # 8-byte Folded Reload
	store.d r[3:4], -1232(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1280(r30)               # 8-byte Folded Reload
	sll.d r[19:20], r[19:20], r1
	addli r1, zero, 10
	max.sl r[3:4], r[3:4], r[17:18]
	sub.sl r[3:4], r[3:4], r[17:18]
	load.d r[17:18], 16(r30)
	min.sl r[6:7], r[3:4], r[6:7]
	load.d r[3:4], -1264(r30)               # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r13
	addli r1, zero, 1
	add.ul r[17:18], r[17:18], r[19:20]
	dma_cfg zero, zero, zero, 0
	loadli.w r20,  28(r30)
	loadli.w r19,  32(r30)
	dma_cfg zero, r1, zero, 1
	add.ul r[17:18], r[17:18], r[3:4]
	load.d r[3:4], -1232(r30)               # 8-byte Folded Reload
	dma_cfg r18, zero, zero, 2
	slli r1, r3, 2
	dma_cfg r17, r15, r1, 3
	addli r1, zero, 4096
	addli r18, zero, 96
	addli r17, zero, 8
	dma_cfg r1, r26, r6, 4
	addli r1, zero, 11
	dma_run zero
	unlock r13
	xsignal r1, 0
	j .LBB0_39
.LBB0_36:                               # %.split17.thread96
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:86:20
	addli r10, r10, 4
.LBB0_37:                               # %.thread7
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:73:26
	addli r1, zero, 10
	addli.d r[27:28], r[19:20], 0
	xsignal r1, 0
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:26
	loadli.w r19,  32(r30)
	loadli.w r20,  28(r30)
.LBB0_39:                               # %.thread97
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r15, zero, 3
	j .LBB0_6
.LBB0_40:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_42
# %bb.41:
	.loc	1 0 0 is_stmt 0                 # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:22:0
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
.LBB0_42:
	.loc	1 22 0 epilogue_begin           # ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py:22:0
	addli sp, sp, 1288
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
	.long	1352                            # 0x548
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
.asciz	"ckaqtkavqgmfnttcigw5xc4mmv75uynfzbw6tjr2vgvcolp6ijex.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/ka" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
