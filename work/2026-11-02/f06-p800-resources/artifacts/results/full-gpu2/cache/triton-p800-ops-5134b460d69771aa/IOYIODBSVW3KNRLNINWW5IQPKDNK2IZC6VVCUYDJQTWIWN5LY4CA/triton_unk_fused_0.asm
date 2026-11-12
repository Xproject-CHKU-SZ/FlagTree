	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/y3" "cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py"
	.loc	1 22 0                          # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -384
	lui r2, :hi20:global_smem
	core_id r1
	addli r30, sp, 320
	lui r9, 15
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r6,  44(r30)
	loadli.w r4,  40(r30)
	loadli.w r5,  48(r30)
	ori r20, r9, 4095
	add.s r7, r3, r2
	mul.s r4, r6, r4
	addli r8, r7, 8208
	mul.s r4, r4, r5
	storeli.w r8, -212(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r20
	sync_group
	storeli.w r7, -208(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r7)
	load_param_i r7, 0
	mfence { lm, sm, gm }
	csr_set csr3, r20
	sync_group
	storeli.w r4, -216(r30)                 # 4-byte Folded Spill
	ble.s r4, r7, .LBB0_9
# %bb.1:                                # %.lr.ph
	addli r4, zero, 8
	load_param_i r5, 1
	lui r12, 1048575
	andi r21, r1, 7
	addli r27, zero, 2
	load.d r[8:9], 16(r30)
	load.d r[10:11], 8(r30)
	load.d r[17:18], 24(r30)
	addli r14, r30, -192
	addli r19, zero, 4
	vxor.u.mz vr0{mr1}, vr0, vr0
	#APP
	vxor.s.mz vr1{mr1}, vr1, vr1
	#NO_APP
	storeli.w r20, -220(r30)                # 4-byte Folded Spill
	div.s r4, r1, r4
	storeli.w r5, -232(r30)                 # 4-byte Folded Spill
	ori r12, r12, 4064
	and r3, r3, r12
	add.s r28, r3, r2
	storeli.w r4, -224(r30)                 # 4-byte Folded Spill
	slli r4, r4, 3
	sub.s r4, r1, r4
	addli r1, r28, 8208
	slli r4, r4, 4
	storeli.w r1, -204(r30)                 # 4-byte Folded Spill
	lui r1, 239665
	ori r5, r4, 1
	storeli.w r4, -228(r30)                 # 4-byte Folded Spill
	ori r1, r1, 623
	storeli.w r5, -236(r30)                 # 4-byte Folded Spill
	ori r5, r4, 2
	storeli.w r1, -316(r30)                 # 4-byte Folded Spill
	addli r1, zero, 2
	storeli.w r5, -240(r30)                 # 4-byte Folded Spill
	ori r5, r4, 3
	vmmov mr3, r1
	storeli.w r5, -244(r30)                 # 4-byte Folded Spill
	ori r5, r4, 4
	storeli.w r5, -248(r30)                 # 4-byte Folded Spill
	ori r5, r4, 5
	storeli.w r5, -252(r30)                 # 4-byte Folded Spill
	ori r5, r4, 6
	storeli.w r5, -256(r30)                 # 4-byte Folded Spill
	ori r5, r4, 7
	storeli.w r5, -260(r30)                 # 4-byte Folded Spill
	ori r5, r4, 8
	storeli.w r5, -264(r30)                 # 4-byte Folded Spill
	ori r5, r4, 9
	storeli.w r5, -268(r30)                 # 4-byte Folded Spill
	ori r5, r4, 10
	storeli.w r5, -272(r30)                 # 4-byte Folded Spill
	ori r5, r4, 11
	storeli.w r5, -276(r30)                 # 4-byte Folded Spill
	ori r5, r4, 12
	storeli.w r5, -280(r30)                 # 4-byte Folded Spill
	ori r5, r4, 13
	storeli.w r5, -284(r30)                 # 4-byte Folded Spill
	ori r5, r4, 14
	storeli.w r5, -288(r30)                 # 4-byte Folded Spill
	ori r5, r4, 15
	storeli.w r5, -292(r30)                 # 4-byte Folded Spill
	sext_int2long r[4:5], r4
	sll.d r[4:5], r[4:5], r27
	add.ul r[10:11], r[10:11], r[4:5]
	add.ul r[4:5], r[8:9], r[4:5]
	store.d r[10:11], -304(r30)             # 8-byte Folded Spill
	store.d r[4:5], -312(r30)               # 8-byte Folded Spill
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	loadli.w r5,  -204(r30)                 # 4-byte Folded Reload
.Ltmp0:
	.loc	1 57 21 prologue_end            # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:57:21
	lui r6, 245760
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sext_int2long r[20:21], r15
	sext_int2long r[15:16], r10
	.loc	1 63 48 is_stmt 0               # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	addli r10, r14, 16
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sll.d r[20:21], r[20:21], r27
	sll.d r[15:16], r[15:16], r27
	loads.w r5, 0(r5)
	add.ul r[20:21], r[17:18], r[20:21]
	add.ul r[15:16], r[17:18], r[15:16]
	.loc	1 57 21 is_stmt 1               # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:57:21
	mul.f.rn r5, r5, r6
	.loc	1 59 20                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:59:20
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r6
	.loc	1 60 28                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:60:28
	lui r6, 260096
	sqrt.f.rn r5, r5
	div.f.rn r5, r6, r5
	.loc	1 61 20                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:61:20
	#APP
	vmul.f.mz.rn vr3{mr1}, r5, vr3
	#NO_APP
	.loc	1 62 20                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:62:20
	vmul.f.mz.rn vr2{mr1}, vr2, vr3
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	addli r6, r14, 4
	lui r5, 983040
	or r5, r19, r5
	vstore_mask16.mz vr2{mr1}, -192(r30)
	mfence { lm }
	s_lm2gm r5, r6, 0(r[20:21])
	lui r6, 983040
	addli r5, r14, 8
	.loc	1 63 25 is_stmt 0               # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sext_int2long r[20:21], r3
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	addli r3, r14, 12
	or r6, r19, r6
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sll.d r[20:21], r[20:21], r27
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	s_lm2gm r6, r5, 0(r[15:16])
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sext_int2long r[5:6], r8
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	lui r15, 983040
	lui r8, 983040
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	add.ul r[20:21], r[17:18], r[20:21]
	sll.d r[5:6], r[5:6], r27
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	or r15, r19, r15
	or r8, r19, r8
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	add.ul r[5:6], r[17:18], r[5:6]
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	s_lm2gm r8, r3, 0(r[20:21])
	lui r3, 983040
	addli r8, r14, 20
	addli r21, r13, 0
	s_lm2gm r15, r10, 0(r[5:6])
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sext_int2long r[5:6], r11
	sext_int2long r[10:11], r12
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	or r3, r19, r3
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sll.d r[5:6], r[5:6], r27
	sll.d r[10:11], r[10:11], r27
	add.ul r[5:6], r[17:18], r[5:6]
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	s_lm2gm r3, r8, 0(r[5:6])
	lui r8, 983040
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sext_int2long r[2:3], r2
	add.ul r[5:6], r[17:18], r[10:11]
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	addli r10, r14, 24
	or r8, r19, r8
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sll.d r[2:3], r[2:3], r27
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	s_lm2gm r8, r10, 0(r[5:6])
	lui r5, 983040
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	add.ul r[2:3], r[17:18], r[2:3]
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	addli r6, r14, 28
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sext_int2long r[10:11], r1
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	lui r8, 983040
	or r5, r19, r5
	or r8, r19, r8
	s_lm2gm r5, r6, 0(r[2:3])
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sll.d r[1:2], r[10:11], r27
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	lui r5, 983040
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sext_int2long r[3:4], r4
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	addli r6, r14, 32
	addli r10, r14, 44
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	or r5, r19, r5
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sll.d r[3:4], r[3:4], r27
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	s_lm2gm r5, r6, 0(r[1:2])
	lui r1, 983040
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	add.ul r[3:4], r[17:18], r[3:4]
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	addli r2, r14, 36
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sext_int2long r[5:6], r26
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	or r1, r19, r1
	s_lm2gm r1, r2, 0(r[3:4])
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sext_int2long r[1:2], r25
	sll.d r[3:4], r[5:6], r27
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	lui r5, 983040
	addli r6, r14, 40
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sll.d r[1:2], r[1:2], r27
	add.ul r[3:4], r[17:18], r[3:4]
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	or r5, r19, r5
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	s_lm2gm r5, r6, 0(r[3:4])
	lui r3, 983040
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sext_int2long r[4:5], r24
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	addli r6, r14, 48
	s_lm2gm r8, r10, 0(r[1:2])
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	load.d r[1:2], -200(r30)                # 8-byte Folded Reload
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	or r3, r19, r3
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sll.d r[4:5], r[4:5], r27
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	lui r8, 983040
	or r8, r19, r8
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	s_lm2gm r3, r14, 0(r[1:2])
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	add.ul r[3:4], r[17:18], r[4:5]
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	lui r5, 983040
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sext_int2long r[1:2], r23
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	or r5, r19, r5
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sll.d r[1:2], r[1:2], r27
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	s_lm2gm r5, r6, 0(r[3:4])
	lui r3, 983040
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	addli r4, r14, 52
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sext_int2long r[5:6], r9
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	addli r9, r14, 60
	or r3, r19, r3
	s_lm2gm r3, r4, 0(r[1:2])
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sext_int2long r[1:2], r22
	sll.d r[3:4], r[5:6], r27
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	lui r5, 983040
	addli r6, r14, 56
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	sll.d r[1:2], r[1:2], r27
	add.ul r[3:4], r[17:18], r[3:4]
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	or r5, r19, r5
	.loc	1 63 25                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:25
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 63 48                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:48
	s_lm2gm r5, r6, 0(r[3:4])
	s_lm2gm r8, r9, 0(r[1:2])
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	mfence { lm }
	loadli.w r20,  -220(r30)                # 4-byte Folded Reload
	add.s r7, r7, r1
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	blt.s r7, r1, .LBB0_3
	j .LBB0_9
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 48                          # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:0:48
	loadli.w r1,  48(r30)
	loadli.w r2,  44(r30)
	.loc	1 29 23 is_stmt 1               # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:29:23
	loadli.w r3,  -224(r30)                 # 4-byte Folded Reload
	.loc	1 38 37                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:38:37
	loadli.w r5,  -228(r30)                 # 4-byte Folded Reload
	.loc	1 38 46 is_stmt 0               # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:38:46
	vstore_mask16.mz vr0{mr1}, -192(r30)
	.loc	1 40 38 is_stmt 1               # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:40:38
	lui r4, 983040
	.loc	1 41 18                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:41:18
	vadd.s.mz vr3{mr1}, zero, vr0
	addli r13, zero, 1
	.loc	1 62 20                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:62:20
	vadd.s.mz vr2{mr1}, zero, vr0
	.loc	1 38 46                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:38:46
	mfence { lm }
	vmmov mr2, r13
	div.s r1, r7, r1
	div.s r1, r1, r2
	lui r2, 983040
	.loc	1 28 33                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:28:33
	slli r1, r1, 3
	.loc	1 29 23                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:29:23
	add.s r1, r1, r3
	.loc	1 39 37                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:39:37
	lui r3, 983040
	.loc	1 38 41                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:38:41
	slli r22, r1, 7
	.loc	1 38 37 is_stmt 0               # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:38:37
	add.s r8, r22, r5
	addli r5, zero, 64
	.loc	1 38 30                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:38:30
	sext_int2long r[8:9], r8
	.loc	1 38 46                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:38:46
	or r2, r5, r2
	.loc	1 39 37 is_stmt 1               # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:39:37
	or r3, r5, r3
	.loc	1 40 38                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:40:38
	or r4, r5, r4
	.loc	1 39 37                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:39:37
	load.d r[5:6], -304(r30)                # 8-byte Folded Reload
	.loc	1 38 30                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:38:30
	sll.d r[10:11], r[8:9], r27
	load.d r[8:9], 0(r30)
	store.d r[10:11], -200(r30)             # 8-byte Folded Spill
	add.ul r[8:9], r[8:9], r[10:11]
	.loc	1 38 46 is_stmt 0               # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:38:46
	l_gm2lm r2, r14, 0(r[8:9])
	.loc	1 39 37 is_stmt 1               # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:39:37
	addli r2, r30, -128
	l_gm2lm r3, r2, 0(r[5:6])
	.loc	1 40 38                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:40:38
	load.d r[2:3], -312(r30)                # 8-byte Folded Reload
	addli r5, r30, -64
	l_gm2lm r4, r5, 0(r[2:3])
	.loc	1 38 46                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:38:46
	mfence { lm }
	.loc	1 39 37                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:39:37
	loadli.w r2,  -128(r30)
	loadli.w r3,  -124(r30)
	loadli.w r4,  -120(r30)
	loadli.w r8,  -116(r30)
	loadli.w r9,  -112(r30)
	loadli.w r10,  -108(r30)
	loadli.w r11,  -104(r30)
	loadli.w r12,  -100(r30)
	loadli.w r15,  -96(r30)
	loadli.w r16,  -92(r30)
	loadli.w r23,  -88(r30)
	loadli.w r24,  -84(r30)
	loadli.w r25,  -80(r30)
	loadli.w r26,  -76(r30)
	loadli.w r6,  -72(r30)
	loadli.w r5,  -68(r30)
	.loc	1 41 18                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:41:18
	vor.u.mh vr3{mr2}, r2, vr3
	addli r2, zero, 4
	vmmov mr0, r2
	addli r2, zero, 8
	vor.u.mh vr3{mr3}, r3, vr3
	vor.u.mh vr3{mr0}, r4, vr3
	vmmov mr0, r2
	addli r2, zero, 16
	vor.u.mh vr3{mr0}, r8, vr3
	vmmov mr0, r2
	addli r2, zero, 32
	vor.u.mh vr3{mr0}, r9, vr3
	vmmov mr0, r2
	addli r2, zero, 64
	vor.u.mh vr3{mr0}, r10, vr3
	vmmov mr0, r2
	addli r2, zero, 128
	vor.u.mh vr3{mr0}, r11, vr3
	vmmov mr0, r2
	addli r2, zero, 256
	vor.u.mh vr3{mr0}, r12, vr3
	vmmov mr0, r2
	addli r2, zero, 512
	vor.u.mh vr3{mr0}, r15, vr3
	vmmov mr0, r2
	addli r2, zero, 1024
	vor.u.mh vr3{mr0}, r16, vr3
	vmmov mr0, r2
	addli r2, zero, 2048
	vor.u.mh vr3{mr0}, r23, vr3
	vmmov mr0, r2
	addli r2, zero, 4096
	vor.u.mh vr3{mr0}, r24, vr3
	vmmov mr0, r2
	addli r2, zero, 8192
	vor.u.mh vr3{mr0}, r25, vr3
	vmmov mr0, r2
	lui r2, 4
	vor.u.mh vr3{mr0}, r26, vr3
	vmmov mr0, r2
	lui r2, 8
	vor.u.mh vr3{mr0}, r6, vr3
	vmmov mr0, r2
	vor.u.mh vr3{mr0}, r5, vr3
	.loc	1 40 38                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:40:38
	loadli.w r2,  -64(r30)
	loadli.w r3,  -60(r30)
	loadli.w r4,  -56(r30)
	loadli.w r5,  -52(r30)
	loadli.w r6,  -48(r30)
	loadli.w r8,  -44(r30)
	loadli.w r9,  -40(r30)
	loadli.w r10,  -36(r30)
	loadli.w r11,  -32(r30)
	loadli.w r12,  -28(r30)
	loadli.w r15,  -24(r30)
	loadli.w r16,  -20(r30)
	loadli.w r23,  -16(r30)
	loadli.w r24,  -12(r30)
	loadli.w r25,  -8(r30)
	loadli.w r26,  -4(r30)
	.loc	1 62 20                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:62:20
	vor.u.mh vr2{mr2}, r2, vr2
	addli r2, zero, 4
	vmmov mr2, r2
	addli r2, zero, 8
	vor.u.mh vr2{mr3}, r3, vr2
	.loc	1 45 33                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:45:33
	addli r3, zero, 16
	.loc	1 62 20                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:62:20
	vor.u.mh vr2{mr2}, r4, vr2
	vmmov mr2, r2
	addli r2, zero, 16
	vor.u.mh vr2{mr2}, r5, vr2
	vmmov mr2, r2
	addli r2, zero, 32
	vor.u.mh vr2{mr2}, r6, vr2
	vmmov mr2, r2
	addli r2, zero, 64
	vor.u.mh vr2{mr2}, r8, vr2
	vmmov mr2, r2
	addli r2, zero, 128
	vor.u.mh vr2{mr2}, r9, vr2
	vmmov mr2, r2
	addli r2, zero, 256
	vor.u.mh vr2{mr2}, r10, vr2
	vmmov mr2, r2
	addli r2, zero, 512
	vor.u.mh vr2{mr2}, r11, vr2
	vmmov mr2, r2
	addli r2, zero, 1024
	vor.u.mh vr2{mr2}, r12, vr2
	vmmov mr2, r2
	addli r2, zero, 2048
	vor.u.mh vr2{mr2}, r15, vr2
	vmmov mr2, r2
	addli r2, zero, 4096
	vor.u.mh vr2{mr2}, r16, vr2
	vmmov mr2, r2
	addli r2, zero, 8192
	vor.u.mh vr2{mr2}, r23, vr2
	vmmov mr2, r2
	lui r2, 4
	vor.u.mh vr2{mr2}, r24, vr2
	vmmov mr2, r2
	addli r2, r20, 0
	vor.u.mh vr2{mr2}, r25, vr2
	vor.u.mh vr2{mr0}, r26, vr2
	.loc	1 45 33                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:45:33
	blt.s r1, r3, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 33 is_stmt 0                # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:0:33
	addli r2, zero, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	vload_mask16.mz vr4{mr1}, -192(r30)
	.loc	1 45 33                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:45:33
	vmmov mr2, r2
	.loc	1 0 0                           # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:0:0
	vadd.f.mz.rn vr3{mr1}, vr4, vr3
	.loc	1 45 33                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:45:33
	vadd.s.mz vr4{mr1}, zero, vr0
	vor.f.mh vr4{mr2}, vr1, vr3
	vextracti.f r1, 0(vr4)
	vextracti.f r2, 1(vr4)
	add.f.rn r1, r1, r2
	vextracti.f r2, 2(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 3(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 4(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 5(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 6(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 7(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 8(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 9(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 10(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 11(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 12(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 13(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 14(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 15(vr4)
	add.f.rn r1, r2, r1
	loadli.w r2,  -208(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r20
	sync_group
	bneq r21, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 33                          # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:0:33
	loads.w r1, 0(r28)
	loads.w r2, 4(r28)
	loads.w r3, 8(r28)
	add.f.rn r1, r1, r2
	loads.w r2, 12(r28)
	add.f.rn r1, r1, r3
	loads.w r3, 16(r28)
	add.f.rn r1, r1, r2
	loads.w r2, 20(r28)
	add.f.rn r1, r1, r3
	loads.w r3, 24(r28)
	add.f.rn r1, r1, r2
	loads.w r2, 28(r28)
	add.f.rn r1, r1, r3
	add.f.rn r1, r1, r2
	stores.w r1, 0(r28)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	lui r1, 15
	mfence { lm, sm, gm }
	.loc	1 50 19 is_stmt 1               # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:50:19
	lui r2, 770048
	.loc	1 53 35                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:53:35
	vadd.s.mz vr4{mr1}, zero, vr0
	addli r13, r21, 0
	ori r16, r1, 4095
	csr_set csr3, r16
	sync_group
	loads.w r1, 0(r28)
	loadli.w r4,  -248(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -272(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -244(r30)                 # 4-byte Folded Reload
	add.s r26, r6, r22
	loadli.w r6,  -276(r30)                 # 4-byte Folded Reload
	add.s r8, r4, r22
	add.s r3, r3, r22
	add.s r25, r6, r22
	loadli.w r6,  -280(r30)                 # 4-byte Folded Reload
	add.s r24, r6, r22
	loadli.w r6,  -284(r30)                 # 4-byte Folded Reload
	.loc	1 50 19                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:50:19
	mul.f.rn r1, r1, r2
	#APP
	vadd.f.mz.rn vr3{mr1}, r1, vr3
	#NO_APP
	.loc	1 51 20                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:51:20
	vmul.f.mz.rn vr5{mr1}, vr3, vr3
	add.s r23, r6, r22
	loadli.w r6,  -212(r30)                 # 4-byte Folded Reload
	.loc	1 53 35                         # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:53:35
	vor.f.mh vr4{mr2}, vr1, vr5
	vextracti.f r1, 0(vr4)
	vextracti.f r2, 1(vr4)
	vextracti.f r5, 15(vr4)
	add.f.rn r1, r1, r2
	vextracti.f r2, 2(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 3(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 4(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 5(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 6(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 7(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 8(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 9(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 10(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 11(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 12(vr4)
	add.f.rn r1, r2, r1
	vextracti.f r2, 13(vr4)
	add.f.rn r1, r2, r1
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	add.s r15, r2, r22
	loadli.w r2,  -240(r30)                 # 4-byte Folded Reload
	add.s r10, r2, r22
	vextracti.f r2, 14(vr4)
	add.f.rn r4, r2, r1
	loadli.w r1,  -252(r30)                 # 4-byte Folded Reload
	add.s r11, r1, r22
	loadli.w r1,  -256(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r5, r4
	add.s r12, r1, r22
	loadli.w r1,  -260(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -268(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r22
	loadli.w r1,  -264(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r22
	stores.w r5, 0(r6)
	loadli.w r5,  -288(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r22
	add.s r9, r5, r22
	loadli.w r5,  -292(r30)                 # 4-byte Folded Reload
	mfence { lm, sm, gm }
	csr_set csr3, r16
	sync_group
	add.s r22, r5, r22
	bneq r21, zero, .LBB0_2
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 35 is_stmt 0                # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:0:35
	loadli.w r21,  -204(r30)                # 4-byte Folded Reload
	loads.w r5, 0(r21)
	loads.w r6, 4(r21)
	loads.w r20, 8(r21)
	add.f.rn r5, r5, r6
	loads.w r6, 12(r21)
	add.f.rn r5, r5, r20
	loads.w r20, 16(r21)
	add.f.rn r5, r5, r6
	loads.w r6, 20(r21)
	add.f.rn r5, r5, r20
	loads.w r20, 24(r21)
	add.f.rn r5, r5, r6
	loads.w r6, 28(r21)
	add.f.rn r5, r5, r20
	add.f.rn r5, r5, r6
	stores.w r5, 0(r21)
	j .LBB0_2
.LBB0_9:                                # %._crit_edge
	.loc	1 63 4 epilogue_begin is_stmt 1 # cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py:63:4
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
	.long	52                              # 0x34
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
.asciz	"cy3wqan3mnhwn2jeahj3vzfgr3u66co5v5d35vbw62jq7xaxlrwo.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/inductor/y3" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
