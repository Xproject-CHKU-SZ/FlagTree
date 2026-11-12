	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/ry" "cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py"
	.loc	1 22 0                          # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -384
	addli r30, sp, 320
	lui r8, :hi20:global_smem
.Ltmp0:
	.loc	1 47 36 prologue_end            # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:47:36
	core_id r7
	lui r4, 15
	loadli.w r2,  36(r30)
	loadli.w r5,  32(r30)
	slli r3, r7, 2
	addli r8, r8, :lo12:global_smem
	loadli.w r1,  40(r30)
	ori r4, r4, 4095
	add.s r3, r3, r8
	mul.s r6, r2, r5
	load_param_i r5, 0
	stores.w zero, 0(r3)
	mul.s r6, r6, r1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	ble.s r6, r5, .LBB0_8
# %bb.1:                                # %.lr.ph
	.loc	1 0 36 is_stmt 0                # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:0:36
	addli r9, zero, 64
	lui r18, 262143
	andi r14, r7, 63
	addli r13, zero, 2
	load.d r[16:17], 8(r30)
	load.d r[10:11], 0(r30)
	load_param_i r12, 1
	addli r22, zero, 128
	addli r23, r30, -192
	vxor.u.mz vr0{mr1}, vr0, vr0
	#APP
	vxor.s.mz vr1{mr1}, vr1, vr1
	#NO_APP
	div.s r9, r7, r9
	ori r18, r18, 4032
	and r18, r7, r18
	slli r18, r18, 2
	slli r15, r9, 6
	add.s r18, r18, r8
	sub.s r19, r7, r15
	setlti r7, r7, 64
	slli r15, r19, 5
	seteq r19, r19, zero
	sext_int2long r[20:21], r15
	sll.d r[20:21], r[20:21], r13
	add.ul r[16:17], r[16:17], r[20:21]
	addli r20, zero, 2047
	addli r21, r30, -320
	and r19, r7, r19
	lui r7, 15
	addli r7, r7, 4095
	vmmov mr0, r7
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	add.s r5, r5, r12
	blt.s r5, r6, .LBB0_3
	j .LBB0_8
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	div.s r7, r5, r1
	div.s r7, r7, r2
	.loc	1 28 23 is_stmt 1               # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:28:23
	add.s r26, r7, r9
	blt.s r20, r26, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 40 46                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:40:46
	slli r7, r26, 11
	.loc	1 40 51 is_stmt 0               # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:40:51
	lui r27, 983040
	vstore_mask16.mz vr0{mr1}, -320(r30)
	vstore_mask16.mz vr0{mr1}, -256(r30)
	.loc	1 42 22 is_stmt 1               # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:42:22
	vadd.s.mz vr6{mr1}, zero, vr0
	.loc	1 40 51                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:40:51
	mfence { lm }
	.loc	1 41 41                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:41:41
	vstore_mask16.mz vr0{mr1}, -192(r30)
	.loc	1 40 41                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:40:41
	add.s r7, r7, r15
	.loc	1 40 51 is_stmt 0               # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:40:51
	or r27, r22, r27
	.loc	1 40 34                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:40:34
	sext_int2long r[7:8], r7
	sll.d r[7:8], r[7:8], r13
	add.ul r[7:8], r[10:11], r[7:8]
	.loc	1 40 51                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:40:51
	l_gm2lm r27, r21, 0(r[7:8])
	.loc	1 41 41 is_stmt 1               # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:41:41
	lui r7, 983040
	vstore_mask16.mz vr0{mr1}, -128(r30)
	mfence { lm }
	or r7, r22, r7
	l_gm2lm r7, r23, 0(r[16:17])
	.loc	1 40 51                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:40:51
	mfence { lm }
	.loc	1 42 22                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:42:22
	vload_mask16.mz vr2{mr1}, -320(r30)
	vload_mask16.mz vr3{mr1}, -192(r30)
	#APP
	vmac.f.mz.rn vr6{mr1}, vr2, vr3
	#NO_APP
	vload_mask16.mz vr4{mr1}, -256(r30)
	vload_mask16.mz vr5{mr1}, -128(r30)
	vadd.s.mz vr2{mr1}, zero, vr0
	.loc	1 45 48                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:45:48
	vadd.s.mz vr3{mr1}, zero, vr0
	.loc	1 42 22                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:42:22
	#APP
	vmac.f.mz.rn vr2{mr1}, vr4, vr5
	#NO_APP
	.loc	1 45 48                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:45:48
	vadd.s.mz vr4{mr1}, zero, vr0
	vor.f.mh vr3{mr0}, vr1, vr6
	vor.f.mh vr4{mr0}, vr1, vr2
	vadd.f.mz.rn vr2{mr1}, vr3, vr4
	vextracti.f r7, 0(vr2)
	vextracti.f r8, 1(vr2)
	add.f.rn r7, r7, r8
	vextracti.f r8, 2(vr2)
	add.f.rn r7, r8, r7
	vextracti.f r8, 3(vr2)
	add.f.rn r7, r8, r7
	vextracti.f r8, 4(vr2)
	add.f.rn r7, r8, r7
	vextracti.f r8, 5(vr2)
	add.f.rn r7, r8, r7
	vextracti.f r8, 6(vr2)
	add.f.rn r7, r8, r7
	vextracti.f r8, 7(vr2)
	add.f.rn r7, r8, r7
	vextracti.f r8, 8(vr2)
	add.f.rn r7, r8, r7
	vextracti.f r8, 9(vr2)
	add.f.rn r7, r8, r7
	vextracti.f r8, 10(vr2)
	add.f.rn r7, r8, r7
	vextracti.f r8, 11(vr2)
	add.f.rn r7, r8, r7
	vextracti.f r8, 12(vr2)
	add.f.rn r7, r8, r7
	vextracti.f r8, 13(vr2)
	add.f.rn r7, r8, r7
	vextracti.f r8, 14(vr2)
	add.f.rn r7, r8, r7
	vextracti.f r8, 15(vr2)
	add.f.rn r7, r8, r7
	stores.w r7, 0(r3)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r14, zero, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 48 is_stmt 0                # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:0:48
	loads.w r27, 0(r18)
	loads.w r7, 4(r18)
	loads.w r28, 8(r18)
	loads.w r8, 12(r18)
	add.f.rn r7, r27, r7
	loads.w r27, 16(r18)
	add.f.rn r7, r7, r28
	add.f.rn r7, r7, r8
	loads.w r8, 20(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 24(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 28(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 32(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 36(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 40(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 44(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 48(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 52(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 56(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 60(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 64(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 68(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 72(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 76(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 80(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 84(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 88(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 92(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 96(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 100(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 104(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 108(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 112(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 116(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 120(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 124(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 128(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 132(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 136(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 140(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 144(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 148(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 152(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 156(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 160(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 164(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 168(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 172(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 176(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 180(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 184(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 188(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 192(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 196(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 200(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 204(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 208(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 212(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 216(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 220(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 224(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 228(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 232(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 236(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 240(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 244(r18)
	add.f.rn r7, r7, r27
	loads.w r27, 248(r18)
	add.f.rn r7, r7, r8
	loads.w r8, 252(r18)
	add.f.rn r7, r7, r27
	add.f.rn r7, r7, r8
	stores.w r7, 0(r18)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	.loc	1 47 36 is_stmt 1               # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:47:36
	beq r19, zero, .LBB0_2
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 36 is_stmt 0                # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:0:36
	loads.w r7, 0(r18)
	.loc	1 47 25                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:47:25
	sext_int2long r[26:27], r26
	load.d r[24:25], 16(r30)
	.loc	1 47 36                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:47:36
	lui r8, 983040
	.loc	1 47 25                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:47:25
	sll.d r[26:27], r[26:27], r13
	add.ul r[26:27], r[24:25], r[26:27]
	.loc	1 47 36                         # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:47:36
	storeli.w r7, -64(r30)
	addli r7, zero, 4
	mfence { lm }
	or r7, r7, r8
	addli r8, r30, -64
	s_lm2gm r7, r8, 0(r[26:27])
	mfence { lm }
	j .LBB0_2
.LBB0_8:                                # %._crit_edge
	.loc	1 47 4 epilogue_begin           # cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py:47:4
	addli sp, sp, 320
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
	.long	384                             # 0x180
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
.asciz	"cry2ulamftax2hrvdx7dt4xyotlpys6nhoglwihenxqafersmjxz.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/ry" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
