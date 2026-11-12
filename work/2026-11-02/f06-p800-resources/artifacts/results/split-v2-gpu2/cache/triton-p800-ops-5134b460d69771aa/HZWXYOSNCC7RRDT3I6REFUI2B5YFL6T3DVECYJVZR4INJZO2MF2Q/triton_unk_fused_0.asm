	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu2/cache/inductor/2k" "c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py"
	.loc	1 22 0                          # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -320
	addli r30, sp, 256
	loadli.w r18,  32(r30)
	loadli.w r3,  28(r30)
	loadli.w r20,  36(r30)
	mul.s r4, r18, r3
	load_param_i r3, 0
	mul.s r4, r4, r20
	ble.s r4, r3, .LBB0_3
# %bb.1:                                # %.lr.ph
	core_id r12
	load_param_i r11, 1
	addli r14, zero, 2
	addli r16, zero, 64
	addli r17, r30, -192
	lui r19, 260096
	slli r12, r12, 4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	div.s r21, r3, r20
.Ltmp0:
	.loc	1 28 19 prologue_end            # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:28:19
	addli r5, zero, 2048
	.loc	1 29 35                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:29:35
	lui r23, 983040
	.loc	1 30 35                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:30:35
	lui r24, 983040
	add.s r3, r3, r11
	.loc	1 29 35                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:29:35
	or r23, r16, r23
	.loc	1 30 35                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:30:35
	or r24, r16, r24
	div.s r21, r21, r18
	.loc	1 24 33                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:24:33
	slli r21, r21, 10
	.loc	1 25 23                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:25:23
	add.s r21, r21, r12
	.loc	1 28 19                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:28:19
	mod.s r22, r21, r5
	.loc	1 29 30                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:29:30
	sext_int2long r[25:26], r21
	load.d r[5:6], 0(r30)
	.loc	1 30 30                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:30:30
	sext_int2long r[27:28], r22
	.loc	1 29 30                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:29:30
	sll.d r[21:22], r[25:26], r14
	.loc	1 30 30                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:30:30
	sll.d r[25:26], r[27:28], r14
	.loc	1 29 30                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:29:30
	add.ul r[27:28], r[5:6], r[21:22]
	.loc	1 30 30                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:30:30
	load.d r[5:6], 8(r30)
	add.ul r[25:26], r[5:6], r[25:26]
	.loc	1 29 35                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:29:35
	addli r5, r30, -256
	l_gm2lm r23, r5, 0(r[27:28])
	.loc	1 30 35                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:30:35
	l_gm2lm r24, r17, 0(r[25:26])
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 50 16                         # standard.py:50:16
	addli r5, r30, -64
.Ltmp2:
	.loc	1 29 35                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:29:35
	mfence { lm }
	vload_mask16.mz vr0{mr1}, -256(r30)
	.loc	1 30 35                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:30:35
	vload_mask16.mz vr1{mr1}, -192(r30)
	.loc	1 31 18                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:31:18
	vadd.f.mz.rn vr0{mr1}, vr0, vr1
.Ltmp3:
	.loc	2 50 30                         # standard.py:50:30
	#APP
	vsub.f.mz.rn vr1{mr1}, zero, vr0
	#NO_APP
	.loc	2 50 16 is_stmt 0               # standard.py:50:16
	vstore_mask16.mz vr1{mr1}, 0(r5)
	mfence { lm }
	loadli.w r25,  -60(r30)
	loadli.w r5,  -40(r30)
	loadli.w r6,  -36(r30)
	loadli.w r7,  -32(r30)
	loadli.w r23,  -64(r30)
	loadli.w r24,  -56(r30)
	loadli.w r8,  -28(r30)
	loadli.w r1,  -8(r30)
	loadli.w r2,  -4(r30)
	loadli.w r27,  -48(r30)
	loadli.w r28,  -44(r30)
	loadli.w r9,  -24(r30)
	loadli.w r10,  -20(r30)
	loadli.w r13,  -16(r30)
	loadli.w r15,  -12(r30)
	exp.f.rn r26, r23
	exp.f.rn r25, r25
	exp.f.rn r5, r5
	exp.f.rn r6, r6
	exp.f.rn r7, r7
	exp.f.rn r24, r24
	exp.f.rn r8, r8
	loadli.w r23,  -52(r30)
	exp.f.rn r1, r1
	exp.f.rn r2, r2
	exp.f.rn r23, r23
	add.f.rn r26, r26, r19
	add.f.rn r25, r25, r19
	add.f.rn r5, r5, r19
	add.f.rn r6, r6, r19
	add.f.rn r7, r7, r19
	add.f.rn r24, r24, r19
	add.f.rn r1, r1, r19
	add.f.rn r2, r2, r19
	add.f.rn r23, r23, r19
	div.f.rn r26, r19, r26
	div.f.rn r25, r19, r25
	div.f.rn r5, r19, r5
	div.f.rn r6, r19, r6
	div.f.rn r7, r19, r7
	div.f.rn r24, r19, r24
	div.f.rn r1, r19, r1
	div.f.rn r2, r19, r2
	div.f.rn r23, r19, r23
	storeli.w r26, -128(r30)
	exp.f.rn r26, r28
	storeli.w r25, -124(r30)
	exp.f.rn r25, r27
	storeli.w r5, -104(r30)
	exp.f.rn r5, r9
	exp.f.rn r9, r15
	storeli.w r6, -100(r30)
	add.f.rn r6, r8, r19
	exp.f.rn r8, r13
	storeli.w r7, -96(r30)
	exp.f.rn r7, r10
	storeli.w r24, -120(r30)
	storeli.w r1, -72(r30)
	storeli.w r2, -68(r30)
	addli r1, r30, -128
	storeli.w r23, -116(r30)
	div.f.rn r6, r19, r6
	add.f.rn r5, r5, r19
	add.f.rn r7, r7, r19
	add.f.rn r8, r8, r19
	add.f.rn r9, r9, r19
	add.f.rn r25, r25, r19
	add.f.rn r26, r26, r19
	div.f.rn r24, r19, r25
	div.f.rn r25, r19, r26
	div.f.rn r5, r19, r5
	div.f.rn r7, r19, r7
	div.f.rn r8, r19, r8
	div.f.rn r9, r19, r9
	storeli.w r6, -92(r30)
	storeli.w r5, -88(r30)
	storeli.w r24, -112(r30)
	storeli.w r25, -108(r30)
	storeli.w r7, -84(r30)
	storeli.w r8, -80(r30)
	storeli.w r9, -76(r30)
.Ltmp4:
	.loc	1 34 36 is_stmt 1               # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:34:36
	lui r5, 983040
.Ltmp5:
	.loc	2 50 16                         # standard.py:50:16
	mfence { lm }
	vload_mask16.mz vr1{mr1}, 0(r1)
.Ltmp6:
	.loc	1 34 25                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:34:25
	load.d r[1:2], 16(r30)
	.loc	1 34 36 is_stmt 0               # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:34:36
	or r5, r16, r5
	.loc	1 34 25                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:34:25
	add.ul r[1:2], r[1:2], r[21:22]
	.loc	1 33 18 is_stmt 1               # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:33:18
	vmul.f.mz.rn vr0{mr1}, vr0, vr1
	.loc	1 34 36                         # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:34:36
	vstore_mask16.mz vr0{mr1}, -192(r30)
	mfence { lm }
	s_lm2gm r5, r17, 0(r[1:2])
	mfence { lm }
	blt.s r3, r4, .LBB0_2
.LBB0_3:                                # %._crit_edge
	.loc	1 34 4 epilogue_begin is_stmt 0 # c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py:34:4
	addli sp, r30, -256
	addli sp, sp, 256
	mfence { lm, sm, gm }
	exit
.Ltmp7:
.Lfunc_end0:
	.size	triton_unk_fused_0, .Lfunc_end0-triton_unk_fused_0
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN3xpu10xtransLockEv,"ax",@progbits
	.type	_ZN3xpu10xtransLockEv,@function # -- Begin function _ZN3xpu10xtransLockEv
_ZN3xpu10xtransLockEv:                  # @_ZN3xpu10xtransLockEv
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	addli sp, sp, -8
	lui r5, :hi20:_ZN3xpu14XTransSpinLockE
	load_param_i r1, 6
	addli r2, zero, 32
	storeli.w r30, 4(sp)                    # 4-byte Folded Spill
	storeli.w r31, 0(sp)                    # 4-byte Folded Spill
	addli r30, sp, 8
	zext_int2long r[3:4], r1
	load_param_i r1, 5
	addli r5, r5, :lo12:_ZN3xpu14XTransSpinLockE
	add.s r1, r1, r5
	sll.d r[2:3], r[3:4], r2
	zext_int2long r[4:5], r1
	or.d r[1:2], r[4:5], r[2:3]
	addli r3, zero, 1
	amoadd r4, r3, r[1:2]
	beq r4, zero, .LBB1_5
# %bb.1:                                # %for.cond.preheader.preheader
	addli r4, zero, 5
.LBB1_2:                                # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	addli r5, r4, 0
.LBB1_3:                                # %for.body
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addli r5, r5, -1
	#APP
	nop
	#NO_APP
	bneq r5, zero, .LBB1_3
# %bb.4:                                # %for.cond.cleanup
                                        #   in Loop: Header=BB1_2 Depth=1
	amoadd r5, r3, r[1:2]
	addli r4, r4, 5
	bneq r5, zero, .LBB1_2
.LBB1_5:                                # %while.end
	loadli.w r31,  0(sp)                    # 4-byte Folded Reload
	loadli.w r30,  4(sp)                    # 4-byte Folded Reload
	addli sp, sp, 8
	jr r31, 0
.Lfunc_end1:
	.size	_ZN3xpu10xtransLockEv, .Lfunc_end1-_ZN3xpu10xtransLockEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN3xpu12xtransUnlockEv,"ax",@progbits
	.type	_ZN3xpu12xtransUnlockEv,@function # -- Begin function _ZN3xpu12xtransUnlockEv
_ZN3xpu12xtransUnlockEv:                # @_ZN3xpu12xtransUnlockEv
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	addli sp, sp, -8
	lui r5, :hi20:_ZN3xpu14XTransSpinLockE
	load_param_i r1, 6
	addli r2, zero, 32
	storeli.w r30, 4(sp)                    # 4-byte Folded Spill
	storeli.w r31, 0(sp)                    # 4-byte Folded Spill
	addli r30, sp, 8
	zext_int2long r[3:4], r1
	load_param_i r1, 5
	addli r5, r5, :lo12:_ZN3xpu14XTransSpinLockE
	add.s r1, r1, r5
	sll.d r[2:3], r[3:4], r2
	zext_int2long r[4:5], r1
	or.d r[1:2], r[4:5], r[2:3]
	amoswap r1, zero, r[1:2]
	loadli.w r31,  0(sp)                    # 4-byte Folded Reload
	loadli.w r30,  4(sp)                    # 4-byte Folded Reload
	addli sp, sp, 8
	jr r31, 0
.Lfunc_end2:
	.size	_ZN3xpu12xtransUnlockEv, .Lfunc_end2-_ZN3xpu12xtransUnlockEv
	.cfi_endproc
                                        # -- End function
	.hidden	_ZN3xpu14XTransSpinLockE        # @_ZN3xpu14XTransSpinLockE
	.type	_ZN3xpu14XTransSpinLockE,@object
	.section	.gm._ZN3xpu14XTransSpinLockE,"a",@progbits
	.weak	_ZN3xpu14XTransSpinLockE
	.p2align	2, 0x0
_ZN3xpu14XTransSpinLockE:
	.long	0                               # 0x0
	.size	_ZN3xpu14XTransSpinLockE, 4

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
	.long	320                             # 0x140
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
	.byte	32                              # DW_AT_call_line
	.byte	22                              # DW_AT_call_column
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
.asciz	"c2koaxtnmozktjs6udgidnfyjgxuc2hii4ihifkphhevqtbcjx6d.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu2/cache/inductor/2k" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=144
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 19.1.7 (b526e9ed77e93b92ce71f434d0bfd2c7ad245c37)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
