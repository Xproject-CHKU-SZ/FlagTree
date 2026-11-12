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
000104  1f1c0000  addli r24, zero, 1
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
00014c  9f8e0ef4  addli sp, sp, -1536
000150  67cdee0b  storeli.w r30, 1492(sp)
000154  1f8f0e0c  addli r30, sp, 1536
000158  e7cf3e0b  storeli.w r19, 1532(sp)
00015c  e78f4e0b  storeli.w r20, 1528(sp)
000160  67cf5e0b  storeli.w r21, 1524(sp)
000164  678f6e0b  storeli.w r22, 1520(sp)
000168  e7ce7e0b  storeli.w r23, 1516(sp)
00016c  e78e8e0b  storeli.w r24, 1512(sp)
000170  67ce9e0b  storeli.w r25, 1508(sp)
000174  678eae0b  storeli.w r26, 1504(sp)
000178  e7cdbe0b  storeli.w r27, 1500(sp)
00017c  e78dce0b  storeli.w r28, 1496(sp)
000180  678dfe0b  storeli.w r31, 1488(sp)
000184  e3400f00  loadli.w r1,  4(r30)
000188  733c6fa0  store.d r[7:8], -1512(r30)
00018c  00330002  core_id r6
000190  73382fa0  store.d r[3:4], -1520(r30)
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
0001cc  8b153320  mul.s r11, r6, r3
0001d0  80a10204  csr_set csr3, r5
0001d4  00d00100  sync_group
0001d8  4bdab402  ble.s r9, r11, 1684
0001dc  1f431000  addli r6, zero, 12
0001e0  0b912120  mul.s r2, r3, r2
0001e4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0001e8  1bbc1100  slli r24, r3, 1
0001ec  ab41cc3f  lui r3, 261316
0001f0  e3021f00  loadli.w r5,  8(r30)
0001f4  1f160000  addli r12, zero, 1
0001f8  2b07ffff  lui r14, 1048560
0001fc  2b08807f  lui r16, 522240
000200  ab08c07f  lui r17, 523264
000204  2b090080  lui r18, 524288
000208  9f3c0000  addli r25, zero, 3
00020c  ab0b40cb  lui r23, 832512
000210  2b04803f  lui r8, 260096
000214  e7409ff4  storeli.w r9, -1524(r30)
000218  0b116120  mul.s r2, r2, r6
00021c  e7008ff5  storeli.w r24, -1528(r30)
000220  67402ff4  storeli.w r2, -1532(r30)
000224  1f012000  addli r2, zero, 16
000228  ea200122  vor.u.mz vr1{mr1}, r2, vr0
00022c  2b710000  lui r2, 7
000230  9b17f1ff  ori r15, r2, 4095
000234  2b21373d  lui r2, 250738
000238  1b113171  ori r2, r2, 1811
00023c  e7432ff4  storeli.w r2, -1476(r30)
000240  1b91a122  ori r2, r3, 554
000244  ab911d3c  lui r3, 246233
000248  e7032ff4  storeli.w r2, -1480(r30)
00024c  2ba1b8bf  lui r2, 785290
000250  1b9eb155  ori r28, r3, 1371
000254  abf1753e  lui r3, 255839
000258  1b12b1a3  ori r4, r2, 2619
00025c  2bc1ae3a  lui r2, 240364
000260  9b9601df  ori r13, r3, 3568
000264  ab11f37e  lui r3, 519985
000268  1b1df13f  ori r26, r2, 1023
00026c  2b812139  lui r2, 234008
000270  1b93311c  ori r6, r3, 451
000274  abf1ffff  lui r3, 1048575
000278  9b1d9148  ori r27, r2, 1161
00027c  2b51633d  lui r2, 251445
000280  1b157184  ori r10, r2, 2119
000284  2b71313f  lui r2, 258839
000288  9b138121  ori r7, r2, 536
00028c  2b71b142  lui r2, 273175
000290  1b118121  ori r2, r2, 536
000294  67432ff4  storeli.w r2, -1484(r30)
000298  1b91f1ff  ori r2, r3, 4095
00029c  aba1b83f  lui r3, 261002
0002a0  67032ff4  storeli.w r2, -1488(r30)
0002a4  2b713142  lui r2, 271127
0002a8  1b118121  ori r2, r2, 536
0002ac  e7422ff4  storeli.w r2, -1492(r30)
0002b0  1b91b1a3  ori r2, r3, 2619
0002b4  e7022ff4  storeli.w r2, -1496(r30)
0002b8  5b090000  j 72
0002bc  eb598fa1  load.d r[20:21], -1512(r30)
0002c0  eb5b0fa2  load.d r[24:25], -1504(r30)
0002c4  2b0100f0  lui r2, 983040
0002c8  9f018ff7  addli r3, r30, -1088
0002cc  9f850400  addli r11, r9, 0
0002d0  8ba97911  add.ul r[20:21], r[20:21], r[24:25]
0002d4  630c1ff4  loadli.w r24,  -1528(r30)
0002d8  00a00000  mfence { lm }
0002dc  ab0b40cb  lui r23, 832512
0002e0  17112c00  or r2, r24, r2
0002e4  7fb13900  s_lm2gm r2, r3, 0(r[20:21])
0002e8  63410ff4  loadli.w r2,  -1532(r30)
0002ec  00a00200  mfence { lm, gm }
0002f0  e3441ff4  loadli.w r9,  -1524(r30)
0002f4  8b952510  add.s r11, r11, r2
0002f8  3fa09500  blt.s r11, r9, 8
0002fc  5bae0000  j 1392
000300  33910528  sext_int2long r[3:4], r11
000304  eb590fa1  load.d r[20:21], -1520(r30)
000308  9f840500  addli r9, r11, 0
00030c  973ac102  sll.d r[22:23], r[3:4], r12
000310  2b0100f0  lui r2, 983040
000314  9f018ff7  addli r3, r30, -1088
000318  8ba95911  add.ul r[20:21], r[20:21], r[22:23]
00031c  17112c00  or r2, r24, r2
000320  73305fa3  store.d r[22:23], -1504(r30)
000324  2b0b404b  lui r22, 308224
000328  ab0afc42  lui r21, 274368
00032c  7fa13900  l_gm2lm r2, r3, 0(r[20:21])
000330  00a00200  mfence { lm, gm }
000334  3faec0fe  blt.s r1, r12, -120
000338  63010f00  loadli.w r2,  0(r30)
00033c  ab010000  lui r3, 0
000340  9f090000  addli r19, zero, 0
000344  1f0a8ff7  addli r20, r30, -1088
000348  9f810100  addli r3, r3, 0
00034c  0b912438  mod.s r2, r9, r2
000350  1b3c1100  slli r24, r2, 1
000354  5b0c0000  j 96
000358  6a324602  vand.s.mz vr4{mr1}, r12, vr4
00035c  eeb220c2  vsrl.s.mz vr5{mr1}, vr1, vr2
000360  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
000364  ea325602  vand.s.mz vr5{mr1}, r12, vr5
000368  e69101c0  vabs.f vr3, vr3
00036c  96325102  vadd.s.mz vr5{mr1}, vr2, vr5
000370  12b24702  vadd.s.mz vr4{mr1}, r15, vr4
000374  72213842  vlt.u.mz mr2{mr1}, r16, vr3
000378  661101c0  vabs.f vr2, vr2
00037c  6a324702  vand.s.mz vr4{mr1}, r14, vr4
000380  92b25702  vadd.s.mz vr5{mr1}, r15, vr5
000384  6aa20834  vor.u.mh vr4{mr2}, r17, vr0
000388  ea315702  vand.s.mz vr3{mr1}, r14, vr5
00038c  72212842  vlt.u.mz mr2{mr1}, r16, vr2
000390  6eb140c2  vsrl.s.mz vr2{mr1}, vr1, vr4
000394  eaa10834  vor.u.mh vr3{mr2}, r17, vr0
000398  6eb12122  vor.s.mz vr2{mr1}, vr3, vr2
00039c  46002a02  vstore.mz vr2{mr1}, 0(r20)
0003a0  9f894900  addli r19, r19, 32
0003a4  9f818100  addli r3, r3, 64
0003a8  1f0a8a00  addli r20, r20, 64
0003ac  3fa01900  blt.s r19, r1, 8
0003b0  dbe1ffff  j -244
0003b4  0b918111  add.s r2, r3, r24
0003b8  c2010a02  vload.mz vr3{mr1}, 0(r20)
0003bc  4a010102  vloads.mz vr2{mr1}, 0(r2)
0003c0  6eb230a2  vsll.s.mz vr4{mr1}, vr1, vr3
0003c4  ea313702  vand.s.mz vr3{mr1}, r14, vr3
0003c8  eeb220a2  vsll.s.mz vr5{mr1}, vr1, vr2
0003cc  6a312702  vand.s.mz vr2{mr1}, r14, vr2
0003d0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0003d4  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0003d8  eeb140c2  vsrl.s.mz vr3{mr1}, vr1, vr4
0003dc  eeb220c2  vsrl.s.mz vr5{mr1}, vr1, vr2
0003e0  661301c0  vabs.f vr6, vr2
0003e4  ea313602  vand.s.mz vr3{mr1}, r12, vr3
0003e8  ea325602  vand.s.mz vr5{mr1}, r12, vr5
0003ec  96313202  vadd.s.mz vr3{mr1}, vr4, vr3
0003f0  96325102  vadd.s.mz vr5{mr1}, vr2, vr5
0003f4  661202c0  vabs.f vr4, vr4
0003f8  92b13702  vadd.s.mz vr3{mr1}, r15, vr3
0003fc  92b25702  vadd.s.mz vr5{mr1}, r15, vr5
000400  72214842  vlt.u.mz mr2{mr1}, r16, vr4
000404  ea313702  vand.s.mz vr3{mr1}, r14, vr3
000408  6a315702  vand.s.mz vr2{mr1}, r14, vr5
00040c  eaa10834  vor.u.mh vr3{mr2}, r17, vr0
000410  72216842  vlt.u.mz mr2{mr1}, r16, vr6
000414  6aa10834  vor.u.mh vr2{mr2}, r17, vr0
000418  37d00200  beq r5, zero, 20
00041c  3be0c200  bneq r5, r12, 24
000420  1a123902  vsub.f.mz.rn vr4{mr1}, r18, vr3
000424  72114042  vlt.f.mz mr2{mr1}, zero, vr4
000428  ea210034  vor.u.mh vr3{mr2}, zero, vr0
00042c  3bc80200  bneq r5, zero, 528
000430  db430000  j 540
000434  37b09201  beq r5, r25, 12
000438  92353002  vadd.s.mz vr11{mr1}, zero, vr3
00043c  5b040000  j 32
000440  63417ff4  loadli.w r2,  -1476(r30)
000444  92323002  vadd.s.mz vr5{mr1}, zero, vr3
000448  0a123102  vmul.f.mz.rn vr4{mr1}, r2, vr3
00044c  63017ff4  loadli.w r2,  -1480(r30)
000450  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000454  a6924202  vmac.f.mz.rn vr5{mr1}, vr5, vr4
000458  8a155102  vmul.f.mz.rn vr11{mr1}, r2, vr5
00045c  669205c0  vabs.f vr4, vr11
000460  2b01fcc2  lui r2, 798656
000464  6a140d22  vor.f.mz vr8{mr1}, r26, vr0
000468  ea140e22  vor.f.mz vr9{mr1}, r28, vr0
00046c  6a150522  vor.f.mz vr10{mr1}, r10, vr0
000470  ea930322  vor.f.mz vr7{mr1}, r7, vr0
000474  6a230122  vor.u.mz vr6{mr1}, r2, vr0
000478  1f010ff7  addli r2, r30, -1152
00047c  8a124202  vmul.f.mz.rn vr5{mr1}, r4, vr4
000480  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000484  1f018ff6  addli r2, r30, -1216
000488  1a125902  vsub.f.mz.rn vr4{mr1}, r18, vr5
00048c  72914a42  vlt.f.mz mr2{mr1}, r21, vr4
000490  ea226034  vor.u.mh vr5{mr2}, zero, vr6
000494  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
000498  1f010ff6  addli r2, r30, -1280
00049c  46109102  vstore_mask16.mz vr9{mr1}, 0(r2)
0004a0  1f018ff5  addli r2, r30, -1344
0004a4  12125b02  vadd.f.mz.rn vr4{mr1}, r22, vr5
0004a8  4610a102  vstore_mask16.mz vr10{mr1}, 0(r2)
0004ac  1f712000  addli r2, zero, 23
0004b0  12934b02  vadd.f.mz.rn vr6{mr1}, r23, vr4
0004b4  9e926202  vsub.f.mz.rn vr5{mr1}, vr5, vr6
0004b8  6a230122  vor.u.mz vr6{mr1}, r2, vr0
0004bc  1f018ff4  addli r2, r30, -1472
0004c0  22945d02  vmac.f.mz.rn vr8{mr1}, r27, vr5
0004c4  6e3243a2  vsll.s.mz vr4{mr1}, vr6, vr4
0004c8  a6145402  vmac.f.mz.rn vr9{mr1}, vr8, vr5
0004cc  6a940622  vor.f.mz vr8{mr1}, r13, vr0
0004d0  12324402  vadd.s.mz vr4{mr1}, r8, vr4
0004d4  26955402  vmac.f.mz.rn vr10{mr1}, vr9, vr5
0004d8  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
0004dc  92347002  vadd.s.mz vr9{mr1}, zero, vr7
0004e0  1f010ff5  addli r2, r30, -1408
0004e4  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0004e8  26145502  vmac.f.mz.rn vr8{mr1}, vr10, vr5
0004ec  6a150422  vor.f.mz vr10{mr1}, r8, vr0
0004f0  a6145402  vmac.f.mz.rn vr9{mr1}, vr8, vr5
0004f4  1234a002  vadd.s.mz vr8{mr1}, zero, vr10
0004f8  26945402  vmac.f.mz.rn vr8{mr1}, vr9, vr5
0004fc  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
000500  8e124402  vmul.f.mz.rn vr5{mr1}, vr8, vr4
000504  ea220034  vor.u.mh vr5{mr2}, zero, vr0
000508  12145402  vadd.f.mz.rn vr8{mr1}, r8, vr5
00050c  1a328302  vsub.s.mz vr4{mr1}, r6, vr8
000510  1a148902  vsub.f.mz.rn vr8{mr1}, r18, vr8
000514  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
000518  26129202  vmac.f.mz.rn vr4{mr1}, vr4, vr9
00051c  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
000520  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
000524  26129202  vmac.f.mz.rn vr4{mr1}, vr4, vr9
000528  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
00052c  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
000530  26129202  vmac.f.mz.rn vr4{mr1}, vr4, vr9
000534  8e125202  vmul.f.mz.rn vr5{mr1}, vr4, vr5
000538  bba09201  bneq r5, r25, 40
00053c  2b0100c0  lui r2, 786432
000540  6a32b902  vand.s.mz vr4{mr1}, r18, vr11
000544  22155102  vmac.f.mz.rn vr10{mr1}, r2, vr5
000548  2b01003f  lui r2, 258048
00054c  8a123102  vmul.f.mz.rn vr5{mr1}, r2, vr3
000550  6e32a222  vor.s.mz vr4{mr1}, vr4, vr10
000554  12124402  vadd.f.mz.rn vr4{mr1}, r8, vr4
000558  8e954202  vmul.f.mz.rn vr11{mr1}, vr5, vr4
00055c  db1a0000  j 212
000560  1a14b902  vsub.f.mz.rn vr8{mr1}, r18, vr11
000564  9a143902  vsub.f.mz.rn vr9{mr1}, r18, vr3
000568  2b01ae42  lui r2, 273120
00056c  f2118042  vlt.f.mz mr3{mr1}, zero, vr8
000570  72119142  vlt.f.mz mr2{mr1}, r2, vr9
000574  6a225036  vor.u.mh vr4{mr3}, zero, vr5
000578  63416ff4  loadli.w r2,  -1484(r30)
00057c  e3056ff4  loadli.w r11,  -1488(r30)
000580  f2119142  vlt.f.mz mr3{mr1}, r2, vr9
000584  7e8101a0  vmmov r2, mr3
000588  8e954102  vmul.f.mz.rn vr11{mr1}, vr3, vr4
00058c  1721b100  xor r2, r2, r11
000590  fe0501a0  vmmov r11, mr2
000594  1701b100  and r2, r2, r11
000598  37620100  beq r2, zero, 152
00059c  e3455ff4  loadli.w r11,  -1492(r30)
0005a0  12923502  vadd.f.mz.rn vr4{mr1}, r11, vr3
0005a4  e3055ff4  loadli.w r11,  -1496(r30)
0005a8  0a924502  vmul.f.mz.rn vr4{mr1}, r11, vr4
0005ac  9f050ff7  addli r11, r30, -1152
0005b0  9a124902  vsub.f.mz.rn vr5{mr1}, r18, vr4
0005b4  72915a42  vlt.f.mz mr2{mr1}, r21, vr5
0005b8  c2920502  vload_mask16.mz vr5{mr1}, 0(r11)
0005bc  9f058ff6  addli r11, r30, -1216
0005c0  6a225034  vor.u.mh vr4{mr2}, zero, vr5
0005c4  92124b02  vadd.f.mz.rn vr5{mr1}, r22, vr4
0005c8  12945b02  vadd.f.mz.rn vr8{mr1}, r23, vr5
0005cc  1e128202  vsub.f.mz.rn vr4{mr1}, vr4, vr8
0005d0  42940502  vload_mask16.mz vr8{mr1}, 0(r11)
0005d4  9f050ff6  addli r11, r30, -1280
0005d8  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0005dc  9f058ff5  addli r11, r30, -1344
0005e0  22944d02  vmac.f.mz.rn vr8{mr1}, r27, vr4
0005e4  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
0005e8  42940502  vload_mask16.mz vr8{mr1}, 0(r11)
0005ec  9f058ff4  addli r11, r30, -1472
0005f0  42930502  vload_mask16.mz vr6{mr1}, 0(r11)
0005f4  9f050ff5  addli r11, r30, -1408
0005f8  26944402  vmac.f.mz.rn vr8{mr1}, vr9, vr4
0005fc  26134402  vmac.f.mz.rn vr6{mr1}, vr8, vr4
000600  42940502  vload_mask16.mz vr8{mr1}, 0(r11)
000604  ab05801f  lui r11, 129024
000608  a6134302  vmac.f.mz.rn vr7{mr1}, vr6, vr4
00060c  ee3254a2  vsll.s.mz vr5{mr1}, vr8, vr5
000610  26954302  vmac.f.mz.rn vr10{mr1}, vr7, vr4
000614  92325402  vadd.s.mz vr5{mr1}, r8, vr5
000618  0e125502  vmul.f.mz.rn vr4{mr1}, vr10, vr5
00061c  8a923502  vmul.f.mz.rn vr5{mr1}, r11, vr3
000620  6a220034  vor.u.mh vr4{mr2}, zero, vr0
000624  7e0101e0  vmmov mr2, r2
000628  0e924202  vmul.f.mz.rn vr4{mr1}, vr5, vr4
00062c  ea254034  vor.u.mh vr11{mr2}, zero, vr4
000630  ea313902  vand.s.mz vr3{mr1}, r18, vr3
000634  eeb1b122  vor.s.mz vr3{mr1}, vr3, vr11
000638  37d00200  beq r5, zero, 20
00063c  3bf0c200  bneq r5, r12, 28
000640  1a122902  vsub.f.mz.rn vr4{mr1}, r18, vr2
000644  72114042  vlt.f.mz mr2{mr1}, zero, vr4
000648  6a210034  vor.u.mh vr2{mr2}, zero, vr0
00064c  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
000650  3f2456fe  blt.s r12, r5, -760
000654  5b420000  j 528
000658  37b09201  beq r5, r25, 12
00065c  92352002  vadd.s.mz vr11{mr1}, zero, vr2
000660  5b040000  j 32
000664  63417ff4  loadli.w r2,  -1476(r30)
000668  92322002  vadd.s.mz vr5{mr1}, zero, vr2
00066c  0a122102  vmul.f.mz.rn vr4{mr1}, r2, vr2
000670  63017ff4  loadli.w r2,  -1480(r30)
000674  0e122202  vmul.f.mz.rn vr4{mr1}, vr4, vr2
000678  a6924202  vmac.f.mz.rn vr5{mr1}, vr5, vr4
00067c  8a155102  vmul.f.mz.rn vr11{mr1}, r2, vr5
000680  669205c0  vabs.f vr4, vr11
000684  2b01fcc2  lui r2, 798656
000688  6a140d22  vor.f.mz vr8{mr1}, r26, vr0
00068c  ea140e22  vor.f.mz vr9{mr1}, r28, vr0
000690  6a150522  vor.f.mz vr10{mr1}, r10, vr0
000694  ea930322  vor.f.mz vr7{mr1}, r7, vr0
000698  6a230122  vor.u.mz vr6{mr1}, r2, vr0
00069c  1f010ff7  addli r2, r30, -1152
0006a0  8a124202  vmul.f.mz.rn vr5{mr1}, r4, vr4
0006a4  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0006a8  1f018ff6  addli r2, r30, -1216
0006ac  1a125902  vsub.f.mz.rn vr4{mr1}, r18, vr5
0006b0  72914a42  vlt.f.mz mr2{mr1}, r21, vr4
0006b4  ea226034  vor.u.mh vr5{mr2}, zero, vr6
0006b8  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
0006bc  1f010ff6  addli r2, r30, -1280
0006c0  46109102  vstore_mask16.mz vr9{mr1}, 0(r2)
0006c4  1f018ff5  addli r2, r30, -1344
0006c8  12125b02  vadd.f.mz.rn vr4{mr1}, r22, vr5
0006cc  4610a102  vstore_mask16.mz vr10{mr1}, 0(r2)
0006d0  1f712000  addli r2, zero, 23
0006d4  12934b02  vadd.f.mz.rn vr6{mr1}, r23, vr4
0006d8  9e926202  vsub.f.mz.rn vr5{mr1}, vr5, vr6
0006dc  6a230122  vor.u.mz vr6{mr1}, r2, vr0
0006e0  1f018ff4  addli r2, r30, -1472
0006e4  22945d02  vmac.f.mz.rn vr8{mr1}, r27, vr5
0006e8  6e3243a2  vsll.s.mz vr4{mr1}, vr6, vr4
0006ec  a6145402  vmac.f.mz.rn vr9{mr1}, vr8, vr5
0006f0  6a940622  vor.f.mz vr8{mr1}, r13, vr0
0006f4  12324402  vadd.s.mz vr4{mr1}, r8, vr4
0006f8  26955402  vmac.f.mz.rn vr10{mr1}, vr9, vr5
0006fc  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
000700  92347002  vadd.s.mz vr9{mr1}, zero, vr7
000704  1f010ff5  addli r2, r30, -1408
000708  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
00070c  26145502  vmac.f.mz.rn vr8{mr1}, vr10, vr5
000710  6a150422  vor.f.mz vr10{mr1}, r8, vr0
000714  a6145402  vmac.f.mz.rn vr9{mr1}, vr8, vr5
000718  1234a002  vadd.s.mz vr8{mr1}, zero, vr10
00071c  26945402  vmac.f.mz.rn vr8{mr1}, vr9, vr5
000720  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
000724  8e124402  vmul.f.mz.rn vr5{mr1}, vr8, vr4
000728  ea220034  vor.u.mh vr5{mr2}, zero, vr0
00072c  12145402  vadd.f.mz.rn vr8{mr1}, r8, vr5
000730  1a328302  vsub.s.mz vr4{mr1}, r6, vr8
000734  1a148902  vsub.f.mz.rn vr8{mr1}, r18, vr8
000738  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
00073c  26129202  vmac.f.mz.rn vr4{mr1}, vr4, vr9
000740  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
000744  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
000748  26129202  vmac.f.mz.rn vr4{mr1}, vr4, vr9
00074c  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
000750  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
000754  26129202  vmac.f.mz.rn vr4{mr1}, vr4, vr9
000758  8e125202  vmul.f.mz.rn vr5{mr1}, vr4, vr5
00075c  bba09201  bneq r5, r25, 40
000760  2b0100c0  lui r2, 786432
000764  6a32b902  vand.s.mz vr4{mr1}, r18, vr11
000768  22155102  vmac.f.mz.rn vr10{mr1}, r2, vr5
00076c  2b01003f  lui r2, 258048
000770  8a122102  vmul.f.mz.rn vr5{mr1}, r2, vr2
000774  6e32a222  vor.s.mz vr4{mr1}, vr4, vr10
000778  12124402  vadd.f.mz.rn vr4{mr1}, r8, vr4
00077c  8e954202  vmul.f.mz.rn vr11{mr1}, vr5, vr4
000780  db1a0000  j 212
000784  1a14b902  vsub.f.mz.rn vr8{mr1}, r18, vr11
000788  9a142902  vsub.f.mz.rn vr9{mr1}, r18, vr2
00078c  2b01ae42  lui r2, 273120
000790  f2118042  vlt.f.mz mr3{mr1}, zero, vr8
000794  72119142  vlt.f.mz mr2{mr1}, r2, vr9
000798  6a225036  vor.u.mh vr4{mr3}, zero, vr5
00079c  63416ff4  loadli.w r2,  -1484(r30)
0007a0  e3056ff4  loadli.w r11,  -1488(r30)
0007a4  f2119142  vlt.f.mz mr3{mr1}, r2, vr9
0007a8  7e8101a0  vmmov r2, mr3
0007ac  8e154102  vmul.f.mz.rn vr11{mr1}, vr2, vr4
0007b0  1721b100  xor r2, r2, r11
0007b4  fe0501a0  vmmov r11, mr2
0007b8  1701b100  and r2, r2, r11
0007bc  37620100  beq r2, zero, 152
0007c0  e3455ff4  loadli.w r11,  -1492(r30)
0007c4  12922502  vadd.f.mz.rn vr4{mr1}, r11, vr2
0007c8  e3055ff4  loadli.w r11,  -1496(r30)
0007cc  0a924502  vmul.f.mz.rn vr4{mr1}, r11, vr4
0007d0  9f050ff7  addli r11, r30, -1152
0007d4  9a124902  vsub.f.mz.rn vr5{mr1}, r18, vr4
0007d8  72915a42  vlt.f.mz mr2{mr1}, r21, vr5
0007dc  c2920502  vload_mask16.mz vr5{mr1}, 0(r11)
0007e0  9f058ff6  addli r11, r30, -1216
0007e4  6a225034  vor.u.mh vr4{mr2}, zero, vr5
0007e8  92124b02  vadd.f.mz.rn vr5{mr1}, r22, vr4
0007ec  12945b02  vadd.f.mz.rn vr8{mr1}, r23, vr5
0007f0  1e128202  vsub.f.mz.rn vr4{mr1}, vr4, vr8
0007f4  42940502  vload_mask16.mz vr8{mr1}, 0(r11)
0007f8  9f050ff6  addli r11, r30, -1280
0007fc  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
000800  9f058ff5  addli r11, r30, -1344
000804  22944d02  vmac.f.mz.rn vr8{mr1}, r27, vr4
000808  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
00080c  42940502  vload_mask16.mz vr8{mr1}, 0(r11)
000810  9f058ff4  addli r11, r30, -1472
000814  42930502  vload_mask16.mz vr6{mr1}, 0(r11)
000818  9f050ff5  addli r11, r30, -1408
00081c  26944402  vmac.f.mz.rn vr8{mr1}, vr9, vr4
000820  26134402  vmac.f.mz.rn vr6{mr1}, vr8, vr4
000824  42940502  vload_mask16.mz vr8{mr1}, 0(r11)
000828  ab05801f  lui r11, 129024
00082c  a6134302  vmac.f.mz.rn vr7{mr1}, vr6, vr4
000830  ee3254a2  vsll.s.mz vr5{mr1}, vr8, vr5
000834  26954302  vmac.f.mz.rn vr10{mr1}, vr7, vr4
000838  92325402  vadd.s.mz vr5{mr1}, r8, vr5
00083c  0e125502  vmul.f.mz.rn vr4{mr1}, vr10, vr5
000840  8a922502  vmul.f.mz.rn vr5{mr1}, r11, vr2
000844  6a220034  vor.u.mh vr4{mr2}, zero, vr0
000848  7e0101e0  vmmov mr2, r2
00084c  0e924202  vmul.f.mz.rn vr4{mr1}, vr5, vr4
000850  ea254034  vor.u.mh vr11{mr2}, zero, vr4
000854  6a312902  vand.s.mz vr2{mr1}, r18, vr2
000858  6e31b122  vor.s.mz vr2{mr1}, vr2, vr11
00085c  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
000860  bf6b56fc  blt.s r12, r5, -1288
000864  6e312222  vor.s.mz vr2{mr1}, vr4, vr2
000868  db66ffff  j -1228
00086c  9f0e0ff4  addli sp, r30, -1536
000870  e38fae0b  loadli.w r31,  1488(sp)
000874  63cfae0b  loadli.w r30,  1492(sp)
000878  638ebe0b  loadli.w r28,  1496(sp)
00087c  e3cdbe0b  loadli.w r27,  1500(sp)
000880  638dce0b  loadli.w r26,  1504(sp)
000884  e3ccce0b  loadli.w r25,  1508(sp)
000888  638cde0b  loadli.w r24,  1512(sp)
00088c  e3cbde0b  loadli.w r23,  1516(sp)
000890  638bee0b  loadli.w r22,  1520(sp)
000894  e3caee0b  loadli.w r21,  1524(sp)
000898  638afe0b  loadli.w r20,  1528(sp)
00089c  e3c9fe0b  loadli.w r19,  1532(sp)
0008a0  9f8e0e0c  addli sp, sp, 1536
0008a4  5f800f00  jr r31, 0
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
