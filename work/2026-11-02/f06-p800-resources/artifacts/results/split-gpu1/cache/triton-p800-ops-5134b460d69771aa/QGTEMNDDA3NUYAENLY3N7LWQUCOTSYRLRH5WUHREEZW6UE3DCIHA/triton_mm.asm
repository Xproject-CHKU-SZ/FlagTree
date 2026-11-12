	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu1/cache/inductor/hy" "chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py"
	.loc	1 22 0                          # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1032
	addli r30, sp, 968
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:73:26
	core_id r2
	loadli.w r19,  32(r30)
	loadli.w r20,  28(r30)
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:0:26
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -188(r30)
	storeli.w zero, -512(r30)
	storeli.w zero, -704(r30)
	storeli.w zero, -900(r30)
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
	sext_int2long r[10:11], r1
	loadli.w r27,  -188(r30)
	loadli.w r6,  -704(r30)
	loadli.w r24,  -900(r30)
	loadli.w r1,  -512(r30)
	addli r13, zero, 256
	addli r12, zero, 6
	addli r14, zero, 4
	addli r16, zero, 1
	addli r17, zero, 48
	addli r21, zero, 7
	addli r23, zero, 3
	addli r25, zero, 64
	addli r26, zero, 128
	addli r28, zero, 16
	addli r18, zero, 2
	storeli.w zero, -920(r30)               # 4-byte Folded Spill
	store.d r[3:4], -944(r30)               # 8-byte Folded Spill
	lui r3, 15
	ori r5, r3, 4095
	lui r3, 1023
	lui r4, 1047552
	ori r3, r3, 4095
	store.d r[4:5], -968(r30)               # 8-byte Folded Spill
	storeli.w r3, -916(r30)                 # 4-byte Folded Spill
	j .LBB0_10
.LBB0_5:                                # %.split18.thread90
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20 is_stmt 1               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:86:20
	addli r6, r6, 16
.LBB0_6:                                #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 20 is_stmt 0                # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:0:20
	loadli.w r19,  32(r30)
	.loc	1 101 67 is_stmt 1              # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:101:67
	addli r24, r22, 1
	addli r1, r9, 1
	addli r27, r13, 1
	addli r17, zero, 48
	beq r2, zero, .LBB0_37
# %bb.7:                                #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 67 is_stmt 0                # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:0:67
	load.d r[10:11], -928(r30)              # 8-byte Folded Reload
	loadli.w r20,  28(r30)
	addli r13, zero, 256
.LBB0_8:                                # %.thread94
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r18, zero, 2
.LBB0_9:                                # %.thread94
                                        #   in Loop: Header=BB0_10 Depth=1
	load.d r[3:4], -944(r30)                # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 1
	setlt.sl r3, r[10:11], r[3:4]
	loadli.w r4,  -920(r30)                 # 4-byte Folded Reload
	addli r4, r4, 1
	storeli.w r4, -920(r30)                 # 4-byte Folded Spill
	beq r3, zero, .LBB0_39
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_20 Depth 2
	div.s r3, r10, r19
	.loc	1 54 30 is_stmt 1               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:54:30
	addli r4, zero, 32
	.loc	1 54 50 is_stmt 0               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:54:50
	addli r5, zero, 8
	lui r22, 20
	addli r15, zero, 47
	div.s r7, r3, r20
	.loc	1 53 22 is_stmt 1               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:53:22
	div.s r8, r7, r13
	.loc	1 54 41                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:54:41
	slli r3, r8, 3
	.loc	1 54 30 is_stmt 0               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:54:30
	sub.s r4, r4, r3
	.loc	1 54 50                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:54:50
	min.s r9, r4, r5
	.loc	1 55 40 is_stmt 1               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:55:40
	mod.s r4, r7, r9
	.loc	1 55 34 is_stmt 0               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:55:34
	add.s r3, r3, r4
	.loc	1 95 15 is_stmt 1               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:95:15
	zext_int2long r[4:5], r3
	store.d r[4:5], -936(r30)               # 8-byte Folded Spill
	addli r4, zero, 1984
	zext_int2long r[4:5], r4
	.loc	1 73 26                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:73:26
	store.d r[4:5], -912(r30)               # 8-byte Folded Spill
	bneq r2, r14, .LBB0_12
# %bb.11:                               # %.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r4, zero, 11
	addli r5, zero, 80
	xwait r4, 0
	j .LBB0_17
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 26 is_stmt 0                # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:0:26
	addli r5, zero, 80
	beq r2, r16, .LBB0_32
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=1
	bneq r2, r18, .LBB0_17
# %bb.14:                               # %.thread.us23.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r4, zero, 0
	addli r7, zero, 47
	lui r8, 20
	addli r9, zero, 5
.LBB0_15:                               # %.thread.us23
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	add.s r3, r6, r4
	add.s r5, r24, r4
	xwait r18, 0
	xwait r9, 0
	lock zero, zero
	.loc	1 73 26                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:73:26
	addli r4, r4, 1
	.loc	1 89 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	ds_cfg r23, zero, 0
	.loc	1 81 20                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:20
	mod.s r3, r3, r7
	.loc	1 89 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	mod.s r5, r5, r17
	ds_cfg r26, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r25, zero, 13
	.loc	1 81 20                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:20
	slli r3, r3, 14
	.loc	1 89 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	slli r5, r5, 14
	.loc	1 81 20                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:20
	add.s r3, r3, r8
	.loc	1 89 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	shuffle_batch r5, r3, r26, 1
	unlock zero
	xsignal r23, 0
	xsignal r14, 0
	bneq r4, r28, .LBB0_15
# %bb.16:                               # %.split18.split.us
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 73 26                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:73:26
	addli r1, r1, 16
	addli r27, r27, 16
	.loc	1 89 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	add.s r24, r24, r4
	add.s r6, r6, r4
	j .LBB0_9
.LBB0_17:                               # %.split.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 25 is_stmt 0                # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:0:25
	slli r8, r8, 8
	loadli.w r4,  -920(r30)                 # 4-byte Folded Reload
	slli r3, r3, 6
	store.d r[10:11], -928(r30)             # 8-byte Folded Spill
	addli r20, zero, 48
	addli r11, zero, 0
	addli r19, zero, 5
	addli r15, zero, 46
	sub.s r7, r7, r8
	addli r8, zero, 5
	storeli.w r3, -956(r30)                 # 4-byte Folded Spill
	div.s r7, r7, r9
	mod.s r8, r4, r8
	zext_int2long r[9:10], r7
	slli r3, r7, 6
	slli r18, r8, 14
	sll.d r[9:10], r[9:10], r12
	.loc	1 73 26 is_stmt 1               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:73:26
	storeli.w r3, -960(r30)                 # 4-byte Folded Spill
	load.d r[3:4], 8(r30)
	sll.d r[9:10], r[9:10], r16
	store.d r[9:10], -952(r30)              # 8-byte Folded Spill
	add.ul r[7:8], r[3:4], r[9:10]
	addli r10, zero, 0
	j .LBB0_20
.LBB0_18:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	addli r4, zero, 9
	xwait r12, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r23, zero, 0
	ds_cfg r25, zero, 1
	ds_cfg r26, zero, 14
	ds_cfg r25, zero, 13
	shuffle_coa r17, r3, r26, 2
	addli r3, zero, 8
	unlock zero
	xsignal r21, 0
	xsignal r3, 0
	.loc	1 73 26                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:73:26
	addli r11, r11, 1
	beq r11, r28, .LBB0_30
.LBB0_19:                               # %.split.backedge
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	addli r10, r10, 1
.LBB0_20:                               # %.split
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r13, r27, r10
	add.s r9, r1, r10
	add.s r22, r24, r10
	.loc	1 86 20                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:86:20
	mod.s r3, r13, r15
	.loc	1 89 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	mod.s r4, r9, r5
	slli r17, r4, 14
	.loc	1 86 20                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:86:20
	slli r3, r3, 14
	lui r4, 208
	add.s r3, r3, r4
	beq r2, r21, .LBB0_18
# %bb.21:                               # %.split
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 20 is_stmt 0                # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:0:20
	bneq r2, r12, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 86 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:86:25
	zext_int2long r[4:5], r11
	.loc	1 86 20                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:86:20
	addli r17, zero, 19
	xwait r21, 0
	lock zero, r14
	dma_cfg r16, r16, zero, 0
	sll.d r[4:5], r[4:5], r17
	add.ul r[4:5], r[7:8], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r3, r4, r26, 3
	addli r3, zero, 4096
	addli r5, zero, 80
	dma_cfg r26, r3, r26, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 73 26 is_stmt 1               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:73:26
	addli r11, r11, 1
	bneq r11, r28, .LBB0_19
	j .LBB0_30
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	bneq r2, r14, .LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=2
	.loc	1 0 0 is_stmt 0                 # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:0:0
	mod.s r3, r22, r20
	.loc	1 89 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	addli r4, zero, 8
	xwait r14, 0
	xwait r4, 0
	lock zero, r16
	addli r4, zero, 2
	mm_cfg r25, r26, r25, 0
	mm_cfg r14, r4, r16, 2
	.loc	1 0 0                           # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:0:0
	slli r3, r3, 14
	.loc	1 89 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	beq r10, zero, .LBB0_27
# %bb.25:                               # %.preheader8
                                        #   in Loop: Header=BB0_20 Depth=2
	mm_acc r18, r3, r17, 5
	j .LBB0_28
.LBB0_26:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 73 26 is_stmt 1               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:73:26
	addli r11, r11, 1
	bneq r11, r28, .LBB0_19
	j .LBB0_5
.LBB0_27:                               # %.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 89 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	mm r18, r3, r17, 5
.LBB0_28:                               # %.thread6.thread91
                                        #   in Loop: Header=BB0_20 Depth=2
	.loc	1 73 26                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:73:26
	addli r11, r11, 1
	.loc	1 89 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	addli r3, zero, 9
	unlock r16
	xsignal r19, 0
	xsignal r3, 0
	.loc	1 73 26                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:73:26
	bneq r11, r28, .LBB0_19
# %bb.29:                               # %.split18.thread93
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 86 20                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:86:20
	addli r6, r6, 16
	j .LBB0_31
.LBB0_30:                               # %.split18
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r6, r6, 16
	.loc	1 73 26                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:73:26
	bneq r2, r14, .LBB0_6
.LBB0_31:                               # %.thread7
                                        #   in Loop: Header=BB0_10 Depth=1
	addli r3, zero, 10
	loadli.w r19,  32(r30)
	loadli.w r20,  28(r30)
	.loc	1 101 67                        # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:101:67
	addli r27, r13, 1
	addli r24, r22, 1
	addli r1, r9, 1
	addli r13, zero, 256
	addli r17, zero, 48
	j .LBB0_38
.LBB0_32:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 67 is_stmt 0                # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:0:67
	load.d r[4:5], -936(r30)                # 8-byte Folded Reload
	addli r3, zero, 17
	addli r9, zero, 0
	store.d r[10:11], -928(r30)             # 8-byte Folded Spill
	sll.d r[7:8], r[4:5], r3
	load.d r[3:4], -968(r30)                # 8-byte Folded Reload
	and.d r[19:20], r[7:8], r[3:4]
	j .LBB0_34
.LBB0_33:                               # %.thread.us
                                        #   in Loop: Header=BB0_34 Depth=2
	addli r3, zero, 2048
	.loc	1 81 25 is_stmt 1               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:25
	sub.sl r[10:11], r[17:18], r[10:11]
	.loc	1 0 0 is_stmt 0                 # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:0:0
	add.s r5, r6, r9
	.loc	1 81 20                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:20
	xwait r23, 0
	lock zero, r14
	.loc	1 73 26 is_stmt 1               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:73:26
	addli r9, r9, 1
	.loc	1 81 20                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:20
	dma_cfg r16, r16, zero, 0
	zext_int2long r[3:4], r3
	.loc	1 81 0 is_stmt 0                # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:0
	mod.s r5, r5, r15
	.loc	1 81 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:25
	div.sl r[3:4], r[10:11], r[3:4]
	.loc	1 81 20                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:20
	sll.d r[10:11], r[17:18], r16
	load.d r[17:18], 0(r30)
	add.ul r[10:11], r[17:18], r[10:11]
	.loc	1 81 0                          # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:0
	slli r5, r5, 14
	.loc	1 81 20                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:20
	dma_cfg zero, r11, zero, 2
	.loc	1 81 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:25
	load.d r[17:18], -912(r30)              # 8-byte Folded Reload
	.loc	1 81 0                          # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:0
	add.s r5, r5, r22
	.loc	1 81 20                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:20
	dma_cfg r5, r10, r13, 3
	.loc	1 81 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:25
	min.sl r[17:18], r[3:4], r[17:18]
	sub.sl r[3:4], r[17:18], r[3:4]
	addli r18, zero, 2
	.loc	1 81 20                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:20
	addli r3, r3, 64
	addli r4, zero, 4096
	dma_cfg r13, r4, r3, 4
	dma_run zero
	unlock r14
	xsignal r18, 0
	.loc	1 73 26 is_stmt 1               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:73:26
	beq r9, r28, .LBB0_36
.LBB0_34:                               # %.thread.us
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:86:25
	zext_int2long r[10:11], r9
	loadli.w r3,  -916(r30)                 # 4-byte Folded Reload
	sll.d r[10:11], r[10:11], r21
	.loc	1 81 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:81:25
	add.ul r[17:18], r[10:11], r[7:8]
	zext_int2long r[10:11], r3
	setlt.ul r3, r[10:11], r[17:18]
	addli.d r[10:11], r[19:20], 0
	bneq r3, zero, .LBB0_33
# %bb.35:                               # %.thread.us
                                        #   in Loop: Header=BB0_34 Depth=2
	.loc	1 0 25 is_stmt 0                # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:0:25
	zext_int2long r[10:11], zero
	j .LBB0_33
.LBB0_36:                               # %.split18.us
                                        #   in Loop: Header=BB0_10 Depth=1
	loadli.w r19,  32(r30)
	loadli.w r20,  28(r30)
	load.d r[10:11], -928(r30)              # 8-byte Folded Reload
	.loc	1 73 26 is_stmt 1               # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:73:26
	addli r24, r24, 16
	addli r1, r1, 16
	addli r27, r27, 16
	.loc	1 89 25                         # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:89:25
	add.s r6, r6, r9
	addli r17, zero, 48
	j .LBB0_9
.LBB0_37:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	1 101 67                        # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:101:67
	loadli.w r3,  -960(r30)                 # 4-byte Folded Reload
	load.d r[19:20], -912(r30)              # 8-byte Folded Reload
	loadli.w r5,  -956(r30)                 # 4-byte Folded Reload
	addli r13, zero, 256
	zext_int2long r[3:4], r3
	sext_int2long r[9:10], r5
	min.ul r[7:8], r[3:4], r[19:20]
	min.sl r[19:20], r[9:10], r[19:20]
	addli.d r[7:8], r[7:8], 64
	addli.d r[19:20], r[19:20], 64
	max.ul r[7:8], r[7:8], r[3:4]
	max.sl r[19:20], r[19:20], r[9:10]
	sub.sl r[3:4], r[7:8], r[3:4]
	zext_int2long r[7:8], r25
	sub.sl r[9:10], r[19:20], r[9:10]
	loadli.w r20,  28(r30)
	loadli.w r19,  32(r30)
	min.ul r[3:4], r[3:4], r[7:8]
	min.sl r[7:8], r[9:10], r[7:8]
	load.d r[9:10], -952(r30)               # 8-byte Folded Reload
	addli r11, r20, 0
	store.d r[3:4], -912(r30)               # 8-byte Folded Spill
	load.d r[4:5], -936(r30)                # 8-byte Folded Reload
	addli r3, zero, 18
	sll.d r[3:4], r[4:5], r3
	addli r5, r19, 0
	load.d r[19:20], 16(r30)
	add.ul r[3:4], r[19:20], r[3:4]
	addli r19, r5, 0
	addli r5, zero, 10
	addli r20, r11, 0
	add.ul r[3:4], r[3:4], r[9:10]
	addli r9, zero, 5
	xwait r5, 0
	lock zero, r9
	dma_cfg r16, zero, zero, 0
	dma_cfg zero, r16, zero, 1
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	dma_cfg r4, zero, zero, 2
	slli r5, r10, 2
	dma_cfg r3, r18, r5, 3
	addli r3, zero, 4096
	dma_cfg r3, r13, r7, 4
	addli r3, zero, 11
	dma_run zero
	unlock r9
.LBB0_38:                               # %.thread94
                                        #   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 0 is_stmt 0                 # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:0:0
	xsignal r3, 0
	load.d r[10:11], -928(r30)              # 8-byte Folded Reload
	j .LBB0_8
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:22:0
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
	.loc	1 22 0 epilogue_begin           # chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py:22:0
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
.asciz	"chyozugjuxpivpb3wqetpd4vnh7syutb563sfzbdsinznlwj4c2k.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu1/cache/inductor/hy" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
