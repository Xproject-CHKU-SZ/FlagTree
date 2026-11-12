	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu7/cache/triton-p800-ops-5134b460d69771aa/cluster-tanh-q12g8ze3" "tanh-guard.mlir"
	.loc	1 2 0                           # tanh-guard.mlir:2:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -200
	addli r30, sp, 136
	loadli.w r2,  32(r30)
	loadli.w r3,  28(r30)
	loadli.w r11,  36(r30)
	mul.s r4, r2, r3
	load_param_i r3, 0
	mul.s r1, r4, r11
	ble.s r1, r3, .LBB0_19
# %bb.1:                                # %.lr.ph.preheader
	core_id r5
	lui r6, 524287
	load_param_i r4, 1
	addli r9, zero, 2047
	addli r16, r30, -128
	addli r18, r30, -64
	lui r19, 258048
	lui r23, 524288
	lui r24, 268288
	lui r25, 260096
	lui r26, 1024
	storeli.w r1, -132(r30)                 # 4-byte Folded Spill
	slli r8, r5, 2
	lui r5, 250738
	ori r22, r6, 4095
	ori r20, r5, 1811
	lui r5, 259268
	storeli.w r8, -136(r30)                 # 4-byte Folded Spill
	ori r21, r5, 554
	j .LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
.Ltmp0:
	.loc	1 62 11 prologue_end            # tanh-guard.mlir:62:11
	addli r1, zero, 1
	load.d r[8:9], 16(r30)
	sll.d r[5:6], r[5:6], r1
	.loc	1 63 5                          # tanh-guard.mlir:63:5
	lui r1, 983040
	.loc	1 62 11                         # tanh-guard.mlir:62:11
	add.ul r[5:6], r[8:9], r[5:6]
	.loc	1 63 5                          # tanh-guard.mlir:63:5
	or r1, r7, r1
	addli r9, zero, 2047
	s_lm2gm r1, r18, 0(r[5:6])
	mfence { lm }
	loadli.w r1,  -132(r30)                 # 4-byte Folded Reload
	loadli.w r8,  -136(r30)                 # 4-byte Folded Reload
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 0 5 is_stmt 0                 # tanh-guard.mlir:0:5
	add.s r3, r3, r4
	blt.s r3, r1, .LBB0_4
	j .LBB0_19
.LBB0_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	div.s r5, r3, r11
	div.s r5, r5, r2
	.loc	1 11 10 is_stmt 1               # tanh-guard.mlir:11:10
	slli r5, r5, 8
	.loc	1 14 10                         # tanh-guard.mlir:14:10
	add.s r7, r5, r8
	blt.s r9, r7, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	.loc	1 15 10                         # tanh-guard.mlir:15:10
	addli r1, zero, 2048
	.loc	1 18 10                         # tanh-guard.mlir:18:10
	sext_int2long r[5:6], r7
	addli r28, zero, 1
	load.d r[12:13], 0(r30)
	.loc	1 22 11                         # tanh-guard.mlir:22:11
	lui r17, 983040
	.loc	1 15 10                         # tanh-guard.mlir:15:10
	sub.s r8, r1, r7
	.loc	1 16 10                         # tanh-guard.mlir:16:10
	addli r1, zero, 128
	.loc	1 18 10                         # tanh-guard.mlir:18:10
	sll.d r[14:15], r[5:6], r28
	.loc	1 16 10                         # tanh-guard.mlir:16:10
	mod.s r9, r7, r1
	.loc	1 19 10                         # tanh-guard.mlir:19:10
	max.s r8, r8, zero
	addli r1, zero, 4
	.loc	1 18 10                         # tanh-guard.mlir:18:10
	add.ul r[14:15], r[12:13], r[14:15]
	.loc	1 21 11                         # tanh-guard.mlir:21:11
	load.d r[12:13], 8(r30)
	.loc	1 19 10                         # tanh-guard.mlir:19:10
	min.s r7, r8, r1
	lui r8, 983040
	slli r7, r7, 1
	.loc	1 21 11                         # tanh-guard.mlir:21:11
	sext_int2long r[9:10], r9
	.loc	1 19 10                         # tanh-guard.mlir:19:10
	or r8, r7, r8
	.loc	1 22 11                         # tanh-guard.mlir:22:11
	or r17, r7, r17
	.loc	1 21 11                         # tanh-guard.mlir:21:11
	sll.d r[9:10], r[9:10], r28
	.loc	1 19 10                         # tanh-guard.mlir:19:10
	l_gm2lm r8, r16, 0(r[14:15])
	addli r8, zero, 0
	.loc	1 21 11                         # tanh-guard.mlir:21:11
	add.ul r[9:10], r[12:13], r[9:10]
	.loc	1 22 11                         # tanh-guard.mlir:22:11
	l_gm2lm r17, r18, 0(r[9:10])
	.loc	1 19 10                         # tanh-guard.mlir:19:10
	mfence { lm }
	j .LBB0_8
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 10 is_stmt 0                # tanh-guard.mlir:0:10
	or r15, r15, r26
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=2
	mul.f.rn r1, r9, r19
	mul.f.rn r9, r10, r19
	.loc	1 58 11 is_stmt 1               # tanh-guard.mlir:58:11
	add.f.rn r10, r14, r25
	add.f.rn r13, r15, r25
	.loc	1 59 11                         # tanh-guard.mlir:59:11
	mul.f.rn r1, r1, r10
	mul.f.rn r9, r9, r13
	.loc	1 63 5                          # tanh-guard.mlir:63:5
	andi r10, r28, 1
	addli r28, zero, 0
	.loc	1 60 11                         # tanh-guard.mlir:60:11
	float2hfloat.rn r1, r1
	float2hfloat.rn r9, r9
	.loc	1 63 5                          # tanh-guard.mlir:63:5
	store.h r1, 0(r8)
	store.h r9, 2(r8)
	addli r8, zero, 2
	mfence { lm }
	beq r10, zero, .LBB0_2
.LBB0_8:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 19 10                         # tanh-guard.mlir:19:10
	slli r8, r8, 1
	add.s r10, r16, r8
	.loc	1 22 11                         # tanh-guard.mlir:22:11
	add.s r8, r18, r8
	.loc	1 19 10                         # tanh-guard.mlir:19:10
	load.hu r9, 0(r10)
	.loc	1 22 11                         # tanh-guard.mlir:22:11
	load.hu r14, 0(r8)
	.loc	1 19 10                         # tanh-guard.mlir:19:10
	load.hu r10, 2(r10)
	.loc	1 26 11                         # tanh-guard.mlir:26:11
	add.hf.rn r9, r9, r14
	.loc	1 27 11                         # tanh-guard.mlir:27:11
	hfloat2float.rn r9, r9
	.loc	1 29 11                         # tanh-guard.mlir:29:11
	mul.f.rn r14, r9, r9
	.loc	1 30 11                         # tanh-guard.mlir:30:11
	mul.f.rn r14, r14, r9
	.loc	1 31 11                         # tanh-guard.mlir:31:11
	mul.f.rn r14, r14, r20
	.loc	1 32 11                         # tanh-guard.mlir:32:11
	add.f.rn r14, r14, r9
	.loc	1 33 11                         # tanh-guard.mlir:33:11
	mul.f.rn r14, r14, r21
	.loc	1 42 26                         # tanh-guard.mlir:42:26
	and r15, r14, r22
	.loc	1 44 28                         # tanh-guard.mlir:44:28
	setlt.u r17, r24, r15
	.loc	1 22 11                         # tanh-guard.mlir:22:11
	load.hu r15, 2(r8)
	.loc	1 46 32                         # tanh-guard.mlir:46:32
	bneq r17, zero, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 32 is_stmt 0                # tanh-guard.mlir:0:32
	addli r27, r14, 0
	j .LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=2
	and r17, r14, r23
	or r27, r17, r24
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=2
	add.hf.rn r10, r10, r15
	hfloat2float.rn r10, r10
	mul.f.rn r15, r10, r10
	mul.f.rn r15, r15, r10
	mul.f.rn r15, r15, r20
	add.f.rn r15, r15, r10
	mul.f.rn r15, r15, r21
	and r17, r15, r22
	setlt.u r17, r24, r17
	.loc	1 46 32                         # tanh-guard.mlir:46:32
	bneq r17, zero, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 32                          # tanh-guard.mlir:0:32
	addli r17, r15, 0
	j .LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=2
	and r17, r15, r23
	or r17, r17, r24
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=2
	slli r13, r14, 9
	srli r1, r14, 23
	seteq r13, r13, zero
	andi r1, r1, 255
	setlti r1, r1, 255
	or r1, r1, r13
	.loc	1 56 29 is_stmt 1               # tanh-guard.mlir:56:29
	bneq r1, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 29 is_stmt 0                # tanh-guard.mlir:0:29
	or r14, r14, r26
	j .LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=2
	exp.f.rn r1, r27
	div.f.rn r13, r25, r1
	sub.f.rn r14, r1, r13
	add.f.rn r1, r1, r13
	div.f.rn r14, r14, r1
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=2
	slli r1, r15, 9
	srli r13, r15, 23
	seteq r1, r1, zero
	andi r13, r13, 255
	setlti r13, r13, 255
	or r1, r13, r1
	.loc	1 56 29                         # tanh-guard.mlir:56:29
	beq r1, zero, .LBB0_6
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 0                           # tanh-guard.mlir:0:0
	exp.f.rn r1, r17
	div.f.rn r13, r25, r1
	sub.f.rn r15, r1, r13
	add.f.rn r1, r1, r13
	div.f.rn r15, r15, r1
	.loc	1 56 29                         # tanh-guard.mlir:56:29
	j .LBB0_7
.LBB0_19:                               # %._crit_edge
	.loc	1 64 5 epilogue_begin is_stmt 1 # tanh-guard.mlir:64:5
	addli sp, sp, 136
	mfence { lm, sm, gm }
	exit
.Ltmp1:
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
	.long	200                             # 0xc8
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
.asciz	"tanh-guard.mlir"               # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu7/cache/triton-p800-ops-5134b460d69771aa/cluster-tanh-q12g8ze3" # string offset=23
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 19.1.7 (b526e9ed77e93b92ce71f434d0bfd2c7ad245c37)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
