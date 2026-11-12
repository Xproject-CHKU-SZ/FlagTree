	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/5j" "c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py"
	.loc	1 22 0                          # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -72
	addli r30, sp, 8
	addli r4, zero, 1
.Ltmp0:
	.loc	1 81 20 prologue_end            # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:81:20
	core_id r2
	loadli.w r15,  32(r30)
	loadli.w r16,  28(r30)
	xsignal_mode_cfg r4
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:0:20
	lui r4, 1048575
	ori r4, r4, 4095
	csr_set csr3, r4
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r5, zero, 2
	uni_sram_cfg r4, r4
	lui r6, 1048575
	lock zero, r5
	ew_cfg r4, zero, zero, 16
	ori r4, r6, 4095
	unlock r5
	addli r5, zero, 5
	csr_set csr3, r4
	addli r4, zero, 11
	sync_group
	xsignal r4, 0
	xsignal r4, 0
	addli r4, zero, 3
	xsignal r5, 0
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r4, 0
	xsignal r4, 0
	addli r4, zero, 7
	xsignal r5, 0
	xsignal r5, 0
	xsignal r4, 0
	xsignal r4, 0
.LBB0_3:
	loadli.w r4,  24(r30)
	loadli.w r5,  28(r30)
	load_param_i r7, 1
	loadli.w r6,  32(r30)
	mul.s r4, r5, r4
	addli r5, r7, 0
	fmac.s r5, r4, r6
	mul.s r6, r4, r6
	addli r5, r5, -1
	div.s r5, r5, r7
	load_param_i r7, 0
	mul.s r4, r5, r7
	fmac.s r5, r5, r7
	min.s r5, r5, r6
	ble.s r5, r4, .LBB0_22
# %bb.4:                                # %.lr.ph.preheader
	sext_int2long r[10:11], r4
	addli r4, zero, 2047
	sext_int2long r[8:9], r5
	addli r12, zero, 2
	addli r13, zero, 256
	addli r14, zero, 4
	addli r19, zero, 8
	addli r24, zero, 5
	addli r17, zero, 3
	addli r18, zero, 128
	addli r20, zero, 1
	addli r1, zero, 7
	addli r28, zero, 0
	lui r3, 1048572
	store.d r[3:4], -8(r30)                 # 8-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 89 25 is_stmt 1               # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:89:25
	xwait r12, 0
	xwait r24, 0
	lock zero, zero
	addli r3, zero, 32
	ds_cfg r17, zero, 0
	ds_cfg r18, zero, 1
	ds_cfg r18, zero, 14
	ds_cfg r3, zero, 13
	shuffle_batch r7, r21, r18, 1
	unlock zero
	xsignal r17, 0
	xsignal r14, 0
.LBB0_6:                                # %.thread3
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:0:25
	addli.d r[10:11], r[10:11], 1
	addli r28, r28, 1
	setlt.sl r3, r[10:11], r[8:9]
	beq r3, zero, .LBB0_22
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mod.s r5, r28, r12
	.loc	1 89 25                         # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:89:25
	slli r7, r5, 13
	.loc	1 81 20 is_stmt 1               # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:81:20
	addli r21, r7, 8192
	beq r2, r12, .LBB0_5
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:0:20
	div.s r4, r10, r15
	div.s r6, r4, r16
	div.s r25, r6, r13
	slli r4, r25, 3
	sub.s r22, r14, r4
	min.s r22, r22, r19
	mod.s r23, r6, r22
	add.s r4, r23, r4
	zext_int2long r[26:27], r4
	.loc	1 81 20                         # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:81:20
	bneq r2, r20, .LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 81 25                         # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:81:25
	setlt.u r6, r17, r4
	.loc	1 0 0                           # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:0:0
	addli r3, zero, 12
	sll.d r[4:5], r[26:27], r3
	.loc	1 81 25                         # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:81:25
	bneq r6, zero, .LBB0_15
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25                          # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:0:25
	zext_int2long r[6:7], zero
	j .LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	slli r21, r5, 12
	.loc	1 86 20 is_stmt 1               # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:86:20
	beq r2, r14, .LBB0_18
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	slli r5, r5, 14
	lui r3, 6
	add.s r5, r5, r3
	beq r2, r1, .LBB0_17
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:0:0
	slli r7, r25, 8
	addli r23, zero, 6
	sub.s r6, r6, r7
	div.s r22, r6, r22
	zext_int2long r[6:7], r22
	sll.d r[6:7], r[6:7], r24
	.loc	1 86 20                         # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:86:20
	bneq r2, r23, .LBB0_19
# %bb.14:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[3:4], 8(r30)
	sll.d r[6:7], r[6:7], r20
	xwait r1, 0
	lock zero, r14
	dma_cfg r20, r20, zero, 0
	add.ul r[6:7], r[3:4], r[6:7]
	addli r3, zero, 64
	dma_cfg zero, r7, zero, 2
	dma_cfg r5, r6, r3, 3
	addli r3, zero, 2048
	dma_cfg r18, r3, r18, 4
	dma_run zero
	unlock r14
	xsignal r23, 0
	.loc	1 89 25 is_stmt 1               # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:89:25
	j .LBB0_6
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 81 25                         # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:81:25
	load.d r[6:7], -8(r30)                  # 8-byte Folded Reload
	and.d r[6:7], r[4:5], r[6:7]
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	sub.sl r[4:5], r[4:5], r[6:7]
	addli r3, zero, 96
	.loc	1 81 20 is_stmt 0               # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:81:20
	xwait r17, 0
	lock zero, r14
	dma_cfg r20, r20, zero, 0
	zext_int2long r[6:7], r3
	.loc	1 81 25                         # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:81:25
	sra.d r[4:5], r[4:5], r1
	.loc	1 81 20                         # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:81:20
	addli r3, zero, 13
	.loc	1 81 25                         # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:81:25
	min.sl r[6:7], r[4:5], r[6:7]
	.loc	1 81 20                         # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:81:20
	sll.d r[22:23], r[26:27], r3
	.loc	1 81 25                         # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:81:25
	sub.sl r[4:5], r[6:7], r[4:5]
	.loc	1 81 20                         # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:81:20
	load.d r[6:7], 0(r30)
	addli r4, r4, 32
	add.ul r[6:7], r[6:7], r[22:23]
	dma_cfg zero, r7, zero, 2
	dma_cfg r21, r6, r13, 3
	dma_cfg r13, r13, r4, 4
	dma_run zero
	unlock r14
	xsignal r12, 0
	.loc	1 89 25 is_stmt 1               # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:89:25
	j .LBB0_6
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:0:25
	addli r3, zero, 6
	.loc	1 89 25                         # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:89:25
	xwait r3, 0
	addli r3, zero, 9
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 64
	ds_cfg r17, zero, 0
	ds_cfg r3, zero, 1
	addli r3, zero, 32
	ds_cfg r18, zero, 14
	ds_cfg r3, zero, 13
	shuffle_coa r7, r5, r18, 2
	unlock zero
	xsignal r1, 0
	xsignal r19, 0
	j .LBB0_6
.LBB0_18:                               # %.thread16
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r14, 0
	xwait r19, 0
	xwait r3, 0
	addli r3, zero, 32
	lock zero, r20
	mm_cfg r3, r18, r3, 0
	addli r3, zero, 9
	mm_cfg r14, r20, r20, 2
	mm r21, r7, r7, 5
	unlock r20
	xsignal r24, 0
	xsignal r3, 0
	addli r3, zero, 10
	j .LBB0_21
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67 is_stmt 1              # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:101:67
	bneq r2, zero, .LBB0_6
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:0:0
	slli r5, r22, 5
	addli r3, zero, 992
	zext_int2long r[22:23], r3
	.loc	1 101 67                        # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:101:67
	zext_int2long r[24:25], r5
	.loc	1 0 0                           # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:0:0
	slli r5, r4, 5
	addli r3, zero, 96
	.loc	1 101 67                        # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:101:67
	sext_int2long r[15:16], r5
	zext_int2long r[3:4], r3
	min.ul r[22:23], r[24:25], r[22:23]
	addli r5, zero, 32
	min.sl r[3:4], r[15:16], r[3:4]
	addli.d r[22:23], r[22:23], 32
	addli.d r[3:4], r[3:4], 32
	max.ul r[22:23], r[22:23], r[24:25]
	max.sl r[3:4], r[3:4], r[15:16]
	sub.sl r[22:23], r[22:23], r[24:25]
	zext_int2long r[24:25], r5
	addli r5, zero, 16
	sub.sl r[3:4], r[3:4], r[15:16]
	load.d r[15:16], 16(r30)
	sll.d r[26:27], r[26:27], r5
	sll.d r[5:6], r[6:7], r20
	addli r7, zero, 10
	min.ul r[22:23], r[22:23], r[24:25]
	min.sl r[3:4], r[3:4], r[24:25]
	addli r24, zero, 5
	xwait r7, 0
	slli r7, r22, 2
	add.ul r[15:16], r[15:16], r[26:27]
	lock zero, r24
	add.ul r[5:6], r[15:16], r[5:6]
	dma_cfg r20, zero, zero, 0
	loadli.w r16,  28(r30)
	loadli.w r15,  32(r30)
	dma_cfg zero, r20, zero, 1
	dma_cfg r6, zero, zero, 2
	dma_cfg r5, r21, r7, 3
	addli r5, zero, 2048
	dma_cfg r5, r18, r3, 4
	addli r3, zero, 11
	dma_run zero
	unlock r24
.LBB0_21:                               # %.thread3
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:0:0
	xsignal r3, 0
	j .LBB0_6
.LBB0_22:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_24
# %bb.23:
	.loc	1 0 0 is_stmt 0                 # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:22:0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	xwait zero, 0
	lock zero, r1
	ew_cfg zero, zero, zero, 16
	unlock r1
	xsignal_mode_cfg zero
.LBB0_24:
	.loc	1 22 0 epilogue_begin           # c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py:22:0
	addli sp, sp, 8
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_mm, .Lfunc_end0-triton_mm
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_triton_mm,@object # @XPU_KERNEL_PARAM_SIZE_triton_mm
	.section	.XPU.KERNEL_PARAM_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_mm:
	.long	36                              # 0x24
	.size	XPU_KERNEL_PARAM_SIZE_triton_mm, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_mm,@object # @XPU_KERNEL_STACK_SIZE_triton_mm
	.section	.XPU.KERNEL_STACK_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_mm:
	.long	72                              # 0x48
	.size	XPU_KERNEL_STACK_SIZE_triton_mm, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_mm,@object # @XPU_KERNEL_DYNAMIC_LM_triton_mm
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_mm:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_mm, 4

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
.asciz	"c5jfn5w2myiypywq274hkpzby5pophtbeuhd35w2f4wotygcgytf.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/5j" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
