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
0000e4  9f8e8ef8  addli sp, sp, -960
0000e8  ab000000  lui r1, 0
0000ec  00340002  core_id r8
0000f0  1f8f8e06  addli r30, sp, 832
0000f4  2bf20000  lui r4, 15
0000f8  1b312400  slli r2, r8, 2
0000fc  9f800000  addli r1, r1, 0
000100  e303cf00  loadli.w r7,  96(r30)
000104  6343bf00  loadli.w r6,  92(r30)
000108  e341cf00  loadli.w r3,  100(r30)
00010c  1b12f2ff  ori r4, r4, 4095
000110  8b922010  add.s r5, r1, r2
000114  8b936320  mul.s r7, r7, r6
000118  00530002  load_param_i r6, 0
00011c  9f842240  addli r9, r5, 8208
000120  9f820220  addli r5, r5, 4096
000124  8b913320  mul.s r3, r7, r3
000128  e74f9ff8  storeli.w r9, -772(r30)
00012c  73e00400  stores.w zero, 0(r9)
000130  00a00300  mfence { lm, sm, gm }
000134  80210204  csr_set csr3, r4
000138  00d00100  sync_group
00013c  e70f5ff8  storeli.w r5, -776(r30)
000140  73e00200  stores.w zero, 0(r5)
000144  00a00300  mfence { lm, sm, gm }
000148  80210204  csr_set csr3, r4
00014c  00d00100  sync_group
000150  674f3ff8  storeli.w r3, -780(r30)
000154  4bfe6102  ble.s r3, r6, 1948
000158  1b09f400  andi r18, r8, 15
00015c  63075f00  loadli.w r14,  40(r30)
000160  9f078000  addli r15, zero, 64
000164  80d10002  load_param_i r3, 1
000168  6b560f03  load.d r[13:14], 48(r30)
00016c  1b444400  srli r8, r8, 4
000170  9f230000  addli r7, zero, 2
000174  eb5a0f02  load.d r[22:23], 32(r30)
000178  e3448f00  loadli.w r9,  68(r30)
00017c  e34c1f00  loadli.w r25,  12(r30)
000180  eb5d8f01  load.d r[28:29], 24(r30)
000184  eb590f05  load.d r[20:21], 80(r30)
000188  9b386900  slli r17, r18, 6
00018c  670f3ff8  storeli.w r3, -784(r30)
000190  0b171719  sub.s r14, r14, r17
000194  33850828  zext_int2long r[11:12], r17
000198  0b170748  max.s r14, r14, zero
00019c  0b36a620  mul.sl r[13:14], r[13:14], r[11:12]
0001a0  0b17f740  min.s r14, r14, r15
0001a4  17367602  sll.d r[13:14], r[13:14], r7
0001a8  9b312700  slli r3, r14, 2
0001ac  0ba6ca10  add.ul r[13:14], r[22:23], r[13:14]
0001b0  674e3ff8  storeli.w r3, -796(r30)
0001b4  9b013400  andi r3, r8, 3
0001b8  2bf4ffff  lui r8, 1048575
0001bc  7334cfce  store.d r[13:14], -792(r30)
0001c0  0b961c19  sub.s r12, r25, r17
0001c4  1b1404fc  ori r8, r8, 4032
0001c8  0b160648  max.s r12, r12, zero
0001cc  670e3ff8  storeli.w r3, -800(r30)
0001d0  17048100  and r8, r2, r8
0001d4  33810128  zext_int2long r[3:4], r3
0001d8  8b908010  add.s r1, r1, r8
0001dc  0b941419  sub.s r8, r9, r17
0001e0  733c2fcc  store.d r[3:4], -808(r30)
0001e4  0b11f640  min.s r2, r12, r15
0001e8  0bb6ad20  mul.sl r[13:14], r[28:29], r[11:12]
0001ec  0bb5a920  mul.sl r[11:12], r[20:21], r[11:12]
0001f0  0b140448  max.s r8, r8, zero
0001f4  7338cfcc  store.d r[13:14], -816(r30)
0001f8  1b312100  slli r2, r2, 2
0001fc  9f840020  addli r9, r1, 4096
000200  9f802040  addli r1, r1, 8208
000204  9f060ffc  addli r13, r30, -512
000208  0b14f440  min.s r8, r8, r15
00020c  e74c2ff8  storeli.w r2, -820(r30)
000210  1b362400  slli r12, r8, 2
000214  5b080000  j 64
000218  6b518f04  load.d r[3:4], 72(r30)
00021c  ab0200f0  lui r5, 983040
000220  97125400  or r5, r8, r5
000224  0b312720  mul.sl r[3:4], r[15:16], r[3:4]
000228  6b578f03  load.d r[15:16], 56(r30)
00022c  0b21a110  add.ul r[3:4], r[3:4], r[11:12]
000230  17317102  sll.d r[3:4], r[3:4], r7
000234  0b212710  add.ul r[3:4], r[15:16], r[3:4]
000238  ff32d100  s_lm2gm r5, r13, 0(r[3:4])
00023c  6301eff9  loadli.w r2,  -784(r30)
000240  00a00000  mfence { lm }
000244  0b132310  add.s r6, r6, r2
000248  6341eff9  loadli.w r2,  -780(r30)
00024c  3f202300  blt.s r6, r2, 8
000250  5bd40000  j 1696
000254  6341cf00  loadli.w r2,  100(r30)
000258  2b0700f0  lui r14, 983040
00025c  9f020ffa  addli r5, r30, -768
000260  0b142330  div.s r8, r6, r2
000264  6301cf00  loadli.w r2,  96(r30)
000268  0b142430  div.s r8, r8, r2
00026c  6341cff9  loadli.w r2,  -796(r30)
000270  9717e100  or r15, r2, r14
000274  6b518fce  load.d r[3:4], -792(r30)
000278  ff275100  l_gm2lm r15, r5, 0(r[3:4])
00027c  6301cff9  loadli.w r2,  -800(r30)
000280  1b372400  slli r14, r8, 2
000284  00a00000  mfence { lm }
000288  63449ff9  loadli.w r8,  -820(r30)
00028c  97182700  or r17, r14, r2
000290  63011f00  loadli.w r2,  8(r30)
000294  3fa02800  blt.s r17, r2, 8
000298  1f040000  addli r8, zero, 0
00029c  6b518fcd  load.d r[3:4], -808(r30)
0002a0  33170728  sext_int2long r[15:16], r14
0002a4  2b0800f0  lui r16, 983040
0002a8  17140401  or r8, r8, r16
0002ac  17172702  or.d r[15:16], r[15:16], r[3:4]
0002b0  6b510f01  load.d r[3:4], 16(r30)
0002b4  8b392720  mul.sl r[20:21], r[15:16], r[3:4]
0002b8  6b510fcd  load.d r[3:4], -816(r30)
0002bc  8ba92910  add.ul r[20:21], r[20:21], r[3:4]
0002c0  6b510f00  load.d r[3:4], 0(r30)
0002c4  97b97902  sll.d r[20:21], r[20:21], r7
0002c8  8b293111  add.ul r[20:21], r[3:4], r[20:21]
0002cc  7fa4d900  l_gm2lm r8, r13, 0(r[20:21])
0002d0  00a00000  mfence { lm }
0002d4  42100fc2  vload_mask16.mz vr0{mr1}, 1536(r30)
0002d8  c2108fc2  vload_mask16.mz vr1{mr1}, 1600(r30)
0002dc  42110fc3  vload_mask16.mz vr2{mr1}, 1664(r30)
0002e0  c2110fa2  vload_mask16.mz vr3{mr1}, 1280(r30)
0002e4  42128fc3  vload_mask16.mz vr4{mr1}, 1728(r30)
0002e8  c2128fa2  vload_mask16.mz vr5{mr1}, 1344(r30)
0002ec  42130fa3  vload_mask16.mz vr6{mr1}, 1408(r30)
0002f0  c2138fa3  vload_mask16.mz vr7{mr1}, 1472(r30)
0002f4  6301fff9  loadli.w r2,  -776(r30)
0002f8  96113002  vadd.f.mz.rn vr3{mr1}, vr0, vr3
0002fc  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
000300  16107202  vadd.f.mz.rn vr0{mr1}, vr4, vr7
000304  36921102  vmax.f.mz vr4{mr1}, vr3, vr1
000308  16116102  vadd.f.mz.rn vr2{mr1}, vr2, vr6
00030c  36122202  vmax.f.mz vr4{mr1}, vr4, vr2
000310  36120202  vmax.f.mz vr4{mr1}, vr4, vr0
000314  7a140240  vextracti.f r8, 0(vr4)
000318  7a181240  vextracti.f r16, 1(vr4)
00031c  fa192240  vextracti.f r19, 2(vr4)
000320  7a1a3240  vextracti.f r20, 3(vr4)
000324  0b640449  max.f r8, r8, r16
000328  7a184240  vextracti.f r16, 4(vr4)
00032c  0b643449  max.f r8, r8, r19
000330  fa195240  vextracti.f r19, 5(vr4)
000334  0b644449  max.f r8, r8, r20
000338  7a1a6240  vextracti.f r20, 6(vr4)
00033c  0b640449  max.f r8, r8, r16
000340  7a187240  vextracti.f r16, 7(vr4)
000344  0b643449  max.f r8, r8, r19
000348  fa198240  vextracti.f r19, 8(vr4)
00034c  0b644449  max.f r8, r8, r20
000350  7a1a9240  vextracti.f r20, 9(vr4)
000354  0b640449  max.f r8, r8, r16
000358  7a18a240  vextracti.f r16, 10(vr4)
00035c  0b643449  max.f r8, r8, r19
000360  fa19b240  vextracti.f r19, 11(vr4)
000364  0b644449  max.f r8, r8, r20
000368  7a1ac240  vextracti.f r20, 12(vr4)
00036c  0b640449  max.f r8, r8, r16
000370  7a18d240  vextracti.f r16, 13(vr4)
000374  0b643449  max.f r8, r8, r19
000378  fa19e240  vextracti.f r19, 14(vr4)
00037c  0b644449  max.f r8, r8, r20
000380  7a1af240  vextracti.f r20, 15(vr4)
000384  0b640449  max.f r8, r8, r16
000388  0b643449  max.f r8, r8, r19
00038c  0b644449  max.f r8, r8, r20
000390  73608100  stores.w r8, 0(r2)
000394  00a00300  mfence { lm, sm, gm }
000398  80210204  csr_set csr3, r4
00039c  00d00100  sync_group
0003a0  3b120900  bneq r18, zero, 132
0003a4  6fc40400  loads.w r8, 0(r9)
0003a8  6fc84400  loads.w r16, 4(r9)
0003ac  efc98400  loads.w r19, 8(r9)
0003b0  efc20401  loads.w r5, 16(r9)
0003b4  efc14401  loads.w r3, 20(r9)
0003b8  6fcac400  loads.w r20, 12(r9)
0003bc  efc38401  loads.w r7, 24(r9)
0003c0  efcac401  loads.w r21, 28(r9)
0003c4  6fcb0402  loads.w r22, 32(r9)
0003c8  efcb4402  loads.w r23, 36(r9)
0003cc  6fcc8402  loads.w r24, 40(r9)
0003d0  efccc403  loads.w r25, 60(r9)
0003d4  0b640449  max.f r8, r8, r16
0003d8  6fc80403  loads.w r16, 48(r9)
0003dc  0b643449  max.f r8, r8, r19
0003e0  efc94403  loads.w r19, 52(r9)
0003e4  0b644449  max.f r8, r8, r20
0003e8  8b625448  max.f r5, r8, r5
0003ec  8be13248  max.f r3, r5, r3
0003f0  6fca8403  loads.w r20, 56(r9)
0003f4  8be17148  max.f r3, r3, r7
0003f8  6fc4c402  loads.w r8, 44(r9)
0003fc  8be15149  max.f r3, r3, r21
000400  8be16149  max.f r3, r3, r22
000404  8be17149  max.f r3, r3, r23
000408  8be18149  max.f r3, r3, r24
00040c  8be18148  max.f r3, r3, r8
000410  8be10149  max.f r3, r3, r16
000414  8be13149  max.f r3, r3, r19
000418  8be14149  max.f r3, r3, r20
00041c  8be19149  max.f r3, r3, r25
000420  73e03400  stores.w r3, 0(r9)
000424  00a00300  mfence { lm, sm, gm }
000428  80210204  csr_set csr3, r4
00042c  00d00100  sync_group
000430  efc10400  loads.w r3, 0(r9)
000434  2b010080  lui r2, 524288
000438  9f060ffe  addli r13, r30, -256
00043c  97a12100  xor r3, r3, r2
000440  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
000444  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
000448  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
00044c  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000450  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000454  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
000458  46182fe2  vstore_mask16.mz vr2{mr1}, 1920(r30)
00045c  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
000460  00a00000  mfence { lm }
000464  e3810600  loadli.w r3,  0(r13)
000468  e3c20600  loadli.w r5,  4(r13)
00046c  e3831600  loadli.w r7,  8(r13)
000470  63c41600  loadli.w r8,  12(r13)
000474  63882600  loadli.w r16,  16(r13)
000478  e3c92600  loadli.w r19,  20(r13)
00047c  638a3600  loadli.w r20,  24(r13)
000480  e3ca3600  loadli.w r21,  28(r13)
000484  638b4600  loadli.w r22,  32(r13)
000488  e3cb4600  loadli.w r23,  36(r13)
00048c  638c5600  loadli.w r24,  40(r13)
000490  e3cc5600  loadli.w r25,  44(r13)
000494  638d6600  loadli.w r26,  48(r13)
000498  e3cd6600  loadli.w r27,  52(r13)
00049c  638e7600  loadli.w r28,  56(r13)
0004a0  63c17600  loadli.w r2,  60(r13)
0004a4  8f810100  exp.f.rn r3, r3
0004a8  8f820200  exp.f.rn r5, r5
0004ac  8f830300  exp.f.rn r7, r7
0004b0  0f040400  exp.f.rn r8, r8
0004b4  0f080800  exp.f.rn r16, r16
0004b8  8f890900  exp.f.rn r19, r19
0004bc  0f0a0a00  exp.f.rn r20, r20
0004c0  8f8a0a00  exp.f.rn r21, r21
0004c4  0f0b0b00  exp.f.rn r22, r22
0004c8  8f8b0b00  exp.f.rn r23, r23
0004cc  0f0c0c00  exp.f.rn r24, r24
0004d0  8f8c0c00  exp.f.rn r25, r25
0004d4  0f0d0d00  exp.f.rn r26, r26
0004d8  8f8d0d00  exp.f.rn r27, r27
0004dc  0f0e0e00  exp.f.rn r28, r28
0004e0  0f010100  exp.f.rn r2, r2
0004e4  67803600  storeli.w r3, 0(r13)
0004e8  67c05600  storeli.w r5, 4(r13)
0004ec  e7807600  storeli.w r7, 8(r13)
0004f0  e7c08600  storeli.w r8, 12(r13)
0004f4  67810601  storeli.w r16, 16(r13)
0004f8  67c13601  storeli.w r19, 20(r13)
0004fc  e7814601  storeli.w r20, 24(r13)
000500  e7c15601  storeli.w r21, 28(r13)
000504  67826601  storeli.w r22, 32(r13)
000508  67c27601  storeli.w r23, 36(r13)
00050c  e7828601  storeli.w r24, 40(r13)
000510  e7c29601  storeli.w r25, 44(r13)
000514  6783a601  storeli.w r26, 48(r13)
000518  67c3b601  storeli.w r27, 52(r13)
00051c  e783c601  storeli.w r28, 56(r13)
000520  e7c32600  storeli.w r2, 60(r13)
000524  e3818600  loadli.w r3,  64(r13)
000528  e3c28600  loadli.w r5,  68(r13)
00052c  e3839600  loadli.w r7,  72(r13)
000530  63c49600  loadli.w r8,  76(r13)
000534  6388a600  loadli.w r16,  80(r13)
000538  e3c9a600  loadli.w r19,  84(r13)
00053c  638ab600  loadli.w r20,  88(r13)
000540  e3cab600  loadli.w r21,  92(r13)
000544  638bc600  loadli.w r22,  96(r13)
000548  e3cbc600  loadli.w r23,  100(r13)
00054c  638cd600  loadli.w r24,  104(r13)
000550  e3ccd600  loadli.w r25,  108(r13)
000554  638de600  loadli.w r26,  112(r13)
000558  e3cde600  loadli.w r27,  116(r13)
00055c  638ef600  loadli.w r28,  120(r13)
000560  63c1f600  loadli.w r2,  124(r13)
000564  8f810100  exp.f.rn r3, r3
000568  8f820200  exp.f.rn r5, r5
00056c  8f830300  exp.f.rn r7, r7
000570  0f040400  exp.f.rn r8, r8
000574  0f080800  exp.f.rn r16, r16
000578  8f890900  exp.f.rn r19, r19
00057c  0f0a0a00  exp.f.rn r20, r20
000580  8f8a0a00  exp.f.rn r21, r21
000584  0f0b0b00  exp.f.rn r22, r22
000588  8f8b0b00  exp.f.rn r23, r23
00058c  0f0c0c00  exp.f.rn r24, r24
000590  8f8c0c00  exp.f.rn r25, r25
000594  0f0d0d00  exp.f.rn r26, r26
000598  8f8d0d00  exp.f.rn r27, r27
00059c  0f0e0e00  exp.f.rn r28, r28
0005a0  0f010100  exp.f.rn r2, r2
0005a4  67843600  storeli.w r3, 64(r13)
0005a8  67c45600  storeli.w r5, 68(r13)
0005ac  e7847600  storeli.w r7, 72(r13)
0005b0  e7c48600  storeli.w r8, 76(r13)
0005b4  67850601  storeli.w r16, 80(r13)
0005b8  67c53601  storeli.w r19, 84(r13)
0005bc  e7854601  storeli.w r20, 88(r13)
0005c0  e7c55601  storeli.w r21, 92(r13)
0005c4  67866601  storeli.w r22, 96(r13)
0005c8  67c67601  storeli.w r23, 100(r13)
0005cc  e7868601  storeli.w r24, 104(r13)
0005d0  e7c69601  storeli.w r25, 108(r13)
0005d4  6787a601  storeli.w r26, 112(r13)
0005d8  67c7b601  storeli.w r27, 116(r13)
0005dc  e787c601  storeli.w r28, 120(r13)
0005e0  e7c72600  storeli.w r2, 124(r13)
0005e4  e3810601  loadli.w r3,  128(r13)
0005e8  e3c20601  loadli.w r5,  132(r13)
0005ec  e3831601  loadli.w r7,  136(r13)
0005f0  63c41601  loadli.w r8,  140(r13)
0005f4  63882601  loadli.w r16,  144(r13)
0005f8  e3c92601  loadli.w r19,  148(r13)
0005fc  638a3601  loadli.w r20,  152(r13)
000600  e3ca3601  loadli.w r21,  156(r13)
000604  638b4601  loadli.w r22,  160(r13)
000608  e3cb4601  loadli.w r23,  164(r13)
00060c  638c5601  loadli.w r24,  168(r13)
000610  e3cc5601  loadli.w r25,  172(r13)
000614  638d6601  loadli.w r26,  176(r13)
000618  e3cd6601  loadli.w r27,  180(r13)
00061c  638e7601  loadli.w r28,  184(r13)
000620  63c17601  loadli.w r2,  188(r13)
000624  8f810100  exp.f.rn r3, r3
000628  8f820200  exp.f.rn r5, r5
00062c  8f830300  exp.f.rn r7, r7
000630  0f040400  exp.f.rn r8, r8
000634  0f080800  exp.f.rn r16, r16
000638  8f890900  exp.f.rn r19, r19
00063c  0f0a0a00  exp.f.rn r20, r20
000640  8f8a0a00  exp.f.rn r21, r21
000644  0f0b0b00  exp.f.rn r22, r22
000648  8f8b0b00  exp.f.rn r23, r23
00064c  0f0c0c00  exp.f.rn r24, r24
000650  8f8c0c00  exp.f.rn r25, r25
000654  0f0d0d00  exp.f.rn r26, r26
000658  8f8d0d00  exp.f.rn r27, r27
00065c  0f0e0e00  exp.f.rn r28, r28
000660  0f010100  exp.f.rn r2, r2
000664  67883600  storeli.w r3, 128(r13)
000668  67c85600  storeli.w r5, 132(r13)
00066c  e7887600  storeli.w r7, 136(r13)
000670  e7c88600  storeli.w r8, 140(r13)
000674  67890601  storeli.w r16, 144(r13)
000678  67c93601  storeli.w r19, 148(r13)
00067c  e7894601  storeli.w r20, 152(r13)
000680  e7c95601  storeli.w r21, 156(r13)
000684  678a6601  storeli.w r22, 160(r13)
000688  67ca7601  storeli.w r23, 164(r13)
00068c  e78a8601  storeli.w r24, 168(r13)
000690  e7ca9601  storeli.w r25, 172(r13)
000694  678ba601  storeli.w r26, 176(r13)
000698  67cbb601  storeli.w r27, 180(r13)
00069c  e78bc601  storeli.w r28, 184(r13)
0006a0  e7cb2600  storeli.w r2, 188(r13)
0006a4  e3818601  loadli.w r3,  192(r13)
0006a8  e3c28601  loadli.w r5,  196(r13)
0006ac  e3839601  loadli.w r7,  200(r13)
0006b0  63c49601  loadli.w r8,  204(r13)
0006b4  6388a601  loadli.w r16,  208(r13)
0006b8  e3c9a601  loadli.w r19,  212(r13)
0006bc  638ab601  loadli.w r20,  216(r13)
0006c0  e3cab601  loadli.w r21,  220(r13)
0006c4  638bc601  loadli.w r22,  224(r13)
0006c8  e3cbc601  loadli.w r23,  228(r13)
0006cc  638cd601  loadli.w r24,  232(r13)
0006d0  e3ccd601  loadli.w r25,  236(r13)
0006d4  638de601  loadli.w r26,  240(r13)
0006d8  e3cde601  loadli.w r27,  244(r13)
0006dc  638ef601  loadli.w r28,  248(r13)
0006e0  63c1f601  loadli.w r2,  252(r13)
0006e4  8f810100  exp.f.rn r3, r3
0006e8  8f820200  exp.f.rn r5, r5
0006ec  8f830300  exp.f.rn r7, r7
0006f0  0f040400  exp.f.rn r8, r8
0006f4  0f080800  exp.f.rn r16, r16
0006f8  8f890900  exp.f.rn r19, r19
0006fc  0f0a0a00  exp.f.rn r20, r20
000700  8f8a0a00  exp.f.rn r21, r21
000704  0f0b0b00  exp.f.rn r22, r22
000708  8f8b0b00  exp.f.rn r23, r23
00070c  0f0c0c00  exp.f.rn r24, r24
000710  8f8c0c00  exp.f.rn r25, r25
000714  0f0d0d00  exp.f.rn r26, r26
000718  8f8d0d00  exp.f.rn r27, r27
00071c  0f0e0e00  exp.f.rn r28, r28
000720  0f010100  exp.f.rn r2, r2
000724  678c3600  storeli.w r3, 192(r13)
000728  67cc5600  storeli.w r5, 196(r13)
00072c  e78c7600  storeli.w r7, 200(r13)
000730  e7cc8600  storeli.w r8, 204(r13)
000734  678d0601  storeli.w r16, 208(r13)
000738  67cd3601  storeli.w r19, 212(r13)
00073c  e78d4601  storeli.w r20, 216(r13)
000740  e7cd5601  storeli.w r21, 220(r13)
000744  678e6601  storeli.w r22, 224(r13)
000748  67ce7601  storeli.w r23, 228(r13)
00074c  e78e8601  storeli.w r24, 232(r13)
000750  e7ce9601  storeli.w r25, 236(r13)
000754  678fa601  storeli.w r26, 240(r13)
000758  67cfb601  storeli.w r27, 244(r13)
00075c  e78fc601  storeli.w r28, 248(r13)
000760  e7cf2600  storeli.w r2, 252(r13)
000764  00a00000  mfence { lm }
000768  c2100fe2  vload_mask16.mz vr1{mr1}, 1792(r30)
00076c  42108fe2  vload_mask16.mz vr0{mr1}, 1856(r30)
000770  42110fe3  vload_mask16.mz vr2{mr1}, 1920(r30)
000774  96910002  vadd.f.mz.rn vr3{mr1}, vr1, vr0
000778  16922102  vadd.f.mz.rn vr4{mr1}, vr3, vr2
00077c  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
000780  16123202  vadd.f.mz.rn vr4{mr1}, vr4, vr3
000784  7a110240  vextracti.f r2, 0(vr4)
000788  fa111240  vextracti.f r3, 1(vr4)
00078c  0b613110  add.f.rn r2, r2, r3
000790  fa112240  vextracti.f r3, 2(vr4)
000794  0be12110  add.f.rn r2, r3, r2
000798  fa113240  vextracti.f r3, 3(vr4)
00079c  0be12110  add.f.rn r2, r3, r2
0007a0  fa114240  vextracti.f r3, 4(vr4)
0007a4  0be12110  add.f.rn r2, r3, r2
0007a8  fa115240  vextracti.f r3, 5(vr4)
0007ac  0be12110  add.f.rn r2, r3, r2
0007b0  fa116240  vextracti.f r3, 6(vr4)
0007b4  0be12110  add.f.rn r2, r3, r2
0007b8  fa117240  vextracti.f r3, 7(vr4)
0007bc  0be12110  add.f.rn r2, r3, r2
0007c0  fa118240  vextracti.f r3, 8(vr4)
0007c4  0be12110  add.f.rn r2, r3, r2
0007c8  fa119240  vextracti.f r3, 9(vr4)
0007cc  0be12110  add.f.rn r2, r3, r2
0007d0  fa11a240  vextracti.f r3, 10(vr4)
0007d4  0be12110  add.f.rn r2, r3, r2
0007d8  fa11b240  vextracti.f r3, 11(vr4)
0007dc  0be12110  add.f.rn r2, r3, r2
0007e0  fa11c240  vextracti.f r3, 12(vr4)
0007e4  0be12110  add.f.rn r2, r3, r2
0007e8  fa11d240  vextracti.f r3, 13(vr4)
0007ec  0be12110  add.f.rn r2, r3, r2
0007f0  fa11e240  vextracti.f r3, 14(vr4)
0007f4  0be12110  add.f.rn r2, r3, r2
0007f8  fa11f240  vextracti.f r3, 15(vr4)
0007fc  0be12110  add.f.rn r2, r3, r2
000800  e341fff9  loadli.w r3,  -772(r30)
000804  73e02100  stores.w r2, 0(r3)
000808  00a00300  mfence { lm, sm, gm }
00080c  80210204  csr_set csr3, r4
000810  00d00100  sync_group
000814  3b120900  bneq r18, zero, 132
000818  6fc10000  loads.w r2, 0(r1)
00081c  efc14000  loads.w r3, 4(r1)
000820  efc28000  loads.w r5, 8(r1)
000824  0b613110  add.f.rn r2, r2, r3
000828  efc1c000  loads.w r3, 12(r1)
00082c  0b615110  add.f.rn r2, r2, r5
000830  efc20001  loads.w r5, 16(r1)
000834  0b613110  add.f.rn r2, r2, r3
000838  efc14001  loads.w r3, 20(r1)
00083c  0b615110  add.f.rn r2, r2, r5
000840  efc28001  loads.w r5, 24(r1)
000844  0b613110  add.f.rn r2, r2, r3
000848  efc1c001  loads.w r3, 28(r1)
00084c  0b615110  add.f.rn r2, r2, r5
000850  efc20002  loads.w r5, 32(r1)
000854  0b613110  add.f.rn r2, r2, r3
000858  efc14002  loads.w r3, 36(r1)
00085c  0b615110  add.f.rn r2, r2, r5
000860  efc28002  loads.w r5, 40(r1)
000864  0b613110  add.f.rn r2, r2, r3
000868  efc1c002  loads.w r3, 44(r1)
00086c  0b615110  add.f.rn r2, r2, r5
000870  efc20003  loads.w r5, 48(r1)
000874  0b613110  add.f.rn r2, r2, r3
000878  efc14003  loads.w r3, 52(r1)
00087c  0b615110  add.f.rn r2, r2, r5
000880  efc28003  loads.w r5, 56(r1)
000884  0b613110  add.f.rn r2, r2, r3
000888  efc1c003  loads.w r3, 60(r1)
00088c  0b615110  add.f.rn r2, r2, r5
000890  0b613110  add.f.rn r2, r2, r3
000894  73e02000  stores.w r2, 0(r1)
000898  00a00300  mfence { lm, sm, gm }
00089c  80210204  csr_set csr3, r4
0008a0  00d00100  sync_group
0008a4  6fc10000  loads.w r2, 0(r1)
0008a8  ab01803f  lui r3, 260096
0008ac  1f040600  addli r8, r12, 0
0008b0  9f230000  addli r7, zero, 2
0008b4  9f060ffc  addli r13, r30, -512
0008b8  0f812118  div.f.rn r2, r3, r2
0008bc  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
0008c0  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
0008c4  46101fc2  vstore_mask16.mz vr1{mr1}, 1536(r30)
0008c8  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
0008cc  46140fc2  vstore_mask16.mz vr0{mr1}, 1600(r30)
0008d0  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
0008d4  46182fc2  vstore_mask16.mz vr2{mr1}, 1664(r30)
0008d8  461c3fc2  vstore_mask16.mz vr3{mr1}, 1728(r30)
0008dc  00a00000  mfence { lm }
0008e0  63018f00  loadli.w r2,  64(r30)
0008e4  bfd428fc  blt.s r17, r2, -1740
0008e8  1f040000  addli r8, zero, 0
0008ec  db25ffff  j -1748
0008f0  9f0e8ff9  addli sp, r30, -832
0008f4  9f8e8e06  addli sp, sp, 832
0008f8  00a00300  mfence { lm, sm, gm }
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
