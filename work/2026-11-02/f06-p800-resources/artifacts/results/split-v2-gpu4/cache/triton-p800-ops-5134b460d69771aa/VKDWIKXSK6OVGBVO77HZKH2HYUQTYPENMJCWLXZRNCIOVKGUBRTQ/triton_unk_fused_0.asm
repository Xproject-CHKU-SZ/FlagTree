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
	ble.s r4, r3, .LBB0_9
# %bb.1:                                # %.lr.ph.preheader
	core_id r12
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
	j .LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
.Ltmp0:
	.loc	1 42 21 prologue_end            # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:42:21
	float2hfloat.rn r5, r24
	.loc	1 44 25                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:44:25
	load.d r[24:25], 16(r30)
	.loc	1 42 21                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:42:21
	float2hfloat.rn r6, r20
	.loc	1 44 37                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:44:37
	store.h r5, -64(r30)
	lui r5, 983040
	store.h r6, -62(r30)
	.loc	1 44 25 is_stmt 0               # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:44:25
	add.ul r[22:23], r[24:25], r[22:23]
	.loc	1 44 37                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:44:37
	mfence { lm }
	or r5, r21, r5
	s_lm2gm r5, r19, 0(r[22:23])
	mfence { lm }
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 37                          # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:0:37
	add.s r3, r3, r11
	blt.s r3, r4, .LBB0_4
	j .LBB0_9
.LBB0_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	div.s r20, r3, r2
	div.s r20, r20, r1
	.loc	1 24 33 is_stmt 1               # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:24:33
	slli r20, r20, 7
	.loc	1 25 23                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:25:23
	add.s r21, r20, r12
	blt.s r13, r21, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 28 19                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:28:19
	mod.s r26, r21, r18
	addli r20, zero, 0
	.loc	1 26 21                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:26:21
	sub.s r22, r14, r21
	.loc	1 29 30                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:30
	sext_int2long r[23:24], r21
	.loc	1 29 35 is_stmt 0               # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	lui r27, 983040
	max.s r25, r22, r20
	.loc	1 29 30                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:30
	sll.d r[22:23], r[23:24], r15
	.loc	1 29 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	min.s r21, r25, r16
	.loc	1 29 30                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:30
	add.ul r[24:25], r[9:10], r[22:23]
	.loc	1 30 30 is_stmt 1               # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:30
	sext_int2long r[5:6], r26
	.loc	1 29 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	slli r21, r21, 1
	.loc	1 30 30                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:30
	sll.d r[5:6], r[5:6], r15
	.loc	1 29 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	or r26, r21, r27
	.loc	1 30 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:35
	or r27, r21, r27
	.loc	1 30 30 is_stmt 0               # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:30
	add.ul r[5:6], r[7:8], r[5:6]
	.loc	1 29 35 is_stmt 1               # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	l_gm2lm r26, r17, 0(r[24:25])
	.loc	1 30 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:35
	l_gm2lm r27, r19, 0(r[5:6])
	.loc	1 29 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:29:35
	mfence { lm }
	load.hu r5, -128(r30)
	.loc	1 30 35                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:30:35
	load.hu r6, -64(r30)
	.loc	1 36 19                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:36:19
	add.hf.rn r25, r5, r6
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 110 15                        # triton_helpers.py:110:15
	slli r5, r20, 22
	srli r6, r20, 10
	seteq r5, r5, r20
	andi r6, r6, 31
	setlti r6, r6, 31
	slli r24, r25, 22
	srli r26, r25, 10
	setlt.hf r27, r25, r20
	seteq r24, r24, r20
	andi r26, r26, 31
	setlti r28, r26, 31
	or r26, r6, r5
	or r5, r28, r24
	addli r24, r20, 0
	and r5, r5, r26
	and r5, r27, r5
.Ltmp2:
	.loc	1 42 21                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:42:21
	bneq r5, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 21 is_stmt 0                # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:0:21
	hfloat2float.rn r24, r25
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	load.hu r5, -126(r30)
	load.hu r6, -62(r30)
	add.hf.rn r25, r5, r6
	slli r5, r25, 22
	srli r6, r25, 10
	setlt.hf r27, r25, r20
	seteq r5, r5, r20
	andi r6, r6, 31
	setlti r6, r6, 31
	or r5, r6, r5
	and r5, r5, r26
	and r5, r27, r5
	.loc	1 42 21                         # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:42:21
	bneq r5, zero, .LBB0_2
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 21                          # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:0:21
	hfloat2float.rn r20, r25
	j .LBB0_2
.LBB0_9:                                # %._crit_edge
	.loc	1 44 4 epilogue_begin is_stmt 1 # cn2fwbqik7gd44aoqltpjzhoqrbixxrfyhod2rh73olvhyyytjec.py:44:4
	addli sp, sp, 128
	mfence { lm, sm, gm }
	exit
.Ltmp3:
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
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
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
	.byte	1                               # Abbrev [1] 0xb:0x40 DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x1e DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x10 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	41                              # DW_AT_call_line
	.byte	42                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
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
