	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/z7" "cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py"
	.loc	1 22 0                          # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -256
	addli r30, sp, 192
	lui r9, :hi20:global_smem
.Ltmp0:
	.loc	1 44 36 prologue_end            # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:44:36
	core_id r8
	lui r4, 15
	loadli.w r2,  36(r30)
	loadli.w r5,  32(r30)
	slli r3, r8, 2
	addli r9, r9, :lo12:global_smem
	loadli.w r1,  40(r30)
	ori r4, r4, 4095
	add.s r3, r3, r9
	mul.s r6, r2, r5
	load_param_i r5, 0
	stores.w zero, 0(r3)
	mul.s r6, r6, r1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	ble.s r6, r5, .LBB0_8
# %bb.1:                                # %.lr.ph
	.loc	1 0 36 is_stmt 0                # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:0:36
	addli r7, zero, 64
	lui r19, 262143
	andi r15, r8, 63
	addli r14, zero, 2
	load.d r[17:18], 8(r30)
	load.d r[11:12], 0(r30)
	load_param_i r13, 1
	addli r23, r30, -128
	vxor.u.mz vr0{mr1}, vr0, vr0
	#APP
	vxor.s.mz vr1{mr1}, vr1, vr1
	#NO_APP
	div.s r10, r8, r7
	ori r19, r19, 4032
	and r19, r8, r19
	slli r19, r19, 2
	slli r16, r10, 6
	add.s r19, r19, r9
	sub.s r20, r8, r16
	setlti r8, r8, 64
	slli r16, r20, 4
	seteq r20, r20, zero
	sext_int2long r[21:22], r16
	sll.d r[21:22], r[21:22], r14
	add.ul r[17:18], r[17:18], r[21:22]
	addli r21, zero, 511
	addli r22, r30, -192
	and r20, r8, r20
	lui r8, 15
	addli r8, r8, 4095
	vmmov mr0, r8
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	add.s r5, r5, r13
	blt.s r5, r6, .LBB0_3
	j .LBB0_8
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	div.s r8, r5, r1
	div.s r8, r8, r2
	.loc	1 29 23 is_stmt 1               # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:29:23
	add.s r26, r8, r10
	blt.s r21, r26, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 38 42                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:38:42
	slli r8, r26, 10
	.loc	1 38 47 is_stmt 0               # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:38:47
	lui r9, 983040
	vstore_mask16.mz vr0{mr1}, -192(r30)
	mfence { lm }
	.loc	1 38 37                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:38:37
	add.s r8, r8, r16
	.loc	1 38 47                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:38:47
	or r9, r7, r9
	.loc	1 38 30                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:38:30
	sext_int2long r[27:28], r8
	.loc	1 39 37 is_stmt 1               # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:39:37
	lui r8, 983040
	.loc	1 38 30                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:38:30
	sll.d r[27:28], r[27:28], r14
	.loc	1 39 37                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:39:37
	or r8, r7, r8
	.loc	1 38 30                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:38:30
	add.ul r[27:28], r[11:12], r[27:28]
	.loc	1 38 47 is_stmt 0               # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:38:47
	l_gm2lm r9, r22, 0(r[27:28])
	.loc	1 39 37 is_stmt 1               # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:39:37
	l_gm2lm r8, r23, 0(r[17:18])
	.loc	1 38 47                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:38:47
	mfence { lm }
	vload_mask16.mz vr2{mr1}, -192(r30)
	.loc	1 39 37                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:39:37
	vload_mask16.mz vr3{mr1}, -128(r30)
	.loc	1 40 18                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:40:18
	vmul.f.mz.rn vr3{mr1}, vr2, vr3
	.loc	1 42 33                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:42:33
	vadd.s.mz vr2{mr1}, zero, vr0
	vor.f.mh vr2{mr0}, vr1, vr3
	vextracti.f r8, 0(vr2)
	vextracti.f r9, 1(vr2)
	add.f.rn r8, r8, r9
	vextracti.f r9, 2(vr2)
	add.f.rn r8, r9, r8
	vextracti.f r9, 3(vr2)
	add.f.rn r8, r9, r8
	vextracti.f r9, 4(vr2)
	add.f.rn r8, r9, r8
	vextracti.f r9, 5(vr2)
	add.f.rn r8, r9, r8
	vextracti.f r9, 6(vr2)
	add.f.rn r8, r9, r8
	vextracti.f r9, 7(vr2)
	add.f.rn r8, r9, r8
	vextracti.f r9, 8(vr2)
	add.f.rn r8, r9, r8
	vextracti.f r9, 9(vr2)
	add.f.rn r8, r9, r8
	vextracti.f r9, 10(vr2)
	add.f.rn r8, r9, r8
	vextracti.f r9, 11(vr2)
	add.f.rn r8, r9, r8
	vextracti.f r9, 12(vr2)
	add.f.rn r8, r9, r8
	vextracti.f r9, 13(vr2)
	add.f.rn r8, r9, r8
	vextracti.f r9, 14(vr2)
	add.f.rn r8, r9, r8
	vextracti.f r9, 15(vr2)
	add.f.rn r8, r9, r8
	stores.w r8, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r15, zero, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 33 is_stmt 0                # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:0:33
	loads.w r27, 0(r19)
	loads.w r8, 4(r19)
	loads.w r28, 8(r19)
	loads.w r9, 12(r19)
	add.f.rn r8, r27, r8
	loads.w r27, 16(r19)
	add.f.rn r8, r8, r28
	add.f.rn r8, r8, r9
	loads.w r9, 20(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 24(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 28(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 32(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 36(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 40(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 44(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 48(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 52(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 56(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 60(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 64(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 68(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 72(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 76(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 80(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 84(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 88(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 92(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 96(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 100(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 104(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 108(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 112(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 116(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 120(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 124(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 128(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 132(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 136(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 140(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 144(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 148(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 152(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 156(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 160(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 164(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 168(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 172(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 176(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 180(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 184(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 188(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 192(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 196(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 200(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 204(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 208(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 212(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 216(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 220(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 224(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 228(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 232(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 236(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 240(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 244(r19)
	add.f.rn r8, r8, r27
	loads.w r27, 248(r19)
	add.f.rn r8, r8, r9
	loads.w r9, 252(r19)
	add.f.rn r8, r8, r27
	add.f.rn r8, r8, r9
	stores.w r8, 0(r19)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	.loc	1 44 36 is_stmt 1               # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:44:36
	beq r20, zero, .LBB0_2
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 36 is_stmt 0                # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:0:36
	loads.w r8, 0(r19)
	.loc	1 44 25                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:44:25
	sext_int2long r[26:27], r26
	load.d r[24:25], 16(r30)
	.loc	1 44 36                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:44:36
	lui r9, 983040
	.loc	1 44 25                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:44:25
	sll.d r[26:27], r[26:27], r14
	add.ul r[26:27], r[24:25], r[26:27]
	.loc	1 44 36                         # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:44:36
	storeli.w r8, -64(r30)
	addli r8, zero, 4
	mfence { lm }
	or r8, r8, r9
	addli r9, r30, -64
	s_lm2gm r8, r9, 0(r[26:27])
	mfence { lm }
	j .LBB0_2
.LBB0_8:                                # %._crit_edge
	.loc	1 44 4 epilogue_begin           # cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py:44:4
	addli sp, sp, 192
	mfence { lm, sm, gm }
	exit
.Ltmp1:
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
.asciz	"cz7ngezv4bqcp3ggqejzyas6fauccnheyqwjjrzomlnpvypiblvg.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/z7" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
