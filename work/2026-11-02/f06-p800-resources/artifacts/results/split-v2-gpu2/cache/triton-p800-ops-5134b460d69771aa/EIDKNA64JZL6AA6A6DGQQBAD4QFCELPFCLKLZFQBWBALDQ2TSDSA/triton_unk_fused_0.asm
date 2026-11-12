	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu2/cache/inductor/pc" "cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py"
	.loc	1 22 0                          # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:22:0
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
	slli r15, zero, 22
	srli r16, zero, 10
	core_id r12
	load.d r[5:6], 16(r30)
	load.d r[7:8], 8(r30)
	load.d r[9:10], 0(r30)
	load_param_i r11, 1
	addli r13, zero, 2048
	addli r14, zero, 1
	seteq r18, r15, zero
	andi r17, r16, 31
	slli r12, r12, 4
	addli r15, r30, -128
	addli r16, zero, 32
	setlti r19, r17, 31
	addli r17, r30, -64
	or r18, r19, r18
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 44 37 prologue_end            # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:44:37
	lui r21, 983040
	.loc	1 44 25 is_stmt 0               # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:44:25
	add.ul r[19:20], r[5:6], r[19:20]
	add.s r3, r3, r11
	.loc	1 44 37                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:44:37
	or r21, r16, r21
	s_lm2gm r21, r17, 0(r[19:20])
	mfence { lm }
	blt.s r3, r4, .LBB0_3
	j .LBB0_9
.LBB0_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	.loc	1 0 37                          # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:0:37
	div.s r19, r3, r2
	.loc	1 30 35 is_stmt 1               # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:30:35
	lui r25, 983040
	or r25, r16, r25
	div.s r19, r19, r1
	.loc	1 24 33                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:24:33
	slli r19, r19, 10
	.loc	1 25 23                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:25:23
	add.s r19, r19, r12
	.loc	1 28 19                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:28:19
	mod.s r20, r19, r13
	.loc	1 29 30                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:29:30
	sext_int2long r[21:22], r19
	.loc	1 29 35 is_stmt 0               # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:29:35
	lui r19, 983040
	or r26, r16, r19
	.loc	1 30 30 is_stmt 1               # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:30:30
	sext_int2long r[23:24], r20
	.loc	1 29 30                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:29:30
	sll.d r[19:20], r[21:22], r14
	.loc	1 30 30                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:30:30
	sll.d r[21:22], r[23:24], r14
	.loc	1 29 30                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:29:30
	add.ul r[23:24], r[9:10], r[19:20]
	.loc	1 30 30                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:30:30
	add.ul r[21:22], r[7:8], r[21:22]
	.loc	1 29 35                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:29:35
	l_gm2lm r26, r15, 0(r[23:24])
	.loc	1 30 35                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:30:35
	l_gm2lm r25, r17, 0(r[21:22])
	addli r21, zero, 0
	.loc	1 29 35                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:29:35
	mfence { lm }
	j .LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	.loc	1 42 21                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:42:21
	float2hfloat.rn r23, r23
	float2hfloat.rn r24, r25
	.loc	1 44 37                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:44:37
	addli r21, r21, 4
	store.h r23, 0(r22)
	store.h r24, 2(r22)
	mfence { lm }
	beq r21, r16, .LBB0_2
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 29 35                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:29:35
	add.s r23, r15, r21
	.loc	1 30 35                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:30:35
	add.s r22, r17, r21
	.loc	1 29 35                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:29:35
	load.hu r24, 0(r23)
	.loc	1 30 35                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:30:35
	load.hu r25, 0(r22)
	.loc	1 36 19                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:36:19
	add.hf.rn r24, r24, r25
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/torch/_inductor/runtime" "triton_helpers.py"
	.loc	2 110 15                        # triton_helpers.py:110:15
	slli r25, r24, 22
	srli r26, r24, 10
	setlt.hf r27, r24, zero
	seteq r25, r25, zero
	andi r26, r26, 31
	setlti r26, r26, 31
	or r26, r26, r25
.Ltmp2:
	.loc	1 29 35                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:29:35
	load.hu r25, 2(r23)
.Ltmp3:
	.loc	2 110 15                        # triton_helpers.py:110:15
	and r23, r26, r18
.Ltmp4:
	.loc	1 30 35                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:30:35
	load.hu r26, 2(r22)
.Ltmp5:
	.loc	2 110 15                        # triton_helpers.py:110:15
	and r27, r27, r23
	addli r23, zero, 0
.Ltmp6:
	.loc	1 42 21                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:42:21
	bneq r27, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	.loc	1 0 21 is_stmt 0                # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:0:21
	hfloat2float.rn r23, r24
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=2
	add.hf.rn r24, r25, r26
	slli r25, r24, 22
	srli r26, r24, 10
	setlt.hf r27, r24, zero
	seteq r25, r25, zero
	andi r26, r26, 31
	setlti r26, r26, 31
	or r25, r26, r25
	and r25, r25, r18
	and r26, r27, r25
	addli r25, zero, 0
	.loc	1 42 21                         # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:42:21
	bneq r26, zero, .LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=2
	.loc	1 0 21                          # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:0:21
	hfloat2float.rn r25, r24
	j .LBB0_4
.LBB0_9:                                # %._crit_edge
	.loc	1 44 4 epilogue_begin is_stmt 1 # cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py:44:4
	addli sp, sp, 128
	mfence { lm, sm, gm }
	exit
.Ltmp7:
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
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cpcdf574geoynevvucsqzpbjudqaurkbymt4zfyw52nkm5w4hwcy.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu2/cache/inductor/pc" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=144
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
