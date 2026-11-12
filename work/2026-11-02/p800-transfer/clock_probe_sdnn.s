	.text
	.file	"clock_probe.xpu"
	.section	.text.read_clock,"ax",@progbits
	.hidden	read_clock                      # -- Begin function read_clock
	.globl	read_clock
	.type	read_clock,@function
read_clock:                             # @read_clock
# %bb.0:                                # %entry
	addli sp, sp, -8
	storeli.w r30, 4(sp)                    # 4-byte Folded Spill
	addli r30, sp, 8
	storeli.w r31, 0(sp)                    # 4-byte Folded Spill
	get_clock r[2:3]
	loadli.w r31,  0(sp)                    # 4-byte Folded Reload
	loadli.w r30,  4(sp)                    # 4-byte Folded Reload
	addli sp, sp, 8
	jr r31, 0
.Lfunc_end0:
	.size	read_clock, .Lfunc_end0-read_clock
                                        # -- End function
	.section	.text.probe_copy,"ax",@progbits
	.hidden	probe_copy                      # -- Begin function probe_copy
	.globl	probe_copy
	.type	probe_copy,@function
probe_copy:                             # @probe_copy
# %bb.0:                                # %entry
	addli sp, sp, -1040
	storeli.w r30, 1036(sp)                 # 4-byte Folded Spill
	addli r30, sp, 1040
	addli r1, zero, 1024
	lui r6, 983040
	lui r8, 983040
	storeli.w r31, 1032(sp)                 # 4-byte Folded Spill
	or r6, r1, r6
	addli r7, r30, -1040
	or r1, r1, r8
	l_gm2lm r6, r7, 0(r[2:3])
	mfence { lm, gm }
	s_lm2gm r1, r7, 0(r[4:5])
	mfence { lm, gm }
	addli sp, r30, -1040
	loadli.w r31,  1032(sp)                 # 4-byte Folded Reload
	loadli.w r30,  1036(sp)                 # 4-byte Folded Reload
	addli sp, sp, 1040
	jr r31, 0
.Lfunc_end1:
	.size	probe_copy, .Lfunc_end1-probe_copy
                                        # -- End function
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 19.1.7 (b526e9ed77e93b92ce71f434d0bfd2c7ad245c37)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
