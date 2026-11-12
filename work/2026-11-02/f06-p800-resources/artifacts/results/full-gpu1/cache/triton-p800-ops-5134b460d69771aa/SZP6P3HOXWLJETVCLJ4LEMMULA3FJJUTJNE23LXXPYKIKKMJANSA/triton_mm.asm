	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/la" "clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py"
	.loc	1 22 0                          # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:22:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -4208
	addli r30, sp, 4144
	addli r1, zero, 1
.Ltmp0:
	.loc	1 73 26 prologue_end            # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	core_id r9
	loadli.w r13,  32(r30)
	xsignal_mode_cfg r1
	beq r9, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 26 is_stmt 0                # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:0:26
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	loadli.w r3,  28(r30)
	load_param_i r5, 1
	loadli.w r4,  32(r30)
	storeli.w zero, -1024(r30)
	storeli.w zero, -2048(r30)
	storeli.w zero, -3072(r30)
	storeli.w zero, -4096(r30)
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
	ble.s r3, r1, .LBB0_39
# %bb.4:                                # %.lr.ph
	sext_int2long r[6:7], r1
	loadli.w r1,  -1024(r30)
	loadli.w r26,  -2048(r30)
	loadli.w r10,  -3072(r30)
	loadli.w r5,  -4096(r30)
	sext_int2long r[3:4], r3
	addli r2, r30, -4120
	addli r16, zero, 64
	addli r12, zero, 8
	addli r22, zero, 5
	addli r15, zero, 4
	addli r17, zero, 2
	addli r18, zero, 255
	lui r19, 256
	addli r20, zero, 7
	addli r21, zero, 6
	addli r23, zero, 32
	addli r24, zero, 16
	addli r28, zero, 128
	addli r27, zero, 2047
	addli r25, zero, 3
	store.d r[3:4], 0(r2)                   # 8-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.split17.us
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -4104
	loadli.w r13,  32(r30)
	.loc	1 73 26                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	addli r5, r5, 4
	addli r26, r26, 4
	addli r1, r1, 4
	.loc	1 89 25 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	add.s r10, r10, r3
	addli r12, zero, 8
	.loc	1 73 26                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	core_id r9
.LBB0_6:                                # %.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:0:26
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
.LBB0_7:                                # %.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, r30, -4120
	addli.d r[6:7], r[6:7], 1
	load.d r[3:4], 0(r2)                    # 8-byte Folded Reload
	setlt.sl r3, r[6:7], r[3:4]
	beq r3, zero, .LBB0_39
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	div.s r3, r6, r13
	loadli.w r4,  28(r30)
	addli r2, r30, -4104
	addli r8, zero, 1
	.loc	1 73 26                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	addli r14, r30, -4112
	store.d r[6:7], 0(r2)                   # 8-byte Folded Spill
	div.s r4, r3, r4
	.loc	1 53 22 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:53:22
	div.s r7, r4, r16
	.loc	1 54 41                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:54:41
	slli r3, r7, 3
	.loc	1 54 30 is_stmt 0               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:54:30
	sub.s r6, r8, r3
	.loc	1 54 50                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:54:50
	min.s r11, r6, r12
	.loc	1 55 40 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:55:40
	mod.s r6, r4, r11
	.loc	1 55 34 is_stmt 0               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:55:34
	add.s r6, r3, r6
	.loc	1 95 15 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:95:15
	zext_int2long r[2:3], r6
	.loc	1 73 26                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	store.d r[2:3], 0(r14)                  # 8-byte Folded Spill
	addli r2, zero, 1
	bneq r9, r15, .LBB0_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	xwait r3, 0
	j .LBB0_15
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:0:26
	beq r9, r8, .LBB0_30
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r9, r17, .LBB0_15
# %bb.12:                               # %.thread.us21.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 0
	addli r7, zero, 3
.LBB0_13:                               # %.thread.us21
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 89 25 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	add.s r4, r10, r3
	add.s r6, r5, r3
	xwait r17, 0
	xwait r22, 0
	lock zero, zero
	.loc	1 73 26                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	addli r3, r3, 1
	.loc	1 89 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	ds_cfg r17, zero, 0
	.loc	1 81 20                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:81:20
	mod.s r4, r4, r18
	.loc	1 89 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	mod.s r6, r6, r18
	ds_cfg r23, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r23, zero, 13
	.loc	1 81 20                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:81:20
	slli r4, r4, 12
	.loc	1 89 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	slli r6, r6, 11
	.loc	1 81 20                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:81:20
	addli r4, r4, 4096
	.loc	1 89 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	shuffle_batch r6, r4, r24, 1
	unlock zero
	xsignal r7, 0
	xsignal r15, 0
	bneq r3, r15, .LBB0_13
# %bb.14:                               # %.split17.split.us
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 25 is_stmt 0                # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:0:25
	addli r2, r30, -4104
	addli r25, zero, 3
	.loc	1 73 26 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	addli r26, r26, 4
	addli r1, r1, 4
	.loc	1 89 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	add.s r5, r5, r3
	add.s r10, r10, r3
	j .LBB0_6
.LBB0_15:                               # %.split.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:0:0
	slli r7, r7, 6
	slli r6, r6, 5
	addli r3, zero, 0
	addli r13, zero, 5
	sub.s r4, r4, r7
	.loc	1 73 26 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	storeli.w r6, -4136(r30)                # 4-byte Folded Spill
	load.d r[6:7], 8(r30)
	.loc	1 0 0 is_stmt 0                 # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:0:0
	div.s r4, r4, r11
	zext_int2long r[11:12], r4
	slli r4, r4, 5
	sll.d r[11:12], r[11:12], r22
	.loc	1 73 26                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	storeli.w r4, -4140(r30)                # 4-byte Folded Spill
	addli r4, r30, -4128
	sll.d r[8:9], r[11:12], r17
	addli r12, zero, 8
	store.d r[8:9], 0(r4)                   # 8-byte Folded Spill
	add.ul r[6:7], r[6:7], r[8:9]
	addli r4, zero, 0
	j .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	addli r8, zero, 9
	xwait r21, 0
	xwait r8, 0
	lock zero, zero
	ds_cfg r17, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r23, zero, 13
	shuffle_coa r14, r22, r24, 2
	unlock zero
	xsignal r20, 0
	xsignal r12, 0
	.loc	1 73 26                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	addli r3, r3, 1
	beq r3, r15, .LBB0_28
.LBB0_17:                               # %.split.backedge
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	addli r4, r4, 1
.LBB0_18:                               # %.split
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r16, r1, r4
	add.s r11, r26, r4
	add.s r27, r5, r4
	.loc	1 86 20                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:86:20
	mod.s r8, r16, r18
	.loc	1 89 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	mod.s r9, r11, r18
	.loc	1 86 20                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:86:20
	slli r8, r8, 11
	.loc	1 89 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	slli r14, r9, 11
	.loc	1 86 20                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:86:20
	add.s r22, r8, r19
	.loc	1 73 26                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	core_id r8
	beq r8, r20, .LBB0_16
# %bb.19:                               # %.split
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 26 is_stmt 0                # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:0:26
	bneq r8, r21, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 86 25 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:86:25
	zext_int2long r[8:9], r3
	.loc	1 86 20 is_stmt 0               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:86:20
	addli r14, zero, 14
	xwait r20, 0
	lock zero, r15
	dma_cfg zero, zero, zero, 0
	sll.d r[8:9], r[8:9], r14
	add.ul r[8:9], r[6:7], r[8:9]
	dma_cfg zero, r9, zero, 2
	dma_cfg r22, r8, r28, 3
	addli r8, zero, 1024
	dma_cfg r28, r8, r24, 4
	dma_run zero
	unlock r15
	xsignal r21, 0
	.loc	1 73 26 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	addli r3, r3, 1
	bneq r3, r15, .LBB0_17
	j .LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	bneq r8, r15, .LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 0 is_stmt 0                 # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:0:0
	mod.s r8, r27, r18
	addli r9, zero, 1
	.loc	1 89 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	xwait r15, 0
	xwait r12, 0
	lock zero, r9
	mm_cfg r23, r24, r23, 0
	mm_cfg r9, r9, r9, 2
	.loc	1 0 0                           # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:0:0
	slli r12, r8, 11
	.loc	1 89 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	beq r4, zero, .LBB0_25
# %bb.23:                               # %.preheader8
                                        #   in Loop: Header=BB0_18 Depth=2
	mm_acc zero, r12, r14, 8
	j .LBB0_26
.LBB0_24:                               # %.thread6.thread
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 73 26 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	addli r3, r3, 1
	bneq r3, r15, .LBB0_17
	j .LBB0_34
.LBB0_25:                               # %.preheader
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 89 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	mm zero, r12, r14, 8
.LBB0_26:                               # %.thread6.thread90
                                        #   in Loop: Header=BB0_18 Depth=2
	.loc	1 0 25 is_stmt 0                # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:0:25
	addli r2, zero, 1
	.loc	1 73 26 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	addli r3, r3, 1
	addli r12, zero, 8
	.loc	1 89 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:89:25
	addli r8, zero, 9
	unlock r9
	xsignal r13, 0
	xsignal r8, 0
	.loc	1 73 26                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	bneq r3, r15, .LBB0_17
# %bb.27:                               # %.split17.thread92
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:86:20
	addli r10, r10, 4
	.loc	1 73 26                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	core_id r9
	j .LBB0_29
.LBB0_28:                               # %.split17
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:86:20
	addli r10, r10, 4
	.loc	1 73 26                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	core_id r9
	bneq r9, r15, .LBB0_35
.LBB0_29:                               # %.thread7
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 10
	.loc	1 101 67                        # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:101:67
	addli r5, r27, 1
	addli r26, r11, 1
	addli r1, r16, 1
	.loc	1 73 26                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	xsignal r3, 0
	j .LBB0_36
.LBB0_30:                               # %.thread.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 26 is_stmt 0                # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:0:26
	addli r2, r30, -4112
	addli r3, zero, 11
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	addli r2, zero, 256
	sll.d r[6:7], r[6:7], r3
	addli r3, zero, 0
	j .LBB0_32
.LBB0_31:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	add.s r4, r10, r3
	.loc	1 81 25 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:81:25
	srl.d r[8:9], r[13:14], r21
	.loc	1 81 20 is_stmt 0               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:81:20
	load.d r[13:14], 0(r30)
	sll.d r[11:12], r[11:12], r17
	xwait r25, 0
	lock zero, r15
	.loc	1 73 26 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	addli r3, r3, 1
	.loc	1 81 20                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:81:20
	dma_cfg zero, zero, zero, 0
	.loc	1 81 0 is_stmt 0                # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:81:0
	mod.s r4, r4, r18
	.loc	1 81 20                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:81:20
	sub.s r8, r23, r8
	add.ul r[11:12], r[13:14], r[11:12]
	dma_cfg zero, r12, zero, 2
	.loc	1 81 0                          # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:81:0
	slli r4, r4, 12
	addli r4, r4, 4096
	.loc	1 81 20                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:81:20
	dma_cfg r4, r11, r16, 3
	dma_cfg r28, r2, r8, 4
	dma_run zero
	unlock r15
	xsignal r17, 0
	.loc	1 73 26 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	beq r3, r15, .LBB0_5
.LBB0_32:                               # %.thread.us
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 86 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:86:25
	zext_int2long r[11:12], r3
	zext_int2long r[8:9], r27
	sll.d r[13:14], r[11:12], r15
	.loc	1 81 25                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:81:25
	add.ul r[11:12], r[13:14], r[6:7]
	setlt.ul r4, r[8:9], r[11:12]
	bneq r4, zero, .LBB0_31
# %bb.33:                               # %.thread.us
                                        #   in Loop: Header=BB0_32 Depth=2
	.loc	1 0 25 is_stmt 0                # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:0:25
	addli.d r[13:14], r[11:12], 0
	j .LBB0_31
.LBB0_34:                               # %.split17.thread89
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 86 20 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:86:20
	addli r10, r10, 4
	.loc	1 73 26                         # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	core_id r9
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:101:67
	addli r5, r27, 1
	addli r26, r11, 1
	addli r1, r16, 1
	beq r9, zero, .LBB0_38
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 67 is_stmt 0                # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:0:67
	addli r2, r30, -4104
	loadli.w r13,  32(r30)
	addli r16, zero, 64
	addli r22, zero, 5
.LBB0_37:                               # %.thread93
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], 0(r2)                    # 8-byte Folded Reload
	addli r27, zero, 2047
	j .LBB0_7
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 101 67                        # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:101:67
	loadli.w r3,  -4140(r30)                # 4-byte Folded Reload
	addli r6, zero, 224
	loadli.w r8,  -4136(r30)                # 4-byte Folded Reload
	zext_int2long r[11:12], zero
	addli r13, r30, -4136
	addli r14, r30, -4112
	addli r22, zero, 5
	addli r16, zero, 64
	zext_int2long r[6:7], r6
	zext_int2long r[3:4], r3
	sext_int2long r[8:9], r8
	min.ul r[6:7], r[3:4], r[6:7]
	min.sl r[11:12], r[8:9], r[11:12]
	addli.d r[6:7], r[6:7], 32
	addli.d r[11:12], r[11:12], 32
	max.ul r[6:7], r[6:7], r[3:4]
	max.sl r[11:12], r[11:12], r[8:9]
	sub.sl r[3:4], r[6:7], r[3:4]
	zext_int2long r[6:7], r23
	sub.sl r[8:9], r[11:12], r[8:9]
	load.d r[11:12], 16(r30)
	min.ul r[3:4], r[3:4], r[6:7]
	min.sl r[6:7], r[8:9], r[6:7]
	addli r8, r30, -4128
	store.d r[3:4], 0(r13)                  # 8-byte Folded Spill
	load.d r[3:4], 0(r14)                   # 8-byte Folded Reload
	addli r13, zero, 15
	sll.d r[13:14], r[3:4], r13
	load.d r[3:4], 0(r8)                    # 8-byte Folded Reload
	add.ul r[11:12], r[11:12], r[13:14]
	loadli.w r13,  32(r30)
	add.ul r[8:9], r[11:12], r[3:4]
	addli r11, zero, 10
	addli r4, r30, -4136
	addli r12, zero, 8
	xwait r11, 0
	lock zero, r22
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r2, zero, 1
	load.d r[2:3], 0(r4)                    # 8-byte Folded Reload
	dma_cfg r9, zero, zero, 2
	slli r3, r2, 2
	addli r2, r30, -4104
	dma_cfg r8, zero, r3, 3
	addli r3, zero, 1024
	.loc	1 73 26 is_stmt 1               # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:73:26
	core_id r9
	.loc	1 101 67                        # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:101:67
	dma_cfg r3, r28, r6, 4
	addli r3, zero, 11
	dma_run zero
	unlock r22
	xsignal r3, 0
	j .LBB0_37
.LBB0_39:                               # %._crit_edge
	.loc	1 22 0                          # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:22:0
	xsignal zero, 0
	bneq r9, zero, .LBB0_41
# %bb.40:
	.loc	1 0 0 is_stmt 0                 # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:0:0
	addli r1, zero, 2
	.loc	1 22 0                          # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:22:0
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
.LBB0_41:
	.loc	1 22 0 epilogue_begin           # clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py:22:0
	addli sp, sp, 4144
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
	.long	4208                            # 0x1070
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
.asciz	"clautax4aatmxl4pf24hiffqap2sudylyzb2ebpxc6ydgbcuos4j.py" # string offset=7
.Linfo_string2:
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu1/cache/inductor/la" # string offset=63
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
