	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu2/cache/inductor/xu" "cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py"
	.loc	1 22 0                          # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1344
	addli r30, sp, 1280
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:73:26
	core_id r2
	loadli.w r20,  32(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:0:26
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
	ble.s r3, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[26:27], r1
	lui r1, 15
	loadli.w r8,  -248(r30)
	loadli.w r9,  -572(r30)
	loadli.w r10,  -824(r30)
	loadli.w r24,  -1212(r30)
	addli r11, zero, 128
	addli r12, zero, 32
	addli r22, zero, 8
	addli r14, zero, 7
	addli r28, zero, 3
	addli r16, zero, 4
	addli r18, zero, 2
	addli r19, zero, 96
	lui r17, 148
	addli r23, zero, 6
	addli r25, zero, 64
	addli r13, zero, 5
	addli r21, zero, 62
	lui r15, 24
	storeli.w zero, -1232(r30)              # 4-byte Folded Spill
	store.d r[3:4], -1256(r30)              # 8-byte Folded Spill
	ori r4, r1, 4095
	lui r1, 1023
	lui r3, 1047552
	ori r1, r1, 4095
	store.d r[3:4], -1280(r30)              # 8-byte Folded Spill
	storeli.w r1, -1228(r30)                # 4-byte Folded Spill
	j .LBB0_10
.LBB0_5:                                # %.split17.thread96
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20 is_stmt 1               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:86:20
	addli r10, r10, 64
.LBB0_6:                                # %.thread7
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 73 26                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:73:26
	addli r1, zero, 10
	addli r28, zero, 3
	addli r21, zero, 62
.LBB0_7:                                # %.thread97
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 0 is_stmt 0                 # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:0:0
	xsignal r1, 0
.LBB0_8:                                # %.thread97
                                        #   in Loop: Header=BB0_10 Depth=1
	load.d r[26:27], -1240(r30)             # 8-byte Folded Reload
.LBB0_9:                                # %.thread97
                                        #   in Loop: Header=BB0_10 Depth=1
	load.d r[3:4], -1256(r30)               # 8-byte Folded Reload
	addli.d r[26:27], r[26:27], 1
	addli r24, r15, 0
	addli r13, zero, 5
	lui r15, 24
	setlt.sl r1, r[26:27], r[3:4]
	loadli.w r3,  -1232(r30)                # 4-byte Folded Reload
	addli r3, r3, 1
	storeli.w r3, -1232(r30)                # 4-byte Folded Spill
	beq r1, zero, .LBB0_38
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	div.s r1, r26, r20
	loadli.w r3,  28(r30)
	div.s r5, r1, r3
	.loc	1 53 22 is_stmt 1               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:53:22
	div.s r3, r5, r11
	.loc	1 54 41                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:54:41
	slli r1, r3, 3
	.loc	1 54 30 is_stmt 0               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:54:30
	sub.s r4, r12, r1
	.loc	1 54 50                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:54:50
	min.s r4, r4, r22
	.loc	1 55 40 is_stmt 1               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:55:40
	mod.s r6, r5, r4
	.loc	1 55 34 is_stmt 0               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:55:34
	add.s r1, r1, r6
	.loc	1 95 15 is_stmt 1               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:95:15
	zext_int2long r[6:7], r1
	store.d r[6:7], -1248(r30)              # 8-byte Folded Spill
	addli r6, zero, 1984
	zext_int2long r[6:7], r6
	.loc	1 73 26                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:73:26
	store.d r[6:7], -1224(r30)              # 8-byte Folded Spill
	bneq r2, r16, .LBB0_12
# %bb.11:                               # %.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r6, zero, 11
	xwait r6, 0
	j .LBB0_17
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:0:26
	addli r6, zero, 1
	beq r2, r6, .LBB0_33
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=1
	bneq r2, r18, .LBB0_17
# %bb.14:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r1, zero, 0
.LBB0_15:                               # %.thread.us21
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	add.s r3, r10, r1
	add.s r4, r24, r1
	xwait r18, 0
	xwait r13, 0
	lock zero, zero
	.loc	1 73 26                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	ds_cfg r18, zero, 0
	.loc	1 81 20                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:20
	mod.s r3, r3, r21
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	mod.s r4, r4, r19
	ds_cfg r12, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r25, zero, 13
	.loc	1 81 20                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:20
	slli r3, r3, 13
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	slli r4, r4, 13
	.loc	1 81 20                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:20
	add.s r3, r3, r15
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	shuffle_batch r4, r3, r12, 1
	unlock zero
	xsignal r28, 0
	xsignal r16, 0
	bneq r1, r25, .LBB0_15
# %bb.16:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 73 26                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:73:26
	addli r9, r9, 64
	addli r8, r8, 64
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	add.s r15, r24, r1
	add.s r10, r10, r1
	j .LBB0_9
.LBB0_17:                               # %.split.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 25 is_stmt 0                # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:0:25
	slli r3, r3, 7
	addli r6, zero, 3
	store.d r[26:27], -1240(r30)            # 8-byte Folded Spill
	slli r7, r1, 6
	addli r21, zero, 5
	addli r28, zero, 0
	sub.s r3, r5, r3
	div.s r3, r3, r4
	loadli.w r4,  -1232(r30)                # 4-byte Folded Reload
	mod.s r4, r4, r6
	zext_int2long r[5:6], r3
	slli r1, r3, 7
	sll.d r[5:6], r[5:6], r14
	.loc	1 73 26 is_stmt 1               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:73:26
	storeli.w r1, -1268(r30)                # 4-byte Folded Spill
	addli r1, zero, 0
	slli r26, r4, 15
	load.d r[3:4], 8(r30)
	sll.d r[5:6], r[5:6], r18
	store.d r[5:6], -1264(r30)              # 8-byte Folded Spill
	add.ul r[5:6], r[3:4], r[5:6]
	j .LBB0_20
.LBB0_18:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	addli r3, zero, 9
	xwait r23, 0
	xwait r3, 0
	lock zero, zero
	ds_cfg r18, zero, 0
	ds_cfg r11, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r11, zero, 13
	shuffle_coa r13, r27, r12, 2
	unlock zero
	xsignal r14, 0
	xsignal r22, 0
	.loc	1 73 26                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:73:26
	addli r28, r28, 1
	beq r28, r25, .LBB0_30
.LBB0_19:                               # %.split.backedge
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	addli r1, r1, 1
	addli r24, r15, 0
.LBB0_20:                               # %.split
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	.loc	1 86 20                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:86:20
	addli r3, zero, 61
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	addli r4, zero, 80
	addli r15, r24, 1
	.loc	1 86 20                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:86:20
	mod.s r3, r8, r3
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	mod.s r4, r9, r4
	addli r9, r9, 1
	.loc	1 86 20                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:86:20
	addli r8, r8, 1
	slli r3, r3, 14
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	slli r13, r4, 14
	.loc	1 86 20                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:86:20
	add.s r27, r3, r17
	beq r2, r14, .LBB0_18
# %bb.21:                               # %.split
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 20 is_stmt 0                # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:0:20
	bneq r2, r23, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 86 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:86:25
	zext_int2long r[3:4], r28
	.loc	1 86 20                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:86:20
	addli r13, zero, 18
	xwait r14, 0
	lock zero, r16
	dma_cfg zero, zero, zero, 0
	sll.d r[3:4], r[3:4], r13
	addli r13, zero, 512
	add.ul r[3:4], r[5:6], r[3:4]
	dma_cfg zero, r4, zero, 2
	dma_cfg r27, r3, r13, 3
	addli r3, zero, 8192
	dma_cfg r13, r3, r12, 4
	dma_run zero
	unlock r16
	xsignal r23, 0
	.loc	1 73 26 is_stmt 1               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:73:26
	addli r28, r28, 1
	bneq r28, r25, .LBB0_19
	j .LBB0_30
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	bneq r2, r16, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 0 is_stmt 0                 # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:0:0
	mod.s r3, r24, r19
	addli r27, zero, 1
	addli r4, zero, 0
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	xwait r16, 0
	xwait r22, 0
	.loc	1 0 0                           # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:0:0
	slli r24, r3, 13
	addli r3, zero, 1
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	beq r1, zero, .LBB0_26
.LBB0_25:                               # %.preheader8
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r19, r4, 13
	slli r4, r4, 8
	lock zero, r27
	mm_cfg r25, r12, r25, 0
	or r19, r19, r13
	or r4, r4, r26
	mm_cfg r18, r16, r27, 2
	mm_acc r4, r24, r19, 8
	andi r19, r3, 1
	addli r4, zero, 1
	addli r3, zero, 0
	unlock r27
	bneq r19, zero, .LBB0_25
	j .LBB0_27
.LBB0_26:                               # %.preheader
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r19, r4, 13
	slli r4, r4, 8
	lock zero, r27
	mm_cfg r25, r12, r25, 0
	or r19, r19, r13
	or r4, r4, r26
	mm_cfg r18, r16, r27, 2
	mm r4, r24, r19, 8
	andi r19, r3, 1
	addli r4, zero, 1
	addli r3, zero, 0
	unlock r27
	bneq r19, zero, .LBB0_26
.LBB0_27:                               # %.thread6.thread94
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 73 26 is_stmt 1               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:73:26
	addli r28, r28, 1
	addli r19, zero, 96
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	addli r3, zero, 9
	xsignal r21, 0
	xsignal r3, 0
	bneq r28, r25, .LBB0_19
	j .LBB0_5
.LBB0_28:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 73 26                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:73:26
	addli r28, r28, 1
	bneq r28, r25, .LBB0_19
# %bb.29:                               # %.split17.thread93
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:86:20
	addli r10, r10, 64
	j .LBB0_31
.LBB0_30:                               # %.split17
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r10, r10, 64
	.loc	1 73 26                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:73:26
	beq r2, r16, .LBB0_6
.LBB0_31:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:0:26
	addli r28, zero, 3
	addli r21, zero, 62
	bneq r2, zero, .LBB0_8
# %bb.32:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 101 67 is_stmt 1              # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:101:67
	loadli.w r1,  -1268(r30)                # 4-byte Folded Reload
	load.d r[21:22], -1224(r30)             # 8-byte Folded Reload
	sext_int2long r[19:20], r7
	addli r7, zero, 5
	zext_int2long r[3:4], r1
	addli r1, zero, 1920
	min.sl r[21:22], r[19:20], r[21:22]
	zext_int2long r[5:6], r1
	addli.d r[21:22], r[21:22], 64
	addli r1, zero, 19
	min.ul r[5:6], r[3:4], r[5:6]
	max.sl r[21:22], r[21:22], r[19:20]
	addli.d r[5:6], r[5:6], 128
	max.ul r[5:6], r[5:6], r[3:4]
	sub.sl r[3:4], r[5:6], r[3:4]
	zext_int2long r[5:6], r11
	min.ul r[3:4], r[3:4], r[5:6]
	sub.sl r[5:6], r[21:22], r[19:20]
	zext_int2long r[21:22], r25
	store.d r[3:4], -1224(r30)              # 8-byte Folded Spill
	load.d r[3:4], -1248(r30)               # 8-byte Folded Reload
	min.sl r[5:6], r[5:6], r[21:22]
	addli r22, zero, 8
	addli r21, zero, 62
	sll.d r[19:20], r[3:4], r1
	load.d r[3:4], 16(r30)
	addli r1, zero, 10
	add.ul r[19:20], r[3:4], r[19:20]
	load.d r[3:4], -1264(r30)               # 8-byte Folded Reload
	xwait r1, 0
	lock zero, r7
	addli r1, zero, 1
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r1, zero, 1
	add.ul r[19:20], r[19:20], r[3:4]
	load.d r[3:4], -1224(r30)               # 8-byte Folded Reload
	dma_cfg r20, zero, zero, 2
	slli r1, r3, 2
	addli r3, zero, 8192
	dma_cfg r19, r26, r1, 3
	addli r1, zero, 512
	loadli.w r20,  32(r30)
	addli r19, zero, 96
	dma_cfg r3, r1, r5, 4
	addli r1, zero, 11
	dma_run zero
	unlock r7
	j .LBB0_7
.LBB0_33:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 67 is_stmt 0                # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:0:67
	load.d r[3:4], -1248(r30)               # 8-byte Folded Reload
	addli r1, zero, 17
	addli r17, zero, 62
	addli r7, zero, 5
	store.d r[26:27], -1240(r30)            # 8-byte Folded Spill
	sll.d r[5:6], r[3:4], r1
	load.d r[3:4], -1280(r30)               # 8-byte Folded Reload
	addli r1, zero, 0
	and.d r[19:20], r[5:6], r[3:4]
	j .LBB0_35
.LBB0_34:                               # %.thread.us
                                        #   in Loop: Header=BB0_35 Depth=2
	addli r13, zero, 2048
	.loc	1 81 25 is_stmt 1               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:25
	sub.sl r[26:27], r[3:4], r[26:27]
	.loc	1 81 20 is_stmt 0               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:20
	sll.d r[3:4], r[3:4], r18
	xwait r28, 0
	lock zero, r16
	dma_cfg zero, zero, zero, 0
	zext_int2long r[21:22], r13
	.loc	1 0 0                           # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:0:0
	add.s r13, r10, r1
	.loc	1 73 26 is_stmt 1               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:73:26
	addli r1, r1, 1
	.loc	1 81 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:25
	div.sl r[21:22], r[26:27], r[21:22]
	.loc	1 81 20 is_stmt 0               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:20
	load.d r[26:27], 0(r30)
	.loc	1 81 0                          # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:0
	mod.s r13, r13, r17
	.loc	1 81 20                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:20
	add.ul r[3:4], r[26:27], r[3:4]
	dma_cfg zero, r4, zero, 2
	.loc	1 81 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:25
	load.d r[26:27], -1224(r30)             # 8-byte Folded Reload
	.loc	1 81 0                          # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:0
	slli r13, r13, 13
	add.s r13, r13, r15
	.loc	1 81 20                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:20
	dma_cfg r13, r3, r11, 3
	addli r3, zero, 8192
	.loc	1 81 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:25
	min.sl r[26:27], r[21:22], r[26:27]
	sub.sl r[21:22], r[26:27], r[21:22]
	.loc	1 81 20                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:20
	addli r15, r21, 64
	dma_cfg r11, r3, r15, 4
	dma_run zero
	unlock r16
	xsignal r18, 0
	.loc	1 73 26 is_stmt 1               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:73:26
	beq r1, r25, .LBB0_37
.LBB0_35:                               # %.thread.us
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:86:25
	zext_int2long r[3:4], r1
	loadli.w r13,  -1228(r30)               # 4-byte Folded Reload
	lui r15, 24
	sll.d r[3:4], r[3:4], r7
	zext_int2long r[26:27], r13
	.loc	1 81 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:81:25
	add.ul r[3:4], r[3:4], r[5:6]
	setlt.ul r13, r[26:27], r[3:4]
	addli.d r[26:27], r[19:20], 0
	bneq r13, zero, .LBB0_34
# %bb.36:                               # %.thread.us
                                        #   in Loop: Header=BB0_35 Depth=2
	.loc	1 0 25 is_stmt 0                # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:0:25
	zext_int2long r[26:27], zero
	j .LBB0_34
.LBB0_37:                               # %.split17.us
                                        #   in Loop: Header=BB0_10 Depth=1
	loadli.w r20,  32(r30)
	load.d r[26:27], -1240(r30)             # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:73:26
	addli r15, r24, 64
	addli r9, r9, 64
	addli r8, r8, 64
	.loc	1 89 25                         # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:89:25
	add.s r10, r10, r1
	addli r22, zero, 8
	addli r19, zero, 96
	addli r21, zero, 62
	lui r17, 148
	j .LBB0_9
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0                          # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:22:0
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
	.loc	1 22 0 epilogue_begin           # cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py:22:0
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
.asciz	"cxulopzdeufzmphvujvabyh6jmjuiyshng3ui6jha2b3mnehprh3.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu2/cache/inductor/xu" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
