	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu4/cache/inductor/n2" "cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py"
	.loc	1 22 0                          # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:22:0
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
	ble.s r4, r3, .LBB0_11
# %bb.1:                                # %.lr.ph.preheader
	core_id r5
	load.d r[9:10], 0(r30)
	load_param_i r11, 1
	addli r13, zero, 2047
	addli r14, zero, 2048
	addli r15, zero, 4
	addli r16, r30, -128
	addli r17, zero, 128
	addli r18, r30, -64
	addli r19, zero, 1
	slli r12, r5, 2
	j .LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
.Ltmp0:
	.loc	1 44 25 prologue_end            # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:44:25
	sll.d r[5:6], r[20:21], r19
	load.d r[20:21], 16(r30)
	.loc	1 44 37 is_stmt 0               # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:44:37
	lui r7, 983040
	or r7, r23, r7
	.loc	1 44 25                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:44:25
	add.ul r[5:6], r[20:21], r[5:6]
	.loc	1 44 37                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:44:37
	s_lm2gm r7, r18, 0(r[5:6])
	mfence { lm }
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37                          # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:0:37
	add.s r3, r3, r11
	blt.s r3, r4, .LBB0_4
	j .LBB0_11
.LBB0_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	div.s r5, r3, r2
	div.s r5, r5, r1
	.loc	1 24 33 is_stmt 1               # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:24:33
	slli r5, r5, 8
	.loc	1 25 23                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:25:23
	add.s r23, r5, r12
	blt.s r13, r23, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 28 19                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:28:19
	mod.s r6, r23, r17
	.loc	1 26 21                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:26:21
	sub.s r5, r14, r23
	.loc	1 29 30                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:30
	sext_int2long r[20:21], r23
	addli r22, zero, 1
	.loc	1 30 30                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:30
	load.d r[7:8], 8(r30)
	.loc	1 29 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	max.s r5, r5, zero
	.loc	1 29 30 is_stmt 0               # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:30
	sll.d r[23:24], r[20:21], r22
	.loc	1 29 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	min.s r5, r5, r15
	.loc	1 29 30                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:30
	add.ul r[24:25], r[9:10], r[23:24]
	.loc	1 30 30 is_stmt 1               # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:30
	sext_int2long r[26:27], r6
	.loc	1 29 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	slli r23, r5, 1
	lui r5, 983040
	.loc	1 30 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:35
	lui r6, 983040
	.loc	1 30 30 is_stmt 0               # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:30
	sll.d r[26:27], r[26:27], r22
	.loc	1 29 35 is_stmt 1               # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	or r5, r23, r5
	.loc	1 30 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:35
	or r6, r23, r6
	.loc	1 30 30 is_stmt 0               # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:30
	add.ul r[26:27], r[7:8], r[26:27]
	.loc	1 29 35 is_stmt 1               # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	l_gm2lm r5, r16, 0(r[24:25])
	addli r5, zero, 0
	.loc	1 30 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:35
	l_gm2lm r6, r18, 0(r[26:27])
	.loc	1 29 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	mfence { lm }
	j .LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=2
	.loc	1 42 21                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:42:21
	float2hfloat.rn r6, r26
	float2hfloat.rn r5, r5
	.loc	1 44 37                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:44:37
	store.h r6, 0(r24)
	store.h r5, 2(r24)
	andi r6, r22, 1
	addli r5, zero, 2
	addli r22, zero, 0
	mfence { lm }
	beq r6, zero, .LBB0_2
.LBB0_7:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 29 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	slli r5, r5, 1
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 110 15                        # triton_helpers.py:110:15
	srli r28, zero, 10
.Ltmp2:
	.loc	1 30 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:35
	add.s r24, r18, r5
	.loc	1 29 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	add.s r6, r16, r5
	load.hu r5, 0(r6)
	.loc	1 30 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:35
	load.hu r25, 0(r24)
	.loc	1 36 19                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:36:19
	add.hf.rn r25, r5, r25
.Ltmp3:
	.loc	2 110 15                        # triton_helpers.py:110:15
	slli r5, zero, 22
	seteq r5, r5, zero
	slli r27, r25, 22
	srli r8, r25, 10
	setlt.hf r26, r25, zero
	seteq r7, r27, zero
	andi r27, r28, 31
	andi r8, r8, 31
.Ltmp4:
	.loc	1 29 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	load.hu r28, 2(r6)
.Ltmp5:
	.loc	2 110 15                        # triton_helpers.py:110:15
	setlti r27, r27, 31
	setlti r8, r8, 31
	or r27, r27, r5
	or r5, r8, r7
	and r6, r5, r27
.Ltmp6:
	.loc	1 30 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:35
	load.hu r5, 2(r24)
.Ltmp7:
	.loc	2 110 15                        # triton_helpers.py:110:15
	and r6, r26, r6
	addli r26, zero, 0
.Ltmp8:
	.loc	1 42 21                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:42:21
	bneq r6, zero, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	.loc	1 0 21 is_stmt 0                # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:0:21
	hfloat2float.rn r26, r25
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=2
	add.hf.rn r25, r28, r5
	slli r5, r25, 22
	srli r6, r25, 10
	setlt.hf r7, r25, zero
	seteq r5, r5, zero
	andi r6, r6, 31
	setlti r6, r6, 31
	or r5, r6, r5
	and r5, r5, r27
	and r6, r7, r5
	addli r5, zero, 0
	.loc	1 42 21                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:42:21
	bneq r6, zero, .LBB0_6
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=2
	.loc	1 0 21                          # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:0:21
	hfloat2float.rn r5, r25
	j .LBB0_6
.LBB0_11:                               # %._crit_edge
	.loc	1 44 4 epilogue_begin is_stmt 1 # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:44:4
	addli sp, sp, 128
	mfence { lm, sm, gm }
	exit
.Ltmp9:
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
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	2                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	32                              # DW_AT_inline
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
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
	.byte	1                               # Abbrev [1] 0xb:0x3c DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	2                               # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x26:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0x2c:0x1a DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0xc DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	41                              # DW_AT_call_line
	.byte	42                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp5-.Lfunc_begin0
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu4/cache/inductor/n2" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=144
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
