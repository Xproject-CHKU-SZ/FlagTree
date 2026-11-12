	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/rk" "crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py"
	.loc	1 22 0                          # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -2576
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:73:26
	core_id r2
	addli r30, sp, 2512
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:0:26
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r3, zero, 2
	uni_sram_cfg r1, r1
	lui r4, 1048575
	lock zero, r3
	ew_cfg r1, zero, zero, 16
	ori r1, r4, 4095
	unlock r3
	addli r3, zero, 11
	csr_set csr3, r1
	sync_group
	addli r1, zero, 5
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 3
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 7
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -512(r30)
	storeli.w zero, -1156(r30)
	storeli.w zero, -1672(r30)
	storeli.w zero, -2444(r30)
	mul.s r1, r3, r1
	addli r3, r5, 0
	fmac.s r3, r1, r4
	mul.s r4, r1, r4
	addli r3, r3, -1
	div.s r3, r3, r5
	load_param_i r5, 0
	mul.s r1, r3, r5
	fmac.s r3, r3, r5
	min.s r3, r3, r4
	ble.s r3, r1, .LBB0_31
# %bb.4:                                # %.lr.ph
	sext_int2long r[3:4], r3
	addli r5, r30, -2512
	loadli.w r10,  -512(r30)
	loadli.w r11,  -1156(r30)
	loadli.w r6,  -1672(r30)
	loadli.w r7,  -2444(r30)
	sext_int2long r[8:9], r1
	addli r12, zero, 32
	addli r13, zero, 1
	addli r26, zero, 6
	addli r24, zero, 5
	addli r17, zero, 4
	addli r19, zero, 2
	addli r21, zero, 192
	addli r22, zero, 128
	lui r23, 10
	addli r28, zero, 3
	addli r27, zero, 256
	addli r15, zero, 0
	store.d r[3:4], 0(r5)                   # 8-byte Folded Spill
	addli r5, zero, 7
	j .LBB0_8
.LBB0_5:                                # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:73:26
	addli r1, zero, 10
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0                           # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, r30, -2472
	loadli.w r15,  -2476(r30)               # 4-byte Folded Reload
	load.d r[8:9], 0(r1)                    # 8-byte Folded Reload
	addli r1, r30, -2512
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	setlt.sl r1, r[8:9], r[6:7]
	addli r7, r25, 1
	addli r6, r4, 1
	beq r1, zero, .LBB0_31
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	.loc	1 73 26                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:73:26
	bneq r2, r17, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26                          # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:0:26
	addli r1, r30, -2472
	loadli.w r3,  28(r30)
	addli r14, zero, 8
	addli r18, zero, 0
	store.d r[8:9], 0(r1)                   # 8-byte Folded Spill
	loadli.w r1,  32(r30)
	div.s r1, r8, r1
	mod.s r8, r15, r24
	addli r15, r15, 1
	storeli.w r15, -2476(r30)               # 4-byte Folded Spill
	div.s r1, r1, r3
	slli r8, r8, 13
	storeli.w r8, -2460(r30)                # 4-byte Folded Spill
	div.s r3, r1, r12
	slli r4, r3, 3
	slli r3, r3, 5
	sub.s r9, r13, r4
	sub.s r3, r1, r3
	min.s r9, r9, r14
	mod.s r1, r1, r9
	div.s r3, r3, r9
	add.s r1, r4, r1
	slli r4, r3, 6
	storeli.w r4, -2504(r30)                # 4-byte Folded Spill
	zext_int2long r[3:4], r3
	slli r8, r1, 5
	sll.d r[3:4], r[3:4], r26
	storeli.w r8, -2500(r30)                # 4-byte Folded Spill
	zext_int2long r[8:9], r1
	addli r1, zero, 13
	.loc	1 73 26                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:73:26
	sll.d r[14:15], r[3:4], r19
	addli r3, r30, -2496
	store.d r[8:9], 0(r3)                   # 8-byte Folded Spill
	sll.d r[3:4], r[8:9], r1
	load.d r[8:9], 8(r30)
	addli r1, r30, -2488
	store.d r[14:15], 0(r1)                 # 8-byte Folded Spill
	addli r1, r30, -2456
	add.ul r[8:9], r[8:9], r[14:15]
	store.d r[8:9], 0(r1)                   # 8-byte Folded Spill
	load.d r[8:9], 0(r30)
	addli r1, zero, 0
	add.ul r[14:15], r[8:9], r[3:4]
	addli r3, zero, 1
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25 is_stmt 1               # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:89:25
	xwait r19, 0
	xwait r24, 0
	lock zero, zero
	ds_cfg r19, zero, 0
	ds_cfg r12, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r12, zero, 13
	shuffle_batch r16, r20, r12, 1
	unlock zero
	xsignal r28, 0
	xsignal r17, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r11, r11, 1
	.loc	1 86 20                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:86:20
	addli r10, r10, 1
.LBB0_13:                               # %.thread6
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:73:26
	andi r3, r3, 1
	beq r3, zero, .LBB0_28
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:89:25
	addli r1, r1, 1
	addli r18, zero, 1
	addli r3, zero, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:86:25
	add.s r4, r6, r1
	add.s r25, r7, r1
	.loc	1 81 20                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:81:20
	mod.s r8, r4, r22
	.loc	1 89 25                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:89:25
	mod.s r9, r25, r21
	.loc	1 81 20                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:81:20
	slli r8, r8, 12
	.loc	1 89 25                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:89:25
	slli r16, r9, 12
	.loc	1 81 20                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:81:20
	add.s r20, r8, r23
	beq r2, r19, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0 is_stmt 0                 # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:0:0
	zext_int2long r[8:9], r18
	.loc	1 81 20                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:81:20
	bneq r2, r13, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	sll.d r[8:9], r[8:9], r5
	xwait r28, 0
	lock zero, r17
	dma_cfg zero, zero, zero, 0
	add.ul r[8:9], r[14:15], r[8:9]
	dma_cfg zero, r9, zero, 2
	dma_cfg r20, r8, r22, 3
	dma_cfg r22, r27, r12, 4
	dma_run zero
	unlock r17
	xsignal r19, 0
	.loc	1 89 25 is_stmt 1               # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:89:25
	j .LBB0_12
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 86 20                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:86:20
	addli r18, zero, 127
	.loc	1 89 25                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:89:25
	addli r20, zero, 160
	.loc	1 86 20                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:86:20
	mod.s r18, r10, r18
	.loc	1 89 25                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:89:25
	mod.s r20, r11, r20
	addli r11, r11, 1
	.loc	1 86 20                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:86:20
	addli r10, r10, 1
	slli r26, r18, 13
	.loc	1 89 25                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:89:25
	slli r18, r20, 13
	.loc	1 86 20                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:86:20
	lui r20, 138
	add.s r20, r26, r20
	addli r26, zero, 6
	beq r2, r5, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r2, r26, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	addli r16, zero, 15
	xwait r5, 0
	sll.d r[8:9], r[8:9], r16
	addli r16, r30, -2456
	load.d r[27:28], 0(r16)                 # 8-byte Folded Reload
	lock zero, r17
	dma_cfg zero, zero, zero, 0
	add.ul r[8:9], r[27:28], r[8:9]
	addli r27, zero, 256
	addli r28, zero, 3
	dma_cfg zero, r9, zero, 2
	dma_cfg r20, r8, r27, 3
	addli r8, zero, 1024
	dma_cfg r27, r8, r12, 4
	dma_run zero
	unlock r17
	xsignal r26, 0
	.loc	1 89 25                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:89:25
	j .LBB0_13
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	addli r8, zero, 9
	xwait r26, 0
	xwait r8, 0
	lock zero, zero
	addli r8, zero, 64
	ds_cfg r19, zero, 0
	ds_cfg r8, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r8, zero, 13
	addli r8, zero, 8
	shuffle_coa r18, r20, r12, 2
	unlock zero
	xsignal r5, 0
	xsignal r8, 0
	j .LBB0_13
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	bneq r2, r17, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r8, zero, 8
	xwait r17, 0
	xwait r8, 0
	addli r8, zero, 64
	lock zero, r13
	mm_cfg r8, r12, r12, 0
	mm_cfg r19, r19, r13, 2
	beq r1, zero, .LBB0_26
# %bb.24:                               # %.preheader8
                                        #   in Loop: Header=BB0_15 Depth=2
	loadli.w r8,  -2460(r30)                # 4-byte Folded Reload
	mm_acc r8, r16, r18, 8
	j .LBB0_27
.LBB0_25:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:73:26
	andi r3, r3, 1
	bneq r3, zero, .LBB0_14
	j .LBB0_29
.LBB0_26:                               # %.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 89 25                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:89:25
	loadli.w r8,  -2460(r30)                # 4-byte Folded Reload
	mm r8, r16, r18, 8
.LBB0_27:                               # %.thread6.thread40
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 73 26                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:73:26
	andi r3, r3, 1
	.loc	1 89 25                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:89:25
	addli r8, zero, 9
	unlock r13
	xsignal r24, 0
	xsignal r8, 0
	bneq r3, zero, .LBB0_14
	j .LBB0_5
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 73 26                         # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:73:26
	beq r2, r17, .LBB0_5
.LBB0_29:                               # %.thread39
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:101:67
	bneq r2, zero, .LBB0_7
# %bb.30:                               #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -2504(r30)                # 4-byte Folded Reload
	zext_int2long r[8:9], r21
	zext_int2long r[26:27], zero
	addli r3, r30, -2496
	addli r24, zero, 5
	zext_int2long r[6:7], r1
	loadli.w r1,  -2500(r30)                # 4-byte Folded Reload
	min.ul r[8:9], r[6:7], r[8:9]
	sext_int2long r[14:15], r1
	addli r1, zero, 64
	addli.d r[8:9], r[8:9], 64
	min.sl r[26:27], r[14:15], r[26:27]
	max.ul r[8:9], r[8:9], r[6:7]
	sub.sl r[6:7], r[8:9], r[6:7]
	addli.d r[8:9], r[26:27], 32
	zext_int2long r[26:27], r1
	addli r1, r30, -2456
	min.ul r[6:7], r[6:7], r[26:27]
	max.sl r[8:9], r[8:9], r[14:15]
	zext_int2long r[26:27], r12
	store.d r[6:7], 0(r1)                   # 8-byte Folded Spill
	load.d r[6:7], 0(r3)                    # 8-byte Folded Reload
	addli r1, zero, 15
	sub.sl r[8:9], r[8:9], r[14:15]
	addli r3, zero, 5
	min.sl r[8:9], r[8:9], r[26:27]
	addli r27, zero, 256
	addli r26, zero, 6
	sll.d r[14:15], r[6:7], r1
	load.d r[6:7], 16(r30)
	addli r1, r30, -2488
	add.ul r[14:15], r[6:7], r[14:15]
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	addli r1, zero, 10
	xwait r1, 0
	lock zero, r3
	addli r1, r30, -2456
	dma_cfg zero, zero, zero, 0
	add.ul r[14:15], r[14:15], r[6:7]
	dma_cfg zero, r13, zero, 1
	load.d r[6:7], 0(r1)                    # 8-byte Folded Reload
	dma_cfg r15, zero, zero, 2
	slli r1, r6, 2
	loadli.w r6,  -2460(r30)                # 4-byte Folded Reload
	dma_cfg r14, r6, r1, 3
	addli r1, zero, 1024
	dma_cfg r1, r27, r8, 4
	addli r1, zero, 11
	dma_run zero
	unlock r3
	j .LBB0_6
.LBB0_31:                               # %._crit_edge
	.loc	1 22 0                          # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:22:0
	xsignal zero, 0
	bneq r2, zero, .LBB0_33
# %bb.32:
	.loc	1 0 0 is_stmt 0                 # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:22:0
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
.LBB0_33:
	.loc	1 22 0 epilogue_begin           # crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py:22:0
	addli sp, sp, 2512
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
	.long	2576                            # 0xa10
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
.asciz	"crkyuyq7isll2pan6mjjgrrqul6hpiztvxtvfcixb4z2fv6xg5zr.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/rk" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
