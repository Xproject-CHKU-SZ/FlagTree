	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu3/cache/inductor/to" "ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py"
	.loc	1 22 0                          # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -192
	addli r30, sp, 128
	loadli.w r1,  32(r30)
	loadli.w r3,  28(r30)
	loadli.w r2,  36(r30)
	mul.s r4, r1, r3
	load_param_i r3, 0
	mul.s r4, r4, r2
	ble.s r4, r3, .LBB0_5
# %bb.1:                                # %.lr.ph.preheader
	core_id r12
	load.d r[5:6], 16(r30)
	load.d r[7:8], 8(r30)
	load.d r[9:10], 0(r30)
	load_param_i r11, 1
	addli r13, zero, 2047
	addli r14, zero, 2048
	addli r15, zero, 1
	addli r16, zero, 2
	addli r17, r30, -128
	addli r18, zero, 128
	addli r19, r30, -64
	slli r12, r12, 1
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	add.s r3, r3, r11
	blt.s r3, r4, .LBB0_3
	j .LBB0_5
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	div.s r20, r3, r2
	div.s r20, r20, r1
.Ltmp0:
	.loc	1 24 33 prologue_end            # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:24:33
	slli r20, r20, 7
	.loc	1 25 23                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:25:23
	add.s r20, r20, r12
	blt.s r13, r20, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 26 21                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:26:21
	sub.s r21, r14, r20
	.loc	1 29 30                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:29:30
	sext_int2long r[22:23], r20
	.loc	1 28 19                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:28:19
	mod.s r20, r20, r18
	.loc	1 29 35                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:29:35
	lui r26, 983040
	max.s r21, r21, zero
	.loc	1 29 30 is_stmt 0               # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:29:30
	sll.d r[22:23], r[22:23], r15
	.loc	1 29 35                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:29:35
	min.s r21, r21, r16
	.loc	1 29 30                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:29:30
	add.ul r[24:25], r[9:10], r[22:23]
	.loc	1 38 25 is_stmt 1               # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:38:25
	add.ul r[22:23], r[5:6], r[22:23]
	.loc	1 29 35                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:29:35
	slli r21, r21, 1
	.loc	1 30 30                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:30:30
	sext_int2long r[27:28], r20
	.loc	1 29 35                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:29:35
	or r20, r21, r26
	.loc	1 30 30                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:30:30
	sll.d r[26:27], r[27:28], r15
	.loc	1 30 35 is_stmt 0               # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:30:35
	lui r28, 983040
	.loc	1 30 30                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:30:30
	add.ul r[26:27], r[7:8], r[26:27]
	.loc	1 30 35                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:30:35
	or r28, r21, r28
	.loc	1 29 35 is_stmt 1               # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:29:35
	l_gm2lm r20, r17, 0(r[24:25])
	.loc	1 30 35                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:30:35
	l_gm2lm r28, r19, 0(r[26:27])
	.loc	1 29 35                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:29:35
	mfence { lm }
	load.hu r20, -128(r30)
	.loc	1 30 35                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:30:35
	load.hu r24, -64(r30)
	.loc	1 29 35                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:29:35
	load.hu r25, -126(r30)
	.loc	1 30 35                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:30:35
	load.hu r26, -62(r30)
	.loc	1 36 19                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:36:19
	add.hf.rn r20, r20, r24
	add.hf.rn r24, r25, r26
	.loc	1 38 36                         # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:38:36
	store.h r20, -64(r30)
	lui r20, 983040
	store.h r24, -62(r30)
	mfence { lm }
	or r20, r21, r20
	s_lm2gm r20, r19, 0(r[22:23])
	mfence { lm }
	j .LBB0_2
.LBB0_5:                                # %._crit_edge
	.loc	1 38 4 epilogue_begin is_stmt 0 # ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py:38:4
	addli sp, sp, 128
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
	.long	40                              # 0x28
	.size	XPU_KERNEL_PARAM_SIZE_triton_unk_fused_0, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0,@object # @XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.section	.XPU.KERNEL_STACK_SIZE.triton_unk_fused_0,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_unk_fused_0
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_unk_fused_0:
	.long	192                             # 0xc0
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
.asciz	"ctojeuyvprr64kr7jav6457fdo77bke6b636xbiqfndp3m3emj7d.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu3/cache/inductor/to" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
