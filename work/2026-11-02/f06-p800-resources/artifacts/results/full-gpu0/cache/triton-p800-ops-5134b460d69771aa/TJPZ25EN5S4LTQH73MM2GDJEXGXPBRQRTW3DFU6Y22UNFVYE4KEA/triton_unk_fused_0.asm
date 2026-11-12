	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/y6" "cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py"
	.loc	1 22 0                          # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -272
	addli r30, sp, 208
	lui r19, :hi20:global_smem
.Ltmp0:
	.loc	1 44 36 prologue_end            # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:44:36
	core_id r18
	lui r4, 15
	loadli.w r1,  36(r30)
	loadli.w r5,  32(r30)
	slli r3, r18, 2
	addli r19, r19, :lo12:global_smem
	loadli.w r8,  40(r30)
	ori r4, r4, 4095
	add.s r2, r3, r19
	mul.s r6, r1, r5
	load_param_i r5, 0
	storeli.w r2, -196(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r2)
	mul.s r6, r6, r8
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	ble.s r6, r5, .LBB0_8
# %bb.1:                                # %.lr.ph
	.loc	1 0 36 is_stmt 0                # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:0:36
	addli r9, zero, 8
	addli r2, zero, 2
	lui r20, 262143
	load.d r[16:17], 8(r30)
	andi r3, r18, 7
	load_param_i r12, 1
	addli r13, zero, 15
	vxor.u.mz vr0{mr1}, vr0, vr0
	#APP
	vxor.s.mz vr1{mr1}, vr1, vr1
	#NO_APP
	div.s r9, r18, r9
	ori r20, r20, 4088
	storeli.w r3, -200(r30)                 # 4-byte Folded Spill
	and r20, r18, r20
	slli r20, r20, 2
	slli r15, r9, 3
	sub.s r21, r18, r15
	slli r15, r21, 4
	seteq r21, r21, zero
	sext_int2long r[22:23], r15
	sll.d r[22:23], r[22:23], r2
	add.ul r[2:3], r[16:17], r[22:23]
	addli r17, r1, 0
	lui r1, 8
	setlti r22, r18, 64
	add.s r18, r20, r19
	vmmov mr0, r1
	lui r1, 15
	and r19, r22, r21
	addli r22, zero, 64
	store.d r[2:3], -208(r30)               # 8-byte Folded Spill
	addli r1, r1, 4095
	vmmov mr2, r1
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	add.s r5, r5, r12
	blt.s r5, r6, .LBB0_3
	j .LBB0_8
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	div.s r26, r5, r8
	div.s r26, r26, r17
	.loc	1 28 33 is_stmt 1               # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:28:33
	slli r26, r26, 3
	.loc	1 29 23                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:29:23
	add.s r26, r26, r9
	blt.s r13, r26, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 38 41                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:38:41
	slli r27, r26, 7
	addli r16, r8, 0
	.loc	1 38 30 is_stmt 0               # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:38:30
	addli r1, zero, 2
	.loc	1 38 46                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:38:46
	vstore_mask16.mz vr0{mr1}, -192(r30)
	lui r28, 983040
	.loc	1 39 37 is_stmt 1               # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:39:37
	addli r3, r30, -128
	.loc	1 40 18                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:40:18
	vadd.s.mz vr3{mr1}, zero, vr0
	addli zero, zero, 1
	.loc	1 38 46                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:38:46
	mfence { lm }
	.loc	1 38 37 is_stmt 0               # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:38:37
	add.s r27, r27, r15
	.loc	1 38 46                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:38:46
	or r28, r22, r28
	.loc	1 40 18 is_stmt 1               # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:40:18
	vmmov mr3, zero
	xor zero, zero, zero
	.loc	1 38 30                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:38:30
	sext_int2long r[7:8], r27
	.loc	1 39 37                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:39:37
	lui r27, 983040
	.loc	1 38 30                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:38:30
	sll.d r[7:8], r[7:8], r1
	load.d r[1:2], 0(r30)
	.loc	1 39 37                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:39:37
	or r27, r22, r27
	.loc	1 38 30                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:38:30
	add.ul r[7:8], r[1:2], r[7:8]
	.loc	1 38 46 is_stmt 0               # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:38:46
	addli r1, r30, -192
	l_gm2lm r28, r1, 0(r[7:8])
	.loc	1 39 37 is_stmt 1               # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:39:37
	load.d r[1:2], -208(r30)                # 8-byte Folded Reload
	l_gm2lm r27, r3, 0(r[1:2])
	.loc	1 38 46                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:38:46
	mfence { lm }
	.loc	1 39 37                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:39:37
	loadli.w r7,  -128(r30)
	.loc	1 38 46                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:38:46
	vload_mask16.mz vr2{mr1}, -192(r30)
	.loc	1 39 37                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:39:37
	loadli.w r8,  -124(r30)
	loadli.w r27,  -120(r30)
	loadli.w r28,  -116(r30)
	loadli.w r24,  -112(r30)
	loadli.w r25,  -108(r30)
	loadli.w r10,  -104(r30)
	loadli.w r11,  -100(r30)
	loadli.w r21,  -96(r30)
	loadli.w r23,  -92(r30)
	loadli.w r13,  -88(r30)
	loadli.w r1,  -84(r30)
	loadli.w r2,  -80(r30)
	loadli.w r14,  -76(r30)
	loadli.w r3,  -72(r30)
	loadli.w r20,  -68(r30)
	.loc	1 40 18                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:40:18
	vor.u.mh vr3{mr3}, r7, vr3
	addli r7, zero, 2
	vmmov mr3, r7
	addli r7, zero, 4
	vor.u.mh vr3{mr3}, r8, vr3
	vmmov mr3, r7
	addli r7, zero, 8
	vor.u.mh vr3{mr3}, r27, vr3
	vmmov mr3, r7
	addli r7, zero, 16
	vor.u.mh vr3{mr3}, r28, vr3
	vmmov mr3, r7
	addli r7, zero, 32
	vor.u.mh vr3{mr3}, r24, vr3
	vmmov mr3, r7
	addli r7, zero, 64
	vor.u.mh vr3{mr3}, r25, vr3
	vmmov mr3, r7
	addli r7, zero, 128
	vor.u.mh vr3{mr3}, r10, vr3
	vmmov mr3, r7
	addli r7, zero, 256
	vor.u.mh vr3{mr3}, r11, vr3
	vmmov mr3, r7
	addli r7, zero, 512
	vor.u.mh vr3{mr3}, r21, vr3
	vmmov mr3, r7
	addli r7, zero, 1024
	vor.u.mh vr3{mr3}, r23, vr3
	vmmov mr3, r7
	addli r7, zero, 2048
	vor.u.mh vr3{mr3}, r13, vr3
	vmmov mr3, r7
	vor.u.mh vr3{mr3}, r1, vr3
	addli r1, zero, 4096
	vmmov mr3, r1
	addli r1, zero, 8192
	vor.u.mh vr3{mr3}, r2, vr3
	vmmov mr3, r1
	lui r1, 4
	vor.u.mh vr3{mr3}, r14, vr3
	vmmov mr3, r1
	vor.u.mh vr3{mr3}, r3, vr3
	vor.u.mh vr3{mr0}, r20, vr3
	vmul.f.mz.rn vr3{mr1}, vr2, vr3
	.loc	1 42 33                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:42:33
	vadd.s.mz vr2{mr1}, zero, vr0
	vor.f.mh vr2{mr2}, vr1, vr3
	vextracti.f r1, 0(vr2)
	vextracti.f r2, 1(vr2)
	add.f.rn r1, r1, r2
	vextracti.f r2, 2(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 3(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 4(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 5(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 6(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 7(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 8(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 9(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 10(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 11(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 12(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 13(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 14(vr2)
	add.f.rn r1, r2, r1
	vextracti.f r2, 15(vr2)
	add.f.rn r1, r2, r1
	loadli.w r2,  -196(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loadli.w r1,  -200(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 33 is_stmt 0                # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:0:33
	loads.w r1, 0(r18)
	loads.w r2, 4(r18)
	loads.w r3, 8(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 12(r18)
	add.f.rn r1, r1, r3
	loads.w r3, 16(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 20(r18)
	add.f.rn r1, r1, r3
	loads.w r3, 24(r18)
	add.f.rn r1, r1, r2
	loads.w r2, 28(r18)
	add.f.rn r1, r1, r3
	add.f.rn r1, r1, r2
	stores.w r1, 0(r18)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	addli r8, r16, 0
	addli r13, zero, 15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	.loc	1 44 36 is_stmt 1               # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:44:36
	beq r19, zero, .LBB0_2
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 36 is_stmt 0                # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:0:36
	loads.w r1, 0(r18)
	.loc	1 44 25                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:44:25
	sext_int2long r[2:3], r26
	addli r7, zero, 2
	load.d r[10:11], 16(r30)
	sll.d r[2:3], r[2:3], r7
	.loc	1 44 36                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:44:36
	lui r7, 983040
	.loc	1 44 25                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:44:25
	add.ul r[2:3], r[10:11], r[2:3]
	.loc	1 44 36                         # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:44:36
	storeli.w r1, -64(r30)
	addli r1, zero, 4
	mfence { lm }
	or r1, r1, r7
	addli r7, r30, -64
	s_lm2gm r1, r7, 0(r[2:3])
	mfence { lm }
	j .LBB0_2
.LBB0_8:                                # %._crit_edge
	.loc	1 44 4 epilogue_begin           # cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py:44:4
	addli sp, sp, 208
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
	.long	272                             # 0x110
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
.asciz	"cy6fcyxs6jugilo5p7uobdkwq3c63zzhbw4qknijccliojgyrdwo.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/inductor/y6" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
