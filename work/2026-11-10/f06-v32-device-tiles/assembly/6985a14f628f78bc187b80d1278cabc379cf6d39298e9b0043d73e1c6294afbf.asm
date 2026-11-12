000000  17200000  xor zero, zero, zero
000004  1f420000  addli r4, zero, 4
000008  1f041000  addli r8, zero, 8
00000c  9f77f0ff  addli r15, zero, -1
000010  80310002  core_id r3
000014  00510102  load_param_i r2, 2
000018  ab800000  lui r1, 8
00001c  ab020000  lui r5, 0
000020  9f82020a  addli r5, r5, 1280
000024  8b805018  sub.u r1, r1, r5
000028  1b85f100  andi r10, r3, 15
00002c  9b144000  ori r9, zero, 4
000030  3fb04100  blt.s r3, r4, 12
000034  1f45f5ff  addli r10, r10, -4
000038  9b146000  ori r9, zero, 6
00003c  0b059538  mod.u r10, r10, r9
000040  1f7a1100  addli r20, r2, 15
000044  9b454a00  srli r11, r20, 4
000048  1bc64100  srli r12, r3, 4
00004c  8b86b030  div.u r13, r1, r11
000050  1f160600  addli r12, r12, 1
000054  8b00d620  mul.u r1, r12, r13
000058  8b805010  add.u r1, r1, r5
00005c  9f8e0000  addli sp, r1, 0
000060  1bba6700  slli r20, r15, 6
000064  978e4e01  and sp, sp, r20
000068  bb003000  bneq zero, r3, 32
00006c  80520202  load_param_i r5, 4
000070  00d20102  load_param_i r4, 3
000074  ab0900f0  lui r19, 983040
000078  9f096000  addli r19, zero, 48
00007c  00200300  mfence { sm, gm }
000080  ff090200  l_gm2sm r19, zero, 0(r[5:6])
000084  00200300  mfence { sm, gm }
000088  abfa0000  lui r21, 15
00008c  9b9afaff  ori r21, r21, 4095
000090  80a10a04  csr_set csr3, r21
000094  00d00100  sync_group
000098  57160000  jal 176
00009c  00a00100  mfence { lm, sm }
0000a0  00d00100  sync_group
0000a4  fe8007e0  vmmov mr1, r15
0000a8  fe900720  vmmovh mr1, r15
0000ac  d71b0000  jal 220
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a8eff  addli r20, sp, -64
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c4  00a00100  mfence { lm, sm }
0000c8  00d00100  sync_group
0000cc  97a01000  xor r1, r1, r1
0000d0  1f8f0e00  addli r30, sp, 0
0000d4  d71b0000  jal 220
0000d8  00400000  trap
0000dc  9f8e8ed6  addli sp, sp, -5312
0000e0  1f8f0e29  addli r30, sp, 5248
0000e4  9f01000a  addli r3, zero, 1280
0000e8  abf2ffff  lui r5, 1048575
0000ec  1f130000  addli r6, zero, 1
0000f0  eb508f02  load.d r[2:3], 40(r30)
0000f4  b381312e  .word 0x2e3181b3
0000f8  9b92e2ff  ori r5, r5, 4094
0000fc  3303632c  .word 0x2c630333
000100  eb5b0f02  load.d r[24:25], 32(r30)
000104  1f045fd7  addli r8, r30, -5208
000108  b384922a  .word 0x2a9284b3
00010c  8f911166  .word 0x6611918f
000110  8bb76148  max.sl r[16:17], r[4:5], r[7:8]
000114  b3025028  .word 0x285002b3
000118  9f03dfd7  addli r7, r30, -5144
00011c  97819702  and.d r[4:5], r[16:17], r[10:11]
000120  93a15100  seteq.d r3, r[4:5], r[6:7]
000124  6b520f01  load.d r[5:6], 16(r30)
000128  1f03efd7  addli r6, r30, -5136
00012c  73304300  store.d r[5:6], 0(r6)
000130  6b528f00  load.d r[5:6], 8(r30)
000134  73b04300  store.d r[5:6], 0(r7)
000138  6b520f00  load.d r[5:6], 0(r30)
00013c  73304400  store.d r[5:6], 0(r8)
000140  bbc10102  bneq r3, zero, 1136
000144  80310002  core_id r3
000148  1f221000  addli r4, zero, 10
00014c  ab040000  lui r9, 0
000150  13023204  setlt.u r4, r4, r3
000154  9f840400  addli r9, r9, 0
000158  bb300200  bneq r4, zero, 44
00015c  1f120000  addli r4, zero, 1
000160  17323200  sll r4, r4, r3
000164  1b021241  andi r4, r4, 1041
000168  37700200  beq r4, zero, 28
00016c  1bb21000  slli r4, r1, 1
000170  ab0200f0  lui r5, 983040
000174  9f035fd7  addli r7, r30, -5208
000178  17125200  or r4, r4, r5
00017c  ebd20300  load.d r[6:7], 0(r7)
000180  7fc29200  bl_gm2lm r4, r9, 0(r[6:7])
000184  00d20002  load_param_i r4, 1
000188  80520102  load_param_i r5, 2
00018c  00560002  load_param_i r12, 0
000190  00a00000  mfence { lm }
000194  8b924220  mul.s r5, r5, r4
000198  0b163250  fmac.s r12, r4, r3
00019c  b382522a  .word 0x2a5282b3
0001a0  b3013628  .word 0x283601b3
0001a4  0f955b74  .word 0x745b950f
0001a8  8f925b62  .word 0x625b928f
0001ac  13b6a104  setlt.sl r12, r[4:5], r[11:12]
0001b0  0bb5a140  min.sl r[11:12], r[4:5], r[11:12]
0001b4  0bb53250  fmac.sl r[11:12], r[6:7], r[4:5]
0001b8  3306c628  .word 0x28c60633
0001bc  8ba1c210  add.ul r[4:5], r[6:7], r[13:14]
0001c0  8ba1a110  add.ul r[4:5], r[4:5], r[11:12]
0001c4  0b357541  min.sl r[11:12], r[11:12], r[24:25]
0001c8  8bb37141  min.sl r[8:9], r[4:5], r[24:25]
0001cc  2bf20000  lui r4, 15
0001d0  93b1a306  setle.sl r3, r[8:9], r[11:12]
0001d4  1b12f2ff  ori r4, r4, 4095
0001d8  80210204  csr_set csr3, r4
0001dc  00d00100  sync_group
0001e0  bbfd0102  bneq r3, zero, 1916
0001e4  1f470000  addli r14, zero, 4
0001e8  1f020fd8  addli r4, r30, -5120
0001ec  a382f001  andi.d r[6:7], r[2:3], 31
0001f0  1f06afd7  addli r12, r30, -5168
0001f4  0bb9a318  sub.sl r[19:20], r[8:9], r[11:12]
0001f8  1bba1000  slli r20, r1, 1
0001fc  9f1d0000  addli r27, zero, 1
000200  8b91e030  div.s r3, r1, r14
000204  73305600  store.d r[6:7], 0(r12)
000208  1f0e0214  addli r28, r4, 2560
00020c  9b124200  ori r5, r4, 4
000210  670c5fd6  storeli.w r5, -5184(r30)
000214  e70ccfd7  storeli.w r28, -5176(r30)
000218  9bbb2100  slli r23, r3, 2
00021c  9bb13100  slli r3, r3, 3
000220  0b123210  add.s r4, r4, r3
000224  0b9d9110  add.s r26, r3, r9
000228  0b9c7019  sub.s r24, r1, r23
00022c  9f01cfd7  addli r3, r30, -5152
000230  e70b4fd6  storeli.w r4, -5192(r30)
000234  1f02bfd7  addli r4, r30, -5160
000238  73b0f100  store.d r[16:17], 0(r3)
00023c  73307200  store.d r[8:9], 0(r4)
000240  db080000  j 68
000244  9f0abfd7  addli r21, r30, -5160
000248  00a00300  mfence { lm, sm, gm }
00024c  ab0100f0  lui r3, 983040
000250  1f0befd7  addli r22, r30, -5136
000254  9f0cffd7  addli r25, r30, -5128
000258  0b25f510  add.ul r[11:12], r[11:12], r[16:17]
00025c  0b39f918  sub.sl r[19:20], r[19:20], r[16:17]
000260  ebd30a00  load.d r[8:9], 0(r21)
000264  eb520b00  load.d r[6:7], 0(r22)
000268  6bd60c00  load.d r[13:14], 0(r25)
00026c  97913800  or r3, r17, r3
000270  13327504  setlt.sl r4, r[11:12], r[8:9]
000274  8ba2c210  add.ul r[6:7], r[6:7], r[13:14]
000278  ffb1c201  s_lm2gm r3, r28, 0(r[6:7])
00027c  00a00200  mfence { lm, gm }
000280  377b0202  beq r4, zero, 1756
000284  8bb1a318  sub.sl r[4:5], r[8:9], r[11:12]
000288  0b361520  mul.sl r[13:14], r[11:12], r[2:3]
00028c  9f0cffd7  addli r25, r30, -5128
000290  8bb1f140  min.sl r[4:5], r[4:5], r[16:17]
000294  9737b603  sll.d r[16:17], r[13:14], r27
000298  9f06dfd7  addli r13, r30, -5144
00029c  2b0600f0  lui r12, 983040
0002a0  8bb21120  mul.sl r[6:7], r[4:5], r[2:3]
0002a4  ebd30600  load.d r[8:9], 0(r13)
0002a8  73b0fc00  store.d r[16:17], 0(r25)
0002ac  9bb81200  slli r17, r5, 1
0002b0  8baaf310  add.ul r[22:23], r[8:9], r[16:17]
0002b4  9f230000  addli r7, zero, 2
0002b8  1796c800  or r12, r17, r12
0002bc  7fa6ca01  l_gm2lm r12, r28, 0(r[22:23])
0002c0  bf927100  blt.s r3, r7, 164
0002c4  9f07afd7  addli r15, r30, -5168
0002c8  3306c028  .word 0x28c00633
0002cc  ebd30700  load.d r[8:9], 0(r15)
0002d0  13a6c300  seteq.d r12, r[8:9], r[13:14]
0002d4  3b360600  bneq r12, zero, 396
0002d8  e30c7fd7  loadli.w r25,  -5192(r30)
0002dc  e30a8fd7  loadli.w r21,  -5184(r30)
0002e0  1f0b0000  addli r22, zero, 0
0002e4  db020000  j 20
0002e8  1f1b0b00  addli r22, r22, 1
0002ec  8b9a4a11  add.s r21, r21, r20
0002f0  8b9c4c11  add.s r25, r25, r20
0002f4  37073b00  beq r22, r3, 448
0002f8  3f81e000  blt.s r1, r14, 64
0002fc  1f060000  addli r12, zero, 0
000300  9fc60400  addli r13, r9, 4
000304  1f8e0a00  addli r28, r21, 0
000308  ebb3c6ff  load.hu r7, -4(r13)
00030c  6bb4e6ff  load.hu r8, -2(r13)
000310  ebb70600  load.hu r15, 0(r13)
000314  6bb82600  load.hu r16, 2(r13)
000318  1f460600  addli r12, r12, 4
00031c  9f861600  addli r13, r13, 8
000320  731e7efe  store.h r7, -4(r28)
000324  731f8efe  store.h r8, -2(r28)
000328  7310fe00  store.h r15, 0(r28)
00032c  73110e01  store.h r16, 2(r28)
000330  1f0e1e00  addli r28, r28, 8
000334  3f5f76ff  blt.s r12, r23, -44
000338  1f060d00  addli r12, r26, 0
00033c  9f860c00  addli r13, r25, 0
000340  1f0e0c00  addli r28, r24, 0
000344  cb9e70ff  ble.s r1, r23, -92
000348  eb330600  load.hu r7, 0(r12)
00034c  1f7efeff  addli r28, r28, -1
000350  1f260600  addli r12, r12, 2
000354  73907600  store.h r7, 0(r13)
000358  9fa60600  addli r13, r13, 2
00035c  bb3f0efe  bneq r28, zero, -20
000360  5bf1ffff  j -120
000364  00a00000  mfence { lm }
000368  abf1ffff  lui r3, 1048575
00036c  9b9101fc  ori r3, r3, 4032
000370  97813200  and r3, r5, r3
000374  3f82b101  blt.s r3, r27, 128
000378  1f020000  addli r4, zero, 0
00037c  1f8b0400  addli r22, r9, 0
000380  9f0c0e00  addli r25, r28, 0
000384  42000b02  vload.mz vr0{mr1}, 0(r22)
000388  42810c02  vload.mz vr2{mr1}, 0(r25)
00038c  9f038b00  addli r7, r22, 64
000390  1f028200  addli r4, r4, 64
000394  1f0b0b01  addli r22, r22, 128
000398  c2800302  vload.mz vr1{mr1}, 0(r7)
00039c  9f838c00  addli r7, r25, 64
0003a0  c2810302  vload.mz vr3{mr1}, 0(r7)
0003a4  06320000  vfp162float_l.rn vr4, vr0
0003a8  06330100  vfp162float_l.rn vr6, vr2
0003ac  06700000  vfp162float_h.rn vr0, vr0
0003b0  06710100  vfp162float_h.rn vr2, vr2
0003b4  86b20000  vfp162float_l.rn vr5, vr1
0003b8  86f00000  vfp162float_h.rn vr1, vr1
0003bc  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
0003c0  86b30100  vfp162float_l.rn vr7, vr3
0003c4  0e124302  vmul.f.mz.rn vr4{mr1}, vr6, vr4
0003c8  86f10100  vfp162float_h.rn vr3, vr3
0003cc  06500000  vfloat2fp16_h.rn vr0, vr0
0003d0  0e915302  vmul.f.mz.rn vr2{mr1}, vr7, vr5
0003d4  8e901102  vmul.f.mz.rn vr1{mr1}, vr3, vr1
0003d8  06100200  vfloat2fp16_l.rn vr0, vr4
0003dc  46800c02  vstore.mz vr0{mr1}, 0(r25)
0003e0  06100100  vfloat2fp16_l.rn vr0, vr2
0003e4  9f8c0c01  addli r25, r25, 128
0003e8  06d00000  vfloat2fp16_h.rn vr0, vr1
0003ec  46800302  vstore.mz vr0{mr1}, 0(r7)
0003f0  3f5e32fe  blt.s r4, r3, -108
0003f4  1f02cfd7  addli r4, r30, -5152
0003f8  eb570200  load.d r[16:17], 0(r4)
0003fc  4ba932fe  ble.s r5, r3, -440
000400  8bb32741  min.sl r[8:9], r[16:17], r[19:20]
000404  2bf2ffff  lui r4, 1048575
000408  8bb37020  mul.sl r[8:9], r[2:3], r[8:9]
00040c  1b1202f8  ori r4, r4, 3968
000410  9bb31300  slli r7, r7, 1
000414  97834300  and r7, r7, r4
000418  0b127e10  add.s r4, r28, r7
00041c  0b969310  add.s r12, r7, r9
000420  42000602  vload.mz vr0{mr1}, 0(r12)
000424  c2000202  vload.mz vr1{mr1}, 0(r4)
000428  9f814100  addli r3, r3, 32
00042c  1f068600  addli r12, r12, 64
000430  06310000  vfp162float_l.rn vr2, vr0
000434  86b10000  vfp162float_l.rn vr3, vr1
000438  06700000  vfp162float_h.rn vr0, vr0
00043c  86f00000  vfp162float_h.rn vr1, vr1
000440  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
000444  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
000448  06500000  vfloat2fp16_h.rn vr0, vr0
00044c  06100100  vfloat2fp16_l.rn vr0, vr2
000450  46000202  vstore.mz vr0{mr1}, 0(r4)
000454  1f028200  addli r4, r4, 64
000458  3faf51fe  blt.s r3, r5, -56
00045c  5bbdffff  j -536
000460  1f0b0fd8  addli r22, r30, -5120
000464  9f0c0000  addli r25, zero, 0
000468  5b020000  j 16
00046c  9f9c0c00  addli r25, r25, 1
000470  0b1b4b11  add.s r22, r22, r20
000474  37813c00  beq r25, r3, 64
000478  bfdfb0ff  blt.s r1, r27, -12
00047c  1f060000  addli r12, zero, 0
000480  9f860400  addli r13, r9, 0
000484  9f0a0b00  addli r21, r22, 0
000488  42800602  vload.mz vr0{mr1}, 0(r13)
00048c  1f064600  addli r12, r12, 32
000490  9f868600  addli r13, r13, 64
000494  86300000  vfp162float_l.rn vr1, vr0
000498  06700000  vfp162float_h.rn vr0, vr0
00049c  06500000  vfloat2fp16_h.rn vr0, vr0
0004a0  06900000  vfloat2fp16_l.rn vr0, vr1
0004a4  46800a02  vstore.mz vr0{mr1}, 0(r21)
0004a8  9f8a8a00  addli r21, r21, 64
0004ac  3f7f16fe  blt.s r12, r1, -36
0004b0  dbf7ffff  j -68
0004b4  00a00000  mfence { lm }
0004b8  abf1ffff  lui r3, 1048575
0004bc  9b9101fc  ori r3, r3, 4032
0004c0  97813200  and r3, r5, r3
0004c4  bff1b101  blt.s r3, r27, 124
0004c8  1f020fd8  addli r4, r30, -5120
0004cc  1f0b0000  addli r22, zero, 0
0004d0  1f040214  addli r8, r4, 2560
0004d4  42000202  vload.mz vr0{mr1}, 0(r4)
0004d8  9f038200  addli r7, r4, 64
0004dc  1f0b8b00  addli r22, r22, 64
0004e0  42010402  vload.mz vr2{mr1}, 0(r8)
0004e4  c2800302  vload.mz vr1{mr1}, 0(r7)
0004e8  9f038214  addli r7, r4, 2624
0004ec  1f020201  addli r4, r4, 128
0004f0  42820302  vload.mz vr4{mr1}, 0(r7)
0004f4  86310000  vfp162float_l.rn vr3, vr0
0004f8  06700000  vfp162float_h.rn vr0, vr0
0004fc  06330100  vfp162float_l.rn vr6, vr2
000500  06710100  vfp162float_h.rn vr2, vr2
000504  86b20000  vfp162float_l.rn vr5, vr1
000508  86f00000  vfp162float_h.rn vr1, vr1
00050c  86330200  vfp162float_l.rn vr7, vr4
000510  06720200  vfp162float_h.rn vr4, vr4
000514  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
000518  8e113302  vmul.f.mz.rn vr3{mr1}, vr6, vr3
00051c  0e915302  vmul.f.mz.rn vr2{mr1}, vr7, vr5
000520  8e101202  vmul.f.mz.rn vr1{mr1}, vr4, vr1
000524  06500000  vfloat2fp16_h.rn vr0, vr0
000528  06900100  vfloat2fp16_l.rn vr0, vr3
00052c  46000402  vstore.mz vr0{mr1}, 0(r8)
000530  06100100  vfloat2fp16_l.rn vr0, vr2
000534  06d00000  vfloat2fp16_h.rn vr0, vr1
000538  46800302  vstore.mz vr0{mr1}, 0(r7)
00053c  3f5e3bfe  blt.s r22, r3, -108
000540  1f02cfd7  addli r4, r30, -5152
000544  630e9fd7  loadli.w r28,  -5176(r30)
000548  eb570200  load.d r[16:17], 0(r4)
00054c  cbe332fe  ble.s r5, r3, -776
000550  8bb32741  min.sl r[8:9], r[16:17], r[19:20]
000554  2bf2ffff  lui r4, 1048575
000558  8bb37020  mul.sl r[8:9], r[2:3], r[8:9]
00055c  1b1202f8  ori r4, r4, 3968
000560  9bb31300  slli r7, r7, 1
000564  17824300  and r4, r7, r4
000568  9f030fd8  addli r7, r30, -5120
00056c  0b924310  add.s r4, r7, r4
000570  9f030214  addli r7, r4, 2560
000574  42000202  vload.mz vr0{mr1}, 0(r4)
000578  9f814100  addli r3, r3, 32
00057c  1f028200  addli r4, r4, 64
000580  c2800302  vload.mz vr1{mr1}, 0(r7)
000584  06310000  vfp162float_l.rn vr2, vr0
000588  06700000  vfp162float_h.rn vr0, vr0
00058c  86b10000  vfp162float_l.rn vr3, vr1
000590  86f00000  vfp162float_h.rn vr1, vr1
000594  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
000598  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
00059c  06500000  vfloat2fp16_h.rn vr0, vr0
0005a0  06100100  vfloat2fp16_l.rn vr0, vr2
0005a4  46800302  vstore.mz vr0{mr1}, 0(r7)
0005a8  3faf51fe  blt.s r3, r5, -56
0005ac  5b93ffff  j -872
0005b0  9f010004  addli r3, zero, 512
0005b4  27f2f003  addli.d r[5:6], r[2:3], 511
0005b8  00530102  load_param_i r6, 2
0005bc  b384912e  .word 0x2e9184b3
0005c0  8f119266  .word 0x6692118f
0005c4  80d20002  load_param_i r5, 1
0005c8  0b135320  mul.s r6, r6, r5
0005cc  3303632c  .word 0x2c630333
0005d0  a3b10102  slli.d r[4:5], r[4:5], 32
0005d4  a3d10102  srai.d r[4:5], r[4:5], 32
0005d8  8bb17121  mul.sl r[4:5], r[4:5], r[24:25]
0005dc  8f956176  .word 0x7661958f
0005e0  8f966162  .word 0x6261968f
0005e4  00330002  core_id r6
0005e8  80530002  load_param_i r7, 0
0005ec  8b936250  fmac.s r7, r5, r6
0005f0  b382532e  .word 0x2e5382b3
0005f4  8bb8b240  min.sl r[18:19], r[6:7], r[12:13]
0005f8  8bb85650  fmac.sl r[18:19], r[14:15], r[6:7]
0005fc  93b2b204  setlt.sl r5, r[6:7], r[12:13]
000600  9f058fd7  addli r11, r30, -5184
000604  8bb33840  min.sl r[8:9], r[18:19], r[4:5]
000608  8f997367  .word 0x6773998f
00060c  8f977377  .word 0x7773978f
000610  b382522a  .word 0x2a5282b3
000614  8ba25610  add.ul r[6:7], r[14:15], r[6:7]
000618  8ba21211  add.ul r[6:7], r[6:7], r[18:19]
00061c  8bb23240  min.sl r[6:7], r[6:7], r[4:5]
000620  1f121000  addli r4, zero, 9
000624  93b17206  setle.sl r3, r[6:7], r[8:9]
000628  73b05500  store.d r[6:7], 0(r11)
00062c  97ba4902  sll.d r[22:23], r[20:21], r4
000630  1f020fd8  addli r4, r30, -5120
000634  8bb25019  sub.sl r[6:7], r[2:3], r[22:23]
000638  1f0a0210  addli r20, r4, 2048
00063c  0bbd9240  min.sl r[27:28], r[6:7], r[10:11]
000640  abf2ffff  lui r5, 1048575
000644  3bf10100  bneq r3, zero, 92
000648  1f075fd7  addli r14, r30, -5208
00064c  9f120000  addli r5, zero, 1
000650  ab0500f0  lui r11, 983040
000654  1b331d00  slli r6, r26, 1
000658  8bb81720  mul.sl r[18:19], r[16:17], r[2:3]
00065c  6b560700  load.d r[13:14], 0(r14)
000660  97b45a02  sll.d r[10:11], r[22:23], r5
000664  9715b300  or r11, r6, r11
000668  97b85802  sll.d r[18:19], r[18:19], r5
00066c  0b269610  add.ul r[13:14], r[13:14], r[10:11]
000670  ff254600  l_gm2lm r11, r4, 0(r[13:14])
000674  1f06dfd7  addli r12, r30, -5144
000678  6b520600  load.d r[5:6], 0(r12)
00067c  ab0500f0  lui r11, 983040
000680  1713b300  or r6, r6, r11
000684  0b221211  add.ul r[5:6], r[5:6], r[18:19]
000688  0b229210  add.ul r[5:6], r[5:6], r[10:11]
00068c  7f234201  l_gm2lm r6, r20, 0(r[5:6])
000690  a7820a00  addli.d r[6:7], r[22:23], 0
000694  00a00200  mfence { lm, gm }
000698  37d00100  beq r3, zero, 20
00069c  5b580000  j 704
0006a0  1b92f2ff  ori r4, r5, 4095
0006a4  b3125228  .word 0x285212b3
0006a8  bbda0100  bneq r3, zero, 692
0006ac  1f020fd8  addli r4, r30, -5120
0006b0  9f010004  addli r3, zero, 512
0006b4  9f046fd7  addli r9, r30, -5200
0006b8  9f180000  addli r17, zero, 1
0006bc  1f070000  addli r14, zero, 0
0006c0  670e0fd6  storeli.w zero, -5152(r30)
0006c4  1f020210  addli r4, r4, 2048
0006c8  e70d4fd6  storeli.w r4, -5160(r30)
0006cc  b381312e  .word 0x2e3181b3
0006d0  73b03400  store.d r[4:5], 0(r9)
0006d4  9f010fd8  addli r3, r30, -5120
0006d8  670d3fd6  storeli.w r3, -5168(r30)
0006dc  9f017fd7  addli r3, r30, -5192
0006e0  73b07101  store.d r[24:25], 0(r3)
0006e4  5b080000  j 64
0006e8  9f110700  addli r3, r14, 1
0006ec  1f320000  addli r4, zero, 3
0006f0  9f058fd7  addli r11, r30, -5184
0006f4  e302bfd7  loadli.w r5,  -5160(r30)
0006f8  a70a0900  addli.d r[22:23], r[19:20], 0
0006fc  1f8d0400  addli r26, r9, 0
000700  0b974138  mod.s r14, r3, r4
000704  ebd10500  load.d r[4:5], 0(r11)
000708  93b13304  setlt.sl r3, r[8:9], r[4:5]
00070c  1b32a700  slli r4, r14, 10
000710  0b9a4210  add.s r20, r5, r4
000714  1f02ffd7  addli r4, r30, -5128
000718  a7020900  addli.d r[6:7], r[19:20], 0
00071c  eb570200  load.d r[16:17], 0(r4)
000720  b7f80100  beq r3, zero, 572
000724  a7930300  addli.d r[8:9], r[8:9], 1
000728  9f05ffd7  addli r11, r30, -5128
00072c  1f066fd7  addli r12, r30, -5200
000730  8f917377  .word 0x7773918f
000734  8f947363  .word 0x6373948f
000738  73b03500  store.d r[4:5], 0(r11)
00073c  9f111000  addli r3, zero, 9
000740  17b93402  sll.d r[19:20], r[10:11], r3
000744  eb510600  load.d r[4:5], 0(r12)
000748  8bb42019  sub.sl r[10:11], r[2:3], r[19:20]
00074c  8bb43440  min.sl r[10:11], r[10:11], r[4:5]
000750  3f931401  blt.s r9, r17, 196
000754  93a62203  setneq.d r13, r[6:7], r[19:20]
000758  9f019fd7  addli r3, r30, -5176
00075c  97351903  sll.d r[12:13], r[19:20], r17
000760  73b05100  store.d r[6:7], 0(r3)
000764  a7820300  addli.d r[6:7], r[8:9], 0
000768  3be00600  bneq r13, zero, 24
00076c  a7810400  addli.d r[4:5], r[10:11], 0
000770  a7830a00  addli.d r[8:9], r[22:23], 0
000774  a78a0700  addli.d r[22:23], r[16:17], 0
000778  9bb61100  slli r13, r3, 1
00077c  5b080000  j 64
000780  e301cfd7  loadli.w r3,  -5152(r30)
000784  278c0400  addli.d r[25:26], r[10:11], 0
000788  a7830a00  addli.d r[8:9], r[22:23], 0
00078c  a78a0700  addli.d r[22:23], r[16:17], 0
000790  9f075fd7  addli r15, r30, -5208
000794  9b361c00  slli r13, r24, 1
000798  ab0c00f0  lui r25, 983040
00079c  9bbba100  slli r23, r3, 10
0007a0  9f010fd8  addli r3, r30, -5120
0007a4  979c9601  or r25, r13, r25
0007a8  9bab0b40  xori r23, r23, 1024
0007ac  8b9b7111  add.s r23, r3, r23
0007b0  ebd10700  load.d r[4:5], 0(r15)
0007b4  8ba1b110  add.ul r[4:5], r[4:5], r[12:13]
0007b8  ffac7101  l_gm2lm r25, r23, 0(r[4:5])
0007bc  9f0cffd7  addli r25, r30, -5128
0007c0  9f110700  addli r3, r14, 1
0007c4  1f320000  addli r4, zero, 3
0007c8  1f0edfd7  addli r28, r30, -5144
0007cc  ebd70c00  load.d r[16:17], 0(r25)
0007d0  8b914138  mod.s r3, r3, r4
0007d4  2b0200f0  lui r4, 983040
0007d8  17924600  or r4, r13, r4
0007dc  8bbb1720  mul.sl r[24:25], r[16:17], r[2:3]
0007e0  eb570e00  load.d r[16:17], 0(r28)
0007e4  97bb1b03  sll.d r[24:25], r[24:25], r17
0007e8  9bb1a100  slli r3, r3, 10
0007ec  8bab7711  add.ul r[24:25], r[16:17], r[24:25]
0007f0  e307bfd7  loadli.w r15,  -5160(r30)
0007f4  8ba5bb10  add.ul r[12:13], r[24:25], r[12:13]
0007f8  8b913710  add.s r3, r15, r3
0007fc  a7870a00  addli.d r[16:17], r[22:23], 0
000800  a78a0300  addli.d r[22:23], r[8:9], 0
000804  a7830200  addli.d r[8:9], r[6:7], 0
000808  7fa23500  l_gm2lm r4, r3, 0(r[12:13])
00080c  9f019fd7  addli r3, r30, -5176
000810  ebd20100  load.d r[6:7], 0(r3)
000814  abf1ffff  lui r3, 1048575
000818  9b9101fc  ori r3, r3, 4032
00081c  970b3d00  and r23, r26, r3
000820  3f821b01  blt.s r23, r17, 128
000824  630eafd7  loadli.w r28,  -5168(r30)
000828  9f0c0000  addli r25, zero, 0
00082c  9f050a00  addli r11, r20, 0
000830  42000e02  vload.mz vr0{mr1}, 0(r28)
000834  42810502  vload.mz vr2{mr1}, 0(r11)
000838  9f018e00  addli r3, r28, 64
00083c  9f8c8c00  addli r25, r25, 64
000840  1f0e0e01  addli r28, r28, 128
000844  c2800102  vload.mz vr1{mr1}, 0(r3)
000848  9f818500  addli r3, r11, 64
00084c  c2810102  vload.mz vr3{mr1}, 0(r3)
000850  06320000  vfp162float_l.rn vr4, vr0
000854  06330100  vfp162float_l.rn vr6, vr2
000858  06700000  vfp162float_h.rn vr0, vr0
00085c  06710100  vfp162float_h.rn vr2, vr2
000860  86b20000  vfp162float_l.rn vr5, vr1
000864  86f00000  vfp162float_h.rn vr1, vr1
000868  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
00086c  86b30100  vfp162float_l.rn vr7, vr3
000870  0e124302  vmul.f.mz.rn vr4{mr1}, vr6, vr4
000874  86f10100  vfp162float_h.rn vr3, vr3
000878  06500000  vfloat2fp16_h.rn vr0, vr0
00087c  0e915302  vmul.f.mz.rn vr2{mr1}, vr7, vr5
000880  8e901102  vmul.f.mz.rn vr1{mr1}, vr3, vr1
000884  06100200  vfloat2fp16_l.rn vr0, vr4
000888  46800502  vstore.mz vr0{mr1}, 0(r11)
00088c  06100100  vfloat2fp16_l.rn vr0, vr2
000890  9f850501  addli r11, r11, 128
000894  06d00000  vfloat2fp16_h.rn vr0, vr1
000898  46800102  vstore.mz vr0{mr1}, 0(r3)
00089c  3fde7cff  blt.s r25, r23, -108
0008a0  9b3c1d00  slli r25, r26, 1
0008a4  4b617d01  ble.s r26, r23, 88
0008a8  abf1ffff  lui r3, 1048575
0008ac  6302afd7  loadli.w r4,  -5168(r30)
0008b0  9b9101f8  ori r3, r3, 3968
0008b4  97813c00  and r3, r25, r3
0008b8  8b153a10  add.s r11, r20, r3
0008bc  0b163210  add.s r12, r4, r3
0008c0  42000602  vload.mz vr0{mr1}, 0(r12)
0008c4  c2800502  vload.mz vr1{mr1}, 0(r11)
0008c8  9f8b4b00  addli r23, r23, 32
0008cc  1f068600  addli r12, r12, 64
0008d0  06310000  vfp162float_l.rn vr2, vr0
0008d4  86b10000  vfp162float_l.rn vr3, vr1
0008d8  06700000  vfp162float_h.rn vr0, vr0
0008dc  86f00000  vfp162float_h.rn vr1, vr1
0008e0  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
0008e4  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
0008e8  06500000  vfloat2fp16_h.rn vr0, vr0
0008ec  06100100  vfloat2fp16_l.rn vr0, vr2
0008f0  46800502  vstore.mz vr0{mr1}, 0(r11)
0008f4  9f858500  addli r11, r11, 64
0008f8  3fafabff  blt.s r23, r26, -56
0008fc  97b51a03  sll.d r[12:13], r[22:23], r17
000900  9f0aefd7  addli r21, r30, -5136
000904  8bb11720  mul.sl r[4:5], r[16:17], r[2:3]
000908  00a00300  mfence { lm, sm, gm }
00090c  93a22201  seteq.d r5, r[6:7], r[19:20]
000910  ebd70a00  load.d r[16:17], 0(r21)
000914  97b11103  sll.d r[4:5], r[4:5], r17
000918  ab0600f0  lui r13, 983040
00091c  1793dc00  or r6, r25, r13
000920  8ba13710  add.ul r[4:5], r[16:17], r[4:5]
000924  8ba1b110  add.ul r[4:5], r[4:5], r[12:13]
000928  7fb34101  s_lm2gm r6, r20, 0(r[4:5])
00092c  e301cfd7  loadli.w r3,  -5152(r30)
000930  1ba31100  xori r6, r3, 1
000934  3bd00200  bneq r5, zero, 20
000938  9b31a300  slli r3, r6, 10
00093c  1f020fd8  addli r4, r30, -5120
000940  8b113210  add.s r3, r4, r3
000944  670d3fd6  storeli.w r3, -5168(r30)
000948  9f017fd7  addli r3, r30, -5192
00094c  ebdb0100  load.d r[24:25], 0(r3)
000950  3be602fe  bneq r5, zero, -616
000954  670e6fd6  storeli.w r6, -5152(r30)
000958  5bb2ffff  j -624
00095c  9f0e0fd7  addli sp, r30, -5248
000960  9f8e0e29  addli sp, sp, 5248
000964  00a00300  mfence { lm, sm, gm }
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
000974  00100000  exit
000978  00100000  exit
00097c  00100000  exit
000980  00100000  exit
000984  00100000  exit
000988  00100000  exit
00098c  00100000  exit
000990  00100000  exit
000994  00100000  exit
000998  00100000  exit
00099c  00100000  exit
0009a0  00100000  exit
0009a4  00100000  exit
0009a8  00100000  exit
0009ac  00100000  exit
0009b0  00100000  exit
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
0009f0  00100000  exit
0009f4  00100000  exit
0009f8  00100000  exit
0009fc  00100000  exit
000a00  00100000  exit
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
000b50  00100000  exit
000b54  00100000  exit
000b58  00100000  exit
000b5c  00100000  exit
000b60  00100000  exit
000b64  00100000  exit
000b68  00100000  exit
000b6c  00100000  exit
000b70  00100000  exit
000b74  00100000  exit
000b78  00100000  exit
000b7c  00100000  exit
000b80  00100000  exit
000b84  00100000  exit
000b88  00100000  exit
000b8c  00100000  exit
000b90  00100000  exit
000b94  00100000  exit
000b98  00100000  exit
000b9c  00100000  exit
000ba0  00100000  exit
000ba4  00100000  exit
000ba8  00100000  exit
000bac  00000000  nop
