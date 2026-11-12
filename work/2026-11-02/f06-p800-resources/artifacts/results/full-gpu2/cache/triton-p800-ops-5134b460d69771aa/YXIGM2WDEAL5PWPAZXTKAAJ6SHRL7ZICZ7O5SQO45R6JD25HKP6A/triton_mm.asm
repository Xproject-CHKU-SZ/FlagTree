	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/7a" "c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py"
	.loc	1 22 0                          # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2288
	addli r30, sp, 2224
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	core_id r12
	loadli.w r27,  32(r30)
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r5, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -364(r30)
	storeli.w zero, -1008(r30)
	storeli.w zero, -1372(r30)
	storeli.w zero, -2144(r30)
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
	ble.s r3, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	sext_int2long r[17:18], r1
	loadli.w r1,  -1372(r30)
	sext_int2long r[2:3], r3
	addli r4, r30, -2200
	loadli.w r8,  -364(r30)
	loadli.w r9,  -1008(r30)
	loadli.w r23,  -2144(r30)
	addli r11, zero, 64
	addli r5, zero, 2
	addli r14, zero, 7
	addli r15, zero, 4
	addli r25, zero, 1
	addli r20, zero, 90
	addli r22, zero, 6
	addli r13, zero, 9
	addli r10, zero, 3
	addli r19, zero, 128
	addli r26, zero, 32
	addli r24, zero, 16
	addli r21, zero, 256
	storeli.w zero, -2172(r30)              # 4-byte Folded Spill
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r3, r30, -2224
	storeli.w r1, -2148(r30)                # 4-byte Folded Spill
	addli r2, zero, 4095
	lui r1, 1048572
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:86:20
	loadli.w r1,  -2148(r30)                # 4-byte Folded Reload
	addli r1, r1, 4
	.loc	1 73 26                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	storeli.w r1, -2148(r30)                # 4-byte Folded Spill
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 10
	xsignal r1, 0
	addli r1, r30, -2184
	load.d r[17:18], 0(r1)                  # 8-byte Folded Reload
.LBB0_7:                                # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:26
	addli r5, zero, 2
.LBB0_8:                                # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r3, r30, -2200
	addli.d r[17:18], r[17:18], 1
	addli r23, r16, 0
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	setlt.sl r1, r[17:18], r[1:2]
	loadli.w r2,  -2172(r30)                # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -2172(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_39
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_27 Depth 3
	div.s r1, r17, r27
	loadli.w r2,  28(r30)
	addli r3, zero, 8
	addli r4, zero, 2
	div.s r6, r1, r2
	.loc	1 53 22 is_stmt 1               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:53:22
	div.s r7, r6, r11
	.loc	1 54 41                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:54:41
	slli r1, r7, 3
	.loc	1 54 30 is_stmt 0               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:54:30
	sub.s r2, r5, r1
	.loc	1 54 50                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:54:50
	min.s r16, r2, r3
	.loc	1 95 15 is_stmt 1               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:95:15
	addli r3, r30, -2168
	.loc	1 55 40                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:55:40
	mod.s r2, r6, r16
	.loc	1 55 34 is_stmt 0               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:55:34
	add.s r5, r1, r2
	zext_int2long r[1:2], r19
	.loc	1 95 15 is_stmt 1               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:95:15
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	zext_int2long r[1:2], r5
	addli r3, r30, -2192
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	zext_int2long r[1:2], r11
	.loc	1 73 26                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	addli r3, r30, -2160
	store.d r[1:2], 0(r3)                   # 8-byte Folded Spill
	bneq r12, r15, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r1, zero, 11
	xwait r1, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:26
	beq r12, r25, .LBB0_31
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	bneq r12, r4, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r10,  -2148(r30)               # 4-byte Folded Reload
	addli r1, zero, 0
	addli r5, zero, 2
	addli r4, zero, 192
	addli r6, zero, 5
	addli r7, zero, 3
	lui r16, 32
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	add.s r2, r10, r1
	add.s r3, r23, r1
	xwait r5, 0
	xwait r6, 0
	lock zero, zero
	.loc	1 73 26                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	ds_cfg r7, zero, 0
	.loc	1 81 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:20
	mod.s r2, r2, r20
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	mod.s r3, r3, r4
	ds_cfg r11, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r11, zero, 13
	.loc	1 81 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:20
	slli r2, r2, 13
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	slli r3, r3, 12
	.loc	1 81 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:20
	add.s r2, r2, r16
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	shuffle_batch r3, r2, r26, 1
	unlock zero
	xsignal r7, 0
	xsignal r15, 0
	bneq r1, r15, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:25
	addli r2, r10, 0
	addli r10, zero, 3
	.loc	1 73 26 is_stmt 1               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	addli r9, r9, 4
	addli r8, r8, 4
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	add.s r16, r23, r1
	add.s r2, r2, r1
	storeli.w r2, -2148(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:25
	slli r2, r7, 6
	loadli.w r3,  -2172(r30)                # 4-byte Folded Reload
	slli r4, r5, 6
	addli r1, r30, -2184
	sub.s r2, r6, r2
	storeli.w r4, -2212(r30)                # 4-byte Folded Spill
	addli r4, r30, -2208
	store.d r[17:18], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 0
	addli r18, zero, 0
	mod.s r3, r3, r15
	div.s r2, r2, r16
	zext_int2long r[6:7], r2
	slli r2, r2, 7
	sll.d r[5:6], r[6:7], r14
	.loc	1 73 26 is_stmt 1               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	storeli.w r2, -2216(r30)                # 4-byte Folded Spill
	sll.d r[6:7], r[5:6], r25
	slli r5, r3, 15
	load.d r[2:3], 8(r30)
	store.d r[6:7], 0(r4)                   # 8-byte Folded Spill
	addli r4, zero, 8
	add.ul r[6:7], r[2:3], r[6:7]
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	xwait r22, 0
	xwait r13, 0
	lock zero, zero
	addli r2, zero, 128
	addli r19, zero, 128
	ds_cfg r10, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r28, r17, r26, 2
	unlock zero
	xsignal r14, 0
	xsignal r4, 0
	.loc	1 73 26                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	addli r1, r1, 1
	bneq r1, r15, .LBB0_29
	j .LBB0_30
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_27 Depth 3
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	addli r3, zero, 160
	.loc	1 86 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:86:20
	mod.s r2, r8, r20
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	addli r16, r23, 1
	.loc	1 86 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:86:20
	addli r8, r8, 1
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	mod.s r3, r9, r3
	addli r9, r9, 1
	.loc	1 86 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:86:20
	slli r2, r2, 13
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	slli r28, r3, 13
	.loc	1 86 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:86:20
	lui r3, 212
	add.s r17, r2, r3
	beq r12, r14, .LBB0_17
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 20 is_stmt 0                # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:20
	bneq r12, r22, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:86:25
	zext_int2long r[2:3], r1
	.loc	1 86 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:86:20
	xwait r14, 0
	lock zero, r15
	addli r23, zero, 256
	addli r21, zero, 256
	dma_cfg r25, r25, zero, 0
	sll.d r[2:3], r[2:3], r24
	add.ul r[2:3], r[6:7], r[2:3]
	dma_cfg zero, r3, zero, 2
	dma_cfg r17, r2, r23, 3
	addli r2, zero, 2048
	dma_cfg r23, r2, r26, 4
	dma_run zero
	unlock r15
	xsignal r22, 0
	.loc	1 73 26 is_stmt 1               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	addli r1, r1, 1
	bneq r1, r15, .LBB0_29
	j .LBB0_30
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	bneq r12, r15, .LBB0_25
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:0
	addli r2, zero, 192
	addli r12, zero, 1
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	xwait r15, 0
	xwait r4, 0
	.loc	1 0 0                           # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:0
	mod.s r2, r23, r2
	addli r23, zero, 1
	slli r17, r2, 12
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	beq r18, zero, .LBB0_26
# %bb.23:                               # %.preheader8.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25                          # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:25
	addli r13, zero, 0
.LBB0_24:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	slli r2, r13, 12
	slli r3, r13, 8
	lock zero, r23
	addli r13, zero, 1
	mm_cfg r11, r26, r11, 0
	or r2, r2, r28
	or r3, r3, r5
	mm_cfg r23, r15, r23, 2
	mm_acc r3, r17, r2, 5
	andi r2, r12, 1
	addli r12, zero, 0
	unlock r23
	bneq r2, zero, .LBB0_24
	j .LBB0_28
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	addli r1, r1, 1
	bneq r1, r15, .LBB0_29
	j .LBB0_36
.LBB0_26:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:26
	addli r2, zero, 0
.LBB0_27:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25 is_stmt 1               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	slli r3, r2, 12
	slli r2, r2, 8
	lock zero, r23
	mm_cfg r11, r26, r11, 0
	or r3, r3, r28
	or r2, r2, r5
	mm_cfg r23, r15, r23, 2
	mm r2, r17, r3, 5
	andi r3, r12, 1
	addli r2, zero, 1
	addli r12, zero, 0
	unlock r23
	bneq r3, zero, .LBB0_27
.LBB0_28:                               # %.thread6.thread94
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r2, zero, 5
	.loc	1 73 26                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	addli r1, r1, 1
	addli r13, zero, 9
	core_id r12
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	xsignal r2, 0
	xsignal r13, 0
	beq r1, r15, .LBB0_5
.LBB0_29:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	addli r18, r18, 1
	addli r23, r16, 0
	j .LBB0_18
.LBB0_30:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:86:20
	loadli.w r1,  -2148(r30)                # 4-byte Folded Reload
	addli r1, r1, 4
	.loc	1 73 26                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	storeli.w r1, -2148(r30)                # 4-byte Folded Spill
	beq r12, r15, .LBB0_6
	j .LBB0_37
.LBB0_31:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:26
	addli r5, r30, -2192
	addli r1, r30, -2184
	load.d r[2:3], 0(r5)                    # 8-byte Folded Reload
	store.d r[17:18], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 13
	addli r18, r27, 0
	sll.d r[5:6], r[2:3], r1
	addli r3, r30, -2224
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	and.d r[2:3], r[5:6], r[1:2]
	addli r1, zero, 0
	j .LBB0_33
.LBB0_32:                               # %.thread.us
                                        #   in Loop: Header=BB0_33 Depth=2
	.loc	1 81 25 is_stmt 1               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:25
	addli r7, r30, -2168
	sub.sl r[16:17], r[12:13], r[16:17]
	addli r27, zero, 1
	load.d r[24:25], 0(r7)                  # 8-byte Folded Reload
	.loc	1 0 0 is_stmt 0                 # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:0
	loadli.w r7,  -2148(r30)                # 4-byte Folded Reload
	.loc	1 81 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:20
	sll.d r[12:13], r[12:13], r27
	xwait r10, 0
	lock zero, r15
	dma_cfg r27, r27, zero, 0
	.loc	1 81 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:25
	div.sl r[16:17], r[16:17], r[24:25]
	.loc	1 81 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:20
	load.d r[24:25], 0(r30)
	.loc	1 0 0                           # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:0
	add.s r7, r7, r1
	.loc	1 73 26 is_stmt 1               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	addli r1, r1, 1
	.loc	1 81 0                          # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:0
	mod.s r7, r7, r20
	.loc	1 81 20 is_stmt 0               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:20
	add.ul r[12:13], r[24:25], r[12:13]
	.loc	1 81 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:25
	addli r24, r30, -2160
	addli r25, zero, 1
	.loc	1 81 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:20
	dma_cfg zero, r13, zero, 2
	.loc	1 81 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:25
	load.d r[27:28], 0(r24)                 # 8-byte Folded Reload
	.loc	1 81 0                          # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:0
	lui r24, 32
	slli r7, r7, 13
	add.s r7, r7, r24
	.loc	1 81 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:20
	dma_cfg r7, r12, r11, 3
	.loc	1 81 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:25
	min.sl r[27:28], r[16:17], r[27:28]
	sub.sl r[16:17], r[27:28], r[16:17]
	.loc	1 81 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:20
	addli r16, r16, 64
	dma_cfg r19, r21, r16, 4
	dma_run zero
	unlock r15
	xsignal r4, 0
	.loc	1 73 26 is_stmt 1               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	beq r1, r15, .LBB0_35
.LBB0_33:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:86:25
	zext_int2long r[12:13], r1
	addli r7, zero, 5
	sll.d r[12:13], r[12:13], r7
	addli r7, zero, 16383
	.loc	1 81 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:81:25
	add.ul r[12:13], r[12:13], r[5:6]
	zext_int2long r[16:17], r7
	setlt.ul r7, r[16:17], r[12:13]
	addli.d r[16:17], r[2:3], 0
	bneq r7, zero, .LBB0_32
# %bb.34:                               # %.thread.us
                                        #   in Loop: Header=BB0_33 Depth=2
	.loc	1 0 25 is_stmt 0                # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:25
	zext_int2long r[16:17], zero
	j .LBB0_32
.LBB0_35:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 89 25 is_stmt 1               # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	loadli.w r2,  -2148(r30)                # 4-byte Folded Reload
	addli r27, r18, 0
	.loc	1 73 26                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	addli r16, r23, 4
	addli r9, r9, 4
	addli r8, r8, 4
	core_id r12
	addli r5, zero, 2
	addli r13, zero, 9
	addli r24, zero, 16
	.loc	1 89 25                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:89:25
	add.s r2, r2, r1
	addli r1, r30, -2184
	load.d r[17:18], 0(r1)                  # 8-byte Folded Reload
	storeli.w r2, -2148(r30)                # 4-byte Folded Spill
	j .LBB0_8
.LBB0_36:                               # %.split17.thread93
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:86:20
	loadli.w r1,  -2148(r30)                # 4-byte Folded Reload
	addli r1, r1, 4
	.loc	1 73 26                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	storeli.w r1, -2148(r30)                # 4-byte Folded Spill
.LBB0_37:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:26
	addli r1, r30, -2184
	load.d r[17:18], 0(r1)                  # 8-byte Folded Reload
	bneq r12, zero, .LBB0_7
# %bb.38:                               #   in Loop: Header=BB0_9 Depth=1
	addli r3, zero, 896
	.loc	1 101 67 is_stmt 1              # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:101:67
	loadli.w r1,  -2216(r30)                # 4-byte Folded Reload
	addli r23, r27, 0
	addli r25, zero, 1
	zext_int2long r[6:7], r3
	loadli.w r3,  -2212(r30)                # 4-byte Folded Reload
	zext_int2long r[1:2], r1
	sext_int2long r[12:13], r3
	addli r3, r30, -2160
	min.ul r[6:7], r[1:2], r[6:7]
	load.d r[27:28], 0(r3)                  # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 128
	max.ul r[6:7], r[6:7], r[1:2]
	min.sl r[17:18], r[12:13], r[27:28]
	sub.sl r[1:2], r[6:7], r[1:2]
	addli.d r[6:7], r[17:18], 64
	addli r17, r30, -2168
	load.d r[3:4], 0(r17)                   # 8-byte Folded Reload
	max.sl r[6:7], r[6:7], r[12:13]
	sub.sl r[6:7], r[6:7], r[12:13]
	min.ul r[1:2], r[1:2], r[3:4]
	addli r4, r30, -2192
	addli r3, zero, 17
	min.sl r[6:7], r[6:7], r[27:28]
	addli r27, r23, 0
	addli r23, r30, -2208
	load.d r[17:18], 0(r4)                  # 8-byte Folded Reload
	slli r1, r1, 2
	addli r2, zero, 2048
	sll.d r[17:18], r[17:18], r3
	load.d r[3:4], 16(r30)
	add.ul r[12:13], r[3:4], r[17:18]
	addli r3, r30, -2184
	load.d r[17:18], 0(r3)                  # 8-byte Folded Reload
	load.d r[3:4], 0(r23)                   # 8-byte Folded Reload
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
	.loc	1 73 26                         # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:73:26
	core_id r12
	.loc	1 101 67                        # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:101:67
	dma_cfg r2, r1, r6, 4
	addli r1, zero, 11
	dma_run zero
	unlock r4
	xsignal r1, 0
	j .LBB0_7
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0                          # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:22:0
	xsignal zero, 0
	bneq r12, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:22:0
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
	.loc	1 22 0 epilogue_begin           # c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py:22:0
	addli sp, sp, 2224
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
	.long	2288                            # 0x8f0
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
.asciz	"c7ayaiek4wrxohm3vmhc6vj743kbm2oxpbmmmm5x7jw5rjir2u7d.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/7a" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
