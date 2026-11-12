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
0000e4  9f8e8ee4  addli sp, sp, -3520
0000e8  2b010000  lui r2, 0
0000ec  80340002  core_id r9
0000f0  1f8f8e1a  addli r30, sp, 3392
0000f4  ab600000  lui r1, 6
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
000128  9f820240  addli r5, r5, 8192
00012c  8b913320  mul.s r3, r7, r3
000130  e743afe6  storeli.w r10, -3268(r30)
000134  73600500  stores.w zero, 0(r10)
000138  00a00300  mfence { lm, sm, gm }
00013c  80210204  csr_set csr3, r4
000140  00d00100  sync_group
000144  e7035fe6  storeli.w r5, -3272(r30)
000148  73e00200  stores.w zero, 0(r5)
00014c  00a00300  mfence { lm, sm, gm }
000150  80210204  csr_set csr3, r4
000154  00d00100  sync_group
000158  67433fe6  storeli.w r3, -3276(r30)
00015c  cbdf6108  ble.s r3, r6, 5108
000160  9b873400  andi r15, r9, 3
000164  6b590f03  load.d r[19:20], 48(r30)
000168  63085f00  loadli.w r16,  40(r30)
00016c  9f220000  addli r5, zero, 2
000170  6b550f02  load.d r[11:12], 32(r30)
000174  9f015fe6  addli r3, r30, -3288
000178  9bc42400  srli r9, r9, 2
00017c  e34c1f00  loadli.w r25,  12(r30)
000180  eb5d8f01  load.d r[28:29], 24(r30)
000184  63468f00  loadli.w r12,  68(r30)
000188  6b5a0f05  load.d r[21:22], 80(r30)
00018c  9bb88700  slli r17, r15, 8
000190  b3860828  zext_int2long r[14:15], r17
000194  0b181819  sub.s r16, r16, r17
000198  0b3bd920  mul.sl r[23:24], r[19:20], r[14:15]
00019c  0b180848  max.s r16, r16, zero
0001a0  1f090002  addli r18, zero, 256
0001a4  173b5b02  sll.d r[23:24], r[23:24], r5
0001a8  0b182841  min.s r16, r16, r18
0001ac  0b256511  add.ul r[11:12], r[11:12], r[23:24]
0001b0  73b0a100  store.d r[11:12], 0(r3)
0001b4  80d10002  load_param_i r3, 1
0001b8  9f050ff6  addli r11, r30, -1280
0001bc  67423fe6  storeli.w r3, -3292(r30)
0001c0  9b312800  slli r3, r16, 2
0001c4  2bf8ffff  lui r16, 1048575
0001c8  67023fe6  storeli.w r3, -3296(r30)
0001cc  9b81f400  andi r3, r9, 15
0001d0  9b1408ff  ori r9, r16, 4080
0001d4  0b981c19  sub.s r16, r25, r17
0001d8  17049400  and r8, r8, r9
0001dc  8b140848  max.s r9, r16, zero
0001e0  e7413fe6  storeli.w r3, -3300(r30)
0001e4  0b118110  add.s r2, r2, r8
0001e8  b3830128  zext_int2long r[8:9], r3
0001ec  9f012fe6  addli r3, r30, -3312
0001f0  73b07100  store.d r[8:9], 0(r3)
0001f4  0b942441  min.s r8, r9, r18
0001f8  8bb4dd20  mul.sl r[10:11], r[28:29], r[14:15]
0001fc  9f011fe6  addli r3, r30, -3320
000200  9f03ffe5  addli r7, r30, -3336
000204  73b09100  store.d r[10:11], 0(r3)
000208  0b151619  sub.s r10, r12, r17
00020c  9b312400  slli r3, r8, 2
000210  9f040140  addli r9, r2, 8192
000214  0b180548  max.s r16, r10, zero
000218  0b151110  add.s r10, r2, r1
00021c  67403fe6  storeli.w r3, -3324(r30)
000220  0b31da20  mul.sl r[3:4], r[21:22], r[14:15]
000224  8b102841  min.s r1, r16, r18
000228  73b02300  store.d r[3:4], 0(r7)
00022c  1f010ffe  addli r2, r30, -256
000230  9bb62000  slli r13, r1, 2
000234  5b0a0000  j 80
000238  eb538f04  load.d r[8:9], 72(r30)
00023c  9f00ffe5  addli r1, r30, -3336
000240  9f220000  addli r5, zero, 2
000244  ebd50000  load.d r[12:13], 0(r1)
000248  ab0000f0  lui r1, 983040
00024c  8b337820  mul.sl r[8:9], r[17:18], r[8:9]
000250  97101700  or r1, r14, r1
000254  8ba3b310  add.ul r[8:9], r[8:9], r[12:13]
000258  eb558f03  load.d r[12:13], 56(r30)
00025c  97b35302  sll.d r[8:9], r[8:9], r5
000260  8ba37510  add.ul r[8:9], r[12:13], r[8:9]
000264  9f050ff6  addli r11, r30, -1280
000268  ffb0b300  s_lm2gm r1, r11, 0(r[8:9])
00026c  e3404fe6  loadli.w r1,  -3292(r30)
000270  00a00000  mfence { lm }
000274  0b131310  add.s r6, r6, r1
000278  e3406fe6  loadli.w r1,  -3276(r30)
00027c  3f201300  blt.s r6, r1, 8
000280  5b5a0200  j 4816
000284  e340cf00  loadli.w r1,  100(r30)
000288  2b0800f0  lui r16, 983040
00028c  0b171330  div.s r14, r6, r1
000290  e300cf00  loadli.w r1,  96(r30)
000294  0b171730  div.s r14, r14, r1
000298  e3004fe6  loadli.w r1,  -3296(r30)
00029c  97980001  or r17, r1, r16
0002a0  9f005fe6  addli r1, r30, -3288
0002a4  ebd30000  load.d r[8:9], 0(r1)
0002a8  9f000fee  addli r1, r30, -2304
0002ac  1b384700  slli r16, r14, 4
0002b0  ffa81300  l_gm2lm r17, r1, 0(r[8:9])
0002b4  e3403fe6  loadli.w r1,  -3300(r30)
0002b8  00a00000  mfence { lm }
0002bc  63470fe6  loadli.w r14,  -3324(r30)
0002c0  17191800  or r18, r16, r1
0002c4  e3001f00  loadli.w r1,  8(r30)
0002c8  3f201900  blt.s r18, r1, 8
0002cc  1f070000  addli r14, zero, 0
0002d0  9f002fe6  addli r1, r30, -3312
0002d4  33180828  sext_int2long r[17:18], r16
0002d8  ab0100f0  lui r3, 983040
0002dc  ebd30000  load.d r[8:9], 0(r1)
0002e0  9f001fe6  addli r1, r30, -3320
0002e4  97113700  or r3, r14, r3
0002e8  17187802  or.d r[17:18], r[17:18], r[8:9]
0002ec  eb530f01  load.d r[8:9], 16(r30)
0002f0  8b397820  mul.sl r[20:21], r[17:18], r[8:9]
0002f4  ebd30000  load.d r[8:9], 0(r1)
0002f8  9f000ff6  addli r1, r30, -1280
0002fc  8ba97910  add.ul r[20:21], r[20:21], r[8:9]
000300  eb530f00  load.d r[8:9], 0(r30)
000304  97b95902  sll.d r[20:21], r[20:21], r5
000308  8ba93311  add.ul r[20:21], r[8:9], r[20:21]
00030c  ffa1b900  l_gm2lm r3, r11, 0(r[20:21])
000310  00a00000  mfence { lm }
000314  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000318  9f008ff6  addli r1, r30, -1216
00031c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000320  9f000ff7  addli r1, r30, -1152
000324  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000328  9f008ff7  addli r1, r30, -1088
00032c  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000330  42100f82  vload_mask16.mz vr0{mr1}, 1024(r30)
000334  42118f82  vload_mask16.mz vr2{mr1}, 1088(r30)
000338  9f000fed  addli r1, r30, -2432
00033c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000340  9f000fee  addli r1, r30, -2304
000344  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000348  9f008fee  addli r1, r30, -2240
00034c  42150f83  vload_mask16.mz vr10{mr1}, 1152(r30)
000350  c2138f83  vload_mask16.mz vr7{mr1}, 1216(r30)
000354  42130fa2  vload_mask16.mz vr6{mr1}, 1280(r30)
000358  42128fa2  vload_mask16.mz vr4{mr1}, 1344(r30)
00035c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000360  9f000fea  addli r1, r30, -2816
000364  16919102  vadd.f.mz.rn vr2{mr1}, vr3, vr9
000368  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00036c  9f000fef  addli r1, r30, -2176
000370  1611b402  vadd.f.mz.rn vr2{mr1}, vr8, vr11
000374  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000378  9f008fed  addli r1, r30, -2368
00037c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000380  9f008fef  addli r1, r30, -2112
000384  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000388  9f008fec  addli r1, r30, -2496
00038c  96909002  vadd.f.mz.rn vr1{mr1}, vr1, vr9
000390  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000394  9f000ff0  addli r1, r30, -2048
000398  9690b202  vadd.f.mz.rn vr1{mr1}, vr5, vr11
00039c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0003a0  9f000fec  addli r1, r30, -2560
0003a4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0003a8  9f008ff0  addli r1, r30, -1984
0003ac  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0003b0  9f008feb  addli r1, r30, -2624
0003b4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0003b8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003bc  9f000ff1  addli r1, r30, -1920
0003c0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0003c4  9f000fed  addli r1, r30, -2432
0003c8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0003cc  9f008fe6  addli r1, r30, -3264
0003d0  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
0003d4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003d8  9f008ff1  addli r1, r30, -1856
0003dc  16109502  vadd.f.mz.rn vr0{mr1}, vr10, vr9
0003e0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0003e4  9f000fed  addli r1, r30, -2432
0003e8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003ec  9f000ff2  addli r1, r30, -1792
0003f0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0003f4  9f008fea  addli r1, r30, -2752
0003f8  16905302  vadd.f.mz.rn vr0{mr1}, vr7, vr5
0003fc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000400  9f008ff2  addli r1, r30, -1728
000404  16109302  vadd.f.mz.rn vr0{mr1}, vr6, vr9
000408  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
00040c  9f000feb  addli r1, r30, -2688
000410  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000414  9f000ff3  addli r1, r30, -1664
000418  42130fa3  vload_mask16.mz vr6{mr1}, 1408(r30)
00041c  96105202  vadd.f.mz.rn vr1{mr1}, vr4, vr5
000420  42128fa3  vload_mask16.mz vr4{mr1}, 1472(r30)
000424  c2120fc2  vload_mask16.mz vr5{mr1}, 1536(r30)
000428  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00042c  9f008ff3  addli r1, r30, -1600
000430  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000434  9f000ff4  addli r1, r30, -1536
000438  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00043c  9f008ff4  addli r1, r30, -1472
000440  9611a302  vadd.f.mz.rn vr3{mr1}, vr6, vr10
000444  16117202  vadd.f.mz.rn vr2{mr1}, vr4, vr7
000448  42128fc2  vload_mask16.mz vr4{mr1}, 1600(r30)
00044c  16949202  vadd.f.mz.rn vr8{mr1}, vr5, vr9
000450  c2120fc3  vload_mask16.mz vr5{mr1}, 1664(r30)
000454  c2138fc3  vload_mask16.mz vr7{mr1}, 1728(r30)
000458  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00045c  9f000ff5  addli r1, r30, -1408
000460  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000464  9f008ff5  addli r1, r30, -1344
000468  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
00046c  9f008fea  addli r1, r30, -2752
000470  96159202  vadd.f.mz.rn vr11{mr1}, vr4, vr9
000474  1695a202  vadd.f.mz.rn vr10{mr1}, vr5, vr10
000478  96946302  vadd.f.mz.rn vr9{mr1}, vr7, vr6
00047c  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000480  9f000feb  addli r1, r30, -2688
000484  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000488  9f008fe6  addli r1, r30, -3264
00048c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000490  9f008fed  addli r1, r30, -2368
000494  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000498  9f000fea  addli r1, r30, -2816
00049c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0004a0  9f008fec  addli r1, r30, -2496
0004a4  36125202  vmax.f.mz vr4{mr1}, vr4, vr5
0004a8  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0004ac  9f000fec  addli r1, r30, -2560
0004b0  36125202  vmax.f.mz vr4{mr1}, vr4, vr5
0004b4  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0004b8  9f008feb  addli r1, r30, -2624
0004bc  36125202  vmax.f.mz vr4{mr1}, vr4, vr5
0004c0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0004c4  36125202  vmax.f.mz vr4{mr1}, vr4, vr5
0004c8  9f000fed  addli r1, r30, -2432
0004cc  36120202  vmax.f.mz vr4{mr1}, vr4, vr0
0004d0  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0004d4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0004d8  36120202  vmax.f.mz vr4{mr1}, vr4, vr0
0004dc  9f000fe7  addli r1, r30, -3200
0004e0  36126202  vmax.f.mz vr4{mr1}, vr4, vr6
0004e4  36127202  vmax.f.mz vr4{mr1}, vr4, vr7
0004e8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0004ec  9f000fe8  addli r1, r30, -3072
0004f0  36121202  vmax.f.mz vr4{mr1}, vr4, vr1
0004f4  36123202  vmax.f.mz vr4{mr1}, vr4, vr3
0004f8  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0004fc  9f008fe8  addli r1, r30, -3008
000500  36122202  vmax.f.mz vr4{mr1}, vr4, vr2
000504  36128202  vmax.f.mz vr4{mr1}, vr4, vr8
000508  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00050c  9f008fe7  addli r1, r30, -3136
000510  12318002  vadd.s.mz vr2{mr1}, zero, vr8
000514  3612b202  vmax.f.mz vr4{mr1}, vr4, vr11
000518  3612a202  vmax.f.mz vr4{mr1}, vr4, vr10
00051c  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000520  9f000fe9  addli r1, r30, -2944
000524  36129202  vmax.f.mz vr4{mr1}, vr4, vr9
000528  fa110240  vextracti.f r3, 0(vr4)
00052c  7a171240  vextracti.f r14, 1(vr4)
000530  fa192240  vextracti.f r19, 2(vr4)
000534  7a1a3240  vextracti.f r20, 3(vr4)
000538  fa1a4240  vextracti.f r21, 4(vr4)
00053c  7a1b5240  vextracti.f r22, 5(vr4)
000540  fa126240  vextracti.f r5, 6(vr4)
000544  fa1b7240  vextracti.f r23, 7(vr4)
000548  fa138240  vextracti.f r7, 8(vr4)
00054c  fa1c9240  vextracti.f r25, 9(vr4)
000550  7a1da240  vextracti.f r26, 10(vr4)
000554  fa1db240  vextracti.f r27, 11(vr4)
000558  7a1ec240  vextracti.f r28, 12(vr4)
00055c  7a14e240  vextracti.f r8, 14(vr4)
000560  7a1cf240  vextracti.f r24, 15(vr4)
000564  8be1e148  max.f r3, r3, r14
000568  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
00056c  9f008fe9  addli r1, r30, -2880
000570  8be13149  max.f r3, r3, r19
000574  8be14149  max.f r3, r3, r20
000578  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
00057c  fa10d240  vextracti.f r1, 13(vr4)
000580  8be15149  max.f r3, r3, r21
000584  8be16149  max.f r3, r3, r22
000588  8be15148  max.f r3, r3, r5
00058c  8be17149  max.f r3, r3, r23
000590  8be17148  max.f r3, r3, r7
000594  8be19149  max.f r3, r3, r25
000598  8be1a149  max.f r3, r3, r26
00059c  8be1b149  max.f r3, r3, r27
0005a0  8be1c149  max.f r3, r3, r28
0005a4  8be01148  max.f r1, r3, r1
0005a8  e3017fe6  loadli.w r3,  -3272(r30)
0005ac  8be08048  max.f r1, r1, r8
0005b0  8be08049  max.f r1, r1, r24
0005b4  73e01100  stores.w r1, 0(r3)
0005b8  00a00300  mfence { lm, sm, gm }
0005bc  80210204  csr_set csr3, r4
0005c0  00d00100  sync_group
0005c4  bb900700  bneq r15, zero, 36
0005c8  efc00400  loads.w r1, 0(r9)
0005cc  efc14400  loads.w r3, 4(r9)
0005d0  efc28400  loads.w r5, 8(r9)
0005d4  efc3c400  loads.w r7, 12(r9)
0005d8  8be03048  max.f r1, r1, r3
0005dc  8be05048  max.f r1, r1, r5
0005e0  8be07048  max.f r1, r1, r7
0005e4  73e01400  stores.w r1, 0(r9)
0005e8  00a00300  mfence { lm, sm, gm }
0005ec  80210204  csr_set csr3, r4
0005f0  00d00100  sync_group
0005f4  efc00400  loads.w r1, 0(r9)
0005f8  ab010080  lui r3, 524288
0005fc  17a73000  xor r14, r1, r3
000600  9f000fea  addli r1, r30, -2816
000604  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000608  9f008fed  addli r1, r30, -2368
00060c  92110702  vadd.f.mz.rn vr3{mr1}, r14, vr0
000610  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
000614  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000618  9f008fec  addli r1, r30, -2496
00061c  92110702  vadd.f.mz.rn vr3{mr1}, r14, vr0
000620  46143fe2  vstore_mask16.mz vr3{mr1}, 1856(r30)
000624  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000628  9f000fec  addli r1, r30, -2560
00062c  92100702  vadd.f.mz.rn vr1{mr1}, r14, vr0
000630  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
000634  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000638  9f008feb  addli r1, r30, -2624
00063c  92100702  vadd.f.mz.rn vr1{mr1}, r14, vr0
000640  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000644  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000648  00a00000  mfence { lm }
00064c  e3000100  loadli.w r1,  0(r2)
000650  e3410100  loadli.w r3,  4(r2)
000654  e3021100  loadli.w r5,  8(r2)
000658  e3431100  loadli.w r7,  12(r2)
00065c  63042100  loadli.w r8,  16(r2)
000660  e3492100  loadli.w r19,  20(r2)
000664  630a3100  loadli.w r20,  24(r2)
000668  e34a3100  loadli.w r21,  28(r2)
00066c  630b4100  loadli.w r22,  32(r2)
000670  e34b4100  loadli.w r23,  36(r2)
000674  630c5100  loadli.w r24,  40(r2)
000678  e34c5100  loadli.w r25,  44(r2)
00067c  630d6100  loadli.w r26,  48(r2)
000680  e34d6100  loadli.w r27,  52(r2)
000684  630e7100  loadli.w r28,  56(r2)
000688  e3457100  loadli.w r11,  60(r2)
00068c  8f800000  exp.f.rn r1, r1
000690  8f810100  exp.f.rn r3, r3
000694  8f820200  exp.f.rn r5, r5
000698  8f830300  exp.f.rn r7, r7
00069c  0f040400  exp.f.rn r8, r8
0006a0  8f890900  exp.f.rn r19, r19
0006a4  0f0a0a00  exp.f.rn r20, r20
0006a8  8f8a0a00  exp.f.rn r21, r21
0006ac  0f0b0b00  exp.f.rn r22, r22
0006b0  8f8b0b00  exp.f.rn r23, r23
0006b4  0f0c0c00  exp.f.rn r24, r24
0006b8  8f8c0c00  exp.f.rn r25, r25
0006bc  0f0d0d00  exp.f.rn r26, r26
0006c0  8f8d0d00  exp.f.rn r27, r27
0006c4  0f0e0e00  exp.f.rn r28, r28
0006c8  8f850500  exp.f.rn r11, r11
0006cc  67001100  storeli.w r1, 0(r2)
0006d0  67403100  storeli.w r3, 4(r2)
0006d4  e7005100  storeli.w r5, 8(r2)
0006d8  e7407100  storeli.w r7, 12(r2)
0006dc  67018100  storeli.w r8, 16(r2)
0006e0  67413101  storeli.w r19, 20(r2)
0006e4  e7014101  storeli.w r20, 24(r2)
0006e8  e7415101  storeli.w r21, 28(r2)
0006ec  67026101  storeli.w r22, 32(r2)
0006f0  67427101  storeli.w r23, 36(r2)
0006f4  e7028101  storeli.w r24, 40(r2)
0006f8  e7429101  storeli.w r25, 44(r2)
0006fc  6703a101  storeli.w r26, 48(r2)
000700  6743b101  storeli.w r27, 52(r2)
000704  e703c101  storeli.w r28, 56(r2)
000708  e743b100  storeli.w r11, 60(r2)
00070c  e3008100  loadli.w r1,  64(r2)
000710  e3418100  loadli.w r3,  68(r2)
000714  e3029100  loadli.w r5,  72(r2)
000718  e3439100  loadli.w r7,  76(r2)
00071c  6304a100  loadli.w r8,  80(r2)
000720  e349a100  loadli.w r19,  84(r2)
000724  630ab100  loadli.w r20,  88(r2)
000728  e34ab100  loadli.w r21,  92(r2)
00072c  630bc100  loadli.w r22,  96(r2)
000730  e34bc100  loadli.w r23,  100(r2)
000734  630cd100  loadli.w r24,  104(r2)
000738  e34cd100  loadli.w r25,  108(r2)
00073c  630de100  loadli.w r26,  112(r2)
000740  e34de100  loadli.w r27,  116(r2)
000744  630ef100  loadli.w r28,  120(r2)
000748  e345f100  loadli.w r11,  124(r2)
00074c  8f800000  exp.f.rn r1, r1
000750  8f810100  exp.f.rn r3, r3
000754  8f820200  exp.f.rn r5, r5
000758  8f830300  exp.f.rn r7, r7
00075c  0f040400  exp.f.rn r8, r8
000760  8f890900  exp.f.rn r19, r19
000764  0f0a0a00  exp.f.rn r20, r20
000768  8f8a0a00  exp.f.rn r21, r21
00076c  0f0b0b00  exp.f.rn r22, r22
000770  8f8b0b00  exp.f.rn r23, r23
000774  0f0c0c00  exp.f.rn r24, r24
000778  8f8c0c00  exp.f.rn r25, r25
00077c  0f0d0d00  exp.f.rn r26, r26
000780  8f8d0d00  exp.f.rn r27, r27
000784  0f0e0e00  exp.f.rn r28, r28
000788  8f850500  exp.f.rn r11, r11
00078c  67041100  storeli.w r1, 64(r2)
000790  67443100  storeli.w r3, 68(r2)
000794  e7045100  storeli.w r5, 72(r2)
000798  e7447100  storeli.w r7, 76(r2)
00079c  67058100  storeli.w r8, 80(r2)
0007a0  67453101  storeli.w r19, 84(r2)
0007a4  e7054101  storeli.w r20, 88(r2)
0007a8  e7455101  storeli.w r21, 92(r2)
0007ac  67066101  storeli.w r22, 96(r2)
0007b0  67467101  storeli.w r23, 100(r2)
0007b4  e7068101  storeli.w r24, 104(r2)
0007b8  e7469101  storeli.w r25, 108(r2)
0007bc  6707a101  storeli.w r26, 112(r2)
0007c0  6747b101  storeli.w r27, 116(r2)
0007c4  e707c101  storeli.w r28, 120(r2)
0007c8  e747b100  storeli.w r11, 124(r2)
0007cc  e3000101  loadli.w r1,  128(r2)
0007d0  e3410101  loadli.w r3,  132(r2)
0007d4  e3021101  loadli.w r5,  136(r2)
0007d8  e3431101  loadli.w r7,  140(r2)
0007dc  63042101  loadli.w r8,  144(r2)
0007e0  e3492101  loadli.w r19,  148(r2)
0007e4  630a3101  loadli.w r20,  152(r2)
0007e8  e34a3101  loadli.w r21,  156(r2)
0007ec  630b4101  loadli.w r22,  160(r2)
0007f0  e34b4101  loadli.w r23,  164(r2)
0007f4  630c5101  loadli.w r24,  168(r2)
0007f8  e34c5101  loadli.w r25,  172(r2)
0007fc  630d6101  loadli.w r26,  176(r2)
000800  e34d6101  loadli.w r27,  180(r2)
000804  630e7101  loadli.w r28,  184(r2)
000808  e3457101  loadli.w r11,  188(r2)
00080c  8f800000  exp.f.rn r1, r1
000810  8f810100  exp.f.rn r3, r3
000814  8f820200  exp.f.rn r5, r5
000818  8f830300  exp.f.rn r7, r7
00081c  0f040400  exp.f.rn r8, r8
000820  8f890900  exp.f.rn r19, r19
000824  0f0a0a00  exp.f.rn r20, r20
000828  8f8a0a00  exp.f.rn r21, r21
00082c  0f0b0b00  exp.f.rn r22, r22
000830  8f8b0b00  exp.f.rn r23, r23
000834  0f0c0c00  exp.f.rn r24, r24
000838  8f8c0c00  exp.f.rn r25, r25
00083c  0f0d0d00  exp.f.rn r26, r26
000840  8f8d0d00  exp.f.rn r27, r27
000844  0f0e0e00  exp.f.rn r28, r28
000848  8f850500  exp.f.rn r11, r11
00084c  67081100  storeli.w r1, 128(r2)
000850  67483100  storeli.w r3, 132(r2)
000854  e7085100  storeli.w r5, 136(r2)
000858  e7487100  storeli.w r7, 140(r2)
00085c  67098100  storeli.w r8, 144(r2)
000860  67493101  storeli.w r19, 148(r2)
000864  e7094101  storeli.w r20, 152(r2)
000868  e7495101  storeli.w r21, 156(r2)
00086c  670a6101  storeli.w r22, 160(r2)
000870  674a7101  storeli.w r23, 164(r2)
000874  e70a8101  storeli.w r24, 168(r2)
000878  e74a9101  storeli.w r25, 172(r2)
00087c  670ba101  storeli.w r26, 176(r2)
000880  674bb101  storeli.w r27, 180(r2)
000884  e70bc101  storeli.w r28, 184(r2)
000888  e74bb100  storeli.w r11, 188(r2)
00088c  e3008101  loadli.w r1,  192(r2)
000890  e3418101  loadli.w r3,  196(r2)
000894  e3029101  loadli.w r5,  200(r2)
000898  e3439101  loadli.w r7,  204(r2)
00089c  6304a101  loadli.w r8,  208(r2)
0008a0  e349a101  loadli.w r19,  212(r2)
0008a4  630ab101  loadli.w r20,  216(r2)
0008a8  e34ab101  loadli.w r21,  220(r2)
0008ac  630bc101  loadli.w r22,  224(r2)
0008b0  e34bc101  loadli.w r23,  228(r2)
0008b4  630cd101  loadli.w r24,  232(r2)
0008b8  e34cd101  loadli.w r25,  236(r2)
0008bc  630de101  loadli.w r26,  240(r2)
0008c0  e34de101  loadli.w r27,  244(r2)
0008c4  630ef101  loadli.w r28,  248(r2)
0008c8  e345f101  loadli.w r11,  252(r2)
0008cc  8f800000  exp.f.rn r1, r1
0008d0  8f810100  exp.f.rn r3, r3
0008d4  8f820200  exp.f.rn r5, r5
0008d8  8f830300  exp.f.rn r7, r7
0008dc  0f040400  exp.f.rn r8, r8
0008e0  8f890900  exp.f.rn r19, r19
0008e4  0f0a0a00  exp.f.rn r20, r20
0008e8  8f8a0a00  exp.f.rn r21, r21
0008ec  0f0b0b00  exp.f.rn r22, r22
0008f0  8f8b0b00  exp.f.rn r23, r23
0008f4  0f0c0c00  exp.f.rn r24, r24
0008f8  8f8c0c00  exp.f.rn r25, r25
0008fc  0f0d0d00  exp.f.rn r26, r26
000900  8f8d0d00  exp.f.rn r27, r27
000904  0f0e0e00  exp.f.rn r28, r28
000908  8f850500  exp.f.rn r11, r11
00090c  670c1100  storeli.w r1, 192(r2)
000910  674c3100  storeli.w r3, 196(r2)
000914  e70c5100  storeli.w r5, 200(r2)
000918  e74c7100  storeli.w r7, 204(r2)
00091c  670d8100  storeli.w r8, 208(r2)
000920  674d3101  storeli.w r19, 212(r2)
000924  e70d4101  storeli.w r20, 216(r2)
000928  e74d5101  storeli.w r21, 220(r2)
00092c  670e6101  storeli.w r22, 224(r2)
000930  674e7101  storeli.w r23, 228(r2)
000934  e70e8101  storeli.w r24, 232(r2)
000938  e74e9101  storeli.w r25, 236(r2)
00093c  670fa101  storeli.w r26, 240(r2)
000940  674fb101  storeli.w r27, 244(r2)
000944  e70fc101  storeli.w r28, 248(r2)
000948  e74fb100  storeli.w r11, 252(r2)
00094c  00a00000  mfence { lm }
000950  92100702  vadd.f.mz.rn vr1{mr1}, r14, vr0
000954  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
000958  42158fe2  vload_mask16.mz vr10{mr1}, 1856(r30)
00095c  9f000fed  addli r1, r30, -2432
000960  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
000964  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
000968  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
00096c  92105702  vadd.f.mz.rn vr1{mr1}, r14, vr5
000970  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000974  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000978  9f008fec  addli r1, r30, -2496
00097c  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
000980  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
000984  9f008feb  addli r1, r30, -2624
000988  9610a302  vadd.f.mz.rn vr1{mr1}, vr6, vr10
00098c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000990  9f008fea  addli r1, r30, -2752
000994  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
000998  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00099c  9f000fed  addli r1, r30, -2432
0009a0  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0009a4  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
0009a8  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
0009ac  9f000feb  addli r1, r30, -2688
0009b0  16904002  vadd.f.mz.rn vr0{mr1}, vr1, vr4
0009b4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0009b8  00a00000  mfence { lm }
0009bc  e3000100  loadli.w r1,  0(r2)
0009c0  e3410100  loadli.w r3,  4(r2)
0009c4  e3021100  loadli.w r5,  8(r2)
0009c8  e3431100  loadli.w r7,  12(r2)
0009cc  63042100  loadli.w r8,  16(r2)
0009d0  e3452100  loadli.w r11,  20(r2)
0009d4  63063100  loadli.w r12,  24(r2)
0009d8  e3493100  loadli.w r19,  28(r2)
0009dc  630a4100  loadli.w r20,  32(r2)
0009e0  e34a4100  loadli.w r21,  36(r2)
0009e4  630b5100  loadli.w r22,  40(r2)
0009e8  e34b5100  loadli.w r23,  44(r2)
0009ec  630c6100  loadli.w r24,  48(r2)
0009f0  e34c6100  loadli.w r25,  52(r2)
0009f4  630d7100  loadli.w r26,  56(r2)
0009f8  e34d7100  loadli.w r27,  60(r2)
0009fc  8f800000  exp.f.rn r1, r1
000a00  8f810100  exp.f.rn r3, r3
000a04  8f820200  exp.f.rn r5, r5
000a08  8f830300  exp.f.rn r7, r7
000a0c  0f040400  exp.f.rn r8, r8
000a10  8f850500  exp.f.rn r11, r11
000a14  0f060600  exp.f.rn r12, r12
000a18  8f890900  exp.f.rn r19, r19
000a1c  0f0a0a00  exp.f.rn r20, r20
000a20  8f8a0a00  exp.f.rn r21, r21
000a24  0f0b0b00  exp.f.rn r22, r22
000a28  8f8b0b00  exp.f.rn r23, r23
000a2c  0f0c0c00  exp.f.rn r24, r24
000a30  8f8c0c00  exp.f.rn r25, r25
000a34  0f0d0d00  exp.f.rn r26, r26
000a38  8f8d0d00  exp.f.rn r27, r27
000a3c  67001100  storeli.w r1, 0(r2)
000a40  67403100  storeli.w r3, 4(r2)
000a44  e7005100  storeli.w r5, 8(r2)
000a48  e7407100  storeli.w r7, 12(r2)
000a4c  67018100  storeli.w r8, 16(r2)
000a50  6741b100  storeli.w r11, 20(r2)
000a54  e701c100  storeli.w r12, 24(r2)
000a58  e7413101  storeli.w r19, 28(r2)
000a5c  67024101  storeli.w r20, 32(r2)
000a60  67425101  storeli.w r21, 36(r2)
000a64  e7026101  storeli.w r22, 40(r2)
000a68  e7427101  storeli.w r23, 44(r2)
000a6c  67038101  storeli.w r24, 48(r2)
000a70  67439101  storeli.w r25, 52(r2)
000a74  e703a101  storeli.w r26, 56(r2)
000a78  e743b101  storeli.w r27, 60(r2)
000a7c  e3008100  loadli.w r1,  64(r2)
000a80  e3418100  loadli.w r3,  68(r2)
000a84  e3029100  loadli.w r5,  72(r2)
000a88  e3439100  loadli.w r7,  76(r2)
000a8c  6304a100  loadli.w r8,  80(r2)
000a90  e345a100  loadli.w r11,  84(r2)
000a94  6306b100  loadli.w r12,  88(r2)
000a98  e349b100  loadli.w r19,  92(r2)
000a9c  630ac100  loadli.w r20,  96(r2)
000aa0  e34ac100  loadli.w r21,  100(r2)
000aa4  630bd100  loadli.w r22,  104(r2)
000aa8  e34bd100  loadli.w r23,  108(r2)
000aac  630ce100  loadli.w r24,  112(r2)
000ab0  e34ce100  loadli.w r25,  116(r2)
000ab4  630df100  loadli.w r26,  120(r2)
000ab8  e34df100  loadli.w r27,  124(r2)
000abc  8f800000  exp.f.rn r1, r1
000ac0  8f810100  exp.f.rn r3, r3
000ac4  8f820200  exp.f.rn r5, r5
000ac8  8f830300  exp.f.rn r7, r7
000acc  0f040400  exp.f.rn r8, r8
000ad0  8f850500  exp.f.rn r11, r11
000ad4  0f060600  exp.f.rn r12, r12
000ad8  8f890900  exp.f.rn r19, r19
000adc  0f0a0a00  exp.f.rn r20, r20
000ae0  8f8a0a00  exp.f.rn r21, r21
000ae4  0f0b0b00  exp.f.rn r22, r22
000ae8  8f8b0b00  exp.f.rn r23, r23
000aec  0f0c0c00  exp.f.rn r24, r24
000af0  8f8c0c00  exp.f.rn r25, r25
000af4  0f0d0d00  exp.f.rn r26, r26
000af8  8f8d0d00  exp.f.rn r27, r27
000afc  67041100  storeli.w r1, 64(r2)
000b00  67443100  storeli.w r3, 68(r2)
000b04  e7045100  storeli.w r5, 72(r2)
000b08  e7447100  storeli.w r7, 76(r2)
000b0c  67058100  storeli.w r8, 80(r2)
000b10  6745b100  storeli.w r11, 84(r2)
000b14  e705c100  storeli.w r12, 88(r2)
000b18  e7453101  storeli.w r19, 92(r2)
000b1c  67064101  storeli.w r20, 96(r2)
000b20  67465101  storeli.w r21, 100(r2)
000b24  e7066101  storeli.w r22, 104(r2)
000b28  e7467101  storeli.w r23, 108(r2)
000b2c  67078101  storeli.w r24, 112(r2)
000b30  67479101  storeli.w r25, 116(r2)
000b34  e707a101  storeli.w r26, 120(r2)
000b38  e747b101  storeli.w r27, 124(r2)
000b3c  e3000101  loadli.w r1,  128(r2)
000b40  e3410101  loadli.w r3,  132(r2)
000b44  e3021101  loadli.w r5,  136(r2)
000b48  e3431101  loadli.w r7,  140(r2)
000b4c  63042101  loadli.w r8,  144(r2)
000b50  e3452101  loadli.w r11,  148(r2)
000b54  63063101  loadli.w r12,  152(r2)
000b58  e3493101  loadli.w r19,  156(r2)
000b5c  630a4101  loadli.w r20,  160(r2)
000b60  e34a4101  loadli.w r21,  164(r2)
000b64  630b5101  loadli.w r22,  168(r2)
000b68  e34b5101  loadli.w r23,  172(r2)
000b6c  630c6101  loadli.w r24,  176(r2)
000b70  e34c6101  loadli.w r25,  180(r2)
000b74  630d7101  loadli.w r26,  184(r2)
000b78  e34d7101  loadli.w r27,  188(r2)
000b7c  8f800000  exp.f.rn r1, r1
000b80  8f810100  exp.f.rn r3, r3
000b84  8f820200  exp.f.rn r5, r5
000b88  8f830300  exp.f.rn r7, r7
000b8c  0f040400  exp.f.rn r8, r8
000b90  8f850500  exp.f.rn r11, r11
000b94  0f060600  exp.f.rn r12, r12
000b98  8f890900  exp.f.rn r19, r19
000b9c  0f0a0a00  exp.f.rn r20, r20
000ba0  8f8a0a00  exp.f.rn r21, r21
000ba4  0f0b0b00  exp.f.rn r22, r22
000ba8  8f8b0b00  exp.f.rn r23, r23
000bac  0f0c0c00  exp.f.rn r24, r24
000bb0  8f8c0c00  exp.f.rn r25, r25
000bb4  0f0d0d00  exp.f.rn r26, r26
000bb8  8f8d0d00  exp.f.rn r27, r27
000bbc  67081100  storeli.w r1, 128(r2)
000bc0  67483100  storeli.w r3, 132(r2)
000bc4  e7085100  storeli.w r5, 136(r2)
000bc8  e7487100  storeli.w r7, 140(r2)
000bcc  67098100  storeli.w r8, 144(r2)
000bd0  6749b100  storeli.w r11, 148(r2)
000bd4  e709c100  storeli.w r12, 152(r2)
000bd8  e7493101  storeli.w r19, 156(r2)
000bdc  670a4101  storeli.w r20, 160(r2)
000be0  674a5101  storeli.w r21, 164(r2)
000be4  e70a6101  storeli.w r22, 168(r2)
000be8  e74a7101  storeli.w r23, 172(r2)
000bec  670b8101  storeli.w r24, 176(r2)
000bf0  674b9101  storeli.w r25, 180(r2)
000bf4  e70ba101  storeli.w r26, 184(r2)
000bf8  e74bb101  storeli.w r27, 188(r2)
000bfc  e3008101  loadli.w r1,  192(r2)
000c00  e3418101  loadli.w r3,  196(r2)
000c04  e3029101  loadli.w r5,  200(r2)
000c08  e3439101  loadli.w r7,  204(r2)
000c0c  6304a101  loadli.w r8,  208(r2)
000c10  e345a101  loadli.w r11,  212(r2)
000c14  6306b101  loadli.w r12,  216(r2)
000c18  e349b101  loadli.w r19,  220(r2)
000c1c  630ac101  loadli.w r20,  224(r2)
000c20  e34ac101  loadli.w r21,  228(r2)
000c24  630bd101  loadli.w r22,  232(r2)
000c28  e34bd101  loadli.w r23,  236(r2)
000c2c  630ce101  loadli.w r24,  240(r2)
000c30  e34ce101  loadli.w r25,  244(r2)
000c34  630df101  loadli.w r26,  248(r2)
000c38  e34df101  loadli.w r27,  252(r2)
000c3c  8f800000  exp.f.rn r1, r1
000c40  8f810100  exp.f.rn r3, r3
000c44  8f820200  exp.f.rn r5, r5
000c48  8f830300  exp.f.rn r7, r7
000c4c  0f040400  exp.f.rn r8, r8
000c50  8f850500  exp.f.rn r11, r11
000c54  0f060600  exp.f.rn r12, r12
000c58  8f890900  exp.f.rn r19, r19
000c5c  0f0a0a00  exp.f.rn r20, r20
000c60  8f8a0a00  exp.f.rn r21, r21
000c64  0f0b0b00  exp.f.rn r22, r22
000c68  8f8b0b00  exp.f.rn r23, r23
000c6c  0f0c0c00  exp.f.rn r24, r24
000c70  8f8c0c00  exp.f.rn r25, r25
000c74  0f0d0d00  exp.f.rn r26, r26
000c78  8f8d0d00  exp.f.rn r27, r27
000c7c  670c1100  storeli.w r1, 192(r2)
000c80  674c3100  storeli.w r3, 196(r2)
000c84  e70c5100  storeli.w r5, 200(r2)
000c88  e74c7100  storeli.w r7, 204(r2)
000c8c  670d8100  storeli.w r8, 208(r2)
000c90  674db100  storeli.w r11, 212(r2)
000c94  e70dc100  storeli.w r12, 216(r2)
000c98  e74d3101  storeli.w r19, 220(r2)
000c9c  670e4101  storeli.w r20, 224(r2)
000ca0  674e5101  storeli.w r21, 228(r2)
000ca4  e70e6101  storeli.w r22, 232(r2)
000ca8  e74e7101  storeli.w r23, 236(r2)
000cac  670f8101  storeli.w r24, 240(r2)
000cb0  674f9101  storeli.w r25, 244(r2)
000cb4  e70fa101  storeli.w r26, 248(r2)
000cb8  e74fb101  storeli.w r27, 252(r2)
000cbc  00a00000  mfence { lm }
000cc0  c2130fe2  vload_mask16.mz vr7{mr1}, 1792(r30)
000cc4  9f008fed  addli r1, r30, -2368
000cc8  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
000ccc  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000cd0  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000cd4  9f000fe7  addli r1, r30, -3200
000cd8  42148fe2  vload_mask16.mz vr8{mr1}, 1856(r30)
000cdc  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
000ce0  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
000ce4  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000ce8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000cec  9f000fe8  addli r1, r30, -3072
000cf0  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
000cf4  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000cf8  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000cfc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000d00  9f008fe8  addli r1, r30, -3008
000d04  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
000d08  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
000d0c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000d10  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
000d14  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000d18  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000d1c  00a00000  mfence { lm }
000d20  e3000100  loadli.w r1,  0(r2)
000d24  e3410100  loadli.w r3,  4(r2)
000d28  e3021100  loadli.w r5,  8(r2)
000d2c  e3431100  loadli.w r7,  12(r2)
000d30  63042100  loadli.w r8,  16(r2)
000d34  e3452100  loadli.w r11,  20(r2)
000d38  63063100  loadli.w r12,  24(r2)
000d3c  e3493100  loadli.w r19,  28(r2)
000d40  630a4100  loadli.w r20,  32(r2)
000d44  e34a4100  loadli.w r21,  36(r2)
000d48  630b5100  loadli.w r22,  40(r2)
000d4c  e34b5100  loadli.w r23,  44(r2)
000d50  630c6100  loadli.w r24,  48(r2)
000d54  e34c6100  loadli.w r25,  52(r2)
000d58  630d7100  loadli.w r26,  56(r2)
000d5c  e34d7100  loadli.w r27,  60(r2)
000d60  8f800000  exp.f.rn r1, r1
000d64  8f810100  exp.f.rn r3, r3
000d68  8f820200  exp.f.rn r5, r5
000d6c  8f830300  exp.f.rn r7, r7
000d70  0f040400  exp.f.rn r8, r8
000d74  8f850500  exp.f.rn r11, r11
000d78  0f060600  exp.f.rn r12, r12
000d7c  8f890900  exp.f.rn r19, r19
000d80  0f0a0a00  exp.f.rn r20, r20
000d84  8f8a0a00  exp.f.rn r21, r21
000d88  0f0b0b00  exp.f.rn r22, r22
000d8c  8f8b0b00  exp.f.rn r23, r23
000d90  0f0c0c00  exp.f.rn r24, r24
000d94  8f8c0c00  exp.f.rn r25, r25
000d98  0f0d0d00  exp.f.rn r26, r26
000d9c  8f8d0d00  exp.f.rn r27, r27
000da0  67001100  storeli.w r1, 0(r2)
000da4  67403100  storeli.w r3, 4(r2)
000da8  e7005100  storeli.w r5, 8(r2)
000dac  e7407100  storeli.w r7, 12(r2)
000db0  67018100  storeli.w r8, 16(r2)
000db4  6741b100  storeli.w r11, 20(r2)
000db8  e701c100  storeli.w r12, 24(r2)
000dbc  e7413101  storeli.w r19, 28(r2)
000dc0  67024101  storeli.w r20, 32(r2)
000dc4  67425101  storeli.w r21, 36(r2)
000dc8  e7026101  storeli.w r22, 40(r2)
000dcc  e7427101  storeli.w r23, 44(r2)
000dd0  67038101  storeli.w r24, 48(r2)
000dd4  67439101  storeli.w r25, 52(r2)
000dd8  e703a101  storeli.w r26, 56(r2)
000ddc  e743b101  storeli.w r27, 60(r2)
000de0  e3008100  loadli.w r1,  64(r2)
000de4  e3418100  loadli.w r3,  68(r2)
000de8  e3029100  loadli.w r5,  72(r2)
000dec  e3439100  loadli.w r7,  76(r2)
000df0  6304a100  loadli.w r8,  80(r2)
000df4  e345a100  loadli.w r11,  84(r2)
000df8  6306b100  loadli.w r12,  88(r2)
000dfc  e349b100  loadli.w r19,  92(r2)
000e00  630ac100  loadli.w r20,  96(r2)
000e04  e34ac100  loadli.w r21,  100(r2)
000e08  630bd100  loadli.w r22,  104(r2)
000e0c  e34bd100  loadli.w r23,  108(r2)
000e10  630ce100  loadli.w r24,  112(r2)
000e14  e34ce100  loadli.w r25,  116(r2)
000e18  630df100  loadli.w r26,  120(r2)
000e1c  e34df100  loadli.w r27,  124(r2)
000e20  8f800000  exp.f.rn r1, r1
000e24  8f810100  exp.f.rn r3, r3
000e28  8f820200  exp.f.rn r5, r5
000e2c  8f830300  exp.f.rn r7, r7
000e30  0f040400  exp.f.rn r8, r8
000e34  8f850500  exp.f.rn r11, r11
000e38  0f060600  exp.f.rn r12, r12
000e3c  8f890900  exp.f.rn r19, r19
000e40  0f0a0a00  exp.f.rn r20, r20
000e44  8f8a0a00  exp.f.rn r21, r21
000e48  0f0b0b00  exp.f.rn r22, r22
000e4c  8f8b0b00  exp.f.rn r23, r23
000e50  0f0c0c00  exp.f.rn r24, r24
000e54  8f8c0c00  exp.f.rn r25, r25
000e58  0f0d0d00  exp.f.rn r26, r26
000e5c  8f8d0d00  exp.f.rn r27, r27
000e60  67041100  storeli.w r1, 64(r2)
000e64  67443100  storeli.w r3, 68(r2)
000e68  e7045100  storeli.w r5, 72(r2)
000e6c  e7447100  storeli.w r7, 76(r2)
000e70  67058100  storeli.w r8, 80(r2)
000e74  6745b100  storeli.w r11, 84(r2)
000e78  e705c100  storeli.w r12, 88(r2)
000e7c  e7453101  storeli.w r19, 92(r2)
000e80  67064101  storeli.w r20, 96(r2)
000e84  67465101  storeli.w r21, 100(r2)
000e88  e7066101  storeli.w r22, 104(r2)
000e8c  e7467101  storeli.w r23, 108(r2)
000e90  67078101  storeli.w r24, 112(r2)
000e94  67479101  storeli.w r25, 116(r2)
000e98  e707a101  storeli.w r26, 120(r2)
000e9c  e747b101  storeli.w r27, 124(r2)
000ea0  e3000101  loadli.w r1,  128(r2)
000ea4  e3410101  loadli.w r3,  132(r2)
000ea8  e3021101  loadli.w r5,  136(r2)
000eac  e3431101  loadli.w r7,  140(r2)
000eb0  63042101  loadli.w r8,  144(r2)
000eb4  e3452101  loadli.w r11,  148(r2)
000eb8  63063101  loadli.w r12,  152(r2)
000ebc  e3493101  loadli.w r19,  156(r2)
000ec0  630a4101  loadli.w r20,  160(r2)
000ec4  e34a4101  loadli.w r21,  164(r2)
000ec8  630b5101  loadli.w r22,  168(r2)
000ecc  e34b5101  loadli.w r23,  172(r2)
000ed0  630c6101  loadli.w r24,  176(r2)
000ed4  e34c6101  loadli.w r25,  180(r2)
000ed8  630d7101  loadli.w r26,  184(r2)
000edc  e34d7101  loadli.w r27,  188(r2)
000ee0  8f800000  exp.f.rn r1, r1
000ee4  8f810100  exp.f.rn r3, r3
000ee8  8f820200  exp.f.rn r5, r5
000eec  8f830300  exp.f.rn r7, r7
000ef0  0f040400  exp.f.rn r8, r8
000ef4  8f850500  exp.f.rn r11, r11
000ef8  0f060600  exp.f.rn r12, r12
000efc  8f890900  exp.f.rn r19, r19
000f00  0f0a0a00  exp.f.rn r20, r20
000f04  8f8a0a00  exp.f.rn r21, r21
000f08  0f0b0b00  exp.f.rn r22, r22
000f0c  8f8b0b00  exp.f.rn r23, r23
000f10  0f0c0c00  exp.f.rn r24, r24
000f14  8f8c0c00  exp.f.rn r25, r25
000f18  0f0d0d00  exp.f.rn r26, r26
000f1c  8f8d0d00  exp.f.rn r27, r27
000f20  67081100  storeli.w r1, 128(r2)
000f24  67483100  storeli.w r3, 132(r2)
000f28  e7085100  storeli.w r5, 136(r2)
000f2c  e7487100  storeli.w r7, 140(r2)
000f30  67098100  storeli.w r8, 144(r2)
000f34  6749b100  storeli.w r11, 148(r2)
000f38  e709c100  storeli.w r12, 152(r2)
000f3c  e7493101  storeli.w r19, 156(r2)
000f40  670a4101  storeli.w r20, 160(r2)
000f44  674a5101  storeli.w r21, 164(r2)
000f48  e70a6101  storeli.w r22, 168(r2)
000f4c  e74a7101  storeli.w r23, 172(r2)
000f50  670b8101  storeli.w r24, 176(r2)
000f54  674b9101  storeli.w r25, 180(r2)
000f58  e70ba101  storeli.w r26, 184(r2)
000f5c  e74bb101  storeli.w r27, 188(r2)
000f60  e3008101  loadli.w r1,  192(r2)
000f64  e3418101  loadli.w r3,  196(r2)
000f68  e3029101  loadli.w r5,  200(r2)
000f6c  e3439101  loadli.w r7,  204(r2)
000f70  6304a101  loadli.w r8,  208(r2)
000f74  e345a101  loadli.w r11,  212(r2)
000f78  6306b101  loadli.w r12,  216(r2)
000f7c  e349b101  loadli.w r19,  220(r2)
000f80  630ac101  loadli.w r20,  224(r2)
000f84  e34ac101  loadli.w r21,  228(r2)
000f88  630bd101  loadli.w r22,  232(r2)
000f8c  e34bd101  loadli.w r23,  236(r2)
000f90  630ce101  loadli.w r24,  240(r2)
000f94  e34ce101  loadli.w r25,  244(r2)
000f98  630df101  loadli.w r26,  248(r2)
000f9c  e34df101  loadli.w r27,  252(r2)
000fa0  8f800000  exp.f.rn r1, r1
000fa4  8f810100  exp.f.rn r3, r3
000fa8  8f820200  exp.f.rn r5, r5
000fac  8f830300  exp.f.rn r7, r7
000fb0  0f040400  exp.f.rn r8, r8
000fb4  8f850500  exp.f.rn r11, r11
000fb8  0f060600  exp.f.rn r12, r12
000fbc  8f890900  exp.f.rn r19, r19
000fc0  0f0a0a00  exp.f.rn r20, r20
000fc4  8f8a0a00  exp.f.rn r21, r21
000fc8  0f0b0b00  exp.f.rn r22, r22
000fcc  8f8b0b00  exp.f.rn r23, r23
000fd0  0f0c0c00  exp.f.rn r24, r24
000fd4  8f8c0c00  exp.f.rn r25, r25
000fd8  0f0d0d00  exp.f.rn r26, r26
000fdc  8f8d0d00  exp.f.rn r27, r27
000fe0  670c1100  storeli.w r1, 192(r2)
000fe4  674c3100  storeli.w r3, 196(r2)
000fe8  e70c5100  storeli.w r5, 200(r2)
000fec  e74c7100  storeli.w r7, 204(r2)
000ff0  670d8100  storeli.w r8, 208(r2)
000ff4  674db100  storeli.w r11, 212(r2)
000ff8  e70dc100  storeli.w r12, 216(r2)
000ffc  e74d3101  storeli.w r19, 220(r2)
001000  670e4101  storeli.w r20, 224(r2)
001004  674e5101  storeli.w r21, 228(r2)
001008  e70e6101  storeli.w r22, 232(r2)
00100c  e74e7101  storeli.w r23, 236(r2)
001010  670f8101  storeli.w r24, 240(r2)
001014  674f9101  storeli.w r25, 244(r2)
001018  e70fa101  storeli.w r26, 248(r2)
00101c  e74fb101  storeli.w r27, 252(r2)
001020  00a00000  mfence { lm }
001024  92102702  vadd.f.mz.rn vr1{mr1}, r14, vr2
001028  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
00102c  9f000fec  addli r1, r30, -2560
001030  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
001034  9f008fe7  addli r1, r30, -3136
001038  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00103c  42158fe2  vload_mask16.mz vr10{mr1}, 1856(r30)
001040  c2120fe3  vload_mask16.mz vr5{mr1}, 1920(r30)
001044  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001048  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
00104c  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001050  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001054  9f000fe9  addli r1, r30, -2944
001058  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
00105c  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001060  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001064  9f008fe9  addli r1, r30, -2880
001068  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
00106c  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
001070  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001074  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001078  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
00107c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001080  00a00000  mfence { lm }
001084  e3000100  loadli.w r1,  0(r2)
001088  e3410100  loadli.w r3,  4(r2)
00108c  e3021100  loadli.w r5,  8(r2)
001090  e3431100  loadli.w r7,  12(r2)
001094  63042100  loadli.w r8,  16(r2)
001098  e3452100  loadli.w r11,  20(r2)
00109c  63063100  loadli.w r12,  24(r2)
0010a0  63473100  loadli.w r14,  28(r2)
0010a4  e3094100  loadli.w r19,  32(r2)
0010a8  634a4100  loadli.w r20,  36(r2)
0010ac  e30a5100  loadli.w r21,  40(r2)
0010b0  634b5100  loadli.w r22,  44(r2)
0010b4  e30b6100  loadli.w r23,  48(r2)
0010b8  634c6100  loadli.w r24,  52(r2)
0010bc  e30c7100  loadli.w r25,  56(r2)
0010c0  634d7100  loadli.w r26,  60(r2)
0010c4  8f800000  exp.f.rn r1, r1
0010c8  8f810100  exp.f.rn r3, r3
0010cc  8f820200  exp.f.rn r5, r5
0010d0  8f830300  exp.f.rn r7, r7
0010d4  0f040400  exp.f.rn r8, r8
0010d8  8f850500  exp.f.rn r11, r11
0010dc  0f060600  exp.f.rn r12, r12
0010e0  0f070700  exp.f.rn r14, r14
0010e4  8f890900  exp.f.rn r19, r19
0010e8  0f0a0a00  exp.f.rn r20, r20
0010ec  8f8a0a00  exp.f.rn r21, r21
0010f0  0f0b0b00  exp.f.rn r22, r22
0010f4  8f8b0b00  exp.f.rn r23, r23
0010f8  0f0c0c00  exp.f.rn r24, r24
0010fc  8f8c0c00  exp.f.rn r25, r25
001100  0f0d0d00  exp.f.rn r26, r26
001104  67001100  storeli.w r1, 0(r2)
001108  67403100  storeli.w r3, 4(r2)
00110c  e7005100  storeli.w r5, 8(r2)
001110  e7407100  storeli.w r7, 12(r2)
001114  67018100  storeli.w r8, 16(r2)
001118  6741b100  storeli.w r11, 20(r2)
00111c  e701c100  storeli.w r12, 24(r2)
001120  e741e100  storeli.w r14, 28(r2)
001124  67023101  storeli.w r19, 32(r2)
001128  67424101  storeli.w r20, 36(r2)
00112c  e7025101  storeli.w r21, 40(r2)
001130  e7426101  storeli.w r22, 44(r2)
001134  67037101  storeli.w r23, 48(r2)
001138  67438101  storeli.w r24, 52(r2)
00113c  e7039101  storeli.w r25, 56(r2)
001140  e743a101  storeli.w r26, 60(r2)
001144  e3008100  loadli.w r1,  64(r2)
001148  e3418100  loadli.w r3,  68(r2)
00114c  e3029100  loadli.w r5,  72(r2)
001150  e3439100  loadli.w r7,  76(r2)
001154  6304a100  loadli.w r8,  80(r2)
001158  e345a100  loadli.w r11,  84(r2)
00115c  6306b100  loadli.w r12,  88(r2)
001160  6347b100  loadli.w r14,  92(r2)
001164  e309c100  loadli.w r19,  96(r2)
001168  634ac100  loadli.w r20,  100(r2)
00116c  e30ad100  loadli.w r21,  104(r2)
001170  634bd100  loadli.w r22,  108(r2)
001174  e30be100  loadli.w r23,  112(r2)
001178  634ce100  loadli.w r24,  116(r2)
00117c  e30cf100  loadli.w r25,  120(r2)
001180  634df100  loadli.w r26,  124(r2)
001184  8f800000  exp.f.rn r1, r1
001188  8f810100  exp.f.rn r3, r3
00118c  8f820200  exp.f.rn r5, r5
001190  8f830300  exp.f.rn r7, r7
001194  0f040400  exp.f.rn r8, r8
001198  8f850500  exp.f.rn r11, r11
00119c  0f060600  exp.f.rn r12, r12
0011a0  0f070700  exp.f.rn r14, r14
0011a4  8f890900  exp.f.rn r19, r19
0011a8  0f0a0a00  exp.f.rn r20, r20
0011ac  8f8a0a00  exp.f.rn r21, r21
0011b0  0f0b0b00  exp.f.rn r22, r22
0011b4  8f8b0b00  exp.f.rn r23, r23
0011b8  0f0c0c00  exp.f.rn r24, r24
0011bc  8f8c0c00  exp.f.rn r25, r25
0011c0  0f0d0d00  exp.f.rn r26, r26
0011c4  67041100  storeli.w r1, 64(r2)
0011c8  67443100  storeli.w r3, 68(r2)
0011cc  e7045100  storeli.w r5, 72(r2)
0011d0  e7447100  storeli.w r7, 76(r2)
0011d4  67058100  storeli.w r8, 80(r2)
0011d8  6745b100  storeli.w r11, 84(r2)
0011dc  e705c100  storeli.w r12, 88(r2)
0011e0  e745e100  storeli.w r14, 92(r2)
0011e4  67063101  storeli.w r19, 96(r2)
0011e8  67464101  storeli.w r20, 100(r2)
0011ec  e7065101  storeli.w r21, 104(r2)
0011f0  e7466101  storeli.w r22, 108(r2)
0011f4  67077101  storeli.w r23, 112(r2)
0011f8  67478101  storeli.w r24, 116(r2)
0011fc  e7079101  storeli.w r25, 120(r2)
001200  e747a101  storeli.w r26, 124(r2)
001204  e3000101  loadli.w r1,  128(r2)
001208  e3410101  loadli.w r3,  132(r2)
00120c  e3021101  loadli.w r5,  136(r2)
001210  e3431101  loadli.w r7,  140(r2)
001214  63042101  loadli.w r8,  144(r2)
001218  e3452101  loadli.w r11,  148(r2)
00121c  63063101  loadli.w r12,  152(r2)
001220  63473101  loadli.w r14,  156(r2)
001224  e3094101  loadli.w r19,  160(r2)
001228  634a4101  loadli.w r20,  164(r2)
00122c  e30a5101  loadli.w r21,  168(r2)
001230  634b5101  loadli.w r22,  172(r2)
001234  e30b6101  loadli.w r23,  176(r2)
001238  634c6101  loadli.w r24,  180(r2)
00123c  e30c7101  loadli.w r25,  184(r2)
001240  634d7101  loadli.w r26,  188(r2)
001244  8f800000  exp.f.rn r1, r1
001248  8f810100  exp.f.rn r3, r3
00124c  8f820200  exp.f.rn r5, r5
001250  8f830300  exp.f.rn r7, r7
001254  0f040400  exp.f.rn r8, r8
001258  8f850500  exp.f.rn r11, r11
00125c  0f060600  exp.f.rn r12, r12
001260  0f070700  exp.f.rn r14, r14
001264  8f890900  exp.f.rn r19, r19
001268  0f0a0a00  exp.f.rn r20, r20
00126c  8f8a0a00  exp.f.rn r21, r21
001270  0f0b0b00  exp.f.rn r22, r22
001274  8f8b0b00  exp.f.rn r23, r23
001278  0f0c0c00  exp.f.rn r24, r24
00127c  8f8c0c00  exp.f.rn r25, r25
001280  0f0d0d00  exp.f.rn r26, r26
001284  67081100  storeli.w r1, 128(r2)
001288  67483100  storeli.w r3, 132(r2)
00128c  e7085100  storeli.w r5, 136(r2)
001290  e7487100  storeli.w r7, 140(r2)
001294  67098100  storeli.w r8, 144(r2)
001298  6749b100  storeli.w r11, 148(r2)
00129c  e709c100  storeli.w r12, 152(r2)
0012a0  e749e100  storeli.w r14, 156(r2)
0012a4  670a3101  storeli.w r19, 160(r2)
0012a8  674a4101  storeli.w r20, 164(r2)
0012ac  e70a5101  storeli.w r21, 168(r2)
0012b0  e74a6101  storeli.w r22, 172(r2)
0012b4  670b7101  storeli.w r23, 176(r2)
0012b8  674b8101  storeli.w r24, 180(r2)
0012bc  e70b9101  storeli.w r25, 184(r2)
0012c0  e74ba101  storeli.w r26, 188(r2)
0012c4  e3008101  loadli.w r1,  192(r2)
0012c8  e3418101  loadli.w r3,  196(r2)
0012cc  e3029101  loadli.w r5,  200(r2)
0012d0  e3439101  loadli.w r7,  204(r2)
0012d4  6304a101  loadli.w r8,  208(r2)
0012d8  e345a101  loadli.w r11,  212(r2)
0012dc  6306b101  loadli.w r12,  216(r2)
0012e0  6347b101  loadli.w r14,  220(r2)
0012e4  e309c101  loadli.w r19,  224(r2)
0012e8  634ac101  loadli.w r20,  228(r2)
0012ec  e30ad101  loadli.w r21,  232(r2)
0012f0  634bd101  loadli.w r22,  236(r2)
0012f4  e30be101  loadli.w r23,  240(r2)
0012f8  634ce101  loadli.w r24,  244(r2)
0012fc  e30cf101  loadli.w r25,  248(r2)
001300  634df101  loadli.w r26,  252(r2)
001304  8f800000  exp.f.rn r1, r1
001308  8f810100  exp.f.rn r3, r3
00130c  8f820200  exp.f.rn r5, r5
001310  8f830300  exp.f.rn r7, r7
001314  0f040400  exp.f.rn r8, r8
001318  8f850500  exp.f.rn r11, r11
00131c  0f060600  exp.f.rn r12, r12
001320  0f070700  exp.f.rn r14, r14
001324  8f890900  exp.f.rn r19, r19
001328  0f0a0a00  exp.f.rn r20, r20
00132c  8f8a0a00  exp.f.rn r21, r21
001330  0f0b0b00  exp.f.rn r22, r22
001334  8f8b0b00  exp.f.rn r23, r23
001338  0f0c0c00  exp.f.rn r24, r24
00133c  8f8c0c00  exp.f.rn r25, r25
001340  0f0d0d00  exp.f.rn r26, r26
001344  670c1100  storeli.w r1, 192(r2)
001348  674c3100  storeli.w r3, 196(r2)
00134c  e70c5100  storeli.w r5, 200(r2)
001350  e74c7100  storeli.w r7, 204(r2)
001354  670d8100  storeli.w r8, 208(r2)
001358  674db100  storeli.w r11, 212(r2)
00135c  e70dc100  storeli.w r12, 216(r2)
001360  e74de100  storeli.w r14, 220(r2)
001364  670e3101  storeli.w r19, 224(r2)
001368  674e4101  storeli.w r20, 228(r2)
00136c  e70e5101  storeli.w r21, 232(r2)
001370  e74e6101  storeli.w r22, 236(r2)
001374  670f7101  storeli.w r23, 240(r2)
001378  674f8101  storeli.w r24, 244(r2)
00137c  e70f9101  storeli.w r25, 248(r2)
001380  e74fa101  storeli.w r26, 252(r2)
001384  00a00000  mfence { lm }
001388  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
00138c  c2140fe2  vload_mask16.mz vr9{mr1}, 1792(r30)
001390  c2158fe2  vload_mask16.mz vr11{mr1}, 1856(r30)
001394  c2100fe3  vload_mask16.mz vr1{mr1}, 1920(r30)
001398  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
00139c  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0013a0  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0013a4  1610b002  vadd.f.mz.rn vr0{mr1}, vr0, vr11
0013a8  16111002  vadd.f.mz.rn vr2{mr1}, vr0, vr1
0013ac  42108fe3  vload_mask16.mz vr0{mr1}, 1984(r30)
0013b0  16110102  vadd.f.mz.rn vr2{mr1}, vr2, vr0
0013b4  fa100140  vextracti.f r1, 0(vr2)
0013b8  fa111140  vextracti.f r3, 1(vr2)
0013bc  8be03010  add.f.rn r1, r1, r3
0013c0  fa112140  vextracti.f r3, 2(vr2)
0013c4  8be01110  add.f.rn r1, r3, r1
0013c8  fa113140  vextracti.f r3, 3(vr2)
0013cc  8be01110  add.f.rn r1, r3, r1
0013d0  fa114140  vextracti.f r3, 4(vr2)
0013d4  8be01110  add.f.rn r1, r3, r1
0013d8  fa115140  vextracti.f r3, 5(vr2)
0013dc  8be01110  add.f.rn r1, r3, r1
0013e0  fa116140  vextracti.f r3, 6(vr2)
0013e4  8be01110  add.f.rn r1, r3, r1
0013e8  fa117140  vextracti.f r3, 7(vr2)
0013ec  8be01110  add.f.rn r1, r3, r1
0013f0  fa118140  vextracti.f r3, 8(vr2)
0013f4  8be01110  add.f.rn r1, r3, r1
0013f8  fa119140  vextracti.f r3, 9(vr2)
0013fc  8be01110  add.f.rn r1, r3, r1
001400  fa11a140  vextracti.f r3, 10(vr2)
001404  8be01110  add.f.rn r1, r3, r1
001408  fa11b140  vextracti.f r3, 11(vr2)
00140c  8be01110  add.f.rn r1, r3, r1
001410  fa11c140  vextracti.f r3, 12(vr2)
001414  8be01110  add.f.rn r1, r3, r1
001418  fa11d140  vextracti.f r3, 13(vr2)
00141c  8be01110  add.f.rn r1, r3, r1
001420  fa11e140  vextracti.f r3, 14(vr2)
001424  8be01110  add.f.rn r1, r3, r1
001428  fa11f140  vextracti.f r3, 15(vr2)
00142c  8be01110  add.f.rn r1, r3, r1
001430  e3417fe6  loadli.w r3,  -3268(r30)
001434  73e01100  stores.w r1, 0(r3)
001438  00a00300  mfence { lm, sm, gm }
00143c  80210204  csr_set csr3, r4
001440  00d00100  sync_group
001444  bb900700  bneq r15, zero, 36
001448  ef400500  loads.w r1, 0(r10)
00144c  ef414500  loads.w r3, 4(r10)
001450  ef428500  loads.w r5, 8(r10)
001454  8be03010  add.f.rn r1, r1, r3
001458  ef41c500  loads.w r3, 12(r10)
00145c  8be05010  add.f.rn r1, r1, r5
001460  8be03010  add.f.rn r1, r1, r3
001464  73601500  stores.w r1, 0(r10)
001468  00a00300  mfence { lm, sm, gm }
00146c  80210204  csr_set csr3, r4
001470  00d00100  sync_group
001474  ef400500  loads.w r1, 0(r10)
001478  ab01803f  lui r3, 260096
00147c  0f871118  div.f.rn r14, r3, r1
001480  9f008feb  addli r1, r30, -2624
001484  8a101702  vmul.f.mz.rn vr1{mr1}, r14, vr1
001488  0a100702  vmul.f.mz.rn vr0{mr1}, r14, vr0
00148c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001490  9f000ff6  addli r1, r30, -1280
001494  0a112702  vmul.f.mz.rn vr2{mr1}, r14, vr2
001498  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00149c  9f008fec  addli r1, r30, -2496
0014a0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0014a4  9f008ff6  addli r1, r30, -1216
0014a8  0a112702  vmul.f.mz.rn vr2{mr1}, r14, vr2
0014ac  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0014b0  9f000fed  addli r1, r30, -2432
0014b4  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0014b8  9f000ff7  addli r1, r30, -1152
0014bc  0a112702  vmul.f.mz.rn vr2{mr1}, r14, vr2
0014c0  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0014c4  9f008fed  addli r1, r30, -2368
0014c8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0014cc  9f008ff7  addli r1, r30, -1088
0014d0  0a112702  vmul.f.mz.rn vr2{mr1}, r14, vr2
0014d4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0014d8  0a117702  vmul.f.mz.rn vr2{mr1}, r14, vr7
0014dc  46102f82  vstore_mask16.mz vr2{mr1}, 1024(r30)
0014e0  9f000fec  addli r1, r30, -2560
0014e4  0a118702  vmul.f.mz.rn vr2{mr1}, r14, vr8
0014e8  46142f82  vstore_mask16.mz vr2{mr1}, 1088(r30)
0014ec  0a113702  vmul.f.mz.rn vr2{mr1}, r14, vr3
0014f0  46182f82  vstore_mask16.mz vr2{mr1}, 1152(r30)
0014f4  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0014f8  0a112702  vmul.f.mz.rn vr2{mr1}, r14, vr2
0014fc  461c2f82  vstore_mask16.mz vr2{mr1}, 1216(r30)
001500  0a116702  vmul.f.mz.rn vr2{mr1}, r14, vr6
001504  46102fa2  vstore_mask16.mz vr2{mr1}, 1280(r30)
001508  0a11a702  vmul.f.mz.rn vr2{mr1}, r14, vr10
00150c  46142fa2  vstore_mask16.mz vr2{mr1}, 1344(r30)
001510  0a115702  vmul.f.mz.rn vr2{mr1}, r14, vr5
001514  46182fa2  vstore_mask16.mz vr2{mr1}, 1408(r30)
001518  0a114702  vmul.f.mz.rn vr2{mr1}, r14, vr4
00151c  461c2fa2  vstore_mask16.mz vr2{mr1}, 1472(r30)
001520  0a119702  vmul.f.mz.rn vr2{mr1}, r14, vr9
001524  46102fc2  vstore_mask16.mz vr2{mr1}, 1536(r30)
001528  0a11b702  vmul.f.mz.rn vr2{mr1}, r14, vr11
00152c  46142fc2  vstore_mask16.mz vr2{mr1}, 1600(r30)
001530  46181fc2  vstore_mask16.mz vr1{mr1}, 1664(r30)
001534  461c0fc2  vstore_mask16.mz vr0{mr1}, 1728(r30)
001538  1f870600  addli r14, r13, 0
00153c  00a00000  mfence { lm }
001540  e3008f00  loadli.w r1,  64(r30)
001544  bf5319f6  blt.s r18, r1, -4876
001548  1f070000  addli r14, zero, 0
00154c  db9dfdff  j -4884
001550  9f0e8fe5  addli sp, r30, -3392
001554  9f8e8e1a  addli sp, sp, 3392
001558  00a00300  mfence { lm, sm, gm }
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
00179c  00100000  exit
