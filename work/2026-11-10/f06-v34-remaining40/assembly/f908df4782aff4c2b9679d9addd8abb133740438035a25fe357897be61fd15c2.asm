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
000104  1f3c0000  addli r24, zero, 3
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
00014c  9f8e8ef4  addli sp, sp, -1472
000150  67c9ee0b  storeli.w r30, 1428(sp)
000154  1f8f8e0b  addli r30, sp, 1472
000158  e7cb3e0b  storeli.w r19, 1468(sp)
00015c  e78b4e0b  storeli.w r20, 1464(sp)
000160  67cb5e0b  storeli.w r21, 1460(sp)
000164  678b6e0b  storeli.w r22, 1456(sp)
000168  e7ca7e0b  storeli.w r23, 1452(sp)
00016c  e78a8e0b  storeli.w r24, 1448(sp)
000170  67ca9e0b  storeli.w r25, 1444(sp)
000174  678aae0b  storeli.w r26, 1440(sp)
000178  e7c9be0b  storeli.w r27, 1436(sp)
00017c  e789ce0b  storeli.w r28, 1432(sp)
000180  6789fe0b  storeli.w r31, 1424(sp)
000184  e3400f00  loadli.w r1,  4(r30)
000188  73386fa6  store.d r[7:8], -1424(r30)
00018c  00330002  core_id r6
000190  73342fa6  store.d r[3:4], -1432(r30)
000194  bb000300  bneq r6, zero, 32
000198  63010f00  loadli.w r2,  0(r30)
00019c  ab0100f0  lui r3, 983040
0001a0  1b311100  slli r2, r2, 1
0001a4  17113100  or r2, r2, r3
0001a8  ab010000  lui r3, 0
0001ac  9f810100  addli r3, r3, 0
0001b0  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0001b4  00510102  load_param_i r2, 2
0001b8  e3410f00  loadli.w r3,  4(r30)
0001bc  2bf20000  lui r4, 15
0001c0  00200300  mfence { sm, gm }
0001c4  0b138150  fmac.s r6, r2, r8
0001c8  9b12f2ff  ori r5, r4, 4095
0001cc  0b123320  mul.s r4, r6, r3
0001d0  80a10204  csr_set csr3, r5
0001d4  00d00100  sync_group
0001d8  cb864402  ble.s r9, r4, 1440
0001dc  1f431000  addli r6, zero, 12
0001e0  0b912120  mul.s r2, r3, r2
0001e4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0001e8  9bb51100  slli r11, r3, 1
0001ec  ab41cc3f  lui r3, 261316
0001f0  2b0b803f  lui r22, 260096
0001f4  e3021f00  loadli.w r5,  8(r30)
0001f8  1f160000  addli r12, zero, 1
0001fc  9f068ff7  addli r13, r30, -1088
000200  2b070080  lui r14, 524288
000204  9f380000  addli r17, zero, 3
000208  ab09fc42  lui r19, 274368
00020c  2b0a404b  lui r20, 308224
000210  ab0a40cb  lui r21, 832512
000214  ab0dae42  lui r27, 273120
000218  67469ff4  storeli.w r9, -1436(r30)
00021c  0b116120  mul.s r2, r2, r6
000220  1b98a122  ori r16, r3, 554
000224  ab812139  lui r3, 234008
000228  6a140b22  vor.f.mz vr8{mr1}, r22, vr0
00022c  6706bff4  storeli.w r11, -1440(r30)
000230  e7452ff4  storeli.w r2, -1444(r30)
000234  2b21373d  lui r2, 250738
000238  9b9b9148  ori r23, r3, 1161
00023c  ab51633d  lui r3, 251445
000240  9b173171  ori r15, r2, 1811
000244  2ba1b8bf  lui r2, 785290
000248  9b917184  ori r3, r3, 2119
00024c  1b19b1a3  ori r18, r2, 2619
000250  2b01fcc2  lui r2, 798656
000254  ea200122  vor.u.mz vr1{mr1}, r2, vr0
000258  1f010ff7  addli r2, r30, -1152
00025c  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000260  1f712000  addli r2, zero, 23
000264  ea200122  vor.u.mz vr1{mr1}, r2, vr0
000268  1f018ff6  addli r2, r30, -1216
00026c  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000270  2bc1ae3a  lui r2, 240364
000274  1b11f13f  ori r2, r2, 1023
000278  ea100122  vor.f.mz vr1{mr1}, r2, vr0
00027c  1f010ff6  addli r2, r30, -1280
000280  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000284  2b911d3c  lui r2, 246233
000288  1b11b155  ori r2, r2, 1371
00028c  ea100122  vor.f.mz vr1{mr1}, r2, vr0
000290  1f018ff5  addli r2, r30, -1344
000294  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000298  ea900122  vor.f.mz vr1{mr1}, r3, vr0
00029c  1f010ff5  addli r2, r30, -1408
0002a0  ab71313f  lui r3, 258839
0002a4  9b918121  ori r3, r3, 536
0002a8  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0002ac  2bf1753e  lui r2, 255839
0002b0  ea930122  vor.f.mz vr7{mr1}, r3, vr0
0002b4  abf1ffff  lui r3, 1048575
0002b8  1b1101df  ori r2, r2, 3568
0002bc  1b95f1ff  ori r10, r3, 4095
0002c0  aba1b83f  lui r3, 261002
0002c4  6a130122  vor.f.mz vr6{mr1}, r2, vr0
0002c8  2b11f37e  lui r2, 519985
0002cc  1b93b1a3  ori r6, r3, 2619
0002d0  1b1c311c  ori r24, r2, 451
0002d4  2b71b142  lui r2, 273175
0002d8  1b1e8121  ori r28, r2, 536
0002dc  2b713142  lui r2, 271127
0002e0  9b138121  ori r7, r2, 536
0002e4  5b080000  j 64
0002e8  6b540fa7  load.d r[9:10], -1424(r30)
0002ec  eb5c8fa7  load.d r[26:27], -1416(r30)
0002f0  e305cff4  loadli.w r11,  -1440(r30)
0002f4  2b0100f0  lui r2, 983040
0002f8  9f068ff7  addli r13, r30, -1088
0002fc  00a00000  mfence { lm }
000300  0b249411  add.ul r[9:10], r[9:10], r[26:27]
000304  17912500  or r2, r11, r2
000308  7f31d400  s_lm2gm r2, r13, 0(r[9:10])
00030c  6341bff4  loadli.w r2,  -1444(r30)
000310  00a00200  mfence { lm, gm }
000314  e344cff4  loadli.w r9,  -1436(r30)
000318  0b122210  add.s r4, r4, r2
00031c  3f209200  blt.s r4, r9, 8
000320  5b8b0000  j 1112
000324  33110228  sext_int2long r[3:4], r4
000328  6b548fa6  load.d r[9:10], -1432(r30)
00032c  973cc102  sll.d r[26:27], r[3:4], r12
000330  2b0100f0  lui r2, 983040
000334  0b249411  add.ul r[9:10], r[9:10], r[26:27]
000338  17912500  or r2, r11, r2
00033c  733c9fa7  store.d r[26:27], -1416(r30)
000340  ab0c00c0  lui r25, 786432
000344  2b0d003f  lui r26, 258048
000348  7f21d400  l_gm2lm r2, r13, 0(r[9:10])
00034c  00a00200  mfence { lm, gm }
000350  3feec0fe  blt.s r1, r12, -104
000354  63010f00  loadli.w r2,  0(r30)
000358  ab060000  lui r13, 0
00035c  9f050000  addli r11, zero, 0
000360  1f048ff7  addli r8, r30, -1088
000364  9f860600  addli r13, r13, 0
000368  0b112238  mod.s r2, r4, r2
00036c  9b341100  slli r9, r2, 1
000370  5b060000  j 48
000374  9a10a702  vsub.f.mz.rn vr1{mr1}, r14, vr10
000378  72111042  vlt.f.mz mr2{mr1}, zero, vr1
00037c  6a250034  vor.u.mh vr10{mr2}, zero, vr0
000380  86900400  vfloat2fp16_l.rn vr1, vr9
000384  9f854500  addli r11, r11, 32
000388  9f868600  addli r13, r13, 64
00038c  86500500  vfloat2fp16_h.rn vr1, vr10
000390  46001402  vstore.mz vr1{mr1}, 0(r8)
000394  1f048400  addli r8, r8, 64
000398  3fa01500  blt.s r11, r1, 8
00039c  dbe9ffff  j -180
0003a0  0b919610  add.s r2, r13, r9
0003a4  42010402  vload.mz vr2{mr1}, 0(r8)
0003a8  ca000102  vloads.mz vr1{mr1}, 0(r2)
0003ac  86340100  vfp162float_l.rn vr9, vr2
0003b0  06710100  vfp162float_h.rn vr2, vr2
0003b4  06b50000  vfp162float_l.rn vr10, vr1
0003b8  86f00000  vfp162float_h.rn vr1, vr1
0003bc  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
0003c0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0003c4  06950400  vfloat2fp16_l.rn vr10, vr9
0003c8  06d50000  vfloat2fp16_h.rn vr10, vr1
0003cc  86340500  vfp162float_l.rn vr9, vr10
0003d0  37d00200  beq r5, zero, 20
0003d4  3bf0c200  bneq r5, r12, 28
0003d8  9a109702  vsub.f.mz.rn vr1{mr1}, r14, vr9
0003dc  72111042  vlt.f.mz mr2{mr1}, zero, vr1
0003e0  ea240034  vor.u.mh vr9{mr2}, zero, vr0
0003e4  06750500  vfp162float_h.rn vr10, vr10
0003e8  3bb70200  bneq r5, zero, 460
0003ec  dbf2ffff  j -108
0003f0  37b01201  beq r5, r17, 12
0003f4  92359002  vadd.s.mz vr11{mr1}, zero, vr9
0003f8  5b030000  j 24
0003fc  8a909702  vmul.f.mz.rn vr1{mr1}, r15, vr9
000400  12319002  vadd.s.mz vr2{mr1}, zero, vr9
000404  8e901402  vmul.f.mz.rn vr1{mr1}, vr9, vr1
000408  26111102  vmac.f.mz.rn vr2{mr1}, vr2, vr1
00040c  8a152802  vmul.f.mz.rn vr11{mr1}, r16, vr2
000410  e69005c0  vabs.f vr1, vr11
000414  1f010ff7  addli r2, r30, -1152
000418  8a101902  vmul.f.mz.rn vr1{mr1}, r18, vr1
00041c  1a111702  vsub.f.mz.rn vr2{mr1}, r14, vr1
000420  72912942  vlt.f.mz mr2{mr1}, r19, vr2
000424  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000428  1f010ff6  addli r2, r30, -1280
00042c  ea202034  vor.u.mh vr1{mr2}, zero, vr2
000430  12111a02  vadd.f.mz.rn vr2{mr1}, r20, vr1
000434  92912a02  vadd.f.mz.rn vr3{mr1}, r21, vr2
000438  9e903002  vsub.f.mz.rn vr1{mr1}, vr1, vr3
00043c  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000440  1f018ff5  addli r2, r30, -1344
000444  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
000448  1f010ff5  addli r2, r30, -1408
00044c  a2911b02  vmac.f.mz.rn vr3{mr1}, r23, vr1
000450  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
000454  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000458  1f018ff6  addli r2, r30, -1216
00045c  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
000460  a6111202  vmac.f.mz.rn vr3{mr1}, vr4, vr1
000464  12326002  vadd.s.mz vr4{mr1}, zero, vr6
000468  6eb122a2  vsll.s.mz vr2{mr1}, vr5, vr2
00046c  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
000470  92317002  vadd.s.mz vr3{mr1}, zero, vr7
000474  12312b02  vadd.s.mz vr2{mr1}, r22, vr2
000478  a6111202  vmac.f.mz.rn vr3{mr1}, vr4, vr1
00047c  12328002  vadd.s.mz vr4{mr1}, zero, vr8
000480  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
000484  0e112202  vmul.f.mz.rn vr2{mr1}, vr4, vr2
000488  12328002  vadd.s.mz vr4{mr1}, zero, vr8
00048c  6a210034  vor.u.mh vr2{mr2}, zero, vr0
000490  92112b02  vadd.f.mz.rn vr3{mr1}, r22, vr2
000494  9a303c02  vsub.s.mz vr1{mr1}, r24, vr3
000498  9a113702  vsub.f.mz.rn vr3{mr1}, r14, vr3
00049c  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
0004a0  a6904002  vmac.f.mz.rn vr1{mr1}, vr1, vr4
0004a4  12328002  vadd.s.mz vr4{mr1}, zero, vr8
0004a8  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
0004ac  a6904002  vmac.f.mz.rn vr1{mr1}, vr1, vr4
0004b0  12328002  vadd.s.mz vr4{mr1}, zero, vr8
0004b4  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
0004b8  a6904002  vmac.f.mz.rn vr1{mr1}, vr1, vr4
0004bc  0e912002  vmul.f.mz.rn vr2{mr1}, vr1, vr2
0004c0  bb901201  bneq r5, r17, 36
0004c4  92308002  vadd.s.mz vr1{mr1}, zero, vr8
0004c8  a2902c02  vmac.f.mz.rn vr1{mr1}, r25, vr2
0004cc  6a31b702  vand.s.mz vr2{mr1}, r14, vr11
0004d0  ee301122  vor.s.mz vr1{mr1}, vr2, vr1
0004d4  0a119d02  vmul.f.mz.rn vr2{mr1}, r26, vr9
0004d8  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
0004dc  8e151102  vmul.f.mz.rn vr11{mr1}, vr2, vr1
0004e0  db180000  j 196
0004e4  9a11b702  vsub.f.mz.rn vr3{mr1}, r14, vr11
0004e8  1a129702  vsub.f.mz.rn vr4{mr1}, r14, vr9
0004ec  f2113042  vlt.f.mz mr3{mr1}, zero, vr3
0004f0  72914d42  vlt.f.mz mr2{mr1}, r27, vr4
0004f4  ea202036  vor.u.mh vr1{mr3}, zero, vr2
0004f8  f2114e42  vlt.f.mz mr3{mr1}, r28, vr4
0004fc  fe0101a0  vmmov r3, mr2
000500  7e8101a0  vmmov r2, mr3
000504  1721a100  xor r2, r2, r10
000508  8e951402  vmul.f.mz.rn vr11{mr1}, vr9, vr1
00050c  17013100  and r2, r2, r3
000510  37520100  beq r2, zero, 148
000514  92909302  vadd.f.mz.rn vr1{mr1}, r7, vr9
000518  9f010ff7  addli r3, r30, -1152
00051c  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
000520  1a111702  vsub.f.mz.rn vr2{mr1}, r14, vr1
000524  72912942  vlt.f.mz mr2{mr1}, r19, vr2
000528  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
00052c  9f010ff6  addli r3, r30, -1280
000530  ea202034  vor.u.mh vr1{mr2}, zero, vr2
000534  12111a02  vadd.f.mz.rn vr2{mr1}, r20, vr1
000538  92912a02  vadd.f.mz.rn vr3{mr1}, r21, vr2
00053c  9e903002  vsub.f.mz.rn vr1{mr1}, vr1, vr3
000540  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000544  9f018ff5  addli r3, r30, -1344
000548  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
00054c  9f010ff5  addli r3, r30, -1408
000550  a2911b02  vmac.f.mz.rn vr3{mr1}, r23, vr1
000554  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
000558  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
00055c  9f018ff6  addli r3, r30, -1216
000560  a6111202  vmac.f.mz.rn vr3{mr1}, vr4, vr1
000564  12326002  vadd.s.mz vr4{mr1}, zero, vr6
000568  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
00056c  92317002  vadd.s.mz vr3{mr1}, zero, vr7
000570  a6111202  vmac.f.mz.rn vr3{mr1}, vr4, vr1
000574  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
000578  ab01801f  lui r3, 129024
00057c  6e3122a2  vsll.s.mz vr2{mr1}, vr4, vr2
000580  12328002  vadd.s.mz vr4{mr1}, zero, vr8
000584  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
000588  92302b02  vadd.s.mz vr1{mr1}, r22, vr2
00058c  0a919102  vmul.f.mz.rn vr2{mr1}, r3, vr9
000590  8e101202  vmul.f.mz.rn vr1{mr1}, vr4, vr1
000594  ea200034  vor.u.mh vr1{mr2}, zero, vr0
000598  7e0101e0  vmmov mr2, r2
00059c  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
0005a0  ea251034  vor.u.mh vr11{mr2}, zero, vr1
0005a4  ea309702  vand.s.mz vr1{mr1}, r14, vr9
0005a8  eeb4b022  vor.s.mz vr9{mr1}, vr1, vr11
0005ac  06750500  vfp162float_h.rn vr10, vr10
0005b0  37c702fe  beq r5, zero, -560
0005b4  3787c2fe  beq r5, r12, -576
0005b8  37b01201  beq r5, r17, 12
0005bc  9235a002  vadd.s.mz vr11{mr1}, zero, vr10
0005c0  5b030000  j 24
0005c4  8a90a702  vmul.f.mz.rn vr1{mr1}, r15, vr10
0005c8  1231a002  vadd.s.mz vr2{mr1}, zero, vr10
0005cc  8e101502  vmul.f.mz.rn vr1{mr1}, vr10, vr1
0005d0  26111102  vmac.f.mz.rn vr2{mr1}, vr2, vr1
0005d4  8a152802  vmul.f.mz.rn vr11{mr1}, r16, vr2
0005d8  e69005c0  vabs.f vr1, vr11
0005dc  1f010ff7  addli r2, r30, -1152
0005e0  8a101902  vmul.f.mz.rn vr1{mr1}, r18, vr1
0005e4  1a111702  vsub.f.mz.rn vr2{mr1}, r14, vr1
0005e8  72912942  vlt.f.mz mr2{mr1}, r19, vr2
0005ec  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0005f0  1f010ff6  addli r2, r30, -1280
0005f4  ea202034  vor.u.mh vr1{mr2}, zero, vr2
0005f8  12111a02  vadd.f.mz.rn vr2{mr1}, r20, vr1
0005fc  92912a02  vadd.f.mz.rn vr3{mr1}, r21, vr2
000600  9e903002  vsub.f.mz.rn vr1{mr1}, vr1, vr3
000604  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000608  1f018ff5  addli r2, r30, -1344
00060c  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
000610  1f010ff5  addli r2, r30, -1408
000614  a2911b02  vmac.f.mz.rn vr3{mr1}, r23, vr1
000618  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
00061c  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000620  1f018ff6  addli r2, r30, -1216
000624  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
000628  a6111202  vmac.f.mz.rn vr3{mr1}, vr4, vr1
00062c  12326002  vadd.s.mz vr4{mr1}, zero, vr6
000630  6eb122a2  vsll.s.mz vr2{mr1}, vr5, vr2
000634  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
000638  92317002  vadd.s.mz vr3{mr1}, zero, vr7
00063c  12312b02  vadd.s.mz vr2{mr1}, r22, vr2
000640  a6111202  vmac.f.mz.rn vr3{mr1}, vr4, vr1
000644  12328002  vadd.s.mz vr4{mr1}, zero, vr8
000648  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
00064c  0e112202  vmul.f.mz.rn vr2{mr1}, vr4, vr2
000650  12328002  vadd.s.mz vr4{mr1}, zero, vr8
000654  6a210034  vor.u.mh vr2{mr2}, zero, vr0
000658  92112b02  vadd.f.mz.rn vr3{mr1}, r22, vr2
00065c  9a303c02  vsub.s.mz vr1{mr1}, r24, vr3
000660  9a113702  vsub.f.mz.rn vr3{mr1}, r14, vr3
000664  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
000668  a6904002  vmac.f.mz.rn vr1{mr1}, vr1, vr4
00066c  12328002  vadd.s.mz vr4{mr1}, zero, vr8
000670  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
000674  a6904002  vmac.f.mz.rn vr1{mr1}, vr1, vr4
000678  12328002  vadd.s.mz vr4{mr1}, zero, vr8
00067c  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
000680  a6904002  vmac.f.mz.rn vr1{mr1}, vr1, vr4
000684  0e912002  vmul.f.mz.rn vr2{mr1}, vr1, vr2
000688  bb901201  bneq r5, r17, 36
00068c  92308002  vadd.s.mz vr1{mr1}, zero, vr8
000690  a2902c02  vmac.f.mz.rn vr1{mr1}, r25, vr2
000694  6a31b702  vand.s.mz vr2{mr1}, r14, vr11
000698  ee301122  vor.s.mz vr1{mr1}, vr2, vr1
00069c  0a11ad02  vmul.f.mz.rn vr2{mr1}, r26, vr10
0006a0  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
0006a4  8e151102  vmul.f.mz.rn vr11{mr1}, vr2, vr1
0006a8  db180000  j 196
0006ac  9a11b702  vsub.f.mz.rn vr3{mr1}, r14, vr11
0006b0  1a12a702  vsub.f.mz.rn vr4{mr1}, r14, vr10
0006b4  f2113042  vlt.f.mz mr3{mr1}, zero, vr3
0006b8  72914d42  vlt.f.mz mr2{mr1}, r27, vr4
0006bc  ea202036  vor.u.mh vr1{mr3}, zero, vr2
0006c0  f2114e42  vlt.f.mz mr3{mr1}, r28, vr4
0006c4  fe0101a0  vmmov r3, mr2
0006c8  7e8101a0  vmmov r2, mr3
0006cc  1721a100  xor r2, r2, r10
0006d0  8e151502  vmul.f.mz.rn vr11{mr1}, vr10, vr1
0006d4  17013100  and r2, r2, r3
0006d8  37520100  beq r2, zero, 148
0006dc  9290a302  vadd.f.mz.rn vr1{mr1}, r7, vr10
0006e0  9f010ff7  addli r3, r30, -1152
0006e4  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
0006e8  1a111702  vsub.f.mz.rn vr2{mr1}, r14, vr1
0006ec  72912942  vlt.f.mz mr2{mr1}, r19, vr2
0006f0  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0006f4  9f010ff6  addli r3, r30, -1280
0006f8  ea202034  vor.u.mh vr1{mr2}, zero, vr2
0006fc  12111a02  vadd.f.mz.rn vr2{mr1}, r20, vr1
000700  92912a02  vadd.f.mz.rn vr3{mr1}, r21, vr2
000704  9e903002  vsub.f.mz.rn vr1{mr1}, vr1, vr3
000708  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
00070c  9f018ff5  addli r3, r30, -1344
000710  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
000714  9f010ff5  addli r3, r30, -1408
000718  a2911b02  vmac.f.mz.rn vr3{mr1}, r23, vr1
00071c  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
000720  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000724  9f018ff6  addli r3, r30, -1216
000728  a6111202  vmac.f.mz.rn vr3{mr1}, vr4, vr1
00072c  12326002  vadd.s.mz vr4{mr1}, zero, vr6
000730  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
000734  92317002  vadd.s.mz vr3{mr1}, zero, vr7
000738  a6111202  vmac.f.mz.rn vr3{mr1}, vr4, vr1
00073c  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
000740  ab01801f  lui r3, 129024
000744  6e3122a2  vsll.s.mz vr2{mr1}, vr4, vr2
000748  12328002  vadd.s.mz vr4{mr1}, zero, vr8
00074c  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
000750  92302b02  vadd.s.mz vr1{mr1}, r22, vr2
000754  0a91a102  vmul.f.mz.rn vr2{mr1}, r3, vr10
000758  8e101202  vmul.f.mz.rn vr1{mr1}, vr4, vr1
00075c  ea200034  vor.u.mh vr1{mr2}, zero, vr0
000760  7e0101e0  vmmov mr2, r2
000764  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
000768  ea251034  vor.u.mh vr11{mr2}, zero, vr1
00076c  ea30a702  vand.s.mz vr1{mr1}, r14, vr10
000770  6eb5b022  vor.s.mz vr10{mr1}, vr1, vr11
000774  db81ffff  j -1012
000778  9f0e8ff4  addli sp, r30, -1472
00077c  e38f2e0b  loadli.w r31,  1424(sp)
000780  63cf2e0b  loadli.w r30,  1428(sp)
000784  638e3e0b  loadli.w r28,  1432(sp)
000788  e3cd3e0b  loadli.w r27,  1436(sp)
00078c  638d4e0b  loadli.w r26,  1440(sp)
000790  e3cc4e0b  loadli.w r25,  1444(sp)
000794  638c5e0b  loadli.w r24,  1448(sp)
000798  e3cb5e0b  loadli.w r23,  1452(sp)
00079c  638b6e0b  loadli.w r22,  1456(sp)
0007a0  e3ca6e0b  loadli.w r21,  1460(sp)
0007a4  638a7e0b  loadli.w r20,  1464(sp)
0007a8  e3c97e0b  loadli.w r19,  1468(sp)
0007ac  9f8e8e0b  addli sp, sp, 1472
0007b0  5f800f00  jr r31, 0
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
