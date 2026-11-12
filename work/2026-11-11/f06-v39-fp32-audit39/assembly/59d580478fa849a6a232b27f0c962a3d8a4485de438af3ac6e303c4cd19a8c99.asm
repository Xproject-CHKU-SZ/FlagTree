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
000154  4bcb6004  ble.s r1, r6, 2768
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
000180  eb5d8f01  load.d r[28:29], 24(r30)
000184  eb590f05  load.d r[20:21], 80(r30)
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
0001b0  1f080ffa  addli r16, r30, -768
0001b4  9f070ffe  addli r15, r30, -256
0001b8  674e5ff4  storeli.w r5, -1308(r30)
0001bc  9b827100  andi r5, r3, 7
0001c0  abf1ffff  lui r3, 1048575
0001c4  73349fae  store.d r[10:11], -1304(r30)
0001c8  8b941c19  sub.s r9, r25, r17
0001cc  0b151719  sub.s r10, r14, r17
0001d0  9b9101fe  ori r3, r3, 4064
0001d4  8b940448  max.s r9, r9, zero
0001d8  670e5ff4  storeli.w r5, -1312(r30)
0001dc  97013600  and r3, r12, r3
0001e0  33860228  zext_int2long r[13:14], r5
0001e4  8b948440  min.s r9, r9, r8
0001e8  8b913510  add.s r3, r11, r3
0001ec  8b150548  max.s r11, r10, zero
0001f0  9bb22400  slli r5, r9, 2
0001f4  733ccfac  store.d r[13:14], -1320(r30)
0001f8  0bb61d20  mul.sl r[13:14], r[28:29], r[2:3]
0001fc  9f840120  addli r9, r3, 4096
000200  1f852160  addli r10, r3, 12304
000204  8b918540  min.s r3, r11, r8
000208  7338cfac  store.d r[13:14], -1328(r30)
00020c  8bb51920  mul.sl r[12:13], r[20:21], r[2:3]
000210  e74c5ff4  storeli.w r5, -1332(r30)
000214  9bb02100  slli r1, r3, 2
000218  db080000  j 68
00021c  eb568f04  load.d r[14:15], 72(r30)
000220  9f230000  addli r7, zero, 2
000224  ab0200f0  lui r5, 983040
000228  97125400  or r5, r8, r5
00022c  0b31d120  mul.sl r[3:4], r[3:4], r[14:15]
000230  eb568f03  load.d r[14:15], 56(r30)
000234  0b21b110  add.ul r[3:4], r[3:4], r[12:13]
000238  17317102  sll.d r[3:4], r[3:4], r7
00023c  0ba12610  add.ul r[3:4], r[14:15], r[3:4]
000240  ff320101  s_lm2gm r5, r16, 0(r[3:4])
000244  6301eff5  loadli.w r2,  -1296(r30)
000248  00a00000  mfence { lm }
00024c  0b132310  add.s r6, r6, r2
000250  6341eff5  loadli.w r2,  -1292(r30)
000254  3f202300  blt.s r6, r2, 8
000258  db390100  j 2508
00025c  6341cf00  loadli.w r2,  100(r30)
000260  e301cf00  loadli.w r3,  96(r30)
000264  e342cff5  loadli.w r5,  -1308(r30)
000268  eb568fae  load.d r[14:15], -1304(r30)
00026c  0b112330  div.s r2, r6, r2
000270  0b113130  div.s r2, r2, r3
000274  ab0100f0  lui r3, 983040
000278  97913200  or r3, r5, r3
00027c  9f020ff6  addli r5, r30, -1280
000280  ffa15600  l_gm2lm r3, r5, 0(r[14:15])
000284  e301cff5  loadli.w r3,  -1312(r30)
000288  00a00000  mfence { lm }
00028c  1b313100  slli r2, r2, 3
000290  63449ff5  loadli.w r8,  -1332(r30)
000294  97183100  or r17, r2, r3
000298  e3011f00  loadli.w r3,  8(r30)
00029c  3fa03800  blt.s r17, r3, 8
0002a0  1f040000  addli r8, zero, 0
0002a4  eb568fad  load.d r[14:15], -1320(r30)
0002a8  33110128  sext_int2long r[3:4], r2
0002ac  1711d102  or.d r[3:4], r[3:4], r[14:15]
0002b0  eb560f01  load.d r[14:15], 16(r30)
0002b4  8b39d120  mul.sl r[20:21], r[3:4], r[14:15]
0002b8  eb560fad  load.d r[14:15], -1328(r30)
0002bc  8ba9d910  add.ul r[20:21], r[20:21], r[14:15]
0002c0  2b0700f0  lui r14, 983040
0002c4  1714e400  or r8, r8, r14
0002c8  eb560f00  load.d r[14:15], 0(r30)
0002cc  97b97902  sll.d r[20:21], r[20:21], r7
0002d0  8ba93611  add.ul r[20:21], r[14:15], r[20:21]
0002d4  7fa40901  l_gm2lm r8, r16, 0(r[20:21])
0002d8  00a00000  mfence { lm }
0002dc  42100fa2  vload_mask16.mz vr0{mr1}, 1280(r30)
0002e0  c2108fa2  vload_mask16.mz vr1{mr1}, 1344(r30)
0002e4  c2110fa3  vload_mask16.mz vr3{mr1}, 1408(r30)
0002e8  42128fa3  vload_mask16.mz vr4{mr1}, 1472(r30)
0002ec  c2120fc2  vload_mask16.mz vr5{mr1}, 1536(r30)
0002f0  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
0002f4  9f028ff6  addli r5, r30, -1216
0002f8  42138fc2  vload_mask16.mz vr6{mr1}, 1600(r30)
0002fc  42140fc3  vload_mask16.mz vr8{mr1}, 1664(r30)
000300  c2148fc3  vload_mask16.mz vr9{mr1}, 1728(r30)
000304  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
000308  9f020ff7  addli r5, r30, -1152
00030c  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
000310  9f028ff7  addli r5, r30, -1088
000314  96132002  vadd.f.mz.rn vr7{mr1}, vr0, vr2
000318  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
00031c  1691a002  vadd.f.mz.rn vr2{mr1}, vr1, vr10
000320  c2100f82  vload_mask16.mz vr1{mr1}, 1024(r30)
000324  42158f82  vload_mask16.mz vr10{mr1}, 1088(r30)
000328  9691b102  vadd.f.mz.rn vr3{mr1}, vr3, vr11
00032c  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000330  42100f83  vload_mask16.mz vr0{mr1}, 1152(r30)
000334  c2158f83  vload_mask16.mz vr11{mr1}, 1216(r30)
000338  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
00033c  1613a302  vadd.f.mz.rn vr6{mr1}, vr6, vr10
000340  96100402  vadd.f.mz.rn vr1{mr1}, vr8, vr0
000344  36942302  vmax.f.mz vr8{mr1}, vr7, vr2
000348  1690b402  vadd.f.mz.rn vr0{mr1}, vr9, vr11
00034c  36143402  vmax.f.mz vr8{mr1}, vr8, vr3
000350  36144402  vmax.f.mz vr8{mr1}, vr8, vr4
000354  36145402  vmax.f.mz vr8{mr1}, vr8, vr5
000358  36146402  vmax.f.mz vr8{mr1}, vr8, vr6
00035c  36141402  vmax.f.mz vr8{mr1}, vr8, vr1
000360  36140402  vmax.f.mz vr8{mr1}, vr8, vr0
000364  7a140440  vextracti.f r8, 0(vr8)
000368  7a171440  vextracti.f r14, 1(vr8)
00036c  fa192440  vextracti.f r19, 2(vr8)
000370  fa124440  vextracti.f r5, 4(vr8)
000374  7a1a3440  vextracti.f r20, 3(vr8)
000378  fa135440  vextracti.f r7, 5(vr8)
00037c  fa1a6440  vextracti.f r21, 6(vr8)
000380  7a1b7440  vextracti.f r22, 7(vr8)
000384  fa1b8440  vextracti.f r23, 8(vr8)
000388  7a1c9440  vextracti.f r24, 9(vr8)
00038c  fa1ca440  vextracti.f r25, 10(vr8)
000390  7a1db440  vextracti.f r26, 11(vr8)
000394  fa1dc440  vextracti.f r27, 12(vr8)
000398  7a1ed440  vextracti.f r28, 13(vr8)
00039c  7a18e440  vextracti.f r16, 14(vr8)
0003a0  fa16f440  vextracti.f r13, 15(vr8)
0003a4  0b64e448  max.f r8, r8, r14
0003a8  0b643449  max.f r8, r8, r19
0003ac  0b644449  max.f r8, r8, r20
0003b0  8b625448  max.f r5, r8, r5
0003b4  8be27248  max.f r5, r5, r7
0003b8  e303fff5  loadli.w r7,  -1288(r30)
0003bc  8be25249  max.f r5, r5, r21
0003c0  8be26249  max.f r5, r5, r22
0003c4  8be27249  max.f r5, r5, r23
0003c8  8be28249  max.f r5, r5, r24
0003cc  8be29249  max.f r5, r5, r25
0003d0  8be2a249  max.f r5, r5, r26
0003d4  8be2b249  max.f r5, r5, r27
0003d8  8be2c249  max.f r5, r5, r28
0003dc  8be20249  max.f r5, r5, r16
0003e0  8be2d248  max.f r5, r5, r13
0003e4  73e05300  stores.w r5, 0(r7)
0003e8  00a00300  mfence { lm, sm, gm }
0003ec  80210204  csr_set csr3, r4
0003f0  00d00100  sync_group
0003f4  3b110900  bneq r18, zero, 68
0003f8  efc20400  loads.w r5, 0(r9)
0003fc  efc34400  loads.w r7, 4(r9)
000400  6fc48400  loads.w r8, 8(r9)
000404  efc6c400  loads.w r13, 12(r9)
000408  6fc70401  loads.w r14, 16(r9)
00040c  6fc84401  loads.w r16, 20(r9)
000410  efc98401  loads.w r19, 24(r9)
000414  6fcac401  loads.w r20, 28(r9)
000418  8be27248  max.f r5, r5, r7
00041c  8be28248  max.f r5, r5, r8
000420  8be2d248  max.f r5, r5, r13
000424  8be2e248  max.f r5, r5, r14
000428  8be20249  max.f r5, r5, r16
00042c  8be23249  max.f r5, r5, r19
000430  8be24249  max.f r5, r5, r20
000434  73e05400  stores.w r5, 0(r9)
000438  00a00300  mfence { lm, sm, gm }
00043c  80210204  csr_set csr3, r4
000440  00d00100  sync_group
000444  efc20400  loads.w r5, 0(r9)
000448  ab030080  lui r7, 524288
00044c  97a27200  xor r5, r5, r7
000450  92937202  vadd.f.mz.rn vr7{mr1}, r5, vr7
000454  12944202  vadd.f.mz.rn vr8{mr1}, r5, vr4
000458  46107fe2  vstore_mask16.mz vr7{mr1}, 1792(r30)
00045c  12912202  vadd.f.mz.rn vr2{mr1}, r5, vr2
000460  92913202  vadd.f.mz.rn vr3{mr1}, r5, vr3
000464  46142fe2  vstore_mask16.mz vr2{mr1}, 1856(r30)
000468  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
00046c  461c8fe2  vstore_mask16.mz vr8{mr1}, 1984(r30)
000470  12926202  vadd.f.mz.rn vr4{mr1}, r5, vr6
000474  12931202  vadd.f.mz.rn vr6{mr1}, r5, vr1
000478  92925202  vadd.f.mz.rn vr5{mr1}, r5, vr5
00047c  00a00000  mfence { lm }
000480  e3830700  loadli.w r7,  0(r15)
000484  63c40700  loadli.w r8,  4(r15)
000488  e3861700  loadli.w r13,  8(r15)
00048c  63c71700  loadli.w r14,  12(r15)
000490  63882700  loadli.w r16,  16(r15)
000494  e3c92700  loadli.w r19,  20(r15)
000498  638a3700  loadli.w r20,  24(r15)
00049c  e3ca3700  loadli.w r21,  28(r15)
0004a0  8f830300  exp.f.rn r7, r7
0004a4  0f040400  exp.f.rn r8, r8
0004a8  8f860600  exp.f.rn r13, r13
0004ac  0f070700  exp.f.rn r14, r14
0004b0  0f080800  exp.f.rn r16, r16
0004b4  8f890900  exp.f.rn r19, r19
0004b8  0f0a0a00  exp.f.rn r20, r20
0004bc  8f8a0a00  exp.f.rn r21, r21
0004c0  67807700  storeli.w r7, 0(r15)
0004c4  67c08700  storeli.w r8, 4(r15)
0004c8  e780d700  storeli.w r13, 8(r15)
0004cc  e7c0e700  storeli.w r14, 12(r15)
0004d0  67810701  storeli.w r16, 16(r15)
0004d4  67c13701  storeli.w r19, 20(r15)
0004d8  e7814701  storeli.w r20, 24(r15)
0004dc  e7c15701  storeli.w r21, 28(r15)
0004e0  e3834700  loadli.w r7,  32(r15)
0004e4  63c44700  loadli.w r8,  36(r15)
0004e8  e3865700  loadli.w r13,  40(r15)
0004ec  63c75700  loadli.w r14,  44(r15)
0004f0  63886700  loadli.w r16,  48(r15)
0004f4  e3c96700  loadli.w r19,  52(r15)
0004f8  638a7700  loadli.w r20,  56(r15)
0004fc  e3ca7700  loadli.w r21,  60(r15)
000500  8f830300  exp.f.rn r7, r7
000504  0f040400  exp.f.rn r8, r8
000508  8f860600  exp.f.rn r13, r13
00050c  0f070700  exp.f.rn r14, r14
000510  0f080800  exp.f.rn r16, r16
000514  8f890900  exp.f.rn r19, r19
000518  0f0a0a00  exp.f.rn r20, r20
00051c  8f8a0a00  exp.f.rn r21, r21
000520  67827700  storeli.w r7, 32(r15)
000524  67c28700  storeli.w r8, 36(r15)
000528  e782d700  storeli.w r13, 40(r15)
00052c  e7c2e700  storeli.w r14, 44(r15)
000530  67830701  storeli.w r16, 48(r15)
000534  67c33701  storeli.w r19, 52(r15)
000538  e7834701  storeli.w r20, 56(r15)
00053c  e7c35701  storeli.w r21, 60(r15)
000540  e3838700  loadli.w r7,  64(r15)
000544  63c48700  loadli.w r8,  68(r15)
000548  e3869700  loadli.w r13,  72(r15)
00054c  63c79700  loadli.w r14,  76(r15)
000550  6388a700  loadli.w r16,  80(r15)
000554  e3c9a700  loadli.w r19,  84(r15)
000558  638ab700  loadli.w r20,  88(r15)
00055c  e3cab700  loadli.w r21,  92(r15)
000560  8f830300  exp.f.rn r7, r7
000564  0f040400  exp.f.rn r8, r8
000568  8f860600  exp.f.rn r13, r13
00056c  0f070700  exp.f.rn r14, r14
000570  0f080800  exp.f.rn r16, r16
000574  8f890900  exp.f.rn r19, r19
000578  0f0a0a00  exp.f.rn r20, r20
00057c  8f8a0a00  exp.f.rn r21, r21
000580  67847700  storeli.w r7, 64(r15)
000584  67c48700  storeli.w r8, 68(r15)
000588  e784d700  storeli.w r13, 72(r15)
00058c  e7c4e700  storeli.w r14, 76(r15)
000590  67850701  storeli.w r16, 80(r15)
000594  67c53701  storeli.w r19, 84(r15)
000598  e7854701  storeli.w r20, 88(r15)
00059c  e7c55701  storeli.w r21, 92(r15)
0005a0  e383c700  loadli.w r7,  96(r15)
0005a4  63c4c700  loadli.w r8,  100(r15)
0005a8  e386d700  loadli.w r13,  104(r15)
0005ac  63c7d700  loadli.w r14,  108(r15)
0005b0  6388e700  loadli.w r16,  112(r15)
0005b4  e3c9e700  loadli.w r19,  116(r15)
0005b8  638af700  loadli.w r20,  120(r15)
0005bc  e3caf700  loadli.w r21,  124(r15)
0005c0  8f830300  exp.f.rn r7, r7
0005c4  0f040400  exp.f.rn r8, r8
0005c8  8f860600  exp.f.rn r13, r13
0005cc  0f070700  exp.f.rn r14, r14
0005d0  0f080800  exp.f.rn r16, r16
0005d4  8f890900  exp.f.rn r19, r19
0005d8  0f0a0a00  exp.f.rn r20, r20
0005dc  8f8a0a00  exp.f.rn r21, r21
0005e0  67867700  storeli.w r7, 96(r15)
0005e4  67c68700  storeli.w r8, 100(r15)
0005e8  e786d700  storeli.w r13, 104(r15)
0005ec  e7c6e700  storeli.w r14, 108(r15)
0005f0  67870701  storeli.w r16, 112(r15)
0005f4  67c73701  storeli.w r19, 116(r15)
0005f8  e7874701  storeli.w r20, 120(r15)
0005fc  e7c75701  storeli.w r21, 124(r15)
000600  e3830701  loadli.w r7,  128(r15)
000604  63c40701  loadli.w r8,  132(r15)
000608  e3861701  loadli.w r13,  136(r15)
00060c  63c71701  loadli.w r14,  140(r15)
000610  63882701  loadli.w r16,  144(r15)
000614  e3c92701  loadli.w r19,  148(r15)
000618  638a3701  loadli.w r20,  152(r15)
00061c  e3ca3701  loadli.w r21,  156(r15)
000620  8f830300  exp.f.rn r7, r7
000624  0f040400  exp.f.rn r8, r8
000628  8f860600  exp.f.rn r13, r13
00062c  0f070700  exp.f.rn r14, r14
000630  0f080800  exp.f.rn r16, r16
000634  8f890900  exp.f.rn r19, r19
000638  0f0a0a00  exp.f.rn r20, r20
00063c  8f8a0a00  exp.f.rn r21, r21
000640  67887700  storeli.w r7, 128(r15)
000644  67c88700  storeli.w r8, 132(r15)
000648  e788d700  storeli.w r13, 136(r15)
00064c  e7c8e700  storeli.w r14, 140(r15)
000650  67890701  storeli.w r16, 144(r15)
000654  67c93701  storeli.w r19, 148(r15)
000658  e7894701  storeli.w r20, 152(r15)
00065c  e7c95701  storeli.w r21, 156(r15)
000660  e3834701  loadli.w r7,  160(r15)
000664  63c44701  loadli.w r8,  164(r15)
000668  e3865701  loadli.w r13,  168(r15)
00066c  63c75701  loadli.w r14,  172(r15)
000670  63886701  loadli.w r16,  176(r15)
000674  e3c96701  loadli.w r19,  180(r15)
000678  638a7701  loadli.w r20,  184(r15)
00067c  e3ca7701  loadli.w r21,  188(r15)
000680  8f830300  exp.f.rn r7, r7
000684  0f040400  exp.f.rn r8, r8
000688  8f860600  exp.f.rn r13, r13
00068c  0f070700  exp.f.rn r14, r14
000690  0f080800  exp.f.rn r16, r16
000694  8f890900  exp.f.rn r19, r19
000698  0f0a0a00  exp.f.rn r20, r20
00069c  8f8a0a00  exp.f.rn r21, r21
0006a0  678a7700  storeli.w r7, 160(r15)
0006a4  67ca8700  storeli.w r8, 164(r15)
0006a8  e78ad700  storeli.w r13, 168(r15)
0006ac  e7cae700  storeli.w r14, 172(r15)
0006b0  678b0701  storeli.w r16, 176(r15)
0006b4  67cb3701  storeli.w r19, 180(r15)
0006b8  e78b4701  storeli.w r20, 184(r15)
0006bc  e7cb5701  storeli.w r21, 188(r15)
0006c0  e3838701  loadli.w r7,  192(r15)
0006c4  63c48701  loadli.w r8,  196(r15)
0006c8  e3869701  loadli.w r13,  200(r15)
0006cc  63c79701  loadli.w r14,  204(r15)
0006d0  6388a701  loadli.w r16,  208(r15)
0006d4  e3c9a701  loadli.w r19,  212(r15)
0006d8  638ab701  loadli.w r20,  216(r15)
0006dc  e3cab701  loadli.w r21,  220(r15)
0006e0  8f830300  exp.f.rn r7, r7
0006e4  0f040400  exp.f.rn r8, r8
0006e8  8f860600  exp.f.rn r13, r13
0006ec  0f070700  exp.f.rn r14, r14
0006f0  0f080800  exp.f.rn r16, r16
0006f4  8f890900  exp.f.rn r19, r19
0006f8  0f0a0a00  exp.f.rn r20, r20
0006fc  8f8a0a00  exp.f.rn r21, r21
000700  678c7700  storeli.w r7, 192(r15)
000704  67cc8700  storeli.w r8, 196(r15)
000708  e78cd700  storeli.w r13, 200(r15)
00070c  e7cce700  storeli.w r14, 204(r15)
000710  678d0701  storeli.w r16, 208(r15)
000714  67cd3701  storeli.w r19, 212(r15)
000718  e78d4701  storeli.w r20, 216(r15)
00071c  e7cd5701  storeli.w r21, 220(r15)
000720  e383c701  loadli.w r7,  224(r15)
000724  63c4c701  loadli.w r8,  228(r15)
000728  e386d701  loadli.w r13,  232(r15)
00072c  63c7d701  loadli.w r14,  236(r15)
000730  6388e701  loadli.w r16,  240(r15)
000734  e3c9e701  loadli.w r19,  244(r15)
000738  638af701  loadli.w r20,  248(r15)
00073c  e3caf701  loadli.w r21,  252(r15)
000740  8f830300  exp.f.rn r7, r7
000744  0f040400  exp.f.rn r8, r8
000748  8f860600  exp.f.rn r13, r13
00074c  0f070700  exp.f.rn r14, r14
000750  0f080800  exp.f.rn r16, r16
000754  8f890900  exp.f.rn r19, r19
000758  0f0a0a00  exp.f.rn r20, r20
00075c  8f8a0a00  exp.f.rn r21, r21
000760  678e7700  storeli.w r7, 224(r15)
000764  67ce8700  storeli.w r8, 228(r15)
000768  e78ed700  storeli.w r13, 232(r15)
00076c  e7cee700  storeli.w r14, 236(r15)
000770  678f0701  storeli.w r16, 240(r15)
000774  67cf3701  storeli.w r19, 244(r15)
000778  e78f4701  storeli.w r20, 248(r15)
00077c  e7cf5701  storeli.w r21, 252(r15)
000780  00a00000  mfence { lm }
000784  92930202  vadd.f.mz.rn vr7{mr1}, r5, vr0
000788  c2110fe2  vload_mask16.mz vr3{mr1}, 1792(r30)
00078c  42118fe2  vload_mask16.mz vr2{mr1}, 1856(r30)
000790  c2100fe3  vload_mask16.mz vr1{mr1}, 1920(r30)
000794  42108fe3  vload_mask16.mz vr0{mr1}, 1984(r30)
000798  46105fe2  vstore_mask16.mz vr5{mr1}, 1792(r30)
00079c  46144fe2  vstore_mask16.mz vr4{mr1}, 1856(r30)
0007a0  46186fe2  vstore_mask16.mz vr6{mr1}, 1920(r30)
0007a4  461c7fe2  vstore_mask16.mz vr7{mr1}, 1984(r30)
0007a8  00a00000  mfence { lm }
0007ac  e3820700  loadli.w r5,  0(r15)
0007b0  e3c30700  loadli.w r7,  4(r15)
0007b4  63841700  loadli.w r8,  8(r15)
0007b8  e3c61700  loadli.w r13,  12(r15)
0007bc  63872700  loadli.w r14,  16(r15)
0007c0  63c82700  loadli.w r16,  20(r15)
0007c4  e3893700  loadli.w r19,  24(r15)
0007c8  63ca3700  loadli.w r20,  28(r15)
0007cc  8f820200  exp.f.rn r5, r5
0007d0  8f830300  exp.f.rn r7, r7
0007d4  0f040400  exp.f.rn r8, r8
0007d8  8f860600  exp.f.rn r13, r13
0007dc  0f070700  exp.f.rn r14, r14
0007e0  0f080800  exp.f.rn r16, r16
0007e4  8f890900  exp.f.rn r19, r19
0007e8  0f0a0a00  exp.f.rn r20, r20
0007ec  67805700  storeli.w r5, 0(r15)
0007f0  67c07700  storeli.w r7, 4(r15)
0007f4  e7808700  storeli.w r8, 8(r15)
0007f8  e7c0d700  storeli.w r13, 12(r15)
0007fc  6781e700  storeli.w r14, 16(r15)
000800  67c10701  storeli.w r16, 20(r15)
000804  e7813701  storeli.w r19, 24(r15)
000808  e7c14701  storeli.w r20, 28(r15)
00080c  e3824700  loadli.w r5,  32(r15)
000810  e3c34700  loadli.w r7,  36(r15)
000814  63845700  loadli.w r8,  40(r15)
000818  e3c65700  loadli.w r13,  44(r15)
00081c  63876700  loadli.w r14,  48(r15)
000820  63c86700  loadli.w r16,  52(r15)
000824  e3897700  loadli.w r19,  56(r15)
000828  63ca7700  loadli.w r20,  60(r15)
00082c  8f820200  exp.f.rn r5, r5
000830  8f830300  exp.f.rn r7, r7
000834  0f040400  exp.f.rn r8, r8
000838  8f860600  exp.f.rn r13, r13
00083c  0f070700  exp.f.rn r14, r14
000840  0f080800  exp.f.rn r16, r16
000844  8f890900  exp.f.rn r19, r19
000848  0f0a0a00  exp.f.rn r20, r20
00084c  67825700  storeli.w r5, 32(r15)
000850  67c27700  storeli.w r7, 36(r15)
000854  e7828700  storeli.w r8, 40(r15)
000858  e7c2d700  storeli.w r13, 44(r15)
00085c  6783e700  storeli.w r14, 48(r15)
000860  67c30701  storeli.w r16, 52(r15)
000864  e7833701  storeli.w r19, 56(r15)
000868  e7c34701  storeli.w r20, 60(r15)
00086c  e3828700  loadli.w r5,  64(r15)
000870  e3c38700  loadli.w r7,  68(r15)
000874  63849700  loadli.w r8,  72(r15)
000878  e3c69700  loadli.w r13,  76(r15)
00087c  6387a700  loadli.w r14,  80(r15)
000880  63c8a700  loadli.w r16,  84(r15)
000884  e389b700  loadli.w r19,  88(r15)
000888  63cab700  loadli.w r20,  92(r15)
00088c  8f820200  exp.f.rn r5, r5
000890  8f830300  exp.f.rn r7, r7
000894  0f040400  exp.f.rn r8, r8
000898  8f860600  exp.f.rn r13, r13
00089c  0f070700  exp.f.rn r14, r14
0008a0  0f080800  exp.f.rn r16, r16
0008a4  8f890900  exp.f.rn r19, r19
0008a8  0f0a0a00  exp.f.rn r20, r20
0008ac  67845700  storeli.w r5, 64(r15)
0008b0  67c47700  storeli.w r7, 68(r15)
0008b4  e7848700  storeli.w r8, 72(r15)
0008b8  e7c4d700  storeli.w r13, 76(r15)
0008bc  6785e700  storeli.w r14, 80(r15)
0008c0  67c50701  storeli.w r16, 84(r15)
0008c4  e7853701  storeli.w r19, 88(r15)
0008c8  e7c54701  storeli.w r20, 92(r15)
0008cc  e382c700  loadli.w r5,  96(r15)
0008d0  e3c3c700  loadli.w r7,  100(r15)
0008d4  6384d700  loadli.w r8,  104(r15)
0008d8  e3c6d700  loadli.w r13,  108(r15)
0008dc  6387e700  loadli.w r14,  112(r15)
0008e0  63c8e700  loadli.w r16,  116(r15)
0008e4  e389f700  loadli.w r19,  120(r15)
0008e8  63caf700  loadli.w r20,  124(r15)
0008ec  8f820200  exp.f.rn r5, r5
0008f0  8f830300  exp.f.rn r7, r7
0008f4  0f040400  exp.f.rn r8, r8
0008f8  8f860600  exp.f.rn r13, r13
0008fc  0f070700  exp.f.rn r14, r14
000900  0f080800  exp.f.rn r16, r16
000904  8f890900  exp.f.rn r19, r19
000908  0f0a0a00  exp.f.rn r20, r20
00090c  67865700  storeli.w r5, 96(r15)
000910  67c67700  storeli.w r7, 100(r15)
000914  e7868700  storeli.w r8, 104(r15)
000918  e7c6d700  storeli.w r13, 108(r15)
00091c  6787e700  storeli.w r14, 112(r15)
000920  67c70701  storeli.w r16, 116(r15)
000924  e7873701  storeli.w r19, 120(r15)
000928  e7c74701  storeli.w r20, 124(r15)
00092c  e3820701  loadli.w r5,  128(r15)
000930  e3c30701  loadli.w r7,  132(r15)
000934  63841701  loadli.w r8,  136(r15)
000938  e3c61701  loadli.w r13,  140(r15)
00093c  63872701  loadli.w r14,  144(r15)
000940  63c82701  loadli.w r16,  148(r15)
000944  e3893701  loadli.w r19,  152(r15)
000948  63ca3701  loadli.w r20,  156(r15)
00094c  8f820200  exp.f.rn r5, r5
000950  8f830300  exp.f.rn r7, r7
000954  0f040400  exp.f.rn r8, r8
000958  8f860600  exp.f.rn r13, r13
00095c  0f070700  exp.f.rn r14, r14
000960  0f080800  exp.f.rn r16, r16
000964  8f890900  exp.f.rn r19, r19
000968  0f0a0a00  exp.f.rn r20, r20
00096c  67885700  storeli.w r5, 128(r15)
000970  67c87700  storeli.w r7, 132(r15)
000974  e7888700  storeli.w r8, 136(r15)
000978  e7c8d700  storeli.w r13, 140(r15)
00097c  6789e700  storeli.w r14, 144(r15)
000980  67c90701  storeli.w r16, 148(r15)
000984  e7893701  storeli.w r19, 152(r15)
000988  e7c94701  storeli.w r20, 156(r15)
00098c  e3824701  loadli.w r5,  160(r15)
000990  e3c34701  loadli.w r7,  164(r15)
000994  63845701  loadli.w r8,  168(r15)
000998  e3c65701  loadli.w r13,  172(r15)
00099c  63876701  loadli.w r14,  176(r15)
0009a0  63c86701  loadli.w r16,  180(r15)
0009a4  e3897701  loadli.w r19,  184(r15)
0009a8  63ca7701  loadli.w r20,  188(r15)
0009ac  8f820200  exp.f.rn r5, r5
0009b0  8f830300  exp.f.rn r7, r7
0009b4  0f040400  exp.f.rn r8, r8
0009b8  8f860600  exp.f.rn r13, r13
0009bc  0f070700  exp.f.rn r14, r14
0009c0  0f080800  exp.f.rn r16, r16
0009c4  8f890900  exp.f.rn r19, r19
0009c8  0f0a0a00  exp.f.rn r20, r20
0009cc  678a5700  storeli.w r5, 160(r15)
0009d0  67ca7700  storeli.w r7, 164(r15)
0009d4  e78a8700  storeli.w r8, 168(r15)
0009d8  e7cad700  storeli.w r13, 172(r15)
0009dc  678be700  storeli.w r14, 176(r15)
0009e0  67cb0701  storeli.w r16, 180(r15)
0009e4  e78b3701  storeli.w r19, 184(r15)
0009e8  e7cb4701  storeli.w r20, 188(r15)
0009ec  e3828701  loadli.w r5,  192(r15)
0009f0  e3c38701  loadli.w r7,  196(r15)
0009f4  63849701  loadli.w r8,  200(r15)
0009f8  e3c69701  loadli.w r13,  204(r15)
0009fc  6387a701  loadli.w r14,  208(r15)
000a00  63c8a701  loadli.w r16,  212(r15)
000a04  e389b701  loadli.w r19,  216(r15)
000a08  63cab701  loadli.w r20,  220(r15)
000a0c  8f820200  exp.f.rn r5, r5
000a10  8f830300  exp.f.rn r7, r7
000a14  0f040400  exp.f.rn r8, r8
000a18  8f860600  exp.f.rn r13, r13
000a1c  0f070700  exp.f.rn r14, r14
000a20  0f080800  exp.f.rn r16, r16
000a24  8f890900  exp.f.rn r19, r19
000a28  0f0a0a00  exp.f.rn r20, r20
000a2c  678c5700  storeli.w r5, 192(r15)
000a30  67cc7700  storeli.w r7, 196(r15)
000a34  e78c8700  storeli.w r8, 200(r15)
000a38  e7ccd700  storeli.w r13, 204(r15)
000a3c  678de700  storeli.w r14, 208(r15)
000a40  67cd0701  storeli.w r16, 212(r15)
000a44  e78d3701  storeli.w r19, 216(r15)
000a48  e7cd4701  storeli.w r20, 220(r15)
000a4c  e382c701  loadli.w r5,  224(r15)
000a50  e3c3c701  loadli.w r7,  228(r15)
000a54  6384d701  loadli.w r8,  232(r15)
000a58  e3c6d701  loadli.w r13,  236(r15)
000a5c  6387e701  loadli.w r14,  240(r15)
000a60  63c8e701  loadli.w r16,  244(r15)
000a64  e389f701  loadli.w r19,  248(r15)
000a68  63caf701  loadli.w r20,  252(r15)
000a6c  8f820200  exp.f.rn r5, r5
000a70  8f830300  exp.f.rn r7, r7
000a74  0f040400  exp.f.rn r8, r8
000a78  8f860600  exp.f.rn r13, r13
000a7c  0f070700  exp.f.rn r14, r14
000a80  0f080800  exp.f.rn r16, r16
000a84  8f890900  exp.f.rn r19, r19
000a88  0f0a0a00  exp.f.rn r20, r20
000a8c  678e5700  storeli.w r5, 224(r15)
000a90  67ce7700  storeli.w r7, 228(r15)
000a94  e78e8700  storeli.w r8, 232(r15)
000a98  e7ced700  storeli.w r13, 236(r15)
000a9c  678fe700  storeli.w r14, 240(r15)
000aa0  67cf0701  storeli.w r16, 244(r15)
000aa4  e78f3701  storeli.w r19, 248(r15)
000aa8  e7cf4701  storeli.w r20, 252(r15)
000aac  00a00000  mfence { lm }
000ab0  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
000ab4  96922102  vadd.f.mz.rn vr5{mr1}, vr3, vr2
000ab8  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
000abc  96920202  vadd.f.mz.rn vr5{mr1}, vr5, vr0
000ac0  16934202  vadd.f.mz.rn vr6{mr1}, vr5, vr4
000ac4  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
000ac8  96135302  vadd.f.mz.rn vr7{mr1}, vr6, vr5
000acc  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
000ad0  16946302  vadd.f.mz.rn vr8{mr1}, vr7, vr6
000ad4  c2138fe3  vload_mask16.mz vr7{mr1}, 1984(r30)
000ad8  16147402  vadd.f.mz.rn vr8{mr1}, vr8, vr7
000adc  fa120440  vextracti.f r5, 0(vr8)
000ae0  fa131440  vextracti.f r7, 1(vr8)
000ae4  8be27210  add.f.rn r5, r5, r7
000ae8  fa132440  vextracti.f r7, 2(vr8)
000aec  8be25310  add.f.rn r5, r7, r5
000af0  fa133440  vextracti.f r7, 3(vr8)
000af4  8be25310  add.f.rn r5, r7, r5
000af8  fa134440  vextracti.f r7, 4(vr8)
000afc  8be25310  add.f.rn r5, r7, r5
000b00  fa135440  vextracti.f r7, 5(vr8)
000b04  8be25310  add.f.rn r5, r7, r5
000b08  fa136440  vextracti.f r7, 6(vr8)
000b0c  8be25310  add.f.rn r5, r7, r5
000b10  fa137440  vextracti.f r7, 7(vr8)
000b14  8be25310  add.f.rn r5, r7, r5
000b18  fa138440  vextracti.f r7, 8(vr8)
000b1c  8be25310  add.f.rn r5, r7, r5
000b20  fa139440  vextracti.f r7, 9(vr8)
000b24  8be25310  add.f.rn r5, r7, r5
000b28  fa13a440  vextracti.f r7, 10(vr8)
000b2c  8be25310  add.f.rn r5, r7, r5
000b30  fa13b440  vextracti.f r7, 11(vr8)
000b34  8be25310  add.f.rn r5, r7, r5
000b38  fa13c440  vextracti.f r7, 12(vr8)
000b3c  8be25310  add.f.rn r5, r7, r5
000b40  fa13d440  vextracti.f r7, 13(vr8)
000b44  8be25310  add.f.rn r5, r7, r5
000b48  fa13e440  vextracti.f r7, 14(vr8)
000b4c  8be25310  add.f.rn r5, r7, r5
000b50  fa13f440  vextracti.f r7, 15(vr8)
000b54  8be25310  add.f.rn r5, r7, r5
000b58  e343fff5  loadli.w r7,  -1284(r30)
000b5c  73e05300  stores.w r5, 0(r7)
000b60  00a00300  mfence { lm, sm, gm }
000b64  80210204  csr_set csr3, r4
000b68  00d00100  sync_group
000b6c  3b110900  bneq r18, zero, 68
000b70  ef420500  loads.w r5, 0(r10)
000b74  ef434500  loads.w r7, 4(r10)
000b78  6f448500  loads.w r8, 8(r10)
000b7c  8be27210  add.f.rn r5, r5, r7
000b80  ef43c500  loads.w r7, 12(r10)
000b84  8be28210  add.f.rn r5, r5, r8
000b88  6f440501  loads.w r8, 16(r10)
000b8c  8be27210  add.f.rn r5, r5, r7
000b90  ef434501  loads.w r7, 20(r10)
000b94  8be28210  add.f.rn r5, r5, r8
000b98  6f448501  loads.w r8, 24(r10)
000b9c  8be27210  add.f.rn r5, r5, r7
000ba0  ef43c501  loads.w r7, 28(r10)
000ba4  8be28210  add.f.rn r5, r5, r8
000ba8  8be27210  add.f.rn r5, r5, r7
000bac  73605500  stores.w r5, 0(r10)
000bb0  00a00300  mfence { lm, sm, gm }
000bb4  80210204  csr_set csr3, r4
000bb8  00d00100  sync_group
000bbc  ef420500  loads.w r5, 0(r10)
000bc0  ab03803f  lui r7, 260096
000bc4  1f840000  addli r8, r1, 0
000bc8  1f080ffa  addli r16, r30, -768
000bcc  8f825318  div.f.rn r5, r7, r5
000bd0  8a913202  vmul.f.mz.rn vr3{mr1}, r5, vr3
000bd4  0a912202  vmul.f.mz.rn vr2{mr1}, r5, vr2
000bd8  46103fa2  vstore_mask16.mz vr3{mr1}, 1280(r30)
000bdc  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
000be0  46142fa2  vstore_mask16.mz vr2{mr1}, 1344(r30)
000be4  0a900202  vmul.f.mz.rn vr0{mr1}, r5, vr0
000be8  46181fa2  vstore_mask16.mz vr1{mr1}, 1408(r30)
000bec  0a924202  vmul.f.mz.rn vr4{mr1}, r5, vr4
000bf0  461c0fa2  vstore_mask16.mz vr0{mr1}, 1472(r30)
000bf4  8a925202  vmul.f.mz.rn vr5{mr1}, r5, vr5
000bf8  46104fc2  vstore_mask16.mz vr4{mr1}, 1536(r30)
000bfc  0a936202  vmul.f.mz.rn vr6{mr1}, r5, vr6
000c00  46145fc2  vstore_mask16.mz vr5{mr1}, 1600(r30)
000c04  8a937202  vmul.f.mz.rn vr7{mr1}, r5, vr7
000c08  46186fc2  vstore_mask16.mz vr6{mr1}, 1664(r30)
000c0c  461c7fc2  vstore_mask16.mz vr7{mr1}, 1728(r30)
000c10  00a00000  mfence { lm }
000c14  e3028f00  loadli.w r5,  64(r30)
000c18  3f9858fa  blt.s r17, r5, -2556
000c1c  1f040000  addli r8, zero, 0
000c20  dbbffeff  j -2564
000c24  9f0e8ff5  addli sp, r30, -1344
000c28  9f8e8e0a  addli sp, sp, 1344
000c2c  00a00300  mfence { lm, sm, gm }
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
