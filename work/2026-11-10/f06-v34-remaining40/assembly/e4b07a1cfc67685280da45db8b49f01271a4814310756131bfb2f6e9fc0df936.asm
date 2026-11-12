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
000104  1f0c0002  addli r24, zero, 256
000108  9f0c0008  addli r25, zero, 1024
00010c  8b904a31  div.s r1, r21, r20
000110  6b510f00  load.d r[3:4], 0(r30)
000114  6b528f00  load.d r[5:6], 8(r30)
000118  6b530f01  load.d r[7:8], 16(r30)
00011c  ab040800  lui r9, 128
000120  e7800e00  storeli.w zero, 8(sp)
000124  67c08e01  storeli.w r24, 4(sp)
000128  67809e01  storeli.w r25, 0(sp)
00012c  0b943031  div.s r8, r1, r19
000130  57290000  jal 328
000134  8b9a7a11  add.s r21, r21, r23
000138  3fdf6aff  blt.s r21, r22, -44
00013c  9f8e8e00  addli sp, sp, 64
000140  00a00300  mfence { lm, sm, gm }
000144  00100000  exit
000148  9f8e0ef4  addli sp, sp, -1536
00014c  67cdee0b  storeli.w r30, 1492(sp)
000150  1f8f0e0c  addli r30, sp, 1536
000154  e7cf3e0b  storeli.w r19, 1532(sp)
000158  e78f4e0b  storeli.w r20, 1528(sp)
00015c  67cf5e0b  storeli.w r21, 1524(sp)
000160  678f6e0b  storeli.w r22, 1520(sp)
000164  e7ce7e0b  storeli.w r23, 1516(sp)
000168  e78e8e0b  storeli.w r24, 1512(sp)
00016c  67ce9e0b  storeli.w r25, 1508(sp)
000170  678eae0b  storeli.w r26, 1504(sp)
000174  e7cdbe0b  storeli.w r27, 1500(sp)
000178  e78dce0b  storeli.w r28, 1496(sp)
00017c  678dfe0b  storeli.w r31, 1488(sp)
000180  e3400f00  loadli.w r1,  4(r30)
000184  733c6fa0  store.d r[7:8], -1512(r30)
000188  00330002  core_id r6
00018c  73382fa0  store.d r[3:4], -1520(r30)
000190  bb000300  bneq r6, zero, 32
000194  63010f00  loadli.w r2,  0(r30)
000198  ab0100f0  lui r3, 983040
00019c  1b311100  slli r2, r2, 1
0001a0  17113100  or r2, r2, r3
0001a4  ab010000  lui r3, 0
0001a8  9f810100  addli r3, r3, 0
0001ac  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0001b0  00510102  load_param_i r2, 2
0001b4  e3410f00  loadli.w r3,  4(r30)
0001b8  2bf20000  lui r4, 15
0001bc  00200300  mfence { sm, gm }
0001c0  0b138150  fmac.s r6, r2, r8
0001c4  9b12f2ff  ori r5, r4, 4095
0001c8  8b153320  mul.s r11, r6, r3
0001cc  80a10204  csr_set csr3, r5
0001d0  00d00100  sync_group
0001d4  4bdab402  ble.s r9, r11, 1684
0001d8  1f431000  addli r6, zero, 12
0001dc  0b912120  mul.s r2, r3, r2
0001e0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0001e4  1bbc1100  slli r24, r3, 1
0001e8  ab41cc3f  lui r3, 261316
0001ec  e3021f00  loadli.w r5,  8(r30)
0001f0  1f160000  addli r12, zero, 1
0001f4  2b07ffff  lui r14, 1048560
0001f8  2b08807f  lui r16, 522240
0001fc  ab08c07f  lui r17, 523264
000200  2b090080  lui r18, 524288
000204  9f3c0000  addli r25, zero, 3
000208  ab0b40cb  lui r23, 832512
00020c  2b04803f  lui r8, 260096
000210  e7409ff4  storeli.w r9, -1524(r30)
000214  0b116120  mul.s r2, r2, r6
000218  e7008ff5  storeli.w r24, -1528(r30)
00021c  67402ff4  storeli.w r2, -1532(r30)
000220  1f012000  addli r2, zero, 16
000224  ea200122  vor.u.mz vr1{mr1}, r2, vr0
000228  2b710000  lui r2, 7
00022c  9b17f1ff  ori r15, r2, 4095
000230  2b21373d  lui r2, 250738
000234  1b113171  ori r2, r2, 1811
000238  e7432ff4  storeli.w r2, -1476(r30)
00023c  1b91a122  ori r2, r3, 554
000240  ab911d3c  lui r3, 246233
000244  e7032ff4  storeli.w r2, -1480(r30)
000248  2ba1b8bf  lui r2, 785290
00024c  1b9eb155  ori r28, r3, 1371
000250  abf1753e  lui r3, 255839
000254  1b12b1a3  ori r4, r2, 2619
000258  2bc1ae3a  lui r2, 240364
00025c  9b9601df  ori r13, r3, 3568
000260  ab11f37e  lui r3, 519985
000264  1b1df13f  ori r26, r2, 1023
000268  2b812139  lui r2, 234008
00026c  1b93311c  ori r6, r3, 451
000270  abf1ffff  lui r3, 1048575
000274  9b1d9148  ori r27, r2, 1161
000278  2b51633d  lui r2, 251445
00027c  1b157184  ori r10, r2, 2119
000280  2b71313f  lui r2, 258839
000284  9b138121  ori r7, r2, 536
000288  2b71b142  lui r2, 273175
00028c  1b118121  ori r2, r2, 536
000290  67432ff4  storeli.w r2, -1484(r30)
000294  1b91f1ff  ori r2, r3, 4095
000298  aba1b83f  lui r3, 261002
00029c  67032ff4  storeli.w r2, -1488(r30)
0002a0  2b713142  lui r2, 271127
0002a4  1b118121  ori r2, r2, 536
0002a8  e7422ff4  storeli.w r2, -1492(r30)
0002ac  1b91b1a3  ori r2, r3, 2619
0002b0  e7022ff4  storeli.w r2, -1496(r30)
0002b4  5b090000  j 72
0002b8  eb598fa1  load.d r[20:21], -1512(r30)
0002bc  eb5b0fa2  load.d r[24:25], -1504(r30)
0002c0  2b0100f0  lui r2, 983040
0002c4  9f018ff7  addli r3, r30, -1088
0002c8  9f850400  addli r11, r9, 0
0002cc  8ba97911  add.ul r[20:21], r[20:21], r[24:25]
0002d0  630c1ff4  loadli.w r24,  -1528(r30)
0002d4  00a00000  mfence { lm }
0002d8  ab0b40cb  lui r23, 832512
0002dc  17112c00  or r2, r24, r2
0002e0  7fb13900  s_lm2gm r2, r3, 0(r[20:21])
0002e4  63410ff4  loadli.w r2,  -1532(r30)
0002e8  00a00200  mfence { lm, gm }
0002ec  e3441ff4  loadli.w r9,  -1524(r30)
0002f0  8b952510  add.s r11, r11, r2
0002f4  3fa09500  blt.s r11, r9, 8
0002f8  5bae0000  j 1392
0002fc  33910528  sext_int2long r[3:4], r11
000300  eb590fa1  load.d r[20:21], -1520(r30)
000304  9f840500  addli r9, r11, 0
000308  973ac102  sll.d r[22:23], r[3:4], r12
00030c  2b0100f0  lui r2, 983040
000310  9f018ff7  addli r3, r30, -1088
000314  8ba95911  add.ul r[20:21], r[20:21], r[22:23]
000318  17112c00  or r2, r24, r2
00031c  73305fa3  store.d r[22:23], -1504(r30)
000320  2b0b404b  lui r22, 308224
000324  ab0afc42  lui r21, 274368
000328  7fa13900  l_gm2lm r2, r3, 0(r[20:21])
00032c  00a00200  mfence { lm, gm }
000330  3faec0fe  blt.s r1, r12, -120
000334  63010f00  loadli.w r2,  0(r30)
000338  ab010000  lui r3, 0
00033c  9f090000  addli r19, zero, 0
000340  1f0a8ff7  addli r20, r30, -1088
000344  9f810100  addli r3, r3, 0
000348  0b912438  mod.s r2, r9, r2
00034c  1b3c1100  slli r24, r2, 1
000350  5b0c0000  j 96
000354  6a324602  vand.s.mz vr4{mr1}, r12, vr4
000358  eeb220c2  vsrl.s.mz vr5{mr1}, vr1, vr2
00035c  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
000360  ea325602  vand.s.mz vr5{mr1}, r12, vr5
000364  e69101c0  vabs.f vr3, vr3
000368  96325102  vadd.s.mz vr5{mr1}, vr2, vr5
00036c  12b24702  vadd.s.mz vr4{mr1}, r15, vr4
000370  72213842  vlt.u.mz mr2{mr1}, r16, vr3
000374  661101c0  vabs.f vr2, vr2
000378  6a324702  vand.s.mz vr4{mr1}, r14, vr4
00037c  92b25702  vadd.s.mz vr5{mr1}, r15, vr5
000380  6aa20834  vor.u.mh vr4{mr2}, r17, vr0
000384  ea315702  vand.s.mz vr3{mr1}, r14, vr5
000388  72212842  vlt.u.mz mr2{mr1}, r16, vr2
00038c  6eb140c2  vsrl.s.mz vr2{mr1}, vr1, vr4
000390  eaa10834  vor.u.mh vr3{mr2}, r17, vr0
000394  6eb12122  vor.s.mz vr2{mr1}, vr3, vr2
000398  46002a02  vstore.mz vr2{mr1}, 0(r20)
00039c  9f894900  addli r19, r19, 32
0003a0  9f818100  addli r3, r3, 64
0003a4  1f0a8a00  addli r20, r20, 64
0003a8  3fa01900  blt.s r19, r1, 8
0003ac  dbe1ffff  j -244
0003b0  0b918111  add.s r2, r3, r24
0003b4  c2010a02  vload.mz vr3{mr1}, 0(r20)
0003b8  4a010102  vloads.mz vr2{mr1}, 0(r2)
0003bc  6eb230a2  vsll.s.mz vr4{mr1}, vr1, vr3
0003c0  ea313702  vand.s.mz vr3{mr1}, r14, vr3
0003c4  eeb220a2  vsll.s.mz vr5{mr1}, vr1, vr2
0003c8  6a312702  vand.s.mz vr2{mr1}, r14, vr2
0003cc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0003d0  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0003d4  eeb140c2  vsrl.s.mz vr3{mr1}, vr1, vr4
0003d8  eeb220c2  vsrl.s.mz vr5{mr1}, vr1, vr2
0003dc  661301c0  vabs.f vr6, vr2
0003e0  ea313602  vand.s.mz vr3{mr1}, r12, vr3
0003e4  ea325602  vand.s.mz vr5{mr1}, r12, vr5
0003e8  96313202  vadd.s.mz vr3{mr1}, vr4, vr3
0003ec  96325102  vadd.s.mz vr5{mr1}, vr2, vr5
0003f0  661202c0  vabs.f vr4, vr4
0003f4  92b13702  vadd.s.mz vr3{mr1}, r15, vr3
0003f8  92b25702  vadd.s.mz vr5{mr1}, r15, vr5
0003fc  72214842  vlt.u.mz mr2{mr1}, r16, vr4
000400  ea313702  vand.s.mz vr3{mr1}, r14, vr3
000404  6a315702  vand.s.mz vr2{mr1}, r14, vr5
000408  eaa10834  vor.u.mh vr3{mr2}, r17, vr0
00040c  72216842  vlt.u.mz mr2{mr1}, r16, vr6
000410  6aa10834  vor.u.mh vr2{mr2}, r17, vr0
000414  37d00200  beq r5, zero, 20
000418  3be0c200  bneq r5, r12, 24
00041c  1a123902  vsub.f.mz.rn vr4{mr1}, r18, vr3
000420  72114042  vlt.f.mz mr2{mr1}, zero, vr4
000424  ea210034  vor.u.mh vr3{mr2}, zero, vr0
000428  3bc80200  bneq r5, zero, 528
00042c  db430000  j 540
000430  37b09201  beq r5, r25, 12
000434  92353002  vadd.s.mz vr11{mr1}, zero, vr3
000438  5b040000  j 32
00043c  63417ff4  loadli.w r2,  -1476(r30)
000440  92323002  vadd.s.mz vr5{mr1}, zero, vr3
000444  0a123102  vmul.f.mz.rn vr4{mr1}, r2, vr3
000448  63017ff4  loadli.w r2,  -1480(r30)
00044c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000450  a6924202  vmac.f.mz.rn vr5{mr1}, vr5, vr4
000454  8a155102  vmul.f.mz.rn vr11{mr1}, r2, vr5
000458  669205c0  vabs.f vr4, vr11
00045c  2b01fcc2  lui r2, 798656
000460  6a140d22  vor.f.mz vr8{mr1}, r26, vr0
000464  ea140e22  vor.f.mz vr9{mr1}, r28, vr0
000468  6a150522  vor.f.mz vr10{mr1}, r10, vr0
00046c  ea930322  vor.f.mz vr7{mr1}, r7, vr0
000470  6a230122  vor.u.mz vr6{mr1}, r2, vr0
000474  1f010ff7  addli r2, r30, -1152
000478  8a124202  vmul.f.mz.rn vr5{mr1}, r4, vr4
00047c  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000480  1f018ff6  addli r2, r30, -1216
000484  1a125902  vsub.f.mz.rn vr4{mr1}, r18, vr5
000488  72914a42  vlt.f.mz mr2{mr1}, r21, vr4
00048c  ea226034  vor.u.mh vr5{mr2}, zero, vr6
000490  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
000494  1f010ff6  addli r2, r30, -1280
000498  46109102  vstore_mask16.mz vr9{mr1}, 0(r2)
00049c  1f018ff5  addli r2, r30, -1344
0004a0  12125b02  vadd.f.mz.rn vr4{mr1}, r22, vr5
0004a4  4610a102  vstore_mask16.mz vr10{mr1}, 0(r2)
0004a8  1f712000  addli r2, zero, 23
0004ac  12934b02  vadd.f.mz.rn vr6{mr1}, r23, vr4
0004b0  9e926202  vsub.f.mz.rn vr5{mr1}, vr5, vr6
0004b4  6a230122  vor.u.mz vr6{mr1}, r2, vr0
0004b8  1f018ff4  addli r2, r30, -1472
0004bc  22945d02  vmac.f.mz.rn vr8{mr1}, r27, vr5
0004c0  6e3243a2  vsll.s.mz vr4{mr1}, vr6, vr4
0004c4  a6145402  vmac.f.mz.rn vr9{mr1}, vr8, vr5
0004c8  6a940622  vor.f.mz vr8{mr1}, r13, vr0
0004cc  12324402  vadd.s.mz vr4{mr1}, r8, vr4
0004d0  26955402  vmac.f.mz.rn vr10{mr1}, vr9, vr5
0004d4  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
0004d8  92347002  vadd.s.mz vr9{mr1}, zero, vr7
0004dc  1f010ff5  addli r2, r30, -1408
0004e0  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0004e4  26145502  vmac.f.mz.rn vr8{mr1}, vr10, vr5
0004e8  6a150422  vor.f.mz vr10{mr1}, r8, vr0
0004ec  a6145402  vmac.f.mz.rn vr9{mr1}, vr8, vr5
0004f0  1234a002  vadd.s.mz vr8{mr1}, zero, vr10
0004f4  26945402  vmac.f.mz.rn vr8{mr1}, vr9, vr5
0004f8  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
0004fc  8e124402  vmul.f.mz.rn vr5{mr1}, vr8, vr4
000500  ea220034  vor.u.mh vr5{mr2}, zero, vr0
000504  12145402  vadd.f.mz.rn vr8{mr1}, r8, vr5
000508  1a328302  vsub.s.mz vr4{mr1}, r6, vr8
00050c  1a148902  vsub.f.mz.rn vr8{mr1}, r18, vr8
000510  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
000514  26129202  vmac.f.mz.rn vr4{mr1}, vr4, vr9
000518  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
00051c  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
000520  26129202  vmac.f.mz.rn vr4{mr1}, vr4, vr9
000524  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
000528  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
00052c  26129202  vmac.f.mz.rn vr4{mr1}, vr4, vr9
000530  8e125202  vmul.f.mz.rn vr5{mr1}, vr4, vr5
000534  bba09201  bneq r5, r25, 40
000538  2b0100c0  lui r2, 786432
00053c  6a32b902  vand.s.mz vr4{mr1}, r18, vr11
000540  22155102  vmac.f.mz.rn vr10{mr1}, r2, vr5
000544  2b01003f  lui r2, 258048
000548  8a123102  vmul.f.mz.rn vr5{mr1}, r2, vr3
00054c  6e32a222  vor.s.mz vr4{mr1}, vr4, vr10
000550  12124402  vadd.f.mz.rn vr4{mr1}, r8, vr4
000554  8e954202  vmul.f.mz.rn vr11{mr1}, vr5, vr4
000558  db1a0000  j 212
00055c  1a14b902  vsub.f.mz.rn vr8{mr1}, r18, vr11
000560  9a143902  vsub.f.mz.rn vr9{mr1}, r18, vr3
000564  2b01ae42  lui r2, 273120
000568  f2118042  vlt.f.mz mr3{mr1}, zero, vr8
00056c  72119142  vlt.f.mz mr2{mr1}, r2, vr9
000570  6a225036  vor.u.mh vr4{mr3}, zero, vr5
000574  63416ff4  loadli.w r2,  -1484(r30)
000578  e3056ff4  loadli.w r11,  -1488(r30)
00057c  f2119142  vlt.f.mz mr3{mr1}, r2, vr9
000580  7e8101a0  vmmov r2, mr3
000584  8e954102  vmul.f.mz.rn vr11{mr1}, vr3, vr4
000588  1721b100  xor r2, r2, r11
00058c  fe0501a0  vmmov r11, mr2
000590  1701b100  and r2, r2, r11
000594  37620100  beq r2, zero, 152
000598  e3455ff4  loadli.w r11,  -1492(r30)
00059c  12923502  vadd.f.mz.rn vr4{mr1}, r11, vr3
0005a0  e3055ff4  loadli.w r11,  -1496(r30)
0005a4  0a924502  vmul.f.mz.rn vr4{mr1}, r11, vr4
0005a8  9f050ff7  addli r11, r30, -1152
0005ac  9a124902  vsub.f.mz.rn vr5{mr1}, r18, vr4
0005b0  72915a42  vlt.f.mz mr2{mr1}, r21, vr5
0005b4  c2920502  vload_mask16.mz vr5{mr1}, 0(r11)
0005b8  9f058ff6  addli r11, r30, -1216
0005bc  6a225034  vor.u.mh vr4{mr2}, zero, vr5
0005c0  92124b02  vadd.f.mz.rn vr5{mr1}, r22, vr4
0005c4  12945b02  vadd.f.mz.rn vr8{mr1}, r23, vr5
0005c8  1e128202  vsub.f.mz.rn vr4{mr1}, vr4, vr8
0005cc  42940502  vload_mask16.mz vr8{mr1}, 0(r11)
0005d0  9f050ff6  addli r11, r30, -1280
0005d4  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0005d8  9f058ff5  addli r11, r30, -1344
0005dc  22944d02  vmac.f.mz.rn vr8{mr1}, r27, vr4
0005e0  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
0005e4  42940502  vload_mask16.mz vr8{mr1}, 0(r11)
0005e8  9f058ff4  addli r11, r30, -1472
0005ec  42930502  vload_mask16.mz vr6{mr1}, 0(r11)
0005f0  9f050ff5  addli r11, r30, -1408
0005f4  26944402  vmac.f.mz.rn vr8{mr1}, vr9, vr4
0005f8  26134402  vmac.f.mz.rn vr6{mr1}, vr8, vr4
0005fc  42940502  vload_mask16.mz vr8{mr1}, 0(r11)
000600  ab05801f  lui r11, 129024
000604  a6134302  vmac.f.mz.rn vr7{mr1}, vr6, vr4
000608  ee3254a2  vsll.s.mz vr5{mr1}, vr8, vr5
00060c  26954302  vmac.f.mz.rn vr10{mr1}, vr7, vr4
000610  92325402  vadd.s.mz vr5{mr1}, r8, vr5
000614  0e125502  vmul.f.mz.rn vr4{mr1}, vr10, vr5
000618  8a923502  vmul.f.mz.rn vr5{mr1}, r11, vr3
00061c  6a220034  vor.u.mh vr4{mr2}, zero, vr0
000620  7e0101e0  vmmov mr2, r2
000624  0e924202  vmul.f.mz.rn vr4{mr1}, vr5, vr4
000628  ea254034  vor.u.mh vr11{mr2}, zero, vr4
00062c  ea313902  vand.s.mz vr3{mr1}, r18, vr3
000630  eeb1b122  vor.s.mz vr3{mr1}, vr3, vr11
000634  37d00200  beq r5, zero, 20
000638  3bf0c200  bneq r5, r12, 28
00063c  1a122902  vsub.f.mz.rn vr4{mr1}, r18, vr2
000640  72114042  vlt.f.mz mr2{mr1}, zero, vr4
000644  6a210034  vor.u.mh vr2{mr2}, zero, vr0
000648  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
00064c  3f2456fe  blt.s r12, r5, -760
000650  5b420000  j 528
000654  37b09201  beq r5, r25, 12
000658  92352002  vadd.s.mz vr11{mr1}, zero, vr2
00065c  5b040000  j 32
000660  63417ff4  loadli.w r2,  -1476(r30)
000664  92322002  vadd.s.mz vr5{mr1}, zero, vr2
000668  0a122102  vmul.f.mz.rn vr4{mr1}, r2, vr2
00066c  63017ff4  loadli.w r2,  -1480(r30)
000670  0e122202  vmul.f.mz.rn vr4{mr1}, vr4, vr2
000674  a6924202  vmac.f.mz.rn vr5{mr1}, vr5, vr4
000678  8a155102  vmul.f.mz.rn vr11{mr1}, r2, vr5
00067c  669205c0  vabs.f vr4, vr11
000680  2b01fcc2  lui r2, 798656
000684  6a140d22  vor.f.mz vr8{mr1}, r26, vr0
000688  ea140e22  vor.f.mz vr9{mr1}, r28, vr0
00068c  6a150522  vor.f.mz vr10{mr1}, r10, vr0
000690  ea930322  vor.f.mz vr7{mr1}, r7, vr0
000694  6a230122  vor.u.mz vr6{mr1}, r2, vr0
000698  1f010ff7  addli r2, r30, -1152
00069c  8a124202  vmul.f.mz.rn vr5{mr1}, r4, vr4
0006a0  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0006a4  1f018ff6  addli r2, r30, -1216
0006a8  1a125902  vsub.f.mz.rn vr4{mr1}, r18, vr5
0006ac  72914a42  vlt.f.mz mr2{mr1}, r21, vr4
0006b0  ea226034  vor.u.mh vr5{mr2}, zero, vr6
0006b4  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
0006b8  1f010ff6  addli r2, r30, -1280
0006bc  46109102  vstore_mask16.mz vr9{mr1}, 0(r2)
0006c0  1f018ff5  addli r2, r30, -1344
0006c4  12125b02  vadd.f.mz.rn vr4{mr1}, r22, vr5
0006c8  4610a102  vstore_mask16.mz vr10{mr1}, 0(r2)
0006cc  1f712000  addli r2, zero, 23
0006d0  12934b02  vadd.f.mz.rn vr6{mr1}, r23, vr4
0006d4  9e926202  vsub.f.mz.rn vr5{mr1}, vr5, vr6
0006d8  6a230122  vor.u.mz vr6{mr1}, r2, vr0
0006dc  1f018ff4  addli r2, r30, -1472
0006e0  22945d02  vmac.f.mz.rn vr8{mr1}, r27, vr5
0006e4  6e3243a2  vsll.s.mz vr4{mr1}, vr6, vr4
0006e8  a6145402  vmac.f.mz.rn vr9{mr1}, vr8, vr5
0006ec  6a940622  vor.f.mz vr8{mr1}, r13, vr0
0006f0  12324402  vadd.s.mz vr4{mr1}, r8, vr4
0006f4  26955402  vmac.f.mz.rn vr10{mr1}, vr9, vr5
0006f8  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
0006fc  92347002  vadd.s.mz vr9{mr1}, zero, vr7
000700  1f010ff5  addli r2, r30, -1408
000704  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000708  26145502  vmac.f.mz.rn vr8{mr1}, vr10, vr5
00070c  6a150422  vor.f.mz vr10{mr1}, r8, vr0
000710  a6145402  vmac.f.mz.rn vr9{mr1}, vr8, vr5
000714  1234a002  vadd.s.mz vr8{mr1}, zero, vr10
000718  26945402  vmac.f.mz.rn vr8{mr1}, vr9, vr5
00071c  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
000720  8e124402  vmul.f.mz.rn vr5{mr1}, vr8, vr4
000724  ea220034  vor.u.mh vr5{mr2}, zero, vr0
000728  12145402  vadd.f.mz.rn vr8{mr1}, r8, vr5
00072c  1a328302  vsub.s.mz vr4{mr1}, r6, vr8
000730  1a148902  vsub.f.mz.rn vr8{mr1}, r18, vr8
000734  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
000738  26129202  vmac.f.mz.rn vr4{mr1}, vr4, vr9
00073c  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
000740  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
000744  26129202  vmac.f.mz.rn vr4{mr1}, vr4, vr9
000748  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
00074c  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
000750  26129202  vmac.f.mz.rn vr4{mr1}, vr4, vr9
000754  8e125202  vmul.f.mz.rn vr5{mr1}, vr4, vr5
000758  bba09201  bneq r5, r25, 40
00075c  2b0100c0  lui r2, 786432
000760  6a32b902  vand.s.mz vr4{mr1}, r18, vr11
000764  22155102  vmac.f.mz.rn vr10{mr1}, r2, vr5
000768  2b01003f  lui r2, 258048
00076c  8a122102  vmul.f.mz.rn vr5{mr1}, r2, vr2
000770  6e32a222  vor.s.mz vr4{mr1}, vr4, vr10
000774  12124402  vadd.f.mz.rn vr4{mr1}, r8, vr4
000778  8e954202  vmul.f.mz.rn vr11{mr1}, vr5, vr4
00077c  db1a0000  j 212
000780  1a14b902  vsub.f.mz.rn vr8{mr1}, r18, vr11
000784  9a142902  vsub.f.mz.rn vr9{mr1}, r18, vr2
000788  2b01ae42  lui r2, 273120
00078c  f2118042  vlt.f.mz mr3{mr1}, zero, vr8
000790  72119142  vlt.f.mz mr2{mr1}, r2, vr9
000794  6a225036  vor.u.mh vr4{mr3}, zero, vr5
000798  63416ff4  loadli.w r2,  -1484(r30)
00079c  e3056ff4  loadli.w r11,  -1488(r30)
0007a0  f2119142  vlt.f.mz mr3{mr1}, r2, vr9
0007a4  7e8101a0  vmmov r2, mr3
0007a8  8e154102  vmul.f.mz.rn vr11{mr1}, vr2, vr4
0007ac  1721b100  xor r2, r2, r11
0007b0  fe0501a0  vmmov r11, mr2
0007b4  1701b100  and r2, r2, r11
0007b8  37620100  beq r2, zero, 152
0007bc  e3455ff4  loadli.w r11,  -1492(r30)
0007c0  12922502  vadd.f.mz.rn vr4{mr1}, r11, vr2
0007c4  e3055ff4  loadli.w r11,  -1496(r30)
0007c8  0a924502  vmul.f.mz.rn vr4{mr1}, r11, vr4
0007cc  9f050ff7  addli r11, r30, -1152
0007d0  9a124902  vsub.f.mz.rn vr5{mr1}, r18, vr4
0007d4  72915a42  vlt.f.mz mr2{mr1}, r21, vr5
0007d8  c2920502  vload_mask16.mz vr5{mr1}, 0(r11)
0007dc  9f058ff6  addli r11, r30, -1216
0007e0  6a225034  vor.u.mh vr4{mr2}, zero, vr5
0007e4  92124b02  vadd.f.mz.rn vr5{mr1}, r22, vr4
0007e8  12945b02  vadd.f.mz.rn vr8{mr1}, r23, vr5
0007ec  1e128202  vsub.f.mz.rn vr4{mr1}, vr4, vr8
0007f0  42940502  vload_mask16.mz vr8{mr1}, 0(r11)
0007f4  9f050ff6  addli r11, r30, -1280
0007f8  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0007fc  9f058ff5  addli r11, r30, -1344
000800  22944d02  vmac.f.mz.rn vr8{mr1}, r27, vr4
000804  a6144402  vmac.f.mz.rn vr9{mr1}, vr8, vr4
000808  42940502  vload_mask16.mz vr8{mr1}, 0(r11)
00080c  9f058ff4  addli r11, r30, -1472
000810  42930502  vload_mask16.mz vr6{mr1}, 0(r11)
000814  9f050ff5  addli r11, r30, -1408
000818  26944402  vmac.f.mz.rn vr8{mr1}, vr9, vr4
00081c  26134402  vmac.f.mz.rn vr6{mr1}, vr8, vr4
000820  42940502  vload_mask16.mz vr8{mr1}, 0(r11)
000824  ab05801f  lui r11, 129024
000828  a6134302  vmac.f.mz.rn vr7{mr1}, vr6, vr4
00082c  ee3254a2  vsll.s.mz vr5{mr1}, vr8, vr5
000830  26954302  vmac.f.mz.rn vr10{mr1}, vr7, vr4
000834  92325402  vadd.s.mz vr5{mr1}, r8, vr5
000838  0e125502  vmul.f.mz.rn vr4{mr1}, vr10, vr5
00083c  8a922502  vmul.f.mz.rn vr5{mr1}, r11, vr2
000840  6a220034  vor.u.mh vr4{mr2}, zero, vr0
000844  7e0101e0  vmmov mr2, r2
000848  0e924202  vmul.f.mz.rn vr4{mr1}, vr5, vr4
00084c  ea254034  vor.u.mh vr11{mr2}, zero, vr4
000850  6a312902  vand.s.mz vr2{mr1}, r18, vr2
000854  6e31b122  vor.s.mz vr2{mr1}, vr2, vr11
000858  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
00085c  bf6b56fc  blt.s r12, r5, -1288
000860  6e312222  vor.s.mz vr2{mr1}, vr4, vr2
000864  db66ffff  j -1228
000868  9f0e0ff4  addli sp, r30, -1536
00086c  e38fae0b  loadli.w r31,  1488(sp)
000870  63cfae0b  loadli.w r30,  1492(sp)
000874  638ebe0b  loadli.w r28,  1496(sp)
000878  e3cdbe0b  loadli.w r27,  1500(sp)
00087c  638dce0b  loadli.w r26,  1504(sp)
000880  e3ccce0b  loadli.w r25,  1508(sp)
000884  638cde0b  loadli.w r24,  1512(sp)
000888  e3cbde0b  loadli.w r23,  1516(sp)
00088c  638bee0b  loadli.w r22,  1520(sp)
000890  e3caee0b  loadli.w r21,  1524(sp)
000894  638afe0b  loadli.w r20,  1528(sp)
000898  e3c9fe0b  loadli.w r19,  1532(sp)
00089c  9f8e0e0c  addli sp, sp, 1536
0008a0  5f800f00  jr r31, 0
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
