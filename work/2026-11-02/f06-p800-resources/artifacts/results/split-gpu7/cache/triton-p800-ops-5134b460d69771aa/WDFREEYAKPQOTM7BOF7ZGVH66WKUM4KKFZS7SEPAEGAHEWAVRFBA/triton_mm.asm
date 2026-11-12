	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu7/cache/inductor/4c" "c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py"
	.loc	1 22 0                          # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -96
	addli r30, sp, 32
	addli r4, zero, 1
.Ltmp0:
	.loc	1 81 20 prologue_end            # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:81:20
	core_id r2
	loadli.w r17,  32(r30)
	loadli.w r18,  28(r30)
	xsignal_mode_cfg r4
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 20 is_stmt 0                # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:0:20
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
	xsignal r4, 0
	addli r4, zero, 3
	xsignal r5, 0
	xsignal r5, 0
	xsignal r5, 0
	addli r5, zero, 9
	xsignal r4, 0
	xsignal r4, 0
	xsignal r4, 0
	addli r4, zero, 7
	xsignal r5, 0
	xsignal r5, 0
	xsignal r5, 0
	xsignal r4, 0
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
	ble.s r5, r4, .LBB0_19
# %bb.4:                                # %.lr.ph.preheader
	sext_int2long r[12:13], r4
	lui r4, 4
	sext_int2long r[10:11], r5
	addli r14, zero, 3
	addli r15, zero, 16
	addli r16, zero, 1
	addli r20, zero, 8
	addli r24, zero, 6
	addli r19, zero, 2
	addli r25, zero, 5
	addli r21, zero, 64
	addli r22, zero, 4
	addli r1, zero, 128
	addli r5, zero, 0
	ori r3, r4, 2048
	storeli.w r3, -4(r30)                   # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 89 25 is_stmt 1               # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:89:25
	xwait r19, 0
	xwait r25, 0
	lock zero, zero
	ds_cfg r14, zero, 0
	ds_cfg r21, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r15, zero, 13
	shuffle_batch r4, r6, r21, 1
	unlock zero
	xsignal r14, 0
	xsignal r22, 0
.LBB0_6:                                # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:0:25
	addli.d r[12:13], r[12:13], 1
	addli r5, r5, 1
	setlt.sl r3, r[12:13], r[10:11]
	beq r3, zero, .LBB0_19
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mod.s r7, r5, r14
	.loc	1 89 25                         # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:89:25
	slli r4, r7, 11
	.loc	1 81 20 is_stmt 1               # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:81:20
	addli r6, r4, 12288
	beq r2, r19, .LBB0_5
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:0:20
	div.s r8, r12, r17
	div.s r8, r8, r18
	div.s r28, r8, r15
	slli r9, r28, 3
	sub.s r23, r16, r9
	min.s r23, r23, r20
	mod.s r26, r8, r23
	add.s r9, r26, r9
	zext_int2long r[26:27], r9
	.loc	1 81 20                         # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:81:20
	bneq r2, r16, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r14, 0
	lock zero, r22
	dma_cfg r16, r16, zero, 0
	sll.d r[7:8], r[26:27], r3
	load.d r[3:4], 0(r30)
	add.ul r[7:8], r[3:4], r[7:8]
	dma_cfg zero, r8, zero, 2
	dma_cfg r6, r7, r1, 3
	dma_cfg r1, r1, r15, 4
	dma_run zero
	unlock r22
	xsignal r19, 0
	.loc	1 89 25 is_stmt 1               # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:89:25
	j .LBB0_6
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:0:25
	slli r6, r7, 12
	.loc	1 89 25                         # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:89:25
	slli r7, r7, 13
	.loc	1 86 20 is_stmt 1               # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:86:20
	beq r2, r22, .LBB0_15
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r3,  -4(r30)                   # 4-byte Folded Reload
	add.s r4, r7, r3
	addli r3, zero, 7
	beq r2, r3, .LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:0:0
	slli r7, r28, 4
	sub.s r7, r8, r7
	div.s r23, r7, r23
	zext_int2long r[7:8], r23
	sll.d r[7:8], r[7:8], r24
	.loc	1 86 20                         # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:86:20
	bneq r2, r24, .LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	sll.d r[6:7], r[7:8], r16
	load.d r[8:9], 8(r30)
	addli r3, zero, 7
	xwait r3, 0
	lock zero, r22
	addli r3, zero, 256
	add.ul r[6:7], r[8:9], r[6:7]
	dma_cfg r16, r16, zero, 0
	dma_cfg zero, r7, zero, 2
	dma_cfg r4, r6, r1, 3
	dma_cfg r1, r3, r21, 4
	dma_run zero
	unlock r22
	xsignal r24, 0
	.loc	1 89 25 is_stmt 1               # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:89:25
	j .LBB0_6
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 9
	xwait r24, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 7
	ds_cfg r14, zero, 0
	ds_cfg r21, zero, 1
	ds_cfg r21, zero, 14
	ds_cfg r21, zero, 13
	shuffle_coa r7, r4, r21, 2
	unlock zero
	xsignal r3, 0
	xsignal r20, 0
	j .LBB0_6
.LBB0_15:                               # %.thread22
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 11
	xwait r22, 0
	xwait r20, 0
	xwait r3, 0
	lock zero, r16
	addli r3, zero, 9
	mm_cfg r21, r21, r15, 0
	mm_cfg r19, r19, r16, 2
	mm r6, r4, r7, 5
	unlock r16
	xsignal r25, 0
	xsignal r3, 0
	addli r3, zero, 10
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 101 67                        # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:101:67
	bneq r2, zero, .LBB0_6
# %bb.17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:0:0
	slli r4, r23, 6
	zext_int2long r[23:24], r21
	slli r9, r9, 4
	addli r28, r18, 0
	.loc	1 101 67                        # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:101:67
	sll.d r[7:8], r[7:8], r16
	zext_int2long r[3:4], r4
	store.d r[23:24], -16(r30)              # 8-byte Folded Spill
	min.ul r[23:24], r[3:4], r[23:24]
	store.d r[23:24], -24(r30)              # 8-byte Folded Spill
	sext_int2long r[23:24], r9
	addli r9, r17, 0
	zext_int2long r[17:18], zero
	store.d r[17:18], -32(r30)              # 8-byte Folded Spill
	load.d r[17:18], -24(r30)               # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 64
	store.d r[17:18], -24(r30)              # 8-byte Folded Spill
	load.d r[17:18], -32(r30)               # 8-byte Folded Reload
	min.sl r[17:18], r[23:24], r[17:18]
	store.d r[17:18], -32(r30)              # 8-byte Folded Spill
	load.d r[17:18], -24(r30)               # 8-byte Folded Reload
	max.ul r[17:18], r[17:18], r[3:4]
	store.d r[17:18], -24(r30)              # 8-byte Folded Spill
	load.d r[17:18], -32(r30)               # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 16
	store.d r[17:18], -32(r30)              # 8-byte Folded Spill
	load.d r[17:18], -24(r30)               # 8-byte Folded Reload
	sub.sl r[3:4], r[17:18], r[3:4]
	store.d r[3:4], -24(r30)                # 8-byte Folded Spill
	load.d r[3:4], -32(r30)                 # 8-byte Folded Reload
	load.d r[17:18], -24(r30)               # 8-byte Folded Reload
	max.sl r[3:4], r[3:4], r[23:24]
	store.d r[3:4], -32(r30)                # 8-byte Folded Spill
	load.d r[3:4], -16(r30)                 # 8-byte Folded Reload
	min.ul r[3:4], r[17:18], r[3:4]
	store.d r[3:4], -16(r30)                # 8-byte Folded Spill
	load.d r[3:4], -32(r30)                 # 8-byte Folded Reload
	sub.sl r[17:18], r[3:4], r[23:24]
	addli r3, zero, 12
	sll.d r[23:24], r[26:27], r3
	load.d r[3:4], 16(r30)
	zext_int2long r[26:27], r15
	min.sl r[17:18], r[17:18], r[26:27]
	add.ul r[23:24], r[3:4], r[23:24]
	addli r3, zero, 10
	addli r4, zero, 5
	xwait r3, 0
	lock zero, r4
	add.ul r[7:8], r[23:24], r[7:8]
	addli r24, zero, 6
	dma_cfg r16, zero, zero, 0
	dma_cfg zero, r16, zero, 1
	load.d r[25:26], -16(r30)               # 8-byte Folded Reload
	dma_cfg r8, zero, zero, 2
	slli r3, r25, 2
	addli r25, zero, 5
	dma_cfg r7, r6, r3, 3
	addli r3, zero, 256
	dma_cfg r3, r3, r17, 4
	addli r18, r28, 0
	addli r17, r9, 0
	addli r3, zero, 11
	dma_run zero
	unlock r4
.LBB0_18:                               # %.thread4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:0:0
	xsignal r3, 0
	j .LBB0_6
.LBB0_19:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_21
# %bb.20:
	.loc	1 0 0 is_stmt 0                 # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:22:0
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
.LBB0_21:
	.loc	1 22 0 epilogue_begin           # c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py:22:0
	addli sp, sp, 32
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
	.long	96                              # 0x60
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
.asciz	"c4cdauwwsqtmlz4spjc4q7a745jkl73zfs44re4zyj7l4wdnarvh.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu7/cache/inductor/4c" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
