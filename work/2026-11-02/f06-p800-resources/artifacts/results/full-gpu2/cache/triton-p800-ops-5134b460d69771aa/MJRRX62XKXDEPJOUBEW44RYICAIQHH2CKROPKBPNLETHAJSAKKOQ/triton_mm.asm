	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/gr" "cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py"
	.loc	1 22 0                          # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2296
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:73:26
	core_id r12
	addli r30, sp, 2232
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r5, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -372(r30)
	storeli.w zero, -1016(r30)
	storeli.w zero, -1388(r30)
	storeli.w zero, -2160(r30)
	mul.s r1, r2, r1
	addli r2, r5, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r5
	load_param_i r5, 0
	mul.s r1, r2, r5
	fmac.s r2, r2, r5
	min.s r3, r2, r3
	ble.s r3, r1, .LBB0_40
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r3
	addli r4, r30, -2208
	sext_int2long r[18:19], r1
	loadli.w r8,  -372(r30)
	loadli.w r9,  -1016(r30)
	loadli.w r10,  -1388(r30)
	loadli.w r24,  -2160(r30)
	addli r11, zero, 64
	addli r5, zero, 2
	addli r14, zero, 7
	addli r28, zero, 3
	addli r16, zero, 4
	addli r25, zero, 1
	addli r21, zero, 92
	addli r23, zero, 6
	addli r13, zero, 9
	addli r22, zero, 128
	addli r26, zero, 32
	addli r27, zero, 16
	addli r15, zero, 256
	storeli.w zero, -2180(r30)              # 4-byte Folded Spill
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, zero, 4095
	addli r3, r30, -2232
	lui r1, 1048572
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread93
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:86:20
	addli r10, r10, 4
.LBB0_6:                                #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:0:20
	addli r1, r30, -2192
	addli r28, zero, 3
	load.d r[18:19], 0(r1)                  # 8-byte Folded Reload
	beq r12, zero, .LBB0_39
.LBB0_7:                                # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r5, zero, 2
.LBB0_8:                                # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, r30, -2208
	addli.d r[18:19], r[18:19], 1
	addli r24, r17, 0
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	setlt.sl r1, r[18:19], r[1:2]
	loadli.w r2,  -2180(r30)                # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -2180(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_40
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_28 Depth 3
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	addli r3, zero, 8
	addli r4, zero, 2
	div.s r1, r18, r1
	div.s r6, r1, r2
	.loc	1 53 22 is_stmt 1               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:53:22
	div.s r7, r6, r11
	.loc	1 54 41                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:54:41
	slli r1, r7, 3
	.loc	1 54 30 is_stmt 0               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:54:30
	sub.s r2, r5, r1
	.loc	1 54 50                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:54:50
	min.s r17, r2, r3
	.loc	1 95 15 is_stmt 1               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:95:15
	addli r3, r30, -2176
	.loc	1 55 40                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:55:40
	mod.s r2, r6, r17
	.loc	1 55 34 is_stmt 0               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:55:34
	add.s r5, r1, r2
	zext_int2long r[1:2], r22
	.loc	1 95 15 is_stmt 1               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:95:15
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	zext_int2long r[1:2], r5
	addli r3, r30, -2200
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	zext_int2long r[1:2], r11
	.loc	1 73 26                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:73:26
	addli r3, r30, -2168
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	bneq r12, r16, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 11
	xwait r1, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:0:26
	beq r12, r25, .LBB0_33
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r12, r4, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 0
	addli r5, zero, 2
	addli r4, zero, 192
	addli r6, zero, 5
	lui r7, 24
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	add.s r2, r10, r1
	add.s r3, r24, r1
	xwait r5, 0
	xwait r6, 0
	lock zero, zero
	.loc	1 73 26                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	ds_cfg r28, zero, 0
	.loc	1 81 20                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:20
	mod.s r2, r2, r21
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	mod.s r3, r3, r4
	ds_cfg r11, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:20
	slli r2, r2, 13
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	slli r3, r3, 12
	.loc	1 81 20                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:20
	add.s r2, r2, r7
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	shuffle_batch r3, r2, r26, 1
	unlock zero
	xsignal r28, 0
	xsignal r16, 0
	bneq r1, r16, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:73:26
	addli r9, r9, 4
	addli r8, r8, 4
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	add.s r17, r24, r1
	add.s r10, r10, r1
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:0:25
	slli r2, r7, 6
	loadli.w r3,  -2180(r30)                # 4-byte Folded Reload
	slli r4, r5, 6
	addli r1, r30, -2192
	addli r20, zero, 3
	sub.s r2, r6, r2
	storeli.w r4, -2220(r30)                # 4-byte Folded Spill
	addli r4, r30, -2216
	store.d r[18:19], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 0
	addli r19, zero, 0
	mod.s r3, r3, r28
	div.s r2, r2, r17
	zext_int2long r[6:7], r2
	slli r2, r2, 7
	sll.d r[5:6], r[6:7], r14
	.loc	1 73 26 is_stmt 1               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:73:26
	storeli.w r2, -2224(r30)                # 4-byte Folded Spill
	sll.d r[6:7], r[5:6], r25
	slli r5, r3, 15
	load.d r[2:3], 8(r30)
	store.d r[6:7], 0(r4)                   # 8-byte Folded Spill
	addli r4, zero, 8
	add.ul r[6:7], r[2:3], r[6:7]
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	xwait r23, 0
	xwait r13, 0
	lock zero, zero
	addli r2, zero, 128
	addli r22, zero, 128
	ds_cfg r20, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r28, r18, r26, 2
	unlock zero
	xsignal r14, 0
	xsignal r4, 0
	.loc	1 73 26                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:73:26
	addli r1, r1, 1
	beq r1, r16, .LBB0_31
.LBB0_18:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	addli r19, r19, 1
	addli r24, r17, 0
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_28 Depth 3
	addli r3, zero, 160
	.loc	1 86 20                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:86:20
	mod.s r2, r8, r21
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	addli r17, r24, 1
	.loc	1 86 20                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:86:20
	addli r8, r8, 1
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	mod.s r3, r9, r3
	addli r9, r9, 1
	.loc	1 86 20                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:86:20
	slli r2, r2, 13
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	slli r28, r3, 13
	.loc	1 86 20                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:86:20
	lui r3, 208
	add.s r18, r2, r3
	beq r12, r14, .LBB0_17
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:0:20
	bneq r12, r23, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:86:25
	zext_int2long r[2:3], r1
	.loc	1 86 20                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:86:20
	xwait r14, 0
	lock zero, r16
	addli r24, zero, 256
	addli r15, zero, 256
	dma_cfg r25, r25, zero, 0
	sll.d r[2:3], r[2:3], r27
	add.ul r[2:3], r[6:7], r[2:3]
	dma_cfg zero, r3, zero, 2
	dma_cfg r18, r2, r24, 3
	addli r2, zero, 2048
	dma_cfg r24, r2, r26, 4
	dma_run zero
	unlock r16
	xsignal r23, 0
	.loc	1 73 26 is_stmt 1               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:73:26
	addli r1, r1, 1
	bneq r1, r16, .LBB0_18
	j .LBB0_31
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	bneq r12, r16, .LBB0_26
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:0:0
	addli r2, zero, 192
	addli r12, zero, 1
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	xwait r16, 0
	xwait r4, 0
	.loc	1 0 0                           # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:0:0
	mod.s r2, r24, r2
	addli r24, zero, 1
	slli r18, r2, 12
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	beq r19, zero, .LBB0_27
# %bb.24:                               # %.preheader8.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 25                          # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:0:25
	addli r13, zero, 0
.LBB0_25:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	slli r2, r13, 12
	slli r3, r13, 8
	lock zero, r24
	addli r13, zero, 1
	mm_cfg r11, r26, r11, 0
	or r2, r2, r28
	or r3, r3, r5
	mm_cfg r24, r16, r24, 2
	mm_acc r3, r18, r2, 5
	andi r2, r12, 1
	addli r12, zero, 0
	unlock r24
	bneq r2, zero, .LBB0_25
	j .LBB0_29
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26 is_stmt 1               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:73:26
	addli r1, r1, 1
	bneq r1, r16, .LBB0_18
	j .LBB0_5
.LBB0_27:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 26 is_stmt 0                # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:0:26
	addli r2, zero, 0
.LBB0_28:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25 is_stmt 1               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	slli r3, r2, 12
	slli r2, r2, 8
	lock zero, r24
	mm_cfg r11, r26, r11, 0
	or r3, r3, r28
	or r2, r2, r5
	mm_cfg r24, r16, r24, 2
	mm r2, r18, r3, 5
	andi r3, r12, 1
	addli r2, zero, 1
	addli r12, zero, 0
	unlock r24
	bneq r3, zero, .LBB0_28
.LBB0_29:                               # %.thread6.thread94
                                        #   in Loop: Header=BB0_19 Depth=2
	addli r2, zero, 5
	.loc	1 73 26                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:73:26
	addli r1, r1, 1
	addli r13, zero, 9
	core_id r12
	.loc	1 89 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	xsignal r2, 0
	xsignal r13, 0
	bneq r1, r16, .LBB0_18
# %bb.30:                               # %.split17.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:86:20
	addli r10, r10, 4
	j .LBB0_32
.LBB0_31:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r10, r10, 4
	.loc	1 73 26                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:73:26
	bneq r12, r16, .LBB0_6
.LBB0_32:                               # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 10
	addli r5, zero, 2
	addli r28, zero, 3
	xsignal r1, 0
	addli r1, r30, -2192
	j .LBB0_38
.LBB0_33:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:0:26
	addli r5, r30, -2200
	addli r1, r30, -2192
	load.d r[2:3], 0(r5)                    # 8-byte Folded Reload
	store.d r[18:19], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 13
	sll.d r[5:6], r[2:3], r1
	addli r3, r30, -2232
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	and.d r[2:3], r[5:6], r[1:2]
	addli r1, zero, 0
	j .LBB0_35
.LBB0_34:                               # %.thread.us
                                        #   in Loop: Header=BB0_35 Depth=2
	.loc	1 81 25 is_stmt 1               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:25
	addli r7, r30, -2176
	sub.sl r[17:18], r[12:13], r[17:18]
	addli r27, zero, 1
	addli r25, zero, 1
	load.d r[19:20], 0(r7)                  # 8-byte Folded Reload
	.loc	1 81 20 is_stmt 0               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:20
	sll.d r[12:13], r[12:13], r27
	.loc	1 0 0                           # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:0:0
	add.s r7, r10, r1
	.loc	1 81 20                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:20
	xwait r28, 0
	lock zero, r16
	.loc	1 73 26 is_stmt 1               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:73:26
	addli r1, r1, 1
	.loc	1 81 20                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:20
	dma_cfg r27, r27, zero, 0
	.loc	1 81 25 is_stmt 0               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:25
	addli r27, r30, -2168
	.loc	1 81 0                          # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:0
	mod.s r7, r7, r21
	.loc	1 81 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:25
	div.sl r[17:18], r[17:18], r[19:20]
	.loc	1 81 20                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:20
	load.d r[19:20], 0(r30)
	add.ul r[12:13], r[19:20], r[12:13]
	dma_cfg zero, r13, zero, 2
	.loc	1 81 0                          # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:0
	slli r7, r7, 13
	.loc	1 81 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:25
	load.d r[19:20], 0(r27)                 # 8-byte Folded Reload
	min.sl r[27:28], r[17:18], r[19:20]
	.loc	1 81 0                          # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:0
	lui r19, 24
	.loc	1 81 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:25
	sub.sl r[17:18], r[27:28], r[17:18]
	.loc	1 81 0                          # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:0
	add.s r7, r7, r19
	addli r28, zero, 3
	.loc	1 81 20                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:20
	addli r17, r17, 64
	dma_cfg r7, r12, r11, 3
	dma_cfg r22, r15, r17, 4
	dma_run zero
	unlock r16
	xsignal r4, 0
	.loc	1 73 26 is_stmt 1               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:73:26
	beq r1, r16, .LBB0_37
.LBB0_35:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:86:25
	zext_int2long r[12:13], r1
	addli r7, zero, 5
	sll.d r[12:13], r[12:13], r7
	addli r7, zero, 16383
	.loc	1 81 25                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:81:25
	add.ul r[12:13], r[12:13], r[5:6]
	zext_int2long r[17:18], r7
	setlt.ul r7, r[17:18], r[12:13]
	addli.d r[17:18], r[2:3], 0
	bneq r7, zero, .LBB0_34
# %bb.36:                               # %.thread.us
                                        #   in Loop: Header=BB0_35 Depth=2
	.loc	1 0 25 is_stmt 0                # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:0:25
	zext_int2long r[17:18], zero
	j .LBB0_34
.LBB0_37:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 89 25 is_stmt 1               # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:89:25
	add.s r10, r10, r1
	addli r1, r30, -2192
	.loc	1 73 26                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:73:26
	addli r17, r24, 4
	addli r9, r9, 4
	addli r8, r8, 4
	core_id r12
	addli r5, zero, 2
	addli r13, zero, 9
	addli r27, zero, 16
.LBB0_38:                               # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:0:26
	load.d r[18:19], 0(r1)                  # 8-byte Folded Reload
	j .LBB0_8
.LBB0_39:                               #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 896
	.loc	1 101 67 is_stmt 1              # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:101:67
	loadli.w r1,  -2224(r30)                # 4-byte Folded Reload
	addli r20, r30, -2216
	zext_int2long r[6:7], r3
	loadli.w r3,  -2220(r30)                # 4-byte Folded Reload
	zext_int2long r[1:2], r1
	sext_int2long r[12:13], r3
	addli r3, r30, -2168
	min.ul r[6:7], r[1:2], r[6:7]
	load.d r[24:25], 0(r3)                  # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 128
	max.ul r[6:7], r[6:7], r[1:2]
	min.sl r[18:19], r[12:13], r[24:25]
	sub.sl r[1:2], r[6:7], r[1:2]
	addli.d r[6:7], r[18:19], 64
	addli r18, r30, -2176
	load.d r[3:4], 0(r18)                   # 8-byte Folded Reload
	max.sl r[6:7], r[6:7], r[12:13]
	sub.sl r[6:7], r[6:7], r[12:13]
	min.ul r[1:2], r[1:2], r[3:4]
	addli r4, r30, -2200
	addli r3, zero, 17
	min.sl r[6:7], r[6:7], r[24:25]
	addli r25, zero, 1
	load.d r[18:19], 0(r4)                  # 8-byte Folded Reload
	slli r1, r1, 2
	addli r2, zero, 2048
	sll.d r[18:19], r[18:19], r3
	load.d r[3:4], 16(r30)
	add.ul r[12:13], r[3:4], r[18:19]
	addli r3, r30, -2192
	load.d r[18:19], 0(r3)                  # 8-byte Folded Reload
	load.d r[3:4], 0(r20)                   # 8-byte Folded Reload
	add.ul r[12:13], r[12:13], r[3:4]
	addli r3, zero, 10
	addli r4, zero, 5
	xwait r3, 0
	addli r3, zero, 1
	lock zero, r4
	dma_cfg r3, zero, zero, 0
	dma_cfg zero, r3, zero, 1
	dma_cfg r13, zero, zero, 2
	dma_cfg r12, r5, r1, 3
	addli r1, zero, 512
	addli r13, zero, 9
	.loc	1 73 26                         # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:73:26
	core_id r12
	.loc	1 101 67                        # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:101:67
	dma_cfg r2, r1, r6, 4
	addli r1, zero, 11
	dma_run zero
	unlock r4
	xsignal r1, 0
	j .LBB0_7
.LBB0_40:                               # %._crit_edge
	.loc	1 22 0                          # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:22:0
	xsignal zero, 0
	bneq r12, zero, .LBB0_42
# %bb.41:
	.loc	1 0 0 is_stmt 0                 # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py:22:0
	addli sp, sp, 2232
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
	.long	2296                            # 0x8f8
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
.asciz	"cgrqn4e5gyej73ohnkruqiiroige6q2sp73f4jj6www2gv3a2bqu.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/gr" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
