	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/u3" "cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py"
	.loc	1 22 0                          # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -320
	addli r30, sp, 256
	lui r2, :hi20:global_smem
	core_id r1
	lui r4, 15
	loadli.w r6,  44(r30)
	loadli.w r5,  40(r30)
	slli r7, r1, 2
	addli r2, r2, :lo12:global_smem
	loadli.w r3,  48(r30)
	ori r4, r4, 4095
	add.s r8, r7, r2
	mul.s r6, r6, r5
	load_param_i r5, 0
	stores.w zero, 1040(r8)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	storeli.w r8, -196(r30)                 # 4-byte Folded Spill
	stores.w zero, 0(r8)
	mul.s r3, r6, r3
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	storeli.w r3, -200(r30)                 # 4-byte Folded Spill
	ble.s r3, r5, .LBB0_15
# %bb.1:                                # %.lr.ph
	addli r8, zero, 64
	load_param_i r6, 1
	load.d r[14:15], 8(r30)
	load.d r[10:11], 16(r30)
	andi r24, r1, 63
	addli r26, r30, -192
	addli r28, r30, -128
	addli r13, zero, 32
	lui r18, 243712
	div.s r3, r1, r8
	storeli.w r6, -216(r30)                 # 4-byte Folded Spill
	slli r12, r3, 6
	storeli.w r3, -204(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -196(r30)                 # 4-byte Folded Reload
	sub.s r12, r1, r12
	lui r1, 239665
	addli r3, r3, 1040
	ori r1, r1, 623
	storeli.w r3, -208(r30)                 # 4-byte Folded Spill
	slli r3, r12, 2
	lui r12, 1048575
	storeli.w r1, -252(r30)                 # 4-byte Folded Spill
	ori r6, r3, 1
	ori r12, r12, 3840
	sext_int2long r[16:17], r3
	storeli.w r3, -212(r30)                 # 4-byte Folded Spill
	storeli.w r6, -220(r30)                 # 4-byte Folded Spill
	ori r6, r3, 2
	and r7, r7, r12
	addli r12, zero, 2
	storeli.w r6, -224(r30)                 # 4-byte Folded Spill
	ori r6, r3, 3
	add.s r23, r7, r2
	storeli.w r6, -228(r30)                 # 4-byte Folded Spill
	addli r6, zero, 1
	addli r25, r23, 1040
	sll.d r[16:17], r[16:17], r6
	add.ul r[8:9], r[14:15], r[16:17]
	store.d r[8:9], -240(r30)               # 8-byte Folded Spill
	add.ul r[8:9], r[10:11], r[16:17]
	addli r10, r30, -64
	store.d r[8:9], -248(r30)               # 8-byte Folded Spill
.LBB0_2:                                # %.critedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	loadli.w r1,  48(r30)
	loadli.w r2,  44(r30)
.Ltmp0:
	.loc	1 29 23 prologue_end            # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:29:23
	loadli.w r3,  -204(r30)                 # 4-byte Folded Reload
	.loc	1 38 46                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:46
	store.h zero, -192(r30)
	store.h zero, -190(r30)
	mfence { lm }
	.loc	1 38 30 is_stmt 0               # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:30
	load.d r[8:9], 0(r30)
	.loc	1 38 46                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:46
	store.h zero, -188(r30)
	store.h zero, -186(r30)
	div.s r1, r5, r1
	div.s r1, r1, r2
	lui r2, 983040
	.loc	1 29 23 is_stmt 1               # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:29:23
	add.s r7, r1, r3
	.loc	1 38 37                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:37
	loadli.w r3,  -212(r30)                 # 4-byte Folded Reload
	.loc	1 39 37                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:39:37
	lui r1, 983040
	.loc	1 38 46                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:46
	mfence { lm }
	.loc	1 38 41 is_stmt 0               # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:41
	slli r16, r7, 8
	.loc	1 38 37                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:37
	add.s r11, r16, r3
	addli r3, zero, 8
	.loc	1 38 30                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:30
	sext_int2long r[14:15], r11
	.loc	1 38 46                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:46
	or r2, r3, r2
	.loc	1 39 37 is_stmt 1               # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:39:37
	or r1, r3, r1
	.loc	1 38 30                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:30
	sll.d r[14:15], r[14:15], r6
	add.ul r[19:20], r[8:9], r[14:15]
	.loc	1 39 37                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:39:37
	load.d r[8:9], -240(r30)                # 8-byte Folded Reload
	.loc	1 38 46                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:46
	l_gm2lm r2, r26, 0(r[19:20])
	.loc	1 40 38                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:40:38
	lui r2, 983040
	.loc	1 39 37                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:39:37
	l_gm2lm r1, r28, 0(r[8:9])
	.loc	1 40 38                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:40:38
	load.d r[8:9], -248(r30)                # 8-byte Folded Reload
	or r2, r3, r2
	l_gm2lm r2, r10, 0(r[8:9])
	mfence { lm }
	.loc	1 38 46                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:46
	load.hu r1, -192(r30)
	.loc	1 39 37                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:39:37
	load.hu r11, -128(r30)
	.loc	1 38 46                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:46
	load.hu r2, -190(r30)
	.loc	1 39 37                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:39:37
	load.hu r17, -126(r30)
	.loc	1 46 19                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:46:19
	add.hf.rn r1, r1, r11
	add.hf.rn r2, r2, r17
	.loc	1 47 19                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:47:19
	hfloat2float.rn r19, r1
	hfloat2float.rn r20, r2
.Ltmp1:
	.file	2 "/home/zhaoweiming/f06-resources-20261102/env/lib/python3.10/site-packages/triton/language" "standard.py"
	.loc	2 263 15                        # standard.py:263:15
	blt.s r7, r13, .LBB0_4
# %bb.3:                                # %.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r1, zero, 0
	j .LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	load.hu r1, -188(r30)
	load.hu r11, -124(r30)
	load.hu r2, -186(r30)
	load.hu r17, -122(r30)
	add.hf.rn r1, r1, r11
	add.hf.rn r2, r2, r17
	hfloat2float.rn r1, r1
	hfloat2float.rn r2, r2
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r19, r1
	add.f.rn r2, r20, r2
	add.f.rn r1, r1, r2
.LBB0_5:                                # %.critedge
                                        #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r2,  -196(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r24, zero, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	loads.w r11, 0(r23)
	loads.w r21, 4(r23)
	loads.w r17, 8(r23)
	loads.w r2, 12(r23)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r11, r21
	loads.w r11, 16(r23)
	add.f.rn r1, r1, r17
	add.f.rn r1, r1, r2
	loads.w r2, 20(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 24(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 28(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 32(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 36(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 40(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 44(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 48(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 52(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 56(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 60(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 64(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 68(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 72(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 76(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 80(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 84(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 88(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 92(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 96(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 100(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 104(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 108(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 112(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 116(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 120(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 124(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 128(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 132(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 136(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 140(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 144(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 148(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 152(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 156(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 160(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 164(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 168(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 172(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 176(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 180(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 184(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 188(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 192(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 196(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 200(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 204(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 208(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 212(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 216(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 220(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 224(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 228(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 232(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 236(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 240(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 244(r23)
	add.f.rn r1, r1, r11
	loads.w r11, 248(r23)
	add.f.rn r1, r1, r2
	loads.w r2, 252(r23)
	add.f.rn r1, r1, r11
	add.f.rn r1, r1, r2
	stores.w r1, 0(r23)
.Ltmp2:
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r1, 0(r23)
	.loc	1 56 21 is_stmt 1               # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:56:21
	mul.f.rn r17, r1, r18
.Ltmp3:
	.loc	2 263 15                        # standard.py:263:15
	blt.s r7, r13, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15 is_stmt 0                # standard.py:0:15
	addli r1, zero, 0
	j .LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	load.hu r1, -188(r30)
	load.hu r7, -124(r30)
	load.hu r2, -186(r30)
	load.hu r11, -122(r30)
	add.hf.rn r1, r1, r7
	add.hf.rn r2, r2, r11
	sub.f.rn r7, r19, r17
	sub.f.rn r11, r20, r17
	hfloat2float.rn r1, r1
	hfloat2float.rn r2, r2
	mul.f.rn r7, r7, r7
	mul.f.rn r11, r11, r11
	sub.f.rn r1, r1, r17
	sub.f.rn r2, r2, r17
	mul.f.rn r1, r1, r1
	mul.f.rn r2, r2, r2
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r1
	add.f.rn r2, r11, r2
	add.f.rn r1, r1, r2
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	loadli.w r2,  -208(r30)                 # 4-byte Folded Reload
	stores.w r1, 0(r2)
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	bneq r24, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_2 Depth=1
	loads.w r7, 0(r25)
	loads.w r19, 4(r25)
	loads.w r11, 8(r25)
	loads.w r2, 12(r25)
	.loc	2 263 15                        # standard.py:263:15
	add.f.rn r1, r7, r19
	loads.w r7, 16(r25)
	add.f.rn r1, r1, r11
	add.f.rn r1, r1, r2
	loads.w r2, 20(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 24(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 28(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 32(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 36(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 40(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 44(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 48(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 52(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 56(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 60(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 64(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 68(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 72(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 76(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 80(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 84(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 88(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 92(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 96(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 100(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 104(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 108(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 112(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 116(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 120(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 124(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 128(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 132(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 136(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 140(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 144(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 148(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 152(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 156(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 160(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 164(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 168(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 172(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 176(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 180(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 184(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 188(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 192(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 196(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 200(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 204(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 208(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 212(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 216(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 220(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 224(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 228(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 232(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 236(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 240(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 244(r25)
	add.f.rn r1, r1, r7
	loads.w r7, 248(r25)
	add.f.rn r1, r1, r2
	loads.w r2, 252(r25)
	add.f.rn r1, r1, r7
	add.f.rn r1, r1, r2
	stores.w r1, 0(r25)
.Ltmp4:
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	2 0 15                          # standard.py:0:15
	mfence { lm, sm, gm }
	csr_set csr3, r4
	sync_group
	loads.w r1, 0(r25)
	.loc	1 66 20 is_stmt 1               # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:66:20
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	addli r19, r28, 2
	addli r7, r28, 4
	.loc	1 64 21                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:64:21
	mul.f.rn r1, r1, r18
	.loc	1 66 20                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:66:20
	add.f.rn r1, r1, r2
	loadli.w r2,  -220(r30)                 # 4-byte Folded Reload
	add.s r21, r2, r16
	loadli.w r2,  -224(r30)                 # 4-byte Folded Reload
	.loc	1 67 28                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:67:28
	sqrt.f.rn r1, r1
	add.s r11, r2, r16
	lui r2, 260096
	div.f.rn r22, r2, r1
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	addli r2, zero, 0
	add.s r20, r1, r16
	addli r16, r28, 6
	addli r1, zero, 1
.LBB0_13:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 40 38                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:40:38
	slli r2, r2, 1
	.loc	1 39 37                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:39:37
	add.s r3, r28, r2
	.loc	1 38 46                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:46
	add.s r6, r26, r2
	.loc	1 40 38                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:40:38
	add.s r2, r10, r2
	.loc	1 38 46                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:46
	load.hu r13, 0(r6)
	.loc	1 39 37                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:39:37
	load.hu r27, 0(r3)
	.loc	1 38 46                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:38:46
	load.hu r6, 2(r6)
	.loc	1 39 37                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:39:37
	load.hu r8, 2(r3)
	.loc	1 46 19                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:46:19
	add.hf.rn r6, r6, r8
	add.hf.rn r9, r13, r27
	.loc	1 47 19                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:47:19
	hfloat2float.rn r8, r9
	hfloat2float.rn r6, r6
	.loc	1 40 38                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:40:38
	load.hu r9, 0(r2)
	load.hu r2, 2(r2)
	.loc	1 57 20                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:57:20
	sub.f.rn r8, r8, r17
	sub.f.rn r6, r6, r17
	.loc	1 40 77                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:40:77
	hfloat2float.rn r9, r9
	hfloat2float.rn r2, r2
	.loc	1 68 20                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:68:20
	mul.f.rn r8, r22, r8
	mul.f.rn r6, r22, r6
	.loc	1 70 20                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:70:20
	add.f.rn r2, r6, r2
	add.f.rn r8, r8, r9
	.loc	1 72 48                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:72:48
	andi r6, r1, 1
	float2hfloat.rn r1, r8
	float2hfloat.rn r2, r2
	store.h r1, 0(r3)
	store.h r2, 2(r3)
	addli r2, zero, 2
	addli r1, zero, 0
	mfence { lm }
	bneq r6, zero, .LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 48 is_stmt 0                # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:0:48
	load.d r[17:18], 24(r30)
	.loc	1 72 48                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:72:48
	lui r3, 983040
	.loc	1 72 25                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:72:25
	sext_int2long r[1:2], r21
	addli r6, zero, 1
	sext_int2long r[20:21], r20
	.loc	1 72 48                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:72:48
	or r3, r12, r3
	.loc	1 72 25                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:72:25
	sll.d r[1:2], r[1:2], r6
	add.ul r[8:9], r[17:18], r[14:15]
	sext_int2long r[13:14], r11
	add.ul r[1:2], r[17:18], r[1:2]
	.loc	1 72 48                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:72:48
	s_lm2gm r3, r28, 0(r[8:9])
	lui r3, 983040
	.loc	1 72 25                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:72:25
	sll.d r[13:14], r[13:14], r6
	sll.d r[8:9], r[20:21], r6
	.loc	1 72 48                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:72:48
	or r3, r12, r3
	.loc	1 72 25                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:72:25
	add.ul r[13:14], r[17:18], r[13:14]
	add.ul r[8:9], r[17:18], r[8:9]
	lui r18, 243712
	.loc	1 72 48                         # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:72:48
	s_lm2gm r3, r19, 0(r[1:2])
	lui r1, 983040
	lui r2, 983040
	or r1, r12, r1
	or r2, r12, r2
	s_lm2gm r1, r7, 0(r[13:14])
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	s_lm2gm r2, r16, 0(r[8:9])
	addli r13, zero, 32
	mfence { lm }
	add.s r5, r5, r1
	loadli.w r1,  -200(r30)                 # 4-byte Folded Reload
	blt.s r5, r1, .LBB0_2
.LBB0_15:                               # %._crit_edge
	.loc	1 72 4 epilogue_begin           # cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py:72:4
	addli sp, sp, 256
	mfence { lm, sm, gm }
	exit
.Ltmp5:
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
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
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
	.byte	1                               # Abbrev [1] 0xb:0x74 DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x2c:0x52 DW_TAG_subprogram
	.long	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	38                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x39:0x22 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	53                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x49:0x11 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x5b:0x22 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp3                          # DW_AT_low_pc
	.long	.Ltmp4-.Ltmp3                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	61                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x6b:0x11 DW_TAG_inlined_subroutine
	.long	38                              # DW_AT_abstract_origin
	.long	.Ltmp3                          # DW_AT_low_pc
	.long	.Ltmp4-.Ltmp3                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.short	296                             # DW_AT_call_line
	.byte	36                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciz	"triton"                        # string offset=0
.Linfo_string1:
.asciz	"cu3567nbz4aiomfmdzgr4ningcqjytw5khqjdurhdn4azgwsznf7.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/inductor/u3" # string offset=63
.Linfo_string3:
.asciz	"triton_unk_fused_0"            # string offset=140
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
