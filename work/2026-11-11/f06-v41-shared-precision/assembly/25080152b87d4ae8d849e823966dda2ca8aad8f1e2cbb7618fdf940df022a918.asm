000000  17200000  xor zero, zero, zero
000004  1f420000  addli r4, zero, 4
000008  1f041000  addli r8, zero, 8
00000c  9f77f0ff  addli r15, zero, -1
000010  80310002  core_id r3
000014  00510102  load_param_i r2, 2
000018  ab800000  lui r1, 8
00001c  ab020000  lui r5, 0
000020  9f820200  addli r5, r5, 0
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
000078  9f494000  addli r19, zero, 36
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
0000dc  9f8e0eff  addli sp, sp, -128
0000e0  1f8f8e00  addli r30, sp, 64
0000e4  805a0002  load_param_i r21, 0
0000e8  e3493f00  loadli.w r19,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  630a4f00  loadli.w r20,  32(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  4b615b01  ble.s r22, r21, 88
000100  80db0002  load_param_i r23, 1
000104  1f4c0000  addli r24, zero, 4
000108  9f0c0008  addli r25, zero, 1024
00010c  db050000  j 44
000110  0b948041  min.s r8, r1, r24
000114  6b528f00  load.d r[5:6], 8(r30)
000118  6b530f01  load.d r[7:8], 16(r30)
00011c  67809e01  storeli.w r25, 0(sp)
000120  0b942050  fmac.s r8, r1, r2
000124  6b510f00  load.d r[3:4], 0(r30)
000128  572c0000  jal 352
00012c  8b9a7a11  add.s r21, r21, r23
000130  3fa06a01  blt.s r21, r22, 8
000134  5b040000  j 32
000138  8b904a31  div.s r1, r21, r20
00013c  1f510000  addli r2, zero, 5
000140  9f640000  addli r9, zero, 6
000144  8b903031  div.s r1, r1, r19
000148  3faf80ff  blt.s r1, r24, -56
00014c  9f540000  addli r9, zero, 5
000150  5bf8ffff  j -64
000154  9f8e8e00  addli sp, sp, 64
000158  00a00300  mfence { lm, sm, gm }
00015c  00100000  exit
000160  9f8e8eee  addli sp, sp, -2240
000164  67c9ee11  storeli.w r30, 2196(sp)
000168  1f8f8e11  addli r30, sp, 2240
00016c  e7cb3e11  storeli.w r19, 2236(sp)
000170  e78b4e11  storeli.w r20, 2232(sp)
000174  67cb5e11  storeli.w r21, 2228(sp)
000178  678b6e11  storeli.w r22, 2224(sp)
00017c  e7ca7e11  storeli.w r23, 2220(sp)
000180  e78a8e11  storeli.w r24, 2216(sp)
000184  67ca9e11  storeli.w r25, 2212(sp)
000188  678aae11  storeli.w r26, 2208(sp)
00018c  e7c9be11  storeli.w r27, 2204(sp)
000190  e789ce11  storeli.w r28, 2200(sp)
000194  6789fe11  storeli.w r31, 2192(sp)
000198  e3000f00  loadli.w r1,  0(r30)
00019c  e7479fee  storeli.w r9, -2180(r30)
0001a0  a7040300  addli.d r[10:11], r[7:8], 0
0001a4  1f030008  addli r6, zero, 1024
0001a8  e7078fee  storeli.w r8, -2184(r30)
0001ac  bbc76000  bneq r1, r6, 496
0001b0  80300002  core_id r1
0001b4  3bf00000  bneq r1, zero, 28
0001b8  1f030010  addli r6, zero, 2048
0001bc  ab0300f0  lui r7, 983040
0001c0  17137300  or r6, r6, r7
0001c4  ab030000  lui r7, 0
0001c8  9f830300  addli r7, r7, 0
0001cc  7f037200  l_gm2sm r6, r7, 0(r[5:6])
0001d0  2bf20000  lui r4, 15
0001d4  00200300  mfence { sm, gm }
0001d8  1b12f2ff  ori r4, r4, 4095
0001dc  80210204  csr_set csr3, r4
0001e0  00d00100  sync_group
0001e4  e342ffee  loadli.w r5,  -2180(r30)
0001e8  4bd01202  ble.s r5, r1, 1044
0001ec  e302ffee  loadli.w r5,  -2184(r30)
0001f0  1f130000  addli r6, zero, 1
0001f4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0001f8  8b925010  add.s r5, r1, r5
0001fc  9bb2a200  slli r5, r5, 10
000200  b3930228  sext_int2long r[8:9], r5
000204  97b26302  sll.d r[6:7], r[8:9], r6
000208  9f030010  addli r7, zero, 2048
00020c  8b225110  add.ul r[6:7], r[3:4], r[6:7]
000210  ab0100f0  lui r3, 983040
000214  1f010fef  addli r2, r30, -2176
000218  97913300  or r3, r7, r3
00021c  ffa12200  l_gm2lm r3, r2, 0(r[6:7])
000220  ab010000  lui r3, 0
000224  1f038003  addli r6, zero, 448
000228  00a00200  mfence { lm, gm }
00022c  9f810100  addli r3, r3, 0
000230  9f828107  addli r5, r3, 960
000234  ca800202  vloads.mz vr1{mr1}, 0(r5)
000238  9f028107  addli r5, r2, 960
00023c  42810202  vload.mz vr2{mr1}, 0(r5)
000240  abf2ffff  lui r5, 1048575
000244  9b9202fe  ori r5, r5, 4064
000248  e6412080  vmerge_l.hf vr3, vr0, vr2
00024c  664120a0  vmerge_h.hf vr2, vr0, vr2
000250  66421080  vmerge_l.hf vr4, vr0, vr1
000254  e64010a0  vmerge_h.hf vr1, vr0, vr1
000258  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
00025c  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
000260  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
000264  4a810102  vloads.mz vr2{mr1}, 0(r3)
000268  c2010102  vload.mz vr3{mr1}, 0(r2)
00026c  9f824200  addli r5, r5, 32
000270  9f818100  addli r3, r3, 64
000274  1f018100  addli r2, r2, 64
000278  93836204  setlt.u r7, r5, r6
00027c  66423080  vmerge_l.hf vr4, vr0, vr3
000280  e64130a0  vmerge_h.hf vr3, vr0, vr3
000284  e6422080  vmerge_l.hf vr5, vr0, vr2
000288  664120a0  vmerge_h.hf vr2, vr0, vr2
00028c  0e125202  vmul.f.mz.rn vr4{mr1}, vr4, vr5
000290  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
000294  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000298  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00029c  3baf03fe  bneq r7, zero, -56
0002a0  9f020fff  addli r5, r30, -128
0002a4  9f010000  addli r3, zero, 0
0002a8  1f038000  addli r6, zero, 64
0002ac  1f010000  addli r2, zero, 0
0002b0  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
0002b4  00a00000  mfence { lm }
0002b8  8b933210  add.s r7, r5, r3
0002bc  9fc10100  addli r3, r3, 4
0002c0  e3830300  loadli.w r7,  0(r7)
0002c4  0b617110  add.f.rn r2, r2, r7
0002c8  bbcf61fe  bneq r3, r6, -16
0002cc  2b030000  lui r6, 0
0002d0  9f038003  addli r7, zero, 448
0002d4  1f030300  addli r6, r6, 0
0002d8  9f01830f  addli r3, r6, 1984
0002dc  1f030308  addli r6, r6, 1024
0002e0  ca800102  vloads.mz vr1{mr1}, 0(r3)
0002e4  9f010fef  addli r3, r30, -2176
0002e8  9f82810f  addli r5, r3, 1984
0002ec  9f810108  addli r3, r3, 1024
0002f0  42810202  vload.mz vr2{mr1}, 0(r5)
0002f4  abf2ffff  lui r5, 1048575
0002f8  9b9202fe  ori r5, r5, 4064
0002fc  e6412080  vmerge_l.hf vr3, vr0, vr2
000300  664120a0  vmerge_h.hf vr2, vr0, vr2
000304  66421080  vmerge_l.hf vr4, vr0, vr1
000308  e64010a0  vmerge_h.hf vr1, vr0, vr1
00030c  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
000310  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
000314  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
000318  4a010302  vloads.mz vr2{mr1}, 0(r6)
00031c  c2810102  vload.mz vr3{mr1}, 0(r3)
000320  9f824200  addli r5, r5, 32
000324  1f038300  addli r6, r6, 64
000328  9f818100  addli r3, r3, 64
00032c  13847204  setlt.u r8, r5, r7
000330  66423080  vmerge_l.hf vr4, vr0, vr3
000334  e64130a0  vmerge_h.hf vr3, vr0, vr3
000338  e6422080  vmerge_l.hf vr5, vr0, vr2
00033c  664120a0  vmerge_h.hf vr2, vr0, vr2
000340  0e125202  vmul.f.mz.rn vr4{mr1}, vr4, vr5
000344  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
000348  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00034c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000350  3b2f04fe  bneq r8, zero, -56
000354  1f030fff  addli r6, r30, -128
000358  9f020000  addli r5, zero, 0
00035c  9f038000  addli r7, zero, 64
000360  9f010000  addli r3, zero, 0
000364  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
000368  00a00000  mfence { lm }
00036c  0b145310  add.s r8, r6, r5
000370  9fc20200  addli r5, r5, 4
000374  63040400  loadli.w r8,  0(r8)
000378  8be18110  add.f.rn r3, r3, r8
00037c  bbcf72fe  bneq r5, r7, -16
000380  ab130000  lui r7, 1
000384  8b622118  sub.f.rn r5, r2, r2
000388  1bb32000  slli r6, r1, 2
00038c  9f8303f1  addli r7, r7, -1920
000390  0b137310  add.s r6, r6, r7
000394  73605300  stores.w r5, 0(r6)
000398  db4d0000  j 620
00039c  1f03dfee  addli r6, r30, -2200
0003a0  00340002  core_id r8
0003a4  73309300  store.d r[10:11], 0(r6)
0003a8  bb000400  bneq r8, zero, 32
0003ac  63030f00  loadli.w r6,  0(r30)
0003b0  ab0300f0  lui r7, 983040
0003b4  1b331300  slli r6, r6, 1
0003b8  17137300  or r6, r6, r7
0003bc  ab130000  lui r7, 1
0003c0  9f8303f3  addli r7, r7, -1664
0003c4  7f037200  l_gm2sm r6, r7, 0(r[5:6])
0003c8  2bf20000  lui r4, 15
0003cc  00200300  mfence { sm, gm }
0003d0  1b12f2ff  ori r4, r4, 4095
0003d4  67474fee  storeli.w r4, -2188(r30)
0003d8  80210204  csr_set csr3, r4
0003dc  00d00100  sync_group
0003e0  6342ffee  loadli.w r4,  -2180(r30)
0003e4  4b278200  ble.s r4, r8, 456
0003e8  1f022000  addli r4, zero, 16
0003ec  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0003f0  ab190000  lui r19, 1
0003f4  ab2b0000  lui r23, 2
0003f8  9f020fef  addli r5, r30, -2176
0003fc  2b730000  lui r6, 7
000400  9f150000  addli r11, zero, 1
000404  1f070004  addli r14, zero, 512
000408  9f174000  addli r15, zero, 33
00040c  1f080fff  addli r16, r30, -128
000410  9f088000  addli r17, zero, 64
000414  ab0ac07f  lui r21, 523264
000418  003b0002  core_id r22
00041c  ea200222  vor.u.mz vr1{mr1}, r4, vr0
000420  1f8682ff  addli r12, r5, -64
000424  9f8909f3  addli r19, r19, -1664
000428  1b19f3ff  ori r18, r6, 4095
00042c  9f8b0bf3  addli r23, r23, -1664
000430  db0b0000  j 92
000434  1f020000  addli r4, zero, 0
000438  6a110222  vor.f.mz vr2{mr1}, r4, vr0
00043c  2b02ffff  lui r4, 1048560
000440  00530102  load_param_i r6, 2
000444  eeb120c2  vsrl.s.mz vr3{mr1}, vr1, vr2
000448  eab13502  vand.s.mz vr3{mr1}, r11, vr3
00044c  96313102  vadd.s.mz vr3{mr1}, vr2, vr3
000450  661101c0  vabs.f vr2, vr2
000454  92313902  vadd.s.mz vr3{mr1}, r18, vr3
000458  ea313202  vand.s.mz vr3{mr1}, r4, vr3
00045c  2b02807f  lui r4, 522240
000460  72212242  vlt.u.mz mr2{mr1}, r4, vr2
000464  1b321b00  slli r4, r22, 1
000468  0b1b6311  add.s r22, r6, r22
00046c  eaa10a34  vor.u.mh vr3{mr2}, r21, vr0
000470  0b127211  add.s r4, r4, r23
000474  faa30140  vextracti.u r7, 0(vr3)
000478  1bc30301  srli r6, r7, 16
00047c  73506200  stores.h r6, 0(r4)
000480  6342ffee  loadli.w r4,  -2180(r30)
000484  3f204b00  blt.s r22, r4, 8
000488  db240000  j 292
00048c  bfaeb0fe  blt.s r1, r11, -88
000490  6302ffee  loadli.w r4,  -2184(r30)
000494  1f0d0000  addli r26, zero, 0
000498  9f0c0000  addli r25, zero, 0
00049c  1f0c0000  addli r24, zero, 0
0004a0  1f850900  addli r10, r19, 0
0004a4  0b124b10  add.s r4, r22, r4
0004a8  0b121220  mul.s r4, r4, r1
0004ac  33130228  sext_int2long r[7:8], r4
0004b0  1733b302  sll.d r[7:8], r[7:8], r11
0004b4  8b2d6110  add.ul r[28:29], r[3:4], r[7:8]
0004b8  8b968019  sub.s r13, r1, r24
0004bc  33030c28  zext_int2long r[7:8], r24
0004c0  9b341c00  slli r9, r24, 1
0004c4  2b0a00f0  lui r20, 983040
0004c8  0b92e640  min.s r4, r13, r14
0004cc  1733b302  sll.d r[7:8], r[7:8], r11
0004d0  1b341200  slli r8, r4, 1
0004d4  0ba36d10  add.ul r[7:8], r[28:29], r[7:8]
0004d8  8b948410  add.s r9, r9, r8
0004dc  171a4401  or r20, r8, r20
0004e0  8b949910  add.s r9, r19, r9
0004e4  7f2a5300  l_gm2lm r20, r5, 0(r[7:8])
0004e8  00a00200  mfence { lm, gm }
0004ec  1f8384ff  addli r6, r9, -64
0004f0  4a010302  vloads.mz vr2{mr1}, 0(r6)
0004f4  0b138610  add.s r6, r12, r8
0004f8  c2010302  vload.mz vr3{mr1}, 0(r6)
0004fc  66423080  vmerge_l.hf vr4, vr0, vr3
000500  e64130a0  vmerge_h.hf vr3, vr0, vr3
000504  e6422080  vmerge_l.hf vr5, vr0, vr2
000508  664120a0  vmerge_h.hf vr2, vr0, vr2
00050c  0e125202  vmul.f.mz.rn vr4{mr1}, vr4, vr5
000510  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
000514  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
000518  3fb1f600  blt.s r13, r15, 76
00051c  1f03c2ff  addli r6, r4, -32
000520  9f030000  addli r7, zero, 0
000524  1f020fef  addli r4, r30, -2176
000528  9f060500  addli r13, r10, 0
00052c  ca810602  vloads.mz vr3{mr1}, 0(r13)
000530  42020202  vload.mz vr4{mr1}, 0(r4)
000534  9f834300  addli r7, r7, 32
000538  9f868600  addli r13, r13, 64
00053c  1f028200  addli r4, r4, 64
000540  e6424080  vmerge_l.hf vr5, vr0, vr4
000544  664240a0  vmerge_h.hf vr4, vr0, vr4
000548  66433080  vmerge_l.hf vr6, vr0, vr3
00054c  e64130a0  vmerge_h.hf vr3, vr0, vr3
000550  8e926202  vmul.f.mz.rn vr5{mr1}, vr5, vr6
000554  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000558  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
00055c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000560  3fbf63fe  blt.s r7, r6, -52
000564  46102802  vstore_mask16.mz vr2{mr1}, 0(r16)
000568  1f020000  addli r4, zero, 0
00056c  1f030000  addli r6, zero, 0
000570  00a00000  mfence { lm }
000574  8b134810  add.s r7, r16, r4
000578  1f420200  addli r4, r4, 4
00057c  e3830300  loadli.w r7,  0(r7)
000580  0b637310  add.f.rn r6, r6, r7
000584  bb4f12ff  bneq r4, r17, -16
000588  0b639319  sub.f.rn r6, r6, r25
00058c  1f0c0c04  addli r24, r24, 512
000590  1f050508  addli r10, r10, 1024
000594  0b626d10  add.f.rn r4, r26, r6
000598  8b63a219  sub.f.rn r7, r4, r26
00059c  1f0d0200  addli r26, r4, 0
0005a0  8bec6318  sub.f.rn r25, r7, r6
0005a4  3f5c1cfe  blt.s r24, r1, -236
0005a8  5bd2ffff  j -368
0005ac  00a00300  mfence { lm, sm, gm }
0005b0  e340efee  loadli.w r1,  -2188(r30)
0005b4  80a10004  csr_set csr3, r1
0005b8  80300002  core_id r1
0005bc  00d00100  sync_group
0005c0  3b950000  bneq r1, zero, 324
0005c4  e300ffee  loadli.w r1,  -2184(r30)
0005c8  9f110000  addli r3, zero, 1
0005cc  9f03dfee  addli r7, r30, -2200
0005d0  2b0200f0  lui r4, 983040
0005d4  ebd20300  load.d r[6:7], 0(r7)
0005d8  b3900028  sext_int2long r[2:3], r1
0005dc  97b03002  sll.d r[2:3], r[2:3], r3
0005e0  e341ffee  loadli.w r3,  -2180(r30)
0005e4  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
0005e8  9bb11100  slli r3, r3, 1
0005ec  97914100  or r3, r3, r4
0005f0  2b220000  lui r4, 2
0005f4  1f0202f3  addli r4, r4, -1664
0005f8  db200000  j 260
0005fc  9f010000  addli r3, zero, 0
000600  1f010000  addli r2, zero, 0
000604  00a00300  mfence { lm, sm, gm }
000608  80210204  csr_set csr3, r4
00060c  00d00100  sync_group
000610  6342ffee  loadli.w r4,  -2180(r30)
000614  cb121200  ble.s r4, r1, 164
000618  e342ffee  loadli.w r5,  -2180(r30)
00061c  00520102  load_param_i r4, 2
000620  0b125218  sub.s r4, r4, r5
000624  3fa04000  blt.s r1, r4, 8
000628  db010000  j 12
00062c  1f020000  addli r4, zero, 0
000630  db030000  j 28
000634  0b924018  sub.s r4, r1, r4
000638  ab120000  lui r5, 1
00063c  1b322200  slli r4, r4, 2
000640  9f8202f1  addli r5, r5, -1920
000644  0b125210  add.s r4, r4, r5
000648  6f420200  loads.w r4, 0(r4)
00064c  8be14118  sub.f.rn r3, r3, r4
000650  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000654  2b120000  lui r4, 1
000658  1f0202f0  addli r4, r4, -2048
00065c  0b613110  add.f.rn r2, r2, r3
000660  9f012000  addli r3, zero, 16
000664  eaa00122  vor.u.mz vr1{mr1}, r3, vr0
000668  ab01c07f  lui r3, 523264
00066c  6a110122  vor.f.mz vr2{mr1}, r2, vr0
000670  1f110000  addli r2, zero, 1
000674  eeb020c2  vsrl.s.mz vr1{mr1}, vr1, vr2
000678  ea301102  vand.s.mz vr1{mr1}, r2, vr1
00067c  2b710000  lui r2, 7
000680  1b11f1ff  ori r2, r2, 4095
000684  96301102  vadd.s.mz vr1{mr1}, vr2, vr1
000688  661101c0  vabs.f vr2, vr2
00068c  92301102  vadd.s.mz vr1{mr1}, r2, vr1
000690  2b01ffff  lui r2, 1048560
000694  ea301102  vand.s.mz vr1{mr1}, r2, vr1
000698  2b01807f  lui r2, 522240
00069c  72212142  vlt.u.mz mr2{mr1}, r2, vr2
0006a0  1bb11000  slli r2, r1, 1
0006a4  eaa00134  vor.u.mh vr1{mr2}, r3, vr0
0006a8  0b114110  add.s r2, r2, r4
0006ac  faa10040  vextracti.u r3, 0(vr1)
0006b0  9bc10101  srli r3, r3, 16
0006b4  73503100  stores.h r3, 0(r2)
0006b8  2bf10000  lui r2, 15
0006bc  00a00300  mfence { lm, sm, gm }
0006c0  1b11f1ff  ori r2, r2, 4095
0006c4  80210104  csr_set csr3, r2
0006c8  00d00100  sync_group
0006cc  bbe00000  bneq r1, zero, 56
0006d0  e300ffee  loadli.w r1,  -2184(r30)
0006d4  9f110000  addli r3, zero, 1
0006d8  2b0200f0  lui r4, 983040
0006dc  b3900028  sext_int2long r[2:3], r1
0006e0  97b03002  sll.d r[2:3], r[2:3], r3
0006e4  e341ffee  loadli.w r3,  -2180(r30)
0006e8  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0006ec  9bb11100  slli r3, r3, 1
0006f0  97914100  or r3, r3, r4
0006f4  2b120000  lui r4, 1
0006f8  1f0202f0  addli r4, r4, -2048
0006fc  ff914000  s_sm2gm r3, r4, 0(r[2:3])
000700  00200300  mfence { sm, gm }
000704  9f0e8fee  addli sp, r30, -2240
000708  e38f2e11  loadli.w r31,  2192(sp)
00070c  63cf2e11  loadli.w r30,  2196(sp)
000710  638e3e11  loadli.w r28,  2200(sp)
000714  e3cd3e11  loadli.w r27,  2204(sp)
000718  638d4e11  loadli.w r26,  2208(sp)
00071c  e3cc4e11  loadli.w r25,  2212(sp)
000720  638c5e11  loadli.w r24,  2216(sp)
000724  e3cb5e11  loadli.w r23,  2220(sp)
000728  638b6e11  loadli.w r22,  2224(sp)
00072c  e3ca6e11  loadli.w r21,  2228(sp)
000730  638a7e11  loadli.w r20,  2232(sp)
000734  e3c97e11  loadli.w r19,  2236(sp)
000738  9f8e8e11  addli sp, sp, 2240
00073c  5f800f00  jr r31, 0
000740  00100000  exit
000744  00100000  exit
000748  00100000  exit
00074c  00100000  exit
000750  00100000  exit
000754  00100000  exit
000758  00100000  exit
00075c  00100000  exit
000760  00100000  exit
000764  00100000  exit
000768  00100000  exit
00076c  00100000  exit
000770  00100000  exit
000774  00100000  exit
000778  00100000  exit
00077c  00100000  exit
000780  00100000  exit
000784  00100000  exit
000788  00100000  exit
00078c  00100000  exit
000790  00100000  exit
000794  00100000  exit
000798  00100000  exit
00079c  00100000  exit
0007a0  00100000  exit
0007a4  00100000  exit
0007a8  00100000  exit
0007ac  00100000  exit
0007b0  00100000  exit
0007b4  00100000  exit
0007b8  00100000  exit
0007bc  00100000  exit
0007c0  00100000  exit
0007c4  00100000  exit
0007c8  00100000  exit
0007cc  00100000  exit
0007d0  00100000  exit
0007d4  00100000  exit
0007d8  00100000  exit
0007dc  00100000  exit
0007e0  00100000  exit
0007e4  00100000  exit
0007e8  00100000  exit
0007ec  00100000  exit
0007f0  00100000  exit
0007f4  00100000  exit
0007f8  00100000  exit
0007fc  00100000  exit
000800  00100000  exit
000804  00100000  exit
000808  00100000  exit
00080c  00100000  exit
000810  00100000  exit
000814  00100000  exit
000818  00100000  exit
00081c  00100000  exit
000820  00100000  exit
000824  00100000  exit
000828  00100000  exit
00082c  00100000  exit
000830  00100000  exit
000834  00100000  exit
000838  00100000  exit
00083c  00100000  exit
000840  00100000  exit
000844  00100000  exit
000848  00100000  exit
00084c  00100000  exit
000850  00100000  exit
000854  00100000  exit
000858  00100000  exit
00085c  00100000  exit
000860  00100000  exit
000864  00100000  exit
000868  00100000  exit
00086c  00100000  exit
000870  00100000  exit
000874  00100000  exit
000878  00100000  exit
00087c  00100000  exit
000880  00100000  exit
000884  00100000  exit
000888  00100000  exit
00088c  00100000  exit
000890  00100000  exit
000894  00100000  exit
000898  00100000  exit
00089c  00100000  exit
0008a0  00100000  exit
0008a4  00100000  exit
0008a8  00100000  exit
0008ac  00100000  exit
0008b0  00100000  exit
0008b4  00100000  exit
0008b8  00100000  exit
0008bc  00100000  exit
0008c0  00100000  exit
0008c4  00100000  exit
0008c8  00100000  exit
0008cc  00100000  exit
0008d0  00100000  exit
0008d4  00100000  exit
0008d8  00100000  exit
0008dc  00100000  exit
0008e0  00100000  exit
0008e4  00100000  exit
0008e8  00100000  exit
0008ec  00100000  exit
0008f0  00100000  exit
0008f4  00100000  exit
0008f8  00100000  exit
0008fc  00100000  exit
000900  00100000  exit
000904  00100000  exit
000908  00100000  exit
00090c  00100000  exit
000910  00100000  exit
000914  00100000  exit
000918  00100000  exit
00091c  00100000  exit
000920  00100000  exit
000924  00100000  exit
000928  00100000  exit
00092c  00100000  exit
000930  00100000  exit
000934  00100000  exit
000938  00100000  exit
00093c  00100000  exit
000940  00100000  exit
000944  00100000  exit
000948  00100000  exit
00094c  00100000  exit
000950  00100000  exit
000954  00100000  exit
000958  00100000  exit
00095c  00100000  exit
000960  00100000  exit
000964  00100000  exit
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
000974  00100000  exit
000978  00100000  exit
00097c  00100000  exit
