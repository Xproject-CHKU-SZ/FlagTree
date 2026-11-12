; SHA-256 a42c69f3710d27cf5d3de7ef9272330051107444ec23c4c3e8148a448bc2cfc2
; P800 Cluster · XTDK LLVM 19 · 927 / 927 words decoded
; bound names: _tle_row_softmax
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
0000e4  9f8e8ef4  addli sp, sp, -1472
0000e8  ab050000  lui r11, 0
0000ec  80310002  core_id r3
0000f0  1f8f8e0a  addli r30, sp, 1344
0000f4  2bf20000  lui r4, 15
0000f8  1bb62100  slli r12, r3, 2
0000fc  9f850500  addli r11, r11, 0
000100  6301cf00  loadli.w r2,  96(r30)
000104  6343bf00  loadli.w r6,  92(r30)
000108  e340cf00  loadli.w r1,  100(r30)
00010c  1b12f2ff  ori r4, r4, 4095
000110  8b92c510  add.s r5, r11, r12
000114  9f832260  addli r7, r5, 12304
000118  9f820220  addli r5, r5, 4096
00011c  e74f7ff4  storeli.w r7, -1284(r30)
000120  73e00300  stores.w zero, 0(r7)
000124  8b136120  mul.s r7, r2, r6
000128  00530002  load_param_i r6, 0
00012c  00a00300  mfence { lm, sm, gm }
000130  80210204  csr_set csr3, r4
000134  00d00100  sync_group
000138  e70f5ff4  storeli.w r5, -1288(r30)
00013c  73e00200  stores.w zero, 0(r5)
000140  8b901320  mul.s r1, r7, r1
000144  00a00300  mfence { lm, sm, gm }
000148  80210204  csr_set csr3, r4
00014c  00d00100  sync_group
000150  674f1ff4  storeli.w r1, -1292(r30)
000154  4beb6004  ble.s r1, r6, 2776
000158  1b897100  andi r18, r3, 7
00015c  e3065f00  loadli.w r13,  40(r30)
000160  80d00002  load_param_i r1, 1
000164  eb540f03  load.d r[10:11], 48(r30)
000168  1f040001  addli r8, zero, 128
00016c  9f230000  addli r7, zero, 2
000170  eb570f02  load.d r[16:17], 32(r30)
000174  9bc13100  srli r3, r3, 3
000178  e34c1f00  loadli.w r25,  12(r30)
00017c  63478f00  loadli.w r14,  68(r30)
000180  eb590f05  load.d r[20:21], 80(r30)
000184  eb5d8f01  load.d r[28:29], 24(r30)
000188  9b387900  slli r17, r18, 7
00018c  670f1ff4  storeli.w r1, -1296(r30)
000190  8b961619  sub.s r13, r13, r17
000194  b3800828  zext_int2long r[2:3], r17
000198  8b960648  max.s r13, r13, zero
00019c  8bb41420  mul.sl r[10:11], r[10:11], r[2:3]
0001a0  8b968640  min.s r13, r13, r8
0001a4  97b47402  sll.d r[10:11], r[10:11], r7
0001a8  9bb22600  slli r5, r13, 2
0001ac  8ba49710  add.ul r[10:11], r[16:17], r[10:11]
0001b0  9f070ffa  addli r15, r30, -768
0001b4  674e5ff4  storeli.w r5, -1308(r30)
0001b8  9b827100  andi r5, r3, 7
0001bc  abf1ffff  lui r3, 1048575
0001c0  73349fae  store.d r[10:11], -1304(r30)
0001c4  8b941c19  sub.s r9, r25, r17
0001c8  0b151719  sub.s r10, r14, r17
0001cc  9b9101fe  ori r3, r3, 4064
0001d0  8b940448  max.s r9, r9, zero
0001d4  670e5ff4  storeli.w r5, -1312(r30)
0001d8  97013600  and r3, r12, r3
0001dc  33860228  zext_int2long r[13:14], r5
0001e0  8b948440  min.s r9, r9, r8
0001e4  8b913510  add.s r3, r11, r3
0001e8  8b150548  max.s r11, r10, zero
0001ec  9bb22400  slli r5, r9, 2
0001f0  733ccfac  store.d r[13:14], -1320(r30)
0001f4  0bb61d20  mul.sl r[13:14], r[28:29], r[2:3]
0001f8  8bb01920  mul.sl r[2:3], r[20:21], r[2:3]
0001fc  9f840120  addli r9, r3, 4096
000200  1f852160  addli r10, r3, 12304
000204  8b918540  min.s r3, r11, r8
000208  73301fac  store.d r[2:3], -1344(r30)
00020c  7338cfac  store.d r[13:14], -1328(r30)
000210  e74c5ff4  storeli.w r5, -1332(r30)
000214  9bb02100  slli r1, r3, 2
000218  5b090000  j 72
00021c  eb568f04  load.d r[14:15], 72(r30)
000220  eb550fac  load.d r[12:13], -1344(r30)
000224  9f230000  addli r7, zero, 2
000228  ab0200f0  lui r5, 983040
00022c  97125400  or r5, r8, r5
000230  0b31d120  mul.sl r[3:4], r[3:4], r[14:15]
000234  eb568f03  load.d r[14:15], 56(r30)
000238  0b21b110  add.ul r[3:4], r[3:4], r[12:13]
00023c  17317102  sll.d r[3:4], r[3:4], r7
000240  0ba12610  add.ul r[3:4], r[14:15], r[3:4]
000244  ff32f100  s_lm2gm r5, r15, 0(r[3:4])
000248  6301eff5  loadli.w r2,  -1296(r30)
00024c  00a00000  mfence { lm }
000250  0b132310  add.s r6, r6, r2
000254  6341eff5  loadli.w r2,  -1292(r30)
000258  3f202300  blt.s r6, r2, 8
00025c  5b3a0100  j 2512
000260  6341cf00  loadli.w r2,  100(r30)
000264  e301cf00  loadli.w r3,  96(r30)
000268  e342cff5  loadli.w r5,  -1308(r30)
00026c  eb568fae  load.d r[14:15], -1304(r30)
000270  0b112330  div.s r2, r6, r2
000274  0b113130  div.s r2, r2, r3
000278  ab0100f0  lui r3, 983040
00027c  97913200  or r3, r5, r3
000280  9f020ff6  addli r5, r30, -1280
000284  ffa15600  l_gm2lm r3, r5, 0(r[14:15])
000288  e301cff5  loadli.w r3,  -1312(r30)
00028c  00a00000  mfence { lm }
000290  1b313100  slli r2, r2, 3
000294  63449ff5  loadli.w r8,  -1332(r30)
000298  97183100  or r17, r2, r3
00029c  e3011f00  loadli.w r3,  8(r30)
0002a0  3fa03800  blt.s r17, r3, 8
0002a4  1f040000  addli r8, zero, 0
0002a8  eb568fad  load.d r[14:15], -1320(r30)
0002ac  33110128  sext_int2long r[3:4], r2
0002b0  1711d102  or.d r[3:4], r[3:4], r[14:15]
0002b4  eb560f01  load.d r[14:15], 16(r30)
0002b8  8b39d120  mul.sl r[20:21], r[3:4], r[14:15]
0002bc  eb560fad  load.d r[14:15], -1328(r30)
0002c0  8ba9d910  add.ul r[20:21], r[20:21], r[14:15]
0002c4  2b0700f0  lui r14, 983040
0002c8  1714e400  or r8, r8, r14
0002cc  eb560f00  load.d r[14:15], 0(r30)
0002d0  97b97902  sll.d r[20:21], r[20:21], r7
0002d4  8ba93611  add.ul r[20:21], r[14:15], r[20:21]
0002d8  7fa4f900  l_gm2lm r8, r15, 0(r[20:21])
0002dc  00a00000  mfence { lm }
0002e0  42100fa2  vload_mask16.mz vr0{mr1}, 1280(r30)
0002e4  c2108fa2  vload_mask16.mz vr1{mr1}, 1344(r30)
0002e8  c2110fa3  vload_mask16.mz vr3{mr1}, 1408(r30)
0002ec  42128fa3  vload_mask16.mz vr4{mr1}, 1472(r30)
0002f0  c2120fc2  vload_mask16.mz vr5{mr1}, 1536(r30)
0002f4  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
0002f8  9f028ff6  addli r5, r30, -1216
0002fc  42138fc2  vload_mask16.mz vr6{mr1}, 1600(r30)
000300  42140fc3  vload_mask16.mz vr8{mr1}, 1664(r30)
000304  c2148fc3  vload_mask16.mz vr9{mr1}, 1728(r30)
000308  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
00030c  9f020ff7  addli r5, r30, -1152
000310  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
000314  9f028ff7  addli r5, r30, -1088
000318  96132002  vadd.f.mz.rn vr7{mr1}, vr0, vr2
00031c  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
000320  1691a002  vadd.f.mz.rn vr2{mr1}, vr1, vr10
000324  c2100f82  vload_mask16.mz vr1{mr1}, 1024(r30)
000328  42158f82  vload_mask16.mz vr10{mr1}, 1088(r30)
00032c  9691b102  vadd.f.mz.rn vr3{mr1}, vr3, vr11
000330  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000334  42100f83  vload_mask16.mz vr0{mr1}, 1152(r30)
000338  c2158f83  vload_mask16.mz vr11{mr1}, 1216(r30)
00033c  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
000340  1613a302  vadd.f.mz.rn vr6{mr1}, vr6, vr10
000344  96100402  vadd.f.mz.rn vr1{mr1}, vr8, vr0
000348  36942302  vmax.f.mz vr8{mr1}, vr7, vr2
00034c  1690b402  vadd.f.mz.rn vr0{mr1}, vr9, vr11
000350  36143402  vmax.f.mz vr8{mr1}, vr8, vr3
000354  36144402  vmax.f.mz vr8{mr1}, vr8, vr4
000358  36145402  vmax.f.mz vr8{mr1}, vr8, vr5
00035c  36146402  vmax.f.mz vr8{mr1}, vr8, vr6
000360  36141402  vmax.f.mz vr8{mr1}, vr8, vr1
000364  36140402  vmax.f.mz vr8{mr1}, vr8, vr0
000368  7a140440  vextracti.f r8, 0(vr8)
00036c  7a171440  vextracti.f r14, 1(vr8)
000370  fa192440  vextracti.f r19, 2(vr8)
000374  fa124440  vextracti.f r5, 4(vr8)
000378  7a1a3440  vextracti.f r20, 3(vr8)
00037c  fa135440  vextracti.f r7, 5(vr8)
000380  fa1a6440  vextracti.f r21, 6(vr8)
000384  7a1b7440  vextracti.f r22, 7(vr8)
000388  fa1b8440  vextracti.f r23, 8(vr8)
00038c  7a1c9440  vextracti.f r24, 9(vr8)
000390  fa1ca440  vextracti.f r25, 10(vr8)
000394  7a1db440  vextracti.f r26, 11(vr8)
000398  fa1dc440  vextracti.f r27, 12(vr8)
00039c  7a1ed440  vextracti.f r28, 13(vr8)
0003a0  7a18e440  vextracti.f r16, 14(vr8)
0003a4  fa16f440  vextracti.f r13, 15(vr8)
0003a8  0b64e448  max.f r8, r8, r14
0003ac  0b643449  max.f r8, r8, r19
0003b0  0b644449  max.f r8, r8, r20
0003b4  8b625448  max.f r5, r8, r5
0003b8  8be27248  max.f r5, r5, r7
0003bc  e303fff5  loadli.w r7,  -1288(r30)
0003c0  8be25249  max.f r5, r5, r21
0003c4  8be26249  max.f r5, r5, r22
0003c8  8be27249  max.f r5, r5, r23
0003cc  8be28249  max.f r5, r5, r24
0003d0  8be29249  max.f r5, r5, r25
0003d4  8be2a249  max.f r5, r5, r26
0003d8  8be2b249  max.f r5, r5, r27
0003dc  8be2c249  max.f r5, r5, r28
0003e0  8be20249  max.f r5, r5, r16
0003e4  8be2d248  max.f r5, r5, r13
0003e8  73e05300  stores.w r5, 0(r7)
0003ec  00a00300  mfence { lm, sm, gm }
0003f0  80210204  csr_set csr3, r4
0003f4  00d00100  sync_group
0003f8  3b110900  bneq r18, zero, 68
0003fc  efc20400  loads.w r5, 0(r9)
000400  efc34400  loads.w r7, 4(r9)
000404  6fc48400  loads.w r8, 8(r9)
000408  efc6c400  loads.w r13, 12(r9)
00040c  6fc70401  loads.w r14, 16(r9)
000410  6fc84401  loads.w r16, 20(r9)
000414  efc98401  loads.w r19, 24(r9)
000418  6fcac401  loads.w r20, 28(r9)
00041c  8be27248  max.f r5, r5, r7
000420  8be28248  max.f r5, r5, r8
000424  8be2d248  max.f r5, r5, r13
000428  8be2e248  max.f r5, r5, r14
00042c  8be20249  max.f r5, r5, r16
000430  8be23249  max.f r5, r5, r19
000434  8be24249  max.f r5, r5, r20
000438  73e05400  stores.w r5, 0(r9)
00043c  00a00300  mfence { lm, sm, gm }
000440  80210204  csr_set csr3, r4
000444  00d00100  sync_group
000448  efc20400  loads.w r5, 0(r9)
00044c  ab030080  lui r7, 524288
000450  9f050ffe  addli r11, r30, -256
000454  97a27200  xor r5, r5, r7
000458  92937202  vadd.f.mz.rn vr7{mr1}, r5, vr7
00045c  12944202  vadd.f.mz.rn vr8{mr1}, r5, vr4
000460  46107fe2  vstore_mask16.mz vr7{mr1}, 1792(r30)
000464  12912202  vadd.f.mz.rn vr2{mr1}, r5, vr2
000468  92913202  vadd.f.mz.rn vr3{mr1}, r5, vr3
00046c  46142fe2  vstore_mask16.mz vr2{mr1}, 1856(r30)
000470  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
000474  461c8fe2  vstore_mask16.mz vr8{mr1}, 1984(r30)
000478  12926202  vadd.f.mz.rn vr4{mr1}, r5, vr6
00047c  12931202  vadd.f.mz.rn vr6{mr1}, r5, vr1
000480  92925202  vadd.f.mz.rn vr5{mr1}, r5, vr5
000484  00a00000  mfence { lm }
000488  e3830500  loadli.w r7,  0(r11)
00048c  63c40500  loadli.w r8,  4(r11)
000490  e3861500  loadli.w r13,  8(r11)
000494  63c71500  loadli.w r14,  12(r11)
000498  63882500  loadli.w r16,  16(r11)
00049c  e3c92500  loadli.w r19,  20(r11)
0004a0  638a3500  loadli.w r20,  24(r11)
0004a4  e3ca3500  loadli.w r21,  28(r11)
0004a8  638b4500  loadli.w r22,  32(r11)
0004ac  e3cb4500  loadli.w r23,  36(r11)
0004b0  638c5500  loadli.w r24,  40(r11)
0004b4  e3cc5500  loadli.w r25,  44(r11)
0004b8  638d6500  loadli.w r26,  48(r11)
0004bc  e3cd6500  loadli.w r27,  52(r11)
0004c0  638e7500  loadli.w r28,  56(r11)
0004c4  e3c77500  loadli.w r15,  60(r11)
0004c8  8f830300  exp.f.rn r7, r7
0004cc  0f040400  exp.f.rn r8, r8
0004d0  8f860600  exp.f.rn r13, r13
0004d4  0f070700  exp.f.rn r14, r14
0004d8  0f080800  exp.f.rn r16, r16
0004dc  8f890900  exp.f.rn r19, r19
0004e0  0f0a0a00  exp.f.rn r20, r20
0004e4  8f8a0a00  exp.f.rn r21, r21
0004e8  0f0b0b00  exp.f.rn r22, r22
0004ec  8f8b0b00  exp.f.rn r23, r23
0004f0  0f0c0c00  exp.f.rn r24, r24
0004f4  8f8c0c00  exp.f.rn r25, r25
0004f8  0f0d0d00  exp.f.rn r26, r26
0004fc  8f8d0d00  exp.f.rn r27, r27
000500  0f0e0e00  exp.f.rn r28, r28
000504  8f870700  exp.f.rn r15, r15
000508  67807500  storeli.w r7, 0(r11)
00050c  67c08500  storeli.w r8, 4(r11)
000510  e780d500  storeli.w r13, 8(r11)
000514  e7c0e500  storeli.w r14, 12(r11)
000518  67810501  storeli.w r16, 16(r11)
00051c  67c13501  storeli.w r19, 20(r11)
000520  e7814501  storeli.w r20, 24(r11)
000524  e7c15501  storeli.w r21, 28(r11)
000528  67826501  storeli.w r22, 32(r11)
00052c  67c27501  storeli.w r23, 36(r11)
000530  e7828501  storeli.w r24, 40(r11)
000534  e7c29501  storeli.w r25, 44(r11)
000538  6783a501  storeli.w r26, 48(r11)
00053c  67c3b501  storeli.w r27, 52(r11)
000540  e783c501  storeli.w r28, 56(r11)
000544  e7c3f500  storeli.w r15, 60(r11)
000548  e3838500  loadli.w r7,  64(r11)
00054c  63c48500  loadli.w r8,  68(r11)
000550  e3869500  loadli.w r13,  72(r11)
000554  63c79500  loadli.w r14,  76(r11)
000558  6388a500  loadli.w r16,  80(r11)
00055c  e3c9a500  loadli.w r19,  84(r11)
000560  638ab500  loadli.w r20,  88(r11)
000564  e3cab500  loadli.w r21,  92(r11)
000568  638bc500  loadli.w r22,  96(r11)
00056c  e3cbc500  loadli.w r23,  100(r11)
000570  638cd500  loadli.w r24,  104(r11)
000574  e3ccd500  loadli.w r25,  108(r11)
000578  638de500  loadli.w r26,  112(r11)
00057c  e3cde500  loadli.w r27,  116(r11)
000580  638ef500  loadli.w r28,  120(r11)
000584  e3c7f500  loadli.w r15,  124(r11)
000588  8f830300  exp.f.rn r7, r7
00058c  0f040400  exp.f.rn r8, r8
000590  8f860600  exp.f.rn r13, r13
000594  0f070700  exp.f.rn r14, r14
000598  0f080800  exp.f.rn r16, r16
00059c  8f890900  exp.f.rn r19, r19
0005a0  0f0a0a00  exp.f.rn r20, r20
0005a4  8f8a0a00  exp.f.rn r21, r21
0005a8  0f0b0b00  exp.f.rn r22, r22
0005ac  8f8b0b00  exp.f.rn r23, r23
0005b0  0f0c0c00  exp.f.rn r24, r24
0005b4  8f8c0c00  exp.f.rn r25, r25
0005b8  0f0d0d00  exp.f.rn r26, r26
0005bc  8f8d0d00  exp.f.rn r27, r27
0005c0  0f0e0e00  exp.f.rn r28, r28
0005c4  8f870700  exp.f.rn r15, r15
0005c8  67847500  storeli.w r7, 64(r11)
0005cc  67c48500  storeli.w r8, 68(r11)
0005d0  e784d500  storeli.w r13, 72(r11)
0005d4  e7c4e500  storeli.w r14, 76(r11)
0005d8  67850501  storeli.w r16, 80(r11)
0005dc  67c53501  storeli.w r19, 84(r11)
0005e0  e7854501  storeli.w r20, 88(r11)
0005e4  e7c55501  storeli.w r21, 92(r11)
0005e8  67866501  storeli.w r22, 96(r11)
0005ec  67c67501  storeli.w r23, 100(r11)
0005f0  e7868501  storeli.w r24, 104(r11)
0005f4  e7c69501  storeli.w r25, 108(r11)
0005f8  6787a501  storeli.w r26, 112(r11)
0005fc  67c7b501  storeli.w r27, 116(r11)
000600  e787c501  storeli.w r28, 120(r11)
000604  e7c7f500  storeli.w r15, 124(r11)
000608  e3830501  loadli.w r7,  128(r11)
00060c  63c40501  loadli.w r8,  132(r11)
000610  e3861501  loadli.w r13,  136(r11)
000614  63c71501  loadli.w r14,  140(r11)
000618  63882501  loadli.w r16,  144(r11)
00061c  e3c92501  loadli.w r19,  148(r11)
000620  638a3501  loadli.w r20,  152(r11)
000624  e3ca3501  loadli.w r21,  156(r11)
000628  638b4501  loadli.w r22,  160(r11)
00062c  e3cb4501  loadli.w r23,  164(r11)
000630  638c5501  loadli.w r24,  168(r11)
000634  e3cc5501  loadli.w r25,  172(r11)
000638  638d6501  loadli.w r26,  176(r11)
00063c  e3cd6501  loadli.w r27,  180(r11)
000640  638e7501  loadli.w r28,  184(r11)
000644  e3c77501  loadli.w r15,  188(r11)
000648  8f830300  exp.f.rn r7, r7
00064c  0f040400  exp.f.rn r8, r8
000650  8f860600  exp.f.rn r13, r13
000654  0f070700  exp.f.rn r14, r14
000658  0f080800  exp.f.rn r16, r16
00065c  8f890900  exp.f.rn r19, r19
000660  0f0a0a00  exp.f.rn r20, r20
000664  8f8a0a00  exp.f.rn r21, r21
000668  0f0b0b00  exp.f.rn r22, r22
00066c  8f8b0b00  exp.f.rn r23, r23
000670  0f0c0c00  exp.f.rn r24, r24
000674  8f8c0c00  exp.f.rn r25, r25
000678  0f0d0d00  exp.f.rn r26, r26
00067c  8f8d0d00  exp.f.rn r27, r27
000680  0f0e0e00  exp.f.rn r28, r28
000684  8f870700  exp.f.rn r15, r15
000688  67887500  storeli.w r7, 128(r11)
00068c  67c88500  storeli.w r8, 132(r11)
000690  e788d500  storeli.w r13, 136(r11)
000694  e7c8e500  storeli.w r14, 140(r11)
000698  67890501  storeli.w r16, 144(r11)
00069c  67c93501  storeli.w r19, 148(r11)
0006a0  e7894501  storeli.w r20, 152(r11)
0006a4  e7c95501  storeli.w r21, 156(r11)
0006a8  678a6501  storeli.w r22, 160(r11)
0006ac  67ca7501  storeli.w r23, 164(r11)
0006b0  e78a8501  storeli.w r24, 168(r11)
0006b4  e7ca9501  storeli.w r25, 172(r11)
0006b8  678ba501  storeli.w r26, 176(r11)
0006bc  67cbb501  storeli.w r27, 180(r11)
0006c0  e78bc501  storeli.w r28, 184(r11)
0006c4  e7cbf500  storeli.w r15, 188(r11)
0006c8  e3838501  loadli.w r7,  192(r11)
0006cc  63c48501  loadli.w r8,  196(r11)
0006d0  e3869501  loadli.w r13,  200(r11)
0006d4  63c79501  loadli.w r14,  204(r11)
0006d8  6388a501  loadli.w r16,  208(r11)
0006dc  e3c9a501  loadli.w r19,  212(r11)
0006e0  638ab501  loadli.w r20,  216(r11)
0006e4  e3cab501  loadli.w r21,  220(r11)
0006e8  638bc501  loadli.w r22,  224(r11)
0006ec  e3cbc501  loadli.w r23,  228(r11)
0006f0  638cd501  loadli.w r24,  232(r11)
0006f4  e3ccd501  loadli.w r25,  236(r11)
0006f8  638de501  loadli.w r26,  240(r11)
0006fc  e3cde501  loadli.w r27,  244(r11)
000700  638ef501  loadli.w r28,  248(r11)
000704  e3c7f501  loadli.w r15,  252(r11)
000708  8f830300  exp.f.rn r7, r7
00070c  0f040400  exp.f.rn r8, r8
000710  8f860600  exp.f.rn r13, r13
000714  0f070700  exp.f.rn r14, r14
000718  0f080800  exp.f.rn r16, r16
00071c  8f890900  exp.f.rn r19, r19
000720  0f0a0a00  exp.f.rn r20, r20
000724  8f8a0a00  exp.f.rn r21, r21
000728  0f0b0b00  exp.f.rn r22, r22
00072c  8f8b0b00  exp.f.rn r23, r23
000730  0f0c0c00  exp.f.rn r24, r24
000734  8f8c0c00  exp.f.rn r25, r25
000738  0f0d0d00  exp.f.rn r26, r26
00073c  8f8d0d00  exp.f.rn r27, r27
000740  0f0e0e00  exp.f.rn r28, r28
000744  8f870700  exp.f.rn r15, r15
000748  678c7500  storeli.w r7, 192(r11)
00074c  67cc8500  storeli.w r8, 196(r11)
000750  e78cd500  storeli.w r13, 200(r11)
000754  e7cce500  storeli.w r14, 204(r11)
000758  678d0501  storeli.w r16, 208(r11)
00075c  67cd3501  storeli.w r19, 212(r11)
000760  e78d4501  storeli.w r20, 216(r11)
000764  e7cd5501  storeli.w r21, 220(r11)
000768  678e6501  storeli.w r22, 224(r11)
00076c  67ce7501  storeli.w r23, 228(r11)
000770  e78e8501  storeli.w r24, 232(r11)
000774  e7ce9501  storeli.w r25, 236(r11)
000778  678fa501  storeli.w r26, 240(r11)
00077c  67cfb501  storeli.w r27, 244(r11)
000780  e78fc501  storeli.w r28, 248(r11)
000784  e7cff500  storeli.w r15, 252(r11)
000788  00a00000  mfence { lm }
00078c  92930202  vadd.f.mz.rn vr7{mr1}, r5, vr0
000790  c2110fe2  vload_mask16.mz vr3{mr1}, 1792(r30)
000794  42118fe2  vload_mask16.mz vr2{mr1}, 1856(r30)
000798  c2100fe3  vload_mask16.mz vr1{mr1}, 1920(r30)
00079c  42108fe3  vload_mask16.mz vr0{mr1}, 1984(r30)
0007a0  46105fe2  vstore_mask16.mz vr5{mr1}, 1792(r30)
0007a4  46144fe2  vstore_mask16.mz vr4{mr1}, 1856(r30)
0007a8  46186fe2  vstore_mask16.mz vr6{mr1}, 1920(r30)
0007ac  461c7fe2  vstore_mask16.mz vr7{mr1}, 1984(r30)
0007b0  00a00000  mfence { lm }
0007b4  e3820500  loadli.w r5,  0(r11)
0007b8  e3c30500  loadli.w r7,  4(r11)
0007bc  63841500  loadli.w r8,  8(r11)
0007c0  e3c61500  loadli.w r13,  12(r11)
0007c4  63872500  loadli.w r14,  16(r11)
0007c8  e3c72500  loadli.w r15,  20(r11)
0007cc  63883500  loadli.w r16,  24(r11)
0007d0  e3c93500  loadli.w r19,  28(r11)
0007d4  638a4500  loadli.w r20,  32(r11)
0007d8  e3ca4500  loadli.w r21,  36(r11)
0007dc  638b5500  loadli.w r22,  40(r11)
0007e0  e3cb5500  loadli.w r23,  44(r11)
0007e4  638c6500  loadli.w r24,  48(r11)
0007e8  e3cc6500  loadli.w r25,  52(r11)
0007ec  638d7500  loadli.w r26,  56(r11)
0007f0  e3cd7500  loadli.w r27,  60(r11)
0007f4  8f820200  exp.f.rn r5, r5
0007f8  8f830300  exp.f.rn r7, r7
0007fc  0f040400  exp.f.rn r8, r8
000800  8f860600  exp.f.rn r13, r13
000804  0f070700  exp.f.rn r14, r14
000808  8f870700  exp.f.rn r15, r15
00080c  0f080800  exp.f.rn r16, r16
000810  8f890900  exp.f.rn r19, r19
000814  0f0a0a00  exp.f.rn r20, r20
000818  8f8a0a00  exp.f.rn r21, r21
00081c  0f0b0b00  exp.f.rn r22, r22
000820  8f8b0b00  exp.f.rn r23, r23
000824  0f0c0c00  exp.f.rn r24, r24
000828  8f8c0c00  exp.f.rn r25, r25
00082c  0f0d0d00  exp.f.rn r26, r26
000830  8f8d0d00  exp.f.rn r27, r27
000834  67805500  storeli.w r5, 0(r11)
000838  67c07500  storeli.w r7, 4(r11)
00083c  e7808500  storeli.w r8, 8(r11)
000840  e7c0d500  storeli.w r13, 12(r11)
000844  6781e500  storeli.w r14, 16(r11)
000848  67c1f500  storeli.w r15, 20(r11)
00084c  e7810501  storeli.w r16, 24(r11)
000850  e7c13501  storeli.w r19, 28(r11)
000854  67824501  storeli.w r20, 32(r11)
000858  67c25501  storeli.w r21, 36(r11)
00085c  e7826501  storeli.w r22, 40(r11)
000860  e7c27501  storeli.w r23, 44(r11)
000864  67838501  storeli.w r24, 48(r11)
000868  67c39501  storeli.w r25, 52(r11)
00086c  e783a501  storeli.w r26, 56(r11)
000870  e7c3b501  storeli.w r27, 60(r11)
000874  e3828500  loadli.w r5,  64(r11)
000878  e3c38500  loadli.w r7,  68(r11)
00087c  63849500  loadli.w r8,  72(r11)
000880  e3c69500  loadli.w r13,  76(r11)
000884  6387a500  loadli.w r14,  80(r11)
000888  e3c7a500  loadli.w r15,  84(r11)
00088c  6388b500  loadli.w r16,  88(r11)
000890  e3c9b500  loadli.w r19,  92(r11)
000894  638ac500  loadli.w r20,  96(r11)
000898  e3cac500  loadli.w r21,  100(r11)
00089c  638bd500  loadli.w r22,  104(r11)
0008a0  e3cbd500  loadli.w r23,  108(r11)
0008a4  638ce500  loadli.w r24,  112(r11)
0008a8  e3cce500  loadli.w r25,  116(r11)
0008ac  638df500  loadli.w r26,  120(r11)
0008b0  e3cdf500  loadli.w r27,  124(r11)
0008b4  8f820200  exp.f.rn r5, r5
0008b8  8f830300  exp.f.rn r7, r7
0008bc  0f040400  exp.f.rn r8, r8
0008c0  8f860600  exp.f.rn r13, r13
0008c4  0f070700  exp.f.rn r14, r14
0008c8  8f870700  exp.f.rn r15, r15
0008cc  0f080800  exp.f.rn r16, r16
0008d0  8f890900  exp.f.rn r19, r19
0008d4  0f0a0a00  exp.f.rn r20, r20
0008d8  8f8a0a00  exp.f.rn r21, r21
0008dc  0f0b0b00  exp.f.rn r22, r22
0008e0  8f8b0b00  exp.f.rn r23, r23
0008e4  0f0c0c00  exp.f.rn r24, r24
0008e8  8f8c0c00  exp.f.rn r25, r25
0008ec  0f0d0d00  exp.f.rn r26, r26
0008f0  8f8d0d00  exp.f.rn r27, r27
0008f4  67845500  storeli.w r5, 64(r11)
0008f8  67c47500  storeli.w r7, 68(r11)
0008fc  e7848500  storeli.w r8, 72(r11)
000900  e7c4d500  storeli.w r13, 76(r11)
000904  6785e500  storeli.w r14, 80(r11)
000908  67c5f500  storeli.w r15, 84(r11)
00090c  e7850501  storeli.w r16, 88(r11)
000910  e7c53501  storeli.w r19, 92(r11)
000914  67864501  storeli.w r20, 96(r11)
000918  67c65501  storeli.w r21, 100(r11)
00091c  e7866501  storeli.w r22, 104(r11)
000920  e7c67501  storeli.w r23, 108(r11)
000924  67878501  storeli.w r24, 112(r11)
000928  67c79501  storeli.w r25, 116(r11)
00092c  e787a501  storeli.w r26, 120(r11)
000930  e7c7b501  storeli.w r27, 124(r11)
000934  e3820501  loadli.w r5,  128(r11)
000938  e3c30501  loadli.w r7,  132(r11)
00093c  63841501  loadli.w r8,  136(r11)
000940  e3c61501  loadli.w r13,  140(r11)
000944  63872501  loadli.w r14,  144(r11)
000948  e3c72501  loadli.w r15,  148(r11)
00094c  63883501  loadli.w r16,  152(r11)
000950  e3c93501  loadli.w r19,  156(r11)
000954  638a4501  loadli.w r20,  160(r11)
000958  e3ca4501  loadli.w r21,  164(r11)
00095c  638b5501  loadli.w r22,  168(r11)
000960  e3cb5501  loadli.w r23,  172(r11)
000964  638c6501  loadli.w r24,  176(r11)
000968  e3cc6501  loadli.w r25,  180(r11)
00096c  638d7501  loadli.w r26,  184(r11)
000970  e3cd7501  loadli.w r27,  188(r11)
000974  8f820200  exp.f.rn r5, r5
000978  8f830300  exp.f.rn r7, r7
00097c  0f040400  exp.f.rn r8, r8
000980  8f860600  exp.f.rn r13, r13
000984  0f070700  exp.f.rn r14, r14
000988  8f870700  exp.f.rn r15, r15
00098c  0f080800  exp.f.rn r16, r16
000990  8f890900  exp.f.rn r19, r19
000994  0f0a0a00  exp.f.rn r20, r20
000998  8f8a0a00  exp.f.rn r21, r21
00099c  0f0b0b00  exp.f.rn r22, r22
0009a0  8f8b0b00  exp.f.rn r23, r23
0009a4  0f0c0c00  exp.f.rn r24, r24
0009a8  8f8c0c00  exp.f.rn r25, r25
0009ac  0f0d0d00  exp.f.rn r26, r26
0009b0  8f8d0d00  exp.f.rn r27, r27
0009b4  67885500  storeli.w r5, 128(r11)
0009b8  67c87500  storeli.w r7, 132(r11)
0009bc  e7888500  storeli.w r8, 136(r11)
0009c0  e7c8d500  storeli.w r13, 140(r11)
0009c4  6789e500  storeli.w r14, 144(r11)
0009c8  67c9f500  storeli.w r15, 148(r11)
0009cc  e7890501  storeli.w r16, 152(r11)
0009d0  e7c93501  storeli.w r19, 156(r11)
0009d4  678a4501  storeli.w r20, 160(r11)
0009d8  67ca5501  storeli.w r21, 164(r11)
0009dc  e78a6501  storeli.w r22, 168(r11)
0009e0  e7ca7501  storeli.w r23, 172(r11)
0009e4  678b8501  storeli.w r24, 176(r11)
0009e8  67cb9501  storeli.w r25, 180(r11)
0009ec  e78ba501  storeli.w r26, 184(r11)
0009f0  e7cbb501  storeli.w r27, 188(r11)
0009f4  e3828501  loadli.w r5,  192(r11)
0009f8  e3c38501  loadli.w r7,  196(r11)
0009fc  63849501  loadli.w r8,  200(r11)
000a00  e3c69501  loadli.w r13,  204(r11)
000a04  6387a501  loadli.w r14,  208(r11)
000a08  e3c7a501  loadli.w r15,  212(r11)
000a0c  6388b501  loadli.w r16,  216(r11)
000a10  e3c9b501  loadli.w r19,  220(r11)
000a14  638ac501  loadli.w r20,  224(r11)
000a18  e3cac501  loadli.w r21,  228(r11)
000a1c  638bd501  loadli.w r22,  232(r11)
000a20  e3cbd501  loadli.w r23,  236(r11)
000a24  638ce501  loadli.w r24,  240(r11)
000a28  e3cce501  loadli.w r25,  244(r11)
000a2c  638df501  loadli.w r26,  248(r11)
000a30  e3cdf501  loadli.w r27,  252(r11)
000a34  8f820200  exp.f.rn r5, r5
000a38  8f830300  exp.f.rn r7, r7
000a3c  0f040400  exp.f.rn r8, r8
000a40  8f860600  exp.f.rn r13, r13
000a44  0f070700  exp.f.rn r14, r14
000a48  8f870700  exp.f.rn r15, r15
000a4c  0f080800  exp.f.rn r16, r16
000a50  8f890900  exp.f.rn r19, r19
000a54  0f0a0a00  exp.f.rn r20, r20
000a58  8f8a0a00  exp.f.rn r21, r21
000a5c  0f0b0b00  exp.f.rn r22, r22
000a60  8f8b0b00  exp.f.rn r23, r23
000a64  0f0c0c00  exp.f.rn r24, r24
000a68  8f8c0c00  exp.f.rn r25, r25
000a6c  0f0d0d00  exp.f.rn r26, r26
000a70  8f8d0d00  exp.f.rn r27, r27
000a74  678c5500  storeli.w r5, 192(r11)
000a78  67cc7500  storeli.w r7, 196(r11)
000a7c  e78c8500  storeli.w r8, 200(r11)
000a80  e7ccd500  storeli.w r13, 204(r11)
000a84  678de500  storeli.w r14, 208(r11)
000a88  67cdf500  storeli.w r15, 212(r11)
000a8c  e78d0501  storeli.w r16, 216(r11)
000a90  e7cd3501  storeli.w r19, 220(r11)
000a94  678e4501  storeli.w r20, 224(r11)
000a98  67ce5501  storeli.w r21, 228(r11)
000a9c  e78e6501  storeli.w r22, 232(r11)
000aa0  e7ce7501  storeli.w r23, 236(r11)
000aa4  678f8501  storeli.w r24, 240(r11)
000aa8  67cf9501  storeli.w r25, 244(r11)
000aac  e78fa501  storeli.w r26, 248(r11)
000ab0  e7cfb501  storeli.w r27, 252(r11)
000ab4  00a00000  mfence { lm }
000ab8  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
000abc  96922102  vadd.f.mz.rn vr5{mr1}, vr3, vr2
000ac0  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
000ac4  96920202  vadd.f.mz.rn vr5{mr1}, vr5, vr0
000ac8  16934202  vadd.f.mz.rn vr6{mr1}, vr5, vr4
000acc  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
000ad0  96135302  vadd.f.mz.rn vr7{mr1}, vr6, vr5
000ad4  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
000ad8  16946302  vadd.f.mz.rn vr8{mr1}, vr7, vr6
000adc  c2138fe3  vload_mask16.mz vr7{mr1}, 1984(r30)
000ae0  16147402  vadd.f.mz.rn vr8{mr1}, vr8, vr7
000ae4  fa120440  vextracti.f r5, 0(vr8)
000ae8  fa131440  vextracti.f r7, 1(vr8)
000aec  8be27210  add.f.rn r5, r5, r7
000af0  fa132440  vextracti.f r7, 2(vr8)
000af4  8be25310  add.f.rn r5, r7, r5
000af8  fa133440  vextracti.f r7, 3(vr8)
000afc  8be25310  add.f.rn r5, r7, r5
000b00  fa134440  vextracti.f r7, 4(vr8)
000b04  8be25310  add.f.rn r5, r7, r5
000b08  fa135440  vextracti.f r7, 5(vr8)
000b0c  8be25310  add.f.rn r5, r7, r5
000b10  fa136440  vextracti.f r7, 6(vr8)
000b14  8be25310  add.f.rn r5, r7, r5
000b18  fa137440  vextracti.f r7, 7(vr8)
000b1c  8be25310  add.f.rn r5, r7, r5
000b20  fa138440  vextracti.f r7, 8(vr8)
000b24  8be25310  add.f.rn r5, r7, r5
000b28  fa139440  vextracti.f r7, 9(vr8)
000b2c  8be25310  add.f.rn r5, r7, r5
000b30  fa13a440  vextracti.f r7, 10(vr8)
000b34  8be25310  add.f.rn r5, r7, r5
000b38  fa13b440  vextracti.f r7, 11(vr8)
000b3c  8be25310  add.f.rn r5, r7, r5
000b40  fa13c440  vextracti.f r7, 12(vr8)
000b44  8be25310  add.f.rn r5, r7, r5
000b48  fa13d440  vextracti.f r7, 13(vr8)
000b4c  8be25310  add.f.rn r5, r7, r5
000b50  fa13e440  vextracti.f r7, 14(vr8)
000b54  8be25310  add.f.rn r5, r7, r5
000b58  fa13f440  vextracti.f r7, 15(vr8)
000b5c  8be25310  add.f.rn r5, r7, r5
000b60  e343fff5  loadli.w r7,  -1284(r30)
000b64  73e05300  stores.w r5, 0(r7)
000b68  00a00300  mfence { lm, sm, gm }
000b6c  80210204  csr_set csr3, r4
000b70  00d00100  sync_group
000b74  3b110900  bneq r18, zero, 68
000b78  ef420500  loads.w r5, 0(r10)
000b7c  ef434500  loads.w r7, 4(r10)
000b80  6f448500  loads.w r8, 8(r10)
000b84  8be27210  add.f.rn r5, r5, r7
000b88  ef43c500  loads.w r7, 12(r10)
000b8c  8be28210  add.f.rn r5, r5, r8
000b90  6f440501  loads.w r8, 16(r10)
000b94  8be27210  add.f.rn r5, r5, r7
000b98  ef434501  loads.w r7, 20(r10)
000b9c  8be28210  add.f.rn r5, r5, r8
000ba0  6f448501  loads.w r8, 24(r10)
000ba4  8be27210  add.f.rn r5, r5, r7
000ba8  ef43c501  loads.w r7, 28(r10)
000bac  8be28210  add.f.rn r5, r5, r8
000bb0  8be27210  add.f.rn r5, r5, r7
000bb4  73605500  stores.w r5, 0(r10)
000bb8  00a00300  mfence { lm, sm, gm }
000bbc  80210204  csr_set csr3, r4
000bc0  00d00100  sync_group
000bc4  ef420500  loads.w r5, 0(r10)
000bc8  ab03803f  lui r7, 260096
000bcc  1f840000  addli r8, r1, 0
000bd0  9f070ffa  addli r15, r30, -768
000bd4  8f825318  div.f.rn r5, r7, r5
000bd8  8a913202  vmul.f.mz.rn vr3{mr1}, r5, vr3
000bdc  0a912202  vmul.f.mz.rn vr2{mr1}, r5, vr2
000be0  46103fa2  vstore_mask16.mz vr3{mr1}, 1280(r30)
000be4  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
000be8  46142fa2  vstore_mask16.mz vr2{mr1}, 1344(r30)
000bec  0a900202  vmul.f.mz.rn vr0{mr1}, r5, vr0
000bf0  46181fa2  vstore_mask16.mz vr1{mr1}, 1408(r30)
000bf4  0a924202  vmul.f.mz.rn vr4{mr1}, r5, vr4
000bf8  461c0fa2  vstore_mask16.mz vr0{mr1}, 1472(r30)
000bfc  8a925202  vmul.f.mz.rn vr5{mr1}, r5, vr5
000c00  46104fc2  vstore_mask16.mz vr4{mr1}, 1536(r30)
000c04  0a936202  vmul.f.mz.rn vr6{mr1}, r5, vr6
000c08  46145fc2  vstore_mask16.mz vr5{mr1}, 1600(r30)
000c0c  8a937202  vmul.f.mz.rn vr7{mr1}, r5, vr7
000c10  46186fc2  vstore_mask16.mz vr6{mr1}, 1664(r30)
000c14  461c7fc2  vstore_mask16.mz vr7{mr1}, 1728(r30)
000c18  00a00000  mfence { lm }
000c1c  e3028f00  loadli.w r5,  64(r30)
000c20  bff758fa  blt.s r17, r5, -2564
000c24  1f040000  addli r8, zero, 0
000c28  dbbefeff  j -2572
000c2c  9f0e8ff5  addli sp, r30, -1344
000c30  9f8e8e0a  addli sp, sp, 1344
000c34  00a00300  mfence { lm, sm, gm }
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
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
000de4  00100000  exit
000de8  00100000  exit
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
