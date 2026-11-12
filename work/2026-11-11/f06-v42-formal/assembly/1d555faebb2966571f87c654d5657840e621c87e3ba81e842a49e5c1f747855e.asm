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
000104  1f0c1000  addli r24, zero, 8
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
00013c  1f215000  addli r2, zero, 42
000140  9f345000  addli r9, zero, 43
000144  8b903031  div.s r1, r1, r19
000148  3faf80ff  blt.s r1, r24, -56
00014c  9f245000  addli r9, zero, 42
000150  5bf8ffff  j -64
000154  9f8e8e00  addli sp, sp, 64
000158  00a00300  mfence { lm, sm, gm }
00015c  00100000  exit
000160  9f8e8eee  addli sp, sp, -2240
000164  67c9ee11  storeli.w r30, 2196(sp)
000168  1f8f8e11  addli r30, sp, 2240
00016c  27060300  addli.d r[13:14], r[7:8], 0
000170  1f030008  addli r6, zero, 1024
000174  e7cb3e11  storeli.w r19, 2236(sp)
000178  e78b4e11  storeli.w r20, 2232(sp)
00017c  67cb5e11  storeli.w r21, 2228(sp)
000180  678b6e11  storeli.w r22, 2224(sp)
000184  e7ca7e11  storeli.w r23, 2220(sp)
000188  e78a8e11  storeli.w r24, 2216(sp)
00018c  67ca9e11  storeli.w r25, 2212(sp)
000190  678aae11  storeli.w r26, 2208(sp)
000194  e7c9be11  storeli.w r27, 2204(sp)
000198  e789ce11  storeli.w r28, 2200(sp)
00019c  6789fe11  storeli.w r31, 2192(sp)
0001a0  e3000f00  loadli.w r1,  0(r30)
0001a4  e7478fee  storeli.w r8, -2180(r30)
0001a8  bbb76000  bneq r1, r6, 492
0001ac  80300002  core_id r1
0001b0  3bf00000  bneq r1, zero, 28
0001b4  1f030010  addli r6, zero, 2048
0001b8  ab0300f0  lui r7, 983040
0001bc  17137300  or r6, r6, r7
0001c0  ab030000  lui r7, 0
0001c4  9f830300  addli r7, r7, 0
0001c8  7f037200  l_gm2sm r6, r7, 0(r[5:6])
0001cc  2bf20000  lui r4, 15
0001d0  00200300  mfence { sm, gm }
0001d4  1b12f2ff  ori r4, r4, 4095
0001d8  80210204  csr_set csr3, r4
0001dc  00d00100  sync_group
0001e0  cbc51402  ble.s r9, r1, 1392
0001e4  e342ffee  loadli.w r5,  -2180(r30)
0001e8  1f130000  addli r6, zero, 1
0001ec  9f030010  addli r7, zero, 2048
0001f0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0001f4  8b925010  add.s r5, r1, r5
0001f8  9bb2a200  slli r5, r5, 10
0001fc  33950228  sext_int2long r[11:12], r5
000200  97326502  sll.d r[6:7], r[11:12], r6
000204  1f058003  addli r10, zero, 448
000208  8b225110  add.ul r[6:7], r[3:4], r[6:7]
00020c  ab0100f0  lui r3, 983040
000210  1f010fef  addli r2, r30, -2176
000214  97913300  or r3, r7, r3
000218  ffa12200  l_gm2lm r3, r2, 0(r[6:7])
00021c  ab010000  lui r3, 0
000220  00a00200  mfence { lm, gm }
000224  9f810100  addli r3, r3, 0
000228  9f828107  addli r5, r3, 960
00022c  ca800202  vloads.mz vr1{mr1}, 0(r5)
000230  9f028107  addli r5, r2, 960
000234  42810202  vload.mz vr2{mr1}, 0(r5)
000238  abf2ffff  lui r5, 1048575
00023c  9b9202fe  ori r5, r5, 4064
000240  e6412080  vmerge_l.hf vr3, vr0, vr2
000244  664120a0  vmerge_h.hf vr2, vr0, vr2
000248  66421080  vmerge_l.hf vr4, vr0, vr1
00024c  e64010a0  vmerge_h.hf vr1, vr0, vr1
000250  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
000254  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
000258  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
00025c  4a810102  vloads.mz vr2{mr1}, 0(r3)
000260  c2010102  vload.mz vr3{mr1}, 0(r2)
000264  9f824200  addli r5, r5, 32
000268  9f818100  addli r3, r3, 64
00026c  1f018100  addli r2, r2, 64
000270  1383a204  setlt.u r6, r5, r10
000274  66423080  vmerge_l.hf vr4, vr0, vr3
000278  e64130a0  vmerge_h.hf vr3, vr0, vr3
00027c  e6422080  vmerge_l.hf vr5, vr0, vr2
000280  664120a0  vmerge_h.hf vr2, vr0, vr2
000284  0e125202  vmul.f.mz.rn vr4{mr1}, vr4, vr5
000288  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
00028c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000290  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000294  3b2f03fe  bneq r6, zero, -56
000298  9f020fff  addli r5, r30, -128
00029c  9f010000  addli r3, zero, 0
0002a0  1f038000  addli r6, zero, 64
0002a4  1f010000  addli r2, zero, 0
0002a8  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
0002ac  00a00000  mfence { lm }
0002b0  8b933210  add.s r7, r5, r3
0002b4  9fc10100  addli r3, r3, 4
0002b8  e3830300  loadli.w r7,  0(r7)
0002bc  0b617110  add.f.rn r2, r2, r7
0002c0  bbcf61fe  bneq r3, r6, -16
0002c4  2b030000  lui r6, 0
0002c8  9f058003  addli r11, zero, 448
0002cc  1f030300  addli r6, r6, 0
0002d0  9f01830f  addli r3, r6, 1984
0002d4  1f050308  addli r10, r6, 1024
0002d8  ca800102  vloads.mz vr1{mr1}, 0(r3)
0002dc  9f010fef  addli r3, r30, -2176
0002e0  9f82810f  addli r5, r3, 1984
0002e4  9f810108  addli r3, r3, 1024
0002e8  42810202  vload.mz vr2{mr1}, 0(r5)
0002ec  abf2ffff  lui r5, 1048575
0002f0  9b9202fe  ori r5, r5, 4064
0002f4  e6412080  vmerge_l.hf vr3, vr0, vr2
0002f8  664120a0  vmerge_h.hf vr2, vr0, vr2
0002fc  66421080  vmerge_l.hf vr4, vr0, vr1
000300  e64010a0  vmerge_h.hf vr1, vr0, vr1
000304  8e914102  vmul.f.mz.rn vr3{mr1}, vr3, vr4
000308  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
00030c  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
000310  4a010502  vloads.mz vr2{mr1}, 0(r10)
000314  c2810102  vload.mz vr3{mr1}, 0(r3)
000318  9f824200  addli r5, r5, 32
00031c  1f058500  addli r10, r10, 64
000320  9f818100  addli r3, r3, 64
000324  1383b204  setlt.u r6, r5, r11
000328  66423080  vmerge_l.hf vr4, vr0, vr3
00032c  e64130a0  vmerge_h.hf vr3, vr0, vr3
000330  e6422080  vmerge_l.hf vr5, vr0, vr2
000334  664120a0  vmerge_h.hf vr2, vr0, vr2
000338  0e125202  vmul.f.mz.rn vr4{mr1}, vr4, vr5
00033c  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
000340  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000344  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000348  3b2f03fe  bneq r6, zero, -56
00034c  1f030fff  addli r6, r30, -128
000350  9f020000  addli r5, zero, 0
000354  9f038000  addli r7, zero, 64
000358  9f010000  addli r3, zero, 0
00035c  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
000360  00a00000  mfence { lm }
000364  0b155310  add.s r10, r6, r5
000368  9fc20200  addli r5, r5, 4
00036c  63050500  loadli.w r10,  0(r10)
000370  8be1a110  add.f.rn r3, r3, r10
000374  bbcf72fe  bneq r5, r7, -16
000378  ab130000  lui r7, 1
00037c  8b622118  sub.f.rn r5, r2, r2
000380  1bb32000  slli r6, r1, 2
000384  9f8303f1  addli r7, r7, -1920
000388  0b137310  add.s r6, r6, r7
00038c  73605300  stores.w r5, 0(r6)
000390  5b790000  j 968
000394  1f03efee  addli r6, r30, -2192
000398  00340002  core_id r8
00039c  7330c300  store.d r[13:14], 0(r6)
0003a0  bb000400  bneq r8, zero, 32
0003a4  63030f00  loadli.w r6,  0(r30)
0003a8  ab0300f0  lui r7, 983040
0003ac  1b331300  slli r6, r6, 1
0003b0  17137300  or r6, r6, r7
0003b4  ab130000  lui r7, 1
0003b8  9f8303f3  addli r7, r7, -1664
0003bc  7f037200  l_gm2sm r6, r7, 0(r[5:6])
0003c0  2bf20000  lui r4, 15
0003c4  00200300  mfence { sm, gm }
0003c8  1b12f2ff  ori r4, r4, 4095
0003cc  e7074fee  storeli.w r4, -2184(r30)
0003d0  80210204  csr_set csr3, r4
0003d4  00d00100  sync_group
0003d8  cbbc8400  ble.s r9, r8, 812
0003dc  9f032000  addli r7, zero, 16
0003e0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0003e4  2b130000  lui r6, 1
0003e8  ab2a0000  lui r21, 2
0003ec  9f020fef  addli r5, r30, -2176
0003f0  2b750000  lui r10, 7
0003f4  9f150000  addli r11, zero, 1
0003f8  1f070004  addli r14, zero, 512
0003fc  9f174000  addli r15, zero, 33
000400  1f080fff  addli r16, r30, -128
000404  9f088000  addli r17, zero, 64
000408  003a0002  core_id r20
00040c  ee300062  vxor.s.mz vr1{mr1}, vr0, vr0
000410  6aa10322  vor.u.mz vr2{mr1}, r7, vr0
000414  1f8682ff  addli r12, r5, -64
000418  1f0303f3  addli r6, r6, -1664
00041c  1b19f5ff  ori r18, r10, 4095
000420  9f8a0af3  addli r21, r21, -1664
000424  5b380000  j 448
000428  9f030000  addli r7, zero, 0
00042c  ea910322  vor.f.mz vr3{mr1}, r7, vr0
000430  1bbb0500  slli r22, r11, 0
000434  1bb51500  slli r10, r11, 1
000438  9bb62500  slli r13, r11, 2
00043c  2b02ffff  lui r4, 1048560
000440  7e010be0  vmmov mr2, r22
000444  fab30124  vextract.s r7, vr3{mr2}
000448  6ab21324  vor.s.mz vr4{mr2}, r7, vr1
00044c  7e0105e0  vmmov mr2, r10
000450  eab21324  vor.s.mz vr5{mr2}, r7, vr1
000454  7e010be0  vmmov mr2, r22
000458  fab30124  vextract.s r7, vr3{mr2}
00045c  7e8106e0  vmmov mr2, r13
000460  80560102  load_param_i r13, 2
000464  6eb24022  vor.s.mz vr4{mr1}, vr1, vr4
000468  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
00046c  eab21324  vor.s.mz vr5{mr2}, r7, vr1
000470  9bb33500  slli r7, r11, 3
000474  7e010be0  vmmov mr2, r22
000478  7ab50124  vextract.s r10, vr3{mr2}
00047c  7e8103e0  vmmov mr2, r7
000480  9bb34500  slli r7, r11, 4
000484  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000488  ea321524  vor.s.mz vr5{mr2}, r10, vr1
00048c  7e010be0  vmmov mr2, r22
000490  7ab50124  vextract.s r10, vr3{mr2}
000494  7e8103e0  vmmov mr2, r7
000498  9bb35500  slli r7, r11, 5
00049c  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0004a0  ea321524  vor.s.mz vr5{mr2}, r10, vr1
0004a4  7e010be0  vmmov mr2, r22
0004a8  7ab50124  vextract.s r10, vr3{mr2}
0004ac  7e8103e0  vmmov mr2, r7
0004b0  9bb36500  slli r7, r11, 6
0004b4  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0004b8  ea321524  vor.s.mz vr5{mr2}, r10, vr1
0004bc  7e010be0  vmmov mr2, r22
0004c0  7ab50124  vextract.s r10, vr3{mr2}
0004c4  7e8103e0  vmmov mr2, r7
0004c8  9bb37500  slli r7, r11, 7
0004cc  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0004d0  ea321524  vor.s.mz vr5{mr2}, r10, vr1
0004d4  7e010be0  vmmov mr2, r22
0004d8  7ab50124  vextract.s r10, vr3{mr2}
0004dc  7e8103e0  vmmov mr2, r7
0004e0  9bb38500  slli r7, r11, 8
0004e4  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0004e8  ea321524  vor.s.mz vr5{mr2}, r10, vr1
0004ec  7e010be0  vmmov mr2, r22
0004f0  7ab50124  vextract.s r10, vr3{mr2}
0004f4  7e8103e0  vmmov mr2, r7
0004f8  9bb39500  slli r7, r11, 9
0004fc  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000500  ea321524  vor.s.mz vr5{mr2}, r10, vr1
000504  7e010be0  vmmov mr2, r22
000508  7ab50124  vextract.s r10, vr3{mr2}
00050c  7e8103e0  vmmov mr2, r7
000510  9bb3a500  slli r7, r11, 10
000514  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000518  ea321524  vor.s.mz vr5{mr2}, r10, vr1
00051c  7e010be0  vmmov mr2, r22
000520  7ab50124  vextract.s r10, vr3{mr2}
000524  7e8103e0  vmmov mr2, r7
000528  9bb3b500  slli r7, r11, 11
00052c  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000530  ea321524  vor.s.mz vr5{mr2}, r10, vr1
000534  7e010be0  vmmov mr2, r22
000538  7ab50124  vextract.s r10, vr3{mr2}
00053c  7e8103e0  vmmov mr2, r7
000540  9bb3c500  slli r7, r11, 12
000544  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000548  ea321524  vor.s.mz vr5{mr2}, r10, vr1
00054c  7e010be0  vmmov mr2, r22
000550  7ab50124  vextract.s r10, vr3{mr2}
000554  7e8103e0  vmmov mr2, r7
000558  9bb3d500  slli r7, r11, 13
00055c  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000560  ea321524  vor.s.mz vr5{mr2}, r10, vr1
000564  7e010be0  vmmov mr2, r22
000568  7ab50124  vextract.s r10, vr3{mr2}
00056c  7e8103e0  vmmov mr2, r7
000570  9bb3e500  slli r7, r11, 14
000574  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000578  ea321524  vor.s.mz vr5{mr2}, r10, vr1
00057c  7e010be0  vmmov mr2, r22
000580  7ab50124  vextract.s r10, vr3{mr2}
000584  7e8103e0  vmmov mr2, r7
000588  9bb3f500  slli r7, r11, 15
00058c  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
000590  ea321524  vor.s.mz vr5{mr2}, r10, vr1
000594  7e010be0  vmmov mr2, r22
000598  7ab50124  vextract.s r10, vr3{mr2}
00059c  7e8103e0  vmmov mr2, r7
0005a0  9b331a00  slli r7, r20, 1
0005a4  0b9a4611  add.s r20, r13, r20
0005a8  ea311524  vor.s.mz vr3{mr2}, r10, vr1
0005ac  8b935311  add.s r7, r7, r21
0005b0  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
0005b4  ee313222  vor.s.mz vr3{mr1}, vr4, vr3
0005b8  eeb11122  vor.s.mz vr3{mr1}, vr3, vr1
0005bc  6e3231c2  vsrl.s.mz vr4{mr1}, vr2, vr3
0005c0  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
0005c4  96b14102  vadd.s.mz vr3{mr1}, vr3, vr4
0005c8  92313902  vadd.s.mz vr3{mr1}, r18, vr3
0005cc  ea313202  vand.s.mz vr3{mr1}, r4, vr3
0005d0  7aa50140  vextracti.u r10, 0(vr3)
0005d4  1b450501  srli r10, r10, 16
0005d8  73d0a300  stores.h r10, 0(r7)
0005dc  3f209a00  blt.s r20, r9, 8
0005e0  db240000  j 292
0005e4  3f99b0fe  blt.s r1, r11, -444
0005e8  6342ffee  loadli.w r4,  -2180(r30)
0005ec  1f0c0000  addli r24, zero, 0
0005f0  9f0b0000  addli r23, zero, 0
0005f4  1f0b0000  addli r22, zero, 0
0005f8  9f060300  addli r13, r6, 0
0005fc  8b134a10  add.s r7, r20, r4
000600  8b931320  mul.s r7, r7, r1
000604  b39c0328  sext_int2long r[26:27], r7
000608  97bcbc02  sll.d r[26:27], r[26:27], r11
00060c  8b2c9111  add.ul r[26:27], r[3:4], r[26:27]
000610  0b956019  sub.s r10, r1, r22
000614  b30d0b28  zext_int2long r[28:29], r22
000618  9b391b00  slli r19, r22, 1
00061c  2b0400f0  lui r8, 983040
000620  8b13e540  min.s r7, r10, r14
000624  97bdbd02  sll.d r[28:29], r[28:29], r11
000628  1bb21300  slli r4, r7, 1
00062c  8badbc11  add.ul r[28:29], r[26:27], r[28:29]
000630  8b994910  add.s r19, r19, r4
000634  17148200  or r8, r4, r8
000638  0b124610  add.s r4, r12, r4
00063c  8b193311  add.s r19, r6, r19
000640  7fa45d00  l_gm2lm r8, r5, 0(r[28:29])
000644  00a00200  mfence { lm, gm }
000648  1f8489ff  addli r8, r19, -64
00064c  42020202  vload.mz vr4{mr1}, 0(r4)
000650  ca010402  vloads.mz vr3{mr1}, 0(r8)
000654  e6424080  vmerge_l.hf vr5, vr0, vr4
000658  664240a0  vmerge_h.hf vr4, vr0, vr4
00065c  66433080  vmerge_l.hf vr6, vr0, vr3
000660  e64130a0  vmerge_h.hf vr3, vr0, vr3
000664  8e926202  vmul.f.mz.rn vr5{mr1}, vr5, vr6
000668  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
00066c  96913202  vadd.f.mz.rn vr3{mr1}, vr5, vr3
000670  3f31f500  blt.s r10, r15, 76
000674  1f85c3ff  addli r10, r7, -32
000678  1f0e0000  addli r28, zero, 0
00067c  9f030fef  addli r7, r30, -2176
000680  9f8d0600  addli r27, r13, 0
000684  4a820d02  vloads.mz vr4{mr1}, 0(r27)
000688  c2820302  vload.mz vr5{mr1}, 0(r7)
00068c  1f0e4e00  addli r28, r28, 32
000690  9f8d8d00  addli r27, r27, 64
000694  9f838300  addli r7, r7, 64
000698  66435080  vmerge_l.hf vr6, vr0, vr5
00069c  e64250a0  vmerge_h.hf vr5, vr0, vr5
0006a0  e6434080  vmerge_l.hf vr7, vr0, vr4
0006a4  664240a0  vmerge_h.hf vr4, vr0, vr4
0006a8  0e137302  vmul.f.mz.rn vr6{mr1}, vr6, vr7
0006ac  0e924202  vmul.f.mz.rn vr4{mr1}, vr5, vr4
0006b0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0006b4  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
0006b8  3f3faefe  blt.s r28, r10, -52
0006bc  46103802  vstore_mask16.mz vr3{mr1}, 0(r16)
0006c0  9f030000  addli r7, zero, 0
0006c4  1f050000  addli r10, zero, 0
0006c8  00a00000  mfence { lm }
0006cc  0b127810  add.s r4, r16, r7
0006d0  9fc30300  addli r7, r7, 4
0006d4  63020200  loadli.w r4,  0(r4)
0006d8  0b654510  add.f.rn r10, r10, r4
0006dc  bbcf13ff  bneq r7, r17, -16
0006e0  0b627519  sub.f.rn r4, r10, r23
0006e4  1f0b0b04  addli r22, r22, 512
0006e8  9f860608  addli r13, r13, 1024
0006ec  8b634c10  add.f.rn r7, r24, r4
0006f0  0be48319  sub.f.rn r8, r7, r24
0006f4  1f8c0300  addli r24, r7, 0
0006f8  8b6b4418  sub.f.rn r23, r8, r4
0006fc  3f5c1bfe  blt.s r22, r1, -236
000700  dba5ffff  j -724
000704  00a00300  mfence { lm, sm, gm }
000708  e300ffee  loadli.w r1,  -2184(r30)
00070c  80a10004  csr_set csr3, r1
000710  80300002  core_id r1
000714  00d00100  sync_group
000718  3bfa0000  bneq r1, zero, 668
00071c  e340ffee  loadli.w r1,  -2180(r30)
000720  9f110000  addli r3, zero, 1
000724  9f03efee  addli r7, r30, -2192
000728  2b0200f0  lui r4, 983040
00072c  ebd20300  load.d r[6:7], 0(r7)
000730  b3900028  sext_int2long r[2:3], r1
000734  97b03002  sll.d r[2:3], r[2:3], r3
000738  9bb11400  slli r3, r9, 1
00073c  97914100  or r3, r3, r4
000740  2b220000  lui r4, 2
000744  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
000748  1f0202f3  addli r4, r4, -1664
00074c  5b4c0000  j 608
000750  9f010000  addli r3, zero, 0
000754  1f010000  addli r2, zero, 0
000758  00a00300  mfence { lm, sm, gm }
00075c  80210204  csr_set csr3, r4
000760  00d00100  sync_group
000764  4ba81400  ble.s r9, r1, 520
000768  00520102  load_param_i r4, 2
00076c  0b129218  sub.s r4, r4, r9
000770  3fa04000  blt.s r1, r4, 8
000774  db010000  j 12
000778  1f020000  addli r4, zero, 0
00077c  db030000  j 28
000780  0b924018  sub.s r4, r1, r4
000784  ab120000  lui r5, 1
000788  1b322200  slli r4, r4, 2
00078c  9f8202f1  addli r5, r5, -1920
000790  0b125210  add.s r4, r4, r5
000794  6f420200  loads.w r4, 0(r4)
000798  8be14118  sub.f.rn r3, r3, r4
00079c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0007a0  ee300062  vxor.s.mz vr1{mr1}, vr0, vr0
0007a4  8b613110  add.f.rn r3, r2, r3
0007a8  1f110000  addli r2, zero, 1
0007ac  9b321100  slli r5, r2, 1
0007b0  1b332100  slli r6, r2, 2
0007b4  6a910122  vor.f.mz vr2{mr1}, r3, vr0
0007b8  9b310100  slli r3, r2, 0
0007bc  7e8101e0  vmmov mr2, r3
0007c0  7a320124  vextract.s r4, vr2{mr2}
0007c4  ea311224  vor.s.mz vr3{mr2}, r4, vr1
0007c8  7e8102e0  vmmov mr2, r5
0007cc  9b323100  slli r5, r2, 3
0007d0  6a321224  vor.s.mz vr4{mr2}, r4, vr1
0007d4  7e8101e0  vmmov mr2, r3
0007d8  7a320124  vextract.s r4, vr2{mr2}
0007dc  7e0103e0  vmmov mr2, r6
0007e0  1b334100  slli r6, r2, 4
0007e4  eeb13022  vor.s.mz vr3{mr1}, vr1, vr3
0007e8  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
0007ec  6a321224  vor.s.mz vr4{mr2}, r4, vr1
0007f0  7e8101e0  vmmov mr2, r3
0007f4  7a320124  vextract.s r4, vr2{mr2}
0007f8  7e8102e0  vmmov mr2, r5
0007fc  9b325100  slli r5, r2, 5
000800  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000804  6a321224  vor.s.mz vr4{mr2}, r4, vr1
000808  7e8101e0  vmmov mr2, r3
00080c  7a320124  vextract.s r4, vr2{mr2}
000810  7e0103e0  vmmov mr2, r6
000814  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000818  6a321224  vor.s.mz vr4{mr2}, r4, vr1
00081c  7e8101e0  vmmov mr2, r3
000820  7a320124  vextract.s r4, vr2{mr2}
000824  7e8102e0  vmmov mr2, r5
000828  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
00082c  6a321224  vor.s.mz vr4{mr2}, r4, vr1
000830  1b326100  slli r4, r2, 6
000834  7e8101e0  vmmov mr2, r3
000838  fa320124  vextract.s r5, vr2{mr2}
00083c  7e0102e0  vmmov mr2, r4
000840  1b327100  slli r4, r2, 7
000844  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000848  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
00084c  7e8101e0  vmmov mr2, r3
000850  fa320124  vextract.s r5, vr2{mr2}
000854  7e0102e0  vmmov mr2, r4
000858  1b328100  slli r4, r2, 8
00085c  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000860  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
000864  7e8101e0  vmmov mr2, r3
000868  fa320124  vextract.s r5, vr2{mr2}
00086c  7e0102e0  vmmov mr2, r4
000870  1b329100  slli r4, r2, 9
000874  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000878  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
00087c  7e8101e0  vmmov mr2, r3
000880  fa320124  vextract.s r5, vr2{mr2}
000884  7e0102e0  vmmov mr2, r4
000888  1b32a100  slli r4, r2, 10
00088c  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000890  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
000894  7e8101e0  vmmov mr2, r3
000898  fa320124  vextract.s r5, vr2{mr2}
00089c  7e0102e0  vmmov mr2, r4
0008a0  1b32b100  slli r4, r2, 11
0008a4  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
0008a8  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
0008ac  7e8101e0  vmmov mr2, r3
0008b0  fa320124  vextract.s r5, vr2{mr2}
0008b4  7e0102e0  vmmov mr2, r4
0008b8  1b32c100  slli r4, r2, 12
0008bc  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
0008c0  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
0008c4  7e8101e0  vmmov mr2, r3
0008c8  fa320124  vextract.s r5, vr2{mr2}
0008cc  7e0102e0  vmmov mr2, r4
0008d0  1b32d100  slli r4, r2, 13
0008d4  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
0008d8  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
0008dc  7e8101e0  vmmov mr2, r3
0008e0  fa320124  vextract.s r5, vr2{mr2}
0008e4  7e0102e0  vmmov mr2, r4
0008e8  1b32e100  slli r4, r2, 14
0008ec  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
0008f0  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
0008f4  7e8101e0  vmmov mr2, r3
0008f8  fa320124  vextract.s r5, vr2{mr2}
0008fc  7e0102e0  vmmov mr2, r4
000900  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000904  6ab21224  vor.s.mz vr4{mr2}, r5, vr1
000908  7e8101e0  vmmov mr2, r3
00090c  9b31f100  slli r3, r2, 15
000910  7a320124  vextract.s r4, vr2{mr2}
000914  7e8101e0  vmmov mr2, r3
000918  9f012000  addli r3, zero, 16
00091c  6a311224  vor.s.mz vr2{mr2}, r4, vr1
000920  2b120000  lui r4, 1
000924  eeb14122  vor.s.mz vr3{mr1}, vr3, vr4
000928  6aa00122  vor.u.mz vr0{mr1}, r3, vr0
00092c  1f0202f0  addli r4, r4, -2048
000930  6eb12122  vor.s.mz vr2{mr1}, vr3, vr2
000934  ee301122  vor.s.mz vr1{mr1}, vr2, vr1
000938  6e3010c2  vsrl.s.mz vr0{mr1}, vr0, vr1
00093c  6a300102  vand.s.mz vr0{mr1}, r2, vr0
000940  2b710000  lui r2, 7
000944  1b11f1ff  ori r2, r2, 4095
000948  16b00002  vadd.s.mz vr0{mr1}, vr1, vr0
00094c  12300102  vadd.s.mz vr0{mr1}, r2, vr0
000950  2b01ffff  lui r2, 1048560
000954  6a300102  vand.s.mz vr0{mr1}, r2, vr0
000958  1bb11000  slli r2, r1, 1
00095c  0b114110  add.s r2, r2, r4
000960  fa210040  vextracti.u r3, 0(vr0)
000964  9bc10101  srli r3, r3, 16
000968  73503100  stores.h r3, 0(r2)
00096c  2bf10000  lui r2, 15
000970  00a00300  mfence { lm, sm, gm }
000974  1b11f1ff  ori r2, r2, 4095
000978  80210104  csr_set csr3, r2
00097c  00d00100  sync_group
000980  bbd00000  bneq r1, zero, 52
000984  e340ffee  loadli.w r1,  -2180(r30)
000988  9f110000  addli r3, zero, 1
00098c  2b0200f0  lui r4, 983040
000990  b3900028  sext_int2long r[2:3], r1
000994  97b03002  sll.d r[2:3], r[2:3], r3
000998  9bb11400  slli r3, r9, 1
00099c  97914100  or r3, r3, r4
0009a0  2b120000  lui r4, 1
0009a4  8b201610  add.ul r[2:3], r[13:14], r[2:3]
0009a8  1f0202f0  addli r4, r4, -2048
0009ac  ff914000  s_sm2gm r3, r4, 0(r[2:3])
0009b0  00200300  mfence { sm, gm }
0009b4  9f0e8fee  addli sp, r30, -2240
0009b8  e38f2e11  loadli.w r31,  2192(sp)
0009bc  63cf2e11  loadli.w r30,  2196(sp)
0009c0  638e3e11  loadli.w r28,  2200(sp)
0009c4  e3cd3e11  loadli.w r27,  2204(sp)
0009c8  638d4e11  loadli.w r26,  2208(sp)
0009cc  e3cc4e11  loadli.w r25,  2212(sp)
0009d0  638c5e11  loadli.w r24,  2216(sp)
0009d4  e3cb5e11  loadli.w r23,  2220(sp)
0009d8  638b6e11  loadli.w r22,  2224(sp)
0009dc  e3ca6e11  loadli.w r21,  2228(sp)
0009e0  638a7e11  loadli.w r20,  2232(sp)
0009e4  e3c97e11  loadli.w r19,  2236(sp)
0009e8  9f8e8e11  addli sp, sp, 2240
0009ec  5f800f00  jr r31, 0
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
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
