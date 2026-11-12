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
000078  9f495000  addli r19, zero, 44
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
0000dc  9f8e6efb  addli sp, sp, -592
0000e0  1f8f2e04  addli r30, sp, 528
0000e4  ab000000  lui r1, 0
0000e8  80310002  core_id r3
0000ec  abf20000  lui r5, 15
0000f0  805d0002  load_param_i r27, 0
0000f4  63494f00  loadli.w r18,  36(r30)
0000f8  63024f00  loadli.w r4,  32(r30)
0000fc  1bb12100  slli r2, r3, 2
000100  9f800000  addli r1, r1, 0
000104  9b9af2ff  ori r21, r5, 4095
000108  abf27fff  lui r5, 1046527
00010c  63085f00  loadli.w r16,  40(r30)
000110  8b191110  add.s r19, r2, r1
000114  9b92f2ff  ori r5, r5, 4095
000118  0b124920  mul.s r4, r18, r4
00011c  73e80940  stores.w zero, 1040(r19)
000120  00a00300  mfence { lm, sm, gm }
000124  80a10a04  csr_set csr3, r21
000128  00d00100  sync_group
00012c  73e05900  stores.w r5, 0(r19)
000130  0b1e0221  mul.s r28, r4, r16
000134  00a00300  mfence { lm, sm, gm }
000138  80a10a04  csr_set csr3, r21
00013c  00d00100  sync_group
000140  cb19be15  ble.s r28, r27, 10852
000144  1f028000  addli r4, zero, 64
000148  9f832908  addli r7, r19, 1040
00014c  1f240000  addli r8, zero, 2
000150  1f0b0ffe  addli r22, r30, -256
000154  9f0b0001  addli r23, zero, 128
000158  1f0c0fff  addli r24, r30, -128
00015c  9f0cf000  addli r25, zero, 120
000160  2b0d80ff  lui r26, 1046528
000164  e74f3ffb  storeli.w r19, -516(r30)
000168  e70f5ffb  storeli.w r21, -520(r30)
00016c  674fcffb  storeli.w r28, -524(r30)
000170  0b934130  div.s r6, r3, r4
000174  67097ffc  storeli.w r7, -368(r30)
000178  80d30002  load_param_i r7, 1
00017c  6b528f00  load.d r[5:6], 8(r30)
000180  e70f7ffc  storeli.w r7, -264(r30)
000184  9b83f103  andi r7, r3, 63
000188  674f7ffc  storeli.w r7, -268(r30)
00018c  e74f6ffc  storeli.w r6, -260(r30)
000190  1b336300  slli r6, r6, 6
000194  8b916118  sub.s r3, r3, r6
000198  2bf3ffff  lui r6, 1048575
00019c  9bb35100  slli r7, r3, 5
0001a0  9b1103f0  ori r3, r6, 3840
0001a4  17013100  and r2, r2, r3
0001a8  e7487ffc  storeli.w r7, -372(r30)
0001ac  33930328  sext_int2long r[7:8], r7
0001b0  9f71f00f  addli r3, zero, 2047
0001b4  8b181110  add.s r17, r2, r1
0001b8  17338302  sll.d r[7:8], r[7:8], r8
0001bc  1f8a2808  addli r20, r17, 1040
0001c0  8b206210  add.ul r[2:3], r[5:6], r[7:8]
0001c4  73301fe8  store.d r[2:3], -384(r30)
0001c8  670f4ffb  storeli.w r20, -528(r30)
0001cc  db020000  j 20
0001d0  e300fffd  loadli.w r1,  -264(r30)
0001d4  8b9d1d10  add.s r27, r27, r1
0001d8  3fa0cd01  blt.s r27, r28, 8
0001dc  5b390500  j 10696
0001e0  8b900d31  div.s r1, r27, r16
0001e4  6341fffd  loadli.w r2,  -260(r30)
0001e8  8b902031  div.s r1, r1, r18
0001ec  8b902010  add.s r1, r1, r2
0001f0  bf8f11fe  blt.s r3, r1, -32
0001f4  1f010000  addli r2, zero, 0
0001f8  8b112b10  add.s r3, r22, r2
0001fc  1f011100  addli r2, r2, 8
000200  67800100  storeli.w zero, 0(r3)
000204  67c00100  storeli.w zero, 4(r3)
000208  00a00000  mfence { lm }
00020c  bb3f71ff  bneq r2, r23, -20
000210  63411ffd  loadli.w r2,  -372(r30)
000214  9bb0b000  slli r1, r1, 11
000218  9f210000  addli r3, zero, 2
00021c  8b902010  add.s r1, r1, r2
000220  b3900028  sext_int2long r[2:3], r1
000224  17b23002  sll.d r[5:6], r[2:3], r3
000228  6b510f00  load.d r[3:4], 0(r30)
00022c  ab0000f0  lui r1, 983040
000230  97901b00  or r1, r23, r1
000234  73344fee  store.d r[5:6], -280(r30)
000238  0b214110  add.ul r[3:4], r[3:4], r[5:6]
00023c  ff206101  l_gm2lm r1, r22, 0(r[3:4])
000240  9f000000  addli r1, zero, 0
000244  0b111c10  add.s r2, r24, r1
000248  9f801000  addli r1, r1, 8
00024c  67000100  storeli.w zero, 0(r2)
000250  67400100  storeli.w zero, 4(r2)
000254  00a00000  mfence { lm }
000258  bbbf70ff  bneq r1, r23, -20
00025c  ab0000f0  lui r1, 983040
000260  6b520fe8  load.d r[5:6], -384(r30)
000264  9f010000  addli r3, zero, 0
000268  97901b00  or r1, r23, r1
00026c  ff208201  l_gm2lm r1, r24, 0(r[5:6])
000270  00a00000  mfence { lm }
000274  e3000ffe  loadli.w r1,  -256(r30)
000278  63020fff  loadli.w r4,  -128(r30)
00027c  63410ffe  loadli.w r2,  -252(r30)
000280  e3420fff  loadli.w r5,  -124(r30)
000284  8be64010  add.f.rn r13, r1, r4
000288  0b665110  add.f.rn r12, r2, r5
00028c  9f000600  addli r1, r12, 0
000290  1f810600  addli r2, r13, 0
000294  db010000  j 12
000298  9f811100  addli r3, r3, 8
00029c  b7a49101  beq r3, r25, 296
0002a0  0b123b10  add.s r4, r22, r3
0002a4  8b123c10  add.s r5, r24, r3
0002a8  63031200  loadli.w r6,  8(r4)
0002ac  e3831200  loadli.w r7,  8(r5)
0002b0  63421200  loadli.w r4,  12(r4)
0002b4  e3c21200  loadli.w r5,  12(r5)
0002b8  0b637310  add.f.rn r6, r6, r7
0002bc  9f030100  addli r7, r2, 0
0002c0  13642304  setlt.f r8, r6, r2
0002c4  3b200400  bneq r8, zero, 8
0002c8  9f030300  addli r7, r6, 0
0002cc  1b349300  slli r8, r6, 9
0002d0  9b349100  slli r9, r2, 9
0002d4  1b457301  srli r10, r6, 23
0002d8  9b457101  srli r11, r2, 23
0002dc  13040400  seteq r8, r8, zero
0002e0  93840400  seteq r9, r9, zero
0002e4  1b05f50f  andi r10, r10, 255
0002e8  9b85f50f  andi r11, r11, 255
0002ec  1b75f50f  setlti r10, r10, 255
0002f0  9bf5f50f  setlti r11, r11, 255
0002f4  17148500  or r8, r10, r8
0002f8  97949500  or r9, r11, r9
0002fc  17848400  and r8, r9, r8
000300  37720400  beq r8, zero, 156
000304  bb020100  bneq r2, zero, 160
000308  37200300  beq r6, zero, 8
00030c  1f030100  addli r6, r2, 0
000310  13617006  setle.f r2, zero, r7
000314  13e40306  setle.f r8, r7, zero
000318  17042400  and r8, r8, r2
00031c  1f010300  addli r2, r6, 0
000320  3b200400  bneq r8, zero, 8
000324  1f810300  addli r2, r7, 0
000328  0b625210  add.f.rn r4, r4, r5
00032c  9f820000  addli r5, r1, 0
000330  13631204  setlt.f r6, r4, r1
000334  3b200300  bneq r6, zero, 8
000338  9f020200  addli r5, r4, 0
00033c  1b339200  slli r6, r4, 9
000340  9bb39000  slli r7, r1, 9
000344  1b447201  srli r8, r4, 23
000348  9bc47001  srli r9, r1, 23
00034c  13030300  seteq r6, r6, zero
000350  93830300  seteq r7, r7, zero
000354  1b04f40f  andi r8, r8, 255
000358  9b84f40f  andi r9, r9, 255
00035c  1b74f40f  setlti r8, r8, 255
000360  9bf4f40f  setlti r9, r9, 255
000364  17136400  or r6, r8, r6
000368  97937400  or r7, r9, r7
00036c  17836300  and r6, r7, r6
000370  37010300  beq r6, zero, 64
000374  3b910000  bneq r1, zero, 68
000378  37200200  beq r4, zero, 8
00037c  1f820000  addli r4, r1, 0
000380  93605006  setle.f r1, zero, r5
000384  13e30206  setle.f r6, r5, zero
000388  17031300  and r6, r6, r1
00038c  9f000200  addli r1, r4, 0
000390  3b2c03fe  bneq r6, zero, -248
000394  9f800200  addli r1, r5, 0
000398  5be0ffff  j -256
00039c  ab03c07f  lui r7, 523264
0003a0  b72d01fe  beq r2, zero, -152
0003a4  1f810300  addli r2, r7, 0
0003a8  bb1d03fe  bneq r6, zero, -156
0003ac  dbecffff  j -156
0003b0  ab02c07f  lui r5, 523264
0003b4  379f00fe  beq r1, zero, -60
0003b8  9f800200  addli r1, r5, 0
0003bc  3b0f02fe  bneq r4, zero, -64
0003c0  5bf8ffff  j -64
0003c4  1bb29600  slli r4, r13, 9
0003c8  9361dd06  setle.f r3, r26, r13
0003cc  93e2a607  setle.f r5, r13, r26
0003d0  1bc37601  srli r6, r13, 23
0003d4  2b04803f  lui r8, 260096
0003d8  ab04803f  lui r9, 260096
0003dc  13020200  seteq r4, r4, zero
0003e0  1b03f30f  andi r6, r6, 255
0003e4  1b73f30f  setlti r6, r6, 255
0003e8  97813200  and r3, r5, r3
0003ec  17124300  or r4, r6, r4
0003f0  97814100  and r3, r3, r4
0003f4  3bf00100  bneq r3, zero, 28
0003f8  8b61dd18  sub.f.rn r3, r26, r13
0003fc  0be2d618  sub.f.rn r4, r13, r13
000400  8f810100  exp.f.rn r3, r3
000404  0f020200  exp.f.rn r4, r4
000408  8be10120  mul.f.rn r3, r3, zero
00040c  8b643210  add.f.rn r9, r4, r3
000410  1b329600  slli r4, r12, 9
000414  9361cd06  setle.f r3, r26, r12
000418  9362a607  setle.f r5, r12, r26
00041c  1b437601  srli r6, r12, 23
000420  13020200  seteq r4, r4, zero
000424  1b03f30f  andi r6, r6, 255
000428  1b73f30f  setlti r6, r6, 255
00042c  97813200  and r3, r5, r3
000430  17124300  or r4, r6, r4
000434  97814100  and r3, r3, r4
000438  3bf00100  bneq r3, zero, 28
00043c  8b61cd18  sub.f.rn r3, r26, r12
000440  0b62c618  sub.f.rn r4, r12, r12
000444  8f810100  exp.f.rn r3, r3
000448  0f020200  exp.f.rn r4, r4
00044c  8be10120  mul.f.rn r3, r3, zero
000450  0b643210  add.f.rn r8, r4, r3
000454  13e22004  setlt.f r4, r1, r2
000458  9f010100  addli r3, r2, 0
00045c  3b200200  bneq r4, zero, 8
000460  9f810000  addli r3, r1, 0
000464  1bb29000  slli r4, r1, 9
000468  9b329100  slli r5, r2, 9
00046c  1bc37001  srli r6, r1, 23
000470  9b437101  srli r7, r2, 23
000474  13020200  seteq r4, r4, zero
000478  93820200  seteq r5, r5, zero
00047c  1b03f30f  andi r6, r6, 255
000480  9b83f30f  andi r7, r7, 255
000484  1b73f30f  setlti r6, r6, 255
000488  9bf3f30f  setlti r7, r7, 255
00048c  17124300  or r4, r6, r4
000490  97925300  or r5, r7, r5
000494  17824200  and r4, r5, r4
000498  b7260210  beq r4, zero, 8616
00049c  bb360110  bneq r2, zero, 8620
0004a0  37a00000  beq r1, zero, 8
0004a4  9f000100  addli r1, r2, 0
0004a8  13613006  setle.f r2, zero, r3
0004ac  13e20106  setle.f r4, r3, zero
0004b0  17012200  and r2, r4, r2
0004b4  3b200100  bneq r2, zero, 8
0004b8  9f800100  addli r1, r3, 0
0004bc  73e01900  stores.w r1, 0(r19)
0004c0  00a00300  mfence { lm, sm, gm }
0004c4  80a10a04  csr_set csr3, r21
0004c8  00d00100  sync_group
0004cc  e340effd  loadli.w r1,  -268(r30)
0004d0  bbb5000e  bneq r1, zero, 7532
0004d4  efc10800  loads.w r3, 0(r17)
0004d8  efc04800  loads.w r1, 4(r17)
0004dc  13e23004  setlt.f r4, r1, r3
0004e0  1f810100  addli r2, r3, 0
0004e4  3b200200  bneq r4, zero, 8
0004e8  1f810000  addli r2, r1, 0
0004ec  1bb29100  slli r4, r3, 9
0004f0  9bb29000  slli r5, r1, 9
0004f4  1bc37101  srli r6, r3, 23
0004f8  9bc37001  srli r7, r1, 23
0004fc  13020200  seteq r4, r4, zero
000500  93820200  seteq r5, r5, zero
000504  1b03f30f  andi r6, r6, 255
000508  9b83f30f  andi r7, r7, 255
00050c  1b73f30f  setlti r6, r6, 255
000510  9bf3f30f  setlti r7, r7, 255
000514  17124300  or r4, r6, r4
000518  97925300  or r5, r7, r5
00051c  17025200  and r4, r4, r5
000520  b7540210  beq r4, zero, 8500
000524  bbe40110  bneq r3, zero, 8504
000528  37a00000  beq r1, zero, 8
00052c  9f800100  addli r1, r3, 0
000530  93612006  setle.f r3, zero, r2
000534  13620106  setle.f r4, r2, zero
000538  67478ffc  storeli.w r8, -396(r30)
00053c  97013200  and r3, r4, r3
000540  3ba00100  bneq r3, zero, 8
000544  9f000100  addli r1, r2, 0
000548  6fc48800  loads.w r8, 8(r17)
00054c  1f810000  addli r2, r1, 0
000550  93611404  setlt.f r3, r8, r1
000554  3ba00100  bneq r3, zero, 8
000558  1f010400  addli r2, r8, 0
00055c  9b319400  slli r3, r8, 9
000560  1bb29000  slli r4, r1, 9
000564  9b427401  srli r5, r8, 23
000568  1bc37001  srli r6, r1, 23
00056c  93810100  seteq r3, r3, zero
000570  13020200  seteq r4, r4, zero
000574  9b82f20f  andi r5, r5, 255
000578  1b03f30f  andi r6, r6, 255
00057c  9bf2f20f  setlti r5, r5, 255
000580  1b73f30f  setlti r6, r6, 255
000584  97913200  or r3, r5, r3
000588  17124300  or r4, r6, r4
00058c  97013200  and r3, r4, r3
000590  37e30110  beq r3, zero, 8408
000594  3bf30010  bneq r1, zero, 8412
000598  37200400  beq r8, zero, 8
00059c  1f840000  addli r8, r1, 0
0005a0  93602006  setle.f r1, zero, r2
0005a4  93610106  setle.f r3, r2, zero
0005a8  67079ffc  storeli.w r9, -400(r30)
0005ac  e707dffc  storeli.w r13, -392(r30)
0005b0  e747cffc  storeli.w r12, -388(r30)
0005b4  97801100  and r1, r3, r1
0005b8  3ba00000  bneq r1, zero, 8
0005bc  1f040100  addli r8, r2, 0
0005c0  6fc2c803  loads.w r4, 60(r17)
0005c4  1f830800  addli r6, r17, 0
0005c8  efc2c800  loads.w r5, 12(r17)
0005cc  6fce0801  loads.w r28, 16(r17)
0005d0  efc94801  loads.w r19, 20(r17)
0005d4  6fc78801  loads.w r14, 24(r17)
0005d8  efcac801  loads.w r21, 28(r17)
0005dc  6fc60802  loads.w r12, 32(r17)
0005e0  6fc94802  loads.w r18, 36(r17)
0005e4  efc08802  loads.w r1, 40(r17)
0005e8  6fc1c802  loads.w r2, 44(r17)
0005ec  6fc80803  loads.w r16, 48(r17)
0005f0  efc14803  loads.w r3, 52(r17)
0005f4  efc68803  loads.w r13, 56(r17)
0005f8  9f030400  addli r7, r8, 0
0005fc  6706bffd  storeli.w r27, -416(r30)
000600  ef440306  loads.w r9, 96(r6)
000604  6f4a030c  loads.w r20, 192(r6)
000608  ef47030f  loads.w r15, 240(r6)
00060c  67494ffc  storeli.w r4, -364(r30)
000610  6fc20804  loads.w r4, 64(r17)
000614  67004ffc  storeli.w r4, -512(r30)
000618  6fc24804  loads.w r4, 68(r17)
00061c  e7094ffc  storeli.w r4, -360(r30)
000620  6fc28804  loads.w r4, 72(r17)
000624  67404ffc  storeli.w r4, -508(r30)
000628  6fc2c804  loads.w r4, 76(r17)
00062c  e7494ffc  storeli.w r4, -356(r30)
000630  6fc20805  loads.w r4, 80(r17)
000634  e7004ffc  storeli.w r4, -504(r30)
000638  6fc24805  loads.w r4, 84(r17)
00063c  670a4ffc  storeli.w r4, -352(r30)
000640  6fc28805  loads.w r4, 88(r17)
000644  e7404ffc  storeli.w r4, -500(r30)
000648  6fc2c805  loads.w r4, 92(r17)
00064c  674a4ffc  storeli.w r4, -348(r30)
000650  6f424306  loads.w r4, 100(r6)
000654  e70a4ffc  storeli.w r4, -344(r30)
000658  6f428306  loads.w r4, 104(r6)
00065c  67414ffc  storeli.w r4, -492(r30)
000660  6f42c306  loads.w r4, 108(r6)
000664  e74a4ffc  storeli.w r4, -340(r30)
000668  6f420307  loads.w r4, 112(r6)
00066c  e7014ffc  storeli.w r4, -488(r30)
000670  6f424307  loads.w r4, 116(r6)
000674  670b4ffc  storeli.w r4, -336(r30)
000678  6f428307  loads.w r4, 120(r6)
00067c  e7414ffc  storeli.w r4, -484(r30)
000680  6f42c307  loads.w r4, 124(r6)
000684  674b4ffc  storeli.w r4, -332(r30)
000688  6f420308  loads.w r4, 128(r6)
00068c  67024ffc  storeli.w r4, -480(r30)
000690  6f424308  loads.w r4, 132(r6)
000694  e70b4ffc  storeli.w r4, -328(r30)
000698  6f428308  loads.w r4, 136(r6)
00069c  67424ffc  storeli.w r4, -476(r30)
0006a0  6f42c308  loads.w r4, 140(r6)
0006a4  e74b4ffc  storeli.w r4, -324(r30)
0006a8  6f420309  loads.w r4, 144(r6)
0006ac  e7024ffc  storeli.w r4, -472(r30)
0006b0  6f424309  loads.w r4, 148(r6)
0006b4  670c4ffc  storeli.w r4, -320(r30)
0006b8  6f428309  loads.w r4, 152(r6)
0006bc  e7424ffc  storeli.w r4, -468(r30)
0006c0  6f42c309  loads.w r4, 156(r6)
0006c4  674c4ffc  storeli.w r4, -316(r30)
0006c8  6f42030a  loads.w r4, 160(r6)
0006cc  67034ffc  storeli.w r4, -464(r30)
0006d0  6f42430a  loads.w r4, 164(r6)
0006d4  e70c4ffc  storeli.w r4, -312(r30)
0006d8  6f42830a  loads.w r4, 168(r6)
0006dc  67434ffc  storeli.w r4, -460(r30)
0006e0  6f42c30a  loads.w r4, 172(r6)
0006e4  e74c4ffc  storeli.w r4, -308(r30)
0006e8  6f42030b  loads.w r4, 176(r6)
0006ec  e7434ffc  storeli.w r4, -452(r30)
0006f0  6f42430b  loads.w r4, 180(r6)
0006f4  670d4ffc  storeli.w r4, -304(r30)
0006f8  6f42830b  loads.w r4, 184(r6)
0006fc  67044ffc  storeli.w r4, -448(r30)
000700  6f42c30b  loads.w r4, 188(r6)
000704  674d4ffc  storeli.w r4, -300(r30)
000708  6f42430c  loads.w r4, 196(r6)
00070c  e70d4ffc  storeli.w r4, -296(r30)
000710  6f42830c  loads.w r4, 200(r6)
000714  e7044ffc  storeli.w r4, -440(r30)
000718  6f42c30c  loads.w r4, 204(r6)
00071c  e74d4ffc  storeli.w r4, -292(r30)
000720  6f42030d  loads.w r4, 208(r6)
000724  67054ffc  storeli.w r4, -432(r30)
000728  6f42430d  loads.w r4, 212(r6)
00072c  670e4ffc  storeli.w r4, -288(r30)
000730  6f42830d  loads.w r4, 216(r6)
000734  67454ffc  storeli.w r4, -428(r30)
000738  6f42c30d  loads.w r4, 220(r6)
00073c  e7054ffc  storeli.w r4, -424(r30)
000740  6f42030e  loads.w r4, 224(r6)
000744  e7454ffc  storeli.w r4, -420(r30)
000748  6f42430e  loads.w r4, 228(r6)
00074c  674e4ffc  storeli.w r4, -284(r30)
000750  6f42830e  loads.w r4, 232(r6)
000754  e7034ffc  storeli.w r4, -456(r30)
000758  6f42c30e  loads.w r4, 236(r6)
00075c  67464ffc  storeli.w r4, -412(r30)
000760  6f42430f  loads.w r4, 244(r6)
000764  e7064ffc  storeli.w r4, -408(r30)
000768  6f42830f  loads.w r4, 248(r6)
00076c  6f43c30f  loads.w r6, 252(r6)
000770  e7464ffc  storeli.w r4, -404(r30)
000774  13e28204  setlt.f r4, r5, r8
000778  3b200200  bneq r4, zero, 8
00077c  9f830200  addli r7, r5, 0
000780  1bb29200  slli r4, r5, 9
000784  9b3d9400  slli r27, r8, 9
000788  9bc57201  srli r11, r5, 23
00078c  1b457401  srli r10, r8, 23
000790  13020200  seteq r4, r4, zero
000794  938d0d00  seteq r27, r27, zero
000798  9b85f50f  andi r11, r11, 255
00079c  1b05f50f  andi r10, r10, 255
0007a0  1b75f50f  setlti r10, r10, 255
0007a4  9bf5f50f  setlti r11, r11, 255
0007a8  17924500  or r4, r11, r4
0007ac  1715b501  or r10, r10, r27
0007b0  17024500  and r4, r10, r4
0007b4  372b020e  beq r4, zero, 7880
0007b8  3b3b040e  bneq r8, zero, 7884
0007bc  e30dcffc  loadli.w r27,  -416(r30)
0007c0  37a00200  beq r5, zero, 8
0007c4  9f020400  addli r5, r8, 0
0007c8  13627006  setle.f r4, zero, r7
0007cc  13e40306  setle.f r8, r7, zero
0007d0  e7446ffc  storeli.w r6, -436(r30)
0007d4  17024400  and r4, r8, r4
0007d8  3b200200  bneq r4, zero, 8
0007dc  9f820300  addli r5, r7, 0
0007e0  13625e04  setlt.f r4, r28, r5
0007e4  9f830200  addli r7, r5, 0
0007e8  1f830400  addli r6, r9, 0
0007ec  67014ffd  storeli.w r20, -496(r30)
0007f0  3b200200  bneq r4, zero, 8
0007f4  9f030e00  addli r7, r28, 0
0007f8  1b329e00  slli r4, r28, 9
0007fc  1bb49200  slli r8, r5, 9
000800  1b457e01  srli r10, r28, 23
000804  9bc57201  srli r11, r5, 23
000808  630aeffb  loadli.w r20,  -528(r30)
00080c  13020200  seteq r4, r4, zero
000810  13040400  seteq r8, r8, zero
000814  1b05f50f  andi r10, r10, 255
000818  9b85f50f  andi r11, r11, 255
00081c  1b75f50f  setlti r10, r10, 255
000820  9bf5f50f  setlti r11, r11, 255
000824  17124500  or r4, r10, r4
000828  17948500  or r8, r11, r8
00082c  17024400  and r4, r8, r4
000830  3b200200  bneq r4, zero, 8
000834  ab03c07f  lui r7, 523264
000838  e3451ffc  loadli.w r11,  -500(r30)
00083c  6744fffc  storeli.w r15, -444(r30)
000840  37a00200  beq r5, zero, 8
000844  9f820300  addli r5, r7, 0
000848  e3070ffc  loadli.w r15,  -512(r30)
00084c  37200e00  beq r28, zero, 8
000850  1f8e0200  addli r28, r5, 0
000854  13627006  setle.f r4, zero, r7
000858  93e20306  setle.f r5, r7, zero
00085c  17824200  and r4, r5, r4
000860  3b200200  bneq r4, zero, 8
000864  1f8e0300  addli r28, r7, 0
000868  13e2c905  setlt.f r4, r19, r28
00086c  9f020e00  addli r5, r28, 0
000870  3b200200  bneq r4, zero, 8
000874  9f820900  addli r5, r19, 0
000878  1bb29900  slli r4, r19, 9
00087c  9b339e00  slli r7, r28, 9
000880  1bc47901  srli r8, r19, 23
000884  1b457e01  srli r10, r28, 23
000888  13020200  seteq r4, r4, zero
00088c  93830300  seteq r7, r7, zero
000890  1b04f40f  andi r8, r8, 255
000894  1b05f50f  andi r10, r10, 255
000898  1b74f40f  setlti r8, r8, 255
00089c  1b75f50f  setlti r10, r10, 255
0008a0  17124400  or r4, r8, r4
0008a4  97137500  or r7, r10, r7
0008a8  17824300  and r4, r7, r4
0008ac  b727020e  beq r4, zero, 7656
0008b0  bb370e0e  bneq r28, zero, 7660
0008b4  37a00900  beq r19, zero, 8
0008b8  9f090e00  addli r19, r28, 0
0008bc  13625006  setle.f r4, zero, r5
0008c0  93e30206  setle.f r7, r5, zero
0008c4  17824300  and r4, r7, r4
0008c8  3b200200  bneq r4, zero, 8
0008cc  9f890200  addli r19, r5, 0
0008d0  13623705  setlt.f r4, r14, r19
0008d4  630e3ffc  loadli.w r28,  -488(r30)
0008d8  9f820900  addli r5, r19, 0
0008dc  3b200200  bneq r4, zero, 8
0008e0  9f020700  addli r5, r14, 0
0008e4  1b329700  slli r4, r14, 9
0008e8  9bb39900  slli r7, r19, 9
0008ec  1b447701  srli r8, r14, 23
0008f0  1bc57901  srli r10, r19, 23
0008f4  13020200  seteq r4, r4, zero
0008f8  93830300  seteq r7, r7, zero
0008fc  1b04f40f  andi r8, r8, 255
000900  1b05f50f  andi r10, r10, 255
000904  1b74f40f  setlti r8, r8, 255
000908  1b75f50f  setlti r10, r10, 255
00090c  17124400  or r4, r8, r4
000910  97137500  or r7, r10, r7
000914  17824300  and r4, r7, r4
000918  3746020e  beq r4, zero, 7568
00091c  3bd6090e  bneq r19, zero, 7572
000920  37200700  beq r14, zero, 8
000924  1f870900  addli r14, r19, 0
000928  13625006  setle.f r4, zero, r5
00092c  93e30206  setle.f r7, r5, zero
000930  17824300  and r4, r7, r4
000934  3b200200  bneq r4, zero, 8
000938  1f870200  addli r14, r5, 0
00093c  13e2ea04  setlt.f r4, r21, r14
000940  e3095ffc  loadli.w r19,  -472(r30)
000944  9f020700  addli r5, r14, 0
000948  3b200200  bneq r4, zero, 8
00094c  9f820a00  addli r5, r21, 0
000950  1bb29a00  slli r4, r21, 9
000954  9b339700  slli r7, r14, 9
000958  1bc47a01  srli r8, r21, 23
00095c  1b457701  srli r10, r14, 23
000960  13020200  seteq r4, r4, zero
000964  93830300  seteq r7, r7, zero
000968  1b04f40f  andi r8, r8, 255
00096c  1b05f50f  andi r10, r10, 255
000970  1b74f40f  setlti r8, r8, 255
000974  1b75f50f  setlti r10, r10, 255
000978  17124400  or r4, r8, r4
00097c  97137500  or r7, r10, r7
000980  17824300  and r4, r7, r4
000984  b764020e  beq r4, zero, 7480
000988  bb74070e  bneq r14, zero, 7484
00098c  37a00a00  beq r21, zero, 8
000990  9f0a0700  addli r21, r14, 0
000994  13625006  setle.f r4, zero, r5
000998  93e30206  setle.f r7, r5, zero
00099c  17824300  and r4, r7, r4
0009a0  3b200200  bneq r4, zero, 8
0009a4  9f8a0200  addli r21, r5, 0
0009a8  13625605  setlt.f r4, r12, r21
0009ac  63475ffc  loadli.w r14,  -468(r30)
0009b0  9f820a00  addli r5, r21, 0
0009b4  3b200200  bneq r4, zero, 8
0009b8  9f020600  addli r5, r12, 0
0009bc  1b329600  slli r4, r12, 9
0009c0  9bb39a00  slli r7, r21, 9
0009c4  1b447601  srli r8, r12, 23
0009c8  1bc57a01  srli r10, r21, 23
0009cc  13020200  seteq r4, r4, zero
0009d0  93830300  seteq r7, r7, zero
0009d4  1b04f40f  andi r8, r8, 255
0009d8  1b05f50f  andi r10, r10, 255
0009dc  1b74f40f  setlti r8, r8, 255
0009e0  1b75f50f  setlti r10, r10, 255
0009e4  17124400  or r4, r8, r4
0009e8  97137500  or r7, r10, r7
0009ec  17824300  and r4, r7, r4
0009f0  b703020e  beq r4, zero, 7392
0009f4  bb930a0e  bneq r21, zero, 7396
0009f8  37200600  beq r12, zero, 8
0009fc  1f860a00  addli r12, r21, 0
000a00  13625006  setle.f r4, zero, r5
000a04  93e30206  setle.f r7, r5, zero
000a08  17824300  and r4, r7, r4
000a0c  3b200200  bneq r4, zero, 8
000a10  1f860200  addli r12, r5, 0
000a14  1362c904  setlt.f r4, r18, r12
000a18  e34a0ffc  loadli.w r21,  -508(r30)
000a1c  9f020600  addli r5, r12, 0
000a20  3b200200  bneq r4, zero, 8
000a24  9f020900  addli r5, r18, 0
000a28  1b329900  slli r4, r18, 9
000a2c  9b339600  slli r7, r12, 9
000a30  1b447901  srli r8, r18, 23
000a34  1b457601  srli r10, r12, 23
000a38  13020200  seteq r4, r4, zero
000a3c  93830300  seteq r7, r7, zero
000a40  1b04f40f  andi r8, r8, 255
000a44  1b05f50f  andi r10, r10, 255
000a48  1b74f40f  setlti r8, r8, 255
000a4c  1b75f50f  setlti r10, r10, 255
000a50  17124400  or r4, r8, r4
000a54  97137500  or r7, r10, r7
000a58  17824300  and r4, r7, r4
000a5c  3722020e  beq r4, zero, 7304
000a60  3b32060e  bneq r12, zero, 7308
000a64  37200900  beq r18, zero, 8
000a68  1f090600  addli r18, r12, 0
000a6c  13625006  setle.f r4, zero, r5
000a70  93e30206  setle.f r7, r5, zero
000a74  17824300  and r4, r7, r4
000a78  3b200200  bneq r4, zero, 8
000a7c  1f890200  addli r18, r5, 0
000a80  13e22005  setlt.f r4, r1, r18
000a84  6346fffc  loadli.w r12,  -388(r30)
000a88  9f020900  addli r5, r18, 0
000a8c  3b200200  bneq r4, zero, 8
000a90  9f820000  addli r5, r1, 0
000a94  1bb29000  slli r4, r1, 9
000a98  9b339900  slli r7, r18, 9
000a9c  1bc47001  srli r8, r1, 23
000aa0  1b457901  srli r10, r18, 23
000aa4  13020200  seteq r4, r4, zero
000aa8  93830300  seteq r7, r7, zero
000aac  1b04f40f  andi r8, r8, 255
000ab0  1b05f50f  andi r10, r10, 255
000ab4  1b74f40f  setlti r8, r8, 255
000ab8  1b75f50f  setlti r10, r10, 255
000abc  17124400  or r4, r8, r4
000ac0  97137500  or r7, r10, r7
000ac4  17824300  and r4, r7, r4
000ac8  b740020e  beq r4, zero, 7216
000acc  bb50090e  bneq r18, zero, 7220
000ad0  37a00000  beq r1, zero, 8
000ad4  9f000900  addli r1, r18, 0
000ad8  13625006  setle.f r4, zero, r5
000adc  93e30206  setle.f r7, r5, zero
000ae0  17824300  and r4, r7, r4
000ae4  3b200200  bneq r4, zero, 8
000ae8  9f800200  addli r1, r5, 0
000aec  13621104  setlt.f r4, r2, r1
000af0  63492ffc  loadli.w r18,  -492(r30)
000af4  9f820000  addli r5, r1, 0
000af8  3b200200  bneq r4, zero, 8
000afc  9f020100  addli r5, r2, 0
000b00  1b329100  slli r4, r2, 9
000b04  9bb39000  slli r7, r1, 9
000b08  1b447101  srli r8, r2, 23
000b0c  1bc57001  srli r10, r1, 23
000b10  13020200  seteq r4, r4, zero
000b14  93830300  seteq r7, r7, zero
000b18  1b04f40f  andi r8, r8, 255
000b1c  1b05f50f  andi r10, r10, 255
000b20  1b74f40f  setlti r8, r8, 255
000b24  1b75f50f  setlti r10, r10, 255
000b28  17124400  or r4, r8, r4
000b2c  97137500  or r7, r10, r7
000b30  17824300  and r4, r7, r4
000b34  376f020c  beq r4, zero, 7128
000b38  63454ffc  loadli.w r10,  -476(r30)
000b3c  3bff000c  bneq r1, zero, 7132
000b40  37200100  beq r2, zero, 8
000b44  1f810000  addli r2, r1, 0
000b48  93605006  setle.f r1, zero, r5
000b4c  13e20206  setle.f r4, r5, zero
000b50  97001200  and r1, r4, r1
000b54  3ba00000  bneq r1, zero, 8
000b58  1f810200  addli r2, r5, 0
000b5c  13622804  setlt.f r4, r16, r2
000b60  9f000100  addli r1, r2, 0
000b64  3b200200  bneq r4, zero, 8
000b68  9f000800  addli r1, r16, 0
000b6c  1b329800  slli r4, r16, 9
000b70  9b329100  slli r5, r2, 9
000b74  9b437801  srli r7, r16, 23
000b78  1b447101  srli r8, r2, 23
000b7c  13020200  seteq r4, r4, zero
000b80  93820200  seteq r5, r5, zero
000b84  9b83f30f  andi r7, r7, 255
000b88  1b04f40f  andi r8, r8, 255
000b8c  9bf3f30f  setlti r7, r7, 255
000b90  1b74f40f  setlti r8, r8, 255
000b94  17924300  or r4, r7, r4
000b98  97125400  or r5, r8, r5
000b9c  17824200  and r4, r5, r4
000ba0  371e020c  beq r4, zero, 7044
000ba4  63041ffc  loadli.w r8,  -504(r30)
000ba8  3b2e010c  bneq r2, zero, 7048
000bac  37200800  beq r16, zero, 8
000bb0  1f080100  addli r16, r2, 0
000bb4  13611006  setle.f r2, zero, r1
000bb8  13e20006  setle.f r4, r1, zero
000bbc  17012200  and r2, r4, r2
000bc0  3b200100  bneq r2, zero, 8
000bc4  1f880000  addli r16, r1, 0
000bc8  13e10105  setlt.f r2, r3, r16
000bcc  9f000800  addli r1, r16, 0
000bd0  3b200100  bneq r2, zero, 8
000bd4  9f800100  addli r1, r3, 0
000bd8  1bb19100  slli r2, r3, 9
000bdc  1b329800  slli r4, r16, 9
000be0  9bc27101  srli r5, r3, 23
000be4  9b437801  srli r7, r16, 23
000be8  13010100  seteq r2, r2, zero
000bec  13020200  seteq r4, r4, zero
000bf0  9b82f20f  andi r5, r5, 255
000bf4  9b83f30f  andi r7, r7, 255
000bf8  9bf2f20f  setlti r5, r5, 255
000bfc  9bf3f30f  setlti r7, r7, 255
000c00  17912200  or r2, r5, r2
000c04  17924300  or r4, r7, r4
000c08  17012200  and r2, r4, r2
000c0c  b74c010c  beq r2, zero, 6960
000c10  bb5c080c  bneq r16, zero, 6964
000c14  37a00100  beq r3, zero, 8
000c18  9f010800  addli r3, r16, 0
000c1c  13611006  setle.f r2, zero, r1
000c20  13e20006  setle.f r4, r1, zero
000c24  17012200  and r2, r4, r2
000c28  3b200100  bneq r2, zero, 8
000c2c  9f810000  addli r3, r1, 0
000c30  13e13604  setlt.f r2, r13, r3
000c34  63483ffc  loadli.w r16,  -484(r30)
000c38  9f800100  addli r1, r3, 0
000c3c  3b200100  bneq r2, zero, 8
000c40  9f800600  addli r1, r13, 0
000c44  1bb19600  slli r2, r13, 9
000c48  1bb29100  slli r4, r3, 9
000c4c  9bc27601  srli r5, r13, 23
000c50  9bc37101  srli r7, r3, 23
000c54  13010100  seteq r2, r2, zero
000c58  13020200  seteq r4, r4, zero
000c5c  9b82f20f  andi r5, r5, 255
000c60  9b83f30f  andi r7, r7, 255
000c64  9bf2f20f  setlti r5, r5, 255
000c68  9bf3f30f  setlti r7, r7, 255
000c6c  17912200  or r2, r5, r2
000c70  17924300  or r4, r7, r4
000c74  17012200  and r2, r4, r2
000c78  3b200100  bneq r2, zero, 8
000c7c  ab00c07f  lui r1, 523264
000c80  e3034ffc  loadli.w r7,  -480(r30)
000c84  63422ffd  loadli.w r4,  -364(r30)
000c88  37a00100  beq r3, zero, 8
000c8c  9f810000  addli r3, r1, 0
000c90  37a00600  beq r13, zero, 8
000c94  9f860100  addli r13, r3, 0
000c98  13611006  setle.f r2, zero, r1
000c9c  93e10006  setle.f r3, r1, zero
000ca0  17812100  and r2, r3, r2
000ca4  3b200100  bneq r2, zero, 8
000ca8  9f860000  addli r13, r1, 0
000cac  1361d204  setlt.f r2, r4, r13
000cb0  9f800600  addli r1, r13, 0
000cb4  3b200100  bneq r2, zero, 8
000cb8  9f000200  addli r1, r4, 0
000cbc  1b319200  slli r2, r4, 9
000cc0  9bb19600  slli r3, r13, 9
000cc4  1b427201  srli r4, r4, 23
000cc8  9bc27601  srli r5, r13, 23
000ccc  13010100  seteq r2, r2, zero
000cd0  93810100  seteq r3, r3, zero
000cd4  1b02f20f  andi r4, r4, 255
000cd8  9b82f20f  andi r5, r5, 255
000cdc  1b72f20f  setlti r4, r4, 255
000ce0  9bf2f20f  setlti r5, r5, 255
000ce4  17112200  or r2, r4, r2
000ce8  97913200  or r3, r5, r3
000cec  17812100  and r2, r3, r2
000cf0  b709010c  beq r2, zero, 6752
000cf4  bb99060c  bneq r13, zero, 6756
000cf8  e3422ffd  loadli.w r5,  -364(r30)
000cfc  37a00200  beq r5, zero, 8
000d00  9f820600  addli r5, r13, 0
000d04  13611006  setle.f r2, zero, r1
000d08  93e10006  setle.f r3, r1, zero
000d0c  17812100  and r2, r3, r2
000d10  3b200100  bneq r2, zero, 8
000d14  9f820000  addli r5, r1, 0
000d18  13e15704  setlt.f r2, r15, r5
000d1c  e306fffc  loadli.w r13,  -392(r30)
000d20  9f800200  addli r1, r5, 0
000d24  3b200100  bneq r2, zero, 8
000d28  9f800700  addli r1, r15, 0
000d2c  1bb19700  slli r2, r15, 9
000d30  9bb19200  slli r3, r5, 9
000d34  1bc27701  srli r4, r15, 23
000d38  9f840200  addli r9, r5, 0
000d3c  9bc27201  srli r5, r5, 23
000d40  13010100  seteq r2, r2, zero
000d44  93810100  seteq r3, r3, zero
000d48  1b02f20f  andi r4, r4, 255
000d4c  9b82f20f  andi r5, r5, 255
000d50  1b72f20f  setlti r4, r4, 255
000d54  9bf2f20f  setlti r5, r5, 255
000d58  17112200  or r2, r4, r2
000d5c  97913200  or r3, r5, r3
000d60  17812100  and r2, r3, r2
000d64  3718010c  beq r2, zero, 6660
000d68  63023ffd  loadli.w r4,  -360(r30)
000d6c  3ba8040c  bneq r9, zero, 6664
000d70  37a00700  beq r15, zero, 8
000d74  9f870400  addli r15, r9, 0
000d78  13611006  setle.f r2, zero, r1
000d7c  93e10006  setle.f r3, r1, zero
000d80  17812100  and r2, r3, r2
000d84  3b200100  bneq r2, zero, 8
000d88  9f870000  addli r15, r1, 0
000d8c  1361f204  setlt.f r2, r4, r15
000d90  9f800700  addli r1, r15, 0
000d94  3b200100  bneq r2, zero, 8
000d98  9f000200  addli r1, r4, 0
000d9c  1b319200  slli r2, r4, 9
000da0  9bb19700  slli r3, r15, 9
000da4  1b427201  srli r4, r4, 23
000da8  9bc27701  srli r5, r15, 23
000dac  13010100  seteq r2, r2, zero
000db0  93810100  seteq r3, r3, zero
000db4  1b02f20f  andi r4, r4, 255
000db8  9b82f20f  andi r5, r5, 255
000dbc  1b72f20f  setlti r4, r4, 255
000dc0  9bf2f20f  setlti r5, r5, 255
000dc4  17112200  or r2, r4, r2
000dc8  97913200  or r3, r5, r3
000dcc  17812100  and r2, r3, r2
000dd0  b746010c  beq r2, zero, 6576
000dd4  bbd6070c  bneq r15, zero, 6580
000dd8  e3023ffd  loadli.w r5,  -360(r30)
000ddc  37a00200  beq r5, zero, 8
000de0  9f820700  addli r5, r15, 0
000de4  13611006  setle.f r2, zero, r1
000de8  93e10006  setle.f r3, r1, zero
000dec  17812100  and r2, r3, r2
000df0  3b200100  bneq r2, zero, 8
000df4  9f820000  addli r5, r1, 0
000df8  13e15a04  setlt.f r2, r21, r5
000dfc  9f800200  addli r1, r5, 0
000e00  3b200100  bneq r2, zero, 8
000e04  9f800a00  addli r1, r21, 0
000e08  1bb19a00  slli r2, r21, 9
000e0c  9bb19200  slli r3, r5, 9
000e10  1bc27a01  srli r4, r21, 23
000e14  9f870200  addli r15, r5, 0
000e18  9bc27201  srli r5, r5, 23
000e1c  13010100  seteq r2, r2, zero
000e20  93810100  seteq r3, r3, zero
000e24  1b02f20f  andi r4, r4, 255
000e28  9b82f20f  andi r5, r5, 255
000e2c  1b72f20f  setlti r4, r4, 255
000e30  9bf2f20f  setlti r5, r5, 255
000e34  17112200  or r2, r4, r2
000e38  97913200  or r3, r5, r3
000e3c  17812100  and r2, r3, r2
000e40  3765010c  beq r2, zero, 6488
000e44  63423ffd  loadli.w r4,  -356(r30)
000e48  3bf5070c  bneq r15, zero, 6492
000e4c  37a00a00  beq r21, zero, 8
000e50  9f8a0700  addli r21, r15, 0
000e54  13611006  setle.f r2, zero, r1
000e58  93e10006  setle.f r3, r1, zero
000e5c  17812100  and r2, r3, r2
000e60  3b200100  bneq r2, zero, 8
000e64  9f8a0000  addli r21, r1, 0
000e68  13615205  setlt.f r2, r4, r21
000e6c  9f800a00  addli r1, r21, 0
000e70  3b200100  bneq r2, zero, 8
000e74  9f000200  addli r1, r4, 0
000e78  1b319200  slli r2, r4, 9
000e7c  9bb19a00  slli r3, r21, 9
000e80  1b427201  srli r4, r4, 23
000e84  9bc27a01  srli r5, r21, 23
000e88  13010100  seteq r2, r2, zero
000e8c  93810100  seteq r3, r3, zero
000e90  1b02f20f  andi r4, r4, 255
000e94  9b82f20f  andi r5, r5, 255
000e98  1b72f20f  setlti r4, r4, 255
000e9c  9bf2f20f  setlti r5, r5, 255
000ea0  17112200  or r2, r4, r2
000ea4  97913200  or r3, r5, r3
000ea8  17812100  and r2, r3, r2
000eac  3714010c  beq r2, zero, 6404
000eb0  3ba40a0c  bneq r21, zero, 6408
000eb4  e3423ffd  loadli.w r5,  -356(r30)
000eb8  37a00200  beq r5, zero, 8
000ebc  9f820a00  addli r5, r21, 0
000ec0  13611006  setle.f r2, zero, r1
000ec4  93e10006  setle.f r3, r1, zero
000ec8  e30a6ffc  loadli.w r21,  -464(r30)
000ecc  17812100  and r2, r3, r2
000ed0  3b200100  bneq r2, zero, 8
000ed4  9f820000  addli r5, r1, 0
000ed8  13615404  setlt.f r2, r8, r5
000edc  e3446ffc  loadli.w r9,  -460(r30)
000ee0  9f800200  addli r1, r5, 0
000ee4  3b200100  bneq r2, zero, 8
000ee8  9f000400  addli r1, r8, 0
000eec  1b319400  slli r2, r8, 9
000ef0  9bb19200  slli r3, r5, 9
000ef4  1b427401  srli r4, r8, 23
000ef8  9f870200  addli r15, r5, 0
000efc  9bc27201  srli r5, r5, 23
000f00  13010100  seteq r2, r2, zero
000f04  93810100  seteq r3, r3, zero
000f08  1b02f20f  andi r4, r4, 255
000f0c  9b82f20f  andi r5, r5, 255
000f10  1b72f20f  setlti r4, r4, 255
000f14  9bf2f20f  setlti r5, r5, 255
000f18  17112200  or r2, r4, r2
000f1c  97913200  or r3, r5, r3
000f20  17812100  and r2, r3, r2
000f24  b712010c  beq r2, zero, 6308
000f28  63024ffd  loadli.w r4,  -352(r30)
000f2c  bba2070c  bneq r15, zero, 6312
000f30  37200400  beq r8, zero, 8
000f34  1f840700  addli r8, r15, 0
000f38  13611006  setle.f r2, zero, r1
000f3c  93e10006  setle.f r3, r1, zero
000f40  17812100  and r2, r3, r2
000f44  3b200100  bneq r2, zero, 8
000f48  1f840000  addli r8, r1, 0
000f4c  13618204  setlt.f r2, r4, r8
000f50  9f000400  addli r1, r8, 0
000f54  9f870400  addli r15, r9, 0
000f58  3b200100  bneq r2, zero, 8
000f5c  9f000200  addli r1, r4, 0
000f60  1b319200  slli r2, r4, 9
000f64  9b319400  slli r3, r8, 9
000f68  1b427201  srli r4, r4, 23
000f6c  9b427401  srli r5, r8, 23
000f70  13010100  seteq r2, r2, zero
000f74  93810100  seteq r3, r3, zero
000f78  1b02f20f  andi r4, r4, 255
000f7c  9b82f20f  andi r5, r5, 255
000f80  1b72f20f  setlti r4, r4, 255
000f84  9bf2f20f  setlti r5, r5, 255
000f88  17112200  or r2, r4, r2
000f8c  97913200  or r3, r5, r3
000f90  17812100  and r2, r3, r2
000f94  3731010c  beq r2, zero, 6220
000f98  3b41040c  bneq r8, zero, 6224
000f9c  e3024ffd  loadli.w r5,  -352(r30)
000fa0  37a00200  beq r5, zero, 8
000fa4  9f020400  addli r5, r8, 0
000fa8  13611006  setle.f r2, zero, r1
000fac  93e10006  setle.f r3, r1, zero
000fb0  17812100  and r2, r3, r2
000fb4  3b200100  bneq r2, zero, 8
000fb8  9f820000  addli r5, r1, 0
000fbc  13e15504  setlt.f r2, r11, r5
000fc0  9f800200  addli r1, r5, 0
000fc4  3b200100  bneq r2, zero, 8
000fc8  9f800500  addli r1, r11, 0
000fcc  1bb19500  slli r2, r11, 9
000fd0  9bb19200  slli r3, r5, 9
000fd4  1bc27501  srli r4, r11, 23
000fd8  1f840200  addli r8, r5, 0
000fdc  9bc27201  srli r5, r5, 23
000fe0  13010100  seteq r2, r2, zero
000fe4  93810100  seteq r3, r3, zero
000fe8  1b02f20f  andi r4, r4, 255
000fec  9b82f20f  andi r5, r5, 255
000ff0  1b72f20f  setlti r4, r4, 255
000ff4  9bf2f20f  setlti r5, r5, 255
000ff8  17112200  or r2, r4, r2
000ffc  97913200  or r3, r5, r3
001000  17812100  and r2, r3, r2
001004  b75f010a  beq r2, zero, 6132
001008  63424ffd  loadli.w r4,  -348(r30)
00100c  bb6f040a  bneq r8, zero, 6136
001010  37a00500  beq r11, zero, 8
001014  9f050400  addli r11, r8, 0
001018  13611006  setle.f r2, zero, r1
00101c  93e10006  setle.f r3, r1, zero
001020  17812100  and r2, r3, r2
001024  3b200100  bneq r2, zero, 8
001028  9f850000  addli r11, r1, 0
00102c  1361b204  setlt.f r2, r4, r11
001030  9f800500  addli r1, r11, 0
001034  3b200100  bneq r2, zero, 8
001038  9f000200  addli r1, r4, 0
00103c  1b319200  slli r2, r4, 9
001040  9bb19500  slli r3, r11, 9
001044  1b427201  srli r4, r4, 23
001048  9bc27501  srli r5, r11, 23
00104c  13010100  seteq r2, r2, zero
001050  93810100  seteq r3, r3, zero
001054  1b02f20f  andi r4, r4, 255
001058  9b82f20f  andi r5, r5, 255
00105c  1b72f20f  setlti r4, r4, 255
001060  9bf2f20f  setlti r5, r5, 255
001064  17112200  or r2, r4, r2
001068  97913200  or r3, r5, r3
00106c  17812100  and r2, r3, r2
001070  b70e010a  beq r2, zero, 6048
001074  bb9e050a  bneq r11, zero, 6052
001078  e3424ffd  loadli.w r5,  -348(r30)
00107c  37a00200  beq r5, zero, 8
001080  9f820500  addli r5, r11, 0
001084  13611006  setle.f r2, zero, r1
001088  93e10006  setle.f r3, r1, zero
00108c  17812100  and r2, r3, r2
001090  3b200100  bneq r2, zero, 8
001094  9f820000  addli r5, r1, 0
001098  13615304  setlt.f r2, r6, r5
00109c  9f800200  addli r1, r5, 0
0010a0  3b200100  bneq r2, zero, 8
0010a4  9f000300  addli r1, r6, 0
0010a8  1b319300  slli r2, r6, 9
0010ac  9bb19200  slli r3, r5, 9
0010b0  1b427301  srli r4, r6, 23
0010b4  9f850200  addli r11, r5, 0
0010b8  9bc27201  srli r5, r5, 23
0010bc  13010100  seteq r2, r2, zero
0010c0  93810100  seteq r3, r3, zero
0010c4  1b02f20f  andi r4, r4, 255
0010c8  9b82f20f  andi r5, r5, 255
0010cc  1b72f20f  setlti r4, r4, 255
0010d0  9bf2f20f  setlti r5, r5, 255
0010d4  17112200  or r2, r4, r2
0010d8  97913200  or r3, r5, r3
0010dc  17812100  and r2, r3, r2
0010e0  372d010a  beq r2, zero, 5960
0010e4  63025ffd  loadli.w r4,  -344(r30)
0010e8  3bbd050a  bneq r11, zero, 5964
0010ec  37200300  beq r6, zero, 8
0010f0  1f830500  addli r6, r11, 0
0010f4  13611006  setle.f r2, zero, r1
0010f8  93e10006  setle.f r3, r1, zero
0010fc  17812100  and r2, r3, r2
001100  3b200100  bneq r2, zero, 8
001104  1f830000  addli r6, r1, 0
001108  13616204  setlt.f r2, r4, r6
00110c  9f000300  addli r1, r6, 0
001110  3b200100  bneq r2, zero, 8
001114  9f000200  addli r1, r4, 0
001118  1b319200  slli r2, r4, 9
00111c  9b319300  slli r3, r6, 9
001120  1b427201  srli r4, r4, 23
001124  9b427301  srli r5, r6, 23
001128  13010100  seteq r2, r2, zero
00112c  93810100  seteq r3, r3, zero
001130  1b02f20f  andi r4, r4, 255
001134  9b82f20f  andi r5, r5, 255
001138  1b72f20f  setlti r4, r4, 255
00113c  9bf2f20f  setlti r5, r5, 255
001140  17112200  or r2, r4, r2
001144  97913200  or r3, r5, r3
001148  17812100  and r2, r3, r2
00114c  b75b010a  beq r2, zero, 5876
001150  bb6b030a  bneq r6, zero, 5880
001154  e3025ffd  loadli.w r5,  -344(r30)
001158  37a00200  beq r5, zero, 8
00115c  9f020300  addli r5, r6, 0
001160  13611006  setle.f r2, zero, r1
001164  93e10006  setle.f r3, r1, zero
001168  17812100  and r2, r3, r2
00116c  3b200100  bneq r2, zero, 8
001170  9f820000  addli r5, r1, 0
001174  13615904  setlt.f r2, r18, r5
001178  9f800200  addli r1, r5, 0
00117c  3b200100  bneq r2, zero, 8
001180  9f000900  addli r1, r18, 0
001184  1b319900  slli r2, r18, 9
001188  9bb19200  slli r3, r5, 9
00118c  1b427901  srli r4, r18, 23
001190  1f830200  addli r6, r5, 0
001194  9bc27201  srli r5, r5, 23
001198  13010100  seteq r2, r2, zero
00119c  93810100  seteq r3, r3, zero
0011a0  1b02f20f  andi r4, r4, 255
0011a4  9b82f20f  andi r5, r5, 255
0011a8  1b72f20f  setlti r4, r4, 255
0011ac  9bf2f20f  setlti r5, r5, 255
0011b0  17112200  or r2, r4, r2
0011b4  97913200  or r3, r5, r3
0011b8  17812100  and r2, r3, r2
0011bc  377a010a  beq r2, zero, 5788
0011c0  63425ffd  loadli.w r4,  -340(r30)
0011c4  bb0a030a  bneq r6, zero, 5792
0011c8  37200900  beq r18, zero, 8
0011cc  1f090300  addli r18, r6, 0
0011d0  13611006  setle.f r2, zero, r1
0011d4  93e10006  setle.f r3, r1, zero
0011d8  17812100  and r2, r3, r2
0011dc  3b200100  bneq r2, zero, 8
0011e0  1f890000  addli r18, r1, 0
0011e4  13612205  setlt.f r2, r4, r18
0011e8  9f000900  addli r1, r18, 0
0011ec  3b200100  bneq r2, zero, 8
0011f0  9f000200  addli r1, r4, 0
0011f4  1b319200  slli r2, r4, 9
0011f8  9b319900  slli r3, r18, 9
0011fc  1b427201  srli r4, r4, 23
001200  9b427901  srli r5, r18, 23
001204  13010100  seteq r2, r2, zero
001208  93810100  seteq r3, r3, zero
00120c  1b02f20f  andi r4, r4, 255
001210  9b82f20f  andi r5, r5, 255
001214  1b72f20f  setlti r4, r4, 255
001218  9bf2f20f  setlti r5, r5, 255
00121c  17112200  or r2, r4, r2
001220  97913200  or r3, r5, r3
001224  17812100  and r2, r3, r2
001228  3b200100  bneq r2, zero, 8
00122c  ab00c07f  lui r1, 523264
001230  37200900  beq r18, zero, 8
001234  1f890000  addli r18, r1, 0
001238  1f010900  addli r2, r18, 0
00123c  6309affc  loadli.w r18,  -432(r30)
001240  e3425ffd  loadli.w r5,  -340(r30)
001244  37a00200  beq r5, zero, 8
001248  9f020100  addli r5, r2, 0
00124c  13611006  setle.f r2, zero, r1
001250  93e10006  setle.f r3, r1, zero
001254  63048ffc  loadli.w r8,  -448(r30)
001258  17812100  and r2, r3, r2
00125c  3b200100  bneq r2, zero, 8
001260  9f820000  addli r5, r1, 0
001264  13615e04  setlt.f r2, r28, r5
001268  e3052ffc  loadli.w r11,  -496(r30)
00126c  9f800200  addli r1, r5, 0
001270  3b200100  bneq r2, zero, 8
001274  9f000e00  addli r1, r28, 0
001278  1b319e00  slli r2, r28, 9
00127c  9bb19200  slli r3, r5, 9
001280  1b427e01  srli r4, r28, 23
001284  1f830200  addli r6, r5, 0
001288  9bc27201  srli r5, r5, 23
00128c  13010100  seteq r2, r2, zero
001290  93810100  seteq r3, r3, zero
001294  1b02f20f  andi r4, r4, 255
001298  9b82f20f  andi r5, r5, 255
00129c  1b72f20f  setlti r4, r4, 255
0012a0  9bf2f20f  setlti r5, r5, 255
0012a4  17112200  or r2, r4, r2
0012a8  97913200  or r3, r5, r3
0012ac  17812100  and r2, r3, r2
0012b0  3707010a  beq r2, zero, 5568
0012b4  63026ffd  loadli.w r4,  -336(r30)
0012b8  3b17030a  bneq r6, zero, 5572
0012bc  37200e00  beq r28, zero, 8
0012c0  1f0e0300  addli r28, r6, 0
0012c4  13611006  setle.f r2, zero, r1
0012c8  93e10006  setle.f r3, r1, zero
0012cc  17812100  and r2, r3, r2
0012d0  3b200100  bneq r2, zero, 8
0012d4  1f8e0000  addli r28, r1, 0
0012d8  1361c205  setlt.f r2, r4, r28
0012dc  9f000e00  addli r1, r28, 0
0012e0  1f830500  addli r6, r11, 0
0012e4  3b200100  bneq r2, zero, 8
0012e8  9f000200  addli r1, r4, 0
0012ec  1b319200  slli r2, r4, 9
0012f0  9b319e00  slli r3, r28, 9
0012f4  1b427201  srli r4, r4, 23
0012f8  9b427e01  srli r5, r28, 23
0012fc  9f050400  addli r11, r8, 0
001300  13010100  seteq r2, r2, zero
001304  93810100  seteq r3, r3, zero
001308  1b02f20f  andi r4, r4, 255
00130c  9b82f20f  andi r5, r5, 255
001310  1b72f20f  setlti r4, r4, 255
001314  9bf2f20f  setlti r5, r5, 255
001318  17112200  or r2, r4, r2
00131c  97913200  or r3, r5, r3
001320  17812100  and r2, r3, r2
001324  b715010a  beq r2, zero, 5476
001328  1f040900  addli r8, r18, 0
00132c  bb250e0a  bneq r28, zero, 5480
001330  e3026ffd  loadli.w r5,  -336(r30)
001334  37a00200  beq r5, zero, 8
001338  9f020e00  addli r5, r28, 0
00133c  13611006  setle.f r2, zero, r1
001340  93e10006  setle.f r3, r1, zero
001344  17812100  and r2, r3, r2
001348  3b200100  bneq r2, zero, 8
00134c  9f820000  addli r5, r1, 0
001350  13615804  setlt.f r2, r16, r5
001354  9f800200  addli r1, r5, 0
001358  3b200100  bneq r2, zero, 8
00135c  9f000800  addli r1, r16, 0
001360  1b319800  slli r2, r16, 9
001364  9bb19200  slli r3, r5, 9
001368  1b427801  srli r4, r16, 23
00136c  1f8e0200  addli r28, r5, 0
001370  9bc27201  srli r5, r5, 23
001374  13010100  seteq r2, r2, zero
001378  93810100  seteq r3, r3, zero
00137c  1b02f20f  andi r4, r4, 255
001380  9b82f20f  andi r5, r5, 255
001384  1b72f20f  setlti r4, r4, 255
001388  9bf2f20f  setlti r5, r5, 255
00138c  17112200  or r2, r4, r2
001390  97913200  or r3, r5, r3
001394  17812100  and r2, r3, r2
001398  3734010a  beq r2, zero, 5388
00139c  63426ffd  loadli.w r4,  -332(r30)
0013a0  3b440e0a  bneq r28, zero, 5392
0013a4  37200800  beq r16, zero, 8
0013a8  1f080e00  addli r16, r28, 0
0013ac  13611006  setle.f r2, zero, r1
0013b0  93e10006  setle.f r3, r1, zero
0013b4  17812100  and r2, r3, r2
0013b8  3b200100  bneq r2, zero, 8
0013bc  1f880000  addli r16, r1, 0
0013c0  13610205  setlt.f r2, r4, r16
0013c4  9f000800  addli r1, r16, 0
0013c8  3b200100  bneq r2, zero, 8
0013cc  9f000200  addli r1, r4, 0
0013d0  1b319200  slli r2, r4, 9
0013d4  9b319800  slli r3, r16, 9
0013d8  1b427201  srli r4, r4, 23
0013dc  9b427801  srli r5, r16, 23
0013e0  13010100  seteq r2, r2, zero
0013e4  93810100  seteq r3, r3, zero
0013e8  1b02f20f  andi r4, r4, 255
0013ec  9b82f20f  andi r5, r5, 255
0013f0  1b72f20f  setlti r4, r4, 255
0013f4  9bf2f20f  setlti r5, r5, 255
0013f8  17112200  or r2, r4, r2
0013fc  97913200  or r3, r5, r3
001400  17812100  and r2, r3, r2
001404  b762010a  beq r2, zero, 5304
001408  bb72080a  bneq r16, zero, 5308
00140c  e3426ffd  loadli.w r5,  -332(r30)
001410  37a00200  beq r5, zero, 8
001414  9f020800  addli r5, r16, 0
001418  13611006  setle.f r2, zero, r1
00141c  93e10006  setle.f r3, r1, zero
001420  17812100  and r2, r3, r2
001424  3b200100  bneq r2, zero, 8
001428  9f820000  addli r5, r1, 0
00142c  13e15304  setlt.f r2, r7, r5
001430  9f800200  addli r1, r5, 0
001434  3b200100  bneq r2, zero, 8
001438  9f800300  addli r1, r7, 0
00143c  1bb19300  slli r2, r7, 9
001440  9bb19200  slli r3, r5, 9
001444  1bc27301  srli r4, r7, 23
001448  1f880200  addli r16, r5, 0
00144c  9bc27201  srli r5, r5, 23
001450  13010100  seteq r2, r2, zero
001454  93810100  seteq r3, r3, zero
001458  1b02f20f  andi r4, r4, 255
00145c  9b82f20f  andi r5, r5, 255
001460  1b72f20f  setlti r4, r4, 255
001464  9bf2f20f  setlti r5, r5, 255
001468  17112200  or r2, r4, r2
00146c  97913200  or r3, r5, r3
001470  17812100  and r2, r3, r2
001474  b701010a  beq r2, zero, 5216
001478  63027ffd  loadli.w r4,  -328(r30)
00147c  bb11080a  bneq r16, zero, 5220
001480  37a00300  beq r7, zero, 8
001484  9f030800  addli r7, r16, 0
001488  13611006  setle.f r2, zero, r1
00148c  93e10006  setle.f r3, r1, zero
001490  17812100  and r2, r3, r2
001494  3b200100  bneq r2, zero, 8
001498  9f830000  addli r7, r1, 0
00149c  13617204  setlt.f r2, r4, r7
0014a0  63487ffc  loadli.w r16,  -452(r30)
0014a4  9f800300  addli r1, r7, 0
0014a8  3b200100  bneq r2, zero, 8
0014ac  9f000200  addli r1, r4, 0
0014b0  1b319200  slli r2, r4, 9
0014b4  9bb19300  slli r3, r7, 9
0014b8  1b427201  srli r4, r4, 23
0014bc  9bc27301  srli r5, r7, 23
0014c0  13010100  seteq r2, r2, zero
0014c4  93810100  seteq r3, r3, zero
0014c8  1b02f20f  andi r4, r4, 255
0014cc  9b82f20f  andi r5, r5, 255
0014d0  1b72f20f  setlti r4, r4, 255
0014d4  9bf2f20f  setlti r5, r5, 255
0014d8  17112200  or r2, r4, r2
0014dc  97913200  or r3, r5, r3
0014e0  17812100  and r2, r3, r2
0014e4  3720010a  beq r2, zero, 5128
0014e8  3bb0030a  bneq r7, zero, 5132
0014ec  e3027ffd  loadli.w r5,  -328(r30)
0014f0  37a00200  beq r5, zero, 8
0014f4  9f820300  addli r5, r7, 0
0014f8  13611006  setle.f r2, zero, r1
0014fc  93e10006  setle.f r3, r1, zero
001500  17812100  and r2, r3, r2
001504  3b200100  bneq r2, zero, 8
001508  9f820000  addli r5, r1, 0
00150c  13615504  setlt.f r2, r10, r5
001510  9f800200  addli r1, r5, 0
001514  3b200100  bneq r2, zero, 8
001518  9f000500  addli r1, r10, 0
00151c  1b319500  slli r2, r10, 9
001520  9bb19200  slli r3, r5, 9
001524  1b427501  srli r4, r10, 23
001528  9f830200  addli r7, r5, 0
00152c  9bc27201  srli r5, r5, 23
001530  13010100  seteq r2, r2, zero
001534  93810100  seteq r3, r3, zero
001538  1b02f20f  andi r4, r4, 255
00153c  9b82f20f  andi r5, r5, 255
001540  1b72f20f  setlti r4, r4, 255
001544  9bf2f20f  setlti r5, r5, 255
001548  17112200  or r2, r4, r2
00154c  97913200  or r3, r5, r3
001550  17812100  and r2, r3, r2
001554  b74e0108  beq r2, zero, 5040
001558  63427ffd  loadli.w r4,  -324(r30)
00155c  bbde0308  bneq r7, zero, 5044
001560  37200500  beq r10, zero, 8
001564  1f850300  addli r10, r7, 0
001568  13611006  setle.f r2, zero, r1
00156c  93e10006  setle.f r3, r1, zero
001570  17812100  and r2, r3, r2
001574  3b200100  bneq r2, zero, 8
001578  1f850000  addli r10, r1, 0
00157c  1361a204  setlt.f r2, r4, r10
001580  9f000500  addli r1, r10, 0
001584  3b200100  bneq r2, zero, 8
001588  9f000200  addli r1, r4, 0
00158c  1b319200  slli r2, r4, 9
001590  9b319500  slli r3, r10, 9
001594  1b427201  srli r4, r4, 23
001598  9b427501  srli r5, r10, 23
00159c  13010100  seteq r2, r2, zero
0015a0  93810100  seteq r3, r3, zero
0015a4  1b02f20f  andi r4, r4, 255
0015a8  9b82f20f  andi r5, r5, 255
0015ac  1b72f20f  setlti r4, r4, 255
0015b0  9bf2f20f  setlti r5, r5, 255
0015b4  17112200  or r2, r4, r2
0015b8  97913200  or r3, r5, r3
0015bc  17812100  and r2, r3, r2
0015c0  377d0108  beq r2, zero, 4956
0015c4  bb0d0508  bneq r10, zero, 4960
0015c8  e3427ffd  loadli.w r5,  -324(r30)
0015cc  37a00200  beq r5, zero, 8
0015d0  9f020500  addli r5, r10, 0
0015d4  13611006  setle.f r2, zero, r1
0015d8  93e10006  setle.f r3, r1, zero
0015dc  17812100  and r2, r3, r2
0015e0  3b200100  bneq r2, zero, 8
0015e4  9f820000  addli r5, r1, 0
0015e8  13e15904  setlt.f r2, r19, r5
0015ec  9f800200  addli r1, r5, 0
0015f0  3b200100  bneq r2, zero, 8
0015f4  9f800900  addli r1, r19, 0
0015f8  1bb19900  slli r2, r19, 9
0015fc  9bb19200  slli r3, r5, 9
001600  1bc27901  srli r4, r19, 23
001604  1f850200  addli r10, r5, 0
001608  9bc27201  srli r5, r5, 23
00160c  13010100  seteq r2, r2, zero
001610  93810100  seteq r3, r3, zero
001614  1b02f20f  andi r4, r4, 255
001618  9b82f20f  andi r5, r5, 255
00161c  1b72f20f  setlti r4, r4, 255
001620  9bf2f20f  setlti r5, r5, 255
001624  17112200  or r2, r4, r2
001628  97913200  or r3, r5, r3
00162c  17812100  and r2, r3, r2
001630  371c0108  beq r2, zero, 4868
001634  63028ffd  loadli.w r4,  -320(r30)
001638  3b2c0508  bneq r10, zero, 4872
00163c  37a00900  beq r19, zero, 8
001640  9f090500  addli r19, r10, 0
001644  13611006  setle.f r2, zero, r1
001648  93e10006  setle.f r3, r1, zero
00164c  17812100  and r2, r3, r2
001650  3b200100  bneq r2, zero, 8
001654  9f890000  addli r19, r1, 0
001658  13613205  setlt.f r2, r4, r19
00165c  9f800900  addli r1, r19, 0
001660  3b200100  bneq r2, zero, 8
001664  9f000200  addli r1, r4, 0
001668  1b319200  slli r2, r4, 9
00166c  9bb19900  slli r3, r19, 9
001670  1b427201  srli r4, r4, 23
001674  9bc27901  srli r5, r19, 23
001678  13010100  seteq r2, r2, zero
00167c  93810100  seteq r3, r3, zero
001680  1b02f20f  andi r4, r4, 255
001684  9b82f20f  andi r5, r5, 255
001688  1b72f20f  setlti r4, r4, 255
00168c  9bf2f20f  setlti r5, r5, 255
001690  17112200  or r2, r4, r2
001694  97913200  or r3, r5, r3
001698  17812100  and r2, r3, r2
00169c  b74a0108  beq r2, zero, 4784
0016a0  bbda0908  bneq r19, zero, 4788
0016a4  e3028ffd  loadli.w r5,  -320(r30)
0016a8  37a00200  beq r5, zero, 8
0016ac  9f820900  addli r5, r19, 0
0016b0  13611006  setle.f r2, zero, r1
0016b4  93e10006  setle.f r3, r1, zero
0016b8  e349dffc  loadli.w r19,  -404(r30)
0016bc  17812100  and r2, r3, r2
0016c0  3b200100  bneq r2, zero, 8
0016c4  9f820000  addli r5, r1, 0
0016c8  13615704  setlt.f r2, r14, r5
0016cc  e303dffc  loadli.w r7,  -408(r30)
0016d0  9f800200  addli r1, r5, 0
0016d4  3b200100  bneq r2, zero, 8
0016d8  9f000700  addli r1, r14, 0
0016dc  1b319700  slli r2, r14, 9
0016e0  9bb19200  slli r3, r5, 9
0016e4  1b427701  srli r4, r14, 23
0016e8  1f850200  addli r10, r5, 0
0016ec  9bc27201  srli r5, r5, 23
0016f0  13010100  seteq r2, r2, zero
0016f4  93810100  seteq r3, r3, zero
0016f8  1b02f20f  andi r4, r4, 255
0016fc  9b82f20f  andi r5, r5, 255
001700  1b72f20f  setlti r4, r4, 255
001704  9bf2f20f  setlti r5, r5, 255
001708  17112200  or r2, r4, r2
00170c  97913200  or r3, r5, r3
001710  17812100  and r2, r3, r2
001714  37490108  beq r2, zero, 4688
001718  63428ffd  loadli.w r4,  -316(r30)
00171c  3b590508  bneq r10, zero, 4692
001720  37200700  beq r14, zero, 8
001724  1f070500  addli r14, r10, 0
001728  13611006  setle.f r2, zero, r1
00172c  93e10006  setle.f r3, r1, zero
001730  17812100  and r2, r3, r2
001734  3b200100  bneq r2, zero, 8
001738  1f870000  addli r14, r1, 0
00173c  1361e204  setlt.f r2, r4, r14
001740  9f000700  addli r1, r14, 0
001744  1f850300  addli r10, r7, 0
001748  3b200100  bneq r2, zero, 8
00174c  9f000200  addli r1, r4, 0
001750  1b319200  slli r2, r4, 9
001754  9b319700  slli r3, r14, 9
001758  1b427201  srli r4, r4, 23
00175c  9b427701  srli r5, r14, 23
001760  9f830900  addli r7, r19, 0
001764  13010100  seteq r2, r2, zero
001768  93810100  seteq r3, r3, zero
00176c  1b02f20f  andi r4, r4, 255
001770  9b82f20f  andi r5, r5, 255
001774  1b72f20f  setlti r4, r4, 255
001778  9bf2f20f  setlti r5, r5, 255
00177c  17112200  or r2, r4, r2
001780  97913200  or r3, r5, r3
001784  17812100  and r2, r3, r2
001788  b7570108  beq r2, zero, 4596
00178c  bb670708  bneq r14, zero, 4600
001790  e3428ffd  loadli.w r5,  -316(r30)
001794  37a00200  beq r5, zero, 8
001798  9f020700  addli r5, r14, 0
00179c  13611006  setle.f r2, zero, r1
0017a0  93e10006  setle.f r3, r1, zero
0017a4  17812100  and r2, r3, r2
0017a8  3b200100  bneq r2, zero, 8
0017ac  9f820000  addli r5, r1, 0
0017b0  13e15a04  setlt.f r2, r21, r5
0017b4  9f800200  addli r1, r5, 0
0017b8  3b200100  bneq r2, zero, 8
0017bc  9f800a00  addli r1, r21, 0
0017c0  1bb19a00  slli r2, r21, 9
0017c4  9bb19200  slli r3, r5, 9
0017c8  1bc27a01  srli r4, r21, 23
0017cc  1f870200  addli r14, r5, 0
0017d0  9bc27201  srli r5, r5, 23
0017d4  13010100  seteq r2, r2, zero
0017d8  93810100  seteq r3, r3, zero
0017dc  1b02f20f  andi r4, r4, 255
0017e0  9b82f20f  andi r5, r5, 255
0017e4  1b72f20f  setlti r4, r4, 255
0017e8  9bf2f20f  setlti r5, r5, 255
0017ec  17112200  or r2, r4, r2
0017f0  97913200  or r3, r5, r3
0017f4  17812100  and r2, r3, r2
0017f8  37760108  beq r2, zero, 4508
0017fc  63029ffd  loadli.w r4,  -312(r30)
001800  bb060708  bneq r14, zero, 4512
001804  37a00a00  beq r21, zero, 8
001808  9f0a0700  addli r21, r14, 0
00180c  13611006  setle.f r2, zero, r1
001810  93e10006  setle.f r3, r1, zero
001814  17812100  and r2, r3, r2
001818  3b200100  bneq r2, zero, 8
00181c  9f8a0000  addli r21, r1, 0
001820  13615205  setlt.f r2, r4, r21
001824  9f800a00  addli r1, r21, 0
001828  3b200100  bneq r2, zero, 8
00182c  9f000200  addli r1, r4, 0
001830  1b319200  slli r2, r4, 9
001834  9bb19a00  slli r3, r21, 9
001838  1b427201  srli r4, r4, 23
00183c  9bc27a01  srli r5, r21, 23
001840  13010100  seteq r2, r2, zero
001844  93810100  seteq r3, r3, zero
001848  1b02f20f  andi r4, r4, 255
00184c  9b82f20f  andi r5, r5, 255
001850  1b72f20f  setlti r4, r4, 255
001854  9bf2f20f  setlti r5, r5, 255
001858  17112200  or r2, r4, r2
00185c  97913200  or r3, r5, r3
001860  17812100  and r2, r3, r2
001864  37250108  beq r2, zero, 4424
001868  3bb50a08  bneq r21, zero, 4428
00186c  e3029ffd  loadli.w r5,  -312(r30)
001870  37a00200  beq r5, zero, 8
001874  9f820a00  addli r5, r21, 0
001878  13611006  setle.f r2, zero, r1
00187c  93e10006  setle.f r3, r1, zero
001880  17812100  and r2, r3, r2
001884  3b200100  bneq r2, zero, 8
001888  9f820000  addli r5, r1, 0
00188c  13e15704  setlt.f r2, r15, r5
001890  e344cffc  loadli.w r9,  -412(r30)
001894  9f800200  addli r1, r5, 0
001898  3b200100  bneq r2, zero, 8
00189c  9f800700  addli r1, r15, 0
0018a0  1bb19700  slli r2, r15, 9
0018a4  9bb19200  slli r3, r5, 9
0018a8  1bc27701  srli r4, r15, 23
0018ac  1f870200  addli r14, r5, 0
0018b0  9bc27201  srli r5, r5, 23
0018b4  13010100  seteq r2, r2, zero
0018b8  93810100  seteq r3, r3, zero
0018bc  1b02f20f  andi r4, r4, 255
0018c0  9b82f20f  andi r5, r5, 255
0018c4  1b72f20f  setlti r4, r4, 255
0018c8  9bf2f20f  setlti r5, r5, 255
0018cc  17112200  or r2, r4, r2
0018d0  97913200  or r3, r5, r3
0018d4  17812100  and r2, r3, r2
0018d8  b7330108  beq r2, zero, 4332
0018dc  63429ffd  loadli.w r4,  -308(r30)
0018e0  bb430708  bneq r14, zero, 4336
0018e4  37a00700  beq r15, zero, 8
0018e8  9f070700  addli r15, r14, 0
0018ec  13611006  setle.f r2, zero, r1
0018f0  93e10006  setle.f r3, r1, zero
0018f4  17812100  and r2, r3, r2
0018f8  3b200100  bneq r2, zero, 8
0018fc  9f870000  addli r15, r1, 0
001900  1361f204  setlt.f r2, r4, r15
001904  9f800700  addli r1, r15, 0
001908  1f870400  addli r14, r9, 0
00190c  3b200100  bneq r2, zero, 8
001910  9f000200  addli r1, r4, 0
001914  1b319200  slli r2, r4, 9
001918  9bb19700  slli r3, r15, 9
00191c  1b427201  srli r4, r4, 23
001920  9bc27701  srli r5, r15, 23
001924  e344affc  loadli.w r9,  -428(r30)
001928  13010100  seteq r2, r2, zero
00192c  93810100  seteq r3, r3, zero
001930  1b02f20f  andi r4, r4, 255
001934  9b82f20f  andi r5, r5, 255
001938  1b72f20f  setlti r4, r4, 255
00193c  9bf2f20f  setlti r5, r5, 255
001940  17112200  or r2, r4, r2
001944  97913200  or r3, r5, r3
001948  17812100  and r2, r3, r2
00194c  37420108  beq r2, zero, 4240
001950  3bd20708  bneq r15, zero, 4244
001954  e3429ffd  loadli.w r5,  -308(r30)
001958  37a00200  beq r5, zero, 8
00195c  9f820700  addli r5, r15, 0
001960  13611006  setle.f r2, zero, r1
001964  93e10006  setle.f r3, r1, zero
001968  17812100  and r2, r3, r2
00196c  3b200100  bneq r2, zero, 8
001970  9f820000  addli r5, r1, 0
001974  13615804  setlt.f r2, r16, r5
001978  9f800200  addli r1, r5, 0
00197c  3b200100  bneq r2, zero, 8
001980  9f000800  addli r1, r16, 0
001984  1b319800  slli r2, r16, 9
001988  9bb19200  slli r3, r5, 9
00198c  1b427801  srli r4, r16, 23
001990  9f870200  addli r15, r5, 0
001994  9bc27201  srli r5, r5, 23
001998  13010100  seteq r2, r2, zero
00199c  93810100  seteq r3, r3, zero
0019a0  1b02f20f  andi r4, r4, 255
0019a4  9b82f20f  andi r5, r5, 255
0019a8  1b72f20f  setlti r4, r4, 255
0019ac  9bf2f20f  setlti r5, r5, 255
0019b0  17112200  or r2, r4, r2
0019b4  97913200  or r3, r5, r3
0019b8  17812100  and r2, r3, r2
0019bc  b7600108  beq r2, zero, 4152
0019c0  6302affd  loadli.w r4,  -304(r30)
0019c4  bbf00708  bneq r15, zero, 4156
0019c8  37200800  beq r16, zero, 8
0019cc  1f880700  addli r16, r15, 0
0019d0  13611006  setle.f r2, zero, r1
0019d4  93e10006  setle.f r3, r1, zero
0019d8  17812100  and r2, r3, r2
0019dc  3b200100  bneq r2, zero, 8
0019e0  1f880000  addli r16, r1, 0
0019e4  13610205  setlt.f r2, r4, r16
0019e8  e3079ffc  loadli.w r15,  -440(r30)
0019ec  9f000800  addli r1, r16, 0
0019f0  3b200100  bneq r2, zero, 8
0019f4  9f000200  addli r1, r4, 0
0019f8  1b319200  slli r2, r4, 9
0019fc  9b319800  slli r3, r16, 9
001a00  1b427201  srli r4, r4, 23
001a04  9b427801  srli r5, r16, 23
001a08  13010100  seteq r2, r2, zero
001a0c  93810100  seteq r3, r3, zero
001a10  1b02f20f  andi r4, r4, 255
001a14  9b82f20f  andi r5, r5, 255
001a18  1b72f20f  setlti r4, r4, 255
001a1c  9bf2f20f  setlti r5, r5, 255
001a20  17112200  or r2, r4, r2
001a24  97913200  or r3, r5, r3
001a28  17812100  and r2, r3, r2
001a2c  b70f0106  beq r2, zero, 4064
001a30  bb1f0806  bneq r16, zero, 4068
001a34  e302affd  loadli.w r5,  -304(r30)
001a38  37a00200  beq r5, zero, 8
001a3c  9f020800  addli r5, r16, 0
001a40  13611006  setle.f r2, zero, r1
001a44  93e10006  setle.f r3, r1, zero
001a48  17812100  and r2, r3, r2
001a4c  3b200100  bneq r2, zero, 8
001a50  9f820000  addli r5, r1, 0
001a54  13e15504  setlt.f r2, r11, r5
001a58  9f800200  addli r1, r5, 0
001a5c  3b200100  bneq r2, zero, 8
001a60  9f800500  addli r1, r11, 0
001a64  1bb19500  slli r2, r11, 9
001a68  9bb19200  slli r3, r5, 9
001a6c  1bc27501  srli r4, r11, 23
001a70  9f8a0200  addli r21, r5, 0
001a74  9bc27201  srli r5, r5, 23
001a78  13010100  seteq r2, r2, zero
001a7c  93810100  seteq r3, r3, zero
001a80  1b02f20f  andi r4, r4, 255
001a84  9b82f20f  andi r5, r5, 255
001a88  1b72f20f  setlti r4, r4, 255
001a8c  9bf2f20f  setlti r5, r5, 255
001a90  17112200  or r2, r4, r2
001a94  97913200  or r3, r5, r3
001a98  17812100  and r2, r3, r2
001a9c  372e0106  beq r2, zero, 3976
001aa0  6342affd  loadli.w r4,  -300(r30)
001aa4  3bbe0a06  bneq r21, zero, 3980
001aa8  37a00500  beq r11, zero, 8
001aac  9f850a00  addli r11, r21, 0
001ab0  13611006  setle.f r2, zero, r1
001ab4  93e10006  setle.f r3, r1, zero
001ab8  17812100  and r2, r3, r2
001abc  3b200100  bneq r2, zero, 8
001ac0  9f850000  addli r11, r1, 0
001ac4  1361b204  setlt.f r2, r4, r11
001ac8  9f800500  addli r1, r11, 0
001acc  3b200100  bneq r2, zero, 8
001ad0  9f000200  addli r1, r4, 0
001ad4  1b319200  slli r2, r4, 9
001ad8  9bb19500  slli r3, r11, 9
001adc  1b427201  srli r4, r4, 23
001ae0  9bc27501  srli r5, r11, 23
001ae4  13010100  seteq r2, r2, zero
001ae8  93810100  seteq r3, r3, zero
001aec  1b02f20f  andi r4, r4, 255
001af0  9b82f20f  andi r5, r5, 255
001af4  1b72f20f  setlti r4, r4, 255
001af8  9bf2f20f  setlti r5, r5, 255
001afc  17112200  or r2, r4, r2
001b00  97913200  or r3, r5, r3
001b04  17812100  and r2, r3, r2
001b08  b75c0106  beq r2, zero, 3892
001b0c  bbec0506  bneq r11, zero, 3896
001b10  e342affd  loadli.w r5,  -300(r30)
001b14  37a00200  beq r5, zero, 8
001b18  9f820500  addli r5, r11, 0
001b1c  13611006  setle.f r2, zero, r1
001b20  93e10006  setle.f r3, r1, zero
001b24  17812100  and r2, r3, r2
001b28  3b200100  bneq r2, zero, 8
001b2c  9f820000  addli r5, r1, 0
001b30  13615304  setlt.f r2, r6, r5
001b34  e305fffb  loadli.w r11,  -520(r30)
001b38  9f800200  addli r1, r5, 0
001b3c  3b200100  bneq r2, zero, 8
001b40  9f000300  addli r1, r6, 0
001b44  1b319300  slli r2, r6, 9
001b48  9bb19200  slli r3, r5, 9
001b4c  1b427301  srli r4, r6, 23
001b50  9f8a0200  addli r21, r5, 0
001b54  9bc27201  srli r5, r5, 23
001b58  13010100  seteq r2, r2, zero
001b5c  93810100  seteq r3, r3, zero
001b60  1b02f20f  andi r4, r4, 255
001b64  9b82f20f  andi r5, r5, 255
001b68  1b72f20f  setlti r4, r4, 255
001b6c  9bf2f20f  setlti r5, r5, 255
001b70  17112200  or r2, r4, r2
001b74  97913200  or r3, r5, r3
001b78  17812100  and r2, r3, r2
001b7c  376b0106  beq r2, zero, 3800
001b80  6302bffd  loadli.w r4,  -296(r30)
001b84  3bfb0a06  bneq r21, zero, 3804
001b88  37200300  beq r6, zero, 8
001b8c  1f830a00  addli r6, r21, 0
001b90  13611006  setle.f r2, zero, r1
001b94  93e10006  setle.f r3, r1, zero
001b98  17812100  and r2, r3, r2
001b9c  3b200100  bneq r2, zero, 8
001ba0  1f830000  addli r6, r1, 0
001ba4  13616204  setlt.f r2, r4, r6
001ba8  9f000300  addli r1, r6, 0
001bac  9f8a0500  addli r21, r11, 0
001bb0  3b200100  bneq r2, zero, 8
001bb4  9f000200  addli r1, r4, 0
001bb8  1b319200  slli r2, r4, 9
001bbc  9b319300  slli r3, r6, 9
001bc0  1b427201  srli r4, r4, 23
001bc4  9b427301  srli r5, r6, 23
001bc8  e3057ffc  loadli.w r11,  -456(r30)
001bcc  13010100  seteq r2, r2, zero
001bd0  93810100  seteq r3, r3, zero
001bd4  1b02f20f  andi r4, r4, 255
001bd8  9b82f20f  andi r5, r5, 255
001bdc  1b72f20f  setlti r4, r4, 255
001be0  9bf2f20f  setlti r5, r5, 255
001be4  17112200  or r2, r4, r2
001be8  97913200  or r3, r5, r3
001bec  17812100  and r2, r3, r2
001bf0  b7790106  beq r2, zero, 3708
001bf4  3b0a0306  bneq r6, zero, 3712
001bf8  e302bffd  loadli.w r5,  -296(r30)
001bfc  37a00200  beq r5, zero, 8
001c00  9f020300  addli r5, r6, 0
001c04  13611006  setle.f r2, zero, r1
001c08  93e10006  setle.f r3, r1, zero
001c0c  17812100  and r2, r3, r2
001c10  3b200100  bneq r2, zero, 8
001c14  9f820000  addli r5, r1, 0
001c18  13e15704  setlt.f r2, r15, r5
001c1c  9f800200  addli r1, r5, 0
001c20  3b200100  bneq r2, zero, 8
001c24  9f800700  addli r1, r15, 0
001c28  1bb19700  slli r2, r15, 9
001c2c  9bb19200  slli r3, r5, 9
001c30  1bc27701  srli r4, r15, 23
001c34  1f830200  addli r6, r5, 0
001c38  9bc27201  srli r5, r5, 23
001c3c  13010100  seteq r2, r2, zero
001c40  93810100  seteq r3, r3, zero
001c44  1b02f20f  andi r4, r4, 255
001c48  9b82f20f  andi r5, r5, 255
001c4c  1b72f20f  setlti r4, r4, 255
001c50  9bf2f20f  setlti r5, r5, 255
001c54  17112200  or r2, r4, r2
001c58  97913200  or r3, r5, r3
001c5c  17812100  and r2, r3, r2
001c60  b7180106  beq r2, zero, 3620
001c64  6342bffd  loadli.w r4,  -292(r30)
001c68  bb280306  bneq r6, zero, 3624
001c6c  37a00700  beq r15, zero, 8
001c70  9f070300  addli r15, r6, 0
001c74  13611006  setle.f r2, zero, r1
001c78  93e10006  setle.f r3, r1, zero
001c7c  17812100  and r2, r3, r2
001c80  3b200100  bneq r2, zero, 8
001c84  9f870000  addli r15, r1, 0
001c88  1361f204  setlt.f r2, r4, r15
001c8c  6303bffc  loadli.w r6,  -424(r30)
001c90  9f800700  addli r1, r15, 0
001c94  3b200100  bneq r2, zero, 8
001c98  9f000200  addli r1, r4, 0
001c9c  1b319200  slli r2, r4, 9
001ca0  9bb19700  slli r3, r15, 9
001ca4  1b427201  srli r4, r4, 23
001ca8  9bc27701  srli r5, r15, 23
001cac  13010100  seteq r2, r2, zero
001cb0  93810100  seteq r3, r3, zero
001cb4  1b02f20f  andi r4, r4, 255
001cb8  9b82f20f  andi r5, r5, 255
001cbc  1b72f20f  setlti r4, r4, 255
001cc0  9bf2f20f  setlti r5, r5, 255
001cc4  17112200  or r2, r4, r2
001cc8  97913200  or r3, r5, r3
001ccc  17812100  and r2, r3, r2
001cd0  37370106  beq r2, zero, 3532
001cd4  3bc70706  bneq r15, zero, 3536
001cd8  e342bffd  loadli.w r5,  -292(r30)
001cdc  37a00200  beq r5, zero, 8
001ce0  9f820700  addli r5, r15, 0
001ce4  13611006  setle.f r2, zero, r1
001ce8  93e10006  setle.f r3, r1, zero
001cec  17812100  and r2, r3, r2
001cf0  3b200100  bneq r2, zero, 8
001cf4  9f820000  addli r5, r1, 0
001cf8  13615404  setlt.f r2, r8, r5
001cfc  9f800200  addli r1, r5, 0
001d00  3b200100  bneq r2, zero, 8
001d04  9f000400  addli r1, r8, 0
001d08  1b319400  slli r2, r8, 9
001d0c  9bb19200  slli r3, r5, 9
001d10  1b427401  srli r4, r8, 23
001d14  1f890200  addli r18, r5, 0
001d18  9bc27201  srli r5, r5, 23
001d1c  13010100  seteq r2, r2, zero
001d20  93810100  seteq r3, r3, zero
001d24  1b02f20f  andi r4, r4, 255
001d28  9b82f20f  andi r5, r5, 255
001d2c  1b72f20f  setlti r4, r4, 255
001d30  9bf2f20f  setlti r5, r5, 255
001d34  17112200  or r2, r4, r2
001d38  97913200  or r3, r5, r3
001d3c  17812100  and r2, r3, r2
001d40  b7550106  beq r2, zero, 3444
001d44  6302cffd  loadli.w r4,  -288(r30)
001d48  bb650906  bneq r18, zero, 3448
001d4c  37200400  beq r8, zero, 8
001d50  1f040900  addli r8, r18, 0
001d54  13611006  setle.f r2, zero, r1
001d58  93e10006  setle.f r3, r1, zero
001d5c  17812100  and r2, r3, r2
001d60  3b200100  bneq r2, zero, 8
001d64  1f840000  addli r8, r1, 0
001d68  13618204  setlt.f r2, r4, r8
001d6c  9f000400  addli r1, r8, 0
001d70  3b200100  bneq r2, zero, 8
001d74  9f000200  addli r1, r4, 0
001d78  1b319200  slli r2, r4, 9
001d7c  9b319400  slli r3, r8, 9
001d80  1b427201  srli r4, r4, 23
001d84  9b427401  srli r5, r8, 23
001d88  13010100  seteq r2, r2, zero
001d8c  93810100  seteq r3, r3, zero
001d90  1b02f20f  andi r4, r4, 255
001d94  9b82f20f  andi r5, r5, 255
001d98  1b72f20f  setlti r4, r4, 255
001d9c  9bf2f20f  setlti r5, r5, 255
001da0  17112200  or r2, r4, r2
001da4  97913200  or r3, r5, r3
001da8  17812100  and r2, r3, r2
001dac  b7040106  beq r2, zero, 3360
001db0  bb140406  bneq r8, zero, 3364
001db4  e302cffd  loadli.w r5,  -288(r30)
001db8  37a00200  beq r5, zero, 8
001dbc  9f020400  addli r5, r8, 0
001dc0  13611006  setle.f r2, zero, r1
001dc4  93e10006  setle.f r3, r1, zero
001dc8  17812100  and r2, r3, r2
001dcc  3b200100  bneq r2, zero, 8
001dd0  9f820000  addli r5, r1, 0
001dd4  13e15404  setlt.f r2, r9, r5
001dd8  9f800200  addli r1, r5, 0
001ddc  3b200100  bneq r2, zero, 8
001de0  9f800400  addli r1, r9, 0
001de4  1bb19400  slli r2, r9, 9
001de8  9bb19200  slli r3, r5, 9
001dec  1bc27401  srli r4, r9, 23
001df0  1f840200  addli r8, r5, 0
001df4  9bc27201  srli r5, r5, 23
001df8  13010100  seteq r2, r2, zero
001dfc  93810100  seteq r3, r3, zero
001e00  1b02f20f  andi r4, r4, 255
001e04  9b82f20f  andi r5, r5, 255
001e08  1b72f20f  setlti r4, r4, 255
001e0c  9bf2f20f  setlti r5, r5, 255
001e10  17112200  or r2, r4, r2
001e14  97913200  or r3, r5, r3
001e18  17812100  and r2, r3, r2
001e1c  37230106  beq r2, zero, 3272
001e20  3b330406  bneq r8, zero, 3276
001e24  37a00400  beq r9, zero, 8
001e28  9f040400  addli r9, r8, 0
001e2c  13611006  setle.f r2, zero, r1
001e30  93e10006  setle.f r3, r1, zero
001e34  17812100  and r2, r3, r2
001e38  3b200100  bneq r2, zero, 8
001e3c  9f840000  addli r9, r1, 0
001e40  13619304  setlt.f r2, r6, r9
001e44  9f800400  addli r1, r9, 0
001e48  3b200100  bneq r2, zero, 8
001e4c  9f000300  addli r1, r6, 0
001e50  1b319300  slli r2, r6, 9
001e54  9bb19400  slli r3, r9, 9
001e58  1b427301  srli r4, r6, 23
001e5c  9bc27401  srli r5, r9, 23
001e60  13010100  seteq r2, r2, zero
001e64  93810100  seteq r3, r3, zero
001e68  1b02f20f  andi r4, r4, 255
001e6c  9b82f20f  andi r5, r5, 255
001e70  1b72f20f  setlti r4, r4, 255
001e74  9bf2f20f  setlti r5, r5, 255
001e78  17112200  or r2, r4, r2
001e7c  97913200  or r3, r5, r3
001e80  17812100  and r2, r3, r2
001e84  b7510106  beq r2, zero, 3188
001e88  bbe10406  bneq r9, zero, 3192
001e8c  37200300  beq r6, zero, 8
001e90  1f830400  addli r6, r9, 0
001e94  13611006  setle.f r2, zero, r1
001e98  93e10006  setle.f r3, r1, zero
001e9c  17812100  and r2, r3, r2
001ea0  3b200100  bneq r2, zero, 8
001ea4  1f830000  addli r6, r1, 0
001ea8  e344bffc  loadli.w r9,  -420(r30)
001eac  9f000300  addli r1, r6, 0
001eb0  13e16404  setlt.f r2, r9, r6
001eb4  3b200100  bneq r2, zero, 8
001eb8  9f800400  addli r1, r9, 0
001ebc  1bb19400  slli r2, r9, 9
001ec0  9b319300  slli r3, r6, 9
001ec4  1bc27401  srli r4, r9, 23
001ec8  9b427301  srli r5, r6, 23
001ecc  13010100  seteq r2, r2, zero
001ed0  93810100  seteq r3, r3, zero
001ed4  1b02f20f  andi r4, r4, 255
001ed8  9b82f20f  andi r5, r5, 255
001edc  1b72f20f  setlti r4, r4, 255
001ee0  9bf2f20f  setlti r5, r5, 255
001ee4  17112200  or r2, r4, r2
001ee8  97913200  or r3, r5, r3
001eec  17812100  and r2, r3, r2
001ef0  37700106  beq r2, zero, 3100
001ef4  6342cffd  loadli.w r4,  -284(r30)
001ef8  bb000306  bneq r6, zero, 3104
001efc  37a00400  beq r9, zero, 8
001f00  9f040300  addli r9, r6, 0
001f04  13611006  setle.f r2, zero, r1
001f08  93e10006  setle.f r3, r1, zero
001f0c  17812100  and r2, r3, r2
001f10  3b200100  bneq r2, zero, 8
001f14  9f840000  addli r9, r1, 0
001f18  13619204  setlt.f r2, r4, r9
001f1c  e349effc  loadli.w r19,  -396(r30)
001f20  9f800400  addli r1, r9, 0
001f24  3b200100  bneq r2, zero, 8
001f28  9f000200  addli r1, r4, 0
001f2c  1b319200  slli r2, r4, 9
001f30  9bb19400  slli r3, r9, 9
001f34  1b427201  srli r4, r4, 23
001f38  9bc27401  srli r5, r9, 23
001f3c  63439ffc  loadli.w r6,  -436(r30)
001f40  1f840400  addli r8, r9, 0
001f44  13010100  seteq r2, r2, zero
001f48  93810100  seteq r3, r3, zero
001f4c  1b02f20f  andi r4, r4, 255
001f50  9b82f20f  andi r5, r5, 255
001f54  1b72f20f  setlti r4, r4, 255
001f58  9bf2f20f  setlti r5, r5, 255
001f5c  17112200  or r2, r4, r2
001f60  97913200  or r3, r5, r3
001f64  17812100  and r2, r3, r2
001f68  3b200100  bneq r2, zero, 8
001f6c  ab00c07f  lui r1, 523264
001f70  e3045f00  loadli.w r9,  40(r30)
001f74  37200400  beq r8, zero, 8
001f78  1f840000  addli r8, r1, 0
001f7c  63484f00  loadli.w r16,  36(r30)
001f80  e342cffd  loadli.w r5,  -284(r30)
001f84  37a00200  beq r5, zero, 8
001f88  9f020400  addli r5, r8, 0
001f8c  13611006  setle.f r2, zero, r1
001f90  93e10006  setle.f r3, r1, zero
001f94  6349effb  loadli.w r18,  -524(r30)
001f98  17812100  and r2, r3, r2
001f9c  3b200100  bneq r2, zero, 8
001fa0  9f820000  addli r5, r1, 0
001fa4  13e15504  setlt.f r2, r11, r5
001fa8  634efffb  loadli.w r28,  -516(r30)
001fac  9f800200  addli r1, r5, 0
001fb0  1f840900  addli r8, r19, 0
001fb4  3b200100  bneq r2, zero, 8
001fb8  9f800500  addli r1, r11, 0
001fbc  1bb19500  slli r2, r11, 9
001fc0  9bb19200  slli r3, r5, 9
001fc4  1bc27501  srli r4, r11, 23
001fc8  9f890200  addli r19, r5, 0
001fcc  9bc27201  srli r5, r5, 23
001fd0  13010100  seteq r2, r2, zero
001fd4  93810100  seteq r3, r3, zero
001fd8  1b02f20f  andi r4, r4, 255
001fdc  9b82f20f  andi r5, r5, 255
001fe0  1b72f20f  setlti r4, r4, 255
001fe4  9bf2f20f  setlti r5, r5, 255
001fe8  17112200  or r2, r4, r2
001fec  97913200  or r3, r5, r3
001ff0  17812100  and r2, r3, r2
001ff4  b74c0104  beq r2, zero, 2864
001ff8  bbdc0904  bneq r19, zero, 2868
001ffc  37a00500  beq r11, zero, 8
002000  9f850900  addli r11, r19, 0
002004  13611006  setle.f r2, zero, r1
002008  93e10006  setle.f r3, r1, zero
00200c  17812100  and r2, r3, r2
002010  3b200100  bneq r2, zero, 8
002014  9f850000  addli r11, r1, 0
002018  1361b704  setlt.f r2, r14, r11
00201c  9f800500  addli r1, r11, 0
002020  9f090e00  addli r19, r28, 0
002024  3b200100  bneq r2, zero, 8
002028  9f000700  addli r1, r14, 0
00202c  1b319700  slli r2, r14, 9
002030  9bb19500  slli r3, r11, 9
002034  1b427701  srli r4, r14, 23
002038  9bc27501  srli r5, r11, 23
00203c  1f0e0900  addli r28, r18, 0
002040  13010100  seteq r2, r2, zero
002044  93810100  seteq r3, r3, zero
002048  1b02f20f  andi r4, r4, 255
00204c  9b82f20f  andi r5, r5, 255
002050  1b72f20f  setlti r4, r4, 255
002054  9bf2f20f  setlti r5, r5, 255
002058  17112200  or r2, r4, r2
00205c  97913200  or r3, r5, r3
002060  17812100  and r2, r3, r2
002064  375b0104  beq r2, zero, 2772
002068  1f090800  addli r18, r16, 0
00206c  3beb0504  bneq r11, zero, 2776
002070  1f880400  addli r16, r9, 0
002074  37200700  beq r14, zero, 8
002078  1f870500  addli r14, r11, 0
00207c  13611006  setle.f r2, zero, r1
002080  93e10006  setle.f r3, r1, zero
002084  e304effc  loadli.w r9,  -400(r30)
002088  17812100  and r2, r3, r2
00208c  3b200100  bneq r2, zero, 8
002090  1f870000  addli r14, r1, 0
002094  e3458ffc  loadli.w r11,  -444(r30)
002098  9f000700  addli r1, r14, 0
00209c  13e1e504  setlt.f r2, r11, r14
0020a0  3b200100  bneq r2, zero, 8
0020a4  9f800500  addli r1, r11, 0
0020a8  1bb19500  slli r2, r11, 9
0020ac  9b319700  slli r3, r14, 9
0020b0  1bc27501  srli r4, r11, 23
0020b4  9b427701  srli r5, r14, 23
0020b8  13010100  seteq r2, r2, zero
0020bc  93810100  seteq r3, r3, zero
0020c0  1b02f20f  andi r4, r4, 255
0020c4  9b82f20f  andi r5, r5, 255
0020c8  1b72f20f  setlti r4, r4, 255
0020cc  9bf2f20f  setlti r5, r5, 255
0020d0  17112200  or r2, r4, r2
0020d4  97913200  or r3, r5, r3
0020d8  17812100  and r2, r3, r2
0020dc  b7690104  beq r2, zero, 2680
0020e0  bb790704  bneq r14, zero, 2684
0020e4  37a00500  beq r11, zero, 8
0020e8  9f050700  addli r11, r14, 0
0020ec  13611006  setle.f r2, zero, r1
0020f0  93e10006  setle.f r3, r1, zero
0020f4  17812100  and r2, r3, r2
0020f8  3b200100  bneq r2, zero, 8
0020fc  9f850000  addli r11, r1, 0
002100  1361b504  setlt.f r2, r10, r11
002104  9f800500  addli r1, r11, 0
002108  3b200100  bneq r2, zero, 8
00210c  9f000500  addli r1, r10, 0
002110  1b319500  slli r2, r10, 9
002114  9bb19500  slli r3, r11, 9
002118  1b427501  srli r4, r10, 23
00211c  9bc27501  srli r5, r11, 23
002120  13010100  seteq r2, r2, zero
002124  93810100  seteq r3, r3, zero
002128  1b02f20f  andi r4, r4, 255
00212c  9b82f20f  andi r5, r5, 255
002130  1b72f20f  setlti r4, r4, 255
002134  9bf2f20f  setlti r5, r5, 255
002138  17112200  or r2, r4, r2
00213c  97913200  or r3, r5, r3
002140  17812100  and r2, r3, r2
002144  b7180104  beq r2, zero, 2596
002148  bba80504  bneq r11, zero, 2600
00214c  37200500  beq r10, zero, 8
002150  1f850500  addli r10, r11, 0
002154  13611006  setle.f r2, zero, r1
002158  93e10006  setle.f r3, r1, zero
00215c  17812100  and r2, r3, r2
002160  3b200100  bneq r2, zero, 8
002164  1f850000  addli r10, r1, 0
002168  13e1a304  setlt.f r2, r7, r10
00216c  9f000500  addli r1, r10, 0
002170  3b200100  bneq r2, zero, 8
002174  9f800300  addli r1, r7, 0
002178  1bb19300  slli r2, r7, 9
00217c  9b319500  slli r3, r10, 9
002180  1bc27301  srli r4, r7, 23
002184  9b427501  srli r5, r10, 23
002188  13010100  seteq r2, r2, zero
00218c  93810100  seteq r3, r3, zero
002190  1b02f20f  andi r4, r4, 255
002194  9b82f20f  andi r5, r5, 255
002198  1b72f20f  setlti r4, r4, 255
00219c  9bf2f20f  setlti r5, r5, 255
0021a0  17112200  or r2, r4, r2
0021a4  97913200  or r3, r5, r3
0021a8  17812100  and r2, r3, r2
0021ac  37470104  beq r2, zero, 2512
0021b0  3b570504  bneq r10, zero, 2516
0021b4  37a00300  beq r7, zero, 8
0021b8  9f030500  addli r7, r10, 0
0021bc  13611006  setle.f r2, zero, r1
0021c0  93e10006  setle.f r3, r1, zero
0021c4  17812100  and r2, r3, r2
0021c8  3b200100  bneq r2, zero, 8
0021cc  9f830000  addli r7, r1, 0
0021d0  13617304  setlt.f r2, r6, r7
0021d4  9f800300  addli r1, r7, 0
0021d8  3b200100  bneq r2, zero, 8
0021dc  9f000300  addli r1, r6, 0
0021e0  1b319300  slli r2, r6, 9
0021e4  9bb19300  slli r3, r7, 9
0021e8  1b427301  srli r4, r6, 23
0021ec  9bc27301  srli r5, r7, 23
0021f0  13010100  seteq r2, r2, zero
0021f4  93810100  seteq r3, r3, zero
0021f8  1b02f20f  andi r4, r4, 255
0021fc  9b82f20f  andi r5, r5, 255
002200  1b72f20f  setlti r4, r4, 255
002204  9bf2f20f  setlti r5, r5, 255
002208  17112200  or r2, r4, r2
00220c  97913200  or r3, r5, r3
002210  17812100  and r2, r3, r2
002214  b7750104  beq r2, zero, 2428
002218  3b860304  bneq r7, zero, 2432
00221c  37200300  beq r6, zero, 8
002220  1f830300  addli r6, r7, 0
002224  13611006  setle.f r2, zero, r1
002228  93e10006  setle.f r3, r1, zero
00222c  17812100  and r2, r3, r2
002230  3b200100  bneq r2, zero, 8
002234  1f830000  addli r6, r1, 0
002238  73e06800  stores.w r6, 0(r17)
00223c  00a00300  mfence { lm, sm, gm }
002240  80a10a04  csr_set csr3, r21
002244  00d00100  sync_group
002248  efc00800  loads.w r1, 0(r17)
00224c  1bb19000  slli r2, r1, 9
002250  13621d06  setle.f r4, r26, r1
002254  93e2a007  setle.f r5, r1, r26
002258  9bc17001  srli r3, r1, 23
00225c  13030100  seteq r6, r2, zero
002260  9b81f10f  andi r3, r3, 255
002264  9bf1f10f  setlti r3, r3, 255
002268  17824200  and r4, r5, r4
00226c  97926100  or r5, r3, r6
002270  2b03803f  lui r6, 260096
002274  97035200  and r7, r4, r5
002278  ab02803f  lui r5, 260096
00227c  3bb00300  bneq r7, zero, 12
002280  8be21618  sub.f.rn r5, r13, r1
002284  8f820200  exp.f.rn r5, r5
002288  3bb00300  bneq r7, zero, 12
00228c  0b631618  sub.f.rn r6, r12, r1
002290  0f030300  exp.f.rn r6, r6
002294  8be25420  mul.f.rn r5, r9, r5
002298  0b636420  mul.f.rn r6, r8, r6
00229c  9f030000  addli r7, zero, 0
0022a0  db030000  j 28
0022a4  0be4a620  mul.f.rn r8, r13, r10
0022a8  8be4c420  mul.f.rn r9, r9, r12
0022ac  9f831300  addli r7, r7, 8
0022b0  8be28210  add.f.rn r5, r5, r8
0022b4  0b639310  add.f.rn r6, r6, r9
0022b8  b7939301  beq r7, r25, 228
0022bc  8b147b10  add.s r9, r22, r7
0022c0  0b157c10  add.s r10, r24, r7
0022c4  63841400  loadli.w r8,  8(r9)
0022c8  e3051500  loadli.w r11,  8(r10)
0022cc  0b64b410  add.f.rn r8, r8, r11
0022d0  9b369400  slli r13, r8, 9
0022d4  93658d06  setle.f r11, r26, r8
0022d8  1366a407  setle.f r12, r8, r26
0022dc  1b477401  srli r14, r8, 23
0022e0  93860600  seteq r13, r13, zero
0022e4  1b07f70f  andi r14, r14, 255
0022e8  9707b600  and r15, r12, r11
0022ec  1b76f70f  setlti r12, r14, 255
0022f0  e3c51400  loadli.w r11,  12(r9)
0022f4  9714d600  or r9, r12, r13
0022f8  63461500  loadli.w r12,  12(r10)
0022fc  2b05803f  lui r10, 260096
002300  97869700  and r13, r15, r9
002304  ab04803f  lui r9, 260096
002308  3bf00600  bneq r13, zero, 28
00230c  0b658d18  sub.f.rn r10, r26, r8
002310  8b668418  sub.f.rn r13, r8, r8
002314  0f050500  exp.f.rn r10, r10
002318  8f860600  exp.f.rn r13, r13
00231c  0b650520  mul.f.rn r10, r10, zero
002320  0be5a610  add.f.rn r10, r13, r10
002324  8be5c510  add.f.rn r11, r11, r12
002328  1bb69500  slli r12, r11, 9
00232c  1367bd06  setle.f r14, r26, r11
002330  93e7a507  setle.f r15, r11, r26
002334  9bc67501  srli r13, r11, 23
002338  13060600  seteq r12, r12, zero
00233c  9b86f60f  andi r13, r13, 255
002340  9bf6f60f  setlti r13, r13, 255
002344  1796c600  or r12, r13, r12
002348  9786e700  and r13, r15, r14
00234c  9786c600  and r13, r13, r12
002350  2b06803f  lui r12, 260096
002354  3bf00600  bneq r13, zero, 28
002358  0b66bd18  sub.f.rn r12, r26, r11
00235c  8be6b518  sub.f.rn r13, r11, r11
002360  0f060600  exp.f.rn r12, r12
002364  8f860600  exp.f.rn r13, r13
002368  0b660620  mul.f.rn r12, r12, zero
00236c  0be6c610  add.f.rn r12, r13, r12
002370  93060100  seteq r13, r2, zero
002374  9796d100  or r13, r3, r13
002378  1707d200  and r14, r4, r13
00237c  ab06803f  lui r13, 260096
002380  3b300700  bneq r14, zero, 12
002384  0b641418  sub.f.rn r8, r8, r1
002388  8f060400  exp.f.rn r13, r8
00238c  3b6c07fe  bneq r14, zero, -232
002390  0be41518  sub.f.rn r8, r11, r1
002394  8f040400  exp.f.rn r9, r8
002398  dbe1ffff  j -244
00239c  0be16210  add.f.rn r2, r5, r6
0023a0  e3012ffd  loadli.w r3,  -368(r30)
0023a4  73e02100  stores.w r2, 0(r3)
0023a8  00a00300  mfence { lm, sm, gm }
0023ac  80a10a04  csr_set csr3, r21
0023b0  00d00100  sync_group
0023b4  6341effd  loadli.w r2,  -268(r30)
0023b8  3b180100  bneq r2, zero, 516
0023bc  6f410a00  loads.w r2, 0(r20)
0023c0  6f424a00  loads.w r4, 4(r20)
0023c4  ef418a00  loads.w r3, 8(r20)
0023c8  0b614110  add.f.rn r2, r2, r4
0023cc  6f42ca00  loads.w r4, 12(r20)
0023d0  0b613110  add.f.rn r2, r2, r3
0023d4  ef410a01  loads.w r3, 16(r20)
0023d8  0b614110  add.f.rn r2, r2, r4
0023dc  6f424a01  loads.w r4, 20(r20)
0023e0  0b613110  add.f.rn r2, r2, r3
0023e4  ef418a01  loads.w r3, 24(r20)
0023e8  0b614110  add.f.rn r2, r2, r4
0023ec  6f42ca01  loads.w r4, 28(r20)
0023f0  0b613110  add.f.rn r2, r2, r3
0023f4  ef410a02  loads.w r3, 32(r20)
0023f8  0b614110  add.f.rn r2, r2, r4
0023fc  6f424a02  loads.w r4, 36(r20)
002400  0b613110  add.f.rn r2, r2, r3
002404  ef418a02  loads.w r3, 40(r20)
002408  0b614110  add.f.rn r2, r2, r4
00240c  6f42ca02  loads.w r4, 44(r20)
002410  0b613110  add.f.rn r2, r2, r3
002414  ef410a03  loads.w r3, 48(r20)
002418  0b614110  add.f.rn r2, r2, r4
00241c  6f424a03  loads.w r4, 52(r20)
002420  0b613110  add.f.rn r2, r2, r3
002424  ef418a03  loads.w r3, 56(r20)
002428  0b614110  add.f.rn r2, r2, r4
00242c  6f42ca03  loads.w r4, 60(r20)
002430  0b613110  add.f.rn r2, r2, r3
002434  ef410a04  loads.w r3, 64(r20)
002438  0b614110  add.f.rn r2, r2, r4
00243c  6f424a04  loads.w r4, 68(r20)
002440  0b613110  add.f.rn r2, r2, r3
002444  ef418a04  loads.w r3, 72(r20)
002448  0b614110  add.f.rn r2, r2, r4
00244c  6f42ca04  loads.w r4, 76(r20)
002450  0b613110  add.f.rn r2, r2, r3
002454  ef410a05  loads.w r3, 80(r20)
002458  0b614110  add.f.rn r2, r2, r4
00245c  6f424a05  loads.w r4, 84(r20)
002460  0b613110  add.f.rn r2, r2, r3
002464  ef418a05  loads.w r3, 88(r20)
002468  0b614110  add.f.rn r2, r2, r4
00246c  6f42ca05  loads.w r4, 92(r20)
002470  0b613110  add.f.rn r2, r2, r3
002474  ef410a06  loads.w r3, 96(r20)
002478  0b614110  add.f.rn r2, r2, r4
00247c  6f424a06  loads.w r4, 100(r20)
002480  0b613110  add.f.rn r2, r2, r3
002484  ef418a06  loads.w r3, 104(r20)
002488  0b614110  add.f.rn r2, r2, r4
00248c  6f42ca06  loads.w r4, 108(r20)
002490  0b613110  add.f.rn r2, r2, r3
002494  ef410a07  loads.w r3, 112(r20)
002498  0b614110  add.f.rn r2, r2, r4
00249c  6f424a07  loads.w r4, 116(r20)
0024a0  0b613110  add.f.rn r2, r2, r3
0024a4  ef418a07  loads.w r3, 120(r20)
0024a8  0b614110  add.f.rn r2, r2, r4
0024ac  6f42ca07  loads.w r4, 124(r20)
0024b0  0b613110  add.f.rn r2, r2, r3
0024b4  ef410a08  loads.w r3, 128(r20)
0024b8  0b614110  add.f.rn r2, r2, r4
0024bc  6f424a08  loads.w r4, 132(r20)
0024c0  0b613110  add.f.rn r2, r2, r3
0024c4  ef418a08  loads.w r3, 136(r20)
0024c8  0b614110  add.f.rn r2, r2, r4
0024cc  6f42ca08  loads.w r4, 140(r20)
0024d0  0b613110  add.f.rn r2, r2, r3
0024d4  ef410a09  loads.w r3, 144(r20)
0024d8  0b614110  add.f.rn r2, r2, r4
0024dc  6f424a09  loads.w r4, 148(r20)
0024e0  0b613110  add.f.rn r2, r2, r3
0024e4  ef418a09  loads.w r3, 152(r20)
0024e8  0b614110  add.f.rn r2, r2, r4
0024ec  6f42ca09  loads.w r4, 156(r20)
0024f0  0b613110  add.f.rn r2, r2, r3
0024f4  ef410a0a  loads.w r3, 160(r20)
0024f8  0b614110  add.f.rn r2, r2, r4
0024fc  6f424a0a  loads.w r4, 164(r20)
002500  0b613110  add.f.rn r2, r2, r3
002504  ef418a0a  loads.w r3, 168(r20)
002508  0b614110  add.f.rn r2, r2, r4
00250c  6f42ca0a  loads.w r4, 172(r20)
002510  0b613110  add.f.rn r2, r2, r3
002514  ef410a0b  loads.w r3, 176(r20)
002518  0b614110  add.f.rn r2, r2, r4
00251c  6f424a0b  loads.w r4, 180(r20)
002520  0b613110  add.f.rn r2, r2, r3
002524  ef418a0b  loads.w r3, 184(r20)
002528  0b614110  add.f.rn r2, r2, r4
00252c  6f42ca0b  loads.w r4, 188(r20)
002530  0b613110  add.f.rn r2, r2, r3
002534  ef410a0c  loads.w r3, 192(r20)
002538  0b614110  add.f.rn r2, r2, r4
00253c  6f424a0c  loads.w r4, 196(r20)
002540  0b613110  add.f.rn r2, r2, r3
002544  ef418a0c  loads.w r3, 200(r20)
002548  0b614110  add.f.rn r2, r2, r4
00254c  6f42ca0c  loads.w r4, 204(r20)
002550  0b613110  add.f.rn r2, r2, r3
002554  ef410a0d  loads.w r3, 208(r20)
002558  0b614110  add.f.rn r2, r2, r4
00255c  6f424a0d  loads.w r4, 212(r20)
002560  0b613110  add.f.rn r2, r2, r3
002564  ef418a0d  loads.w r3, 216(r20)
002568  0b614110  add.f.rn r2, r2, r4
00256c  6f42ca0d  loads.w r4, 220(r20)
002570  0b613110  add.f.rn r2, r2, r3
002574  ef410a0e  loads.w r3, 224(r20)
002578  0b614110  add.f.rn r2, r2, r4
00257c  6f424a0e  loads.w r4, 228(r20)
002580  0b613110  add.f.rn r2, r2, r3
002584  ef418a0e  loads.w r3, 232(r20)
002588  0b614110  add.f.rn r2, r2, r4
00258c  6f42ca0e  loads.w r4, 236(r20)
002590  0b613110  add.f.rn r2, r2, r3
002594  ef410a0f  loads.w r3, 240(r20)
002598  0b614110  add.f.rn r2, r2, r4
00259c  6f424a0f  loads.w r4, 244(r20)
0025a0  0b613110  add.f.rn r2, r2, r3
0025a4  ef418a0f  loads.w r3, 248(r20)
0025a8  0b614110  add.f.rn r2, r2, r4
0025ac  6f42ca0f  loads.w r4, 252(r20)
0025b0  0b613110  add.f.rn r2, r2, r3
0025b4  0b614110  add.f.rn r2, r2, r4
0025b8  73602a00  stores.w r2, 0(r20)
0025bc  00a00300  mfence { lm, sm, gm }
0025c0  80a10a04  csr_set csr3, r21
0025c4  00d00100  sync_group
0025c8  6f410a00  loads.w r2, 0(r20)
0025cc  9f010000  addli r3, zero, 0
0025d0  8b123c10  add.s r5, r24, r3
0025d4  0b123b10  add.s r4, r22, r3
0025d8  9f811100  addli r3, r3, 8
0025dc  63030200  loadli.w r6,  0(r4)
0025e0  e3830200  loadli.w r7,  0(r5)
0025e4  63420200  loadli.w r4,  4(r4)
0025e8  63c40200  loadli.w r8,  4(r5)
0025ec  0b637310  add.f.rn r6, r6, r7
0025f0  0b628210  add.f.rn r4, r4, r8
0025f4  0b631318  sub.f.rn r6, r6, r1
0025f8  0b621218  sub.f.rn r4, r4, r1
0025fc  0f030300  exp.f.rn r6, r6
002600  0f020200  exp.f.rn r4, r4
002604  0f032318  div.f.rn r6, r6, r2
002608  0f022218  div.f.rn r4, r4, r2
00260c  67806200  storeli.w r6, 0(r5)
002610  67c04200  storeli.w r4, 4(r5)
002614  00a00000  mfence { lm }
002618  bbee71ff  bneq r3, r23, -72
00261c  6b510f01  load.d r[3:4], 16(r30)
002620  6b528fee  load.d r[5:6], -280(r30)
002624  ab0000f0  lui r1, 983040
002628  97901b00  or r1, r23, r1
00262c  0b214110  add.ul r[3:4], r[3:4], r[5:6]
002630  ff308101  s_lm2gm r1, r24, 0(r[3:4])
002634  9f71f00f  addli r3, zero, 2047
002638  00a00000  mfence { lm }
00263c  db72fbff  j -9324
002640  ab01c07f  lui r3, 523264
002644  377901ee  beq r2, zero, -8612
002648  1f810100  addli r2, r3, 0
00264c  3be900ee  bneq r1, zero, -8616
002650  5bcbfbff  j -8616
002654  2b01c07f  lui r2, 523264
002658  37cb01ee  beq r3, zero, -8496
00265c  9f010100  addli r3, r2, 0
002660  3bbb00ee  bneq r1, zero, -8500
002664  dbd9fbff  j -8500
002668  2b01c07f  lui r2, 523264
00266c  b7bc00ee  beq r1, zero, -8404
002670  9f000100  addli r1, r2, 0
002674  bb2c04ee  bneq r8, zero, -8408
002678  5be5fbff  j -8408
00267c  ab03c07f  lui r7, 523264
002680  b77404f0  beq r8, zero, -7876
002684  1f840300  addli r8, r7, 0
002688  e30dcffc  loadli.w r27,  -416(r30)
00268c  bbe402f0  bneq r5, zero, -7880
002690  5b27fcff  j -7880
002694  ab02c07f  lui r5, 523264
002698  37780ef0  beq r28, zero, -7652
00269c  1f8e0200  addli r28, r5, 0
0026a0  3be809f0  bneq r19, zero, -7656
0026a4  5b43fcff  j -7656
0026a8  ab02c07f  lui r5, 523264
0026ac  b7d909f0  beq r19, zero, -7564
0026b0  9f890200  addli r19, r5, 0
0026b4  bb4907f0  bneq r14, zero, -7568
0026b8  5b4efcff  j -7568
0026bc  ab02c07f  lui r5, 523264
0026c0  373b07f0  beq r14, zero, -7476
0026c4  1f870200  addli r14, r5, 0
0026c8  3bab0af0  bneq r21, zero, -7480
0026cc  5b59fcff  j -7480
0026d0  ab02c07f  lui r5, 523264
0026d4  b79c0af0  beq r21, zero, -7388
0026d8  9f8a0200  addli r21, r5, 0
0026dc  bb0c06f0  bneq r12, zero, -7392
0026e0  5b64fcff  j -7392
0026e4  ab02c07f  lui r5, 523264
0026e8  b77d06f0  beq r12, zero, -7300
0026ec  1f860200  addli r12, r5, 0
0026f0  bb6d09f0  bneq r18, zero, -7304
0026f4  5b6ffcff  j -7304
0026f8  ab02c07f  lui r5, 523264
0026fc  375f09f0  beq r18, zero, -7212
002700  1f890200  addli r18, r5, 0
002704  3bcf00f0  bneq r1, zero, -7216
002708  5b7afcff  j -7216
00270c  ab02c07f  lui r5, 523264
002710  63454ffc  loadli.w r10,  -476(r30)
002714  b7b000f2  beq r1, zero, -7124
002718  9f800200  addli r1, r5, 0
00271c  bb2001f2  bneq r2, zero, -7128
002720  5b85fcff  j -7128
002724  ab00c07f  lui r1, 523264
002728  63041ffc  loadli.w r8,  -504(r30)
00272c  370201f2  beq r2, zero, -7040
002730  1f810000  addli r2, r1, 0
002734  bb7108f2  bneq r16, zero, -7044
002738  db8ffcff  j -7044
00273c  ab00c07f  lui r1, 523264
002740  375308f2  beq r16, zero, -6956
002744  1f880000  addli r16, r1, 0
002748  3bc301f2  bneq r3, zero, -6960
00274c  5b9afcff  j -6960
002750  ab00c07f  lui r1, 523264
002754  b79606f2  beq r13, zero, -6748
002758  9f860000  addli r13, r1, 0
00275c  e3422ffd  loadli.w r5,  -364(r30)
002760  bb8602f2  bneq r5, zero, -6752
002764  5bb4fcff  j -6752
002768  ab00c07f  lui r1, 523264
00276c  63023ffd  loadli.w r4,  -360(r30)
002770  378804f2  beq r9, zero, -6656
002774  9f840000  addli r9, r1, 0
002778  bbf707f2  bneq r15, zero, -6660
00277c  dbbffcff  j -6660
002780  ab00c07f  lui r1, 523264
002784  37d907f2  beq r15, zero, -6572
002788  9f870000  addli r15, r1, 0
00278c  e3023ffd  loadli.w r5,  -360(r30)
002790  3bc902f2  bneq r5, zero, -6576
002794  5bcafcff  j -6576
002798  ab00c07f  lui r1, 523264
00279c  63423ffd  loadli.w r4,  -356(r30)
0027a0  b7ba07f2  beq r15, zero, -6484
0027a4  9f870000  addli r15, r1, 0
0027a8  bbaa0af2  bneq r21, zero, -6488
0027ac  5bd5fcff  j -6488
0027b0  ab00c07f  lui r1, 523264
0027b4  378c0af2  beq r21, zero, -6400
0027b8  9f8a0000  addli r21, r1, 0
0027bc  e3423ffd  loadli.w r5,  -356(r30)
0027c0  bbfb02f2  bneq r5, zero, -6404
0027c4  dbdffcff  j -6404
0027c8  ab00c07f  lui r1, 523264
0027cc  63024ffd  loadli.w r4,  -352(r30)
0027d0  b78d07f2  beq r15, zero, -6304
0027d4  9f870000  addli r15, r1, 0
0027d8  3b7d04f2  bneq r8, zero, -6308
0027dc  dbebfcff  j -6308
0027e0  ab00c07f  lui r1, 523264
0027e4  b76e04f2  beq r8, zero, -6216
0027e8  1f840000  addli r8, r1, 0
0027ec  e3024ffd  loadli.w r5,  -352(r30)
0027f0  bbde02f2  bneq r5, zero, -6220
0027f4  dbf6fcff  j -6220
0027f8  ab00c07f  lui r1, 523264
0027fc  63424ffd  loadli.w r4,  -348(r30)
002800  374004f4  beq r8, zero, -6128
002804  1f840000  addli r8, r1, 0
002808  3bb005f4  bneq r11, zero, -6132
00280c  db01fdff  j -6132
002810  ab00c07f  lui r1, 523264
002814  b79105f4  beq r11, zero, -6044
002818  9f850000  addli r11, r1, 0
00281c  e3424ffd  loadli.w r5,  -348(r30)
002820  bb8102f4  bneq r5, zero, -6048
002824  5b0cfdff  j -6048
002828  ab00c07f  lui r1, 523264
00282c  63025ffd  loadli.w r4,  -344(r30)
002830  b7f205f4  beq r11, zero, -5956
002834  9f850000  addli r11, r1, 0
002838  bb6203f4  bneq r6, zero, -5960
00283c  5b17fdff  j -5960
002840  ab00c07f  lui r1, 523264
002844  374403f4  beq r6, zero, -5872
002848  1f830000  addli r6, r1, 0
00284c  e3025ffd  loadli.w r5,  -344(r30)
002850  3bb402f4  bneq r5, zero, -5876
002854  db21fdff  j -5876
002858  ab00c07f  lui r1, 523264
00285c  63425ffd  loadli.w r4,  -340(r30)
002860  b72503f4  beq r6, zero, -5784
002864  1f830000  addli r6, r1, 0
002868  bb1509f4  bneq r18, zero, -5788
00286c  db2cfdff  j -5788
002870  ab00c07f  lui r1, 523264
002874  63026ffd  loadli.w r4,  -336(r30)
002878  371903f4  beq r6, zero, -5564
00287c  1f830000  addli r6, r1, 0
002880  3b090ef4  bneq r28, zero, -5568
002884  5b48fdff  j -5568
002888  ab00c07f  lui r1, 523264
00288c  1f040900  addli r8, r18, 0
002890  b70a0ef4  beq r28, zero, -5472
002894  1f8e0000  addli r28, r1, 0
002898  e3026ffd  loadli.w r5,  -336(r30)
00289c  3bfa02f4  bneq r5, zero, -5476
0028a0  db53fdff  j -5476
0028a4  ab00c07f  lui r1, 523264
0028a8  63426ffd  loadli.w r4,  -332(r30)
0028ac  b76b0ef4  beq r28, zero, -5384
0028b0  1f8e0000  addli r28, r1, 0
0028b4  bb5b08f4  bneq r16, zero, -5388
0028b8  db5efdff  j -5388
0028bc  ab00c07f  lui r1, 523264
0028c0  373d08f4  beq r16, zero, -5300
0028c4  1f880000  addli r16, r1, 0
0028c8  e3426ffd  loadli.w r5,  -332(r30)
0028cc  3bad02f4  bneq r5, zero, -5304
0028d0  5b69fdff  j -5304
0028d4  ab00c07f  lui r1, 523264
0028d8  63027ffd  loadli.w r4,  -328(r30)
0028dc  b71e08f4  beq r16, zero, -5212
0028e0  1f880000  addli r16, r1, 0
0028e4  bb8e03f4  bneq r7, zero, -5216
0028e8  5b74fdff  j -5216
0028ec  ab00c07f  lui r1, 523264
0028f0  b7ff03f4  beq r7, zero, -5124
0028f4  9f830000  addli r7, r1, 0
0028f8  e3027ffd  loadli.w r5,  -328(r30)
0028fc  bbef02f4  bneq r5, zero, -5128
002900  5b7ffdff  j -5128
002904  ab00c07f  lui r1, 523264
002908  63427ffd  loadli.w r4,  -324(r30)
00290c  37d103f6  beq r7, zero, -5036
002910  9f830000  addli r7, r1, 0
002914  3b4105f6  bneq r10, zero, -5040
002918  5b8afdff  j -5040
00291c  ab00c07f  lui r1, 523264
002920  b72205f6  beq r10, zero, -4952
002924  1f850000  addli r10, r1, 0
002928  e3427ffd  loadli.w r5,  -324(r30)
00292c  bb9202f6  bneq r5, zero, -4956
002930  db94fdff  j -4956
002934  ab00c07f  lui r1, 523264
002938  63028ffd  loadli.w r4,  -320(r30)
00293c  370405f6  beq r10, zero, -4864
002940  1f850000  addli r10, r1, 0
002944  bbf309f6  bneq r19, zero, -4868
002948  db9ffdff  j -4868
00294c  ab00c07f  lui r1, 523264
002950  37d509f6  beq r19, zero, -4780
002954  9f890000  addli r19, r1, 0
002958  e3028ffd  loadli.w r5,  -320(r30)
00295c  3bc502f6  bneq r5, zero, -4784
002960  5baafdff  j -4784
002964  ab00c07f  lui r1, 523264
002968  63428ffd  loadli.w r4,  -316(r30)
00296c  b75605f6  beq r10, zero, -4684
002970  1f850000  addli r10, r1, 0
002974  bb4607f6  bneq r14, zero, -4688
002978  5bb6fdff  j -4688
00297c  ab00c07f  lui r1, 523264
002980  374807f6  beq r14, zero, -4592
002984  1f870000  addli r14, r1, 0
002988  e3428ffd  loadli.w r5,  -316(r30)
00298c  3bb802f6  bneq r5, zero, -4596
002990  dbc1fdff  j -4596
002994  ab00c07f  lui r1, 523264
002998  63029ffd  loadli.w r4,  -312(r30)
00299c  b72907f6  beq r14, zero, -4504
0029a0  1f870000  addli r14, r1, 0
0029a4  bb990af6  bneq r21, zero, -4508
0029a8  dbccfdff  j -4508
0029ac  ab00c07f  lui r1, 523264
0029b0  b7fa0af6  beq r21, zero, -4420
0029b4  9f8a0000  addli r21, r1, 0
0029b8  e3029ffd  loadli.w r5,  -312(r30)
0029bc  bbea02f6  bneq r5, zero, -4424
0029c0  5bd7fdff  j -4424
0029c4  ab00c07f  lui r1, 523264
0029c8  63429ffd  loadli.w r4,  -308(r30)
0029cc  376c07f6  beq r14, zero, -4328
0029d0  1f870000  addli r14, r1, 0
0029d4  3bdc07f6  bneq r15, zero, -4332
0029d8  dbe2fdff  j -4332
0029dc  ab00c07f  lui r1, 523264
0029e0  b7dd07f6  beq r15, zero, -4236
0029e4  9f870000  addli r15, r1, 0
0029e8  e3429ffd  loadli.w r5,  -308(r30)
0029ec  bbcd02f6  bneq r5, zero, -4240
0029f0  5beefdff  j -4240
0029f4  ab00c07f  lui r1, 523264
0029f8  6302affd  loadli.w r4,  -304(r30)
0029fc  37bf07f6  beq r15, zero, -4148
002a00  9f870000  addli r15, r1, 0
002a04  3b2f08f6  bneq r16, zero, -4152
002a08  5bf9fdff  j -4152
002a0c  ab00c07f  lui r1, 523264
002a10  b71008f8  beq r16, zero, -4060
002a14  1f880000  addli r16, r1, 0
002a18  e302affd  loadli.w r5,  -304(r30)
002a1c  bb8002f8  bneq r5, zero, -4064
002a20  5b04feff  j -4064
002a24  ab00c07f  lui r1, 523264
002a28  6342affd  loadli.w r4,  -300(r30)
002a2c  b7f10af8  beq r21, zero, -3972
002a30  9f8a0000  addli r21, r1, 0
002a34  bbe105f8  bneq r11, zero, -3976
002a38  5b0ffeff  j -3976
002a3c  ab00c07f  lui r1, 523264
002a40  37c305f8  beq r11, zero, -3888
002a44  9f850000  addli r11, r1, 0
002a48  e342affd  loadli.w r5,  -300(r30)
002a4c  3bb302f8  bneq r5, zero, -3892
002a50  db19feff  j -3892
002a54  ab00c07f  lui r1, 523264
002a58  6302bffd  loadli.w r4,  -296(r30)
002a5c  b7b40af8  beq r21, zero, -3796
002a60  9f8a0000  addli r21, r1, 0
002a64  bb2403f8  bneq r6, zero, -3800
002a68  5b25feff  j -3800
002a6c  ab00c07f  lui r1, 523264
002a70  372603f8  beq r6, zero, -3704
002a74  1f830000  addli r6, r1, 0
002a78  e302bffd  loadli.w r5,  -296(r30)
002a7c  3b9602f8  bneq r5, zero, -3708
002a80  db30feff  j -3708
002a84  ab00c07f  lui r1, 523264
002a88  6342bffd  loadli.w r4,  -292(r30)
002a8c  b70703f8  beq r6, zero, -3616
002a90  1f830000  addli r6, r1, 0
002a94  3bf707f8  bneq r15, zero, -3620
002a98  db3bfeff  j -3620
002a9c  ab00c07f  lui r1, 523264
002aa0  b7e807f8  beq r15, zero, -3528
002aa4  9f870000  addli r15, r1, 0
002aa8  e342bffd  loadli.w r5,  -292(r30)
002aac  bbd802f8  bneq r5, zero, -3532
002ab0  db46feff  j -3532
002ab4  ab00c07f  lui r1, 523264
002ab8  6302cffd  loadli.w r4,  -288(r30)
002abc  374a09f8  beq r18, zero, -3440
002ac0  1f890000  addli r18, r1, 0
002ac4  3b3a04f8  bneq r8, zero, -3444
002ac8  db51feff  j -3444
002acc  ab00c07f  lui r1, 523264
002ad0  b71b04f8  beq r8, zero, -3356
002ad4  1f840000  addli r8, r1, 0
002ad8  e302cffd  loadli.w r5,  -288(r30)
002adc  bb8b02f8  bneq r5, zero, -3360
002ae0  5b5cfeff  j -3360
002ae4  ab00c07f  lui r1, 523264
002ae8  b77c04f8  beq r8, zero, -3268
002aec  1f840000  addli r8, r1, 0
002af0  bbec04f8  bneq r9, zero, -3272
002af4  5b67feff  j -3272
002af8  ab00c07f  lui r1, 523264
002afc  37ce04f8  beq r9, zero, -3184
002b00  9f840000  addli r9, r1, 0
002b04  3b3e03f8  bneq r6, zero, -3188
002b08  db71feff  j -3188
002b0c  ab00c07f  lui r1, 523264
002b10  6342cffd  loadli.w r4,  -284(r30)
002b14  b72f03f8  beq r6, zero, -3096
002b18  1f830000  addli r6, r1, 0
002b1c  bb9f04f8  bneq r9, zero, -3100
002b20  db7cfeff  j -3100
002b24  ab00c07f  lui r1, 523264
002b28  37d309fa  beq r19, zero, -2860
002b2c  9f890000  addli r19, r1, 0
002b30  3bc305fa  bneq r11, zero, -2864
002b34  5b9afeff  j -2864
002b38  ab00c07f  lui r1, 523264
002b3c  1f090800  addli r18, r16, 0
002b40  b7c405fa  beq r11, zero, -2768
002b44  9f850000  addli r11, r1, 0
002b48  1f880400  addli r16, r9, 0
002b4c  bb3407fa  bneq r14, zero, -2772
002b50  dba5feff  j -2772
002b54  ab00c07f  lui r1, 523264
002b58  373607fa  beq r14, zero, -2676
002b5c  1f870000  addli r14, r1, 0
002b60  3ba605fa  bneq r11, zero, -2680
002b64  5bb1feff  j -2680
002b68  ab00c07f  lui r1, 523264
002b6c  b78705fa  beq r11, zero, -2592
002b70  9f850000  addli r11, r1, 0
002b74  3b7705fa  bneq r10, zero, -2596
002b78  dbbbfeff  j -2596
002b7c  ab00c07f  lui r1, 523264
002b80  b75805fa  beq r10, zero, -2508
002b84  1f850000  addli r10, r1, 0
002b88  bbc803fa  bneq r7, zero, -2512
002b8c  5bc6feff  j -2512
002b90  ab00c07f  lui r1, 523264
002b94  37aa03fa  beq r7, zero, -2424
002b98  9f830000  addli r7, r1, 0
002b9c  3b1a03fa  bneq r6, zero, -2428
002ba0  dbd0feff  j -2428
002ba4  9f8e2e04  addli sp, sp, 528
002ba8  00a00300  mfence { lm, sm, gm }
002bac  00100000  exit
002bb0  00100000  exit
002bb4  00100000  exit
002bb8  00100000  exit
002bbc  00100000  exit
002bc0  00100000  exit
002bc4  00100000  exit
002bc8  00100000  exit
002bcc  00100000  exit
002bd0  00100000  exit
002bd4  00100000  exit
002bd8  00100000  exit
002bdc  00100000  exit
002be0  00100000  exit
002be4  00100000  exit
002be8  00100000  exit
002bec  00100000  exit
002bf0  00100000  exit
002bf4  00100000  exit
002bf8  00100000  exit
002bfc  00100000  exit
002c00  00100000  exit
002c04  00100000  exit
002c08  00100000  exit
002c0c  00100000  exit
002c10  00100000  exit
002c14  00100000  exit
002c18  00100000  exit
002c1c  00100000  exit
002c20  00100000  exit
002c24  00100000  exit
002c28  00100000  exit
002c2c  00100000  exit
002c30  00100000  exit
002c34  00100000  exit
002c38  00100000  exit
002c3c  00100000  exit
002c40  00100000  exit
002c44  00100000  exit
002c48  00100000  exit
002c4c  00100000  exit
002c50  00100000  exit
002c54  00100000  exit
002c58  00100000  exit
002c5c  00100000  exit
002c60  00100000  exit
002c64  00100000  exit
002c68  00100000  exit
002c6c  00100000  exit
002c70  00100000  exit
002c74  00100000  exit
002c78  00100000  exit
002c7c  00100000  exit
002c80  00100000  exit
002c84  00100000  exit
002c88  00100000  exit
002c8c  00100000  exit
002c90  00100000  exit
002c94  00100000  exit
002c98  00100000  exit
002c9c  00100000  exit
002ca0  00100000  exit
002ca4  00100000  exit
002ca8  00100000  exit
002cac  00100000  exit
002cb0  00100000  exit
002cb4  00100000  exit
002cb8  00100000  exit
002cbc  00100000  exit
002cc0  00100000  exit
002cc4  00100000  exit
002cc8  00100000  exit
002ccc  00100000  exit
002cd0  00100000  exit
002cd4  00100000  exit
002cd8  00100000  exit
002cdc  00100000  exit
002ce0  00100000  exit
002ce4  00100000  exit
002ce8  00100000  exit
002cec  00100000  exit
002cf0  00100000  exit
002cf4  00100000  exit
002cf8  00100000  exit
002cfc  00100000  exit
002d00  00100000  exit
002d04  00100000  exit
002d08  00100000  exit
002d0c  00100000  exit
002d10  00100000  exit
002d14  00100000  exit
002d18  00100000  exit
002d1c  00100000  exit
002d20  00100000  exit
002d24  00100000  exit
002d28  00100000  exit
002d2c  00100000  exit
002d30  00100000  exit
002d34  00100000  exit
002d38  00100000  exit
002d3c  00100000  exit
002d40  00100000  exit
002d44  00100000  exit
002d48  00100000  exit
002d4c  00100000  exit
002d50  00100000  exit
002d54  00100000  exit
002d58  00100000  exit
002d5c  00100000  exit
002d60  00100000  exit
002d64  00100000  exit
002d68  00100000  exit
002d6c  00100000  exit
002d70  00100000  exit
002d74  00100000  exit
002d78  00100000  exit
002d7c  00100000  exit
002d80  00100000  exit
002d84  00100000  exit
002d88  00100000  exit
002d8c  00100000  exit
002d90  00100000  exit
002d94  00100000  exit
002d98  00100000  exit
002d9c  00100000  exit
002da0  00100000  exit
002da4  00100000  exit
002da8  00100000  exit
002dac  00100000  exit
002db0  00100000  exit
002db4  00100000  exit
002db8  00100000  exit
002dbc  00100000  exit
002dc0  00100000  exit
002dc4  00100000  exit
002dc8  00100000  exit
002dcc  00100000  exit
002dd0  00100000  exit
002dd4  00100000  exit
002dd8  00100000  exit
002ddc  00100000  exit
002de0  00100000  exit
002de4  00100000  exit
002de8  00100000  exit
002dec  00100000  exit
