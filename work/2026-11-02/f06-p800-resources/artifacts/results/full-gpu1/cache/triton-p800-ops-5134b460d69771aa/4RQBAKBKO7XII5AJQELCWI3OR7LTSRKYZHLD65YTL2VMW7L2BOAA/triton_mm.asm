	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/co" "ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py"
	.loc	1 22 0                          # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2288
	addli r30, sp, 2224
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	core_id r17
	loadli.w r5,  32(r30)
	xsignal_mode_cfg r1
	beq r17, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:0:26
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
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -372(r30)
	storeli.w zero, -1016(r30)
	storeli.w zero, -1388(r30)
	storeli.w zero, -2160(r30)
	mul.s r1, r2, r1
	addli r2, r4, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r1, r2, r4
	fmac.s r2, r2, r4
	addli r4, r5, 0
	min.s r3, r2, r3
	ble.s r3, r1, .LBB0_40
# %bb.4:                                # %.lr.ph
	sext_int2long r[26:27], r1
	sext_int2long r[2:3], r3
	addli r5, r30, -2200
	lui r1, 15
	loadli.w r8,  -372(r30)
	loadli.w r9,  -1016(r30)
	loadli.w r15,  -1388(r30)
	loadli.w r24,  -2160(r30)
	addli r12, zero, 32
	addli r18, zero, 8
	addli r14, zero, 7
	addli r16, zero, 4
	addli r22, zero, 1
	addli r19, zero, 192
	addli r21, zero, 92
	addli r23, zero, 6
	addli r25, zero, 64
	addli r20, zero, 5
	addli r6, r30, -2224
	lui r13, 24
	storeli.w zero, -2176(r30)              # 4-byte Folded Spill
	store.d r[2:3], 0(r5)                   # 8-byte Folded Spill
	ori r3, r1, 4095
	lui r1, 1023
	lui r5, 208
	lui r2, 1047552
	ori r1, r1, 4095
	store.d r[2:3], 0(r6)                   # 8-byte Folded Spill
	storeli.w r1, -2172(r30)                # 4-byte Folded Spill
	j .LBB0_9
.LBB0_5:                                # %.split17.thread93
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20 is_stmt 1               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:86:20
	addli r15, r15, 64
.LBB0_6:                                #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 20 is_stmt 0                # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:0:20
	addli r2, r30, -2184
	addli r19, zero, 192
	addli r20, zero, 5
	lui r13, 24
	load.d r[26:27], 0(r2)                  # 8-byte Folded Reload
	beq r17, zero, .LBB0_39
.LBB0_7:                                # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r28,  32(r30)
	addli r4, r28, 0
.LBB0_8:                                # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r6, r30, -2200
	addli.d r[26:27], r[26:27], 1
	addli r24, r1, 0
	load.d r[2:3], 0(r6)                    # 8-byte Folded Reload
	setlt.sl r2, r[26:27], r[2:3]
	loadli.w r3,  -2176(r30)                # 4-byte Folded Reload
	addli r3, r3, 1
	storeli.w r3, -2176(r30)                # 4-byte Folded Spill
	beq r2, zero, .LBB0_40
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_28 Depth 3
	div.s r1, r26, r4
	loadli.w r2,  28(r30)
	addli r28, zero, 2
	div.s r3, r1, r2
	.loc	1 53 22 is_stmt 1               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:53:22
	addli r1, zero, 128
	div.s r6, r3, r1
	.loc	1 54 41                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:54:41
	slli r1, r6, 3
	.loc	1 54 30 is_stmt 0               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:54:30
	sub.s r2, r12, r1
	.loc	1 54 50                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:54:50
	min.s r7, r2, r18
	.loc	1 55 40 is_stmt 1               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:55:40
	mod.s r2, r3, r7
	.loc	1 55 34 is_stmt 0               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:55:34
	add.s r1, r1, r2
	addli r2, r30, -2192
	.loc	1 95 15 is_stmt 1               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:95:15
	zext_int2long r[10:11], r1
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	addli r2, zero, 1984
	zext_int2long r[10:11], r2
	.loc	1 73 26                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	addli r2, r30, -2168
	store.d r[10:11], 0(r2)                 # 8-byte Folded Spill
	bneq r17, r16, .LBB0_11
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r2, zero, 11
	addli r10, zero, 3
	xwait r2, 0
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:0:26
	beq r17, r22, .LBB0_33
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	addli r10, zero, 3
	bneq r17, r28, .LBB0_16
# %bb.13:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r6, r4, 0
	addli r3, zero, 0
	addli r4, zero, 2
.LBB0_14:                               # %.thread.us21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	add.s r1, r15, r3
	add.s r2, r24, r3
	xwait r4, 0
	xwait r20, 0
	lock zero, zero
	.loc	1 73 26                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	ds_cfg r10, zero, 0
	.loc	1 81 20                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:20
	mod.s r1, r1, r21
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	mod.s r2, r2, r19
	ds_cfg r25, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r25, zero, 13
	.loc	1 81 20                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:20
	slli r1, r1, 13
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	slli r2, r2, 12
	.loc	1 81 20                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:20
	add.s r1, r1, r13
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	shuffle_batch r2, r1, r12, 1
	unlock zero
	xsignal r10, 0
	xsignal r16, 0
	bneq r3, r25, .LBB0_14
# %bb.15:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 73 26                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	addli r9, r9, 64
	addli r8, r8, 64
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	add.s r1, r24, r3
	add.s r15, r15, r3
	addli r4, r6, 0
	j .LBB0_8
.LBB0_16:                               # %.split.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 25 is_stmt 0                # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:0:25
	addli r2, r30, -2184
	slli r11, r1, 6
	addli r20, zero, 192
	addli r13, zero, 0
	store.d r[26:27], 0(r2)                 # 8-byte Folded Spill
	slli r2, r6, 7
	sub.s r2, r3, r2
	loadli.w r3,  -2176(r30)                # 4-byte Folded Reload
	div.s r2, r2, r7
	mod.s r3, r3, r10
	zext_int2long r[6:7], r2
	slli r1, r2, 7
	slli r28, r3, 15
	addli r3, r30, -2208
	sll.d r[6:7], r[6:7], r14
	.loc	1 73 26 is_stmt 1               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	storeli.w r1, -2212(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[6:7], r[6:7], r22
	store.d r[6:7], 0(r3)                   # 8-byte Folded Spill
	add.ul r[26:27], r[1:2], r[6:7]
	addli r3, zero, 0
	addli r7, zero, 160
	j .LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	addli r2, zero, 9
	xwait r23, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 128
	ds_cfg r10, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r19, r6, r12, 2
	unlock zero
	xsignal r14, 0
	xsignal r18, 0
	.loc	1 73 26                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	addli r13, r13, 1
	beq r13, r25, .LBB0_31
.LBB0_18:                               # %.split.backedge
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	addli r3, r3, 1
	addli r24, r1, 0
.LBB0_19:                               # %.split
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_28 Depth 3
	.loc	1 86 20                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:86:20
	mod.s r2, r8, r21
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	mod.s r4, r9, r7
	addli r1, r24, 1
	addli r9, r9, 1
	.loc	1 86 20                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:86:20
	addli r8, r8, 1
	slli r2, r2, 13
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	slli r19, r4, 13
	.loc	1 86 20                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:86:20
	add.s r6, r2, r5
	beq r17, r14, .LBB0_17
# %bb.20:                               # %.split
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 20 is_stmt 0                # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:0:20
	bneq r17, r23, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 86 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:86:25
	zext_int2long r[4:5], r13
	.loc	1 86 20                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:86:20
	addli r2, zero, 17
	xwait r14, 0
	lock zero, r16
	addli r19, zero, 256
	dma_cfg r22, r22, zero, 0
	sll.d r[4:5], r[4:5], r2
	addli r2, zero, 4096
	add.ul r[4:5], r[26:27], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r6, r4, r19, 3
	lui r5, 208
	dma_cfg r19, r2, r12, 4
	dma_run zero
	unlock r16
	xsignal r23, 0
	.loc	1 73 26 is_stmt 1               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	addli r13, r13, 1
	bneq r13, r25, .LBB0_18
	j .LBB0_31
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	bneq r17, r16, .LBB0_26
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 0 is_stmt 0                 # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:0:0
	mod.s r2, r24, r20
	addli r7, zero, 1
	addli r17, zero, 1
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	xwait r16, 0
	xwait r18, 0
	.loc	1 0 0                           # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:0:0
	slli r6, r2, 12
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	beq r3, zero, .LBB0_27
# %bb.24:                               # %.preheader8.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 25                          # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:0:25
	addli r18, zero, 0
.LBB0_25:                               # %.preheader8
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	slli r2, r18, 12
	slli r4, r18, 8
	lock zero, r7
	addli r18, zero, 1
	mm_cfg r25, r12, r25, 0
	or r2, r2, r19
	or r4, r4, r28
	mm_cfg r7, r16, r7, 2
	mm_acc r4, r6, r2, 5
	andi r2, r17, 1
	addli r17, zero, 0
	unlock r7
	bneq r2, zero, .LBB0_25
	j .LBB0_29
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 73 26 is_stmt 1               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	addli r13, r13, 1
	bneq r13, r25, .LBB0_18
	j .LBB0_5
.LBB0_27:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	.loc	1 0 26 is_stmt 0                # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:0:26
	addli r2, zero, 0
.LBB0_28:                               # %.preheader
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 89 25 is_stmt 1               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	slli r4, r2, 12
	slli r2, r2, 8
	lock zero, r7
	mm_cfg r25, r12, r25, 0
	or r4, r4, r19
	or r2, r2, r28
	mm_cfg r7, r16, r7, 2
	mm r2, r6, r4, 5
	andi r4, r17, 1
	addli r2, zero, 1
	addli r17, zero, 0
	unlock r7
	bneq r4, zero, .LBB0_28
.LBB0_29:                               # %.thread6.thread94
                                        #   in Loop: Header=BB0_19 Depth=2
	addli r2, zero, 5
	.loc	1 73 26                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	addli r13, r13, 1
	core_id r17
	addli r18, zero, 8
	addli r7, zero, 160
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	bneq r13, r25, .LBB0_18
# %bb.30:                               # %.split17.thread96
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 86 20                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:86:20
	addli r15, r15, 64
	j .LBB0_32
.LBB0_31:                               # %.split17
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r15, r15, 64
	.loc	1 73 26                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	bneq r17, r16, .LBB0_6
.LBB0_32:                               # %.thread7
                                        #   in Loop: Header=BB0_9 Depth=1
	addli r2, zero, 10
	loadli.w r28,  32(r30)
	addli r19, zero, 192
	addli r20, zero, 5
	lui r13, 24
	xsignal r2, 0
	addli r2, r30, -2184
	addli r4, r28, 0
	j .LBB0_38
.LBB0_33:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:0:26
	addli r4, r30, -2192
	addli r1, r30, -2184
	addli r10, zero, 3
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	store.d r[26:27], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 17
	sll.d r[26:27], r[2:3], r1
	addli r3, r30, -2224
	load.d r[1:2], 0(r3)                    # 8-byte Folded Reload
	addli r3, zero, 0
	and.d r[1:2], r[26:27], r[1:2]
	j .LBB0_35
.LBB0_34:                               # %.thread.us
                                        #   in Loop: Header=BB0_35 Depth=2
	addli r4, zero, 2048
	.loc	1 81 25 is_stmt 1               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:25
	sub.sl r[6:7], r[17:18], r[6:7]
	.loc	1 81 20 is_stmt 0               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:20
	load.d r[19:20], 0(r30)
	xwait r10, 0
	lock zero, r16
	lui r13, 24
	addli r22, zero, 1
	zext_int2long r[4:5], r4
	.loc	1 81 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:25
	div.sl r[4:5], r[6:7], r[4:5]
	addli r7, zero, 1
	.loc	1 0 0                           # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:0:0
	add.s r6, r15, r3
	.loc	1 73 26 is_stmt 1               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	addli r3, r3, 1
	.loc	1 81 20                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:20
	sll.d r[17:18], r[17:18], r7
	.loc	1 81 0 is_stmt 0                # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:0
	mod.s r6, r6, r21
	.loc	1 81 20                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:20
	dma_cfg r7, r7, zero, 0
	.loc	1 81 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:25
	addli r7, r30, -2168
	.loc	1 81 20                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:20
	add.ul r[17:18], r[19:20], r[17:18]
	dma_cfg zero, r18, zero, 2
	.loc	1 81 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:25
	load.d r[10:11], 0(r7)                  # 8-byte Folded Reload
	.loc	1 81 0                          # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:0
	slli r6, r6, 13
	add.s r6, r6, r13
	.loc	1 81 20                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:20
	dma_cfg r6, r17, r25, 3
	addli r6, zero, 128
	.loc	1 81 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:25
	min.sl r[19:20], r[4:5], r[10:11]
	addli r10, zero, 3
	sub.sl r[4:5], r[19:20], r[4:5]
	addli r20, zero, 5
	.loc	1 81 20                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:20
	addli r4, r4, 64
	addli r5, zero, 4096
	dma_cfg r6, r5, r4, 4
	dma_run zero
	unlock r16
	xsignal r28, 0
	.loc	1 73 26 is_stmt 1               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	beq r3, r25, .LBB0_37
.LBB0_35:                               # %.thread.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:86:25
	zext_int2long r[6:7], r3
	loadli.w r4,  -2172(r30)                # 4-byte Folded Reload
	sll.d r[6:7], r[6:7], r20
	.loc	1 81 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:81:25
	add.ul r[17:18], r[6:7], r[26:27]
	zext_int2long r[6:7], r4
	setlt.ul r13, r[6:7], r[17:18]
	addli.d r[6:7], r[1:2], 0
	bneq r13, zero, .LBB0_34
# %bb.36:                               # %.thread.us
                                        #   in Loop: Header=BB0_35 Depth=2
	.loc	1 0 25 is_stmt 0                # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:0:25
	zext_int2long r[6:7], zero
	j .LBB0_34
.LBB0_37:                               # %.split17.us
                                        #   in Loop: Header=BB0_9 Depth=1
	loadli.w r2,  32(r30)
	.loc	1 73 26 is_stmt 1               # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	addli r1, r24, 64
	addli r9, r9, 64
	addli r8, r8, 64
	.loc	1 89 25                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:89:25
	add.s r15, r15, r3
	.loc	1 73 26                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	core_id r17
	addli r18, zero, 8
	addli r19, zero, 192
	lui r5, 208
	addli r4, r2, 0
	addli r2, r30, -2184
.LBB0_38:                               # %.thread97
                                        #   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 26 is_stmt 0                # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:0:26
	load.d r[26:27], 0(r2)                  # 8-byte Folded Reload
	j .LBB0_8
.LBB0_39:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 101 67 is_stmt 1              # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:101:67
	loadli.w r2,  -2212(r30)                # 4-byte Folded Reload
	addli r4, zero, 1920
	addli r10, r30, -2168
	sext_int2long r[6:7], r11
	addli r13, r30, -2208
	addli r22, zero, 1
	zext_int2long r[4:5], r4
	load.d r[17:18], 0(r10)                 # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	min.ul r[4:5], r[2:3], r[4:5]
	min.sl r[17:18], r[6:7], r[17:18]
	addli.d r[4:5], r[4:5], 128
	addli.d r[17:18], r[17:18], 64
	max.ul r[4:5], r[4:5], r[2:3]
	max.sl r[17:18], r[17:18], r[6:7]
	sub.sl r[2:3], r[4:5], r[2:3]
	addli r4, zero, 128
	zext_int2long r[4:5], r4
	min.ul r[10:11], r[2:3], r[4:5]
	sub.sl r[4:5], r[17:18], r[6:7]
	addli r7, r30, -2192
	addli r6, zero, 18
	zext_int2long r[17:18], r25
	load.d r[2:3], 0(r7)                    # 8-byte Folded Reload
	min.sl r[4:5], r[4:5], r[17:18]
	addli r18, zero, 8
	.loc	1 73 26                         # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:73:26
	core_id r17
	.loc	1 101 67                        # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:101:67
	sll.d r[6:7], r[2:3], r6
	load.d r[2:3], 16(r30)
	add.ul r[6:7], r[2:3], r[6:7]
	load.d r[2:3], 0(r13)                   # 8-byte Folded Reload
	addli r13, zero, 10
	xwait r13, 0
	addli r13, zero, 1
	lock zero, r20
	add.ul r[6:7], r[6:7], r[2:3]
	slli r2, r10, 2
	addli r3, zero, 4096
	dma_cfg r13, zero, zero, 0
	dma_cfg zero, r13, zero, 1
	lui r13, 24
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, r28, r2, 3
	addli r2, zero, 512
	dma_cfg r3, r2, r4, 4
	lui r5, 208
	addli r2, zero, 11
	dma_run zero
	unlock r20
	xsignal r2, 0
	j .LBB0_7
.LBB0_40:                               # %._crit_edge
	.loc	1 22 0                          # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:22:0
	xsignal zero, 0
	bneq r17, zero, .LBB0_42
# %bb.41:
	.loc	1 0 0 is_stmt 0                 # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:22:0
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
	.loc	1 22 0 epilogue_begin           # ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py:22:0
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
.asciz	"ccohov3se6t75a7p72cukhejgzdmyvyn53kdmjlxmx3g6kscbvsw.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/co" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
