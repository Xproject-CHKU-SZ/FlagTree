	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/vl" "cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py"
	.loc	1 22 0                          # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4216
	addli r30, sp, 4152
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	core_id r6
	loadli.w r14,  32(r30)
	xsignal_mode_cfg r1
	beq r6, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:0:26
	lui r1, 1048575
	ori r1, r1, 4095
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	addli r2, zero, 2
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	addli r3, zero, 3
	unlock r2
	addli r2, zero, 11
	csr_set csr3, r1
	addli r1, zero, 5
	sync_group
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	addli r1, zero, 9
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
.LBB0_3:
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	storeli.w zero, -1024(r30)
	storeli.w zero, -2048(r30)
	storeli.w zero, -3072(r30)
	storeli.w zero, -4096(r30)
	mul.s r1, r2, r1
	addli r2, r4, 0
	fmac.s r2, r1, r3
	mul.s r3, r1, r3
	addli r2, r2, -1
	div.s r2, r2, r4
	load_param_i r4, 0
	mul.s r1, r2, r4
	fmac.s r2, r2, r4
	min.s r2, r2, r3
	ble.s r2, r1, .LBB0_38
# %bb.4:                                # %.lr.ph
	sext_int2long r[2:3], r2
	addli r4, r30, -4128
	sext_int2long r[11:12], r1
	loadli.w r26,  -2048(r30)
	loadli.w r8,  -3072(r30)
	loadli.w r28,  -4096(r30)
	addli r25, zero, 2
	addli r10, zero, 5
	addli r13, zero, 4
	addli r15, zero, 1
	addli r16, zero, 255
	lui r17, 256
	addli r18, zero, 7
	addli r19, zero, 6
	addli r27, zero, 3
	addli r22, zero, 64
	addli r23, zero, 32
	addli r24, zero, 16
	store.d r[2:3], 0(r4)                   # 8-byte Folded Spill
	addli r2, zero, 1023
	loadli.w r3,  -1024(r30)
	addli r4, r30, -4152
	lui r1, 1048575
	store.d r[1:2], 0(r4)                   # 8-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.split17.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 89 25 is_stmt 1               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	add.s r8, r8, r1
	addli r1, r30, -4112
	.loc	1 73 26                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	addli r28, r28, 4
	addli r26, r26, 4
	addli r3, r3, 4
	core_id r6
	addli r10, zero, 5
	load.d r[11:12], 0(r1)                  # 8-byte Folded Reload
.LBB0_6:                                # %.thread93
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:0:26
	addli r4, r30, -4128
	addli.d r[11:12], r[11:12], 1
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	setlt.sl r1, r[11:12], r[1:2]
	beq r1, zero, .LBB0_38
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	div.s r1, r11, r14
	loadli.w r2,  28(r30)
	addli r7, zero, 8
	.loc	1 73 26                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	core_id r5
	div.s r1, r1, r2
	.loc	1 53 22 is_stmt 1               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:53:22
	addli r2, zero, 256
	div.s r6, r1, r2
	.loc	1 54 41                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:54:41
	slli r2, r6, 3
	.loc	1 54 30 is_stmt 0               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:54:30
	sub.s r4, r25, r2
	.loc	1 54 50                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:54:50
	min.s r7, r4, r7
	.loc	1 55 40 is_stmt 1               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:55:40
	mod.s r4, r1, r7
	.loc	1 55 34 is_stmt 0               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:55:34
	add.s r2, r2, r4
	addli r4, r30, -4120
	.loc	1 95 15 is_stmt 1               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:95:15
	zext_int2long r[20:21], r2
	store.d r[20:21], 0(r4)                 # 8-byte Folded Spill
	zext_int2long r[20:21], r23
	.loc	1 73 26                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	addli r4, r30, -4104
	store.d r[20:21], 0(r4)                 # 8-byte Folded Spill
	bneq r5, r13, .LBB0_9
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 11
	xwait r4, 0
	j .LBB0_14
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:0:26
	beq r5, r15, .LBB0_27
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r5, r25, .LBB0_14
# %bb.11:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 0
.LBB0_12:                               # %.thread.us21
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	add.s r2, r8, r1
	add.s r4, r28, r1
	xwait r25, 0
	xwait r10, 0
	lock zero, zero
	.loc	1 73 26                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	addli r1, r1, 1
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	ds_cfg r27, zero, 0
	.loc	1 81 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:20
	mod.s r2, r2, r16
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	mod.s r4, r4, r16
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:20
	slli r2, r2, 12
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	slli r4, r4, 11
	.loc	1 81 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:20
	addli r2, r2, 4096
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	shuffle_batch r4, r2, r24, 1
	unlock zero
	xsignal r27, 0
	xsignal r13, 0
	bneq r1, r13, .LBB0_12
# %bb.13:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	addli r26, r26, 4
	addli r3, r3, 4
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	add.s r28, r28, r1
	add.s r8, r8, r1
	.loc	1 73 26                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	core_id r6
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	j .LBB0_6
.LBB0_14:                               # %.split.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 25 is_stmt 0                # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:0:25
	addli r4, r30, -4112
	slli r2, r2, 5
	addli r9, zero, 0
	addli r21, zero, 5
	store.d r[11:12], 0(r4)                 # 8-byte Folded Spill
	slli r4, r6, 8
	.loc	1 73 26 is_stmt 1               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	storeli.w r2, -4140(r30)                # 4-byte Folded Spill
	addli r6, r30, -4136
	.loc	1 0 0 is_stmt 0                 # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:0:0
	sub.s r1, r1, r4
	div.s r1, r1, r7
	addli r7, zero, 8
	zext_int2long r[4:5], r1
	slli r1, r1, 5
	sll.d r[4:5], r[4:5], r10
	.loc	1 73 26                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	storeli.w r1, -4144(r30)                # 4-byte Folded Spill
	load.d r[1:2], 8(r30)
	sll.d r[4:5], r[4:5], r15
	store.d r[4:5], 0(r6)                   # 8-byte Folded Spill
	add.ul r[11:12], r[1:2], r[4:5]
	addli r1, zero, 0
	core_id r6
	j .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25 is_stmt 1               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	addli r4, zero, 9
	xwait r19, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r27, zero, 0
	ds_cfg r22, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r10, r2, r24, 2
	unlock zero
	xsignal r18, 0
	xsignal r7, 0
	.loc	1 73 26                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	addli r9, r9, 1
	bneq r9, r13, .LBB0_25
	j .LBB0_26
.LBB0_16:                               # %.split
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	add.s r14, r3, r1
	add.s r25, r26, r1
	add.s r20, r28, r1
	.loc	1 86 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:86:20
	mod.s r2, r14, r16
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	mod.s r4, r25, r16
	.loc	1 86 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:86:20
	slli r2, r2, 11
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	slli r10, r4, 11
	.loc	1 86 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:86:20
	add.s r2, r2, r17
	beq r6, r18, .LBB0_15
# %bb.17:                               # %.split
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 20 is_stmt 0                # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:0:20
	bneq r6, r19, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 86 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:86:25
	zext_int2long r[4:5], r9
	.loc	1 86 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:86:20
	addli r10, zero, 15
	xwait r18, 0
	lock zero, r13
	dma_cfg r15, r15, zero, 0
	sll.d r[4:5], r[4:5], r10
	add.ul r[4:5], r[11:12], r[4:5]
	dma_cfg zero, r5, zero, 2
	dma_cfg r2, r4, r22, 3
	addli r2, zero, 128
	addli r4, zero, 2048
	dma_cfg r2, r4, r24, 4
	dma_run zero
	unlock r13
	xsignal r19, 0
	.loc	1 73 26 is_stmt 1               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	addli r9, r9, 1
	bneq r9, r13, .LBB0_25
	j .LBB0_26
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	bneq r6, r13, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 0 is_stmt 0                 # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:0:0
	mod.s r2, r20, r16
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	xwait r13, 0
	xwait r7, 0
	lock zero, r15
	mm_cfg r23, r24, r23, 0
	mm_cfg r15, r15, r15, 2
	.loc	1 0 0                           # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:0:0
	slli r2, r2, 11
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	beq r1, zero, .LBB0_23
# %bb.21:                               # %.preheader8
                                        #   in Loop: Header=BB0_16 Depth=2
	mm_acc zero, r2, r10, 5
	j .LBB0_24
.LBB0_22:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 73 26 is_stmt 1               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	addli r9, r9, 1
	bneq r9, r13, .LBB0_25
	j .LBB0_31
.LBB0_23:                               # %.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	mm zero, r2, r10, 5
.LBB0_24:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 73 26                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	addli r9, r9, 1
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	addli r2, zero, 9
	unlock r15
	xsignal r21, 0
	xsignal r2, 0
	.loc	1 73 26                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	beq r9, r13, .LBB0_34
.LBB0_25:                               # %.split.backedge
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 89 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:89:25
	addli r1, r1, 1
	j .LBB0_16
.LBB0_26:                               # %.split17
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:86:20
	addli r8, r8, 4
	.loc	1 73 26                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	bneq r6, r13, .LBB0_32
	j .LBB0_35
.LBB0_27:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:0:26
	addli r2, r30, -4120
	addli r1, r30, -4112
	load.d r[4:5], 0(r2)                    # 8-byte Folded Reload
	store.d r[11:12], 0(r1)                 # 8-byte Folded Spill
	addli r1, zero, 11
	sll.d r[11:12], r[4:5], r1
	addli r4, r30, -4152
	load.d r[1:2], 0(r4)                    # 8-byte Folded Reload
	and.d r[4:5], r[11:12], r[1:2]
	addli r1, zero, 0
	j .LBB0_29
.LBB0_28:                               # %.thread.us
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 81 25 is_stmt 1               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:25
	sub.sl r[9:10], r[6:7], r[9:10]
	zext_int2long r[20:21], r22
	.loc	1 81 20 is_stmt 0               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:20
	sll.d r[6:7], r[6:7], r15
	.loc	1 0 0                           # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:0:0
	add.s r2, r8, r1
	.loc	1 81 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:20
	xwait r27, 0
	lock zero, r13
	.loc	1 73 26 is_stmt 1               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	addli r1, r1, 1
	.loc	1 81 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:20
	dma_cfg r15, r15, zero, 0
	.loc	1 81 25 is_stmt 0               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:25
	div.sl r[9:10], r[9:10], r[20:21]
	.loc	1 81 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:20
	load.d r[20:21], 0(r30)
	.loc	1 81 0                          # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:0
	mod.s r2, r2, r16
	.loc	1 81 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:20
	add.ul r[6:7], r[20:21], r[6:7]
	dma_cfg zero, r7, zero, 2
	.loc	1 81 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:25
	addli zero, r30, -4104
	.loc	1 81 0                          # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:0
	slli r2, r2, 12
	.loc	1 81 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:25
	load.d r[20:21], 0(zero)                # 8-byte Folded Reload
	xor zero, zero, zero
	.loc	1 81 0                          # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:0
	addli r2, r2, 4096
	.loc	1 81 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:20
	dma_cfg r2, r6, r23, 3
	addli r2, zero, 128
	.loc	1 81 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:25
	min.sl r[20:21], r[9:10], r[20:21]
	sub.sl r[9:10], r[20:21], r[9:10]
	.loc	1 81 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:20
	addli r9, r9, 32
	dma_cfg r2, r2, r9, 4
	dma_run zero
	unlock r13
	xsignal r25, 0
	.loc	1 73 26 is_stmt 1               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	beq r1, r13, .LBB0_5
.LBB0_29:                               # %.thread.us
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:86:25
	zext_int2long r[6:7], r1
	addli r2, zero, 4095
	sll.d r[6:7], r[6:7], r13
	zext_int2long r[9:10], r2
	.loc	1 81 25                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:81:25
	add.ul r[6:7], r[6:7], r[11:12]
	setlt.ul r2, r[9:10], r[6:7]
	addli.d r[9:10], r[4:5], 0
	bneq r2, zero, .LBB0_28
# %bb.30:                               # %.thread.us
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 0 25 is_stmt 0                # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:0:25
	zext_int2long r[9:10], zero
	j .LBB0_28
.LBB0_31:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20 is_stmt 1               # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:86:20
	addli r8, r8, 4
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 20 is_stmt 0                # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:0:20
	addli r1, r30, -4112
	.loc	1 101 67 is_stmt 1              # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:101:67
	addli r28, r20, 1
	addli r26, r25, 1
	addli r3, r14, 1
	load.d r[11:12], 0(r1)                  # 8-byte Folded Reload
	bneq r6, zero, .LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r1,  -4144(r30)                # 4-byte Folded Reload
	addli r4, zero, 992
	loadli.w r6,  -4140(r30)                # 4-byte Folded Reload
	addli r9, r30, -4104
	addli r14, r30, -4120
	addli r25, zero, 2
	zext_int2long r[4:5], r4
	load.d r[20:21], 0(r9)                  # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	sext_int2long r[6:7], r6
	min.ul r[4:5], r[1:2], r[4:5]
	min.sl r[9:10], r[6:7], r[20:21]
	addli.d r[4:5], r[4:5], 32
	addli.d r[9:10], r[9:10], 32
	max.ul r[4:5], r[4:5], r[1:2]
	sub.sl r[1:2], r[4:5], r[1:2]
	max.sl r[4:5], r[9:10], r[6:7]
	load.d r[9:10], 0(r14)                  # 8-byte Folded Reload
	addli r14, r30, -4136
	sub.sl r[4:5], r[4:5], r[6:7]
	load.d r[6:7], 16(r30)
	min.ul r[1:2], r[1:2], r[20:21]
	sll.d r[9:10], r[9:10], r24
	slli r1, r1, 2
	min.sl r[4:5], r[4:5], r[20:21]
	addli r2, zero, 2048
	add.ul r[6:7], r[6:7], r[9:10]
	load.d r[9:10], 0(r14)                  # 8-byte Folded Reload
	add.ul r[6:7], r[6:7], r[9:10]
	addli r9, zero, 10
	addli r10, zero, 5
	xwait r9, 0
	lock zero, r10
	dma_cfg r15, zero, zero, 0
	dma_cfg zero, r15, zero, 1
	dma_cfg r7, zero, zero, 2
	dma_cfg r6, zero, r1, 3
	addli r1, zero, 128
	.loc	1 73 26                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	core_id r6
	.loc	1 101 67                        # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:101:67
	dma_cfg r2, r1, r4, 4
	addli r1, zero, 11
	dma_run zero
	unlock r10
	xsignal r1, 0
	j .LBB0_37
.LBB0_34:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 86 20                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:86:20
	addli r8, r8, 4
.LBB0_35:                               # %.thread7
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 73 26                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	addli r1, zero, 10
	.loc	1 101 67                        # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:101:67
	addli r28, r20, 1
	addli r26, r25, 1
	addli r3, r14, 1
	.loc	1 73 26                         # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:73:26
	xsignal r1, 0
	addli r1, r30, -4112
	load.d r[11:12], 0(r1)                  # 8-byte Folded Reload
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 26 is_stmt 0                # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:0:26
	addli r25, zero, 2
	addli r10, zero, 5
.LBB0_37:                               # %.thread93
                                        #   in Loop: Header=BB0_7 Depth=1
	loadli.w r14,  32(r30)
	j .LBB0_6
.LBB0_38:                               # %._crit_edge
	.loc	1 22 0 is_stmt 1                # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:22:0
	xsignal zero, 0
	bneq r6, zero, .LBB0_40
# %bb.39:
	.loc	1 0 0 is_stmt 0                 # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:22:0
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
.LBB0_40:
	.loc	1 22 0 epilogue_begin           # cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py:22:0
	addli sp, sp, 4152
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
	.long	4216                            # 0x1078
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
.asciz	"cvl3e4woahpylev45yzmtvxrtuzrhcg2wq36rqiaacmwmv2i6pfb.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/inductor/vl" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
