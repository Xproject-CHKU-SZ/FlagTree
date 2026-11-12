	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu0/cache/inductor/pu" "cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py"
	.loc	1 22 0                          # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:22:0
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
	ble.s r4, r3, .LBB0_7
# %bb.1:                                # %.lr.ph.preheader
	core_id r12
	load.d r[7:8], 8(r30)
	load.d r[9:10], 0(r30)
	load_param_i r11, 1
	addli r13, zero, 2047
	addli r14, zero, 2048
	addli r15, zero, 4
	addli r16, r30, -128
	addli r17, zero, 128
	addli r18, r30, -64
	lui r19, 260096
	addli r20, zero, 1
	slli r12, r12, 2
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	add.s r3, r3, r11
	blt.s r3, r4, .LBB0_3
	j .LBB0_7
.LBB0_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	div.s r21, r3, r2
	div.s r21, r21, r1
.Ltmp0:
	.loc	1 24 33 prologue_end            # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:24:33
	slli r21, r21, 8
	.loc	1 25 23                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:25:23
	add.s r24, r21, r12
	blt.s r13, r24, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 28 19                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:28:19
	mod.s r26, r24, r17
	.loc	1 26 21                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:26:21
	sub.s r25, r14, r24
	.loc	1 29 30                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:29:30
	sext_int2long r[21:22], r24
	addli r23, zero, 1
	.loc	1 29 35 is_stmt 0               # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:29:35
	max.s r25, r25, zero
	.loc	1 29 30                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:29:30
	sll.d r[27:28], r[21:22], r23
	.loc	1 29 35                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:29:35
	min.s r24, r25, r15
	lui r25, 983040
	.loc	1 29 30                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:29:30
	add.ul r[27:28], r[9:10], r[27:28]
	.loc	1 30 30 is_stmt 1               # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:30:30
	sext_int2long r[5:6], r26
	.loc	1 29 35                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:29:35
	slli r24, r24, 1
	.loc	1 30 35                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:30:35
	lui r26, 983040
	.loc	1 30 30 is_stmt 0               # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:30:30
	sll.d r[5:6], r[5:6], r23
	.loc	1 29 35 is_stmt 1               # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:29:35
	or r25, r24, r25
	.loc	1 30 35                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:30:35
	or r26, r24, r26
	.loc	1 30 30 is_stmt 0               # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:30:30
	add.ul r[5:6], r[7:8], r[5:6]
	.loc	1 29 35 is_stmt 1               # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:29:35
	l_gm2lm r25, r16, 0(r[27:28])
	addli r25, zero, 0
	.loc	1 30 35                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:30:35
	l_gm2lm r26, r18, 0(r[5:6])
	.loc	1 29 35                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:29:35
	mfence { lm }
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r5, r25, 1
	add.s r6, r16, r5
	.loc	1 30 35                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:30:35
	add.s r5, r18, r5
	.loc	1 29 35                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:29:35
	load.hu r25, 0(r6)
	.loc	1 30 35                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:30:35
	load.hu r26, 0(r5)
	.loc	1 29 35                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:29:35
	load.hu r6, 2(r6)
	.loc	1 30 35                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:30:35
	load.hu r27, 2(r5)
	.loc	1 36 19                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:36:19
	add.hf.rn r25, r25, r26
	add.hf.rn r6, r6, r27
	.loc	1 37 19                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:37:19
	hfloat2float.rn r25, r25
	hfloat2float.rn r6, r6
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 50 30                         # standard.py:50:30
	neg.f r26, r25
	neg.f r27, r6
	.loc	2 50 29 is_stmt 0               # standard.py:50:29
	exp.f.rn r26, r26
	exp.f.rn r27, r27
	.loc	2 50 20                         # standard.py:50:20
	add.f.rn r26, r26, r19
	add.f.rn r27, r27, r19
	.loc	2 50 16                         # standard.py:50:16
	div.f.rn r26, r19, r26
	div.f.rn r27, r19, r27
.Ltmp2:
	.loc	1 40 19 is_stmt 1               # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:40:19
	mul.f.rn r6, r27, r6
	mul.f.rn r25, r26, r25
	.loc	1 44 37                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:44:37
	andi r26, r23, 1
	.loc	1 42 21                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:42:21
	float2hfloat.rn r23, r25
	float2hfloat.rn r6, r6
	addli r25, zero, 2
	.loc	1 44 37                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:44:37
	store.h r23, 0(r5)
	store.h r6, 2(r5)
	addli r23, zero, 0
	mfence { lm }
	bneq r26, zero, .LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 44 25 is_stmt 0               # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:44:25
	sll.d r[5:6], r[21:22], r20
	load.d r[22:23], 16(r30)
	.loc	1 44 37                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:44:37
	lui r21, 983040
	or r21, r24, r21
	.loc	1 44 25                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:44:25
	add.ul r[5:6], r[22:23], r[5:6]
	.loc	1 44 37                         # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:44:37
	s_lm2gm r21, r18, 0(r[5:6])
	mfence { lm }
	j .LBB0_2
.LBB0_7:                                # %._crit_edge
	.loc	1 44 4 epilogue_begin           # cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py:44:4
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
	.byte	39                              # DW_AT_call_line
	.byte	23                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cpuvlmah2bhi53gfzppgvdjaopvfbpyd7f7fpxmhqnnazemccgjy.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu0/cache/inductor/pu" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=144
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
