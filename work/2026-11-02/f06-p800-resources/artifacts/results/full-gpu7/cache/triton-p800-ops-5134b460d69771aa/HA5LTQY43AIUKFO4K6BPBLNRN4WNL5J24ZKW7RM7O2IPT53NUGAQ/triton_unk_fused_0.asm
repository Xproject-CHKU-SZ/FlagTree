	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/rp" "crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py"
	.loc	1 23 0                          # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:23:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -80
	addli r1, zero, 1
.Ltmp0:
	.loc	1 82 20 prologue_end            # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:82:20
	core_id r15
	addli r30, sp, 16
	xsignal_mode_cfg r1
	beq r15, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:0:20
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
	addli r3, zero, 5
	csr_set csr3, r1
	addli r1, zero, 12
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 3
	addli r3, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 7
	addli r3, zero, 14
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  32(r30)
	loadli.w r3,  36(r30)
	load_param_i r5, 1
	loadli.w r4,  40(r30)
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
	ble.s r3, r1, .LBB0_31
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	sext_int2long r[6:7], r1
	addli r8, zero, 4
	addli r20, zero, 64
	addli r2, zero, 2
	addli r14, zero, 1
	addli r22, zero, 128
	lui r27, 8
	addli r26, zero, 0
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	addli r4, zero, 4095
	lui r3, 1048572
	store.d r[3:4], -16(r30)                # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.thread6
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 102 66 is_stmt 1              # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:102:66
	load.d r[9:10], 16(r30)
	sll.d r[3:4], r[23:24], r14
	addli r5, zero, 14
	xwait r5, 0
	lock zero, r8
	slli r5, r11, 1
	add.ul r[3:4], r[9:10], r[3:4]
	dma_cfg zero, r14, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg r1, r3, r5, 3
	addli r1, zero, 256
	addli r3, zero, 512
	dma_cfg r3, r1, r14, 4
	dma_run zero
	unlock r8
	addli r1, zero, 13
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[3:4], -8(r30)                  # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	addli r26, r26, 1
	setlt.sl r1, r[6:7], r[3:4]
	beq r1, zero, .LBB0_31
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_27 Depth 2
	loadli.w r1,  40(r30)
	loadli.w r3,  36(r30)
	.loc	1 55 50 is_stmt 1               # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:55:50
	addli r9, zero, 8
	zext_int2long r[16:17], r20
	div.s r1, r6, r1
	div.s r3, r1, r3
	mod.s r1, r26, r8
	.loc	1 54 22                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:54:22
	div.s r4, r3, r20
	.loc	1 90 25                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:90:25
	slli r13, r1, 14
	slli r28, r1, 15
	.loc	1 55 41                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:55:41
	slli r5, r4, 3
	.loc	1 54 22                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:54:22
	slli r4, r4, 6
	.loc	1 55 30                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:55:30
	sub.s r11, r2, r5
	.loc	1 54 22                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:54:22
	sub.s r4, r3, r4
	.loc	1 55 50                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:55:50
	min.s r11, r11, r9
	.loc	1 56 40                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:56:40
	mod.s r3, r3, r11
	.loc	1 57 30                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:57:30
	div.s r25, r4, r11
	.loc	1 56 34                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:56:34
	add.s r21, r3, r5
	.loc	1 82 20                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:82:20
	lui r3, 32
	.loc	1 97 15                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:97:15
	addli r5, zero, 7
	.loc	1 82 20                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:82:20
	add.s r11, r13, r3
	.loc	1 97 15                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:97:15
	zext_int2long r[3:4], r25
	.loc	1 96 15                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:96:15
	zext_int2long r[18:19], r21
	.loc	1 97 15                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:97:15
	sll.d r[23:24], r[3:4], r5
	.loc	1 82 20                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:82:20
	bneq r15, r14, .LBB0_11
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 82 25 is_stmt 0               # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:82:25
	setlt.u r3, r14, r21
	.loc	1 0 0                           # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:0:0
	addli r4, zero, 13
	sll.d r[12:13], r[18:19], r4
	.loc	1 82 25                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:82:25
	bneq r3, zero, .LBB0_13
# %bb.10:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25                          # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:0:25
	zext_int2long r[3:4], zero
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 90 25 is_stmt 1               # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:90:25
	bneq r15, r2, .LBB0_15
# %bb.12:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 5
	xwait r2, 0
	xwait r3, 0
	addli r3, zero, 3
	lock zero, zero
	ds_cfg r3, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r20, zero, 13
	shuffle_batch r13, r11, r22, 1
	unlock zero
	xsignal r3, 0
	xsignal r8, 0
	j .LBB0_24
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 82 25                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:82:25
	load.d r[3:4], -16(r30)                 # 8-byte Folded Reload
	and.d r[3:4], r[12:13], r[3:4]
.LBB0_14:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	sub.sl r[3:4], r[12:13], r[3:4]
	addli r5, zero, 7
	.loc	1 82 20 is_stmt 0               # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:82:20
	load.d r[9:10], 0(r30)
	.loc	1 82 25                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:82:25
	sra.d r[3:4], r[3:4], r5
	.loc	1 82 20                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:82:20
	addli r5, zero, 14
	.loc	1 82 25                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:82:25
	min.sl r[12:13], r[3:4], r[16:17]
	sub.sl r[3:4], r[12:13], r[3:4]
	.loc	1 82 20                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:82:20
	sll.d r[12:13], r[18:19], r5
	addli r5, zero, 3
	xwait r5, 0
	lock zero, r8
	add.ul r[12:13], r[9:10], r[12:13]
	addli r3, r3, 64
	addli r4, zero, 256
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r13, zero, 2
	dma_cfg r11, r12, r4, 3
	dma_cfg r4, r4, r3, 4
	dma_run zero
	unlock r8
	xsignal r2, 0
	.loc	1 90 25 is_stmt 1               # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:90:25
	j .LBB0_24
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 87 20                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:87:20
	beq r15, r8, .LBB0_20
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	lui r3, 48
	add.s r11, r28, r3
	addli r3, zero, 7
	beq r15, r3, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 6
	bneq r15, r3, .LBB0_24
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[9:10], 8(r30)
	sll.d r[3:4], r[23:24], r14
	addli r5, zero, 7
	xwait r5, 0
	lock zero, r8
	addli r5, zero, 256
	add.ul r[3:4], r[9:10], r[3:4]
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg r11, r3, r5, 3
	addli r3, zero, 2048
	dma_cfg r5, r3, r22, 4
	dma_run zero
	unlock r8
	addli r3, zero, 6
	j .LBB0_23
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 90 25                         # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:90:25
	addli r3, zero, 6
	xwait r3, 0
	addli r3, zero, 9
	xwait r3, 0
	addli r3, zero, 3
	lock zero, zero
	ds_cfg r3, zero, 0
	addli r3, zero, 7
	ds_cfg r22, zero, 1
	ds_cfg r22, zero, 14
	ds_cfg r22, zero, 13
	shuffle_coa r28, r11, r22, 2
	unlock zero
	xsignal r3, 0
	addli r3, zero, 8
	j .LBB0_23
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 8
	xwait r8, 0
	addli r3, zero, 0
	addli r11, zero, 1
	addli r12, zero, 1
	xwait r4, 0
	addli r4, zero, 12
	xwait r4, 0
.LBB0_21:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r4, r3, 14
	slli r3, r3, 8
	lock zero, r11
	mm_cfg r20, r22, r20, 0
	or r4, r4, r28
	or r3, r3, r28
	mm_cfg r8, r8, r11, 2
	mm r3, r13, r4, 5
	andi r4, r12, 1
	addli r3, zero, 1
	addli r12, zero, 0
	unlock r11
	bneq r4, zero, .LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 5
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	addli r3, zero, 10
.LBB0_23:                               # %.thread4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:0:0
	xsignal r3, 0
.LBB0_24:                               # %.thread4
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 896
	slli r3, r25, 7
	zext_int2long r[9:10], r22
	.loc	1 102 66 is_stmt 1              # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:102:66
	slli r1, r1, 9
	zext_int2long r[4:5], r4
	zext_int2long r[11:12], r3
	min.ul r[3:4], r[11:12], r[4:5]
	addli.d r[3:4], r[3:4], 128
	max.ul r[3:4], r[3:4], r[11:12]
	sub.sl r[3:4], r[3:4], r[11:12]
	min.ul r[11:12], r[3:4], r[9:10]
	lui r3, 80
	add.s r1, r1, r3
	beq r15, r14, .LBB0_5
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 107 18                        # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:107:18
	addli r3, zero, 5
	bneq r15, r3, .LBB0_29
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 10
	addli r11, zero, 0
	xwait r3, 0
	addli r3, zero, 13
	xwait r3, 0
	lock zero, r2
	lui r3, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r3, r3, zero, 0
	addli r3, zero, 127
	ew_cfg zero, r3, zero, 2
	ew_cfg r14, zero, zero, 3
.LBB0_27:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r3, r28, r11
	addli r11, r11, 512
	dsmadd r3, r3, r1, 0
	bneq r11, r27, .LBB0_27
# %bb.28:                               # %.thread30
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	unlock r2
	xsignal r1, 0
	addli r1, zero, 14
	j .LBB0_6
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 110 80                        # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:110:80
	bneq r15, zero, .LBB0_7
# %bb.30:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:0:0
	slli r1, r21, 6
	.loc	1 110 80                        # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:110:80
	addli r3, zero, 17
	addli r5, zero, 5
	.loc	1 0 0                           # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:0:0
	sext_int2long r[9:10], r1
	.loc	1 110 80                        # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:110:80
	addli r1, zero, 11
	sll.d r[3:4], r[18:19], r3
	sll.d r[18:19], r[23:24], r14
	.loc	1 0 0                           # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:0:0
	min.sl r[23:24], r[9:10], r[16:17]
	.loc	1 110 80                        # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:110:80
	xwait r1, 0
	load.d r[1:2], 24(r30)
	lock zero, r5
	dma_cfg r14, zero, zero, 0
	.loc	1 0 0                           # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:0:0
	addli.d r[23:24], r[23:24], 64
	.loc	1 110 80                        # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:110:80
	dma_cfg zero, r14, zero, 1
	add.ul r[3:4], r[1:2], r[3:4]
	slli r1, r11, 2
	addli r2, zero, 2
	.loc	1 0 0                           # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:0:0
	max.sl r[23:24], r[23:24], r[9:10]
	.loc	1 110 80                        # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:110:80
	add.ul r[3:4], r[3:4], r[18:19]
	.loc	1 0 0                           # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:0:0
	sub.sl r[9:10], r[23:24], r[9:10]
	.loc	1 110 80                        # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:110:80
	dma_cfg r4, zero, zero, 2
	dma_cfg r3, r28, r1, 3
	min.sl r[9:10], r[9:10], r[16:17]
	addli r1, zero, 512
	addli r3, zero, 2048
	dma_cfg r3, r1, r9, 4
	addli r1, zero, 12
	dma_run zero
	unlock r5
	j .LBB0_6
.LBB0_31:                               # %._crit_edge
	.loc	1 23 0 is_stmt 1                # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:23:0
	xsignal zero, 0
	bneq r15, zero, .LBB0_33
# %bb.32:
	.loc	1 0 0 is_stmt 0                 # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:0:0
	addli r1, zero, 2
	.loc	1 23 0                          # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:23:0
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
.LBB0_33:
	.loc	1 23 0 epilogue_begin           # crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py:23:0
	addli sp, sp, 16
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_unk_fused_0, .Lfunc_end0-triton_unk_fused_0
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_PARAM_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0:
	.long	44                              # 0x2c
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	80                              # 0x50
	.size	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0,@object # @XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_unk_fused_0, 4

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
.asciz	"crp2bdf2d2srea5y54mfhdflqnt32gxiuxthjfoi3m5z45fro5aq.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/rp" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
