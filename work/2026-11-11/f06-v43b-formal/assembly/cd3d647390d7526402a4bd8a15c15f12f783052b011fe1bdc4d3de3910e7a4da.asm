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
000154  27060300  addli.d r[13:14], r[7:8], 0
000158  1f030008  addli r6, zero, 1024
00015c  e7cb3e11  storeli.w r19, 2236(sp)
000160  e78b4e11  storeli.w r20, 2232(sp)
000164  67cb5e11  storeli.w r21, 2228(sp)
000168  678b6e11  storeli.w r22, 2224(sp)
00016c  e7ca7e11  storeli.w r23, 2220(sp)
000170  e78a8e11  storeli.w r24, 2216(sp)
000174  67ca9e11  storeli.w r25, 2212(sp)
000178  678aae11  storeli.w r26, 2208(sp)
00017c  e7c9be11  storeli.w r27, 2204(sp)
000180  e789ce11  storeli.w r28, 2200(sp)
000184  6789fe11  storeli.w r31, 2192(sp)
000188  e3000f00  loadli.w r1,  0(r30)
00018c  e7478fee  storeli.w r8, -2180(r30)
000190  bbb76000  bneq r1, r6, 492
000194  80300002  core_id r1
000198  3bf00000  bneq r1, zero, 28
00019c  1f030010  addli r6, zero, 2048
0001a0  ab0300f0  lui r7, 983040
0001a4  17137300  or r6, r6, r7
0001a8  ab030000  lui r7, 0
0001ac  9f830300  addli r7, r7, 0
0001b0  7f037200  l_gm2sm r6, r7, 0(r[5:6])
0001b4  2bf20000  lui r4, 15
0001b8  00200300  mfence { sm, gm }
0001bc  1b12f2ff  ori r4, r4, 4095
0001c0  80210204  csr_set csr3, r4
0001c4  00d00100  sync_group
0001c8  cbc51402  ble.s r9, r1, 1392
0001cc  e342ffee  loadli.w r5,  -2180(r30)
0001d0  1f130000  addli r6, zero, 1
0001d4  9f030010  addli r7, zero, 2048
0001d8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0001dc  8b925010  add.s r5, r1, r5
0001e0  9bb2a200  slli r5, r5, 10
0001e4  33950228  sext_int2long r[11:12], r5
0001e8  97326502  sll.d r[6:7], r[11:12], r6
0001ec  1f058003  addli r10, zero, 448
0001f0  8b225110  add.ul r[6:7], r[3:4], r[6:7]
0001f4  ab0100f0  lui r3, 983040
0001f8  1f010fef  addli r2, r30, -2176
0001fc  97913300  or r3, r7, r3
000200  ffa12200  l_gm2lm r3, r2, 0(r[6:7])
000204  ab010000  lui r3, 0
000208  00a00200  mfence { lm, gm }
00020c  9f810100  addli r3, r3, 0
000210  9f828107  addli r5, r3, 960
000214  ca800202  vloads.mz vr1{mr1}, 0(r5)
000218  9f028107  addli r5, r2, 960
00021c  42810202  vload.mz vr2{mr1}, 0(r5)
000220  abf2ffff  lui r5, 1048575
000224  9b9202fe  ori r5, r5, 4064
000228  e6412080  vmerge_l.hf vr3, vr0, vr2
00022c  664120a0  vmerge_h.hf vr2, vr0, vr2
000230  66421080  vmerge_l.hf vr4, vr0, vr1
000234  e64010a0  vmerge_h.hf vr1, vr0, vr1
000238  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
00023c  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
000240  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
000244  4a810102  vloads.mz vr2{mr1}, 0(r3)
000248  c2010102  vload.mz vr3{mr1}, 0(r2)
00024c  9f824200  addli r5, r5, 32
000250  9f818100  addli r3, r3, 64
000254  1f018100  addli r2, r2, 64
000258  1383a204  setlt.u r6, r5, r10
00025c  66423080  vmerge_l.hf vr4, vr0, vr3
000260  e64130a0  vmerge_h.hf vr3, vr0, vr3
000264  e6422080  vmerge_l.hf vr5, vr0, vr2
000268  664120a0  vmerge_h.hf vr2, vr0, vr2
00026c  0e125202  vmul.f.mz.rn vr4{mr1}, vr4, vr5
000270  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
000274  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000278  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00027c  3b2f03fe  bneq r6, zero, -56
000280  9f020fff  addli r5, r30, -128
000284  9f010000  addli r3, zero, 0
000288  1f038000  addli r6, zero, 64
00028c  1f010000  addli r2, zero, 0
000290  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
000294  00a00000  mfence { lm }
000298  8b933210  add.s r7, r5, r3
00029c  9fc10100  addli r3, r3, 4
0002a0  e3830300  loadli.w r7,  0(r7)
0002a4  0b617110  add.f.rn r2, r2, r7
0002a8  bbcf61fe  bneq r3, r6, -16
0002ac  2b030000  lui r6, 0
0002b0  9f058003  addli r11, zero, 448
0002b4  1f030300  addli r6, r6, 0
0002b8  9f01830f  addli r3, r6, 1984
0002bc  1f050308  addli r10, r6, 1024
0002c0  ca800102  vloads.mz vr1{mr1}, 0(r3)
0002c4  9f010fef  addli r3, r30, -2176
0002c8  9f82810f  addli r5, r3, 1984
0002cc  9f810108  addli r3, r3, 1024
0002d0  42810202  vload.mz vr2{mr1}, 0(r5)
0002d4  abf2ffff  lui r5, 1048575
0002d8  9b9202fe  ori r5, r5, 4064
0002dc  e6412080  vmerge_l.hf vr3, vr0, vr2
0002e0  664120a0  vmerge_h.hf vr2, vr0, vr2
0002e4  66421080  vmerge_l.hf vr4, vr0, vr1
0002e8  e64010a0  vmerge_h.hf vr1, vr0, vr1
0002ec  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
0002f0  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
0002f4  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
0002f8  4a010502  vloads.mz vr2{mr1}, 0(r10)
0002fc  c2810102  vload.mz vr3{mr1}, 0(r3)
000300  9f824200  addli r5, r5, 32
000304  1f058500  addli r10, r10, 64
000308  9f818100  addli r3, r3, 64
00030c  1383b204  setlt.u r6, r5, r11
000310  66423080  vmerge_l.hf vr4, vr0, vr3
000314  e64130a0  vmerge_h.hf vr3, vr0, vr3
000318  e6422080  vmerge_l.hf vr5, vr0, vr2
00031c  664120a0  vmerge_h.hf vr2, vr0, vr2
000320  0e125202  vmul.f.mz.rn vr4{mr1}, vr4, vr5
000324  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
000328  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00032c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000330  3b2f03fe  bneq r6, zero, -56
000334  1f030fff  addli r6, r30, -128
000338  9f020000  addli r5, zero, 0
00033c  9f038000  addli r7, zero, 64
000340  9f010000  addli r3, zero, 0
000344  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
000348  00a00000  mfence { lm }
00034c  0b155310  add.s r10, r6, r5
000350  9fc20200  addli r5, r5, 4
000354  63050500  loadli.w r10,  0(r10)
000358  8be1a110  add.f.rn r3, r3, r10
00035c  bbcf72fe  bneq r5, r7, -16
000360  ab130000  lui r7, 1
000364  8b622118  sub.f.rn r5, r2, r2
000368  1bb32000  slli r6, r1, 2
00036c  9f8303f1  addli r7, r7, -1920
000370  0b137310  add.s r6, r6, r7
000374  73605300  stores.w r5, 0(r6)
000378  5b790000  j 968
00037c  1f03efee  addli r6, r30, -2192
000380  00340002  core_id r8
000384  7330c300  store.d r[13:14], 0(r6)
000388  bb000400  bneq r8, zero, 32
00038c  63030f00  loadli.w r6,  0(r30)
000390  ab0300f0  lui r7, 983040
000394  1b331300  slli r6, r6, 1
000398  17137300  or r6, r6, r7
00039c  ab130000  lui r7, 1
0003a0  9f8303f3  addli r7, r7, -1664
0003a4  7f037200  l_gm2sm r6, r7, 0(r[5:6])
0003a8  2bf20000  lui r4, 15
0003ac  00200300  mfence { sm, gm }
0003b0  1b12f2ff  ori r4, r4, 4095
0003b4  e7074fee  storeli.w r4, -2184(r30)
0003b8  80210204  csr_set csr3, r4
0003bc  00d00100  sync_group
0003c0  cbbc8400  ble.s r9, r8, 812
0003c4  9f032000  addli r7, zero, 16
0003c8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0003cc  2b130000  lui r6, 1
0003d0  ab2a0000  lui r21, 2
0003d4  9f020fef  addli r5, r30, -2176
0003d8  2b750000  lui r10, 7
0003dc  9f150000  addli r11, zero, 1
0003e0  1f070004  addli r14, zero, 512
0003e4  9f174000  addli r15, zero, 33
0003e8  1f080fff  addli r16, r30, -128
0003ec  9f088000  addli r17, zero, 64
0003f0  003a0002  core_id r20
0003f4  ee300062  vxor.s.mz vr1{mr1}, vr0, vr0
0003f8  6aa10322  vor.u.mz vr2{mr1}, r7, vr0
0003fc  1f8682ff  addli r12, r5, -64
000400  1f0303f3  addli r6, r6, -1664
000404  1b19f5ff  ori r18, r10, 4095
000408  9f8a0af3  addli r21, r21, -1664
00040c  5b380000  j 448
000410  9f030000  addli r7, zero, 0
000414  ea910322  vor.f.mz vr3{mr1}, r7, vr0
000418  1bbb0500  slli r22, r11, 0
00041c  1bb51500  slli r10, r11, 1
000420  9bb62500  slli r13, r11, 2
000424  2b02ffff  lui r4, 1048560
000428  7e010be0  vmmov mr2, r22
00042c  fab30124  vextract.s r7, vr3{mr2}
000430  6ab21324  vor.s.mz vr4{mr2}, r7, vr1
000434  7e0105e0  vmmov mr2, r10
000438  eab21324  vor.s.mz vr5{mr2}, r7, vr1
00043c  7e010be0  vmmov mr2, r22
000440  fab30124  vextract.s r7, vr3{mr2}
000444  7e8106e0  vmmov mr2, r13
000448  80560102  load_param_i r13, 2
00044c  6eb24022  vor.s.mz vr4{mr1}, vr1, vr4
000450  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000454  eab21324  vor.s.mz vr5{mr2}, r7, vr1
000458  9bb33500  slli r7, r11, 3
00045c  7e010be0  vmmov mr2, r22
000460  7ab50124  vextract.s r10, vr3{mr2}
000464  7e8103e0  vmmov mr2, r7
000468  9bb34500  slli r7, r11, 4
00046c  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000470  ea321524  vor.s.mz vr5{mr2}, r10, vr1
000474  7e010be0  vmmov mr2, r22
000478  7ab50124  vextract.s r10, vr3{mr2}
00047c  7e8103e0  vmmov mr2, r7
000480  9bb35500  slli r7, r11, 5
000484  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000488  ea321524  vor.s.mz vr5{mr2}, r10, vr1
00048c  7e010be0  vmmov mr2, r22
000490  7ab50124  vextract.s r10, vr3{mr2}
000494  7e8103e0  vmmov mr2, r7
000498  9bb36500  slli r7, r11, 6
00049c  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0004a0  ea321524  vor.s.mz vr5{mr2}, r10, vr1
0004a4  7e010be0  vmmov mr2, r22
0004a8  7ab50124  vextract.s r10, vr3{mr2}
0004ac  7e8103e0  vmmov mr2, r7
0004b0  9bb37500  slli r7, r11, 7
0004b4  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0004b8  ea321524  vor.s.mz vr5{mr2}, r10, vr1
0004bc  7e010be0  vmmov mr2, r22
0004c0  7ab50124  vextract.s r10, vr3{mr2}
0004c4  7e8103e0  vmmov mr2, r7
0004c8  9bb38500  slli r7, r11, 8
0004cc  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0004d0  ea321524  vor.s.mz vr5{mr2}, r10, vr1
0004d4  7e010be0  vmmov mr2, r22
0004d8  7ab50124  vextract.s r10, vr3{mr2}
0004dc  7e8103e0  vmmov mr2, r7
0004e0  9bb39500  slli r7, r11, 9
0004e4  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0004e8  ea321524  vor.s.mz vr5{mr2}, r10, vr1
0004ec  7e010be0  vmmov mr2, r22
0004f0  7ab50124  vextract.s r10, vr3{mr2}
0004f4  7e8103e0  vmmov mr2, r7
0004f8  9bb3a500  slli r7, r11, 10
0004fc  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000500  ea321524  vor.s.mz vr5{mr2}, r10, vr1
000504  7e010be0  vmmov mr2, r22
000508  7ab50124  vextract.s r10, vr3{mr2}
00050c  7e8103e0  vmmov mr2, r7
000510  9bb3b500  slli r7, r11, 11
000514  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000518  ea321524  vor.s.mz vr5{mr2}, r10, vr1
00051c  7e010be0  vmmov mr2, r22
000520  7ab50124  vextract.s r10, vr3{mr2}
000524  7e8103e0  vmmov mr2, r7
000528  9bb3c500  slli r7, r11, 12
00052c  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000530  ea321524  vor.s.mz vr5{mr2}, r10, vr1
000534  7e010be0  vmmov mr2, r22
000538  7ab50124  vextract.s r10, vr3{mr2}
00053c  7e8103e0  vmmov mr2, r7
000540  9bb3d500  slli r7, r11, 13
000544  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000548  ea321524  vor.s.mz vr5{mr2}, r10, vr1
00054c  7e010be0  vmmov mr2, r22
000550  7ab50124  vextract.s r10, vr3{mr2}
000554  7e8103e0  vmmov mr2, r7
000558  9bb3e500  slli r7, r11, 14
00055c  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000560  ea321524  vor.s.mz vr5{mr2}, r10, vr1
000564  7e010be0  vmmov mr2, r22
000568  7ab50124  vextract.s r10, vr3{mr2}
00056c  7e8103e0  vmmov mr2, r7
000570  9bb3f500  slli r7, r11, 15
000574  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000578  ea321524  vor.s.mz vr5{mr2}, r10, vr1
00057c  7e010be0  vmmov mr2, r22
000580  7ab50124  vextract.s r10, vr3{mr2}
000584  7e8103e0  vmmov mr2, r7
000588  9b331a00  slli r7, r20, 1
00058c  0b9a4611  add.s r20, r13, r20
000590  ea311524  vor.s.mz vr3{mr2}, r10, vr1
000594  8b935311  add.s r7, r7, r21
000598  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
00059c  ee313222  vor.s.mz vr3{mr1}, vr4, vr3
0005a0  eeb11122  vor.s.mz vr3{mr1}, vr3, vr1
0005a4  6e3231c2  vsrl.s.mz vr4{mr1}, vr2, vr3
0005a8  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
0005ac  96b14102  vadd.s.mz vr3{mr1}, vr3, vr4
0005b0  92313902  vadd.s.mz vr3{mr1}, r18, vr3
0005b4  ea313202  vand.s.mz vr3{mr1}, r4, vr3
0005b8  7aa50140  vextracti.u r10, 0(vr3)
0005bc  1b450501  srli r10, r10, 16
0005c0  73d0a300  stores.h r10, 0(r7)
0005c4  3f209a00  blt.s r20, r9, 8
0005c8  db240000  j 292
0005cc  3f99b0fe  blt.s r1, r11, -444
0005d0  6342ffee  loadli.w r4,  -2180(r30)
0005d4  1f0c0000  addli r24, zero, 0
0005d8  9f0b0000  addli r23, zero, 0
0005dc  1f0b0000  addli r22, zero, 0
0005e0  9f060300  addli r13, r6, 0
0005e4  8b134a10  add.s r7, r20, r4
0005e8  8b931320  mul.s r7, r7, r1
0005ec  b39c0328  sext_int2long r[26:27], r7
0005f0  97bcbc02  sll.d r[26:27], r[26:27], r11
0005f4  8b2c9111  add.ul r[26:27], r[3:4], r[26:27]
0005f8  0b956019  sub.s r10, r1, r22
0005fc  b30d0b28  zext_int2long r[28:29], r22
000600  9b391b00  slli r19, r22, 1
000604  2b0400f0  lui r8, 983040
000608  8b13e540  min.s r7, r10, r14
00060c  97bdbd02  sll.d r[28:29], r[28:29], r11
000610  1bb21300  slli r4, r7, 1
000614  8badbc11  add.ul r[28:29], r[26:27], r[28:29]
000618  8b994910  add.s r19, r19, r4
00061c  17148200  or r8, r4, r8
000620  0b124610  add.s r4, r12, r4
000624  8b193311  add.s r19, r6, r19
000628  7fa45d00  l_gm2lm r8, r5, 0(r[28:29])
00062c  00a00200  mfence { lm, gm }
000630  1f8489ff  addli r8, r19, -64
000634  42020202  vload.mz vr4{mr1}, 0(r4)
000638  ca010402  vloads.mz vr3{mr1}, 0(r8)
00063c  e6424080  vmerge_l.hf vr5, vr0, vr4
000640  664240a0  vmerge_h.hf vr4, vr0, vr4
000644  66433080  vmerge_l.hf vr6, vr0, vr3
000648  e64130a0  vmerge_h.hf vr3, vr0, vr3
00064c  8e926202  vmul.f.mz.rn vr5{mr1}, vr5, vr6
000650  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000654  96913202  vadd.f.mz.rn vr3{mr1}, vr5, vr3
000658  3f31f500  blt.s r10, r15, 76
00065c  1f85c3ff  addli r10, r7, -32
000660  1f0e0000  addli r28, zero, 0
000664  9f030fef  addli r7, r30, -2176
000668  9f8d0600  addli r27, r13, 0
00066c  4a820d02  vloads.mz vr4{mr1}, 0(r27)
000670  c2820302  vload.mz vr5{mr1}, 0(r7)
000674  1f0e4e00  addli r28, r28, 32
000678  9f8d8d00  addli r27, r27, 64
00067c  9f838300  addli r7, r7, 64
000680  66435080  vmerge_l.hf vr6, vr0, vr5
000684  e64250a0  vmerge_h.hf vr5, vr0, vr5
000688  e6434080  vmerge_l.hf vr7, vr0, vr4
00068c  664240a0  vmerge_h.hf vr4, vr0, vr4
000690  0e137302  vmul.f.mz.rn vr6{mr1}, vr6, vr7
000694  0e924202  vmul.f.mz.rn vr4{mr1}, vr5, vr4
000698  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
00069c  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
0006a0  3f3faefe  blt.s r28, r10, -52
0006a4  46103802  vstore_mask16.mz vr3{mr1}, 0(r16)
0006a8  9f030000  addli r7, zero, 0
0006ac  1f050000  addli r10, zero, 0
0006b0  00a00000  mfence { lm }
0006b4  0b127810  add.s r4, r16, r7
0006b8  9fc30300  addli r7, r7, 4
0006bc  63020200  loadli.w r4,  0(r4)
0006c0  0b654510  add.f.rn r10, r10, r4
0006c4  bbcf13ff  bneq r7, r17, -16
0006c8  0b627519  sub.f.rn r4, r10, r23
0006cc  1f0b0b04  addli r22, r22, 512
0006d0  9f860608  addli r13, r13, 1024
0006d4  8b634c10  add.f.rn r7, r24, r4
0006d8  0be48319  sub.f.rn r8, r7, r24
0006dc  1f8c0300  addli r24, r7, 0
0006e0  8b6b4418  sub.f.rn r23, r8, r4
0006e4  3f5c1bfe  blt.s r22, r1, -236
0006e8  dba5ffff  j -724
0006ec  00a00300  mfence { lm, sm, gm }
0006f0  e300ffee  loadli.w r1,  -2184(r30)
0006f4  80a10004  csr_set csr3, r1
0006f8  80300002  core_id r1
0006fc  00d00100  sync_group
000700  3bfa0000  bneq r1, zero, 668
000704  e340ffee  loadli.w r1,  -2180(r30)
000708  9f110000  addli r3, zero, 1
00070c  9f03efee  addli r7, r30, -2192
000710  2b0200f0  lui r4, 983040
000714  ebd20300  load.d r[6:7], 0(r7)
000718  b3900028  sext_int2long r[2:3], r1
00071c  97b03002  sll.d r[2:3], r[2:3], r3
000720  9bb11400  slli r3, r9, 1
000724  97914100  or r3, r3, r4
000728  2b220000  lui r4, 2
00072c  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
000730  1f0202f3  addli r4, r4, -1664
000734  5b4c0000  j 608
000738  9f010000  addli r3, zero, 0
00073c  1f010000  addli r2, zero, 0
000740  00a00300  mfence { lm, sm, gm }
000744  80210204  csr_set csr3, r4
000748  00d00100  sync_group
00074c  4ba81400  ble.s r9, r1, 520
000750  00520102  load_param_i r4, 2
000754  0b129218  sub.s r4, r4, r9
000758  3fa04000  blt.s r1, r4, 8
00075c  db010000  j 12
000760  1f020000  addli r4, zero, 0
000764  db030000  j 28
000768  0b924018  sub.s r4, r1, r4
00076c  ab120000  lui r5, 1
000770  1b322200  slli r4, r4, 2
000774  9f8202f1  addli r5, r5, -1920
000778  0b125210  add.s r4, r4, r5
00077c  6f420200  loads.w r4, 0(r4)
000780  8be14118  sub.f.rn r3, r3, r4
000784  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000788  ee300062  vxor.s.mz vr1{mr1}, vr0, vr0
00078c  8b613110  add.f.rn r3, r2, r3
000790  1f110000  addli r2, zero, 1
000794  9b321100  slli r5, r2, 1
000798  1b332100  slli r6, r2, 2
00079c  6a910122  vor.f.mz vr2{mr1}, r3, vr0
0007a0  9b310100  slli r3, r2, 0
0007a4  7e8101e0  vmmov mr2, r3
0007a8  7a320124  vextract.s r4, vr2{mr2}
0007ac  ea311224  vor.s.mz vr3{mr2}, r4, vr1
0007b0  7e8102e0  vmmov mr2, r5
0007b4  9b323100  slli r5, r2, 3
0007b8  6a321224  vor.s.mz vr4{mr2}, r4, vr1
0007bc  7e8101e0  vmmov mr2, r3
0007c0  7a320124  vextract.s r4, vr2{mr2}
0007c4  7e0103e0  vmmov mr2, r6
0007c8  1b334100  slli r6, r2, 4
0007cc  eeb13022  vor.s.mz vr3{mr1}, vr1, vr3
0007d0  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
0007d4  6a321224  vor.s.mz vr4{mr2}, r4, vr1
0007d8  7e8101e0  vmmov mr2, r3
0007dc  7a320124  vextract.s r4, vr2{mr2}
0007e0  7e8102e0  vmmov mr2, r5
0007e4  9b325100  slli r5, r2, 5
0007e8  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
0007ec  6a321224  vor.s.mz vr4{mr2}, r4, vr1
0007f0  7e8101e0  vmmov mr2, r3
0007f4  7a320124  vextract.s r4, vr2{mr2}
0007f8  7e0103e0  vmmov mr2, r6
0007fc  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000800  6a321224  vor.s.mz vr4{mr2}, r4, vr1
000804  7e8101e0  vmmov mr2, r3
000808  7a320124  vextract.s r4, vr2{mr2}
00080c  7e8102e0  vmmov mr2, r5
000810  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000814  6a321224  vor.s.mz vr4{mr2}, r4, vr1
000818  1b326100  slli r4, r2, 6
00081c  7e8101e0  vmmov mr2, r3
000820  fa320124  vextract.s r5, vr2{mr2}
000824  7e0102e0  vmmov mr2, r4
000828  1b327100  slli r4, r2, 7
00082c  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000830  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
000834  7e8101e0  vmmov mr2, r3
000838  fa320124  vextract.s r5, vr2{mr2}
00083c  7e0102e0  vmmov mr2, r4
000840  1b328100  slli r4, r2, 8
000844  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000848  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
00084c  7e8101e0  vmmov mr2, r3
000850  fa320124  vextract.s r5, vr2{mr2}
000854  7e0102e0  vmmov mr2, r4
000858  1b329100  slli r4, r2, 9
00085c  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000860  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
000864  7e8101e0  vmmov mr2, r3
000868  fa320124  vextract.s r5, vr2{mr2}
00086c  7e0102e0  vmmov mr2, r4
000870  1b32a100  slli r4, r2, 10
000874  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000878  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
00087c  7e8101e0  vmmov mr2, r3
000880  fa320124  vextract.s r5, vr2{mr2}
000884  7e0102e0  vmmov mr2, r4
000888  1b32b100  slli r4, r2, 11
00088c  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000890  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
000894  7e8101e0  vmmov mr2, r3
000898  fa320124  vextract.s r5, vr2{mr2}
00089c  7e0102e0  vmmov mr2, r4
0008a0  1b32c100  slli r4, r2, 12
0008a4  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
0008a8  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
0008ac  7e8101e0  vmmov mr2, r3
0008b0  fa320124  vextract.s r5, vr2{mr2}
0008b4  7e0102e0  vmmov mr2, r4
0008b8  1b32d100  slli r4, r2, 13
0008bc  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
0008c0  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
0008c4  7e8101e0  vmmov mr2, r3
0008c8  fa320124  vextract.s r5, vr2{mr2}
0008cc  7e0102e0  vmmov mr2, r4
0008d0  1b32e100  slli r4, r2, 14
0008d4  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
0008d8  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
0008dc  7e8101e0  vmmov mr2, r3
0008e0  fa320124  vextract.s r5, vr2{mr2}
0008e4  7e0102e0  vmmov mr2, r4
0008e8  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
0008ec  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
0008f0  7e8101e0  vmmov mr2, r3
0008f4  9b31f100  slli r3, r2, 15
0008f8  7a320124  vextract.s r4, vr2{mr2}
0008fc  7e8101e0  vmmov mr2, r3
000900  9f012000  addli r3, zero, 16
000904  6a311224  vor.s.mz vr2{mr2}, r4, vr1
000908  2b120000  lui r4, 1
00090c  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000910  6aa00122  vor.u.mz vr0{mr1}, r3, vr0
000914  1f0202f0  addli r4, r4, -2048
000918  6eb12122  vor.s.mz vr2{mr1}, vr3, vr2
00091c  ee301122  vor.s.mz vr1{mr1}, vr2, vr1
000920  6e3010c2  vsrl.s.mz vr0{mr1}, vr0, vr1
000924  6a300102  vand.s.mz vr0{mr1}, r2, vr0
000928  2b710000  lui r2, 7
00092c  1b11f1ff  ori r2, r2, 4095
000930  16b00002  vadd.s.mz vr0{mr1}, vr1, vr0
000934  12300102  vadd.s.mz vr0{mr1}, r2, vr0
000938  2b01ffff  lui r2, 1048560
00093c  6a300102  vand.s.mz vr0{mr1}, r2, vr0
000940  1bb11000  slli r2, r1, 1
000944  0b114110  add.s r2, r2, r4
000948  fa210040  vextracti.u r3, 0(vr0)
00094c  9bc10101  srli r3, r3, 16
000950  73503100  stores.h r3, 0(r2)
000954  2bf10000  lui r2, 15
000958  00a00300  mfence { lm, sm, gm }
00095c  1b11f1ff  ori r2, r2, 4095
000960  80210104  csr_set csr3, r2
000964  00d00100  sync_group
000968  bbd00000  bneq r1, zero, 52
00096c  e340ffee  loadli.w r1,  -2180(r30)
000970  9f110000  addli r3, zero, 1
000974  2b0200f0  lui r4, 983040
000978  b3900028  sext_int2long r[2:3], r1
00097c  97b03002  sll.d r[2:3], r[2:3], r3
000980  9bb11400  slli r3, r9, 1
000984  97914100  or r3, r3, r4
000988  2b120000  lui r4, 1
00098c  8b201610  add.ul r[2:3], r[13:14], r[2:3]
000990  1f0202f0  addli r4, r4, -2048
000994  ff914000  s_sm2gm r3, r4, 0(r[2:3])
000998  00200300  mfence { sm, gm }
00099c  9f0e8fee  addli sp, r30, -2240
0009a0  e38f2e11  loadli.w r31,  2192(sp)
0009a4  63cf2e11  loadli.w r30,  2196(sp)
0009a8  638e3e11  loadli.w r28,  2200(sp)
0009ac  e3cd3e11  loadli.w r27,  2204(sp)
0009b0  638d4e11  loadli.w r26,  2208(sp)
0009b4  e3cc4e11  loadli.w r25,  2212(sp)
0009b8  638c5e11  loadli.w r24,  2216(sp)
0009bc  e3cb5e11  loadli.w r23,  2220(sp)
0009c0  638b6e11  loadli.w r22,  2224(sp)
0009c4  e3ca6e11  loadli.w r21,  2228(sp)
0009c8  638a7e11  loadli.w r20,  2232(sp)
0009cc  e3c97e11  loadli.w r19,  2236(sp)
0009d0  9f8e8e11  addli sp, sp, 2240
0009d4  5f800f00  jr r31, 0
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
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
