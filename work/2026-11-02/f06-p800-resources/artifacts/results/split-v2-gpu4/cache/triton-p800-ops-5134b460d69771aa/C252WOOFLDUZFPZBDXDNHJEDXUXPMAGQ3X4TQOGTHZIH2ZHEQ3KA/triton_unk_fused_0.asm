	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu4/cache/triton-p800-ops-5134b460d69771aa/cluster-tanh-io8tl2ga" "tanh-guard.mlir"
	.loc	1 2 0                           # tanh-guard.mlir:2:0
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
	ble.s r4, r3, .LBB0_17
# %bb.1:                                # %.lr.ph.preheader
	core_id r5
	lui r6, 524287
	load_param_i r11, 1
	addli r14, zero, 1
	addli r15, r30, -128
	addli r16, zero, 16
	addli r17, r30, -64
	lui r18, 258048
	lui r22, 524288
	lui r23, 268288
	lui r24, 260096
	lui r25, 1024
	slli r12, r5, 3
	lui r5, 250738
	ori r21, r6, 4095
	ori r19, r5, 1811
	lui r5, 259268
	ori r20, r5, 554
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp0:
	.loc	1 60 11 prologue_end            # tanh-guard.mlir:60:11
	load.d r[5:6], 16(r30)
	.loc	1 61 5                          # tanh-guard.mlir:61:5
	lui r1, 983040
	add.s r3, r3, r11
	or r1, r16, r1
	.loc	1 60 11                         # tanh-guard.mlir:60:11
	add.ul r[5:6], r[5:6], r[26:27]
	.loc	1 61 5                          # tanh-guard.mlir:61:5
	s_lm2gm r1, r17, 0(r[5:6])
	mfence { lm }
	blt.s r3, r4, .LBB0_3
	j .LBB0_17
.LBB0_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	.loc	1 0 5 is_stmt 0                 # tanh-guard.mlir:0:5
	loadli.w r1,  36(r30)
	addli r28, zero, 0
	div.s r5, r3, r1
	loadli.w r1,  32(r30)
	div.s r5, r5, r1
	.loc	1 14 10 is_stmt 1               # tanh-guard.mlir:14:10
	addli r1, zero, 2048
	.loc	1 10 10                         # tanh-guard.mlir:10:10
	slli r5, r5, 9
	.loc	1 13 10                         # tanh-guard.mlir:13:10
	add.s r5, r5, r12
	.loc	1 14 10                         # tanh-guard.mlir:14:10
	mod.s r6, r5, r1
	.loc	1 16 10                         # tanh-guard.mlir:16:10
	sext_int2long r[7:8], r5
	load.d r[1:2], 0(r30)
	.loc	1 17 10                         # tanh-guard.mlir:17:10
	lui r5, 983040
	.loc	1 16 10                         # tanh-guard.mlir:16:10
	sll.d r[26:27], r[7:8], r14
	.loc	1 17 10                         # tanh-guard.mlir:17:10
	or r5, r16, r5
	.loc	1 19 11                         # tanh-guard.mlir:19:11
	sext_int2long r[9:10], r6
	.loc	1 20 11                         # tanh-guard.mlir:20:11
	lui r6, 983040
	.loc	1 19 11                         # tanh-guard.mlir:19:11
	sll.d r[7:8], r[9:10], r14
	.loc	1 16 10                         # tanh-guard.mlir:16:10
	add.ul r[9:10], r[1:2], r[26:27]
	.loc	1 19 11                         # tanh-guard.mlir:19:11
	load.d r[1:2], 8(r30)
	.loc	1 20 11                         # tanh-guard.mlir:20:11
	or r6, r16, r6
	.loc	1 17 10                         # tanh-guard.mlir:17:10
	l_gm2lm r5, r15, 0(r[9:10])
	.loc	1 19 11                         # tanh-guard.mlir:19:11
	add.ul r[7:8], r[1:2], r[7:8]
	.loc	1 20 11                         # tanh-guard.mlir:20:11
	l_gm2lm r6, r17, 0(r[7:8])
	.loc	1 17 10                         # tanh-guard.mlir:17:10
	mfence { lm }
	j .LBB0_6
.LBB0_4:                                #   in Loop: Header=BB0_6 Depth=2
	.loc	1 0 10 is_stmt 0                # tanh-guard.mlir:0:10
	or r9, r9, r25
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=2
	mul.f.rn r1, r6, r18
	mul.f.rn r2, r7, r18
	.loc	1 56 11 is_stmt 1               # tanh-guard.mlir:56:11
	add.f.rn r6, r8, r24
	add.f.rn r7, r9, r24
	.loc	1 61 5                          # tanh-guard.mlir:61:5
	addli r28, r28, 4
	.loc	1 57 11                         # tanh-guard.mlir:57:11
	mul.f.rn r1, r1, r6
	mul.f.rn r2, r2, r7
	.loc	1 58 11                         # tanh-guard.mlir:58:11
	float2hfloat.rn r1, r1
	float2hfloat.rn r2, r2
	.loc	1 61 5                          # tanh-guard.mlir:61:5
	store.h r1, 0(r5)
	store.h r2, 2(r5)
	mfence { lm }
	beq r28, r16, .LBB0_2
.LBB0_6:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 17 10                         # tanh-guard.mlir:17:10
	add.s r7, r15, r28
	.loc	1 20 11                         # tanh-guard.mlir:20:11
	add.s r5, r17, r28
	.loc	1 17 10                         # tanh-guard.mlir:17:10
	load.hu r6, 0(r7)
	.loc	1 20 11                         # tanh-guard.mlir:20:11
	load.hu r8, 0(r5)
	.loc	1 17 10                         # tanh-guard.mlir:17:10
	load.hu r7, 2(r7)
	.loc	1 24 11                         # tanh-guard.mlir:24:11
	add.hf.rn r6, r6, r8
	.loc	1 25 11                         # tanh-guard.mlir:25:11
	hfloat2float.rn r6, r6
	.loc	1 27 11                         # tanh-guard.mlir:27:11
	mul.f.rn r8, r6, r6
	.loc	1 28 11                         # tanh-guard.mlir:28:11
	mul.f.rn r8, r8, r6
	.loc	1 29 11                         # tanh-guard.mlir:29:11
	mul.f.rn r8, r8, r19
	.loc	1 30 11                         # tanh-guard.mlir:30:11
	add.f.rn r8, r8, r6
	.loc	1 31 11                         # tanh-guard.mlir:31:11
	mul.f.rn r8, r8, r20
	.loc	1 40 26                         # tanh-guard.mlir:40:26
	and r9, r8, r21
	.loc	1 42 28                         # tanh-guard.mlir:42:28
	setlt.u r10, r23, r9
	.loc	1 20 11                         # tanh-guard.mlir:20:11
	load.hu r9, 2(r5)
	.loc	1 44 32                         # tanh-guard.mlir:44:32
	bneq r10, zero, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	.loc	1 0 32 is_stmt 0                # tanh-guard.mlir:0:32
	addli r13, r8, 0
	j .LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=2
	and r10, r8, r22
	or r13, r10, r23
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=2
	add.hf.rn r7, r7, r9
	hfloat2float.rn r7, r7
	mul.f.rn r9, r7, r7
	mul.f.rn r9, r9, r7
	mul.f.rn r9, r9, r19
	add.f.rn r9, r9, r7
	mul.f.rn r9, r9, r20
	and r10, r9, r21
	setlt.u r10, r23, r10
	.loc	1 44 32                         # tanh-guard.mlir:44:32
	bneq r10, zero, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=2
	.loc	1 0 32                          # tanh-guard.mlir:0:32
	addli r10, r9, 0
	j .LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=2
	and r10, r9, r22
	or r10, r10, r23
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=2
	slli r1, r8, 9
	srli r2, r8, 23
	seteq r1, r1, zero
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	1 54 29 is_stmt 1               # tanh-guard.mlir:54:29
	bneq r1, zero, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_6 Depth=2
	.loc	1 0 29 is_stmt 0                # tanh-guard.mlir:0:29
	or r8, r8, r25
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=2
	exp.f.rn r1, r13
	div.f.rn r2, r24, r1
	sub.f.rn r8, r1, r2
	add.f.rn r1, r1, r2
	div.f.rn r8, r8, r1
.LBB0_15:                               #   in Loop: Header=BB0_6 Depth=2
	slli r1, r9, 9
	srli r2, r9, 23
	seteq r1, r1, zero
	andi r2, r2, 255
	setlti r2, r2, 255
	or r1, r2, r1
	.loc	1 54 29                         # tanh-guard.mlir:54:29
	beq r1, zero, .LBB0_4
# %bb.16:                               #   in Loop: Header=BB0_6 Depth=2
	.loc	1 0 0                           # tanh-guard.mlir:0:0
	exp.f.rn r1, r10
	div.f.rn r2, r24, r1
	sub.f.rn r9, r1, r2
	add.f.rn r1, r1, r2
	div.f.rn r9, r9, r1
	.loc	1 54 29                         # tanh-guard.mlir:54:29
	j .LBB0_5
.LBB0_17:                               # %._crit_edge
	.loc	1 62 5 epilogue_begin is_stmt 1 # tanh-guard.mlir:62:5
	addli sp, sp, 128
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-v2-gpu4/cache/triton-p800-ops-5134b460d69771aa/cluster-tanh-io8tl2ga" # string offset=23
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 19.1.7 (b526e9ed77e93b92ce71f434d0bfd2c7ad245c37)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
