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
000104  1f0c0001  addli r24, zero, 128
000108  9f0c0008  addli r25, zero, 1024
00010c  2b0d0100  lui r26, 16
000110  8b904a31  div.s r1, r21, r20
000114  6b510f00  load.d r[3:4], 0(r30)
000118  6b528f00  load.d r[5:6], 8(r30)
00011c  6b530f01  load.d r[7:8], 16(r30)
000120  9f441000  addli r9, zero, 12
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
00014c  9f8e8eec  addli sp, sp, -2496
000150  67c9ee13  storeli.w r30, 2452(sp)
000154  1f8f8e13  addli r30, sp, 2496
000158  9f800400  addli r1, r9, 0
00015c  67ca9e13  storeli.w r25, 2468(sp)
000160  e7cb3e13  storeli.w r19, 2492(sp)
000164  e78b4e13  storeli.w r20, 2488(sp)
000168  67cb5e13  storeli.w r21, 2484(sp)
00016c  678b6e13  storeli.w r22, 2480(sp)
000170  e7ca7e13  storeli.w r23, 2476(sp)
000174  e78a8e13  storeli.w r24, 2472(sp)
000178  678aae13  storeli.w r26, 2464(sp)
00017c  e7c9be13  storeli.w r27, 2460(sp)
000180  e789ce13  storeli.w r28, 2456(sp)
000184  6789fe13  storeli.w r31, 2448(sp)
000188  9f04dfec  addli r9, r30, -2456
00018c  e30c1f00  loadli.w r25,  8(r30)
000190  73b06400  store.d r[7:8], 0(r9)
000194  00330002  core_id r6
000198  9f03cfec  addli r7, r30, -2464
00019c  73b02300  store.d r[3:4], 0(r7)
0001a0  bb000300  bneq r6, zero, 32
0001a4  63410f00  loadli.w r2,  4(r30)
0001a8  ab0100f0  lui r3, 983040
0001ac  1b311100  slli r2, r2, 1
0001b0  17113100  or r2, r2, r3
0001b4  ab010000  lui r3, 0
0001b8  9f810100  addli r3, r3, 0
0001bc  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0001c0  00510102  load_param_i r2, 2
0001c4  63021f00  loadli.w r4,  8(r30)
0001c8  abf20000  lui r5, 15
0001cc  e3010f00  loadli.w r3,  0(r30)
0001d0  00200300  mfence { sm, gm }
0001d4  0b138150  fmac.s r6, r2, r8
0001d8  9b92f2ff  ori r5, r5, 4095
0001dc  0b164320  mul.s r12, r6, r4
0001e0  80a10204  csr_set csr3, r5
0001e4  00d00100  sync_group
0001e8  cba9c102  ble.s r3, r12, 1640
0001ec  e3011f00  loadli.w r3,  8(r30)
0001f0  6e224262  vxor.u.mz vr4{mr1}, vr4, vr4
0001f4  2b73033e  lui r6, 254007
0001f8  2bd2203f  lui r4, 258573
0001fc  abe37f37  lui r7, 227326
000200  9f120000  addli r5, zero, 1
000204  2b07ffff  lui r14, 1048560
000208  ab07807f  lui r15, 522240
00020c  2b08c07f  lui r16, 523264
000210  ab0a0080  lui r21, 524288
000214  2b0b00c2  lui r22, 794624
000218  ab0b404b  lui r23, 308224
00021c  2b0c40cb  lui r24, 832512
000220  2b0d803f  lui r26, 260096
000224  1b122284  ori r4, r4, 2114
000228  1b9ee35f  ori r28, r7, 1534
00022c  ab931d3c  lui r7, 246233
000230  0b113120  mul.s r2, r2, r3
000234  9bb41100  slli r9, r3, 1
000238  ab710000  lui r3, 7
00023c  9b95b355  ori r11, r7, 1371
000240  abf3753e  lui r7, 255839
000244  8b101120  mul.s r1, r2, r1
000248  1f012000  addli r2, zero, 16
00024c  9b96f1ff  ori r13, r3, 4095
000250  ab61803f  lui r3, 260102
000254  e7459fec  storeli.w r9, -2468(r30)
000258  9b9303df  ori r7, r7, 3568
00025c  6a214122  vor.u.mz vr2{mr1}, r2, vr4
000260  2b01353f  lui r2, 258896
000264  1b99e10f  ori r18, r3, 254
000268  abe1b138  lui r3, 232222
00026c  e7051fec  storeli.w r1, -2472(r30)
000270  9f008ff5  addli r1, r30, -1344
000274  9b18314f  ori r17, r2, 1267
000278  2bc18937  lui r2, 227484
00027c  9b91a196  ori r3, r3, 2410
000280  1b11c1a3  ori r2, r2, 2620
000284  6aa04122  vor.u.mz vr0{mr1}, r3, vr4
000288  ab4157ba  lui r3, 763252
00028c  6a244122  vor.u.mz vr8{mr1}, r2, vr4
000290  2b61f5b9  lui r2, 761686
000294  9b9101d2  ori r3, r3, 3360
000298  1b11910b  ori r2, r2, 185
00029c  eaa54122  vor.u.mz vr11{mr1}, r3, vr4
0002a0  abd1aa3b  lui r3, 244397
0002a4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002a8  9f000ff3  addli r1, r30, -1664
0002ac  ea234122  vor.u.mz vr7{mr1}, r2, vr4
0002b0  2b81ac3b  lui r2, 244424
0002b4  9b91a15e  ori r3, r3, 1514
0002b8  1b11b140  ori r2, r2, 1035
0002bc  6aa34122  vor.u.mz vr6{mr1}, r3, vr4
0002c0  ab11dcbc  lui r3, 773569
0002c4  ea224122  vor.u.mz vr5{mr1}, r2, vr4
0002c8  2b810cbd  lui r2, 774344
0002cc  9b9171be  ori r3, r3, 3047
0002d0  1b112116  ori r2, r2, 354
0002d4  6a204122  vor.u.mz vr0{mr1}, r2, vr4
0002d8  2bf11c3e  lui r2, 254415
0002dc  1b116190  ori r2, r2, 2310
0002e0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002e4  6aa04122  vor.u.mz vr0{mr1}, r3, vr4
0002e8  9f008ff2  addli r1, r30, -1728
0002ec  ab11e73d  lui r3, 253553
0002f0  9b91f18a  ori r3, r3, 2223
0002f4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002f8  6a204122  vor.u.mz vr0{mr1}, r2, vr4
0002fc  9f000ff2  addli r1, r30, -1792
000300  2b916a3f  lui r2, 259753
000304  1b11e137  ori r2, r2, 894
000308  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00030c  6aa04122  vor.u.mz vr0{mr1}, r3, vr4
000310  9f008ff1  addli r1, r30, -1856
000314  ab91c0be  lui r3, 781321
000318  9b91c13a  ori r3, r3, 940
00031c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000320  9b10335d  ori r1, r6, 1491
000324  6a204122  vor.u.mz vr0{mr1}, r2, vr4
000328  2b832139  lui r6, 234008
00032c  67451fec  storeli.w r1, -2476(r30)
000330  9f000ff1  addli r1, r30, -1920
000334  9b1d9348  ori r27, r6, 1161
000338  2bc3ae3a  lui r6, 240364
00033c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000340  6aa04122  vor.u.mz vr0{mr1}, r3, vr4
000344  9f008ff0  addli r1, r30, -1984
000348  1b15f33f  ori r10, r6, 1023
00034c  2b53633d  lui r6, 251445
000350  ab01003f  lui r3, 258048
000354  1b147384  ori r8, r6, 2119
000358  2b73313f  lui r6, 258839
00035c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000360  6a204222  vor.u.mz vr0{mr1}, r4, vr4
000364  9f000ff0  addli r1, r30, -2048
000368  1b138321  ori r6, r6, 536
00036c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000370  9f000ff7  addli r1, r30, -1152
000374  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000378  9f000ff6  addli r1, r30, -1280
00037c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
000380  9f000ff5  addli r1, r30, -1408
000384  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000388  9f008ff4  addli r1, r30, -1472
00038c  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000390  9f000ff4  addli r1, r30, -1536
000394  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000398  9f008ff3  addli r1, r30, -1600
00039c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0003a0  db090000  j 76
0003a4  9f04dfec  addli r9, r30, -2456
0003a8  2b0200f0  lui r4, 983040
0003ac  1f068ff7  addli r12, r30, -1088
0003b0  ebd00400  load.d r[2:3], 0(r9)
0003b4  9f04efec  addli r9, r30, -2448
0003b8  ebd90400  load.d r[20:21], 0(r9)
0003bc  e344bfec  loadli.w r9,  -2468(r30)
0003c0  00a00000  mfence { lm }
0003c4  8ba03011  add.ul r[2:3], r[2:3], r[20:21]
0003c8  17924400  or r4, r9, r4
0003cc  7fb2c000  s_lm2gm r4, r12, 0(r[2:3])
0003d0  6346ffec  loadli.w r12,  -2436(r30)
0003d4  e300bfec  loadli.w r1,  -2472(r30)
0003d8  00a00200  mfence { lm, gm }
0003dc  0b161610  add.s r12, r12, r1
0003e0  e3000f00  loadli.w r1,  0(r30)
0003e4  3f201600  blt.s r12, r1, 8
0003e8  5b8d0000  j 1128
0003ec  b3100628  sext_int2long r[2:3], r12
0003f0  1f00cfec  addli zero, r30, -2464
0003f4  2b0200f0  lui r4, 983040
0003f8  e747cfec  storeli.w r12, -2436(r30)
0003fc  1f068ff7  addli r12, r30, -1088
000400  97b95002  sll.d r[20:21], r[2:3], r5
000404  eb500000  load.d r[2:3], 0(zero)
000408  17200000  xor zero, zero, zero
00040c  17924400  or r4, r9, r4
000410  1f00efec  addli zero, r30, -2448
000414  8ba03011  add.ul r[2:3], r[2:3], r[20:21]
000418  73303001  store.d r[20:21], 0(zero)
00041c  ab090041  lui r19, 266240
000420  17200000  xor zero, zero, zero
000424  7fa2c000  l_gm2lm r4, r12, 0(r[2:3])
000428  00a00200  mfence { lm, gm }
00042c  634aafec  loadli.w r20,  -2476(r30)
000430  bfdd5cfe  blt.s r25, r5, -140
000434  e3400f00  loadli.w r1,  4(r30)
000438  6342ffec  loadli.w r4,  -2436(r30)
00043c  1f010000  addli r2, zero, 0
000440  9f048ff7  addli r9, r30, -1088
000444  8b101238  mod.s r1, r4, r1
000448  2b020000  lui r4, 0
00044c  1f020200  addli r4, r4, 0
000450  1bb61000  slli r12, r1, 1
000454  9f008ff5  addli r1, r30, -1344
000458  92346002  vadd.s.mz vr9{mr1}, zero, vr6
00045c  c2800402  vload.mz vr1{mr1}, 0(r9)
000460  1f014100  addli r2, r2, 32
000464  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000468  8b10c210  add.s r1, r4, r12
00046c  1f028200  addli r4, r4, 64
000470  4a800002  vloads.mz vr0{mr1}, 0(r1)
000474  9f000ff7  addli r1, r30, -1152
000478  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00047c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000480  6e3111a2  vsll.s.mz vr2{mr1}, vr2, vr1
000484  ea301702  vand.s.mz vr1{mr1}, r14, vr1
000488  eeb101a2  vsll.s.mz vr3{mr1}, vr3, vr0
00048c  6a300702  vand.s.mz vr0{mr1}, r14, vr0
000490  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000494  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000498  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
00049c  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
0004a0  eab13202  vand.s.mz vr3{mr1}, r5, vr3
0004a4  96313102  vadd.s.mz vr3{mr1}, vr2, vr3
0004a8  661101c0  vabs.f vr2, vr2
0004ac  92b03602  vadd.s.mz vr1{mr1}, r13, vr3
0004b0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0004b4  72a12742  vlt.u.mz mr2{mr1}, r15, vr2
0004b8  9f000fef  addli r1, r30, -2176
0004bc  12318002  vadd.s.mz vr2{mr1}, zero, vr8
0004c0  12344002  vadd.s.mz vr8{mr1}, zero, vr4
0004c4  6a351702  vand.s.mz vr10{mr1}, r14, vr1
0004c8  eeb101c2  vsrl.s.mz vr3{mr1}, vr3, vr0
0004cc  6a254834  vor.u.mh vr10{mr2}, r16, vr4
0004d0  eab03202  vand.s.mz vr1{mr1}, r5, vr3
0004d4  92317002  vadd.s.mz vr3{mr1}, zero, vr7
0004d8  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
0004dc  0a95a802  vmul.f.mz.rn vr10{mr1}, r17, vr10
0004e0  9f008ff6  addli r1, r30, -1216
0004e4  96301002  vadd.s.mz vr1{mr1}, vr0, vr1
0004e8  661000c0  vabs.f vr0, vr0
0004ec  661205c0  vabs.f vr4, vr10
0004f0  92b01602  vadd.s.mz vr1{mr1}, r13, vr1
0004f4  72a10742  vlt.u.mz mr2{mr1}, r15, vr0
0004f8  0e10a502  vmul.f.mz.rn vr0{mr1}, vr10, vr10
0004fc  ea331702  vand.s.mz vr7{mr1}, r14, vr1
000500  aa904902  vmin.f.mz vr1{mr1}, r19, vr4
000504  ea238834  vor.u.mh vr7{mr2}, r16, vr8
000508  72114942  vlt.f.mz mr2{mr1}, r18, vr4
00050c  7e010140  vmnot mr2, mr2
000510  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000514  ea200034  vor.u.mh vr1{mr2}, zero, vr0
000518  6a216034  vor.u.mh vr2{mr2}, zero, vr6
00051c  ea21b034  vor.u.mh vr3{mr2}, zero, vr11
000520  9f000ff3  addli r1, r30, -1664
000524  ea229034  vor.u.mh vr5{mr2}, zero, vr9
000528  6a208a22  vor.u.mz vr0{mr1}, r20, vr8
00052c  ea158422  vor.f.mz vr11{mr1}, r8, vr8
000530  ea948322  vor.f.mz vr9{mr1}, r7, vr8
000534  ea138322  vor.f.mz vr7{mr1}, r6, vr8
000538  a6111102  vmac.f.mz.rn vr3{mr1}, vr2, vr1
00053c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000540  9f008ff2  addli r1, r30, -1728
000544  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000548  9f000ff2  addli r1, r30, -1792
00054c  a6921102  vmac.f.mz.rn vr5{mr1}, vr3, vr1
000550  6a214034  vor.u.mh vr2{mr2}, zero, vr4
000554  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000558  9f008ff1  addli r1, r30, -1856
00055c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000560  9f000ff1  addli r1, r30, -1920
000564  26911202  vmac.f.mz.rn vr2{mr1}, vr5, vr1
000568  9a921a02  vsub.f.mz.rn vr5{mr1}, r21, vr1
00056c  ea214034  vor.u.mh vr3{mr2}, zero, vr4
000570  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000574  9f008fef  addli r1, r30, -2112
000578  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00057c  9f008ff0  addli r1, r30, -1984
000580  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000584  9f000ff0  addli r1, r30, -2048
000588  a6111102  vmac.f.mz.rn vr3{mr1}, vr2, vr1
00058c  6a226034  vor.u.mh vr4{mr2}, zero, vr6
000590  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000594  9f008fee  addli r1, r30, -2240
000598  26921102  vmac.f.mz.rn vr4{mr1}, vr3, vr1
00059c  ea918d22  vor.f.mz vr3{mr1}, r27, vr8
0005a0  6a210034  vor.u.mh vr2{mr2}, zero, vr0
0005a4  ea22a034  vor.u.mh vr5{mr2}, zero, vr10
0005a8  6a908522  vor.f.mz vr0{mr1}, r11, vr8
0005ac  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0005b0  9f000fee  addli r1, r30, -2304
0005b4  26111202  vmac.f.mz.rn vr2{mr1}, vr4, vr1
0005b8  a6125102  vmac.f.mz.rn vr5{mr1}, vr2, vr5
0005bc  b2105b02  vmax.f.mz vr1{mr1}, r22, vr5
0005c0  12931b02  vadd.f.mz.rn vr6{mr1}, r23, vr1
0005c4  12116c02  vadd.f.mz.rn vr2{mr1}, r24, vr6
0005c8  1e922002  vsub.f.mz.rn vr4{mr1}, vr1, vr2
0005cc  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0005d0  6a118522  vor.f.mz vr2{mr1}, r10, vr8
0005d4  a2104e02  vmac.f.mz.rn vr1{mr1}, r28, vr4
0005d8  92312002  vadd.s.mz vr3{mr1}, zero, vr2
0005dc  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0005e0  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
0005e4  9f008fed  addli r1, r30, -2368
0005e8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005ec  9f702000  addli r1, zero, 23
0005f0  a6914002  vmac.f.mz.rn vr3{mr1}, vr1, vr4
0005f4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0005f8  6aa08022  vor.u.mz vr0{mr1}, r1, vr8
0005fc  9f000fed  addli r1, r30, -2432
000600  a6904102  vmac.f.mz.rn vr1{mr1}, vr3, vr4
000604  92319002  vadd.s.mz vr3{mr1}, zero, vr9
000608  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00060c  9f000fef  addli r1, r30, -2176
000610  26914002  vmac.f.mz.rn vr2{mr1}, vr1, vr4
000614  ea108d22  vor.f.mz vr1{mr1}, r26, vr8
000618  a6114102  vmac.f.mz.rn vr3{mr1}, vr2, vr4
00061c  12317002  vadd.s.mz vr2{mr1}, zero, vr7
000620  26914102  vmac.f.mz.rn vr2{mr1}, vr3, vr4
000624  ee3160a2  vsll.s.mz vr3{mr1}, vr0, vr6
000628  12331002  vadd.s.mz vr6{mr1}, zero, vr1
00062c  26134102  vmac.f.mz.rn vr6{mr1}, vr2, vr4
000630  12313d02  vadd.s.mz vr2{mr1}, r26, vr3
000634  eab1aa02  vand.s.mz vr3{mr1}, r21, vr10
000638  0e112302  vmul.f.mz.rn vr2{mr1}, vr6, vr2
00063c  1a112d02  vsub.f.mz.rn vr2{mr1}, r26, vr2
000640  6eb12122  vor.s.mz vr2{mr1}, vr3, vr2
000644  6a215034  vor.u.mh vr2{mr2}, zero, vr5
000648  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00064c  9f000ff7  addli r1, r30, -1152
000650  12112d02  vadd.f.mz.rn vr2{mr1}, r26, vr2
000654  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000658  0e102002  vmul.f.mz.rn vr0{mr1}, vr0, vr2
00065c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000660  9f008ff6  addli r1, r30, -1216
000664  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000668  9f000fef  addli r1, r30, -2176
00066c  661200c0  vabs.f vr4, vr0
000670  6e3101c2  vsrl.s.mz vr2{mr1}, vr2, vr0
000674  0a953802  vmul.f.mz.rn vr10{mr1}, r17, vr3
000678  f2a14742  vlt.u.mz mr3{mr1}, r15, vr4
00067c  6ab12202  vand.s.mz vr2{mr1}, r5, vr2
000680  e61105c0  vabs.f vr3, vr10
000684  16312002  vadd.s.mz vr2{mr1}, vr0, vr2
000688  72113942  vlt.f.mz mr2{mr1}, r18, vr3
00068c  2a903902  vmin.f.mz vr0{mr1}, r19, vr3
000690  8e11a502  vmul.f.mz.rn vr3{mr1}, vr10, vr10
000694  7e010140  vmnot mr2, mr2
000698  12b12602  vadd.s.mz vr2{mr1}, r13, vr2
00069c  6a312702  vand.s.mz vr2{mr1}, r14, vr2
0006a0  6a218836  vor.u.mh vr2{mr3}, r16, vr8
0006a4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0006a8  9f000ff6  addli r1, r30, -1280
0006ac  6a203034  vor.u.mh vr0{mr2}, zero, vr3
0006b0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0006b4  9f008ff5  addli r1, r30, -1344
0006b8  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0006bc  9f000ff5  addli r1, r30, -1408
0006c0  ea214034  vor.u.mh vr3{mr2}, zero, vr4
0006c4  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0006c8  9f008ff4  addli r1, r30, -1472
0006cc  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0006d0  9f000ff4  addli r1, r30, -1536
0006d4  6a226034  vor.u.mh vr4{mr2}, zero, vr6
0006d8  26920102  vmac.f.mz.rn vr4{mr1}, vr3, vr0
0006dc  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0006e0  9f008ff3  addli r1, r30, -1600
0006e4  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0006e8  9f000ff3  addli r1, r30, -1664
0006ec  ea216034  vor.u.mh vr3{mr2}, zero, vr6
0006f0  a6110202  vmac.f.mz.rn vr3{mr1}, vr4, vr0
0006f4  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0006f8  9f008ff2  addli r1, r30, -1728
0006fc  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000700  9f000ff2  addli r1, r30, -1792
000704  6a226034  vor.u.mh vr4{mr2}, zero, vr6
000708  26920102  vmac.f.mz.rn vr4{mr1}, vr3, vr0
00070c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000710  9f008ff1  addli r1, r30, -1856
000714  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000718  9f000ff1  addli r1, r30, -1920
00071c  ea216034  vor.u.mh vr3{mr2}, zero, vr6
000720  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000724  9f008ff0  addli r1, r30, -1984
000728  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00072c  9f000ff0  addli r1, r30, -2048
000730  a6110202  vmac.f.mz.rn vr3{mr1}, vr4, vr0
000734  6a232034  vor.u.mh vr6{mr2}, zero, vr2
000738  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
00073c  9f008fef  addli r1, r30, -2112
000740  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000744  9f008fee  addli r1, r30, -2240
000748  26930102  vmac.f.mz.rn vr6{mr1}, vr3, vr0
00074c  9a910a02  vsub.f.mz.rn vr3{mr1}, r21, vr0
000750  6a222034  vor.u.mh vr4{mr2}, zero, vr2
000754  ea21a034  vor.u.mh vr3{mr2}, zero, vr10
000758  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00075c  9f000fee  addli r1, r30, -2304
000760  26120302  vmac.f.mz.rn vr4{mr1}, vr6, vr0
000764  a6113202  vmac.f.mz.rn vr3{mr1}, vr4, vr3
000768  32103b02  vmax.f.mz vr0{mr1}, r22, vr3
00076c  12920b02  vadd.f.mz.rn vr4{mr1}, r23, vr0
000770  12134c02  vadd.f.mz.rn vr6{mr1}, r24, vr4
000774  1e106002  vsub.f.mz.rn vr0{mr1}, vr0, vr6
000778  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
00077c  9f008fed  addli r1, r30, -2368
000780  22110e02  vmac.f.mz.rn vr2{mr1}, r28, vr0
000784  26130102  vmac.f.mz.rn vr6{mr1}, vr2, vr0
000788  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00078c  9f008ff3  addli r1, r30, -1600
000790  26110302  vmac.f.mz.rn vr2{mr1}, vr6, vr0
000794  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000798  9f000ff4  addli r1, r30, -1536
00079c  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0007a0  9f008ff4  addli r1, r30, -1472
0007a4  a6150102  vmac.f.mz.rn vr11{mr1}, vr2, vr0
0007a8  a6940502  vmac.f.mz.rn vr9{mr1}, vr11, vr0
0007ac  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0007b0  9f000fed  addli r1, r30, -2432
0007b4  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0007b8  9f000ff5  addli r1, r30, -1408
0007bc  a6930402  vmac.f.mz.rn vr7{mr1}, vr9, vr0
0007c0  6e3241a2  vsll.s.mz vr4{mr1}, vr2, vr4
0007c4  a6900302  vmac.f.mz.rn vr1{mr1}, vr7, vr0
0007c8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0007cc  9f000ff6  addli r1, r30, -1280
0007d0  12304d02  vadd.s.mz vr0{mr1}, r26, vr4
0007d4  12328002  vadd.s.mz vr4{mr1}, zero, vr8
0007d8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0007dc  9f008ff6  addli r1, r30, -1216
0007e0  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
0007e4  eab0aa02  vand.s.mz vr1{mr1}, r21, vr10
0007e8  1a100d02  vsub.f.mz.rn vr0{mr1}, r26, vr0
0007ec  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0007f0  6a203034  vor.u.mh vr0{mr2}, zero, vr3
0007f4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0007f8  9f000ff7  addli r1, r30, -1152
0007fc  12100d02  vadd.f.mz.rn vr0{mr1}, r26, vr0
000800  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
000804  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
000808  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00080c  eeb000c2  vsrl.s.mz vr1{mr1}, vr1, vr0
000810  eab01202  vand.s.mz vr1{mr1}, r5, vr1
000814  96301002  vadd.s.mz vr1{mr1}, vr0, vr1
000818  661000c0  vabs.f vr0, vr0
00081c  92b01602  vadd.s.mz vr1{mr1}, r13, vr1
000820  72a10742  vlt.u.mz mr2{mr1}, r15, vr0
000824  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000828  9f000fef  addli r1, r30, -2176
00082c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000830  ea301702  vand.s.mz vr1{mr1}, r14, vr1
000834  6e3020c2  vsrl.s.mz vr0{mr1}, vr0, vr2
000838  ea204834  vor.u.mh vr1{mr2}, r16, vr4
00083c  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000840  46800402  vstore.mz vr0{mr1}, 0(r9)
000844  9f848400  addli r9, r9, 64
000848  3f3091ff  blt.s r2, r25, -1012
00084c  5b6bffff  j -1192
000850  9f0e8fec  addli sp, r30, -2496
000854  e38f2e13  loadli.w r31,  2448(sp)
000858  63cf2e13  loadli.w r30,  2452(sp)
00085c  638e3e13  loadli.w r28,  2456(sp)
000860  e3cd3e13  loadli.w r27,  2460(sp)
000864  638d4e13  loadli.w r26,  2464(sp)
000868  e3cc4e13  loadli.w r25,  2468(sp)
00086c  638c5e13  loadli.w r24,  2472(sp)
000870  e3cb5e13  loadli.w r23,  2476(sp)
000874  638b6e13  loadli.w r22,  2480(sp)
000878  e3ca6e13  loadli.w r21,  2484(sp)
00087c  638a7e13  loadli.w r20,  2488(sp)
000880  e3c97e13  loadli.w r19,  2492(sp)
000884  9f8e8e13  addli sp, sp, 2496
000888  5f800f00  jr r31, 0
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
