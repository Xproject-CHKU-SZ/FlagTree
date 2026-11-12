	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/5r" "c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py"
	.loc	1 22 0                          # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -256
	addli r30, sp, 192
	lui r19, :hi20:global_smem
.Ltmp0:
	.loc	1 50 37 prologue_end            # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:50:37
	core_id r18
	lui r4, 15
	loadli.w r2,  36(r30)
	loadli.w r5,  32(r30)
	slli r3, r18, 2
	addli r19, r19, :lo12:global_smem
	loadli.w r1,  40(r30)
	ori r4, r4, 4095
	add.s r3, r3, r19
	mul.s r6, r2, r5
	load_param_i r5, 0
	stores.w zero, 0(r3)
	mul.s r6, r6, r1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	ble.s r6, r5, .LBB0_12
# %bb.1:                                # %.lr.ph
	.loc	1 0 37 is_stmt 0                # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:0:37
	addli r7, zero, 8
	lui r16, 262143
	addli r13, zero, 1
	load_param_i r12, 1
	andi r14, r18, 7
	addli r24, zero, 28
	div.s r9, r18, r7
	ori r16, r16, 4088
	load.d r[7:8], 8(r30)
	and r16, r18, r16
	slli r23, r16, 2
	slli r15, r9, 3
	sub.s r17, r18, r15
	slli r15, r17, 4
	seteq r20, r17, zero
	sext_int2long r[21:22], r15
	sll.d r[21:22], r[21:22], r13
	add.ul r[16:17], r[7:8], r[21:22]
	setlti r7, r18, 64
	add.s r18, r23, r19
	addli r21, r30, -192
	addli r22, zero, 32
	addli r23, r30, -128
	and r19, r7, r20
	addli r20, zero, 15
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	add.s r5, r5, r12
	blt.s r5, r6, .LBB0_3
	j .LBB0_12
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_7 Depth 2
	div.s r7, r5, r1
	div.s r7, r7, r2
	.loc	1 28 33 is_stmt 1               # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:28:33
	slli r7, r7, 3
	.loc	1 29 23                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:29:23
	add.s r27, r7, r9
	blt.s r20, r27, .LBB0_2
# %bb.4:                                # %.preheader.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 23 is_stmt 0                # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:0:23
	addli r7, zero, 0
.LBB0_5:                                # %.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46 is_stmt 1               # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:38:46
	add.s r8, r21, r7
	addli r7, r7, 4
	store.h zero, 0(r8)
	store.h zero, 2(r8)
	mfence { lm }
	bneq r7, r22, .LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 38 41 is_stmt 0               # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:38:41
	slli r7, r27, 7
	.loc	1 38 30                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:38:30
	load.d r[10:11], 0(r30)
	.loc	1 38 46                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:38:46
	lui r8, 983040
	.loc	1 38 37                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:38:37
	add.s r7, r7, r15
	.loc	1 38 46                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:38:46
	or r8, r22, r8
	.loc	1 38 30                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:38:30
	sext_int2long r[25:26], r7
	.loc	1 39 37 is_stmt 1               # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:39:37
	lui r7, 983040
	.loc	1 38 30                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:38:30
	sll.d r[25:26], r[25:26], r13
	.loc	1 39 37                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:39:37
	or r7, r22, r7
	.loc	1 38 30                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:38:30
	add.ul r[25:26], r[10:11], r[25:26]
	.loc	1 38 46 is_stmt 0               # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:38:46
	l_gm2lm r8, r21, 0(r[25:26])
	.loc	1 39 37 is_stmt 1               # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:39:37
	l_gm2lm r7, r23, 0(r[16:17])
	.loc	1 38 46                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:38:46
	mfence { lm }
	load.hu r7, -192(r30)
	.loc	1 39 37                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:39:37
	load.hu r25, -128(r30)
	.loc	1 38 46                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:38:46
	load.hu r8, -190(r30)
	.loc	1 39 37                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:39:37
	load.hu r26, -126(r30)
	.loc	1 45 19                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:45:19
	mul.hf.rn r7, r7, r25
	mul.hf.rn r8, r8, r26
	.loc	1 46 19                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:46:19
	hfloat2float.rn r28, r7
	hfloat2float.rn r7, r8
	addli r8, zero, 0
.LBB0_7:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 38 46                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:38:46
	add.s r25, r21, r8
	.loc	1 39 37                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:39:37
	add.s r26, r23, r8
	addli r8, r8, 4
	.loc	1 38 46                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:38:46
	load.hu r10, 4(r25)
	load.hu r11, 6(r25)
	.loc	1 39 37                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:39:37
	load.hu r25, 4(r26)
	load.hu r26, 6(r26)
	.loc	1 45 19                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:45:19
	mul.hf.rn r10, r10, r25
	mul.hf.rn r11, r11, r26
	.loc	1 46 19                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:46:19
	hfloat2float.rn r10, r10
	hfloat2float.rn r11, r11
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r28, r28, r10
	add.f.rn r7, r7, r11
	bneq r8, r24, .LBB0_7
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	add.f.rn r7, r28, r7
	stores.w r7, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r14, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	loads.w r7, 0(r18)
	loads.w r8, 4(r18)
	loads.w r10, 8(r18)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r7, r7, r8
	loads.w r8, 12(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 16(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 20(r18)
	add.f.rn r7, r7, r10
	loads.w r10, 24(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 28(r18)
	add.f.rn r7, r7, r10
	add.f.rn r7, r7, r8
	stores.w r7, 0(r18)
.Ltmp2:
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	.loc	1 50 37 is_stmt 1               # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:50:37
	beq r19, zero, .LBB0_2
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 37 is_stmt 0                # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:0:37
	loads.w r7, 0(r18)
	.loc	1 50 25                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:50:25
	sext_int2long r[10:11], r27
	load.d r[25:26], 16(r30)
	.loc	1 50 37                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:50:37
	lui r8, 983040
	.loc	1 50 25                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:50:25
	sll.d r[10:11], r[10:11], r13
	add.ul r[10:11], r[25:26], r[10:11]
	.loc	1 50 37                         # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:50:37
	float2hfloat.rn r7, r7
	store.h r7, -64(r30)
	addli r7, zero, 2
	mfence { lm }
	or r7, r7, r8
	addli r8, r30, -64
	s_lm2gm r7, r8, 0(r[10:11])
	mfence { lm }
	j .LBB0_2
.LBB0_12:                               # %._crit_edge
	.loc	1 50 4 epilogue_begin           # c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py:50:4
	addli sp, sp, 192
	mfence { lm, sm, gm }
	exit
.Ltmp3:
.Lfunc_end0:
	.size	triton_unk_fused_0, .Lfunc_end0-triton_unk_fused_0
	.cfi_endproc
                                        # -- End function
	.type	global_smem,@object             # @global_smem
	.section	".sm.LLVMDialectModule;global_smem","a",@nobits
	.p2align	3, 0x0
global_smem:
	.size	global_smem, 0

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
	.long	256                             # 0x100
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
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	5                               # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
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
	.byte	1                               # Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x30 DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x22 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	49                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x49:0x11 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"c5ra54i42yrd2gb4jouccza6cb3jndqy76ypj6ascdr5kojsdjui.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/inductor/5r" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
