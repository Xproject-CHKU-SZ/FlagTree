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
000078  9f09d000  addli r19, zero, 104
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
0000ac  d71c0000  jal 228
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a0eff  addli r20, sp, -128
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  ca108002  vloads_mask16.mz vr1{mr1}, 64(zero)
0000c4  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c8  46041a02  vstore.mz vr1{mr1}, 64(r20)
0000cc  00a00100  mfence { lm, sm }
0000d0  00d00100  sync_group
0000d4  97a01000  xor r1, r1, r1
0000d8  1f8f0e00  addli r30, sp, 0
0000dc  d71c0000  jal 228
0000e0  00400000  trap
0000e4  9f8e8eed  addli sp, sp, -2368
0000e8  2b010000  lui r2, 0
0000ec  80340002  core_id r9
0000f0  1f8f8e11  addli r30, sp, 2240
0000f4  ab500000  lui r1, 5
0000f8  2bf20000  lui r4, 15
0000fc  1bb42400  slli r8, r9, 2
000100  1f010100  addli r2, r2, 0
000104  e303cf00  loadli.w r7,  96(r30)
000108  6343bf00  loadli.w r6,  92(r30)
00010c  9b900001  ori r1, r1, 16
000110  e341cf00  loadli.w r3,  100(r30)
000114  1b12f2ff  ori r4, r4, 4095
000118  8b128110  add.s r5, r2, r8
00011c  8b936320  mul.s r7, r7, r6
000120  00530002  load_param_i r6, 0
000124  0b951210  add.s r10, r5, r1
000128  9f820220  addli r5, r5, 4096
00012c  8b913320  mul.s r3, r7, r3
000130  e74bafee  storeli.w r10, -2116(r30)
000134  73600500  stores.w zero, 0(r10)
000138  00a00300  mfence { lm, sm, gm }
00013c  80210204  csr_set csr3, r4
000140  00d00100  sync_group
000144  e70b5fee  storeli.w r5, -2120(r30)
000148  73e00200  stores.w zero, 0(r5)
00014c  00a00300  mfence { lm, sm, gm }
000150  80210204  csr_set csr3, r4
000154  00d00100  sync_group
000158  674b3fee  storeli.w r3, -2124(r30)
00015c  cbcf6108  ble.s r3, r6, 5104
000160  9b873400  andi r15, r9, 3
000164  eb560f03  load.d r[14:15], 48(r30)
000168  63085f00  loadli.w r16,  40(r30)
00016c  1f1c0000  addli r24, zero, 1
000170  6b5a0f02  load.d r[21:22], 32(r30)
000174  9f015fef  addli r3, r30, -2136
000178  9bc42400  srli r9, r9, 2
00017c  e34c1f00  loadli.w r25,  12(r30)
000180  63458f00  loadli.w r10,  68(r30)
000184  eb5d8f01  load.d r[28:29], 24(r30)
000188  eb550f05  load.d r[12:13], 80(r30)
00018c  9f02ffee  addli r5, r30, -2184
000190  9bb98700  slli r19, r15, 8
000194  b3880928  zext_int2long r[18:19], r19
000198  0b183819  sub.s r16, r16, r19
00019c  0b153519  sub.s r10, r10, r19
0001a0  0bbb1621  mul.sl r[23:24], r[14:15], r[18:19]
0001a4  8b160848  max.s r13, r16, zero
0001a8  1f080002  addli r16, zero, 256
0001ac  173b8b03  sll.d r[23:24], r[23:24], r24
0001b0  8b960641  min.s r13, r13, r16
0001b4  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
0001b8  73b04101  store.d r[21:22], 0(r3)
0001bc  80d10002  load_param_i r3, 1
0001c0  674a3fee  storeli.w r3, -2140(r30)
0001c4  9bb11600  slli r3, r13, 1
0001c8  abf6ffff  lui r13, 1048575
0001cc  670a3fee  storeli.w r3, -2144(r30)
0001d0  9b81f400  andi r3, r9, 15
0001d4  9b9406ff  ori r9, r13, 4080
0001d8  8b963c19  sub.s r13, r25, r19
0001dc  17049400  and r8, r8, r9
0001e0  8b940648  max.s r9, r13, zero
0001e4  e7493fee  storeli.w r3, -2148(r30)
0001e8  8bb61d21  mul.sl r[14:15], r[28:29], r[18:19]
0001ec  0b118110  add.s r2, r2, r8
0001f0  b3830128  zext_int2long r[8:9], r3
0001f4  9f012fef  addli r3, r30, -2160
0001f8  73b07100  store.d r[8:9], 0(r3)
0001fc  0b940441  min.s r8, r9, r16
000200  9f011fef  addli r3, r30, -2168
000204  9f040120  addli r9, r2, 4096
000208  73b0d100  store.d r[14:15], 0(r3)
00020c  9b311400  slli r3, r8, 1
000210  8b160548  max.s r13, r10, zero
000214  0b151110  add.s r10, r2, r1
000218  8b900641  min.s r1, r13, r16
00021c  67483fee  storeli.w r3, -2172(r30)
000220  0bb11521  mul.sl r[3:4], r[12:13], r[18:19]
000224  9f080ffe  addli r17, r30, -256
000228  73b02200  store.d r[3:4], 0(r5)
00022c  9bb61000  slli r13, r1, 1
000230  9f020ffa  addli r5, r30, -768
000234  db090000  j 76
000238  6b518f04  load.d r[3:4], 72(r30)
00023c  9f02ffee  addli r5, r30, -2184
000240  ebd30200  load.d r[8:9], 0(r5)
000244  ab0200f0  lui r5, 983040
000248  0b312920  mul.sl r[3:4], r[19:20], r[3:4]
00024c  97905000  or r1, r1, r5
000250  9f020ffa  addli r5, r30, -768
000254  0b217110  add.ul r[3:4], r[3:4], r[8:9]
000258  eb538f03  load.d r[8:9], 56(r30)
00025c  17318103  sll.d r[3:4], r[3:4], r24
000260  0ba12310  add.ul r[3:4], r[8:9], r[3:4]
000264  ff305100  s_lm2gm r1, r5, 0(r[3:4])
000268  e3404fef  loadli.w r1,  -2140(r30)
00026c  00a00000  mfence { lm }
000270  0b131310  add.s r6, r6, r1
000274  e3406fef  loadli.w r1,  -2124(r30)
000278  3f201300  blt.s r6, r1, 8
00027c  5b5a0200  j 4816
000280  e340cf00  loadli.w r1,  100(r30)
000284  6301cf00  loadli.w r2,  96(r30)
000288  e3014fef  loadli.w r3,  -2144(r30)
00028c  8b101330  div.s r1, r6, r1
000290  8b902030  div.s r1, r1, r2
000294  2b0100f0  lui r2, 983040
000298  17912100  or r2, r3, r2
00029c  1bb94000  slli r18, r1, 4
0002a0  9f005fef  addli r1, r30, -2136
0002a4  ebd30000  load.d r[8:9], 0(r1)
0002a8  9f000ff6  addli r1, r30, -1280
0002ac  7fa11300  l_gm2lm r2, r1, 0(r[8:9])
0002b0  e3403fef  loadli.w r1,  -2148(r30)
0002b4  00a00000  mfence { lm }
0002b8  e3011f00  loadli.w r3,  8(r30)
0002bc  17111900  or r2, r18, r1
0002c0  e3400fef  loadli.w r1,  -2172(r30)
0002c4  3f203100  blt.s r2, r3, 8
0002c8  9f000000  addli r1, zero, 0
0002cc  9f012fef  addli r3, r30, -2160
0002d0  33190928  sext_int2long r[19:20], r18
0002d4  2b0700f0  lui r14, 983040
0002d8  ebd30100  load.d r[8:9], 0(r3)
0002dc  9f011fef  addli r3, r30, -2168
0002e0  9790e000  or r1, r1, r14
0002e4  17197902  or.d r[19:20], r[19:20], r[8:9]
0002e8  eb530f01  load.d r[8:9], 16(r30)
0002ec  0b3a7920  mul.sl r[21:22], r[19:20], r[8:9]
0002f0  ebd30100  load.d r[8:9], 0(r3)
0002f4  0b2a7a10  add.ul r[21:22], r[21:22], r[8:9]
0002f8  eb530f00  load.d r[8:9], 0(r30)
0002fc  173a8a03  sll.d r[21:22], r[21:22], r24
000300  0baa4311  add.ul r[21:22], r[8:9], r[21:22]
000304  ff205a00  l_gm2lm r1, r5, 0(r[21:22])
000308  9f000ff6  addli r1, r30, -1280
00030c  00a00000  mfence { lm }
000310  42120fa2  vload_mask16.mz vr4{mr1}, 1280(r30)
000314  42108fa2  vload_mask16.mz vr0{mr1}, 1344(r30)
000318  c2110fa3  vload_mask16.mz vr3{mr1}, 1408(r30)
00031c  c2128fa3  vload_mask16.mz vr5{mr1}, 1472(r30)
000320  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000324  9f000ff2  addli r1, r30, -1792
000328  c2150fc2  vload_mask16.mz vr11{mr1}, 1536(r30)
00032c  86f00500  vfp162float_h.rn vr1, vr11
000330  06340000  vfp162float_l.rn vr8, vr0
000334  06710000  vfp162float_h.rn vr2, vr0
000338  06f30100  vfp162float_h.rn vr6, vr3
00033c  06750200  vfp162float_h.rn vr10, vr4
000340  86b30200  vfp162float_l.rn vr7, vr5
000344  06b00100  vfp162float_l.rn vr0, vr3
000348  86310200  vfp162float_l.rn vr3, vr4
00034c  06f20200  vfp162float_h.rn vr4, vr5
000350  86b20500  vfp162float_l.rn vr5, vr11
000354  86b50400  vfp162float_l.rn vr11, vr9
000358  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00035c  9690b102  vadd.f.mz.rn vr1{mr1}, vr3, vr11
000360  9f000ff3  addli r1, r30, -1664
000364  86f10400  vfp162float_h.rn vr3, vr9
000368  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00036c  9f008ff6  addli r1, r30, -1216
000370  96103502  vadd.f.mz.rn vr1{mr1}, vr10, vr3
000374  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000378  9f008ff2  addli r1, r30, -1728
00037c  86b10500  vfp162float_l.rn vr3, vr11
000380  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000384  96103402  vadd.f.mz.rn vr1{mr1}, vr8, vr3
000388  9f008ff5  addli r1, r30, -1344
00038c  06f40500  vfp162float_h.rn vr8, vr11
000390  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000394  9f000ff7  addli r1, r30, -1152
000398  96108102  vadd.f.mz.rn vr1{mr1}, vr2, vr8
00039c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0003a0  9f000ff4  addli r1, r30, -1536
0003a4  06b40100  vfp162float_l.rn vr8, vr3
0003a8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0003ac  86f50100  vfp162float_h.rn vr11, vr3
0003b0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0003b4  9f008ff3  addli r1, r30, -1600
0003b8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003bc  9f008ff7  addli r1, r30, -1088
0003c0  1610b302  vadd.f.mz.rn vr0{mr1}, vr6, vr11
0003c4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0003c8  9f008ff4  addli r1, r30, -1472
0003cc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003d0  06300400  vfp162float_l.rn vr0, vr8
0003d4  96900302  vadd.f.mz.rn vr1{mr1}, vr7, vr0
0003d8  86730400  vfp162float_h.rn vr7, vr8
0003dc  9f000ff5  addli r1, r30, -1408
0003e0  16107202  vadd.f.mz.rn vr0{mr1}, vr4, vr7
0003e4  c2110f82  vload_mask16.mz vr3{mr1}, 1024(r30)
0003e8  06b30100  vfp162float_l.rn vr6, vr3
0003ec  86f30100  vfp162float_h.rn vr7, vr3
0003f0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003f4  9f000ff2  addli r1, r30, -1792
0003f8  16906202  vadd.f.mz.rn vr0{mr1}, vr5, vr6
0003fc  42138fc2  vload_mask16.mz vr6{mr1}, 1600(r30)
000400  c2118f82  vload_mask16.mz vr3{mr1}, 1088(r30)
000404  86320300  vfp162float_l.rn vr5, vr6
000408  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00040c  9f000ff5  addli r1, r30, -1408
000410  96157102  vadd.f.mz.rn vr11{mr1}, vr2, vr7
000414  86b30100  vfp162float_l.rn vr7, vr3
000418  16957202  vadd.f.mz.rn vr10{mr1}, vr5, vr7
00041c  86720300  vfp162float_h.rn vr5, vr6
000420  06f30100  vfp162float_h.rn vr6, vr3
000424  c2110fc3  vload_mask16.mz vr3{mr1}, 1664(r30)
000428  42140f83  vload_mask16.mz vr8{mr1}, 1152(r30)
00042c  16916202  vadd.f.mz.rn vr2{mr1}, vr5, vr6
000430  06b30100  vfp162float_l.rn vr6, vr3
000434  86330400  vfp162float_l.rn vr7, vr8
000438  96137302  vadd.f.mz.rn vr7{mr1}, vr6, vr7
00043c  06f30100  vfp162float_h.rn vr6, vr3
000440  86710400  vfp162float_h.rn vr3, vr8
000444  42148fc3  vload_mask16.mz vr8{mr1}, 1728(r30)
000448  96143302  vadd.f.mz.rn vr9{mr1}, vr6, vr3
00044c  42128f83  vload_mask16.mz vr4{mr1}, 1216(r30)
000450  86310400  vfp162float_l.rn vr3, vr8
000454  06330200  vfp162float_l.rn vr6, vr4
000458  96926102  vadd.f.mz.rn vr5{mr1}, vr3, vr6
00045c  86710400  vfp162float_h.rn vr3, vr8
000460  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000464  9f008ff2  addli r1, r30, -1728
000468  06730200  vfp162float_h.rn vr6, vr4
00046c  16936102  vadd.f.mz.rn vr6{mr1}, vr3, vr6
000470  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000474  9f000ff3  addli r1, r30, -1664
000478  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00047c  9f008ff5  addli r1, r30, -1344
000480  b6914102  vmax.f.mz vr3{mr1}, vr3, vr4
000484  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000488  9f000ff4  addli r1, r30, -1536
00048c  b6914102  vmax.f.mz vr3{mr1}, vr3, vr4
000490  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000494  9f008ff3  addli r1, r30, -1600
000498  b6914102  vmax.f.mz vr3{mr1}, vr3, vr4
00049c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0004a0  9f008ff4  addli r1, r30, -1472
0004a4  b6914102  vmax.f.mz vr3{mr1}, vr3, vr4
0004a8  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0004ac  9f008fef  addli r1, r30, -2112
0004b0  b6914102  vmax.f.mz vr3{mr1}, vr3, vr4
0004b4  b6911102  vmax.f.mz vr3{mr1}, vr3, vr1
0004b8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0004bc  9f000ff0  addli r1, r30, -2048
0004c0  b6918102  vmax.f.mz vr3{mr1}, vr3, vr8
0004c4  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0004c8  b6910102  vmax.f.mz vr3{mr1}, vr3, vr0
0004cc  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
0004d0  9f008ff0  addli r1, r30, -1984
0004d4  b691b102  vmax.f.mz vr3{mr1}, vr3, vr11
0004d8  b691a102  vmax.f.mz vr3{mr1}, vr3, vr10
0004dc  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
0004e0  9f008ff1  addli r1, r30, -1856
0004e4  b6912102  vmax.f.mz vr3{mr1}, vr3, vr2
0004e8  12359002  vadd.s.mz vr10{mr1}, zero, vr9
0004ec  b6917102  vmax.f.mz vr3{mr1}, vr3, vr7
0004f0  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0004f4  9f000ff1  addli r1, r30, -1920
0004f8  b6919102  vmax.f.mz vr3{mr1}, vr3, vr9
0004fc  12316002  vadd.s.mz vr2{mr1}, zero, vr6
000500  b6915102  vmax.f.mz vr3{mr1}, vr3, vr5
000504  36932102  vmax.f.mz vr6{mr1}, vr3, vr2
000508  7a171340  vextracti.f r14, 1(vr6)
00050c  7a1a2340  vextracti.f r20, 2(vr6)
000510  fa1a3340  vextracti.f r21, 3(vr6)
000514  fa114340  vextracti.f r3, 4(vr6)
000518  7a1b5340  vextracti.f r22, 5(vr6)
00051c  fa1b6340  vextracti.f r23, 6(vr6)
000520  fa127340  vextracti.f r5, 7(vr6)
000524  fa138340  vextracti.f r7, 8(vr6)
000528  fa1c9340  vextracti.f r25, 9(vr6)
00052c  7a1da340  vextracti.f r26, 10(vr6)
000530  fa1db340  vextracti.f r27, 11(vr6)
000534  7a1ec340  vextracti.f r28, 12(vr6)
000538  7a18d340  vextracti.f r16, 13(vr6)
00053c  7a14e340  vextracti.f r8, 14(vr6)
000540  7a1cf340  vextracti.f r24, 15(vr6)
000544  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000548  9f000ff2  addli r1, r30, -1792
00054c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000550  fa100340  vextracti.f r1, 0(vr6)
000554  8be0e048  max.f r1, r1, r14
000558  8be04049  max.f r1, r1, r20
00055c  8be05049  max.f r1, r1, r21
000560  8be03048  max.f r1, r1, r3
000564  e3017fef  loadli.w r3,  -2120(r30)
000568  8be06049  max.f r1, r1, r22
00056c  8be07049  max.f r1, r1, r23
000570  8be05048  max.f r1, r1, r5
000574  8be07048  max.f r1, r1, r7
000578  8be09049  max.f r1, r1, r25
00057c  8be0a049  max.f r1, r1, r26
000580  8be0b049  max.f r1, r1, r27
000584  8be0c049  max.f r1, r1, r28
000588  8be00049  max.f r1, r1, r16
00058c  8be08048  max.f r1, r1, r8
000590  8be08049  max.f r1, r1, r24
000594  73e01100  stores.w r1, 0(r3)
000598  00a00300  mfence { lm, sm, gm }
00059c  80210204  csr_set csr3, r4
0005a0  00d00100  sync_group
0005a4  bb900700  bneq r15, zero, 36
0005a8  efc00400  loads.w r1, 0(r9)
0005ac  efc14400  loads.w r3, 4(r9)
0005b0  efc28400  loads.w r5, 8(r9)
0005b4  efc3c400  loads.w r7, 12(r9)
0005b8  8be03048  max.f r1, r1, r3
0005bc  8be05048  max.f r1, r1, r5
0005c0  8be07048  max.f r1, r1, r7
0005c4  73e01400  stores.w r1, 0(r9)
0005c8  00a00300  mfence { lm, sm, gm }
0005cc  80210204  csr_set csr3, r4
0005d0  00d00100  sync_group
0005d4  efc00400  loads.w r1, 0(r9)
0005d8  ab010080  lui r3, 524288
0005dc  97a03000  xor r1, r1, r3
0005e0  9f010ff3  addli r3, r30, -1664
0005e4  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0005e8  9f018ff2  addli r3, r30, -1728
0005ec  92910002  vadd.f.mz.rn vr3{mr1}, r1, vr0
0005f0  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
0005f4  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0005f8  9f018ff5  addli r3, r30, -1344
0005fc  92910002  vadd.f.mz.rn vr3{mr1}, r1, vr0
000600  46143fe2  vstore_mask16.mz vr3{mr1}, 1856(r30)
000604  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000608  9f010ff4  addli r3, r30, -1536
00060c  92910002  vadd.f.mz.rn vr3{mr1}, r1, vr0
000610  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
000614  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000618  9f018ff3  addli r3, r30, -1600
00061c  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
000620  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000624  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000628  00a00000  mfence { lm }
00062c  e3810800  loadli.w r3,  0(r17)
000630  e3c20800  loadli.w r5,  4(r17)
000634  e3831800  loadli.w r7,  8(r17)
000638  63c41800  loadli.w r8,  12(r17)
00063c  63872800  loadli.w r14,  16(r17)
000640  63c82800  loadli.w r16,  20(r17)
000644  638a3800  loadli.w r20,  24(r17)
000648  e3ca3800  loadli.w r21,  28(r17)
00064c  638b4800  loadli.w r22,  32(r17)
000650  e3cb4800  loadli.w r23,  36(r17)
000654  638c5800  loadli.w r24,  40(r17)
000658  e3cc5800  loadli.w r25,  44(r17)
00065c  638d6800  loadli.w r26,  48(r17)
000660  e3cd6800  loadli.w r27,  52(r17)
000664  638e7800  loadli.w r28,  56(r17)
000668  e3c57800  loadli.w r11,  60(r17)
00066c  8f810100  exp.f.rn r3, r3
000670  8f820200  exp.f.rn r5, r5
000674  8f830300  exp.f.rn r7, r7
000678  0f040400  exp.f.rn r8, r8
00067c  0f070700  exp.f.rn r14, r14
000680  0f080800  exp.f.rn r16, r16
000684  0f0a0a00  exp.f.rn r20, r20
000688  8f8a0a00  exp.f.rn r21, r21
00068c  0f0b0b00  exp.f.rn r22, r22
000690  8f8b0b00  exp.f.rn r23, r23
000694  0f0c0c00  exp.f.rn r24, r24
000698  8f8c0c00  exp.f.rn r25, r25
00069c  0f0d0d00  exp.f.rn r26, r26
0006a0  8f8d0d00  exp.f.rn r27, r27
0006a4  0f0e0e00  exp.f.rn r28, r28
0006a8  8f850500  exp.f.rn r11, r11
0006ac  67803800  storeli.w r3, 0(r17)
0006b0  67c05800  storeli.w r5, 4(r17)
0006b4  e7807800  storeli.w r7, 8(r17)
0006b8  e7c08800  storeli.w r8, 12(r17)
0006bc  6781e800  storeli.w r14, 16(r17)
0006c0  67c10801  storeli.w r16, 20(r17)
0006c4  e7814801  storeli.w r20, 24(r17)
0006c8  e7c15801  storeli.w r21, 28(r17)
0006cc  67826801  storeli.w r22, 32(r17)
0006d0  67c27801  storeli.w r23, 36(r17)
0006d4  e7828801  storeli.w r24, 40(r17)
0006d8  e7c29801  storeli.w r25, 44(r17)
0006dc  6783a801  storeli.w r26, 48(r17)
0006e0  67c3b801  storeli.w r27, 52(r17)
0006e4  e783c801  storeli.w r28, 56(r17)
0006e8  e7c3b800  storeli.w r11, 60(r17)
0006ec  e3818800  loadli.w r3,  64(r17)
0006f0  e3c28800  loadli.w r5,  68(r17)
0006f4  e3839800  loadli.w r7,  72(r17)
0006f8  63c49800  loadli.w r8,  76(r17)
0006fc  6387a800  loadli.w r14,  80(r17)
000700  63c8a800  loadli.w r16,  84(r17)
000704  638ab800  loadli.w r20,  88(r17)
000708  e3cab800  loadli.w r21,  92(r17)
00070c  638bc800  loadli.w r22,  96(r17)
000710  e3cbc800  loadli.w r23,  100(r17)
000714  638cd800  loadli.w r24,  104(r17)
000718  e3ccd800  loadli.w r25,  108(r17)
00071c  638de800  loadli.w r26,  112(r17)
000720  e3cde800  loadli.w r27,  116(r17)
000724  638ef800  loadli.w r28,  120(r17)
000728  e3c5f800  loadli.w r11,  124(r17)
00072c  8f810100  exp.f.rn r3, r3
000730  8f820200  exp.f.rn r5, r5
000734  8f830300  exp.f.rn r7, r7
000738  0f040400  exp.f.rn r8, r8
00073c  0f070700  exp.f.rn r14, r14
000740  0f080800  exp.f.rn r16, r16
000744  0f0a0a00  exp.f.rn r20, r20
000748  8f8a0a00  exp.f.rn r21, r21
00074c  0f0b0b00  exp.f.rn r22, r22
000750  8f8b0b00  exp.f.rn r23, r23
000754  0f0c0c00  exp.f.rn r24, r24
000758  8f8c0c00  exp.f.rn r25, r25
00075c  0f0d0d00  exp.f.rn r26, r26
000760  8f8d0d00  exp.f.rn r27, r27
000764  0f0e0e00  exp.f.rn r28, r28
000768  8f850500  exp.f.rn r11, r11
00076c  67843800  storeli.w r3, 64(r17)
000770  67c45800  storeli.w r5, 68(r17)
000774  e7847800  storeli.w r7, 72(r17)
000778  e7c48800  storeli.w r8, 76(r17)
00077c  6785e800  storeli.w r14, 80(r17)
000780  67c50801  storeli.w r16, 84(r17)
000784  e7854801  storeli.w r20, 88(r17)
000788  e7c55801  storeli.w r21, 92(r17)
00078c  67866801  storeli.w r22, 96(r17)
000790  67c67801  storeli.w r23, 100(r17)
000794  e7868801  storeli.w r24, 104(r17)
000798  e7c69801  storeli.w r25, 108(r17)
00079c  6787a801  storeli.w r26, 112(r17)
0007a0  67c7b801  storeli.w r27, 116(r17)
0007a4  e787c801  storeli.w r28, 120(r17)
0007a8  e7c7b800  storeli.w r11, 124(r17)
0007ac  e3810801  loadli.w r3,  128(r17)
0007b0  e3c20801  loadli.w r5,  132(r17)
0007b4  e3831801  loadli.w r7,  136(r17)
0007b8  63c41801  loadli.w r8,  140(r17)
0007bc  63872801  loadli.w r14,  144(r17)
0007c0  63c82801  loadli.w r16,  148(r17)
0007c4  638a3801  loadli.w r20,  152(r17)
0007c8  e3ca3801  loadli.w r21,  156(r17)
0007cc  638b4801  loadli.w r22,  160(r17)
0007d0  e3cb4801  loadli.w r23,  164(r17)
0007d4  638c5801  loadli.w r24,  168(r17)
0007d8  e3cc5801  loadli.w r25,  172(r17)
0007dc  638d6801  loadli.w r26,  176(r17)
0007e0  e3cd6801  loadli.w r27,  180(r17)
0007e4  638e7801  loadli.w r28,  184(r17)
0007e8  e3c57801  loadli.w r11,  188(r17)
0007ec  8f810100  exp.f.rn r3, r3
0007f0  8f820200  exp.f.rn r5, r5
0007f4  8f830300  exp.f.rn r7, r7
0007f8  0f040400  exp.f.rn r8, r8
0007fc  0f070700  exp.f.rn r14, r14
000800  0f080800  exp.f.rn r16, r16
000804  0f0a0a00  exp.f.rn r20, r20
000808  8f8a0a00  exp.f.rn r21, r21
00080c  0f0b0b00  exp.f.rn r22, r22
000810  8f8b0b00  exp.f.rn r23, r23
000814  0f0c0c00  exp.f.rn r24, r24
000818  8f8c0c00  exp.f.rn r25, r25
00081c  0f0d0d00  exp.f.rn r26, r26
000820  8f8d0d00  exp.f.rn r27, r27
000824  0f0e0e00  exp.f.rn r28, r28
000828  8f850500  exp.f.rn r11, r11
00082c  67883800  storeli.w r3, 128(r17)
000830  67c85800  storeli.w r5, 132(r17)
000834  e7887800  storeli.w r7, 136(r17)
000838  e7c88800  storeli.w r8, 140(r17)
00083c  6789e800  storeli.w r14, 144(r17)
000840  67c90801  storeli.w r16, 148(r17)
000844  e7894801  storeli.w r20, 152(r17)
000848  e7c95801  storeli.w r21, 156(r17)
00084c  678a6801  storeli.w r22, 160(r17)
000850  67ca7801  storeli.w r23, 164(r17)
000854  e78a8801  storeli.w r24, 168(r17)
000858  e7ca9801  storeli.w r25, 172(r17)
00085c  678ba801  storeli.w r26, 176(r17)
000860  67cbb801  storeli.w r27, 180(r17)
000864  e78bc801  storeli.w r28, 184(r17)
000868  e7cbb800  storeli.w r11, 188(r17)
00086c  e3818801  loadli.w r3,  192(r17)
000870  e3c28801  loadli.w r5,  196(r17)
000874  e3839801  loadli.w r7,  200(r17)
000878  63c49801  loadli.w r8,  204(r17)
00087c  6387a801  loadli.w r14,  208(r17)
000880  63c8a801  loadli.w r16,  212(r17)
000884  638ab801  loadli.w r20,  216(r17)
000888  e3cab801  loadli.w r21,  220(r17)
00088c  638bc801  loadli.w r22,  224(r17)
000890  e3cbc801  loadli.w r23,  228(r17)
000894  638cd801  loadli.w r24,  232(r17)
000898  e3ccd801  loadli.w r25,  236(r17)
00089c  638de801  loadli.w r26,  240(r17)
0008a0  e3cde801  loadli.w r27,  244(r17)
0008a4  638ef801  loadli.w r28,  248(r17)
0008a8  e3c5f801  loadli.w r11,  252(r17)
0008ac  8f810100  exp.f.rn r3, r3
0008b0  8f820200  exp.f.rn r5, r5
0008b4  8f830300  exp.f.rn r7, r7
0008b8  0f040400  exp.f.rn r8, r8
0008bc  0f070700  exp.f.rn r14, r14
0008c0  0f080800  exp.f.rn r16, r16
0008c4  0f0a0a00  exp.f.rn r20, r20
0008c8  8f8a0a00  exp.f.rn r21, r21
0008cc  0f0b0b00  exp.f.rn r22, r22
0008d0  8f8b0b00  exp.f.rn r23, r23
0008d4  0f0c0c00  exp.f.rn r24, r24
0008d8  8f8c0c00  exp.f.rn r25, r25
0008dc  0f0d0d00  exp.f.rn r26, r26
0008e0  8f8d0d00  exp.f.rn r27, r27
0008e4  0f0e0e00  exp.f.rn r28, r28
0008e8  8f850500  exp.f.rn r11, r11
0008ec  678c3800  storeli.w r3, 192(r17)
0008f0  67cc5800  storeli.w r5, 196(r17)
0008f4  e78c7800  storeli.w r7, 200(r17)
0008f8  e7cc8800  storeli.w r8, 204(r17)
0008fc  678de800  storeli.w r14, 208(r17)
000900  67cd0801  storeli.w r16, 212(r17)
000904  e78d4801  storeli.w r20, 216(r17)
000908  e7cd5801  storeli.w r21, 220(r17)
00090c  678e6801  storeli.w r22, 224(r17)
000910  67ce7801  storeli.w r23, 228(r17)
000914  e78e8801  storeli.w r24, 232(r17)
000918  e7ce9801  storeli.w r25, 236(r17)
00091c  678fa801  storeli.w r26, 240(r17)
000920  67cfb801  storeli.w r27, 244(r17)
000924  e78fc801  storeli.w r28, 248(r17)
000928  e7cfb800  storeli.w r11, 252(r17)
00092c  00a00000  mfence { lm }
000930  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
000934  c2150fe2  vload_mask16.mz vr11{mr1}, 1792(r30)
000938  42128fe2  vload_mask16.mz vr4{mr1}, 1856(r30)
00093c  9f018ff4  addli r3, r30, -1472
000940  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
000944  42138fe3  vload_mask16.mz vr6{mr1}, 1984(r30)
000948  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
00094c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000950  9f018fef  addli r3, r30, -2112
000954  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
000958  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
00095c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000960  9f010ff5  addli r3, r30, -1408
000964  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000968  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
00096c  96904502  vadd.f.mz.rn vr1{mr1}, vr11, vr4
000970  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000974  9f018ff5  addli r3, r30, -1344
000978  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
00097c  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
000980  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
000984  00a00000  mfence { lm }
000988  e3810800  loadli.w r3,  0(r17)
00098c  e3c20800  loadli.w r5,  4(r17)
000990  e3831800  loadli.w r7,  8(r17)
000994  63c41800  loadli.w r8,  12(r17)
000998  e3852800  loadli.w r11,  16(r17)
00099c  63c62800  loadli.w r12,  20(r17)
0009a0  63873800  loadli.w r14,  24(r17)
0009a4  63c83800  loadli.w r16,  28(r17)
0009a8  638a4800  loadli.w r20,  32(r17)
0009ac  e3ca4800  loadli.w r21,  36(r17)
0009b0  638b5800  loadli.w r22,  40(r17)
0009b4  e3cb5800  loadli.w r23,  44(r17)
0009b8  638c6800  loadli.w r24,  48(r17)
0009bc  e3cc6800  loadli.w r25,  52(r17)
0009c0  638d7800  loadli.w r26,  56(r17)
0009c4  e3cd7800  loadli.w r27,  60(r17)
0009c8  8f810100  exp.f.rn r3, r3
0009cc  8f820200  exp.f.rn r5, r5
0009d0  8f830300  exp.f.rn r7, r7
0009d4  0f040400  exp.f.rn r8, r8
0009d8  8f850500  exp.f.rn r11, r11
0009dc  0f060600  exp.f.rn r12, r12
0009e0  0f070700  exp.f.rn r14, r14
0009e4  0f080800  exp.f.rn r16, r16
0009e8  0f0a0a00  exp.f.rn r20, r20
0009ec  8f8a0a00  exp.f.rn r21, r21
0009f0  0f0b0b00  exp.f.rn r22, r22
0009f4  8f8b0b00  exp.f.rn r23, r23
0009f8  0f0c0c00  exp.f.rn r24, r24
0009fc  8f8c0c00  exp.f.rn r25, r25
000a00  0f0d0d00  exp.f.rn r26, r26
000a04  8f8d0d00  exp.f.rn r27, r27
000a08  67803800  storeli.w r3, 0(r17)
000a0c  67c05800  storeli.w r5, 4(r17)
000a10  e7807800  storeli.w r7, 8(r17)
000a14  e7c08800  storeli.w r8, 12(r17)
000a18  6781b800  storeli.w r11, 16(r17)
000a1c  67c1c800  storeli.w r12, 20(r17)
000a20  e781e800  storeli.w r14, 24(r17)
000a24  e7c10801  storeli.w r16, 28(r17)
000a28  67824801  storeli.w r20, 32(r17)
000a2c  67c25801  storeli.w r21, 36(r17)
000a30  e7826801  storeli.w r22, 40(r17)
000a34  e7c27801  storeli.w r23, 44(r17)
000a38  67838801  storeli.w r24, 48(r17)
000a3c  67c39801  storeli.w r25, 52(r17)
000a40  e783a801  storeli.w r26, 56(r17)
000a44  e7c3b801  storeli.w r27, 60(r17)
000a48  e3818800  loadli.w r3,  64(r17)
000a4c  e3c28800  loadli.w r5,  68(r17)
000a50  e3839800  loadli.w r7,  72(r17)
000a54  63c49800  loadli.w r8,  76(r17)
000a58  e385a800  loadli.w r11,  80(r17)
000a5c  63c6a800  loadli.w r12,  84(r17)
000a60  6387b800  loadli.w r14,  88(r17)
000a64  63c8b800  loadli.w r16,  92(r17)
000a68  638ac800  loadli.w r20,  96(r17)
000a6c  e3cac800  loadli.w r21,  100(r17)
000a70  638bd800  loadli.w r22,  104(r17)
000a74  e3cbd800  loadli.w r23,  108(r17)
000a78  638ce800  loadli.w r24,  112(r17)
000a7c  e3cce800  loadli.w r25,  116(r17)
000a80  638df800  loadli.w r26,  120(r17)
000a84  e3cdf800  loadli.w r27,  124(r17)
000a88  8f810100  exp.f.rn r3, r3
000a8c  8f820200  exp.f.rn r5, r5
000a90  8f830300  exp.f.rn r7, r7
000a94  0f040400  exp.f.rn r8, r8
000a98  8f850500  exp.f.rn r11, r11
000a9c  0f060600  exp.f.rn r12, r12
000aa0  0f070700  exp.f.rn r14, r14
000aa4  0f080800  exp.f.rn r16, r16
000aa8  0f0a0a00  exp.f.rn r20, r20
000aac  8f8a0a00  exp.f.rn r21, r21
000ab0  0f0b0b00  exp.f.rn r22, r22
000ab4  8f8b0b00  exp.f.rn r23, r23
000ab8  0f0c0c00  exp.f.rn r24, r24
000abc  8f8c0c00  exp.f.rn r25, r25
000ac0  0f0d0d00  exp.f.rn r26, r26
000ac4  8f8d0d00  exp.f.rn r27, r27
000ac8  67843800  storeli.w r3, 64(r17)
000acc  67c45800  storeli.w r5, 68(r17)
000ad0  e7847800  storeli.w r7, 72(r17)
000ad4  e7c48800  storeli.w r8, 76(r17)
000ad8  6785b800  storeli.w r11, 80(r17)
000adc  67c5c800  storeli.w r12, 84(r17)
000ae0  e785e800  storeli.w r14, 88(r17)
000ae4  e7c50801  storeli.w r16, 92(r17)
000ae8  67864801  storeli.w r20, 96(r17)
000aec  67c65801  storeli.w r21, 100(r17)
000af0  e7866801  storeli.w r22, 104(r17)
000af4  e7c67801  storeli.w r23, 108(r17)
000af8  67878801  storeli.w r24, 112(r17)
000afc  67c79801  storeli.w r25, 116(r17)
000b00  e787a801  storeli.w r26, 120(r17)
000b04  e7c7b801  storeli.w r27, 124(r17)
000b08  e3810801  loadli.w r3,  128(r17)
000b0c  e3c20801  loadli.w r5,  132(r17)
000b10  e3831801  loadli.w r7,  136(r17)
000b14  63c41801  loadli.w r8,  140(r17)
000b18  e3852801  loadli.w r11,  144(r17)
000b1c  63c62801  loadli.w r12,  148(r17)
000b20  63873801  loadli.w r14,  152(r17)
000b24  63c83801  loadli.w r16,  156(r17)
000b28  638a4801  loadli.w r20,  160(r17)
000b2c  e3ca4801  loadli.w r21,  164(r17)
000b30  638b5801  loadli.w r22,  168(r17)
000b34  e3cb5801  loadli.w r23,  172(r17)
000b38  638c6801  loadli.w r24,  176(r17)
000b3c  e3cc6801  loadli.w r25,  180(r17)
000b40  638d7801  loadli.w r26,  184(r17)
000b44  e3cd7801  loadli.w r27,  188(r17)
000b48  8f810100  exp.f.rn r3, r3
000b4c  8f820200  exp.f.rn r5, r5
000b50  8f830300  exp.f.rn r7, r7
000b54  0f040400  exp.f.rn r8, r8
000b58  8f850500  exp.f.rn r11, r11
000b5c  0f060600  exp.f.rn r12, r12
000b60  0f070700  exp.f.rn r14, r14
000b64  0f080800  exp.f.rn r16, r16
000b68  0f0a0a00  exp.f.rn r20, r20
000b6c  8f8a0a00  exp.f.rn r21, r21
000b70  0f0b0b00  exp.f.rn r22, r22
000b74  8f8b0b00  exp.f.rn r23, r23
000b78  0f0c0c00  exp.f.rn r24, r24
000b7c  8f8c0c00  exp.f.rn r25, r25
000b80  0f0d0d00  exp.f.rn r26, r26
000b84  8f8d0d00  exp.f.rn r27, r27
000b88  67883800  storeli.w r3, 128(r17)
000b8c  67c85800  storeli.w r5, 132(r17)
000b90  e7887800  storeli.w r7, 136(r17)
000b94  e7c88800  storeli.w r8, 140(r17)
000b98  6789b800  storeli.w r11, 144(r17)
000b9c  67c9c800  storeli.w r12, 148(r17)
000ba0  e789e800  storeli.w r14, 152(r17)
000ba4  e7c90801  storeli.w r16, 156(r17)
000ba8  678a4801  storeli.w r20, 160(r17)
000bac  67ca5801  storeli.w r21, 164(r17)
000bb0  e78a6801  storeli.w r22, 168(r17)
000bb4  e7ca7801  storeli.w r23, 172(r17)
000bb8  678b8801  storeli.w r24, 176(r17)
000bbc  67cb9801  storeli.w r25, 180(r17)
000bc0  e78ba801  storeli.w r26, 184(r17)
000bc4  e7cbb801  storeli.w r27, 188(r17)
000bc8  e3818801  loadli.w r3,  192(r17)
000bcc  e3c28801  loadli.w r5,  196(r17)
000bd0  e3839801  loadli.w r7,  200(r17)
000bd4  63c49801  loadli.w r8,  204(r17)
000bd8  e385a801  loadli.w r11,  208(r17)
000bdc  63c6a801  loadli.w r12,  212(r17)
000be0  6387b801  loadli.w r14,  216(r17)
000be4  63c8b801  loadli.w r16,  220(r17)
000be8  638ac801  loadli.w r20,  224(r17)
000bec  e3cac801  loadli.w r21,  228(r17)
000bf0  638bd801  loadli.w r22,  232(r17)
000bf4  e3cbd801  loadli.w r23,  236(r17)
000bf8  638ce801  loadli.w r24,  240(r17)
000bfc  e3cce801  loadli.w r25,  244(r17)
000c00  638df801  loadli.w r26,  248(r17)
000c04  e3cdf801  loadli.w r27,  252(r17)
000c08  8f810100  exp.f.rn r3, r3
000c0c  8f820200  exp.f.rn r5, r5
000c10  8f830300  exp.f.rn r7, r7
000c14  0f040400  exp.f.rn r8, r8
000c18  8f850500  exp.f.rn r11, r11
000c1c  0f060600  exp.f.rn r12, r12
000c20  0f070700  exp.f.rn r14, r14
000c24  0f080800  exp.f.rn r16, r16
000c28  0f0a0a00  exp.f.rn r20, r20
000c2c  8f8a0a00  exp.f.rn r21, r21
000c30  0f0b0b00  exp.f.rn r22, r22
000c34  8f8b0b00  exp.f.rn r23, r23
000c38  0f0c0c00  exp.f.rn r24, r24
000c3c  8f8c0c00  exp.f.rn r25, r25
000c40  0f0d0d00  exp.f.rn r26, r26
000c44  8f8d0d00  exp.f.rn r27, r27
000c48  678c3800  storeli.w r3, 192(r17)
000c4c  67cc5800  storeli.w r5, 196(r17)
000c50  e78c7800  storeli.w r7, 200(r17)
000c54  e7cc8800  storeli.w r8, 204(r17)
000c58  678db800  storeli.w r11, 208(r17)
000c5c  67cdc800  storeli.w r12, 212(r17)
000c60  e78de800  storeli.w r14, 216(r17)
000c64  e7cd0801  storeli.w r16, 220(r17)
000c68  678e4801  storeli.w r20, 224(r17)
000c6c  67ce5801  storeli.w r21, 228(r17)
000c70  e78e6801  storeli.w r22, 232(r17)
000c74  e7ce7801  storeli.w r23, 236(r17)
000c78  678f8801  storeli.w r24, 240(r17)
000c7c  67cf9801  storeli.w r25, 244(r17)
000c80  e78fa801  storeli.w r26, 248(r17)
000c84  e7cfb801  storeli.w r27, 252(r17)
000c88  00a00000  mfence { lm }
000c8c  16903002  vadd.f.mz.rn vr0{mr1}, vr1, vr3
000c90  c2130fe2  vload_mask16.mz vr7{mr1}, 1792(r30)
000c94  9f010ff5  addli r3, r30, -1408
000c98  92908002  vadd.f.mz.rn vr1{mr1}, r1, vr8
000c9c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
000ca0  9f010ff4  addli r3, r30, -1536
000ca4  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
000ca8  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000cac  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
000cb0  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
000cb4  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000cb8  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000cbc  9f010ff0  addli r3, r30, -2048
000cc0  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000cc4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000cc8  9f018ff0  addli r3, r30, -1984
000ccc  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000cd0  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000cd4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000cd8  9f018ff1  addli r3, r30, -1856
000cdc  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000ce0  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
000ce4  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000ce8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000cec  9f010ff1  addli r3, r30, -1920
000cf0  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000cf4  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000cf8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000cfc  00a00000  mfence { lm }
000d00  e3810800  loadli.w r3,  0(r17)
000d04  e3c20800  loadli.w r5,  4(r17)
000d08  e3831800  loadli.w r7,  8(r17)
000d0c  63c41800  loadli.w r8,  12(r17)
000d10  e3852800  loadli.w r11,  16(r17)
000d14  63c62800  loadli.w r12,  20(r17)
000d18  63873800  loadli.w r14,  24(r17)
000d1c  63c83800  loadli.w r16,  28(r17)
000d20  638a4800  loadli.w r20,  32(r17)
000d24  e3ca4800  loadli.w r21,  36(r17)
000d28  638b5800  loadli.w r22,  40(r17)
000d2c  e3cb5800  loadli.w r23,  44(r17)
000d30  638c6800  loadli.w r24,  48(r17)
000d34  e3cc6800  loadli.w r25,  52(r17)
000d38  638d7800  loadli.w r26,  56(r17)
000d3c  e3cd7800  loadli.w r27,  60(r17)
000d40  8f810100  exp.f.rn r3, r3
000d44  8f820200  exp.f.rn r5, r5
000d48  8f830300  exp.f.rn r7, r7
000d4c  0f040400  exp.f.rn r8, r8
000d50  8f850500  exp.f.rn r11, r11
000d54  0f060600  exp.f.rn r12, r12
000d58  0f070700  exp.f.rn r14, r14
000d5c  0f080800  exp.f.rn r16, r16
000d60  0f0a0a00  exp.f.rn r20, r20
000d64  8f8a0a00  exp.f.rn r21, r21
000d68  0f0b0b00  exp.f.rn r22, r22
000d6c  8f8b0b00  exp.f.rn r23, r23
000d70  0f0c0c00  exp.f.rn r24, r24
000d74  8f8c0c00  exp.f.rn r25, r25
000d78  0f0d0d00  exp.f.rn r26, r26
000d7c  8f8d0d00  exp.f.rn r27, r27
000d80  67803800  storeli.w r3, 0(r17)
000d84  67c05800  storeli.w r5, 4(r17)
000d88  e7807800  storeli.w r7, 8(r17)
000d8c  e7c08800  storeli.w r8, 12(r17)
000d90  6781b800  storeli.w r11, 16(r17)
000d94  67c1c800  storeli.w r12, 20(r17)
000d98  e781e800  storeli.w r14, 24(r17)
000d9c  e7c10801  storeli.w r16, 28(r17)
000da0  67824801  storeli.w r20, 32(r17)
000da4  67c25801  storeli.w r21, 36(r17)
000da8  e7826801  storeli.w r22, 40(r17)
000dac  e7c27801  storeli.w r23, 44(r17)
000db0  67838801  storeli.w r24, 48(r17)
000db4  67c39801  storeli.w r25, 52(r17)
000db8  e783a801  storeli.w r26, 56(r17)
000dbc  e7c3b801  storeli.w r27, 60(r17)
000dc0  e3818800  loadli.w r3,  64(r17)
000dc4  e3c28800  loadli.w r5,  68(r17)
000dc8  e3839800  loadli.w r7,  72(r17)
000dcc  63c49800  loadli.w r8,  76(r17)
000dd0  e385a800  loadli.w r11,  80(r17)
000dd4  63c6a800  loadli.w r12,  84(r17)
000dd8  6387b800  loadli.w r14,  88(r17)
000ddc  63c8b800  loadli.w r16,  92(r17)
000de0  638ac800  loadli.w r20,  96(r17)
000de4  e3cac800  loadli.w r21,  100(r17)
000de8  638bd800  loadli.w r22,  104(r17)
000dec  e3cbd800  loadli.w r23,  108(r17)
000df0  638ce800  loadli.w r24,  112(r17)
000df4  e3cce800  loadli.w r25,  116(r17)
000df8  638df800  loadli.w r26,  120(r17)
000dfc  e3cdf800  loadli.w r27,  124(r17)
000e00  8f810100  exp.f.rn r3, r3
000e04  8f820200  exp.f.rn r5, r5
000e08  8f830300  exp.f.rn r7, r7
000e0c  0f040400  exp.f.rn r8, r8
000e10  8f850500  exp.f.rn r11, r11
000e14  0f060600  exp.f.rn r12, r12
000e18  0f070700  exp.f.rn r14, r14
000e1c  0f080800  exp.f.rn r16, r16
000e20  0f0a0a00  exp.f.rn r20, r20
000e24  8f8a0a00  exp.f.rn r21, r21
000e28  0f0b0b00  exp.f.rn r22, r22
000e2c  8f8b0b00  exp.f.rn r23, r23
000e30  0f0c0c00  exp.f.rn r24, r24
000e34  8f8c0c00  exp.f.rn r25, r25
000e38  0f0d0d00  exp.f.rn r26, r26
000e3c  8f8d0d00  exp.f.rn r27, r27
000e40  67843800  storeli.w r3, 64(r17)
000e44  67c45800  storeli.w r5, 68(r17)
000e48  e7847800  storeli.w r7, 72(r17)
000e4c  e7c48800  storeli.w r8, 76(r17)
000e50  6785b800  storeli.w r11, 80(r17)
000e54  67c5c800  storeli.w r12, 84(r17)
000e58  e785e800  storeli.w r14, 88(r17)
000e5c  e7c50801  storeli.w r16, 92(r17)
000e60  67864801  storeli.w r20, 96(r17)
000e64  67c65801  storeli.w r21, 100(r17)
000e68  e7866801  storeli.w r22, 104(r17)
000e6c  e7c67801  storeli.w r23, 108(r17)
000e70  67878801  storeli.w r24, 112(r17)
000e74  67c79801  storeli.w r25, 116(r17)
000e78  e787a801  storeli.w r26, 120(r17)
000e7c  e7c7b801  storeli.w r27, 124(r17)
000e80  e3810801  loadli.w r3,  128(r17)
000e84  e3c20801  loadli.w r5,  132(r17)
000e88  e3831801  loadli.w r7,  136(r17)
000e8c  63c41801  loadli.w r8,  140(r17)
000e90  e3852801  loadli.w r11,  144(r17)
000e94  63c62801  loadli.w r12,  148(r17)
000e98  63873801  loadli.w r14,  152(r17)
000e9c  63c83801  loadli.w r16,  156(r17)
000ea0  638a4801  loadli.w r20,  160(r17)
000ea4  e3ca4801  loadli.w r21,  164(r17)
000ea8  638b5801  loadli.w r22,  168(r17)
000eac  e3cb5801  loadli.w r23,  172(r17)
000eb0  638c6801  loadli.w r24,  176(r17)
000eb4  e3cc6801  loadli.w r25,  180(r17)
000eb8  638d7801  loadli.w r26,  184(r17)
000ebc  e3cd7801  loadli.w r27,  188(r17)
000ec0  8f810100  exp.f.rn r3, r3
000ec4  8f820200  exp.f.rn r5, r5
000ec8  8f830300  exp.f.rn r7, r7
000ecc  0f040400  exp.f.rn r8, r8
000ed0  8f850500  exp.f.rn r11, r11
000ed4  0f060600  exp.f.rn r12, r12
000ed8  0f070700  exp.f.rn r14, r14
000edc  0f080800  exp.f.rn r16, r16
000ee0  0f0a0a00  exp.f.rn r20, r20
000ee4  8f8a0a00  exp.f.rn r21, r21
000ee8  0f0b0b00  exp.f.rn r22, r22
000eec  8f8b0b00  exp.f.rn r23, r23
000ef0  0f0c0c00  exp.f.rn r24, r24
000ef4  8f8c0c00  exp.f.rn r25, r25
000ef8  0f0d0d00  exp.f.rn r26, r26
000efc  8f8d0d00  exp.f.rn r27, r27
000f00  67883800  storeli.w r3, 128(r17)
000f04  67c85800  storeli.w r5, 132(r17)
000f08  e7887800  storeli.w r7, 136(r17)
000f0c  e7c88800  storeli.w r8, 140(r17)
000f10  6789b800  storeli.w r11, 144(r17)
000f14  67c9c800  storeli.w r12, 148(r17)
000f18  e789e800  storeli.w r14, 152(r17)
000f1c  e7c90801  storeli.w r16, 156(r17)
000f20  678a4801  storeli.w r20, 160(r17)
000f24  67ca5801  storeli.w r21, 164(r17)
000f28  e78a6801  storeli.w r22, 168(r17)
000f2c  e7ca7801  storeli.w r23, 172(r17)
000f30  678b8801  storeli.w r24, 176(r17)
000f34  67cb9801  storeli.w r25, 180(r17)
000f38  e78ba801  storeli.w r26, 184(r17)
000f3c  e7cbb801  storeli.w r27, 188(r17)
000f40  e3818801  loadli.w r3,  192(r17)
000f44  e3c28801  loadli.w r5,  196(r17)
000f48  e3839801  loadli.w r7,  200(r17)
000f4c  63c49801  loadli.w r8,  204(r17)
000f50  e385a801  loadli.w r11,  208(r17)
000f54  63c6a801  loadli.w r12,  212(r17)
000f58  6387b801  loadli.w r14,  216(r17)
000f5c  63c8b801  loadli.w r16,  220(r17)
000f60  638ac801  loadli.w r20,  224(r17)
000f64  e3cac801  loadli.w r21,  228(r17)
000f68  638bd801  loadli.w r22,  232(r17)
000f6c  e3cbd801  loadli.w r23,  236(r17)
000f70  638ce801  loadli.w r24,  240(r17)
000f74  e3cce801  loadli.w r25,  244(r17)
000f78  638df801  loadli.w r26,  248(r17)
000f7c  e3cdf801  loadli.w r27,  252(r17)
000f80  8f810100  exp.f.rn r3, r3
000f84  8f820200  exp.f.rn r5, r5
000f88  8f830300  exp.f.rn r7, r7
000f8c  0f040400  exp.f.rn r8, r8
000f90  8f850500  exp.f.rn r11, r11
000f94  0f060600  exp.f.rn r12, r12
000f98  0f070700  exp.f.rn r14, r14
000f9c  0f080800  exp.f.rn r16, r16
000fa0  0f0a0a00  exp.f.rn r20, r20
000fa4  8f8a0a00  exp.f.rn r21, r21
000fa8  0f0b0b00  exp.f.rn r22, r22
000fac  8f8b0b00  exp.f.rn r23, r23
000fb0  0f0c0c00  exp.f.rn r24, r24
000fb4  8f8c0c00  exp.f.rn r25, r25
000fb8  0f0d0d00  exp.f.rn r26, r26
000fbc  8f8d0d00  exp.f.rn r27, r27
000fc0  678c3800  storeli.w r3, 192(r17)
000fc4  67cc5800  storeli.w r5, 196(r17)
000fc8  e78c7800  storeli.w r7, 200(r17)
000fcc  e7cc8800  storeli.w r8, 204(r17)
000fd0  678db800  storeli.w r11, 208(r17)
000fd4  67cdc800  storeli.w r12, 212(r17)
000fd8  e78de800  storeli.w r14, 216(r17)
000fdc  e7cd0801  storeli.w r16, 220(r17)
000fe0  678e4801  storeli.w r20, 224(r17)
000fe4  67ce5801  storeli.w r21, 228(r17)
000fe8  e78e6801  storeli.w r22, 232(r17)
000fec  e7ce7801  storeli.w r23, 236(r17)
000ff0  678f8801  storeli.w r24, 240(r17)
000ff4  67cf9801  storeli.w r25, 244(r17)
000ff8  e78fa801  storeli.w r26, 248(r17)
000ffc  e7cfb801  storeli.w r27, 252(r17)
001000  00a00000  mfence { lm }
001004  c2140fe2  vload_mask16.mz vr9{mr1}, 1792(r30)
001008  9f018ff4  addli r3, r30, -1472
00100c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001010  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
001014  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
001018  9f018ff3  addli r3, r30, -1600
00101c  42148fe2  vload_mask16.mz vr8{mr1}, 1856(r30)
001020  c2130fe3  vload_mask16.mz vr7{mr1}, 1920(r30)
001024  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001028  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
00102c  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001030  9290a002  vadd.f.mz.rn vr1{mr1}, r1, vr10
001034  46909102  vstore_mask16.mz vr9{mr1}, 0(r3)
001038  9f010ff2  addli r3, r30, -1792
00103c  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001040  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001044  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001048  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
00104c  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001050  92902002  vadd.f.mz.rn vr1{mr1}, r1, vr2
001054  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001058  00a00000  mfence { lm }
00105c  e3800800  loadli.w r1,  0(r17)
001060  e3c10800  loadli.w r3,  4(r17)
001064  e3821800  loadli.w r5,  8(r17)
001068  e3c31800  loadli.w r7,  12(r17)
00106c  63842800  loadli.w r8,  16(r17)
001070  e3c52800  loadli.w r11,  20(r17)
001074  63863800  loadli.w r12,  24(r17)
001078  63c73800  loadli.w r14,  28(r17)
00107c  63884800  loadli.w r16,  32(r17)
001080  63ca4800  loadli.w r20,  36(r17)
001084  e38a5800  loadli.w r21,  40(r17)
001088  63cb5800  loadli.w r22,  44(r17)
00108c  e38b6800  loadli.w r23,  48(r17)
001090  63cc6800  loadli.w r24,  52(r17)
001094  e38c7800  loadli.w r25,  56(r17)
001098  63cd7800  loadli.w r26,  60(r17)
00109c  8f800000  exp.f.rn r1, r1
0010a0  8f810100  exp.f.rn r3, r3
0010a4  8f820200  exp.f.rn r5, r5
0010a8  8f830300  exp.f.rn r7, r7
0010ac  0f040400  exp.f.rn r8, r8
0010b0  8f850500  exp.f.rn r11, r11
0010b4  0f060600  exp.f.rn r12, r12
0010b8  0f070700  exp.f.rn r14, r14
0010bc  0f080800  exp.f.rn r16, r16
0010c0  0f0a0a00  exp.f.rn r20, r20
0010c4  8f8a0a00  exp.f.rn r21, r21
0010c8  0f0b0b00  exp.f.rn r22, r22
0010cc  8f8b0b00  exp.f.rn r23, r23
0010d0  0f0c0c00  exp.f.rn r24, r24
0010d4  8f8c0c00  exp.f.rn r25, r25
0010d8  0f0d0d00  exp.f.rn r26, r26
0010dc  67801800  storeli.w r1, 0(r17)
0010e0  67c03800  storeli.w r3, 4(r17)
0010e4  e7805800  storeli.w r5, 8(r17)
0010e8  e7c07800  storeli.w r7, 12(r17)
0010ec  67818800  storeli.w r8, 16(r17)
0010f0  67c1b800  storeli.w r11, 20(r17)
0010f4  e781c800  storeli.w r12, 24(r17)
0010f8  e7c1e800  storeli.w r14, 28(r17)
0010fc  67820801  storeli.w r16, 32(r17)
001100  67c24801  storeli.w r20, 36(r17)
001104  e7825801  storeli.w r21, 40(r17)
001108  e7c26801  storeli.w r22, 44(r17)
00110c  67837801  storeli.w r23, 48(r17)
001110  67c38801  storeli.w r24, 52(r17)
001114  e7839801  storeli.w r25, 56(r17)
001118  e7c3a801  storeli.w r26, 60(r17)
00111c  e3808800  loadli.w r1,  64(r17)
001120  e3c18800  loadli.w r3,  68(r17)
001124  e3829800  loadli.w r5,  72(r17)
001128  e3c39800  loadli.w r7,  76(r17)
00112c  6384a800  loadli.w r8,  80(r17)
001130  e3c5a800  loadli.w r11,  84(r17)
001134  6386b800  loadli.w r12,  88(r17)
001138  63c7b800  loadli.w r14,  92(r17)
00113c  6388c800  loadli.w r16,  96(r17)
001140  63cac800  loadli.w r20,  100(r17)
001144  e38ad800  loadli.w r21,  104(r17)
001148  63cbd800  loadli.w r22,  108(r17)
00114c  e38be800  loadli.w r23,  112(r17)
001150  63cce800  loadli.w r24,  116(r17)
001154  e38cf800  loadli.w r25,  120(r17)
001158  63cdf800  loadli.w r26,  124(r17)
00115c  8f800000  exp.f.rn r1, r1
001160  8f810100  exp.f.rn r3, r3
001164  8f820200  exp.f.rn r5, r5
001168  8f830300  exp.f.rn r7, r7
00116c  0f040400  exp.f.rn r8, r8
001170  8f850500  exp.f.rn r11, r11
001174  0f060600  exp.f.rn r12, r12
001178  0f070700  exp.f.rn r14, r14
00117c  0f080800  exp.f.rn r16, r16
001180  0f0a0a00  exp.f.rn r20, r20
001184  8f8a0a00  exp.f.rn r21, r21
001188  0f0b0b00  exp.f.rn r22, r22
00118c  8f8b0b00  exp.f.rn r23, r23
001190  0f0c0c00  exp.f.rn r24, r24
001194  8f8c0c00  exp.f.rn r25, r25
001198  0f0d0d00  exp.f.rn r26, r26
00119c  67841800  storeli.w r1, 64(r17)
0011a0  67c43800  storeli.w r3, 68(r17)
0011a4  e7845800  storeli.w r5, 72(r17)
0011a8  e7c47800  storeli.w r7, 76(r17)
0011ac  67858800  storeli.w r8, 80(r17)
0011b0  67c5b800  storeli.w r11, 84(r17)
0011b4  e785c800  storeli.w r12, 88(r17)
0011b8  e7c5e800  storeli.w r14, 92(r17)
0011bc  67860801  storeli.w r16, 96(r17)
0011c0  67c64801  storeli.w r20, 100(r17)
0011c4  e7865801  storeli.w r21, 104(r17)
0011c8  e7c66801  storeli.w r22, 108(r17)
0011cc  67877801  storeli.w r23, 112(r17)
0011d0  67c78801  storeli.w r24, 116(r17)
0011d4  e7879801  storeli.w r25, 120(r17)
0011d8  e7c7a801  storeli.w r26, 124(r17)
0011dc  e3800801  loadli.w r1,  128(r17)
0011e0  e3c10801  loadli.w r3,  132(r17)
0011e4  e3821801  loadli.w r5,  136(r17)
0011e8  e3c31801  loadli.w r7,  140(r17)
0011ec  63842801  loadli.w r8,  144(r17)
0011f0  e3c52801  loadli.w r11,  148(r17)
0011f4  63863801  loadli.w r12,  152(r17)
0011f8  63c73801  loadli.w r14,  156(r17)
0011fc  63884801  loadli.w r16,  160(r17)
001200  63ca4801  loadli.w r20,  164(r17)
001204  e38a5801  loadli.w r21,  168(r17)
001208  63cb5801  loadli.w r22,  172(r17)
00120c  e38b6801  loadli.w r23,  176(r17)
001210  63cc6801  loadli.w r24,  180(r17)
001214  e38c7801  loadli.w r25,  184(r17)
001218  63cd7801  loadli.w r26,  188(r17)
00121c  8f800000  exp.f.rn r1, r1
001220  8f810100  exp.f.rn r3, r3
001224  8f820200  exp.f.rn r5, r5
001228  8f830300  exp.f.rn r7, r7
00122c  0f040400  exp.f.rn r8, r8
001230  8f850500  exp.f.rn r11, r11
001234  0f060600  exp.f.rn r12, r12
001238  0f070700  exp.f.rn r14, r14
00123c  0f080800  exp.f.rn r16, r16
001240  0f0a0a00  exp.f.rn r20, r20
001244  8f8a0a00  exp.f.rn r21, r21
001248  0f0b0b00  exp.f.rn r22, r22
00124c  8f8b0b00  exp.f.rn r23, r23
001250  0f0c0c00  exp.f.rn r24, r24
001254  8f8c0c00  exp.f.rn r25, r25
001258  0f0d0d00  exp.f.rn r26, r26
00125c  67881800  storeli.w r1, 128(r17)
001260  67c83800  storeli.w r3, 132(r17)
001264  e7885800  storeli.w r5, 136(r17)
001268  e7c87800  storeli.w r7, 140(r17)
00126c  67898800  storeli.w r8, 144(r17)
001270  67c9b800  storeli.w r11, 148(r17)
001274  e789c800  storeli.w r12, 152(r17)
001278  e7c9e800  storeli.w r14, 156(r17)
00127c  678a0801  storeli.w r16, 160(r17)
001280  67ca4801  storeli.w r20, 164(r17)
001284  e78a5801  storeli.w r21, 168(r17)
001288  e7ca6801  storeli.w r22, 172(r17)
00128c  678b7801  storeli.w r23, 176(r17)
001290  67cb8801  storeli.w r24, 180(r17)
001294  e78b9801  storeli.w r25, 184(r17)
001298  e7cba801  storeli.w r26, 188(r17)
00129c  e3808801  loadli.w r1,  192(r17)
0012a0  e3c18801  loadli.w r3,  196(r17)
0012a4  e3829801  loadli.w r5,  200(r17)
0012a8  e3c39801  loadli.w r7,  204(r17)
0012ac  6384a801  loadli.w r8,  208(r17)
0012b0  e3c5a801  loadli.w r11,  212(r17)
0012b4  6386b801  loadli.w r12,  216(r17)
0012b8  63c7b801  loadli.w r14,  220(r17)
0012bc  6388c801  loadli.w r16,  224(r17)
0012c0  63cac801  loadli.w r20,  228(r17)
0012c4  e38ad801  loadli.w r21,  232(r17)
0012c8  63cbd801  loadli.w r22,  236(r17)
0012cc  e38be801  loadli.w r23,  240(r17)
0012d0  63cce801  loadli.w r24,  244(r17)
0012d4  e38cf801  loadli.w r25,  248(r17)
0012d8  63cdf801  loadli.w r26,  252(r17)
0012dc  8f800000  exp.f.rn r1, r1
0012e0  8f810100  exp.f.rn r3, r3
0012e4  8f820200  exp.f.rn r5, r5
0012e8  8f830300  exp.f.rn r7, r7
0012ec  0f040400  exp.f.rn r8, r8
0012f0  8f850500  exp.f.rn r11, r11
0012f4  0f060600  exp.f.rn r12, r12
0012f8  0f070700  exp.f.rn r14, r14
0012fc  0f080800  exp.f.rn r16, r16
001300  0f0a0a00  exp.f.rn r20, r20
001304  8f8a0a00  exp.f.rn r21, r21
001308  0f0b0b00  exp.f.rn r22, r22
00130c  8f8b0b00  exp.f.rn r23, r23
001310  0f0c0c00  exp.f.rn r24, r24
001314  8f8c0c00  exp.f.rn r25, r25
001318  0f0d0d00  exp.f.rn r26, r26
00131c  678c1800  storeli.w r1, 192(r17)
001320  67cc3800  storeli.w r3, 196(r17)
001324  e78c5800  storeli.w r5, 200(r17)
001328  e7cc7800  storeli.w r7, 204(r17)
00132c  678d8800  storeli.w r8, 208(r17)
001330  67cdb800  storeli.w r11, 212(r17)
001334  e78dc800  storeli.w r12, 216(r17)
001338  e7cde800  storeli.w r14, 220(r17)
00133c  678e0801  storeli.w r16, 224(r17)
001340  67ce4801  storeli.w r20, 228(r17)
001344  e78e5801  storeli.w r21, 232(r17)
001348  e7ce6801  storeli.w r22, 236(r17)
00134c  678f7801  storeli.w r23, 240(r17)
001350  67cf8801  storeli.w r24, 244(r17)
001354  e78f9801  storeli.w r25, 248(r17)
001358  e7cfa801  storeli.w r26, 252(r17)
00135c  00a00000  mfence { lm }
001360  c2100fe2  vload_mask16.mz vr1{mr1}, 1792(r30)
001364  9f000ff3  addli r1, r30, -1664
001368  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00136c  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
001370  42118fe2  vload_mask16.mz vr2{mr1}, 1856(r30)
001374  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001378  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00137c  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
001380  c2148fe3  vload_mask16.mz vr9{mr1}, 1984(r30)
001384  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
001388  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00138c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001390  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001394  fa100040  vextracti.f r1, 0(vr0)
001398  fa111040  vextracti.f r3, 1(vr0)
00139c  8be03010  add.f.rn r1, r1, r3
0013a0  fa112040  vextracti.f r3, 2(vr0)
0013a4  8be01110  add.f.rn r1, r3, r1
0013a8  fa113040  vextracti.f r3, 3(vr0)
0013ac  8be01110  add.f.rn r1, r3, r1
0013b0  fa114040  vextracti.f r3, 4(vr0)
0013b4  8be01110  add.f.rn r1, r3, r1
0013b8  fa115040  vextracti.f r3, 5(vr0)
0013bc  8be01110  add.f.rn r1, r3, r1
0013c0  fa116040  vextracti.f r3, 6(vr0)
0013c4  8be01110  add.f.rn r1, r3, r1
0013c8  fa117040  vextracti.f r3, 7(vr0)
0013cc  8be01110  add.f.rn r1, r3, r1
0013d0  fa118040  vextracti.f r3, 8(vr0)
0013d4  8be01110  add.f.rn r1, r3, r1
0013d8  fa119040  vextracti.f r3, 9(vr0)
0013dc  8be01110  add.f.rn r1, r3, r1
0013e0  fa11a040  vextracti.f r3, 10(vr0)
0013e4  8be01110  add.f.rn r1, r3, r1
0013e8  fa11b040  vextracti.f r3, 11(vr0)
0013ec  8be01110  add.f.rn r1, r3, r1
0013f0  fa11c040  vextracti.f r3, 12(vr0)
0013f4  8be01110  add.f.rn r1, r3, r1
0013f8  fa11d040  vextracti.f r3, 13(vr0)
0013fc  8be01110  add.f.rn r1, r3, r1
001400  fa11e040  vextracti.f r3, 14(vr0)
001404  8be01110  add.f.rn r1, r3, r1
001408  fa11f040  vextracti.f r3, 15(vr0)
00140c  8be01110  add.f.rn r1, r3, r1
001410  e3417fef  loadli.w r3,  -2116(r30)
001414  73e01100  stores.w r1, 0(r3)
001418  00a00300  mfence { lm, sm, gm }
00141c  80210204  csr_set csr3, r4
001420  00d00100  sync_group
001424  bb900700  bneq r15, zero, 36
001428  ef400500  loads.w r1, 0(r10)
00142c  ef414500  loads.w r3, 4(r10)
001430  ef428500  loads.w r5, 8(r10)
001434  8be03010  add.f.rn r1, r1, r3
001438  ef41c500  loads.w r3, 12(r10)
00143c  8be05010  add.f.rn r1, r1, r5
001440  8be03010  add.f.rn r1, r1, r3
001444  73601500  stores.w r1, 0(r10)
001448  00a00300  mfence { lm, sm, gm }
00144c  80210204  csr_set csr3, r4
001450  00d00100  sync_group
001454  ef400500  loads.w r1, 0(r10)
001458  ab01803f  lui r3, 260096
00145c  1f1c0000  addli r24, zero, 1
001460  8f801118  div.f.rn r1, r3, r1
001464  9f018ff5  addli r3, r30, -1344
001468  0a90b002  vmul.f.mz.rn vr0{mr1}, r1, vr11
00146c  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
001470  06150000  vfloat2fp16_l.rn vr10, vr0
001474  06550200  vfloat2fp16_h.rn vr10, vr4
001478  4610afa2  vstore_mask16.mz vr10{mr1}, 1280(r30)
00147c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
001480  9f010ff5  addli r3, r30, -1408
001484  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
001488  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
00148c  9f010ff4  addli r3, r30, -1536
001490  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
001494  86150000  vfloat2fp16_l.rn vr11, vr0
001498  86550200  vfloat2fp16_h.rn vr11, vr4
00149c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0014a0  9f018ff4  addli r3, r30, -1472
0014a4  0a925002  vmul.f.mz.rn vr4{mr1}, r1, vr5
0014a8  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0014ac  86120000  vfloat2fp16_l.rn vr5, vr0
0014b0  86520200  vfloat2fp16_h.rn vr5, vr4
0014b4  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0014b8  9f018ff3  addli r3, r30, -1600
0014bc  0a906002  vmul.f.mz.rn vr0{mr1}, r1, vr6
0014c0  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
0014c4  06130000  vfloat2fp16_l.rn vr6, vr0
0014c8  06530200  vfloat2fp16_h.rn vr6, vr4
0014cc  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0014d0  9f010ff3  addli r3, r30, -1664
0014d4  0a928002  vmul.f.mz.rn vr4{mr1}, r1, vr8
0014d8  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0014dc  06140000  vfloat2fp16_l.rn vr8, vr0
0014e0  06540200  vfloat2fp16_h.rn vr8, vr4
0014e4  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0014e8  0a907002  vmul.f.mz.rn vr0{mr1}, r1, vr7
0014ec  4614bfa2  vstore_mask16.mz vr11{mr1}, 1344(r30)
0014f0  46185fa2  vstore_mask16.mz vr5{mr1}, 1408(r30)
0014f4  461c6fa2  vstore_mask16.mz vr6{mr1}, 1472(r30)
0014f8  46108fc2  vstore_mask16.mz vr8{mr1}, 1536(r30)
0014fc  0a924002  vmul.f.mz.rn vr4{mr1}, r1, vr4
001500  86130000  vfloat2fp16_l.rn vr7, vr0
001504  86530200  vfloat2fp16_h.rn vr7, vr4
001508  0a901002  vmul.f.mz.rn vr0{mr1}, r1, vr1
00150c  8a902002  vmul.f.mz.rn vr1{mr1}, r1, vr2
001510  06110000  vfloat2fp16_l.rn vr2, vr0
001514  06d10000  vfloat2fp16_h.rn vr2, vr1
001518  46147fc2  vstore_mask16.mz vr7{mr1}, 1600(r30)
00151c  46182fc2  vstore_mask16.mz vr2{mr1}, 1664(r30)
001520  0a903002  vmul.f.mz.rn vr0{mr1}, r1, vr3
001524  8a909002  vmul.f.mz.rn vr1{mr1}, r1, vr9
001528  86110000  vfloat2fp16_l.rn vr3, vr0
00152c  86d10000  vfloat2fp16_h.rn vr3, vr1
001530  461c3fc2  vstore_mask16.mz vr3{mr1}, 1728(r30)
001534  9f800600  addli r1, r13, 0
001538  00a00000  mfence { lm }
00153c  e3018f00  loadli.w r3,  64(r30)
001540  bf6331f6  blt.s r2, r3, -4872
001544  9f000000  addli r1, zero, 0
001548  5b9efdff  j -4880
00154c  9f0e8fee  addli sp, r30, -2240
001550  9f8e8e11  addli sp, sp, 2240
001554  00a00300  mfence { lm, sm, gm }
001558  00100000  exit
00155c  00100000  exit
001560  00100000  exit
001564  00100000  exit
001568  00100000  exit
00156c  00100000  exit
001570  00100000  exit
001574  00100000  exit
001578  00100000  exit
00157c  00100000  exit
001580  00100000  exit
001584  00100000  exit
001588  00100000  exit
00158c  00100000  exit
001590  00100000  exit
001594  00100000  exit
001598  00100000  exit
00159c  00100000  exit
0015a0  00100000  exit
0015a4  00100000  exit
0015a8  00100000  exit
0015ac  00100000  exit
0015b0  00100000  exit
0015b4  00100000  exit
0015b8  00100000  exit
0015bc  00100000  exit
0015c0  00100000  exit
0015c4  00100000  exit
0015c8  00100000  exit
0015cc  00100000  exit
0015d0  00100000  exit
0015d4  00100000  exit
0015d8  00100000  exit
0015dc  00100000  exit
0015e0  00100000  exit
0015e4  00100000  exit
0015e8  00100000  exit
0015ec  00100000  exit
0015f0  00100000  exit
0015f4  00100000  exit
0015f8  00100000  exit
0015fc  00100000  exit
001600  00100000  exit
001604  00100000  exit
001608  00100000  exit
00160c  00100000  exit
001610  00100000  exit
001614  00100000  exit
001618  00100000  exit
00161c  00100000  exit
001620  00100000  exit
001624  00100000  exit
001628  00100000  exit
00162c  00100000  exit
001630  00100000  exit
001634  00100000  exit
001638  00100000  exit
00163c  00100000  exit
001640  00100000  exit
001644  00100000  exit
001648  00100000  exit
00164c  00100000  exit
001650  00100000  exit
001654  00100000  exit
001658  00100000  exit
00165c  00100000  exit
001660  00100000  exit
001664  00100000  exit
001668  00100000  exit
00166c  00100000  exit
001670  00100000  exit
001674  00100000  exit
001678  00100000  exit
00167c  00100000  exit
001680  00100000  exit
001684  00100000  exit
001688  00100000  exit
00168c  00100000  exit
001690  00100000  exit
001694  00100000  exit
001698  00100000  exit
00169c  00100000  exit
0016a0  00100000  exit
0016a4  00100000  exit
0016a8  00100000  exit
0016ac  00100000  exit
0016b0  00100000  exit
0016b4  00100000  exit
0016b8  00100000  exit
0016bc  00100000  exit
0016c0  00100000  exit
0016c4  00100000  exit
0016c8  00100000  exit
0016cc  00100000  exit
0016d0  00100000  exit
0016d4  00100000  exit
0016d8  00100000  exit
0016dc  00100000  exit
0016e0  00100000  exit
0016e4  00100000  exit
0016e8  00100000  exit
0016ec  00100000  exit
0016f0  00100000  exit
0016f4  00100000  exit
0016f8  00100000  exit
0016fc  00100000  exit
001700  00100000  exit
001704  00100000  exit
001708  00100000  exit
00170c  00100000  exit
001710  00100000  exit
001714  00100000  exit
001718  00100000  exit
00171c  00100000  exit
001720  00100000  exit
001724  00100000  exit
001728  00100000  exit
00172c  00100000  exit
001730  00100000  exit
001734  00100000  exit
001738  00100000  exit
00173c  00100000  exit
001740  00100000  exit
001744  00100000  exit
001748  00100000  exit
00174c  00100000  exit
001750  00100000  exit
001754  00100000  exit
001758  00100000  exit
00175c  00100000  exit
001760  00100000  exit
001764  00100000  exit
001768  00100000  exit
00176c  00100000  exit
001770  00100000  exit
001774  00100000  exit
001778  00100000  exit
00177c  00100000  exit
001780  00100000  exit
001784  00100000  exit
001788  00100000  exit
00178c  00100000  exit
001790  00100000  exit
001794  00100000  exit
001798  00100000  exit
