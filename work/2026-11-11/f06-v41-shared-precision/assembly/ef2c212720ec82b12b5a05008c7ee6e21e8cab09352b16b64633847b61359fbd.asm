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
0000fc  4b015b01  ble.s r22, r21, 64
000100  80db0002  load_param_i r23, 1
000104  1f0c6001  addli r24, zero, 176
000108  9f0c0010  addli r25, zero, 2048
00010c  8b904a31  div.s r1, r21, r20
000110  6b510f00  load.d r[3:4], 0(r30)
000114  6b528f00  load.d r[5:6], 8(r30)
000118  6b530f01  load.d r[7:8], 16(r30)
00011c  67809e01  storeli.w r25, 0(sp)
000120  8b903031  div.s r1, r1, r19
000124  0b948021  mul.s r8, r1, r24
000128  8b908c18  sub.s r1, r25, r8
00012c  8b948041  min.s r9, r1, r24
000130  57290000  jal 328
000134  8b9a7a11  add.s r21, r21, r23
000138  3fdf6aff  blt.s r21, r22, -44
00013c  9f8e8e00  addli sp, sp, 64
000140  00a00300  mfence { lm, sm, gm }
000144  00100000  exit
000148  9f8e8eee  addli sp, sp, -2240
00014c  67c9ee11  storeli.w r30, 2196(sp)
000150  1f8f8e11  addli r30, sp, 2240
000154  e7cb3e11  storeli.w r19, 2236(sp)
000158  e78b4e11  storeli.w r20, 2232(sp)
00015c  67cb5e11  storeli.w r21, 2228(sp)
000160  678b6e11  storeli.w r22, 2224(sp)
000164  e7ca7e11  storeli.w r23, 2220(sp)
000168  e78a8e11  storeli.w r24, 2216(sp)
00016c  67ca9e11  storeli.w r25, 2212(sp)
000170  678aae11  storeli.w r26, 2208(sp)
000174  e7c9be11  storeli.w r27, 2204(sp)
000178  e789ce11  storeli.w r28, 2200(sp)
00017c  6789fe11  storeli.w r31, 2192(sp)
000180  e3000f00  loadli.w r1,  0(r30)
000184  e7479fee  storeli.w r9, -2180(r30)
000188  a7040300  addli.d r[10:11], r[7:8], 0
00018c  1f030008  addli r6, zero, 1024
000190  e7078fee  storeli.w r8, -2184(r30)
000194  bbc76000  bneq r1, r6, 496
000198  80300002  core_id r1
00019c  3bf00000  bneq r1, zero, 28
0001a0  1f030010  addli r6, zero, 2048
0001a4  ab0300f0  lui r7, 983040
0001a8  17137300  or r6, r6, r7
0001ac  ab030000  lui r7, 0
0001b0  9f830300  addli r7, r7, 0
0001b4  7f037200  l_gm2sm r6, r7, 0(r[5:6])
0001b8  2bf20000  lui r4, 15
0001bc  00200300  mfence { sm, gm }
0001c0  1b12f2ff  ori r4, r4, 4095
0001c4  80210204  csr_set csr3, r4
0001c8  00d00100  sync_group
0001cc  e342ffee  loadli.w r5,  -2180(r30)
0001d0  4bd01202  ble.s r5, r1, 1044
0001d4  e302ffee  loadli.w r5,  -2184(r30)
0001d8  1f130000  addli r6, zero, 1
0001dc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0001e0  8b925010  add.s r5, r1, r5
0001e4  9bb2a200  slli r5, r5, 10
0001e8  b3930228  sext_int2long r[8:9], r5
0001ec  97b26302  sll.d r[6:7], r[8:9], r6
0001f0  9f030010  addli r7, zero, 2048
0001f4  8b225110  add.ul r[6:7], r[3:4], r[6:7]
0001f8  ab0100f0  lui r3, 983040
0001fc  1f010fef  addli r2, r30, -2176
000200  97913300  or r3, r7, r3
000204  ffa12200  l_gm2lm r3, r2, 0(r[6:7])
000208  ab010000  lui r3, 0
00020c  1f038003  addli r6, zero, 448
000210  00a00200  mfence { lm, gm }
000214  9f810100  addli r3, r3, 0
000218  9f828107  addli r5, r3, 960
00021c  ca800202  vloads.mz vr1{mr1}, 0(r5)
000220  9f028107  addli r5, r2, 960
000224  42810202  vload.mz vr2{mr1}, 0(r5)
000228  abf2ffff  lui r5, 1048575
00022c  9b9202fe  ori r5, r5, 4064
000230  e6412080  vmerge_l.hf vr3, vr0, vr2
000234  664120a0  vmerge_h.hf vr2, vr0, vr2
000238  66421080  vmerge_l.hf vr4, vr0, vr1
00023c  e64010a0  vmerge_h.hf vr1, vr0, vr1
000240  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
000244  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
000248  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
00024c  4a810102  vloads.mz vr2{mr1}, 0(r3)
000250  c2010102  vload.mz vr3{mr1}, 0(r2)
000254  9f824200  addli r5, r5, 32
000258  9f818100  addli r3, r3, 64
00025c  1f018100  addli r2, r2, 64
000260  93836204  setlt.u r7, r5, r6
000264  66423080  vmerge_l.hf vr4, vr0, vr3
000268  e64130a0  vmerge_h.hf vr3, vr0, vr3
00026c  e6422080  vmerge_l.hf vr5, vr0, vr2
000270  664120a0  vmerge_h.hf vr2, vr0, vr2
000274  0e125202  vmul.f.mz.rn vr4{mr1}, vr4, vr5
000278  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
00027c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000280  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000284  3baf03fe  bneq r7, zero, -56
000288  9f020fff  addli r5, r30, -128
00028c  9f010000  addli r3, zero, 0
000290  1f038000  addli r6, zero, 64
000294  1f010000  addli r2, zero, 0
000298  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
00029c  00a00000  mfence { lm }
0002a0  8b933210  add.s r7, r5, r3
0002a4  9fc10100  addli r3, r3, 4
0002a8  e3830300  loadli.w r7,  0(r7)
0002ac  0b617110  add.f.rn r2, r2, r7
0002b0  bbcf61fe  bneq r3, r6, -16
0002b4  2b030000  lui r6, 0
0002b8  9f038003  addli r7, zero, 448
0002bc  1f030300  addli r6, r6, 0
0002c0  9f01830f  addli r3, r6, 1984
0002c4  1f030308  addli r6, r6, 1024
0002c8  ca800102  vloads.mz vr1{mr1}, 0(r3)
0002cc  9f010fef  addli r3, r30, -2176
0002d0  9f82810f  addli r5, r3, 1984
0002d4  9f810108  addli r3, r3, 1024
0002d8  42810202  vload.mz vr2{mr1}, 0(r5)
0002dc  abf2ffff  lui r5, 1048575
0002e0  9b9202fe  ori r5, r5, 4064
0002e4  e6412080  vmerge_l.hf vr3, vr0, vr2
0002e8  664120a0  vmerge_h.hf vr2, vr0, vr2
0002ec  66421080  vmerge_l.hf vr4, vr0, vr1
0002f0  e64010a0  vmerge_h.hf vr1, vr0, vr1
0002f4  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
0002f8  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
0002fc  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
000300  4a010302  vloads.mz vr2{mr1}, 0(r6)
000304  c2810102  vload.mz vr3{mr1}, 0(r3)
000308  9f824200  addli r5, r5, 32
00030c  1f038300  addli r6, r6, 64
000310  9f818100  addli r3, r3, 64
000314  13847204  setlt.u r8, r5, r7
000318  66423080  vmerge_l.hf vr4, vr0, vr3
00031c  e64130a0  vmerge_h.hf vr3, vr0, vr3
000320  e6422080  vmerge_l.hf vr5, vr0, vr2
000324  664120a0  vmerge_h.hf vr2, vr0, vr2
000328  0e125202  vmul.f.mz.rn vr4{mr1}, vr4, vr5
00032c  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
000330  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000334  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000338  3b2f04fe  bneq r8, zero, -56
00033c  1f030fff  addli r6, r30, -128
000340  9f020000  addli r5, zero, 0
000344  9f038000  addli r7, zero, 64
000348  9f010000  addli r3, zero, 0
00034c  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
000350  00a00000  mfence { lm }
000354  0b145310  add.s r8, r6, r5
000358  9fc20200  addli r5, r5, 4
00035c  63040400  loadli.w r8,  0(r8)
000360  8be18110  add.f.rn r3, r3, r8
000364  bbcf72fe  bneq r5, r7, -16
000368  ab130000  lui r7, 1
00036c  8b622118  sub.f.rn r5, r2, r2
000370  1bb32000  slli r6, r1, 2
000374  9f8303f1  addli r7, r7, -1920
000378  0b137310  add.s r6, r6, r7
00037c  73605300  stores.w r5, 0(r6)
000380  db4d0000  j 620
000384  1f03dfee  addli r6, r30, -2200
000388  00340002  core_id r8
00038c  73309300  store.d r[10:11], 0(r6)
000390  bb000400  bneq r8, zero, 32
000394  63030f00  loadli.w r6,  0(r30)
000398  ab0300f0  lui r7, 983040
00039c  1b331300  slli r6, r6, 1
0003a0  17137300  or r6, r6, r7
0003a4  ab130000  lui r7, 1
0003a8  9f8303f3  addli r7, r7, -1664
0003ac  7f037200  l_gm2sm r6, r7, 0(r[5:6])
0003b0  2bf20000  lui r4, 15
0003b4  00200300  mfence { sm, gm }
0003b8  1b12f2ff  ori r4, r4, 4095
0003bc  67474fee  storeli.w r4, -2188(r30)
0003c0  80210204  csr_set csr3, r4
0003c4  00d00100  sync_group
0003c8  6342ffee  loadli.w r4,  -2180(r30)
0003cc  4b278200  ble.s r4, r8, 456
0003d0  1f022000  addli r4, zero, 16
0003d4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0003d8  ab190000  lui r19, 1
0003dc  ab2b0000  lui r23, 2
0003e0  9f020fef  addli r5, r30, -2176
0003e4  2b730000  lui r6, 7
0003e8  9f150000  addli r11, zero, 1
0003ec  1f070004  addli r14, zero, 512
0003f0  9f174000  addli r15, zero, 33
0003f4  1f080fff  addli r16, r30, -128
0003f8  9f088000  addli r17, zero, 64
0003fc  ab0ac07f  lui r21, 523264
000400  003b0002  core_id r22
000404  ea200222  vor.u.mz vr1{mr1}, r4, vr0
000408  1f8682ff  addli r12, r5, -64
00040c  9f8909f3  addli r19, r19, -1664
000410  1b19f3ff  ori r18, r6, 4095
000414  9f8b0bf3  addli r23, r23, -1664
000418  db0b0000  j 92
00041c  1f020000  addli r4, zero, 0
000420  6a110222  vor.f.mz vr2{mr1}, r4, vr0
000424  2b02ffff  lui r4, 1048560
000428  00530102  load_param_i r6, 2
00042c  eeb120c2  vsrl.s.mz vr3{mr1}, vr1, vr2
000430  eab13502  vand.s.mz vr3{mr1}, r11, vr3
000434  96313102  vadd.s.mz vr3{mr1}, vr2, vr3
000438  661101c0  vabs.f vr2, vr2
00043c  92313902  vadd.s.mz vr3{mr1}, r18, vr3
000440  ea313202  vand.s.mz vr3{mr1}, r4, vr3
000444  2b02807f  lui r4, 522240
000448  72212242  vlt.u.mz mr2{mr1}, r4, vr2
00044c  1b321b00  slli r4, r22, 1
000450  0b1b6311  add.s r22, r6, r22
000454  eaa10a34  vor.u.mh vr3{mr2}, r21, vr0
000458  0b127211  add.s r4, r4, r23
00045c  faa30140  vextracti.u r7, 0(vr3)
000460  1bc30301  srli r6, r7, 16
000464  73506200  stores.h r6, 0(r4)
000468  6342ffee  loadli.w r4,  -2180(r30)
00046c  3f204b00  blt.s r22, r4, 8
000470  db240000  j 292
000474  bfaeb0fe  blt.s r1, r11, -88
000478  6302ffee  loadli.w r4,  -2184(r30)
00047c  1f0d0000  addli r26, zero, 0
000480  9f0c0000  addli r25, zero, 0
000484  1f0c0000  addli r24, zero, 0
000488  1f850900  addli r10, r19, 0
00048c  0b124b10  add.s r4, r22, r4
000490  0b121220  mul.s r4, r4, r1
000494  33130228  sext_int2long r[7:8], r4
000498  1733b302  sll.d r[7:8], r[7:8], r11
00049c  8b2d6110  add.ul r[28:29], r[3:4], r[7:8]
0004a0  8b968019  sub.s r13, r1, r24
0004a4  33030c28  zext_int2long r[7:8], r24
0004a8  9b341c00  slli r9, r24, 1
0004ac  2b0a00f0  lui r20, 983040
0004b0  0b92e640  min.s r4, r13, r14
0004b4  1733b302  sll.d r[7:8], r[7:8], r11
0004b8  1b341200  slli r8, r4, 1
0004bc  0ba36d10  add.ul r[7:8], r[28:29], r[7:8]
0004c0  8b948410  add.s r9, r9, r8
0004c4  171a4401  or r20, r8, r20
0004c8  8b949910  add.s r9, r19, r9
0004cc  7f2a5300  l_gm2lm r20, r5, 0(r[7:8])
0004d0  00a00200  mfence { lm, gm }
0004d4  1f8384ff  addli r6, r9, -64
0004d8  4a010302  vloads.mz vr2{mr1}, 0(r6)
0004dc  0b138610  add.s r6, r12, r8
0004e0  c2010302  vload.mz vr3{mr1}, 0(r6)
0004e4  66423080  vmerge_l.hf vr4, vr0, vr3
0004e8  e64130a0  vmerge_h.hf vr3, vr0, vr3
0004ec  e6422080  vmerge_l.hf vr5, vr0, vr2
0004f0  664120a0  vmerge_h.hf vr2, vr0, vr2
0004f4  0e125202  vmul.f.mz.rn vr4{mr1}, vr4, vr5
0004f8  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
0004fc  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
000500  3fb1f600  blt.s r13, r15, 76
000504  1f03c2ff  addli r6, r4, -32
000508  9f030000  addli r7, zero, 0
00050c  1f020fef  addli r4, r30, -2176
000510  9f060500  addli r13, r10, 0
000514  ca810602  vloads.mz vr3{mr1}, 0(r13)
000518  42020202  vload.mz vr4{mr1}, 0(r4)
00051c  9f834300  addli r7, r7, 32
000520  9f868600  addli r13, r13, 64
000524  1f028200  addli r4, r4, 64
000528  e6424080  vmerge_l.hf vr5, vr0, vr4
00052c  664240a0  vmerge_h.hf vr4, vr0, vr4
000530  66433080  vmerge_l.hf vr6, vr0, vr3
000534  e64130a0  vmerge_h.hf vr3, vr0, vr3
000538  8e926202  vmul.f.mz.rn vr5{mr1}, vr5, vr6
00053c  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000540  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
000544  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000548  3fbf63fe  blt.s r7, r6, -52
00054c  46102802  vstore_mask16.mz vr2{mr1}, 0(r16)
000550  1f020000  addli r4, zero, 0
000554  1f030000  addli r6, zero, 0
000558  00a00000  mfence { lm }
00055c  8b134810  add.s r7, r16, r4
000560  1f420200  addli r4, r4, 4
000564  e3830300  loadli.w r7,  0(r7)
000568  0b637310  add.f.rn r6, r6, r7
00056c  bb4f12ff  bneq r4, r17, -16
000570  0b639319  sub.f.rn r6, r6, r25
000574  1f0c0c04  addli r24, r24, 512
000578  1f050508  addli r10, r10, 1024
00057c  0b626d10  add.f.rn r4, r26, r6
000580  8b63a219  sub.f.rn r7, r4, r26
000584  1f0d0200  addli r26, r4, 0
000588  8bec6318  sub.f.rn r25, r7, r6
00058c  3f5c1cfe  blt.s r24, r1, -236
000590  5bd2ffff  j -368
000594  00a00300  mfence { lm, sm, gm }
000598  e340efee  loadli.w r1,  -2188(r30)
00059c  80a10004  csr_set csr3, r1
0005a0  80300002  core_id r1
0005a4  00d00100  sync_group
0005a8  3b950000  bneq r1, zero, 324
0005ac  e300ffee  loadli.w r1,  -2184(r30)
0005b0  9f110000  addli r3, zero, 1
0005b4  9f03dfee  addli r7, r30, -2200
0005b8  2b0200f0  lui r4, 983040
0005bc  ebd20300  load.d r[6:7], 0(r7)
0005c0  b3900028  sext_int2long r[2:3], r1
0005c4  97b03002  sll.d r[2:3], r[2:3], r3
0005c8  e341ffee  loadli.w r3,  -2180(r30)
0005cc  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
0005d0  9bb11100  slli r3, r3, 1
0005d4  97914100  or r3, r3, r4
0005d8  2b220000  lui r4, 2
0005dc  1f0202f3  addli r4, r4, -1664
0005e0  db200000  j 260
0005e4  9f010000  addli r3, zero, 0
0005e8  1f010000  addli r2, zero, 0
0005ec  00a00300  mfence { lm, sm, gm }
0005f0  80210204  csr_set csr3, r4
0005f4  00d00100  sync_group
0005f8  6342ffee  loadli.w r4,  -2180(r30)
0005fc  cb121200  ble.s r4, r1, 164
000600  e342ffee  loadli.w r5,  -2180(r30)
000604  00520102  load_param_i r4, 2
000608  0b125218  sub.s r4, r4, r5
00060c  3fa04000  blt.s r1, r4, 8
000610  db010000  j 12
000614  1f020000  addli r4, zero, 0
000618  db030000  j 28
00061c  0b924018  sub.s r4, r1, r4
000620  ab120000  lui r5, 1
000624  1b322200  slli r4, r4, 2
000628  9f8202f1  addli r5, r5, -1920
00062c  0b125210  add.s r4, r4, r5
000630  6f420200  loads.w r4, 0(r4)
000634  8be14118  sub.f.rn r3, r3, r4
000638  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00063c  2b120000  lui r4, 1
000640  1f0202f0  addli r4, r4, -2048
000644  0b613110  add.f.rn r2, r2, r3
000648  9f012000  addli r3, zero, 16
00064c  eaa00122  vor.u.mz vr1{mr1}, r3, vr0
000650  ab01c07f  lui r3, 523264
000654  6a110122  vor.f.mz vr2{mr1}, r2, vr0
000658  1f110000  addli r2, zero, 1
00065c  eeb020c2  vsrl.s.mz vr1{mr1}, vr1, vr2
000660  ea301102  vand.s.mz vr1{mr1}, r2, vr1
000664  2b710000  lui r2, 7
000668  1b11f1ff  ori r2, r2, 4095
00066c  96301102  vadd.s.mz vr1{mr1}, vr2, vr1
000670  661101c0  vabs.f vr2, vr2
000674  92301102  vadd.s.mz vr1{mr1}, r2, vr1
000678  2b01ffff  lui r2, 1048560
00067c  ea301102  vand.s.mz vr1{mr1}, r2, vr1
000680  2b01807f  lui r2, 522240
000684  72212142  vlt.u.mz mr2{mr1}, r2, vr2
000688  1bb11000  slli r2, r1, 1
00068c  eaa00134  vor.u.mh vr1{mr2}, r3, vr0
000690  0b114110  add.s r2, r2, r4
000694  faa10040  vextracti.u r3, 0(vr1)
000698  9bc10101  srli r3, r3, 16
00069c  73503100  stores.h r3, 0(r2)
0006a0  2bf10000  lui r2, 15
0006a4  00a00300  mfence { lm, sm, gm }
0006a8  1b11f1ff  ori r2, r2, 4095
0006ac  80210104  csr_set csr3, r2
0006b0  00d00100  sync_group
0006b4  bbe00000  bneq r1, zero, 56
0006b8  e300ffee  loadli.w r1,  -2184(r30)
0006bc  9f110000  addli r3, zero, 1
0006c0  2b0200f0  lui r4, 983040
0006c4  b3900028  sext_int2long r[2:3], r1
0006c8  97b03002  sll.d r[2:3], r[2:3], r3
0006cc  e341ffee  loadli.w r3,  -2180(r30)
0006d0  8ba01410  add.ul r[2:3], r[10:11], r[2:3]
0006d4  9bb11100  slli r3, r3, 1
0006d8  97914100  or r3, r3, r4
0006dc  2b120000  lui r4, 1
0006e0  1f0202f0  addli r4, r4, -2048
0006e4  ff914000  s_sm2gm r3, r4, 0(r[2:3])
0006e8  00200300  mfence { sm, gm }
0006ec  9f0e8fee  addli sp, r30, -2240
0006f0  e38f2e11  loadli.w r31,  2192(sp)
0006f4  63cf2e11  loadli.w r30,  2196(sp)
0006f8  638e3e11  loadli.w r28,  2200(sp)
0006fc  e3cd3e11  loadli.w r27,  2204(sp)
000700  638d4e11  loadli.w r26,  2208(sp)
000704  e3cc4e11  loadli.w r25,  2212(sp)
000708  638c5e11  loadli.w r24,  2216(sp)
00070c  e3cb5e11  loadli.w r23,  2220(sp)
000710  638b6e11  loadli.w r22,  2224(sp)
000714  e3ca6e11  loadli.w r21,  2228(sp)
000718  638a7e11  loadli.w r20,  2232(sp)
00071c  e3c97e11  loadli.w r19,  2236(sp)
000720  9f8e8e11  addli sp, sp, 2240
000724  5f800f00  jr r31, 0
000728  00100000  exit
00072c  00100000  exit
000730  00100000  exit
000734  00100000  exit
000738  00100000  exit
00073c  00100000  exit
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
