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
0000e8  2b050000  lui r10, 0
0000ec  00340002  core_id r8
0000f0  1f8f8e06  addli r30, sp, 832
0000f4  2bf20000  lui r4, 15
0000f8  9b302400  slli r1, r8, 2
0000fc  1f050500  addli r10, r10, 0
000100  e301cf00  loadli.w r3,  96(r30)
000104  6343bf00  loadli.w r6,  92(r30)
000108  6341cf00  loadli.w r2,  100(r30)
00010c  1b12f2ff  ori r4, r4, 4095
000110  8b121510  add.s r5, r10, r1
000114  9f832250  addli r7, r5, 10256
000118  9f820210  addli r5, r5, 2048
00011c  e74f7ff8  storeli.w r7, -772(r30)
000120  73e00300  stores.w zero, 0(r7)
000124  8b936120  mul.s r7, r3, r6
000128  00530002  load_param_i r6, 0
00012c  00a00300  mfence { lm, sm, gm }
000130  80210204  csr_set csr3, r4
000134  00d00100  sync_group
000138  e70f5ff8  storeli.w r5, -776(r30)
00013c  73e00200  stores.w zero, 0(r5)
000140  0b912320  mul.s r2, r7, r2
000144  00a00300  mfence { lm, sm, gm }
000148  80210204  csr_set csr3, r4
00014c  00d00100  sync_group
000150  674f2ff8  storeli.w r2, -780(r30)
000154  4b7c6102  ble.s r2, r6, 1820
000158  1b097400  andi r18, r8, 7
00015c  63075f00  loadli.w r14,  40(r30)
000160  6b560f03  load.d r[13:14], 48(r30)
000164  00d10002  load_param_i r2, 1
000168  9f220000  addli r5, zero, 2
00016c  eb5a0f02  load.d r[22:23], 32(r30)
000170  1b443400  srli r8, r8, 3
000174  e34c1f00  loadli.w r25,  12(r30)
000178  e3448f00  loadli.w r9,  68(r30)
00017c  eb5d8f01  load.d r[28:29], 24(r30)
000180  eb570f05  load.d r[16:17], 80(r30)
000184  9b386900  slli r17, r18, 6
000188  670f2ff8  storeli.w r2, -784(r30)
00018c  1f018000  addli r2, zero, 64
000190  0b171719  sub.s r14, r14, r17
000194  b3890828  zext_int2long r[20:21], r17
000198  8b941419  sub.s r9, r9, r17
00019c  0b363621  mul.sl r[13:14], r[13:14], r[20:21]
0001a0  0b170748  max.s r14, r14, zero
0001a4  97355602  sll.d r[12:13], r[13:14], r5
0001a8  8b162740  min.s r13, r14, r2
0001ac  9bb12600  slli r3, r13, 2
0001b0  8ba5ba10  add.ul r[12:13], r[22:23], r[12:13]
0001b4  674e3ff8  storeli.w r3, -796(r30)
0001b8  9b017400  andi r3, r8, 7
0001bc  2bf4ffff  lui r8, 1048575
0001c0  7334bfce  store.d r[12:13], -792(r30)
0001c4  8b951c19  sub.s r11, r25, r17
0001c8  1b1404fe  ori r8, r8, 4064
0001cc  8b950548  max.s r11, r11, zero
0001d0  670e3ff8  storeli.w r3, -800(r30)
0001d4  97808000  and r1, r1, r8
0001d8  b3830128  zext_int2long r[8:9], r3
0001dc  733c7fcc  store.d r[8:9], -808(r30)
0001e0  0b942540  min.s r8, r11, r2
0001e4  8b101510  add.s r1, r10, r1
0001e8  0b950448  max.s r10, r9, zero
0001ec  8bb53d21  mul.sl r[12:13], r[28:29], r[20:21]
0001f0  9f030ffc  addli r7, r30, -512
0001f4  9b312400  slli r3, r8, 2
0001f8  1f840010  addli r8, r1, 2048
0001fc  9f842050  addli r9, r1, 10256
000200  8b102540  min.s r1, r10, r2
000204  7338bfcc  store.d r[12:13], -816(r30)
000208  0bb53721  mul.sl r[11:12], r[16:17], r[20:21]
00020c  1bb12000  slli r2, r1, 2
000210  e74c3ff8  storeli.w r3, -820(r30)
000214  5b080000  j 64
000218  6b588f04  load.d r[17:18], 72(r30)
00021c  ab0100f0  lui r3, 983040
000220  97903000  or r1, r1, r3
000224  0b370721  mul.sl r[15:16], r[15:16], r[17:18]
000228  6b588f03  load.d r[17:18], 56(r30)
00022c  0b27a710  add.ul r[15:16], r[15:16], r[11:12]
000230  17375702  sll.d r[15:16], r[15:16], r5
000234  0b27e810  add.ul r[15:16], r[17:18], r[15:16]
000238  ff307700  s_lm2gm r1, r7, 0(r[15:16])
00023c  e300eff9  loadli.w r1,  -784(r30)
000240  00a00000  mfence { lm }
000244  0b131310  add.s r6, r6, r1
000248  e340eff9  loadli.w r1,  -780(r30)
00024c  3f201300  blt.s r6, r1, 8
000250  5bc40000  j 1568
000254  e340cf00  loadli.w r1,  100(r30)
000258  e301cf00  loadli.w r3,  96(r30)
00025c  2b0700f0  lui r14, 983040
000260  6b588fce  load.d r[17:18], -792(r30)
000264  8b101330  div.s r1, r6, r1
000268  8b903030  div.s r1, r1, r3
00026c  e341cff9  loadli.w r3,  -796(r30)
000270  9797e100  or r15, r3, r14
000274  1bb73000  slli r14, r1, 3
000278  9f000ffa  addli r1, r30, -768
00027c  ff271800  l_gm2lm r15, r1, 0(r[17:18])
000280  e300cff9  loadli.w r1,  -800(r30)
000284  00a00000  mfence { lm }
000288  e3011f00  loadli.w r3,  8(r30)
00028c  97181700  or r17, r14, r1
000290  e3409ff9  loadli.w r1,  -820(r30)
000294  3fa03800  blt.s r17, r3, 8
000298  9f000000  addli r1, zero, 0
00029c  eb598fcd  load.d r[20:21], -808(r30)
0002a0  33170728  sext_int2long r[15:16], r14
0002a4  eb5a0fcd  load.d r[22:23], -816(r30)
0002a8  2b0800f0  lui r16, 983040
0002ac  97900001  or r1, r1, r16
0002b0  17173703  or.d r[15:16], r[15:16], r[20:21]
0002b4  eb590f01  load.d r[20:21], 16(r30)
0002b8  8b393721  mul.sl r[20:21], r[15:16], r[20:21]
0002bc  8ba95911  add.ul r[20:21], r[20:21], r[22:23]
0002c0  eb5a0f00  load.d r[22:23], 0(r30)
0002c4  97b95902  sll.d r[20:21], r[20:21], r5
0002c8  8ba93a11  add.ul r[20:21], r[22:23], r[20:21]
0002cc  ffa07900  l_gm2lm r1, r7, 0(r[20:21])
0002d0  00a00000  mfence { lm }
0002d4  42100fc2  vload_mask16.mz vr0{mr1}, 1536(r30)
0002d8  c2108fc2  vload_mask16.mz vr1{mr1}, 1600(r30)
0002dc  42110fc3  vload_mask16.mz vr2{mr1}, 1664(r30)
0002e0  c2110fa2  vload_mask16.mz vr3{mr1}, 1280(r30)
0002e4  42128fc3  vload_mask16.mz vr4{mr1}, 1728(r30)
0002e8  c2128fa2  vload_mask16.mz vr5{mr1}, 1344(r30)
0002ec  42130fa3  vload_mask16.mz vr6{mr1}, 1408(r30)
0002f0  c2138fa3  vload_mask16.mz vr7{mr1}, 1472(r30)
0002f4  e301fff9  loadli.w r3,  -776(r30)
0002f8  96113002  vadd.f.mz.rn vr3{mr1}, vr0, vr3
0002fc  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
000300  16107202  vadd.f.mz.rn vr0{mr1}, vr4, vr7
000304  36921102  vmax.f.mz vr4{mr1}, vr3, vr1
000308  16116102  vadd.f.mz.rn vr2{mr1}, vr2, vr6
00030c  36122202  vmax.f.mz vr4{mr1}, vr4, vr2
000310  36120202  vmax.f.mz vr4{mr1}, vr4, vr0
000314  fa100240  vextracti.f r1, 0(vr4)
000318  7a181240  vextracti.f r16, 1(vr4)
00031c  fa192240  vextracti.f r19, 2(vr4)
000320  7a1a3240  vextracti.f r20, 3(vr4)
000324  8be00049  max.f r1, r1, r16
000328  7a184240  vextracti.f r16, 4(vr4)
00032c  8be03049  max.f r1, r1, r19
000330  fa195240  vextracti.f r19, 5(vr4)
000334  8be04049  max.f r1, r1, r20
000338  7a1a6240  vextracti.f r20, 6(vr4)
00033c  8be00049  max.f r1, r1, r16
000340  7a187240  vextracti.f r16, 7(vr4)
000344  8be03049  max.f r1, r1, r19
000348  fa198240  vextracti.f r19, 8(vr4)
00034c  8be04049  max.f r1, r1, r20
000350  7a1a9240  vextracti.f r20, 9(vr4)
000354  8be00049  max.f r1, r1, r16
000358  7a18a240  vextracti.f r16, 10(vr4)
00035c  8be03049  max.f r1, r1, r19
000360  fa19b240  vextracti.f r19, 11(vr4)
000364  8be04049  max.f r1, r1, r20
000368  7a1ac240  vextracti.f r20, 12(vr4)
00036c  8be00049  max.f r1, r1, r16
000370  7a18d240  vextracti.f r16, 13(vr4)
000374  8be03049  max.f r1, r1, r19
000378  fa19e240  vextracti.f r19, 14(vr4)
00037c  8be04049  max.f r1, r1, r20
000380  7a1af240  vextracti.f r20, 15(vr4)
000384  8be00049  max.f r1, r1, r16
000388  8be03049  max.f r1, r1, r19
00038c  8be04049  max.f r1, r1, r20
000390  73e01100  stores.w r1, 0(r3)
000394  00a00300  mfence { lm, sm, gm }
000398  80210204  csr_set csr3, r4
00039c  00d00100  sync_group
0003a0  3b110900  bneq r18, zero, 68
0003a4  ef400400  loads.w r1, 0(r8)
0003a8  6f484400  loads.w r16, 4(r8)
0003ac  ef498400  loads.w r19, 8(r8)
0003b0  6f4ac400  loads.w r20, 12(r8)
0003b4  ef420401  loads.w r5, 16(r8)
0003b8  ef434401  loads.w r7, 20(r8)
0003bc  ef418401  loads.w r3, 24(r8)
0003c0  ef4ac401  loads.w r21, 28(r8)
0003c4  8be00049  max.f r1, r1, r16
0003c8  8be03049  max.f r1, r1, r19
0003cc  8be04049  max.f r1, r1, r20
0003d0  8be05048  max.f r1, r1, r5
0003d4  8be07048  max.f r1, r1, r7
0003d8  8be03048  max.f r1, r1, r3
0003dc  8be05049  max.f r1, r1, r21
0003e0  73601400  stores.w r1, 0(r8)
0003e4  00a00300  mfence { lm, sm, gm }
0003e8  80210204  csr_set csr3, r4
0003ec  00d00100  sync_group
0003f0  ef400400  loads.w r1, 0(r8)
0003f4  ab010080  lui r3, 524288
0003f8  9f060ffe  addli r13, r30, -256
0003fc  97a03000  xor r1, r1, r3
000400  92913002  vadd.f.mz.rn vr3{mr1}, r1, vr3
000404  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000408  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
00040c  12912002  vadd.f.mz.rn vr2{mr1}, r1, vr2
000410  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000414  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000418  46182fe2  vstore_mask16.mz vr2{mr1}, 1920(r30)
00041c  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
000420  00a00000  mfence { lm }
000424  e3800600  loadli.w r1,  0(r13)
000428  e3c10600  loadli.w r3,  4(r13)
00042c  e3821600  loadli.w r5,  8(r13)
000430  e3c31600  loadli.w r7,  12(r13)
000434  63882600  loadli.w r16,  16(r13)
000438  e3c92600  loadli.w r19,  20(r13)
00043c  638a3600  loadli.w r20,  24(r13)
000440  e3ca3600  loadli.w r21,  28(r13)
000444  638b4600  loadli.w r22,  32(r13)
000448  e3cb4600  loadli.w r23,  36(r13)
00044c  638c5600  loadli.w r24,  40(r13)
000450  e3cc5600  loadli.w r25,  44(r13)
000454  638d6600  loadli.w r26,  48(r13)
000458  e3cd6600  loadli.w r27,  52(r13)
00045c  638e7600  loadli.w r28,  56(r13)
000460  63c67600  loadli.w r12,  60(r13)
000464  8f800000  exp.f.rn r1, r1
000468  8f810100  exp.f.rn r3, r3
00046c  8f820200  exp.f.rn r5, r5
000470  8f830300  exp.f.rn r7, r7
000474  0f080800  exp.f.rn r16, r16
000478  8f890900  exp.f.rn r19, r19
00047c  0f0a0a00  exp.f.rn r20, r20
000480  8f8a0a00  exp.f.rn r21, r21
000484  0f0b0b00  exp.f.rn r22, r22
000488  8f8b0b00  exp.f.rn r23, r23
00048c  0f0c0c00  exp.f.rn r24, r24
000490  8f8c0c00  exp.f.rn r25, r25
000494  0f0d0d00  exp.f.rn r26, r26
000498  8f8d0d00  exp.f.rn r27, r27
00049c  0f0e0e00  exp.f.rn r28, r28
0004a0  0f060600  exp.f.rn r12, r12
0004a4  67801600  storeli.w r1, 0(r13)
0004a8  67c03600  storeli.w r3, 4(r13)
0004ac  e7805600  storeli.w r5, 8(r13)
0004b0  e7c07600  storeli.w r7, 12(r13)
0004b4  67810601  storeli.w r16, 16(r13)
0004b8  67c13601  storeli.w r19, 20(r13)
0004bc  e7814601  storeli.w r20, 24(r13)
0004c0  e7c15601  storeli.w r21, 28(r13)
0004c4  67826601  storeli.w r22, 32(r13)
0004c8  67c27601  storeli.w r23, 36(r13)
0004cc  e7828601  storeli.w r24, 40(r13)
0004d0  e7c29601  storeli.w r25, 44(r13)
0004d4  6783a601  storeli.w r26, 48(r13)
0004d8  67c3b601  storeli.w r27, 52(r13)
0004dc  e783c601  storeli.w r28, 56(r13)
0004e0  e7c3c600  storeli.w r12, 60(r13)
0004e4  e3808600  loadli.w r1,  64(r13)
0004e8  e3c18600  loadli.w r3,  68(r13)
0004ec  e3829600  loadli.w r5,  72(r13)
0004f0  e3c39600  loadli.w r7,  76(r13)
0004f4  6388a600  loadli.w r16,  80(r13)
0004f8  e3c9a600  loadli.w r19,  84(r13)
0004fc  638ab600  loadli.w r20,  88(r13)
000500  e3cab600  loadli.w r21,  92(r13)
000504  638bc600  loadli.w r22,  96(r13)
000508  e3cbc600  loadli.w r23,  100(r13)
00050c  638cd600  loadli.w r24,  104(r13)
000510  e3ccd600  loadli.w r25,  108(r13)
000514  638de600  loadli.w r26,  112(r13)
000518  e3cde600  loadli.w r27,  116(r13)
00051c  638ef600  loadli.w r28,  120(r13)
000520  63c6f600  loadli.w r12,  124(r13)
000524  8f800000  exp.f.rn r1, r1
000528  8f810100  exp.f.rn r3, r3
00052c  8f820200  exp.f.rn r5, r5
000530  8f830300  exp.f.rn r7, r7
000534  0f080800  exp.f.rn r16, r16
000538  8f890900  exp.f.rn r19, r19
00053c  0f0a0a00  exp.f.rn r20, r20
000540  8f8a0a00  exp.f.rn r21, r21
000544  0f0b0b00  exp.f.rn r22, r22
000548  8f8b0b00  exp.f.rn r23, r23
00054c  0f0c0c00  exp.f.rn r24, r24
000550  8f8c0c00  exp.f.rn r25, r25
000554  0f0d0d00  exp.f.rn r26, r26
000558  8f8d0d00  exp.f.rn r27, r27
00055c  0f0e0e00  exp.f.rn r28, r28
000560  0f060600  exp.f.rn r12, r12
000564  67841600  storeli.w r1, 64(r13)
000568  67c43600  storeli.w r3, 68(r13)
00056c  e7845600  storeli.w r5, 72(r13)
000570  e7c47600  storeli.w r7, 76(r13)
000574  67850601  storeli.w r16, 80(r13)
000578  67c53601  storeli.w r19, 84(r13)
00057c  e7854601  storeli.w r20, 88(r13)
000580  e7c55601  storeli.w r21, 92(r13)
000584  67866601  storeli.w r22, 96(r13)
000588  67c67601  storeli.w r23, 100(r13)
00058c  e7868601  storeli.w r24, 104(r13)
000590  e7c69601  storeli.w r25, 108(r13)
000594  6787a601  storeli.w r26, 112(r13)
000598  67c7b601  storeli.w r27, 116(r13)
00059c  e787c601  storeli.w r28, 120(r13)
0005a0  e7c7c600  storeli.w r12, 124(r13)
0005a4  e3800601  loadli.w r1,  128(r13)
0005a8  e3c10601  loadli.w r3,  132(r13)
0005ac  e3821601  loadli.w r5,  136(r13)
0005b0  e3c31601  loadli.w r7,  140(r13)
0005b4  63882601  loadli.w r16,  144(r13)
0005b8  e3c92601  loadli.w r19,  148(r13)
0005bc  638a3601  loadli.w r20,  152(r13)
0005c0  e3ca3601  loadli.w r21,  156(r13)
0005c4  638b4601  loadli.w r22,  160(r13)
0005c8  e3cb4601  loadli.w r23,  164(r13)
0005cc  638c5601  loadli.w r24,  168(r13)
0005d0  e3cc5601  loadli.w r25,  172(r13)
0005d4  638d6601  loadli.w r26,  176(r13)
0005d8  e3cd6601  loadli.w r27,  180(r13)
0005dc  638e7601  loadli.w r28,  184(r13)
0005e0  63c67601  loadli.w r12,  188(r13)
0005e4  8f800000  exp.f.rn r1, r1
0005e8  8f810100  exp.f.rn r3, r3
0005ec  8f820200  exp.f.rn r5, r5
0005f0  8f830300  exp.f.rn r7, r7
0005f4  0f080800  exp.f.rn r16, r16
0005f8  8f890900  exp.f.rn r19, r19
0005fc  0f0a0a00  exp.f.rn r20, r20
000600  8f8a0a00  exp.f.rn r21, r21
000604  0f0b0b00  exp.f.rn r22, r22
000608  8f8b0b00  exp.f.rn r23, r23
00060c  0f0c0c00  exp.f.rn r24, r24
000610  8f8c0c00  exp.f.rn r25, r25
000614  0f0d0d00  exp.f.rn r26, r26
000618  8f8d0d00  exp.f.rn r27, r27
00061c  0f0e0e00  exp.f.rn r28, r28
000620  0f060600  exp.f.rn r12, r12
000624  67881600  storeli.w r1, 128(r13)
000628  67c83600  storeli.w r3, 132(r13)
00062c  e7885600  storeli.w r5, 136(r13)
000630  e7c87600  storeli.w r7, 140(r13)
000634  67890601  storeli.w r16, 144(r13)
000638  67c93601  storeli.w r19, 148(r13)
00063c  e7894601  storeli.w r20, 152(r13)
000640  e7c95601  storeli.w r21, 156(r13)
000644  678a6601  storeli.w r22, 160(r13)
000648  67ca7601  storeli.w r23, 164(r13)
00064c  e78a8601  storeli.w r24, 168(r13)
000650  e7ca9601  storeli.w r25, 172(r13)
000654  678ba601  storeli.w r26, 176(r13)
000658  67cbb601  storeli.w r27, 180(r13)
00065c  e78bc601  storeli.w r28, 184(r13)
000660  e7cbc600  storeli.w r12, 188(r13)
000664  e3808601  loadli.w r1,  192(r13)
000668  e3c18601  loadli.w r3,  196(r13)
00066c  e3829601  loadli.w r5,  200(r13)
000670  e3c39601  loadli.w r7,  204(r13)
000674  6388a601  loadli.w r16,  208(r13)
000678  e3c9a601  loadli.w r19,  212(r13)
00067c  638ab601  loadli.w r20,  216(r13)
000680  e3cab601  loadli.w r21,  220(r13)
000684  638bc601  loadli.w r22,  224(r13)
000688  e3cbc601  loadli.w r23,  228(r13)
00068c  638cd601  loadli.w r24,  232(r13)
000690  e3ccd601  loadli.w r25,  236(r13)
000694  638de601  loadli.w r26,  240(r13)
000698  e3cde601  loadli.w r27,  244(r13)
00069c  638ef601  loadli.w r28,  248(r13)
0006a0  63c6f601  loadli.w r12,  252(r13)
0006a4  8f800000  exp.f.rn r1, r1
0006a8  8f810100  exp.f.rn r3, r3
0006ac  8f820200  exp.f.rn r5, r5
0006b0  8f830300  exp.f.rn r7, r7
0006b4  0f080800  exp.f.rn r16, r16
0006b8  8f890900  exp.f.rn r19, r19
0006bc  0f0a0a00  exp.f.rn r20, r20
0006c0  8f8a0a00  exp.f.rn r21, r21
0006c4  0f0b0b00  exp.f.rn r22, r22
0006c8  8f8b0b00  exp.f.rn r23, r23
0006cc  0f0c0c00  exp.f.rn r24, r24
0006d0  8f8c0c00  exp.f.rn r25, r25
0006d4  0f0d0d00  exp.f.rn r26, r26
0006d8  8f8d0d00  exp.f.rn r27, r27
0006dc  0f0e0e00  exp.f.rn r28, r28
0006e0  0f060600  exp.f.rn r12, r12
0006e4  678c1600  storeli.w r1, 192(r13)
0006e8  67cc3600  storeli.w r3, 196(r13)
0006ec  e78c5600  storeli.w r5, 200(r13)
0006f0  e7cc7600  storeli.w r7, 204(r13)
0006f4  678d0601  storeli.w r16, 208(r13)
0006f8  67cd3601  storeli.w r19, 212(r13)
0006fc  e78d4601  storeli.w r20, 216(r13)
000700  e7cd5601  storeli.w r21, 220(r13)
000704  678e6601  storeli.w r22, 224(r13)
000708  67ce7601  storeli.w r23, 228(r13)
00070c  e78e8601  storeli.w r24, 232(r13)
000710  e7ce9601  storeli.w r25, 236(r13)
000714  678fa601  storeli.w r26, 240(r13)
000718  67cfb601  storeli.w r27, 244(r13)
00071c  e78fc601  storeli.w r28, 248(r13)
000720  e7cfc600  storeli.w r12, 252(r13)
000724  00a00000  mfence { lm }
000728  c2100fe2  vload_mask16.mz vr1{mr1}, 1792(r30)
00072c  42108fe2  vload_mask16.mz vr0{mr1}, 1856(r30)
000730  42110fe3  vload_mask16.mz vr2{mr1}, 1920(r30)
000734  96910002  vadd.f.mz.rn vr3{mr1}, vr1, vr0
000738  16922102  vadd.f.mz.rn vr4{mr1}, vr3, vr2
00073c  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
000740  16123202  vadd.f.mz.rn vr4{mr1}, vr4, vr3
000744  fa100240  vextracti.f r1, 0(vr4)
000748  fa111240  vextracti.f r3, 1(vr4)
00074c  8be03010  add.f.rn r1, r1, r3
000750  fa112240  vextracti.f r3, 2(vr4)
000754  8be01110  add.f.rn r1, r3, r1
000758  fa113240  vextracti.f r3, 3(vr4)
00075c  8be01110  add.f.rn r1, r3, r1
000760  fa114240  vextracti.f r3, 4(vr4)
000764  8be01110  add.f.rn r1, r3, r1
000768  fa115240  vextracti.f r3, 5(vr4)
00076c  8be01110  add.f.rn r1, r3, r1
000770  fa116240  vextracti.f r3, 6(vr4)
000774  8be01110  add.f.rn r1, r3, r1
000778  fa117240  vextracti.f r3, 7(vr4)
00077c  8be01110  add.f.rn r1, r3, r1
000780  fa118240  vextracti.f r3, 8(vr4)
000784  8be01110  add.f.rn r1, r3, r1
000788  fa119240  vextracti.f r3, 9(vr4)
00078c  8be01110  add.f.rn r1, r3, r1
000790  fa11a240  vextracti.f r3, 10(vr4)
000794  8be01110  add.f.rn r1, r3, r1
000798  fa11b240  vextracti.f r3, 11(vr4)
00079c  8be01110  add.f.rn r1, r3, r1
0007a0  fa11c240  vextracti.f r3, 12(vr4)
0007a4  8be01110  add.f.rn r1, r3, r1
0007a8  fa11d240  vextracti.f r3, 13(vr4)
0007ac  8be01110  add.f.rn r1, r3, r1
0007b0  fa11e240  vextracti.f r3, 14(vr4)
0007b4  8be01110  add.f.rn r1, r3, r1
0007b8  fa11f240  vextracti.f r3, 15(vr4)
0007bc  8be01110  add.f.rn r1, r3, r1
0007c0  e341fff9  loadli.w r3,  -772(r30)
0007c4  73e01100  stores.w r1, 0(r3)
0007c8  00a00300  mfence { lm, sm, gm }
0007cc  80210204  csr_set csr3, r4
0007d0  00d00100  sync_group
0007d4  3b110900  bneq r18, zero, 68
0007d8  efc00400  loads.w r1, 0(r9)
0007dc  efc14400  loads.w r3, 4(r9)
0007e0  efc28400  loads.w r5, 8(r9)
0007e4  8be03010  add.f.rn r1, r1, r3
0007e8  efc1c400  loads.w r3, 12(r9)
0007ec  8be05010  add.f.rn r1, r1, r5
0007f0  efc20401  loads.w r5, 16(r9)
0007f4  8be03010  add.f.rn r1, r1, r3
0007f8  efc14401  loads.w r3, 20(r9)
0007fc  8be05010  add.f.rn r1, r1, r5
000800  efc28401  loads.w r5, 24(r9)
000804  8be03010  add.f.rn r1, r1, r3
000808  efc1c401  loads.w r3, 28(r9)
00080c  8be05010  add.f.rn r1, r1, r5
000810  8be03010  add.f.rn r1, r1, r3
000814  73e01400  stores.w r1, 0(r9)
000818  00a00300  mfence { lm, sm, gm }
00081c  80210204  csr_set csr3, r4
000820  00d00100  sync_group
000824  efc00400  loads.w r1, 0(r9)
000828  ab01803f  lui r3, 260096
00082c  9f220000  addli r5, zero, 2
000830  9f030ffc  addli r7, r30, -512
000834  8f801118  div.f.rn r1, r3, r1
000838  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00083c  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000840  46101fc2  vstore_mask16.mz vr1{mr1}, 1536(r30)
000844  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
000848  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
00084c  46140fc2  vstore_mask16.mz vr0{mr1}, 1600(r30)
000850  46182fc2  vstore_mask16.mz vr2{mr1}, 1664(r30)
000854  461c3fc2  vstore_mask16.mz vr3{mr1}, 1728(r30)
000858  00a00000  mfence { lm }
00085c  e3018f00  loadli.w r3,  64(r30)
000860  9f000100  addli r1, r2, 0
000864  bfd638fc  blt.s r17, r3, -1612
000868  9f000000  addli r1, zero, 0
00086c  db35ffff  j -1620
000870  9f0e8ff9  addli sp, r30, -832
000874  9f8e8e06  addli sp, sp, 832
000878  00a00300  mfence { lm, sm, gm }
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
