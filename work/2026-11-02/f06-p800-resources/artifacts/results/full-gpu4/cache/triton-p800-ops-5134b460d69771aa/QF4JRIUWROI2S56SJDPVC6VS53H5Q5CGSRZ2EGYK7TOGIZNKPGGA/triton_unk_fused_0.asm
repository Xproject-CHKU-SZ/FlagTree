	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/nj" "cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py"
	.loc	1 22 0                          # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -376
	addli r30, sp, 312
	lui r2, :hi20:global_smem
	core_id r1
	lui r8, 15
	loadli.w r6,  44(r30)
	loadli.w r4,  40(r30)
	slli r3, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r5,  48(r30)
	ori r12, r8, 4095
	add.s r7, r3, r2
	mul.s r4, r6, r4
	load_param_i r6, 0
	stores.w zero, 1040(r7)
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	storeli.w r7, -204(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r7)
	mul.s r4, r4, r5
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	storeli.w r4, -208(r30)                 # 4-byte Folded Spill
	ble.s r4, r6, .LBB0_9
# %bb.1:                                # %.lr.ph
	addli r4, zero, 64
	loadli.w r10,  -204(r30)                # 4-byte Folded Reload
	addli r28, zero, 2
	load.d r[8:9], 8(r30)
	andi r20, r1, 63
	load.d r[17:18], 24(r30)
	addli r16, r30, -64
	addli r19, zero, 4
	vxor.u.mz vr0{mr1}, vr0, vr0
	#APP
	vxor.s.mz vr1{mr1}, vr1, vr1
	#NO_APP
	storeli.w r12, -212(r30)                # 4-byte Folded Spill
	div.s r7, r1, r4
	load.d r[4:5], 16(r30)
	storeli.w r20, -308(r30)                # 4-byte Folded Spill
	addli r10, r10, 1040
	storeli.w r10, -220(r30)                # 4-byte Folded Spill
	load_param_i r10, 1
	storeli.w r10, -228(r30)                # 4-byte Folded Spill
	storeli.w r7, -216(r30)                 # 4-byte Folded Spill
	slli r7, r7, 6
	sub.s r7, r1, r7
	lui r1, 239665
	slli r7, r7, 4
	ori r1, r1, 623
	ori r10, r7, 1
	storeli.w r7, -224(r30)                 # 4-byte Folded Spill
	storeli.w r1, -312(r30)                 # 4-byte Folded Spill
	storeli.w r10, -232(r30)                # 4-byte Folded Spill
	ori r10, r7, 2
	storeli.w r10, -236(r30)                # 4-byte Folded Spill
	ori r10, r7, 3
	storeli.w r10, -240(r30)                # 4-byte Folded Spill
	ori r10, r7, 4
	storeli.w r10, -244(r30)                # 4-byte Folded Spill
	ori r10, r7, 5
	storeli.w r10, -248(r30)                # 4-byte Folded Spill
	ori r10, r7, 6
	storeli.w r10, -252(r30)                # 4-byte Folded Spill
	ori r10, r7, 7
	storeli.w r10, -256(r30)                # 4-byte Folded Spill
	ori r10, r7, 8
	storeli.w r10, -260(r30)                # 4-byte Folded Spill
	ori r10, r7, 9
	storeli.w r10, -264(r30)                # 4-byte Folded Spill
	ori r10, r7, 10
	storeli.w r10, -268(r30)                # 4-byte Folded Spill
	ori r10, r7, 11
	storeli.w r10, -272(r30)                # 4-byte Folded Spill
	ori r10, r7, 12
	storeli.w r10, -276(r30)                # 4-byte Folded Spill
	ori r10, r7, 13
	storeli.w r10, -280(r30)                # 4-byte Folded Spill
	ori r10, r7, 14
	storeli.w r10, -284(r30)                # 4-byte Folded Spill
	ori r10, r7, 15
	storeli.w r10, -288(r30)                # 4-byte Folded Spill
	sext_int2long r[10:11], r7
	lui r7, 1048575
	sll.d r[10:11], r[10:11], r28
	ori r7, r7, 3840
	add.ul r[4:5], r[4:5], r[10:11]
	and r3, r3, r7
	add.ul r[8:9], r[8:9], r[10:11]
	store.d r[4:5], -304(r30)               # 8-byte Folded Spill
	add.s r4, r3, r2
	store.d r[8:9], -296(r30)               # 8-byte Folded Spill
	addli r14, r4, 1040
	j .LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	mfence { lm, sm, gm }
	csr_set csr3, r3
	sync_group
	loads.w r3, 0(r14)
.Ltmp0:
	.loc	1 57 21 prologue_end            # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:57:21
	lui r5, 239616
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sext_int2long r[20:21], r11
	sext_int2long r[10:11], r8
	sext_int2long r[7:8], r7
	sll.d r[20:21], r[20:21], r28
	sll.d r[10:11], r[10:11], r28
	sll.d r[7:8], r[7:8], r28
	add.ul r[20:21], r[17:18], r[20:21]
	add.ul r[10:11], r[17:18], r[10:11]
	add.ul r[7:8], r[17:18], r[7:8]
	.loc	1 57 21                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:57:21
	mul.f.rn r3, r3, r5
	.loc	1 59 20                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:59:20
	loadli.w r5,  -312(r30)                 # 4-byte Folded Reload
	add.f.rn r3, r3, r5
	.loc	1 60 28                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:60:28
	lui r5, 260096
	sqrt.f.rn r3, r3
	div.f.rn r3, r5, r3
	.loc	1 61 20                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:61:20
	#APP
	vmul.f.mz.rn vr3{mr1}, r3, vr3
	#NO_APP
	.loc	1 62 20                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:62:20
	vadd.f.mz.rn vr2{mr1}, vr2, vr3
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	addli r5, r16, 4
	lui r3, 983040
	or r3, r19, r3
	vstore_mask16.mz vr2{mr1}, -64(r30)
	mfence { lm }
	s_lm2gm r3, r5, 0(r[20:21])
	lui r5, 983040
	addli r3, r16, 8
	lui r20, 983040
	or r5, r19, r5
	or r20, r19, r20
	s_lm2gm r5, r3, 0(r[10:11])
	lui r5, 983040
	.loc	1 63 25 is_stmt 0               # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sext_int2long r[10:11], r15
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	addli r3, r16, 12
	addli r15, r16, 16
	or r5, r19, r5
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sll.d r[10:11], r[10:11], r28
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	s_lm2gm r5, r3, 0(r[7:8])
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sext_int2long r[7:8], r12
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	lui r3, 983040
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	add.ul r[10:11], r[17:18], r[10:11]
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	addli r5, r16, 20
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sll.d r[7:8], r[7:8], r28
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	s_lm2gm r20, r15, 0(r[10:11])
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sext_int2long r[10:11], r13
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	or r3, r19, r3
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	add.ul r[7:8], r[17:18], r[7:8]
	sll.d r[10:11], r[10:11], r28
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	s_lm2gm r3, r5, 0(r[7:8])
	lui r5, 983040
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sext_int2long r[2:3], r2
	add.ul r[7:8], r[17:18], r[10:11]
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	addli r10, r16, 24
	or r5, r19, r5
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sll.d r[2:3], r[2:3], r28
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	s_lm2gm r5, r10, 0(r[7:8])
	lui r5, 983040
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	add.ul r[2:3], r[17:18], r[2:3]
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	addli r7, r16, 28
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sext_int2long r[10:11], r1
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	or r5, r19, r5
	s_lm2gm r5, r7, 0(r[2:3])
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sll.d r[1:2], r[10:11], r28
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	lui r3, 983040
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sext_int2long r[7:8], r9
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	addli r5, r16, 32
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sext_int2long r[9:10], r27
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	or r3, r19, r3
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sll.d r[7:8], r[7:8], r28
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	s_lm2gm r3, r5, 0(r[1:2])
	lui r1, 983040
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	add.ul r[7:8], r[17:18], r[7:8]
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	addli r2, r16, 36
	lui r3, 983040
	addli r5, r16, 40
	or r1, r19, r1
	or r3, r19, r3
	s_lm2gm r1, r2, 0(r[7:8])
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sext_int2long r[1:2], r26
	sll.d r[7:8], r[9:10], r28
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	lui r9, 983040
	addli r10, r16, 44
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sll.d r[1:2], r[1:2], r28
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	or r9, r19, r9
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	add.ul r[7:8], r[17:18], r[7:8]
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	s_lm2gm r3, r5, 0(r[7:8])
	lui r3, 983040
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sext_int2long r[7:8], r25
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	addli r5, r16, 48
	s_lm2gm r9, r10, 0(r[1:2])
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	load.d r[1:2], -200(r30)                # 8-byte Folded Reload
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	or r3, r19, r3
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sll.d r[7:8], r[7:8], r28
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	lui r9, 983040
	addli r10, r16, 60
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	add.ul r[7:8], r[17:18], r[7:8]
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	or r9, r19, r9
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	s_lm2gm r3, r16, 0(r[1:2])
	lui r3, 983040
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sext_int2long r[1:2], r24
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	or r3, r19, r3
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sll.d r[1:2], r[1:2], r28
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	s_lm2gm r3, r5, 0(r[7:8])
	lui r3, 983040
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	addli r5, r16, 52
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sext_int2long r[7:8], r23
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	or r3, r19, r3
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sll.d r[7:8], r[7:8], r28
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	s_lm2gm r3, r5, 0(r[1:2])
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sext_int2long r[1:2], r22
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	lui r3, 983040
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	add.ul r[7:8], r[17:18], r[7:8]
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	addli r5, r16, 56
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	sll.d r[1:2], r[1:2], r28
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	or r3, r19, r3
	.loc	1 63 25                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:25
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 63 49                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:49
	s_lm2gm r3, r5, 0(r[7:8])
	s_lm2gm r9, r10, 0(r[1:2])
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	mfence { lm }
	loadli.w r12,  -212(r30)                # 4-byte Folded Reload
	loadli.w r20,  -308(r30)                # 4-byte Folded Reload
	add.s r6, r6, r1
	loadli.w r1,  -208(r30)                 # 4-byte Folded Reload
	blt.s r6, r1, .LBB0_3
	j .LBB0_9
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 49                          # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:0:49
	loadli.w r1,  48(r30)
	loadli.w r2,  44(r30)
	addli r5, zero, 64
	.loc	1 38 47 is_stmt 1               # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:38:47
	vstore_mask16.mz vr0{mr1}, -192(r30)
	addli r3, r30, -192
	div.s r1, r6, r1
	div.s r1, r1, r2
	.loc	1 29 23                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:29:23
	loadli.w r2,  -216(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r2
	.loc	1 38 37                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:38:37
	loadli.w r1,  -224(r30)                 # 4-byte Folded Reload
	.loc	1 38 42 is_stmt 0               # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:38:42
	slli r22, r2, 10
	.loc	1 38 37                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:38:37
	add.s r1, r22, r1
	.loc	1 38 30                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:38:30
	sext_int2long r[7:8], r1
	.loc	1 38 47                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:38:47
	lui r1, 983040
	.loc	1 38 30                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:38:30
	sll.d r[9:10], r[7:8], r28
	load.d r[7:8], 0(r30)
	.loc	1 38 47                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:38:47
	or r1, r5, r1
	store.d r[9:10], -200(r30)              # 8-byte Folded Spill
	.loc	1 38 30                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:38:30
	add.ul r[7:8], r[7:8], r[9:10]
	.loc	1 38 47                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:38:47
	mfence { lm }
	l_gm2lm r1, r3, 0(r[7:8])
	.loc	1 39 37 is_stmt 1               # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:39:37
	lui r1, 983040
	.loc	1 40 38                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:40:38
	lui r3, 983040
	.loc	1 39 37                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:39:37
	load.d r[7:8], -296(r30)                # 8-byte Folded Reload
	or r1, r5, r1
	.loc	1 40 38                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:40:38
	or r3, r5, r3
	.loc	1 39 37                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:39:37
	addli r5, r30, -128
	l_gm2lm r1, r5, 0(r[7:8])
	.loc	1 40 38                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:40:38
	load.d r[7:8], -304(r30)                # 8-byte Folded Reload
	addli r1, r12, 0
	l_gm2lm r3, r16, 0(r[7:8])
	.loc	1 45 33                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:45:33
	addli r3, zero, 128
	.loc	1 38 47                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:38:47
	mfence { lm }
	.loc	1 45 33                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:45:33
	blt.s r2, r3, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 33 is_stmt 0                # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:0:33
	addli r1, zero, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	vload_mask16.mz vr2{mr1}, -192(r30)
	vload_mask16.mz vr3{mr1}, -128(r30)
	.loc	1 45 33                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:45:33
	vmmov mr0, r1
	.loc	1 0 0                           # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:0:0
	vadd.f.mz.rn vr3{mr1}, vr2, vr3
	.loc	1 45 33                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:45:33
	vadd.s.mz vr2{mr1}, zero, vr0
	vor.f.mh vr2{mr0}, vr1, vr3
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
	.loc	1 0 0                           # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:0:0
	vload_mask16.mz vr2{mr1}, -64(r30)
	add.f.rn r1, r2, r1
	loadli.w r2,  -204(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r12
	sync_group
	bneq r20, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	loads.w r1, 0(r4)
	loads.w r3, 4(r4)
	loads.w r2, 8(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 12(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 16(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 20(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 24(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 28(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 32(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 36(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 40(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 44(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 48(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 52(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 56(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 60(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 64(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 68(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 72(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 76(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 80(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 84(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 88(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 92(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 96(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 100(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 104(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 108(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 112(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 116(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 120(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 124(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 128(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 132(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 136(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 140(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 144(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 148(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 152(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 156(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 160(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 164(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 168(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 172(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 176(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 180(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 184(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 188(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 192(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 196(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 200(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 204(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 208(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 212(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 216(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 220(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 224(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 228(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 232(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 236(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 240(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 244(r4)
	add.f.rn r1, r1, r2
	loads.w r2, 248(r4)
	add.f.rn r1, r1, r3
	loads.w r3, 252(r4)
	add.f.rn r1, r1, r2
	add.f.rn r1, r1, r3
	stores.w r1, 0(r4)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	lui r1, 15
	mfence { lm, sm, gm }
	.loc	1 50 19 is_stmt 1               # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:50:19
	lui r2, 763904
	.loc	1 53 35                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:53:35
	vadd.s.mz vr4{mr1}, zero, vr0
	ori r3, r1, 4095
	csr_set csr3, r3
	sync_group
	loads.w r1, 0(r4)
	loadli.w r5,  -240(r30)                 # 4-byte Folded Reload
	loadli.w r10,  -268(r30)                # 4-byte Folded Reload
	add.s r7, r5, r22
	loadli.w r5,  -244(r30)                 # 4-byte Folded Reload
	add.s r27, r10, r22
	loadli.w r10,  -272(r30)                # 4-byte Folded Reload
	add.s r15, r5, r22
	add.s r26, r10, r22
	loadli.w r10,  -276(r30)                # 4-byte Folded Reload
	add.s r25, r10, r22
	loadli.w r10,  -280(r30)                # 4-byte Folded Reload
	.loc	1 50 19                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:50:19
	mul.f.rn r1, r1, r2
	#APP
	vadd.f.mz.rn vr3{mr1}, r1, vr3
	#NO_APP
	.loc	1 51 20                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:51:20
	vmul.f.mz.rn vr5{mr1}, vr3, vr3
	add.s r24, r10, r22
	loadli.w r10,  -220(r30)                # 4-byte Folded Reload
	.loc	1 53 35                         # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:53:35
	vor.f.mh vr4{mr0}, vr1, vr5
	vextracti.f r1, 0(vr4)
	vextracti.f r2, 1(vr4)
	vextracti.f r9, 15(vr4)
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
	loadli.w r2,  -232(r30)                 # 4-byte Folded Reload
	add.s r11, r2, r22
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	add.s r8, r2, r22
	vextracti.f r2, 14(vr4)
	add.f.rn r5, r2, r1
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	add.s r12, r1, r22
	loadli.w r1,  -252(r30)                 # 4-byte Folded Reload
	add.f.rn r5, r9, r5
	add.s r13, r1, r22
	loadli.w r1,  -256(r30)                 # 4-byte Folded Reload
	loadli.w r9,  -264(r30)                 # 4-byte Folded Reload
	add.s r2, r1, r22
	loadli.w r1,  -260(r30)                 # 4-byte Folded Reload
	add.s r9, r9, r22
	stores.w r5, 0(r10)
	loadli.w r5,  -284(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r22
	add.s r23, r5, r22
	loadli.w r5,  -288(r30)                 # 4-byte Folded Reload
	mfence { lm, sm, gm }
	csr_set csr3, r3
	sync_group
	add.s r22, r5, r22
	bneq r20, zero, .LBB0_2
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 35 is_stmt 0                # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:0:35
	loads.w r10, 0(r14)
	loads.w r20, 4(r14)
	loads.w r5, 8(r14)
	add.f.rn r10, r10, r20
	loads.w r20, 12(r14)
	add.f.rn r5, r10, r5
	loads.w r10, 16(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 20(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 24(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 28(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 32(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 36(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 40(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 44(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 48(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 52(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 56(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 60(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 64(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 68(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 72(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 76(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 80(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 84(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 88(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 92(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 96(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 100(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 104(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 108(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 112(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 116(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 120(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 124(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 128(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 132(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 136(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 140(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 144(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 148(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 152(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 156(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 160(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 164(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 168(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 172(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 176(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 180(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 184(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 188(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 192(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 196(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 200(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 204(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 208(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 212(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 216(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 220(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 224(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 228(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 232(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 236(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 240(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 244(r14)
	add.f.rn r5, r5, r10
	loads.w r10, 248(r14)
	add.f.rn r5, r5, r20
	loads.w r20, 252(r14)
	add.f.rn r5, r5, r10
	add.f.rn r5, r5, r20
	stores.w r5, 0(r14)
	j .LBB0_2
.LBB0_9:                                # %._crit_edge
	.loc	1 63 4 epilogue_begin is_stmt 1 # cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py:63:4
	addli sp, sp, 312
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
	.long	376                             # 0x178
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
.asciz	"cnjogcp4xxgvzrmbpmdjdtmsxjg4a3nb6hxxp5adzybax6hy36ew.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/inductor/nj" # string offset=63
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	5, 1	# TAG_SIMD_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
