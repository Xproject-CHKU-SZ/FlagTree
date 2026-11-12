	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/t4" "ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py"
	.loc	1 22 0                          # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1328
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:73:26
	core_id r2
	addli r30, sp, 1264
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:0:26
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
	ble.s r3, r1, .LBB0_34
# %bb.4:                                # %.lr.ph
	loadli.w r8,  -244(r30)
	loadli.w r9,  -568(r30)
	loadli.w r10,  -812(r30)
	loadli.w r5,  -1200(r30)
	sext_int2long r[3:4], r3
	sext_int2long r[26:27], r1
	addli r11, zero, 64
	addli r12, zero, 1
	addli r7, zero, 8
	addli r14, zero, 7
	addli r15, zero, 4
	addli r17, zero, 2
	addli r23, zero, 96
	addli r28, zero, 80
	addli r20, zero, 60
	lui r21, 152
	addli r22, zero, 6
	addli r24, zero, 128
	addli r25, zero, 32
	storeli.w zero, -1204(r30)              # 4-byte Folded Spill
	store.d r[3:4], -1232(r30)              # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split17.thread91
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:86:20
	addli r10, r10, 2
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:73:26
	addli r1, zero, 10
	addli r12, zero, 1
	addli r23, zero, 96
	xsignal r1, 0
	load.d r[26:27], -1216(r30)             # 8-byte Folded Reload
.LBB0_7:                                # %.thread92
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:0:26
	load.d r[5:6], -1232(r30)               # 8-byte Folded Reload
	addli.d r[26:27], r[26:27], 1
	loadli.w r3,  -1204(r30)                # 4-byte Folded Reload
	setlt.sl r1, r[26:27], r[5:6]
	addli r3, r3, 1
	addli r5, r4, 0
	storeli.w r3, -1204(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_34
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	div.s r1, r26, r1
	div.s r4, r1, r3
	.loc	1 53 22 is_stmt 1               # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:53:22
	div.s r13, r4, r11
	.loc	1 54 41                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:54:41
	slli r1, r13, 3
	.loc	1 54 30 is_stmt 0               # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:54:30
	sub.s r3, r12, r1
	.loc	1 54 50                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:54:50
	min.s r16, r3, r7
	.loc	1 55 40 is_stmt 1               # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:55:40
	mod.s r3, r4, r16
	.loc	1 55 34 is_stmt 0               # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:55:34
	add.s r1, r1, r3
	.loc	1 95 15 is_stmt 1               # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:95:15
	zext_int2long r[18:19], r1
	.loc	1 73 26                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:73:26
	store.d r[18:19], -1224(r30)            # 8-byte Folded Spill
	bneq r2, r15, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	addli r19, zero, 512
	xwait r3, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:0:26
	beq r2, r12, .LBB0_28
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	addli r19, zero, 512
	bneq r2, r17, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	addli r6, zero, 5
	lui r12, 32
	addli r13, zero, 3
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:81:20
	mod.s r3, r10, r20
	.loc	1 89 25                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:89:25
	mod.s r4, r5, r23
	xwait r17, 0
	xwait r6, 0
	lock zero, zero
	addli r5, r5, 1
	.loc	1 81 20                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:81:20
	addli r10, r10, 1
	.loc	1 89 25                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:89:25
	ds_cfg r17, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:81:20
	slli r3, r3, 13
	.loc	1 89 25                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:89:25
	slli r4, r4, 13
	.loc	1 81 20                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:81:20
	add.s r3, r3, r12
	.loc	1 89 25                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:89:25
	shuffle_batch r4, r3, r25, 1
	.loc	1 73 26                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:73:26
	andi r3, r1, 1
	addli r1, zero, 0
	.loc	1 89 25                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:89:25
	unlock zero
	xsignal r13, 0
	xsignal r15, 0
	bneq r3, zero, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:73:26
	addli r9, r9, 2
	addli r8, r8, 2
	addli r4, r5, 0
	addli r12, zero, 1
	.loc	1 89 25                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:89:25
	j .LBB0_7
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:0:25
	slli r12, r13, 6
	loadli.w r6,  -1204(r30)                # 4-byte Folded Reload
	store.d r[26:27], -1216(r30)            # 8-byte Folded Spill
	slli r1, r1, 6
	addli r3, zero, 0
	addli r18, zero, 0
	sub.s r4, r4, r12
	storeli.w r1, -1248(r30)                # 4-byte Folded Spill
	mod.s r12, r6, r15
	div.s r4, r4, r16
	slli r16, r12, 15
	.loc	1 73 26 is_stmt 1               # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:73:26
	load.d r[12:13], 8(r30)
	zext_int2long r[26:27], r4
	slli r1, r4, 7
	sll.d r[26:27], r[26:27], r14
	storeli.w r1, -1256(r30)                # 4-byte Folded Spill
	addli r1, zero, 1
	sll.d r[26:27], r[26:27], r17
	store.d r[26:27], -1240(r30)            # 8-byte Folded Spill
	add.ul r[26:27], r[12:13], r[26:27]
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 89 25                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:89:25
	addli r3, zero, 9
	xwait r22, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r17, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r25, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r23, r13, r25, 2
	unlock zero
	xsignal r14, 0
	xsignal r7, 0
	.loc	1 73 26                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:73:26
	andi r1, r1, 1
	bneq r1, zero, .LBB0_26
	j .LBB0_27
.LBB0_17:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	.loc	1 86 20                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:86:20
	mod.s r12, r8, r20
	.loc	1 89 25                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:89:25
	mod.s r13, r9, r28
	addli r4, r5, 1
	addli r9, r9, 1
	.loc	1 86 20                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:86:20
	addli r8, r8, 1
	slli r12, r12, 14
	.loc	1 89 25                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:89:25
	slli r23, r13, 14
	.loc	1 86 20                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:86:20
	add.s r13, r12, r21
	beq r2, r14, .LBB0_16
# %bb.18:                               # %.split
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 20 is_stmt 0                # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:0:20
	bneq r2, r22, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 86 20                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:86:20
	zext_int2long r[5:6], r3
	xwait r14, 0
	lock zero, r15
	addli r3, zero, 4096
	dma_cfg zero, zero, zero, 0
	add.ul r[5:6], r[26:27], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r13, r5, r19, 3
	dma_cfg r19, r3, r25, 4
	dma_run zero
	unlock r15
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:73:26
	andi r1, r1, 1
	bneq r1, zero, .LBB0_26
	j .LBB0_27
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:0:26
	andi r1, r1, 1
	.loc	1 89 25 is_stmt 1               # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:89:25
	bneq r2, r15, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 25 is_stmt 0                # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:0:25
	addli r3, zero, 96
	addli r13, zero, 1
	addli r12, zero, 0
	.loc	1 89 25                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:89:25
	xwait r15, 0
	xwait r7, 0
	mod.s r3, r5, r3
	slli r5, r3, 13
	addli r3, zero, 1
	beq r18, zero, .LBB0_23
.LBB0_22:                               # %.preheader8
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r6, r12, 13
	slli r7, r12, 8
	lock zero, r3
	addli r12, zero, 1
	mm_cfg r11, r25, r11, 0
	or r6, r6, r23
	or r7, r7, r16
	mm_cfg r17, r15, r3, 2
	mm_acc r7, r5, r6, 8
	andi r6, r13, 1
	addli r13, zero, 0
	unlock r3
	bneq r6, zero, .LBB0_22
	j .LBB0_24
.LBB0_23:                               # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r6, r12, 13
	slli r7, r12, 8
	lock zero, r3
	addli r12, zero, 1
	mm_cfg r11, r25, r11, 0
	or r6, r6, r23
	or r7, r7, r16
	mm_cfg r17, r15, r3, 2
	mm r7, r5, r6, 8
	andi r6, r13, 1
	addli r13, zero, 0
	unlock r3
	bneq r6, zero, .LBB0_23
.LBB0_24:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_17 Depth=2
	addli r3, zero, 5
	addli r7, zero, 8
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	bneq r1, zero, .LBB0_26
	j .LBB0_5
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 73 26 is_stmt 1               # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:73:26
	beq r1, zero, .LBB0_31
.LBB0_26:                               # %.split.backedge
                                        #   in Loop: Header=BB0_17 Depth=2
	.loc	1 0 26 is_stmt 0                # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:0:26
	addli r1, zero, 0
	.loc	1 89 25 is_stmt 1               # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:89:25
	addli r18, r18, 1
	lui r3, 32
	addli r5, r4, 0
	j .LBB0_17
.LBB0_27:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:86:20
	addli r10, r10, 2
	.loc	1 73 26                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:73:26
	beq r2, r15, .LBB0_6
	j .LBB0_32
.LBB0_28:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:0:26
	load.d r[3:4], -1224(r30)               # 8-byte Folded Reload
	addli r1, zero, 14
	load.d r[6:7], 0(r30)
	addli r13, zero, 0
	lui r16, 32
	store.d r[26:27], -1216(r30)            # 8-byte Folded Spill
	sll.d r[3:4], r[3:4], r1
	addli r1, zero, 1
	add.ul r[3:4], r[6:7], r[3:4]
	addli r6, zero, 3
	addli r7, zero, 256
.LBB0_29:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 81 20 is_stmt 1               # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:81:20
	mod.s r12, r10, r20
	.loc	1 86 25                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:86:25
	zext_int2long r[26:27], r13
	.loc	1 81 20                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:81:20
	xwait r6, 0
	lock zero, r15
	addli r10, r10, 1
	addli r13, zero, 32
	dma_cfg zero, zero, zero, 0
	sll.d r[26:27], r[26:27], r17
	add.ul r[26:27], r[3:4], r[26:27]
	slli r12, r12, 13
	dma_cfg zero, r27, zero, 2
	add.s r12, r12, r16
	dma_cfg r12, r26, r24, 3
	.loc	1 73 26                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:73:26
	andi r12, r1, 1
	addli r1, zero, 0
	.loc	1 81 20                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:81:20
	dma_cfg r24, r7, r11, 4
	dma_run zero
	unlock r15
	xsignal r17, 0
	.loc	1 73 26                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:73:26
	bneq r12, zero, .LBB0_29
# %bb.30:                               # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:0:26
	load.d r[26:27], -1216(r30)             # 8-byte Folded Reload
	.loc	1 73 26                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:73:26
	addli r4, r5, 2
	addli r9, r9, 2
	addli r8, r8, 2
	addli r7, zero, 8
	addli r12, zero, 1
	.loc	1 89 25 is_stmt 1               # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:89:25
	j .LBB0_7
.LBB0_31:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:86:20
	addli r10, r10, 2
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 20 is_stmt 0                # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:0:20
	load.d r[26:27], -1216(r30)             # 8-byte Folded Reload
	addli r12, zero, 1
	addli r23, zero, 96
	bneq r2, zero, .LBB0_7
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67 is_stmt 1              # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:101:67
	loadli.w r1,  -1256(r30)                # 4-byte Folded Reload
	addli r3, zero, 1
	zext_int2long r[5:6], r1
	addli r1, zero, 896
	zext_int2long r[12:13], r1
	loadli.w r1,  -1248(r30)                # 4-byte Folded Reload
	min.ul r[12:13], r[5:6], r[12:13]
	sext_int2long r[26:27], r1
	addli r1, zero, 18
	addli.d r[12:13], r[12:13], 128
	store.d r[12:13], -1256(r30)            # 8-byte Folded Spill
	zext_int2long r[12:13], zero
	store.d r[12:13], -1248(r30)            # 8-byte Folded Spill
	load.d r[12:13], -1256(r30)             # 8-byte Folded Reload
	max.ul r[12:13], r[12:13], r[5:6]
	store.d r[12:13], -1256(r30)            # 8-byte Folded Spill
	load.d r[12:13], -1248(r30)             # 8-byte Folded Reload
	min.sl r[12:13], r[26:27], r[12:13]
	store.d r[12:13], -1264(r30)            # 8-byte Folded Spill
	load.d r[12:13], -1256(r30)             # 8-byte Folded Reload
	sub.sl r[5:6], r[12:13], r[5:6]
	store.d r[5:6], -1248(r30)              # 8-byte Folded Spill
	load.d r[5:6], -1264(r30)               # 8-byte Folded Reload
	addli.d r[12:13], r[5:6], 64
	zext_int2long r[5:6], r24
	store.d r[5:6], -1256(r30)              # 8-byte Folded Spill
	max.sl r[5:6], r[12:13], r[26:27]
	load.d r[12:13], -1256(r30)             # 8-byte Folded Reload
	store.d r[5:6], -1264(r30)              # 8-byte Folded Spill
	load.d r[5:6], -1248(r30)               # 8-byte Folded Reload
	min.ul r[5:6], r[5:6], r[12:13]
	load.d r[12:13], 16(r30)
	store.d r[5:6], -1248(r30)              # 8-byte Folded Spill
	load.d r[5:6], -1264(r30)               # 8-byte Folded Reload
	sub.sl r[5:6], r[5:6], r[26:27]
	store.d r[5:6], -1256(r30)              # 8-byte Folded Spill
	load.d r[5:6], -1224(r30)               # 8-byte Folded Reload
	sll.d r[26:27], r[5:6], r1
	zext_int2long r[5:6], r11
	addli r1, zero, 10
	add.ul r[26:27], r[12:13], r[26:27]
	load.d r[12:13], -1256(r30)             # 8-byte Folded Reload
	min.sl r[5:6], r[12:13], r[5:6]
	load.d r[12:13], -1240(r30)             # 8-byte Folded Reload
	store.d r[5:6], -1224(r30)              # 8-byte Folded Spill
	add.ul r[12:13], r[26:27], r[12:13]
	load.d r[26:27], -1216(r30)             # 8-byte Folded Reload
	xwait r1, 0
	addli r1, zero, 5
	lock zero, r1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r3, zero, 1
	addli r3, zero, 4096
	load.d r[5:6], -1248(r30)               # 8-byte Folded Reload
	dma_cfg r13, zero, zero, 2
	slli r1, r5, 2
	dma_cfg r12, r16, r1, 3
	addli r1, zero, 5
	addli r12, zero, 1
	load.d r[5:6], -1224(r30)               # 8-byte Folded Reload
	dma_cfg r3, r19, r5, 4
	dma_run zero
	unlock r1
	addli r1, zero, 11
	xsignal r1, 0
	j .LBB0_7
.LBB0_34:                               # %._crit_edge
	.loc	1 22 0                          # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_36
# %bb.35:
	.loc	1 0 0 is_stmt 0                 # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:22:0
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
	.loc	1 22 0 epilogue_begin           # ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py:22:0
	addli sp, sp, 1264
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
	.long	1328                            # 0x530
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
.asciz	"ct4asqzot5lzqbtcsj72d6mvaxwejij4ohqi5zr2ldcpjwoe7bhx.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/t4" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
