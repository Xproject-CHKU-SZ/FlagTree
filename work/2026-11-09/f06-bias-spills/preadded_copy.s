	.text
	.file	"LLVMDialectModule"
	.section	.text._tle_row_softmax_preadded_copy,"ax",@progbits
	.globl	_tle_row_softmax_preadded_copy  # -- Begin function _tle_row_softmax_preadded_copy
	.type	_tle_row_softmax_preadded_copy,@function
_tle_row_softmax_preadded_copy:         # @_tle_row_softmax_preadded_copy
.Lfunc_begin0:
	.file	1 "/tmp" "preadded_copy.py"
	.loc	1 335 0                         # preadded_copy.py:335:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2176
	addli r30, sp, 2048
	loadli.w r1,  96(r30)
	loadli.w r3,  92(r30)
	loadli.w r2,  100(r30)
	mul.s r4, r1, r3
	load_param_i r3, 0
	mul.s r4, r4, r2
	ble.s r4, r3, .LBB0_7
# %bb.1:                                # %.lr.ph
	core_id r16
	loadli.w r21,  68(r30)
	loadli.w r22,  12(r30)
	addli r26, zero, 512
	load.d r[5:6], 80(r30)
	load.d r[19:20], 24(r30)
	load.d r[8:9], 56(r30)
	load.d r[10:11], 16(r30)
	loadli.w r12,  8(r30)
	load.d r[13:14], 0(r30)
	load_param_i r15, 1
	slli r18, r16, 9
	srli r17, r16, 2
	andi r23, r18, 1536
	andi r16, r17, 15
	sub.s r22, r22, r23
	sub.s r21, r21, r23
	zext_int2long r[24:25], r23
	zext_int2long r[17:18], r16
	max.s r22, r22, zero
	max.s r23, r21, zero
	mul.sl r[19:20], r[19:20], r[24:25]
	min.s r22, r22, r26
	min.s r26, r23, r26
	slli r21, r22, 2
	mul.sl r[22:23], r[5:6], r[24:25]
	slli r24, r26, 2
	addli r25, zero, 2
	addli r26, r30, -2048
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 335 0 prologue_end            # preadded_copy.py:335:0
	load.d r[1:2], 72(r30)
	add.s r3, r3, r15
	mul.sl r[1:2], r[5:6], r[1:2]
	lui r5, 983040
	add.ul r[1:2], r[1:2], r[22:23]
	or r5, r28, r5
	sll.d r[1:2], r[1:2], r25
	add.ul r[1:2], r[8:9], r[1:2]
	s_lm2gm r5, r26, 0(r[1:2])
	mfence { lm }
	blt.s r3, r4, .LBB0_3
	j .LBB0_7
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 # preadded_copy.py:0:0
	loadli.w r1,  100(r30)
	addli r28, r21, 0
	div.s r5, r3, r1
	loadli.w r1,  96(r30)
	div.s r5, r5, r1
	.loc	1 342 20 is_stmt 1              # preadded_copy.py:342:20
	slli r5, r5, 4
	.loc	1 335 0                         # preadded_copy.py:335:0
	or r27, r16, r5
	blt.s r27, r12, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0 is_stmt 0                 # preadded_copy.py:0:0
	addli r28, zero, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 335 0                         # preadded_copy.py:335:0
	sext_int2long r[5:6], r5
	lui r7, 983040
	or.d r[5:6], r[17:18], r[5:6]
	or r7, r28, r7
	addli r28, r24, 0
	mul.sl r[1:2], r[5:6], r[10:11]
	add.ul r[1:2], r[1:2], r[19:20]
	sll.d r[1:2], r[1:2], r25
	add.ul r[1:2], r[13:14], r[1:2]
	l_gm2lm r7, r26, 0(r[1:2])
	mfence { lm }
	mfence { lm }
	loadli.w r1,  64(r30)
	blt.s r27, r1, .LBB0_2
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 0                           # preadded_copy.py:0:0
	addli r28, zero, 0
	j .LBB0_2
.LBB0_7:                                # %._crit_edge
	.loc	1 358 4 epilogue_begin is_stmt 1 # preadded_copy.py:358:4
	addli sp, sp, 2048
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	_tle_row_softmax_preadded_copy, .Lfunc_end0-_tle_row_softmax_preadded_copy
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_copy,@object # @XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_copy
	.section	.XPU.KERNEL_PARAM_SIZE._tle_row_softmax_preadded_copy,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_copy
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_copy:
	.long	104                             # 0x68
	.size	XPU_KERNEL_PARAM_SIZE__tle_row_softmax_preadded_copy, 4

	.type	XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_copy,@object # @XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_copy
	.section	.XPU.KERNEL_STACK_SIZE._tle_row_softmax_preadded_copy,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_copy
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_copy:
	.long	2176                            # 0x880
	.size	XPU_KERNEL_STACK_SIZE__tle_row_softmax_preadded_copy, 4

	.type	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_copy,@object # @XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_copy
	.section	.XPU.KERNEL_DYNAMIC_LM._tle_row_softmax_preadded_copy,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_copy
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_copy:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM__tle_row_softmax_preadded_copy, 4

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
.asciz	"preadded_copy.py"              # string offset=7
.Linfo_string2:
.asciz	"/tmp"                          # string offset=24
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
