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
000078  9f493000  addli r19, zero, 28
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
0000dc  9f8e8eec  addli sp, sp, -2496
0000e0  1f8f0e13  addli r30, sp, 2432
0000e4  00570002  load_param_i r14, 0
0000e8  63412f00  loadli.w r2,  20(r30)
0000ec  e3002f00  loadli.w r1,  16(r30)
0000f0  e3013f00  loadli.w r3,  24(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  674b1fec  storeli.w r1, -2380(r30)
000100  4bd4e004  ble.s r1, r14, 2324
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  1f088ff8  addli r16, r30, -960
000110  ab08803f  lui r17, 260096
000114  9f090ff8  addli r19, r30, -1024
000118  9f0a8000  addli r21, zero, 64
00011c  9f0d8ff9  addli r27, r30, -832
000120  1f0e0ff9  addli r28, r30, -896
000124  9f028ffa  addli r5, r30, -704
000128  1f030ffa  addli r6, r30, -768
00012c  9f038ffb  addli r7, r30, -576
000130  1f040ffb  addli r8, r30, -640
000134  9f058ffc  addli r11, r30, -448
000138  1f060ffc  addli r12, r30, -512
00013c  9f068ffd  addli r13, r30, -320
000140  9f040ffe  addli r9, r30, -256
000144  1f058fff  addli r10, r30, -64
000148  1f020fff  addli r4, r30, -128
00014c  9bb07000  slli r1, r1, 7
000150  670b2fec  storeli.w r2, -2384(r30)
000154  2bf1b53f  lui r2, 260959
000158  e74a1fec  storeli.w r1, -2388(r30)
00015c  ab00353f  lui r1, 258896
000160  9b90304f  ori r1, r1, 1267
000164  e70a1fec  storeli.w r1, -2392(r30)
000168  abb0a73e  lui r1, 256635
00016c  1b9a50a0  ori r20, r1, 2565
000170  abd0873f  lui r1, 260221
000174  9b9c20c2  ori r25, r1, 3106
000178  ab00babf  lui r1, 785312
00017c  1b9d300e  ori r26, r1, 227
000180  9b10310e  ori r1, r2, 227
000184  2b71823e  lui r2, 256039
000188  e74f1ff0  storeli.w r1, -1796(r30)
00018c  aba091be  lui r1, 780570
000190  674aafed  storeli.w r26, -2396(r30)
000194  9b90e098  ori r1, r1, 2446
000198  e70f1ff0  storeli.w r1, -1800(r30)
00019c  9b106190  ori r1, r2, 2310
0001a0  1f018ffe  addli r2, r30, -192
0001a4  674f1ff0  storeli.w r1, -1804(r30)
0001a8  9f000ffd  addli r1, r30, -384
0001ac  e3013f00  loadli.w r3,  24(r30)
0001b0  670feff0  storeli.w r14, -1808(r30)
0001b4  1f8d0c00  addli r26, r25, 0
0001b8  6b5c0f00  load.d r[25:26], 0(r30)
0001bc  9f078fee  addli r15, r30, -2240
0001c0  0b173730  div.s r14, r14, r3
0001c4  e3412f00  loadli.w r3,  20(r30)
0001c8  0b173730  div.s r14, r14, r3
0001cc  e3415fed  loadli.w r3,  -2388(r30)
0001d0  1b37d700  slli r14, r14, 13
0001d4  0b173710  add.s r14, r14, r3
0001d8  9f210000  addli r3, zero, 2
0001dc  331b0728  sext_int2long r[23:24], r14
0001e0  2b0700f0  lui r14, 983040
0001e4  73346f8f  store.d r[23:24], -1816(r30)
0001e8  173b3b02  sll.d r[23:24], r[23:24], r3
0001ec  9f010004  addli r3, zero, 512
0001f0  1797e100  or r14, r3, r14
0001f4  0b2b6c11  add.ul r[23:24], r[25:26], r[23:24]
0001f8  9f010ff2  addli r3, r30, -1792
0001fc  2b0c80bf  lui r24, 784384
000200  7f273b00  l_gm2lm r14, r3, 0(r[23:24])
000204  00a00000  mfence { lm }
000208  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
00020c  9f018ff2  addli r3, r30, -1728
000210  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000214  9f010ff3  addli r3, r30, -1664
000218  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00021c  9f018ff3  addli r3, r30, -1600
000220  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000224  9f010ff4  addli r3, r30, -1536
000228  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
00022c  9f018ff4  addli r3, r30, -1472
000230  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
000234  9f010ff5  addli r3, r30, -1408
000238  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
00023c  63075fed  loadli.w r14,  -2392(r30)
000240  8a117702  vmul.f.mz.rn vr3{mr1}, r14, vr7
000244  72103042  vlt.f.mz mr0{mr1}, zero, vr3
000248  9f417fed  addli r3, r30, -2372
00024c  8e953102  vmul.f.mz.rn vr11{mr1}, vr3, vr3
000250  7e010040  vmnot mr2, mr0
000254  0a923800  vmul.f.mz.rn vr4{mr0}, r17, vr3
000258  7e0001a0  vmmov zero, mr2
00025c  8a143c04  vmul.f.mz.rn vr9{mr2}, r24, vr3
000260  67800100  storeli.w zero, 0(r3)
000264  ab01003f  lui r3, 258048
000268  8a920102  vmul.f.mz.rn vr5{mr1}, r3, vr0
00026c  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
000270  9f078fef  addli r15, r30, -2112
000274  8a911102  vmul.f.mz.rn vr3{mr1}, r3, vr1
000278  17200000  xor zero, zero, zero
00027c  4610b802  vstore_mask16.mz vr11{mr1}, 0(r16)
000280  8a151702  vmul.f.mz.rn vr11{mr1}, r14, vr1
000284  8a102702  vmul.f.mz.rn vr1{mr1}, r14, vr2
000288  46903702  vstore_mask16.mz vr3{mr1}, 0(r15)
00028c  9f070fef  addli r15, r30, -2176
000290  8a912102  vmul.f.mz.rn vr3{mr1}, r3, vr2
000294  0a116702  vmul.f.mz.rn vr2{mr1}, r14, vr6
000298  96149202  vadd.f.mz.rn vr9{mr1}, vr4, vr9
00029c  0a928102  vmul.f.mz.rn vr4{mr1}, r3, vr8
0002a0  46903702  vstore_mask16.mz vr3{mr1}, 0(r15)
0002a4  9f070ff0  addli r15, r30, -2048
0002a8  8a916102  vmul.f.mz.rn vr3{mr1}, r3, vr6
0002ac  46903702  vstore_mask16.mz vr3{mr1}, 0(r15)
0002b0  9f078ff0  addli r15, r30, -1984
0002b4  8a91a102  vmul.f.mz.rn vr3{mr1}, r3, vr10
0002b8  46909902  vstore_mask16.mz vr9{mr1}, 0(r19)
0002bc  8a140702  vmul.f.mz.rn vr9{mr1}, r14, vr0
0002c0  0a10a702  vmul.f.mz.rn vr0{mr1}, r14, vr10
0002c4  0a158702  vmul.f.mz.rn vr10{mr1}, r14, vr8
0002c8  46903702  vstore_mask16.mz vr3{mr1}, 0(r15)
0002cc  9f078ff5  addli r15, r30, -1344
0002d0  c2910702  vload_mask16.mz vr3{mr1}, 0(r15)
0002d4  9f070fee  addli r15, r30, -2304
0002d8  0a143702  vmul.f.mz.rn vr8{mr1}, r14, vr3
0002dc  1f070000  addli r14, zero, 0
0002e0  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
0002e4  9f078fed  addli r15, r30, -2368
0002e8  0a927102  vmul.f.mz.rn vr4{mr1}, r3, vr7
0002ec  46904702  vstore_mask16.mz vr4{mr1}, 0(r15)
0002f0  0a923102  vmul.f.mz.rn vr4{mr1}, r3, vr3
0002f4  9f010ff1  addli r3, r30, -1920
0002f8  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0002fc  00a00000  mfence { lm }
000300  0b9be910  add.s r22, r19, r14
000304  ab01803f  lui r3, 260096
000308  8b1be810  add.s r23, r16, r14
00030c  1f470700  addli r14, r14, 4
000310  63090b00  loadli.w r18,  0(r22)
000314  e3870b00  loadli.w r15,  0(r23)
000318  8b614951  fmac.f.rn r3, r18, r20
00031c  8be70758  neg.f r15, r15
000320  8f870700  exp.f.rn r15, r15
000324  8f813818  div.f.rn r3, r17, r3
000328  6780fb00  storeli.w r15, 0(r23)
00032c  67003b00  storeli.w r3, 0(r22)
000330  3b4f57ff  bneq r14, r21, -48
000334  00a00000  mfence { lm }
000338  9f0c0d00  addli r25, r26, 0
00033c  f2119042  vlt.f.mz mr3{mr1}, zero, vr9
000340  8e939402  vmul.f.mz.rn vr7{mr1}, vr9, vr9
000344  c2910902  vload_mask16.mz vr3{mr1}, 0(r19)
000348  634d4fed  loadli.w r26,  -2396(r30)
00034c  e341fff1  loadli.w r3,  -1796(r30)
000350  c2120802  vload_mask16.mz vr5{mr1}, 0(r16)
000354  7e810140  vmnot mr2, mr3
000358  7e0001a0  vmmov zero, mr2
00035c  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
000360  0a923c02  vmul.f.mz.rn vr4{mr1}, r25, vr3
000364  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000368  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00036c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000370  e301fff1  loadli.w r3,  -1800(r30)
000374  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000378  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00037c  e341eff1  loadli.w r3,  -1804(r30)
000380  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000384  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000388  9f017fed  addli r3, r30, -2376
00038c  67800100  storeli.w zero, 0(r3)
000390  9f417fed  addli r3, r30, -2372
000394  17200000  xor zero, zero, zero
000398  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
00039c  63800100  loadli.w zero,  0(r3)
0003a0  0a929806  vmul.f.mz.rn vr4{mr3}, r17, vr9
0003a4  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0003a8  8a129c04  vmul.f.mz.rn vr5{mr2}, r24, vr9
0003ac  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
0003b0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0003b4  0a933800  vmul.f.mz.rn vr6{mr0}, r17, vr3
0003b8  7e0000e0  vmmov mr0, zero
0003bc  17200000  xor zero, zero, zero
0003c0  46104e02  vstore_mask16.mz vr4{mr1}, 0(r28)
0003c4  8a113c00  vmul.f.mz.rn vr3{mr0}, r24, vr3
0003c8  00a00000  mfence { lm }
0003cc  1f070000  addli r14, zero, 0
0003d0  96143302  vadd.f.mz.rn vr9{mr1}, vr6, vr3
0003d4  8b11ee10  add.s r3, r28, r14
0003d8  2b0b803f  lui r22, 260096
0003dc  8b97ed10  add.s r15, r27, r14
0003e0  1f470700  addli r14, r14, 4
0003e4  63890100  loadli.w r18,  0(r3)
0003e8  e38b0700  loadli.w r23,  0(r15)
0003ec  0b6b4951  fmac.f.rn r22, r18, r20
0003f0  0be90b58  neg.f r18, r23
0003f4  0f090900  exp.f.rn r18, r18
0003f8  0f8b6819  div.f.rn r22, r17, r22
0003fc  67802701  storeli.w r18, 0(r15)
000400  67806101  storeli.w r22, 0(r3)
000404  3b4f57ff  bneq r14, r21, -48
000408  00a00000  mfence { lm }
00040c  7210b042  vlt.f.mz mr0{mr1}, zero, vr11
000410  8e93b502  vmul.f.mz.rn vr7{mr1}, vr11, vr11
000414  c2110e02  vload_mask16.mz vr3{mr1}, 0(r28)
000418  e341fff1  loadli.w r3,  -1796(r30)
00041c  c2920d02  vload_mask16.mz vr5{mr1}, 0(r27)
000420  7e010040  vmnot mr2, mr0
000424  7e0001a0  vmmov zero, mr2
000428  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
00042c  0a923c02  vmul.f.mz.rn vr4{mr1}, r25, vr3
000430  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000434  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000438  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00043c  e301fff1  loadli.w r3,  -1800(r30)
000440  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000444  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000448  e341eff1  loadli.w r3,  -1804(r30)
00044c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000450  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000454  9f417fed  addli r3, r30, -2372
000458  67800100  storeli.w zero, 0(r3)
00045c  9f017fed  addli r3, r30, -2376
000460  17200000  xor zero, zero, zero
000464  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000468  63800100  loadli.w zero,  0(r3)
00046c  0a92b800  vmul.f.mz.rn vr4{mr0}, r17, vr11
000470  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000474  8a12bc04  vmul.f.mz.rn vr5{mr2}, r24, vr11
000478  7e0100e0  vmmov mr2, zero
00047c  17200000  xor zero, zero, zero
000480  1f070000  addli r14, zero, 0
000484  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
000488  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00048c  0a933806  vmul.f.mz.rn vr6{mr3}, r17, vr3
000490  8a113c04  vmul.f.mz.rn vr3{mr2}, r24, vr3
000494  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
000498  00a00000  mfence { lm }
00049c  96153302  vadd.f.mz.rn vr11{mr1}, vr6, vr3
0004a0  8b11e310  add.s r3, r6, r14
0004a4  2b0b803f  lui r22, 260096
0004a8  8b97e210  add.s r15, r5, r14
0004ac  1f470700  addli r14, r14, 4
0004b0  63890100  loadli.w r18,  0(r3)
0004b4  e38b0700  loadli.w r23,  0(r15)
0004b8  0b6b4951  fmac.f.rn r22, r18, r20
0004bc  0be90b58  neg.f r18, r23
0004c0  0f090900  exp.f.rn r18, r18
0004c4  0f8b6819  div.f.rn r22, r17, r22
0004c8  67802701  storeli.w r18, 0(r15)
0004cc  67806101  storeli.w r22, 0(r3)
0004d0  3b4f57ff  bneq r14, r21, -48
0004d4  00a00000  mfence { lm }
0004d8  72111042  vlt.f.mz mr2{mr1}, zero, vr1
0004dc  8e931002  vmul.f.mz.rn vr7{mr1}, vr1, vr1
0004e0  c2110302  vload_mask16.mz vr3{mr1}, 0(r6)
0004e4  e341fff1  loadli.w r3,  -1796(r30)
0004e8  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
0004ec  fe010140  vmnot mr3, mr2
0004f0  7e8001a0  vmmov zero, mr3
0004f4  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0004f8  0a923c02  vmul.f.mz.rn vr4{mr1}, r25, vr3
0004fc  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000500  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000504  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000508  e301fff1  loadli.w r3,  -1800(r30)
00050c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000510  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000514  e341eff1  loadli.w r3,  -1804(r30)
000518  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00051c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000520  9f017fed  addli r3, r30, -2376
000524  67800100  storeli.w zero, 0(r3)
000528  9f417fed  addli r3, r30, -2372
00052c  17200000  xor zero, zero, zero
000530  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000534  63800100  loadli.w zero,  0(r3)
000538  0a921804  vmul.f.mz.rn vr4{mr2}, r17, vr1
00053c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000540  8a121c06  vmul.f.mz.rn vr5{mr3}, r24, vr1
000544  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
000548  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00054c  0a933800  vmul.f.mz.rn vr6{mr0}, r17, vr3
000550  7e0000e0  vmmov mr0, zero
000554  17200000  xor zero, zero, zero
000558  46104402  vstore_mask16.mz vr4{mr1}, 0(r8)
00055c  8a113c00  vmul.f.mz.rn vr3{mr0}, r24, vr3
000560  00a00000  mfence { lm }
000564  1f070000  addli r14, zero, 0
000568  96103302  vadd.f.mz.rn vr1{mr1}, vr6, vr3
00056c  8b11e410  add.s r3, r8, r14
000570  2b0b803f  lui r22, 260096
000574  8b97e310  add.s r15, r7, r14
000578  1f470700  addli r14, r14, 4
00057c  63890100  loadli.w r18,  0(r3)
000580  e38b0700  loadli.w r23,  0(r15)
000584  0b6b4951  fmac.f.rn r22, r18, r20
000588  0be90b58  neg.f r18, r23
00058c  0f090900  exp.f.rn r18, r18
000590  0f8b6819  div.f.rn r22, r17, r22
000594  67802701  storeli.w r18, 0(r15)
000598  67806101  storeli.w r22, 0(r3)
00059c  3b4f57ff  bneq r14, r21, -48
0005a0  00a00000  mfence { lm }
0005a4  72102042  vlt.f.mz mr0{mr1}, zero, vr2
0005a8  8e132102  vmul.f.mz.rn vr7{mr1}, vr2, vr2
0005ac  c2110402  vload_mask16.mz vr3{mr1}, 0(r8)
0005b0  e341fff1  loadli.w r3,  -1796(r30)
0005b4  c2920302  vload_mask16.mz vr5{mr1}, 0(r7)
0005b8  fe010040  vmnot mr3, mr0
0005bc  7e8001a0  vmmov zero, mr3
0005c0  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
0005c4  0a923c02  vmul.f.mz.rn vr4{mr1}, r25, vr3
0005c8  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
0005cc  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0005d0  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0005d4  e301fff1  loadli.w r3,  -1800(r30)
0005d8  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0005dc  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0005e0  e341eff1  loadli.w r3,  -1804(r30)
0005e4  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0005e8  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0005ec  9f417fed  addli r3, r30, -2372
0005f0  67800100  storeli.w zero, 0(r3)
0005f4  9f017fed  addli r3, r30, -2376
0005f8  17200000  xor zero, zero, zero
0005fc  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000600  63800100  loadli.w zero,  0(r3)
000604  0a922800  vmul.f.mz.rn vr4{mr0}, r17, vr2
000608  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
00060c  8a122c06  vmul.f.mz.rn vr5{mr3}, r24, vr2
000610  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
000614  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000618  0a933804  vmul.f.mz.rn vr6{mr2}, r17, vr3
00061c  7e0100e0  vmmov mr2, zero
000620  17200000  xor zero, zero, zero
000624  46104602  vstore_mask16.mz vr4{mr1}, 0(r12)
000628  8a113c04  vmul.f.mz.rn vr3{mr2}, r24, vr3
00062c  00a00000  mfence { lm }
000630  1f070000  addli r14, zero, 0
000634  16113302  vadd.f.mz.rn vr2{mr1}, vr6, vr3
000638  8b11e610  add.s r3, r12, r14
00063c  2b0b803f  lui r22, 260096
000640  8b97e510  add.s r15, r11, r14
000644  1f470700  addli r14, r14, 4
000648  63890100  loadli.w r18,  0(r3)
00064c  e38b0700  loadli.w r23,  0(r15)
000650  0b6b4951  fmac.f.rn r22, r18, r20
000654  0be90b58  neg.f r18, r23
000658  0f090900  exp.f.rn r18, r18
00065c  0f8b6819  div.f.rn r22, r17, r22
000660  67802701  storeli.w r18, 0(r15)
000664  67806101  storeli.w r22, 0(r3)
000668  3b4f57ff  bneq r14, r21, -48
00066c  00a00000  mfence { lm }
000670  72110042  vlt.f.mz mr2{mr1}, zero, vr0
000674  8e130002  vmul.f.mz.rn vr7{mr1}, vr0, vr0
000678  c2110602  vload_mask16.mz vr3{mr1}, 0(r12)
00067c  e341fff1  loadli.w r3,  -1796(r30)
000680  c2920502  vload_mask16.mz vr5{mr1}, 0(r11)
000684  fe010140  vmnot mr3, mr2
000688  7e8001a0  vmmov zero, mr3
00068c  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
000690  0a923c02  vmul.f.mz.rn vr4{mr1}, r25, vr3
000694  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000698  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00069c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0006a0  e301fff1  loadli.w r3,  -1800(r30)
0006a4  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006a8  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0006ac  e341eff1  loadli.w r3,  -1804(r30)
0006b0  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006b4  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0006b8  9f017fed  addli r3, r30, -2376
0006bc  67800100  storeli.w zero, 0(r3)
0006c0  9f417fed  addli r3, r30, -2372
0006c4  17200000  xor zero, zero, zero
0006c8  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0006cc  63800100  loadli.w zero,  0(r3)
0006d0  0a920804  vmul.f.mz.rn vr4{mr2}, r17, vr0
0006d4  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0006d8  8a120c06  vmul.f.mz.rn vr5{mr3}, r24, vr0
0006dc  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
0006e0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0006e4  0a933800  vmul.f.mz.rn vr6{mr0}, r17, vr3
0006e8  7e0000e0  vmmov mr0, zero
0006ec  17200000  xor zero, zero, zero
0006f0  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
0006f4  8a113c00  vmul.f.mz.rn vr3{mr0}, r24, vr3
0006f8  00a00000  mfence { lm }
0006fc  1f070000  addli r14, zero, 0
000700  16103302  vadd.f.mz.rn vr0{mr1}, vr6, vr3
000704  8b91e010  add.s r3, r1, r14
000708  2b0b803f  lui r22, 260096
00070c  8b97e610  add.s r15, r13, r14
000710  1f470700  addli r14, r14, 4
000714  63890100  loadli.w r18,  0(r3)
000718  e38b0700  loadli.w r23,  0(r15)
00071c  0b6b4951  fmac.f.rn r22, r18, r20
000720  0be90b58  neg.f r18, r23
000724  0f090900  exp.f.rn r18, r18
000728  0f8b6819  div.f.rn r22, r17, r22
00072c  67802701  storeli.w r18, 0(r15)
000730  67806101  storeli.w r22, 0(r3)
000734  3b4f57ff  bneq r14, r21, -48
000738  00a00000  mfence { lm }
00073c  f211a042  vlt.f.mz mr3{mr1}, zero, vr10
000740  8e13a502  vmul.f.mz.rn vr7{mr1}, vr10, vr10
000744  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000748  e341fff1  loadli.w r3,  -1796(r30)
00074c  c2920602  vload_mask16.mz vr5{mr1}, 0(r13)
000750  7e800140  vmnot mr0, mr3
000754  7e0000a0  vmmov zero, mr0
000758  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
00075c  0a923c02  vmul.f.mz.rn vr4{mr1}, r25, vr3
000760  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
000764  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000768  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00076c  e301fff1  loadli.w r3,  -1800(r30)
000770  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000774  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000778  e341eff1  loadli.w r3,  -1804(r30)
00077c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000780  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000784  9f417fed  addli r3, r30, -2372
000788  67800100  storeli.w zero, 0(r3)
00078c  9f017fed  addli r3, r30, -2376
000790  17200000  xor zero, zero, zero
000794  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000798  63800100  loadli.w zero,  0(r3)
00079c  0a92a806  vmul.f.mz.rn vr4{mr3}, r17, vr10
0007a0  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0007a4  8a12ac00  vmul.f.mz.rn vr5{mr0}, r24, vr10
0007a8  7e0000e0  vmmov mr0, zero
0007ac  17200000  xor zero, zero, zero
0007b0  1f070000  addli r14, zero, 0
0007b4  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
0007b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007bc  0a933804  vmul.f.mz.rn vr6{mr2}, r17, vr3
0007c0  8a113c00  vmul.f.mz.rn vr3{mr0}, r24, vr3
0007c4  46904402  vstore_mask16.mz vr4{mr1}, 0(r9)
0007c8  00a00000  mfence { lm }
0007cc  16153302  vadd.f.mz.rn vr10{mr1}, vr6, vr3
0007d0  8b91e410  add.s r3, r9, r14
0007d4  2b0b803f  lui r22, 260096
0007d8  8b17e110  add.s r15, r2, r14
0007dc  1f470700  addli r14, r14, 4
0007e0  63890100  loadli.w r18,  0(r3)
0007e4  e38b0700  loadli.w r23,  0(r15)
0007e8  0b6b4951  fmac.f.rn r22, r18, r20
0007ec  0be90b58  neg.f r18, r23
0007f0  0f090900  exp.f.rn r18, r18
0007f4  0f8b6819  div.f.rn r22, r17, r22
0007f8  67802701  storeli.w r18, 0(r15)
0007fc  67806101  storeli.w r22, 0(r3)
000800  3b4f57ff  bneq r14, r21, -48
000804  00a00000  mfence { lm }
000808  72108042  vlt.f.mz mr0{mr1}, zero, vr8
00080c  8e138402  vmul.f.mz.rn vr7{mr1}, vr8, vr8
000810  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
000814  e341fff1  loadli.w r3,  -1796(r30)
000818  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
00081c  7e010040  vmnot mr2, mr0
000820  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
000824  0a923c02  vmul.f.mz.rn vr4{mr1}, r25, vr3
000828  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
00082c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000830  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000834  e301fff1  loadli.w r3,  -1800(r30)
000838  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00083c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000840  e341eff1  loadli.w r3,  -1804(r30)
000844  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000848  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
00084c  9f417fed  addli r3, r30, -2372
000850  63800100  loadli.w zero,  0(r3)
000854  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000858  0a928800  vmul.f.mz.rn vr4{mr0}, r17, vr8
00085c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000860  8a128c04  vmul.f.mz.rn vr5{mr2}, r24, vr8
000864  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
000868  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00086c  0a933806  vmul.f.mz.rn vr6{mr3}, r17, vr3
000870  fe0100e0  vmmov mr3, zero
000874  17200000  xor zero, zero, zero
000878  46104202  vstore_mask16.mz vr4{mr1}, 0(r4)
00087c  8a113c06  vmul.f.mz.rn vr3{mr3}, r24, vr3
000880  00a00000  mfence { lm }
000884  1f070000  addli r14, zero, 0
000888  16143302  vadd.f.mz.rn vr8{mr1}, vr6, vr3
00088c  8b11e210  add.s r3, r4, r14
000890  2b0b803f  lui r22, 260096
000894  8b17e510  add.s r15, r10, r14
000898  1f470700  addli r14, r14, 4
00089c  63890100  loadli.w r18,  0(r3)
0008a0  e38b0700  loadli.w r23,  0(r15)
0008a4  0b6b4951  fmac.f.rn r22, r18, r20
0008a8  0be90b58  neg.f r18, r23
0008ac  0f090900  exp.f.rn r18, r18
0008b0  0f8b6819  div.f.rn r22, r17, r22
0008b4  67802701  storeli.w r18, 0(r15)
0008b8  67806101  storeli.w r22, 0(r3)
0008bc  3b4f57ff  bneq r14, r21, -48
0008c0  00a00000  mfence { lm }
0008c4  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0008c8  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
0008cc  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
0008d0  12948802  vadd.f.mz.rn vr8{mr1}, r17, vr8
0008d4  6b5b8f00  load.d r[23:24], 8(r30)
0008d8  1f090002  addli r18, zero, 256
0008dc  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0008e0  e341fff1  loadli.w r3,  -1796(r30)
0008e4  c2120502  vload_mask16.mz vr5{mr1}, 0(r10)
0008e8  0a923c02  vmul.f.mz.rn vr4{mr1}, r25, vr3
0008ec  12124d02  vadd.f.mz.rn vr4{mr1}, r26, vr4
0008f0  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0008f4  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
0008f8  e301fff1  loadli.w r3,  -1800(r30)
0008fc  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000900  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000904  e341eff1  loadli.w r3,  -1804(r30)
000908  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00090c  12924102  vadd.f.mz.rn vr4{mr1}, r3, vr4
000910  9f018fed  addli r3, r30, -2368
000914  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
000918  9f018fee  addli r3, r30, -2240
00091c  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000920  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
000924  9f018fef  addli r3, r30, -2112
000928  12929802  vadd.f.mz.rn vr4{mr1}, r17, vr9
00092c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000930  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
000934  9f010fef  addli r3, r30, -2176
000938  0e124302  vmul.f.mz.rn vr4{mr1}, vr6, vr4
00093c  1293b802  vadd.f.mz.rn vr6{mr1}, r17, vr11
000940  0e936302  vmul.f.mz.rn vr6{mr1}, vr7, vr6
000944  9a913802  vsub.f.mz.rn vr3{mr1}, r17, vr3
000948  8e901202  vmul.f.mz.rn vr1{mr1}, vr5, vr1
00094c  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
000950  9f010ff0  addli r3, r30, -2048
000954  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
000958  9f018ff0  addli r3, r30, -1984
00095c  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000960  9f010fee  addli r3, r30, -2304
000964  0e912202  vmul.f.mz.rn vr2{mr1}, vr5, vr2
000968  9292a802  vadd.f.mz.rn vr5{mr1}, r17, vr10
00096c  0e900302  vmul.f.mz.rn vr0{mr1}, vr7, vr0
000970  8a933800  vmul.f.mz.rn vr7{mr0}, r17, vr3
000974  8a113c04  vmul.f.mz.rn vr3{mr2}, r24, vr3
000978  8e925402  vmul.f.mz.rn vr5{mr1}, vr9, vr5
00097c  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000980  9f010ff1  addli r3, r30, -1920
000984  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
000988  86130200  vfloat2fp16_l.rn vr7, vr4
00098c  86530300  vfloat2fp16_h.rn vr7, vr6
000990  06920000  vfloat2fp16_l.rn vr4, vr1
000994  06520100  vfloat2fp16_h.rn vr4, vr2
000998  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
00099c  9f010ff6  addli r3, r30, -1280
0009a0  86100000  vfloat2fp16_l.rn vr1, vr0
0009a4  86d00200  vfloat2fp16_h.rn vr1, vr5
0009a8  12903802  vadd.f.mz.rn vr0{mr1}, r17, vr3
0009ac  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0009b0  9f018ff6  addli r3, r30, -1216
0009b4  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0009b8  9f010ff7  addli r3, r30, -1152
0009bc  0e948402  vmul.f.mz.rn vr8{mr1}, vr9, vr8
0009c0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0009c4  9f018ff7  addli r3, r30, -1088
0009c8  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
0009cc  86100400  vfloat2fp16_l.rn vr1, vr8
0009d0  86500000  vfloat2fp16_h.rn vr1, vr0
0009d4  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0009d8  9f110000  addli r3, zero, 1
0009dc  6b578f8e  load.d r[15:16], -1816(r30)
0009e0  00a00000  mfence { lm }
0009e4  17373702  sll.d r[15:16], r[15:16], r3
0009e8  ab0100f0  lui r3, 983040
0009ec  97113900  or r3, r18, r3
0009f0  0b27eb10  add.ul r[15:16], r[23:24], r[15:16]
0009f4  1f090ff6  addli r18, r30, -1280
0009f8  ff312701  s_lm2gm r3, r18, 0(r[15:16])
0009fc  6307eff1  loadli.w r14,  -1808(r30)
000a00  e3016fed  loadli.w r3,  -2384(r30)
000a04  00a00000  mfence { lm }
000a08  0b173710  add.s r14, r14, r3
000a0c  e3416fed  loadli.w r3,  -2380(r30)
000a10  3f7e37fa  blt.s r14, r3, -2148
000a14  9f0e0fed  addli sp, r30, -2432
000a18  9f8e0e13  addli sp, sp, 2432
000a1c  00a00300  mfence { lm, sm, gm }
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
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
