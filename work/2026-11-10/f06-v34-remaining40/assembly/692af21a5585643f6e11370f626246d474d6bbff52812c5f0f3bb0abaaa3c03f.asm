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
0000fc  4b115b01  ble.s r22, r21, 68
000100  80db0002  load_param_i r23, 1
000104  1f2c0000  addli r24, zero, 2
000108  9f0c0004  addli r25, zero, 512
00010c  1f0d0010  addli r26, zero, 2048
000110  8b904a31  div.s r1, r21, r20
000114  6b510f00  load.d r[3:4], 0(r30)
000118  6b528f00  load.d r[5:6], 8(r30)
00011c  6b530f01  load.d r[7:8], 16(r30)
000120  ab044000  lui r9, 1024
000124  e7808e01  storeli.w r24, 8(sp)
000128  67c09e01  storeli.w r25, 4(sp)
00012c  6780ae01  storeli.w r26, 0(sp)
000130  0b943031  div.s r8, r1, r19
000134  d7290000  jal 332
000138  8b9a7a11  add.s r21, r21, r23
00013c  3fdf6aff  blt.s r21, r22, -44
000140  9f8e8e00  addli sp, sp, 64
000144  00a00300  mfence { lm, sm, gm }
000148  00100000  exit
00014c  9f8e0eec  addli sp, sp, -2560
000150  67cdee13  storeli.w r30, 2516(sp)
000154  1f8f0e14  addli r30, sp, 2560
000158  e7cf3e13  storeli.w r19, 2556(sp)
00015c  e78f4e13  storeli.w r20, 2552(sp)
000160  67cf5e13  storeli.w r21, 2548(sp)
000164  678f6e13  storeli.w r22, 2544(sp)
000168  e7ce7e13  storeli.w r23, 2540(sp)
00016c  e78e8e13  storeli.w r24, 2536(sp)
000170  67ce9e13  storeli.w r25, 2532(sp)
000174  678eae13  storeli.w r26, 2528(sp)
000178  e7cdbe13  storeli.w r27, 2524(sp)
00017c  e78dce13  storeli.w r28, 2520(sp)
000180  678dfe13  storeli.w r31, 2512(sp)
000184  9f006fec  addli r1, r30, -2512
000188  73b06000  store.d r[7:8], 0(r1)
00018c  e3400f00  loadli.w r1,  4(r30)
000190  00330002  core_id r6
000194  9f035fec  addli r7, r30, -2520
000198  73b02300  store.d r[3:4], 0(r7)
00019c  bb000300  bneq r6, zero, 32
0001a0  63010f00  loadli.w r2,  0(r30)
0001a4  ab0100f0  lui r3, 983040
0001a8  1b312100  slli r2, r2, 2
0001ac  17113100  or r2, r2, r3
0001b0  ab010000  lui r3, 0
0001b4  9f810100  addli r3, r3, 0
0001b8  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0001bc  00510102  load_param_i r2, 2
0001c0  e3410f00  loadli.w r3,  4(r30)
0001c4  2bf20000  lui r4, 15
0001c8  00200300  mfence { sm, gm }
0001cc  0b138150  fmac.s r6, r2, r8
0001d0  9b12f2ff  ori r5, r4, 4095
0001d4  0b123320  mul.s r4, r6, r3
0001d8  80a10204  csr_set csr3, r5
0001dc  00d00100  sync_group
0001e0  4bc74402  ble.s r9, r4, 1488
0001e4  1f431000  addli r6, zero, 12
0001e8  0b912120  mul.s r2, r3, r2
0001ec  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0001f0  9bb52100  slli r11, r3, 2
0001f4  ab41cc3f  lui r3, 261316
0001f8  ab0b803f  lui r23, 260096
0001fc  e3021f00  loadli.w r5,  8(r30)
000200  9f068fef  addli r13, r30, -2112
000204  1f170000  addli r14, zero, 1
000208  ab070080  lui r15, 524288
00020c  1f390000  addli r18, zero, 3
000210  2b0afc42  lui r20, 274368
000214  ab0a404b  lui r21, 308224
000218  2b0b40cb  lui r22, 832512
00021c  2b0eae42  lui r28, 273120
000220  67429fec  storeli.w r9, -2524(r30)
000224  0b116120  mul.s r2, r2, r6
000228  9b98a122  ori r17, r3, 554
00022c  ab812139  lui r3, 234008
000230  6a940b22  vor.f.mz vr8{mr1}, r23, vr0
000234  6702bfec  storeli.w r11, -2528(r30)
000238  e7412fec  storeli.w r2, -2532(r30)
00023c  2b21373d  lui r2, 250738
000240  1b9c9148  ori r24, r3, 1161
000244  ab51633d  lui r3, 251445
000248  1b183171  ori r16, r2, 1811
00024c  2ba1b8bf  lui r2, 785290
000250  9b917184  ori r3, r3, 2119
000254  9b19b1a3  ori r19, r2, 2619
000258  2b01fcc2  lui r2, 798656
00025c  ea200122  vor.u.mz vr1{mr1}, r2, vr0
000260  1f010fef  addli r2, r30, -2176
000264  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000268  1f712000  addli r2, zero, 23
00026c  ea200122  vor.u.mz vr1{mr1}, r2, vr0
000270  1f018fee  addli r2, r30, -2240
000274  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000278  2bc1ae3a  lui r2, 240364
00027c  1b11f13f  ori r2, r2, 1023
000280  6a130122  vor.f.mz vr6{mr1}, r2, vr0
000284  2b911d3c  lui r2, 246233
000288  1b11b155  ori r2, r2, 1371
00028c  ea100122  vor.f.mz vr1{mr1}, r2, vr0
000290  1f010fee  addli r2, r30, -2304
000294  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000298  ea900122  vor.f.mz vr1{mr1}, r3, vr0
00029c  1f018fed  addli r2, r30, -2368
0002a0  ab71313f  lui r3, 258839
0002a4  9b918121  ori r3, r3, 536
0002a8  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0002ac  2bf1753e  lui r2, 255839
0002b0  1b1101df  ori r2, r2, 3568
0002b4  ea100122  vor.f.mz vr1{mr1}, r2, vr0
0002b8  1f010fed  addli r2, r30, -2432
0002bc  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0002c0  ea900122  vor.f.mz vr1{mr1}, r3, vr0
0002c4  1f018fec  addli r2, r30, -2496
0002c8  abf1ffff  lui r3, 1048575
0002cc  1b96f1ff  ori r12, r3, 4095
0002d0  aba1b83f  lui r3, 261002
0002d4  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0002d8  2b11f37e  lui r2, 519985
0002dc  1b93b1a3  ori r6, r3, 2619
0002e0  9b1c311c  ori r25, r2, 451
0002e4  2b71b142  lui r2, 273175
0002e8  1b158121  ori r10, r2, 536
0002ec  2b713142  lui r2, 271127
0002f0  9b138121  ori r7, r2, 536
0002f4  5b090000  j 72
0002f8  9f016fec  addli r3, r30, -2512
0002fc  e3054fec  loadli.w r11,  -2528(r30)
000300  2b0100f0  lui r2, 983040
000304  9f068fef  addli r13, r30, -2112
000308  6bd40100  load.d r[9:10], 0(r3)
00030c  9f017fec  addli r3, r30, -2504
000310  17912500  or r2, r11, r2
000314  6bdd0100  load.d r[27:28], 0(r3)
000318  00a00000  mfence { lm }
00031c  0b24a411  add.ul r[9:10], r[9:10], r[27:28]
000320  7f31d400  s_lm2gm r2, r13, 0(r[9:10])
000324  63413fec  loadli.w r2,  -2532(r30)
000328  00a00200  mfence { lm, gm }
00032c  e3444fec  loadli.w r9,  -2524(r30)
000330  0b122210  add.s r4, r4, r2
000334  3f209200  blt.s r4, r9, 8
000338  5b8f0000  j 1144
00033c  33110228  sext_int2long r[3:4], r4
000340  1f240000  addli r8, zero, 2
000344  173d8102  sll.d r[27:28], r[3:4], r8
000348  9f015fec  addli r3, r30, -2520
00034c  2b0100f0  lui r2, 983040
000350  6bd40100  load.d r[9:10], 0(r3)
000354  17912500  or r2, r11, r2
000358  9f017fec  addli r3, r30, -2504
00035c  73b0a101  store.d r[27:28], 0(r3)
000360  0b24a411  add.ul r[9:10], r[9:10], r[27:28]
000364  ab0d003f  lui r27, 258048
000368  7f21d400  l_gm2lm r2, r13, 0(r[9:10])
00036c  00a00200  mfence { lm, gm }
000370  3faee0fe  blt.s r1, r14, -120
000374  63010f00  loadli.w r2,  0(r30)
000378  ab060000  lui r13, 0
00037c  9f050000  addli r11, zero, 0
000380  1f048fef  addli r8, r30, -2112
000384  9f860600  addli r13, r13, 0
000388  0b112238  mod.s r2, r4, r2
00038c  9b342100  slli r9, r2, 2
000390  db050000  j 44
000394  9a90a702  vsub.f.mz.rn vr1{mr1}, r15, vr10
000398  72111042  vlt.f.mz mr2{mr1}, zero, vr1
00039c  6a250034  vor.u.mh vr10{mr2}, zero, vr0
0003a0  46109402  vstore_mask16.mz vr9{mr1}, 0(r8)
0003a4  9f854500  addli r11, r11, 32
0003a8  9f860601  addli r13, r13, 128
0003ac  1f040401  addli r8, r8, 128
0003b0  4610a102  vstore_mask16.mz vr10{mr1}, 0(r2)
0003b4  3fa01500  blt.s r11, r1, 8
0003b8  5be8ffff  j -192
0003bc  0b919610  add.s r2, r13, r9
0003c0  42110402  vload_mask16.mz vr2{mr1}, 0(r8)
0003c4  ca100102  vloads_mask16.mz vr1{mr1}, 0(r2)
0003c8  1f018100  addli r2, r2, 64
0003cc  4a150102  vloads_mask16.mz vr10{mr1}, 0(r2)
0003d0  1f018400  addli r2, r8, 64
0003d4  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0003d8  96141102  vadd.f.mz.rn vr9{mr1}, vr2, vr1
0003dc  37d00200  beq r5, zero, 20
0003e0  3bf0e200  bneq r5, r14, 28
0003e4  9a909702  vsub.f.mz.rn vr1{mr1}, r15, vr9
0003e8  72111042  vlt.f.mz mr2{mr1}, zero, vr1
0003ec  ea240034  vor.u.mh vr9{mr2}, zero, vr0
0003f0  1695a502  vadd.f.mz.rn vr10{mr1}, vr11, vr10
0003f4  bbb70200  bneq r5, zero, 492
0003f8  5bf5ffff  j -88
0003fc  37b02201  beq r5, r18, 12
000400  92309002  vadd.s.mz vr1{mr1}, zero, vr9
000404  5b030000  j 24
000408  8a109802  vmul.f.mz.rn vr1{mr1}, r16, vr9
00040c  12319002  vadd.s.mz vr2{mr1}, zero, vr9
000410  8e901402  vmul.f.mz.rn vr1{mr1}, vr9, vr1
000414  26111102  vmac.f.mz.rn vr2{mr1}, vr2, vr1
000418  8a902802  vmul.f.mz.rn vr1{mr1}, r17, vr2
00041c  669100c0  vabs.f vr2, vr1
000420  9f010fef  addli r3, r30, -2176
000424  92336002  vadd.s.mz vr7{mr1}, zero, vr6
000428  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
00042c  9a912702  vsub.f.mz.rn vr3{mr1}, r15, vr2
000430  72113a42  vlt.f.mz mr2{mr1}, r20, vr3
000434  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000438  9f010fee  addli r3, r30, -2304
00043c  6a213034  vor.u.mh vr2{mr2}, zero, vr3
000440  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
000444  9f018fed  addli r3, r30, -2368
000448  92912a02  vadd.f.mz.rn vr3{mr1}, r21, vr2
00044c  12123b02  vadd.f.mz.rn vr4{mr1}, r22, vr3
000450  1e114102  vsub.f.mz.rn vr2{mr1}, vr2, vr4
000454  12326002  vadd.s.mz vr4{mr1}, zero, vr6
000458  22122c02  vmac.f.mz.rn vr4{mr1}, r24, vr2
00045c  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
000460  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
000464  9f010fed  addli r3, r30, -2432
000468  26922202  vmac.f.mz.rn vr4{mr1}, vr5, vr2
00046c  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
000470  9f018fec  addli r3, r30, -2496
000474  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
000478  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
00047c  9f018fee  addli r3, r30, -2240
000480  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
000484  26922202  vmac.f.mz.rn vr4{mr1}, vr5, vr2
000488  92328002  vadd.s.mz vr5{mr1}, zero, vr8
00048c  ee3133a2  vsll.s.mz vr3{mr1}, vr6, vr3
000490  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
000494  92b13b02  vadd.s.mz vr3{mr1}, r23, vr3
000498  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
00049c  92328002  vadd.s.mz vr5{mr1}, zero, vr8
0004a0  ea210034  vor.u.mh vr3{mr2}, zero, vr0
0004a4  12923b02  vadd.f.mz.rn vr4{mr1}, r23, vr3
0004a8  1ab14c02  vsub.s.mz vr2{mr1}, r25, vr4
0004ac  1a924702  vsub.f.mz.rn vr4{mr1}, r15, vr4
0004b0  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
0004b4  26115102  vmac.f.mz.rn vr2{mr1}, vr2, vr5
0004b8  92328002  vadd.s.mz vr5{mr1}, zero, vr8
0004bc  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
0004c0  26115102  vmac.f.mz.rn vr2{mr1}, vr2, vr5
0004c4  92328002  vadd.s.mz vr5{mr1}, zero, vr8
0004c8  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
0004cc  26115102  vmac.f.mz.rn vr2{mr1}, vr2, vr5
0004d0  8e113102  vmul.f.mz.rn vr3{mr1}, vr2, vr3
0004d4  bbb02201  bneq r5, r18, 44
0004d8  12318002  vadd.s.mz vr2{mr1}, zero, vr8
0004dc  ab0100c0  lui r3, 786432
0004e0  eab01702  vand.s.mz vr1{mr1}, r15, vr1
0004e4  12337002  vadd.s.mz vr6{mr1}, zero, vr7
0004e8  22913102  vmac.f.mz.rn vr2{mr1}, r3, vr3
0004ec  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0004f0  0a919d02  vmul.f.mz.rn vr2{mr1}, r27, vr9
0004f4  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
0004f8  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
0004fc  db1a0000  j 212
000500  9a901702  vsub.f.mz.rn vr1{mr1}, r15, vr1
000504  1a929702  vsub.f.mz.rn vr4{mr1}, r15, vr9
000508  f2111042  vlt.f.mz mr3{mr1}, zero, vr1
00050c  72114e42  vlt.f.mz mr2{mr1}, r28, vr4
000510  6a213036  vor.u.mh vr2{mr3}, zero, vr3
000514  f2114542  vlt.f.mz mr3{mr1}, r10, vr4
000518  7e0d01a0  vmmov r26, mr2
00051c  fe8101a0  vmmov r3, mr3
000520  97a1c100  xor r3, r3, r12
000524  8e902402  vmul.f.mz.rn vr1{mr1}, vr9, vr2
000528  9781a101  and r3, r3, r26
00052c  b7820100  beq r3, zero, 160
000530  12919302  vadd.f.mz.rn vr2{mr1}, r7, vr9
000534  1f0d0fef  addli r26, r30, -2176
000538  12337002  vadd.s.mz vr6{mr1}, zero, vr7
00053c  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
000540  9a912702  vsub.f.mz.rn vr3{mr1}, r15, vr2
000544  72113a42  vlt.f.mz mr2{mr1}, r20, vr3
000548  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
00054c  1f0d0fee  addli r26, r30, -2304
000550  6a213034  vor.u.mh vr2{mr2}, zero, vr3
000554  c2120d02  vload_mask16.mz vr5{mr1}, 0(r26)
000558  1f0d8fed  addli r26, r30, -2368
00055c  92912a02  vadd.f.mz.rn vr3{mr1}, r21, vr2
000560  12123b02  vadd.f.mz.rn vr4{mr1}, r22, vr3
000564  1e114102  vsub.f.mz.rn vr2{mr1}, vr2, vr4
000568  12326002  vadd.s.mz vr4{mr1}, zero, vr6
00056c  22122c02  vmac.f.mz.rn vr4{mr1}, r24, vr2
000570  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
000574  42120d02  vload_mask16.mz vr4{mr1}, 0(r26)
000578  1f0d0fed  addli r26, r30, -2432
00057c  26922202  vmac.f.mz.rn vr4{mr1}, vr5, vr2
000580  c2120d02  vload_mask16.mz vr5{mr1}, 0(r26)
000584  1f0d8fec  addli r26, r30, -2496
000588  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
00058c  42120d02  vload_mask16.mz vr4{mr1}, 0(r26)
000590  1f0d8fee  addli r26, r30, -2240
000594  26922202  vmac.f.mz.rn vr4{mr1}, vr5, vr2
000598  c2120d02  vload_mask16.mz vr5{mr1}, 0(r26)
00059c  2b0d801f  lui r26, 129024
0005a0  eeb132a2  vsll.s.mz vr3{mr1}, vr5, vr3
0005a4  92328002  vadd.s.mz vr5{mr1}, zero, vr8
0005a8  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
0005ac  12b13b02  vadd.s.mz vr2{mr1}, r23, vr3
0005b0  8a119d02  vmul.f.mz.rn vr3{mr1}, r26, vr9
0005b4  0e912202  vmul.f.mz.rn vr2{mr1}, vr5, vr2
0005b8  6a210034  vor.u.mh vr2{mr2}, zero, vr0
0005bc  7e8101e0  vmmov mr2, r3
0005c0  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
0005c4  ea202034  vor.u.mh vr1{mr2}, zero, vr2
0005c8  5b010000  j 8
0005cc  12337002  vadd.s.mz vr6{mr1}, zero, vr7
0005d0  6ab19702  vand.s.mz vr2{mr1}, r15, vr9
0005d4  ee341122  vor.s.mz vr9{mr1}, vr2, vr1
0005d8  1695a502  vadd.f.mz.rn vr10{mr1}, vr11, vr10
0005dc  379702fe  beq r5, zero, -572
0005e0  b7d6e2fe  beq r5, r14, -588
0005e4  37b02201  beq r5, r18, 12
0005e8  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
0005ec  5b030000  j 24
0005f0  8a10a802  vmul.f.mz.rn vr1{mr1}, r16, vr10
0005f4  1231a002  vadd.s.mz vr2{mr1}, zero, vr10
0005f8  8e101502  vmul.f.mz.rn vr1{mr1}, vr10, vr1
0005fc  26111102  vmac.f.mz.rn vr2{mr1}, vr2, vr1
000600  8a902802  vmul.f.mz.rn vr1{mr1}, r17, vr2
000604  669100c0  vabs.f vr2, vr1
000608  9f010fef  addli r3, r30, -2176
00060c  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
000610  9a912702  vsub.f.mz.rn vr3{mr1}, r15, vr2
000614  72113a42  vlt.f.mz mr2{mr1}, r20, vr3
000618  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
00061c  9f010fee  addli r3, r30, -2304
000620  6a213034  vor.u.mh vr2{mr2}, zero, vr3
000624  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
000628  9f018fed  addli r3, r30, -2368
00062c  92912a02  vadd.f.mz.rn vr3{mr1}, r21, vr2
000630  12123b02  vadd.f.mz.rn vr4{mr1}, r22, vr3
000634  1e114102  vsub.f.mz.rn vr2{mr1}, vr2, vr4
000638  12326002  vadd.s.mz vr4{mr1}, zero, vr6
00063c  22122c02  vmac.f.mz.rn vr4{mr1}, r24, vr2
000640  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
000644  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
000648  9f010fed  addli r3, r30, -2432
00064c  26922202  vmac.f.mz.rn vr4{mr1}, vr5, vr2
000650  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
000654  9f018fec  addli r3, r30, -2496
000658  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
00065c  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
000660  9f018fee  addli r3, r30, -2240
000664  c2950102  vload_mask16.mz vr11{mr1}, 0(r3)
000668  26922202  vmac.f.mz.rn vr4{mr1}, vr5, vr2
00066c  92328002  vadd.s.mz vr5{mr1}, zero, vr8
000670  eeb135a2  vsll.s.mz vr3{mr1}, vr11, vr3
000674  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
000678  92b13b02  vadd.s.mz vr3{mr1}, r23, vr3
00067c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000680  92328002  vadd.s.mz vr5{mr1}, zero, vr8
000684  ea210034  vor.u.mh vr3{mr2}, zero, vr0
000688  12923b02  vadd.f.mz.rn vr4{mr1}, r23, vr3
00068c  1ab14c02  vsub.s.mz vr2{mr1}, r25, vr4
000690  1a924702  vsub.f.mz.rn vr4{mr1}, r15, vr4
000694  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
000698  26115102  vmac.f.mz.rn vr2{mr1}, vr2, vr5
00069c  92328002  vadd.s.mz vr5{mr1}, zero, vr8
0006a0  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
0006a4  26115102  vmac.f.mz.rn vr2{mr1}, vr2, vr5
0006a8  92328002  vadd.s.mz vr5{mr1}, zero, vr8
0006ac  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
0006b0  26115102  vmac.f.mz.rn vr2{mr1}, vr2, vr5
0006b4  8e113102  vmul.f.mz.rn vr3{mr1}, vr2, vr3
0006b8  bba02201  bneq r5, r18, 40
0006bc  12318002  vadd.s.mz vr2{mr1}, zero, vr8
0006c0  ab0100c0  lui r3, 786432
0006c4  eab01702  vand.s.mz vr1{mr1}, r15, vr1
0006c8  22913102  vmac.f.mz.rn vr2{mr1}, r3, vr3
0006cc  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0006d0  0a91ad02  vmul.f.mz.rn vr2{mr1}, r27, vr10
0006d4  92901b02  vadd.f.mz.rn vr1{mr1}, r23, vr1
0006d8  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
0006dc  5b190000  j 200
0006e0  9a901702  vsub.f.mz.rn vr1{mr1}, r15, vr1
0006e4  1a92a702  vsub.f.mz.rn vr4{mr1}, r15, vr10
0006e8  f2111042  vlt.f.mz mr3{mr1}, zero, vr1
0006ec  72114e42  vlt.f.mz mr2{mr1}, r28, vr4
0006f0  6a213036  vor.u.mh vr2{mr3}, zero, vr3
0006f4  f2114542  vlt.f.mz mr3{mr1}, r10, vr4
0006f8  7e0d01a0  vmmov r26, mr2
0006fc  fe8101a0  vmmov r3, mr3
000700  97a1c100  xor r3, r3, r12
000704  8e102502  vmul.f.mz.rn vr1{mr1}, vr10, vr2
000708  9781a101  and r3, r3, r26
00070c  37e20100  beq r3, zero, 152
000710  1291a302  vadd.f.mz.rn vr2{mr1}, r7, vr10
000714  1f0d0fef  addli r26, r30, -2176
000718  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
00071c  9a912702  vsub.f.mz.rn vr3{mr1}, r15, vr2
000720  72113a42  vlt.f.mz mr2{mr1}, r20, vr3
000724  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
000728  1f0d0fee  addli r26, r30, -2304
00072c  6a213034  vor.u.mh vr2{mr2}, zero, vr3
000730  c2120d02  vload_mask16.mz vr5{mr1}, 0(r26)
000734  1f0d8fed  addli r26, r30, -2368
000738  92912a02  vadd.f.mz.rn vr3{mr1}, r21, vr2
00073c  12123b02  vadd.f.mz.rn vr4{mr1}, r22, vr3
000740  1e114102  vsub.f.mz.rn vr2{mr1}, vr2, vr4
000744  12326002  vadd.s.mz vr4{mr1}, zero, vr6
000748  22122c02  vmac.f.mz.rn vr4{mr1}, r24, vr2
00074c  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
000750  42120d02  vload_mask16.mz vr4{mr1}, 0(r26)
000754  1f0d0fed  addli r26, r30, -2432
000758  26922202  vmac.f.mz.rn vr4{mr1}, vr5, vr2
00075c  c2120d02  vload_mask16.mz vr5{mr1}, 0(r26)
000760  1f0d8fec  addli r26, r30, -2496
000764  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
000768  42120d02  vload_mask16.mz vr4{mr1}, 0(r26)
00076c  1f0d8fee  addli r26, r30, -2240
000770  26922202  vmac.f.mz.rn vr4{mr1}, vr5, vr2
000774  c2120d02  vload_mask16.mz vr5{mr1}, 0(r26)
000778  2b0d801f  lui r26, 129024
00077c  eeb132a2  vsll.s.mz vr3{mr1}, vr5, vr3
000780  92328002  vadd.s.mz vr5{mr1}, zero, vr8
000784  a6122202  vmac.f.mz.rn vr5{mr1}, vr4, vr2
000788  12b13b02  vadd.s.mz vr2{mr1}, r23, vr3
00078c  8a11ad02  vmul.f.mz.rn vr3{mr1}, r26, vr10
000790  0e912202  vmul.f.mz.rn vr2{mr1}, vr5, vr2
000794  6a210034  vor.u.mh vr2{mr2}, zero, vr0
000798  7e8101e0  vmmov mr2, r3
00079c  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
0007a0  ea202034  vor.u.mh vr1{mr2}, zero, vr2
0007a4  6ab1a702  vand.s.mz vr2{mr1}, r15, vr10
0007a8  6e351122  vor.s.mz vr10{mr1}, vr2, vr1
0007ac  db7effff  j -1036
0007b0  9f0e0fec  addli sp, r30, -2560
0007b4  e38fae13  loadli.w r31,  2512(sp)
0007b8  63cfae13  loadli.w r30,  2516(sp)
0007bc  638ebe13  loadli.w r28,  2520(sp)
0007c0  e3cdbe13  loadli.w r27,  2524(sp)
0007c4  638dce13  loadli.w r26,  2528(sp)
0007c8  e3ccce13  loadli.w r25,  2532(sp)
0007cc  638cde13  loadli.w r24,  2536(sp)
0007d0  e3cbde13  loadli.w r23,  2540(sp)
0007d4  638bee13  loadli.w r22,  2544(sp)
0007d8  e3caee13  loadli.w r21,  2548(sp)
0007dc  638afe13  loadli.w r20,  2552(sp)
0007e0  e3c9fe13  loadli.w r19,  2556(sp)
0007e4  9f8e0e14  addli sp, sp, 2560
0007e8  5f800f00  jr r31, 0
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
