	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/3f" "c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py"
	.loc	1 23 0                          # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:23:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -64
	addli r1, zero, 1
.Ltmp0:
	.loc	1 82 20 prologue_end            # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:82:20
	core_id r2
	addli r30, sp, 0
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:0:20
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
	addli r3, zero, 3
	csr_set csr3, r1
	addli r1, zero, 5
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 9
	addli r3, zero, 7
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r1, zero, 11
	addli r3, zero, 14
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	ble.s r3, r1, .LBB0_27
# %bb.4:                                # %.lr.ph
	sext_int2long r[6:7], r3
	sext_int2long r[8:9], r1
	addli r10, zero, 64
	addli r11, zero, 1
	addli r17, zero, 3
	addli r16, zero, 4
	addli r18, zero, 2
	addli r25, zero, 128
	lui r5, 8
	addli r21, zero, 6
	addli r28, zero, 0
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	loadli.w r1,  40(r30)
	loadli.w r3,  36(r30)
	.loc	1 55 50 is_stmt 1               # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:55:50
	addli r12, zero, 8
	div.s r1, r8, r1
	div.s r1, r1, r3
	.loc	1 54 22                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:54:22
	div.s r3, r1, r10
	.loc	1 55 41                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:55:41
	slli r4, r3, 3
	.loc	1 54 22                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:54:22
	slli r3, r3, 6
	.loc	1 55 30                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:55:30
	sub.s r15, r11, r4
	.loc	1 54 22                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:54:22
	sub.s r3, r1, r3
	.loc	1 55 50                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:55:50
	min.s r15, r15, r12
	.loc	1 97 15                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:97:15
	addli r12, zero, 7
	.loc	1 56 40                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:56:40
	mod.s r19, r1, r15
	.loc	1 57 30                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:57:30
	div.s r15, r3, r15
	.loc	1 90 25                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:90:25
	mod.s r1, r28, r17
	.loc	1 56 34                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:56:34
	add.s r24, r4, r19
	.loc	1 97 15                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:97:15
	zext_int2long r[3:4], r15
	sll.d r[26:27], r[3:4], r12
	.loc	1 96 15                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:96:15
	zext_int2long r[22:23], r24
	.loc	1 90 25                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:90:25
	slli r4, r1, 14
	.loc	1 82 20                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:82:20
	bneq r2, r11, .LBB0_7
# %bb.6:                                # %.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	addli r3, zero, 14
	load.d r[12:13], 0(r30)
	xwait r17, 0
	lock zero, r16
	dma_cfg zero, zero, zero, 0
	sll.d r[19:20], r[22:23], r3
	addli r3, zero, 256
	add.ul r[19:20], r[12:13], r[19:20]
	dma_cfg zero, r20, zero, 2
	dma_cfg r4, r19, r3, 3
	dma_cfg r3, r3, r10, 4
	dma_run zero
	unlock r16
	xsignal r18, 0
	.loc	1 90 25                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:90:25
	slli r3, r1, 15
	.loc	1 87 20                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:87:20
	j .LBB0_13
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 90 25                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:90:25
	bneq r2, r18, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	addli r3, zero, 5
	xwait r18, 0
	xwait r3, 0
	lock zero, zero
	slli r3, r1, 15
	ds_cfg r18, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r10, zero, 13
	shuffle_batch r4, r4, r10, 1
	unlock zero
	xsignal r17, 0
	xsignal r16, 0
	.loc	1 87 20                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:87:20
	j .LBB0_13
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 90 25                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:90:25
	slli r3, r1, 15
	.loc	1 87 20                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:87:20
	lui r12, 12
	add.s r19, r3, r12
	addli r12, zero, 7
	beq r2, r12, .LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	bneq r2, r21, .LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 20 is_stmt 0                # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:0:20
	addli.d r[20:21], r[6:7], 0
	.loc	1 87 20                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:87:20
	load.d r[6:7], 8(r30)
	sll.d r[12:13], r[26:27], r18
	addli r14, zero, 7
	xwait r14, 0
	lock zero, r16
	addli r14, zero, 512
	add.ul r[12:13], r[6:7], r[12:13]
	dma_cfg zero, zero, zero, 0
	addli.d r[6:7], r[20:21], 0
	addli r21, zero, 6
	dma_cfg zero, r13, zero, 2
	dma_cfg r19, r12, r14, 3
	addli r12, zero, 4096
	dma_cfg r14, r12, r10, 4
	dma_run zero
	unlock r16
	xsignal r21, 0
	.loc	1 90 25 is_stmt 1               # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:90:25
	j .LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=1
	addli r12, zero, 9
	xwait r21, 0
	addli r25, zero, 128
	xwait r12, 0
	lock zero, zero
	addli r12, zero, 128
	ds_cfg r18, zero, 0
	ds_cfg r12, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r12, zero, 13
	addli r12, zero, 7
	shuffle_coa r3, r19, r10, 2
	unlock zero
	xsignal r12, 0
	addli r12, zero, 8
	xsignal r12, 0
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 0 is_stmt 0                 # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:0:0
	slli r12, r15, 7
	addli r13, zero, 896
	zext_int2long r[14:15], r25
	.loc	1 102 66 is_stmt 1              # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:102:66
	slli r17, r1, 9
	zext_int2long r[19:20], r13
	zext_int2long r[12:13], r12
	min.ul r[19:20], r[12:13], r[19:20]
	addli.d r[19:20], r[19:20], 128
	max.ul r[19:20], r[19:20], r[12:13]
	sub.sl r[12:13], r[19:20], r[12:13]
	min.ul r[19:20], r[12:13], r[14:15]
	lui r12, 36
	add.s r15, r17, r12
	bneq r2, r11, .LBB0_15
# %bb.14:                               # %.thread29
                                        #   in Loop: Header=BB0_5 Depth=1
	load.d r[12:13], 16(r30)
	sll.d r[3:4], r[26:27], r18
	addli r1, zero, 11
	addli r17, zero, 3
	xwait r1, 0
	lock zero, r16
	slli r1, r19, 2
	add.ul r[3:4], r[12:13], r[3:4]
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r4, zero, 2
	dma_cfg r15, r3, r1, 3
	addli r1, zero, 512
	dma_cfg r1, r1, r11, 4
	addli r1, zero, 10
	dma_run zero
	unlock r16
	j .LBB0_25
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 90 25                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:90:25
	slli r1, r1, 15
	ori r12, r12, 1536
	add.s r1, r1, r12
	bneq r2, r16, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_5 Depth=1
	addli r12, zero, 8
	xwait r16, 0
	addli r20, zero, 0
	addli r15, zero, 1
	addli r19, zero, 1
	addli r17, zero, 3
	xwait r12, 0
	addli r12, zero, 14
	xwait r12, 0
.LBB0_17:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r12, r20, 14
	slli r13, r20, 8
	lock zero, r15
	addli r20, zero, 1
	mm_cfg r10, r10, r10, 0
	or r12, r12, r3
	or r13, r13, r1
	mm_cfg r16, r16, r15, 2
	mm r13, r4, r12, 8
	andi r12, r19, 1
	addli r19, zero, 0
	unlock r15
	bneq r12, zero, .LBB0_17
# %bb.18:                               #   in Loop: Header=BB0_5 Depth=1
	addli r1, zero, 5
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 12
	j .LBB0_25
.LBB0_19:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 25 is_stmt 0                # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:0:25
	addli r17, zero, 3
	.loc	1 90 25                         # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:90:25
	addli r3, zero, 5
	bneq r2, r3, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_5 Depth=1
	addli r4, zero, 10
	addli r3, zero, 0
	xwait r4, 0
	addli r4, zero, 12
	xwait r4, 0
	lock zero, r18
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	ew_cfg r11, zero, zero, 3
.LBB0_21:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r1, r3
	addli r3, r3, 512
	dsmadd r4, r4, r15, 0
	bneq r3, r5, .LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_5 Depth=1
	addli r1, zero, 11
	unlock r18
	xsignal r1, 0
	addli r1, zero, 13
	j .LBB0_25
.LBB0_23:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 104 80 is_stmt 1              # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:104:80
	bneq r2, zero, .LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 80 is_stmt 0                # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:0:80
	slli r3, r24, 6
	zext_int2long r[12:13], zero
	.loc	1 104 80                        # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:104:80
	addli r14, zero, 18
	sext_int2long r[3:4], r3
	sll.d r[14:15], r[22:23], r14
	sll.d r[22:23], r[26:27], r18
	load.d r[26:27], 24(r30)
	min.sl r[12:13], r[3:4], r[12:13]
	add.ul r[14:15], r[26:27], r[14:15]
	addli.d r[12:13], r[12:13], 64
	add.ul r[14:15], r[14:15], r[22:23]
	max.sl r[12:13], r[12:13], r[3:4]
	sub.sl r[3:4], r[12:13], r[3:4]
	zext_int2long r[12:13], r10
	min.sl r[3:4], r[3:4], r[12:13]
	addli r12, zero, 13
	addli r13, zero, 5
	xwait r12, 0
	lock zero, r13
	slli r12, r19, 2
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r11, zero, 1
	dma_cfg r15, zero, zero, 2
	dma_cfg r14, r1, r12, 3
	addli r1, zero, 512
	addli r12, zero, 4096
	dma_cfg r12, r1, r3, 4
	addli r1, zero, 14
	dma_run zero
	unlock r13
.LBB0_25:                               # %.thread36
                                        #   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 0                           # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:0:0
	xsignal r1, 0
.LBB0_26:                               # %.thread36
                                        #   in Loop: Header=BB0_5 Depth=1
	addli.d r[8:9], r[8:9], 1
	addli r28, r28, 1
	setlt.sl r1, r[8:9], r[6:7]
	bneq r1, zero, .LBB0_5
.LBB0_27:                               # %._crit_edge
	.loc	1 23 0 is_stmt 1                # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:23:0
	xsignal zero, 0
	beq r2, zero, .LBB0_29
# %bb.28:
	mfence { lm, sm, gm }
	exit
.LBB0_29:
	.loc	1 0 0 is_stmt 0                 # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:0:0
	addli r1, zero, 2
	.loc	1 23 0                          # c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py:23:0
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
	.long	64                              # 0x40
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
.asciz	"c3fn4lnlgopbuhcsorgsyskd6spa66oebyskfys6orzeyhin6mc4.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/3f" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
