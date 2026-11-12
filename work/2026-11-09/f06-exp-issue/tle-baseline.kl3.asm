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
0000e4  9f8e0ecf  addli sp, sp, -6272
0000e8  2b010000  lui r2, 0
0000ec  00340002  core_id r8
0000f0  1f8f0e30  addli r30, sp, 6144
0000f4  ab800000  lui r1, 8
0000f8  2bf20000  lui r4, 15
0000fc  2b450000  lui r10, 4
000100  9b342400  slli r9, r8, 2
000104  1f010100  addli r2, r2, 0
000108  9b900001  ori r1, r1, 16
00010c  e303cf00  loadli.w r7,  96(r30)
000110  6343bf00  loadli.w r6,  92(r30)
000114  e345cf00  loadli.w r11,  100(r30)
000118  1b12f2ff  ori r4, r4, 4095
00011c  8b129110  add.s r5, r2, r9
000120  8b936320  mul.s r7, r7, r6
000124  00530002  load_param_i r6, 0
000128  8b911210  add.s r3, r5, r1
00012c  8b92a210  add.s r5, r5, r10
000130  8b93b320  mul.s r7, r7, r11
000134  73e00100  stores.w zero, 0(r3)
000138  00a00300  mfence { lm, sm, gm }
00013c  80210204  csr_set csr3, r4
000140  00d00100  sync_group
000144  73e00200  stores.w zero, 0(r5)
000148  00a00300  mfence { lm, sm, gm }
00014c  80210204  csr_set csr3, r4
000150  00d00100  sync_group
000154  cbc0631a  ble.s r7, r6, 13360
000158  9b063400  andi r13, r8, 3
00015c  eb570f03  load.d r[16:17], 48(r30)
000160  9f2b0000  addli r23, zero, 2
000164  6b590f02  load.d r[19:20], 32(r30)
000168  e3085f00  loadli.w r17,  40(r30)
00016c  634c1f00  loadli.w r24,  12(r30)
000170  1b442400  srli r8, r8, 2
000174  63478f00  loadli.w r14,  68(r30)
000178  6b5a8f01  load.d r[21:22], 24(r30)
00017c  eb550f05  load.d r[12:13], 80(r30)
000180  1bbb9600  slli r22, r13, 9
000184  b30c0b28  zext_int2long r[26:27], r22
000188  8b986819  sub.s r17, r17, r22
00018c  0b176719  sub.s r14, r14, r22
000190  8bb79721  mul.sl r[16:17], r[16:17], r[26:27]
000194  0b170748  max.s r14, r14, zero
000198  8bb59521  mul.sl r[12:13], r[12:13], r[26:27]
00019c  97b77703  sll.d r[16:17], r[16:17], r23
0001a0  8b27f910  add.ul r[16:17], r[19:20], r[16:17]
0001a4  1f097fd0  addli r18, r30, -6088
0001a8  7330f900  store.d r[16:17], 0(r18)
0001ac  abf7ffff  lui r15, 1048575
0001b0  0b980848  max.s r16, r17, zero
0001b4  9f080004  addli r17, zero, 512
0001b8  9b9707ff  ori r15, r15, 4080
0001bc  9784f400  and r9, r9, r15
0001c0  80d70002  load_param_i r15, 1
0001c4  6743ffd0  storeli.w r15, -6092(r30)
0001c8  8b171841  min.s r15, r16, r17
0001cc  0b119110  add.s r2, r2, r9
0001d0  9f045fd0  addli r9, r30, -6104
0001d4  9bb72700  slli r15, r15, 2
0001d8  6703ffd0  storeli.w r15, -6096(r30)
0001dc  8b176c19  sub.s r15, r24, r22
0001e0  1b0cf400  andi r24, r8, 15
0001e4  0b940748  max.s r8, r15, zero
0001e8  b3070c28  zext_int2long r[16:17], r24
0001ec  73b0f400  store.d r[16:17], 0(r9)
0001f0  8b379a21  mul.sl r[16:17], r[21:22], r[26:27]
0001f4  9f044fd0  addli r9, r30, -6112
0001f8  0b141441  min.s r8, r8, r17
0001fc  73b0f400  store.d r[16:17], 0(r9)
000200  8b14a110  add.s r9, r2, r10
000204  0b151110  add.s r10, r2, r1
000208  8b101741  min.s r1, r14, r17
00020c  1b342400  slli r8, r8, 2
000210  1f012fd0  addli r2, r30, -6128
000214  1f070ff0  addli r14, r30, -2048
000218  9bb02000  slli r1, r1, 2
00021c  e7418fd0  storeli.w r8, -6116(r30)
000220  7330b100  store.d r[12:13], 0(r2)
000224  e7401fd0  storeli.w r1, -6132(r30)
000228  5b090000  j 72
00022c  eb558f04  load.d r[12:13], 72(r30)
000230  1f012fd0  addli r2, r30, -6128
000234  6b570100  load.d r[15:16], 0(r2)
000238  2b0100f0  lui r2, 983040
00023c  8b35b920  mul.sl r[12:13], r[19:20], r[12:13]
000240  97902000  or r1, r1, r2
000244  8ba5e510  add.ul r[12:13], r[12:13], r[15:16]
000248  6b578f03  load.d r[15:16], 56(r30)
00024c  97b57503  sll.d r[12:13], r[12:13], r23
000250  8b25b710  add.ul r[12:13], r[15:16], r[12:13]
000254  1f070ff0  addli r14, r30, -2048
000258  ffb0e500  s_lm2gm r1, r14, 0(r[12:13])
00025c  e3406fd0  loadli.w r1,  -6092(r30)
000260  00a00000  mfence { lm }
000264  0b131310  add.s r6, r6, r1
000268  3f207300  blt.s r6, r7, 8
00026c  5b630600  j 13080
000270  e340cf00  loadli.w r1,  100(r30)
000274  6301cf00  loadli.w r2,  96(r30)
000278  63046fd0  loadli.w r8,  -6096(r30)
00027c  8b101330  div.s r1, r6, r1
000280  8b902030  div.s r1, r1, r2
000284  2b0100f0  lui r2, 983040
000288  97172400  or r15, r8, r2
00028c  1bb14000  slli r2, r1, 4
000290  9f007fd0  addli r1, r30, -6088
000294  ebd50000  load.d r[12:13], 0(r1)
000298  9f000fe0  addli r1, r30, -4096
00029c  ffa71500  l_gm2lm r15, r1, 0(r[12:13])
0002a0  97178101  or r15, r2, r24
0002a4  00a00000  mfence { lm }
0002a8  63041f00  loadli.w r8,  8(r30)
0002ac  e3403fd0  loadli.w r1,  -6116(r30)
0002b0  3fa08700  blt.s r15, r8, 8
0002b4  9f000000  addli r1, zero, 0
0002b8  33180128  sext_int2long r[17:18], r2
0002bc  1f015fd0  addli r2, r30, -6104
0002c0  eb550100  load.d r[12:13], 0(r2)
0002c4  1f014fd0  addli r2, r30, -6112
0002c8  1719b802  or.d r[19:20], r[17:18], r[12:13]
0002cc  eb550f01  load.d r[12:13], 16(r30)
0002d0  0b38b920  mul.sl r[17:18], r[19:20], r[12:13]
0002d4  eb550100  load.d r[12:13], 0(r2)
0002d8  2b0100f0  lui r2, 983040
0002dc  97902000  or r1, r1, r2
0002e0  0b28b810  add.ul r[17:18], r[17:18], r[12:13]
0002e4  eb550f00  load.d r[12:13], 0(r30)
0002e8  17387803  sll.d r[17:18], r[17:18], r23
0002ec  0ba80511  add.ul r[17:18], r[12:13], r[17:18]
0002f0  ff20e800  l_gm2lm r1, r14, 0(r[17:18])
0002f4  9f000ff0  addli r1, r30, -2048
0002f8  00a00000  mfence { lm }
0002fc  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000300  9f008ff0  addli r1, r30, -1984
000304  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000308  9f000ff1  addli r1, r30, -1920
00030c  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000310  9f008ff1  addli r1, r30, -1856
000314  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000318  9f000ff2  addli r1, r30, -1792
00031c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000320  9f008ff2  addli r1, r30, -1728
000324  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000328  9f000fe0  addli r1, r30, -4096
00032c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000330  9f000ff3  addli r1, r30, -1664
000334  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000338  9f008ff3  addli r1, r30, -1600
00033c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000340  9f000ff4  addli r1, r30, -1536
000344  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000348  9f008ff4  addli r1, r30, -1472
00034c  16119102  vadd.f.mz.rn vr2{mr1}, vr2, vr9
000350  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000354  9f008fe0  addli r1, r30, -4032
000358  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
00035c  9f008fd0  addli r1, r30, -6080
000360  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000364  9f000fe1  addli r1, r30, -3968
000368  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00036c  9f008fdf  addli r1, r30, -4160
000370  1611b202  vadd.f.mz.rn vr2{mr1}, vr4, vr11
000374  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000378  9f008fe1  addli r1, r30, -3904
00037c  16919202  vadd.f.mz.rn vr2{mr1}, vr5, vr9
000380  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000384  9f000fdf  addli r1, r30, -4224
000388  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00038c  9f000fe2  addli r1, r30, -3840
000390  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000394  9f008fde  addli r1, r30, -4288
000398  1610b002  vadd.f.mz.rn vr0{mr1}, vr0, vr11
00039c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003a0  9f008fe2  addli r1, r30, -3776
0003a4  16909102  vadd.f.mz.rn vr0{mr1}, vr3, vr9
0003a8  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0003ac  9f000fde  addli r1, r30, -4352
0003b0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003b4  9f000fe3  addli r1, r30, -3712
0003b8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0003bc  9f008fdd  addli r1, r30, -4416
0003c0  1690b002  vadd.f.mz.rn vr0{mr1}, vr1, vr11
0003c4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003c8  9f008fe3  addli r1, r30, -3648
0003cc  16103502  vadd.f.mz.rn vr0{mr1}, vr10, vr3
0003d0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0003d4  9f000fdd  addli r1, r30, -4480
0003d8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003dc  9f000ff5  addli r1, r30, -1408
0003e0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0003e4  9f008fdc  addli r1, r30, -4544
0003e8  16901302  vadd.f.mz.rn vr0{mr1}, vr7, vr1
0003ec  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003f0  9f000fe4  addli r1, r30, -3584
0003f4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0003f8  9f008fe4  addli r1, r30, -3520
0003fc  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000400  9f000fe5  addli r1, r30, -3456
000404  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000408  9f000fdc  addli r1, r30, -4608
00040c  16101402  vadd.f.mz.rn vr0{mr1}, vr8, vr1
000410  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000414  16107302  vadd.f.mz.rn vr0{mr1}, vr6, vr7
000418  9f008fdb  addli r1, r30, -4672
00041c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000420  1690a102  vadd.f.mz.rn vr0{mr1}, vr3, vr10
000424  9f000fdb  addli r1, r30, -4736
000428  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00042c  9f008ff5  addli r1, r30, -1344
000430  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000434  9f000ff6  addli r1, r30, -1280
000438  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00043c  9f008ff6  addli r1, r30, -1216
000440  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000444  9f008fe5  addli r1, r30, -3392
000448  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00044c  9f000fe6  addli r1, r30, -3328
000450  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000454  9f008fe6  addli r1, r30, -3264
000458  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00045c  9f000fda  addli r1, r30, -4864
000460  16903002  vadd.f.mz.rn vr0{mr1}, vr1, vr3
000464  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000468  16906302  vadd.f.mz.rn vr0{mr1}, vr7, vr6
00046c  9f000fd9  addli r1, r30, -4992
000470  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000474  16108502  vadd.f.mz.rn vr0{mr1}, vr10, vr8
000478  9f000fd8  addli r1, r30, -5120
00047c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000480  9f000ff7  addli r1, r30, -1152
000484  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000488  9f008ff7  addli r1, r30, -1088
00048c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000490  9f000fe7  addli r1, r30, -3200
000494  42130f82  vload_mask16.mz vr6{mr1}, 1024(r30)
000498  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00049c  9f008fe7  addli r1, r30, -3136
0004a0  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0004a4  9f000fe8  addli r1, r30, -3072
0004a8  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0004ac  9f000fd7  addli r1, r30, -5248
0004b0  16907002  vadd.f.mz.rn vr0{mr1}, vr1, vr7
0004b4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004b8  16908102  vadd.f.mz.rn vr0{mr1}, vr3, vr8
0004bc  9f000fd6  addli r1, r30, -5376
0004c0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004c4  1610a302  vadd.f.mz.rn vr0{mr1}, vr6, vr10
0004c8  9f008fd5  addli r1, r30, -5440
0004cc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004d0  9f008fe8  addli r1, r30, -3008
0004d4  c2108f82  vload_mask16.mz vr1{mr1}, 1088(r30)
0004d8  c2110f83  vload_mask16.mz vr3{mr1}, 1152(r30)
0004dc  42138f83  vload_mask16.mz vr6{mr1}, 1216(r30)
0004e0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0004e4  9f000fe9  addli r1, r30, -2944
0004e8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0004ec  9f008fe9  addli r1, r30, -2880
0004f0  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0004f4  9f000fd5  addli r1, r30, -5504
0004f8  16907002  vadd.f.mz.rn vr0{mr1}, vr1, vr7
0004fc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000500  16908102  vadd.f.mz.rn vr0{mr1}, vr3, vr8
000504  9f008fd6  addli r1, r30, -5312
000508  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00050c  1610a302  vadd.f.mz.rn vr0{mr1}, vr6, vr10
000510  9f008fd7  addli r1, r30, -5184
000514  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000518  9f000fea  addli r1, r30, -2816
00051c  c2100fa2  vload_mask16.mz vr1{mr1}, 1280(r30)
000520  c2118fa2  vload_mask16.mz vr3{mr1}, 1344(r30)
000524  42130fa3  vload_mask16.mz vr6{mr1}, 1408(r30)
000528  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00052c  9f008fea  addli r1, r30, -2752
000530  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000534  9f000feb  addli r1, r30, -2688
000538  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00053c  9f008fd8  addli r1, r30, -5056
000540  16907002  vadd.f.mz.rn vr0{mr1}, vr1, vr7
000544  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000548  16908102  vadd.f.mz.rn vr0{mr1}, vr3, vr8
00054c  9f008fd9  addli r1, r30, -4928
000550  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000554  1610a302  vadd.f.mz.rn vr0{mr1}, vr6, vr10
000558  9f008fda  addli r1, r30, -4800
00055c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000560  9f008feb  addli r1, r30, -2624
000564  c2108fa3  vload_mask16.mz vr1{mr1}, 1472(r30)
000568  c2110fc2  vload_mask16.mz vr3{mr1}, 1536(r30)
00056c  42138fc2  vload_mask16.mz vr6{mr1}, 1600(r30)
000570  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000574  9f000fec  addli r1, r30, -2560
000578  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00057c  9f008fec  addli r1, r30, -2496
000580  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000584  9f000fed  addli r1, r30, -2432
000588  16917002  vadd.f.mz.rn vr2{mr1}, vr1, vr7
00058c  c2100fc3  vload_mask16.mz vr1{mr1}, 1664(r30)
000590  16928102  vadd.f.mz.rn vr4{mr1}, vr3, vr8
000594  c2118fc3  vload_mask16.mz vr3{mr1}, 1728(r30)
000598  9612a302  vadd.f.mz.rn vr5{mr1}, vr6, vr10
00059c  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
0005a0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0005a4  9f008fed  addli r1, r30, -2368
0005a8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0005ac  9f000fee  addli r1, r30, -2304
0005b0  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0005b4  9f008fee  addli r1, r30, -2240
0005b8  16907002  vadd.f.mz.rn vr0{mr1}, vr1, vr7
0005bc  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
0005c0  96948102  vadd.f.mz.rn vr9{mr1}, vr3, vr8
0005c4  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
0005c8  9615a302  vadd.f.mz.rn vr11{mr1}, vr6, vr10
0005cc  42138fe3  vload_mask16.mz vr6{mr1}, 1984(r30)
0005d0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0005d4  9f000fef  addli r1, r30, -2176
0005d8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0005dc  9f008fef  addli r1, r30, -2112
0005e0  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0005e4  9f008fdf  addli r1, r30, -4160
0005e8  96937002  vadd.f.mz.rn vr7{mr1}, vr1, vr7
0005ec  16948102  vadd.f.mz.rn vr8{mr1}, vr3, vr8
0005f0  9611a302  vadd.f.mz.rn vr3{mr1}, vr6, vr10
0005f4  12339002  vadd.s.mz vr6{mr1}, zero, vr9
0005f8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0005fc  9f008fd0  addli r1, r30, -6080
000600  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000604  9f000fdf  addli r1, r30, -4224
000608  12351002  vadd.s.mz vr10{mr1}, zero, vr1
00060c  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
000610  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000614  9f008fde  addli r1, r30, -4288
000618  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
00061c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000620  9f000fde  addli r1, r30, -4352
000624  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
000628  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00062c  9f008fdd  addli r1, r30, -4416
000630  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
000634  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000638  9f000fdd  addli r1, r30, -4480
00063c  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
000640  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000644  9f008fdc  addli r1, r30, -4544
000648  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
00064c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000650  9f000fdc  addli r1, r30, -4608
000654  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
000658  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00065c  9f008fdb  addli r1, r30, -4672
000660  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
000664  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000668  9f000fdb  addli r1, r30, -4736
00066c  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
000670  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000674  9f000fda  addli r1, r30, -4864
000678  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
00067c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000680  9f000fd9  addli r1, r30, -4992
000684  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
000688  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00068c  9f000fd8  addli r1, r30, -5120
000690  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
000694  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000698  9f000fd7  addli r1, r30, -5248
00069c  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
0006a0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0006a4  9f000fd6  addli r1, r30, -5376
0006a8  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
0006ac  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0006b0  9f008fd5  addli r1, r30, -5440
0006b4  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
0006b8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0006bc  9f000fd5  addli r1, r30, -5504
0006c0  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
0006c4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0006c8  9f008fd6  addli r1, r30, -5312
0006cc  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
0006d0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0006d4  9f008fd7  addli r1, r30, -5184
0006d8  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
0006dc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0006e0  9f008fd8  addli r1, r30, -5056
0006e4  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
0006e8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0006ec  9f008fd9  addli r1, r30, -4928
0006f0  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
0006f4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0006f8  9f008fda  addli r1, r30, -4800
0006fc  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
000700  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000704  9f000fd2  addli r1, r30, -5888
000708  b6909002  vmax.f.mz vr1{mr1}, vr1, vr9
00070c  b6902002  vmax.f.mz vr1{mr1}, vr1, vr2
000710  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000714  9f008fd2  addli r1, r30, -5824
000718  b6904002  vmax.f.mz vr1{mr1}, vr1, vr4
00071c  b6905002  vmax.f.mz vr1{mr1}, vr1, vr5
000720  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000724  9f000fd3  addli r1, r30, -5760
000728  b6900002  vmax.f.mz vr1{mr1}, vr1, vr0
00072c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000730  b6906002  vmax.f.mz vr1{mr1}, vr1, vr6
000734  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000738  9f000fd1  addli r1, r30, -6016
00073c  b690b002  vmax.f.mz vr1{mr1}, vr1, vr11
000740  b6907002  vmax.f.mz vr1{mr1}, vr1, vr7
000744  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000748  9f008fd3  addli r1, r30, -5696
00074c  b6908002  vmax.f.mz vr1{mr1}, vr1, vr8
000750  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
000754  7a911040  vextracti.f r2, 1(vr1)
000758  7a982040  vextracti.f r16, 2(vr1)
00075c  fa983040  vextracti.f r17, 3(vr1)
000760  7a9a4040  vextracti.f r20, 4(vr1)
000764  fa9a5040  vextracti.f r21, 5(vr1)
000768  7a9b6040  vextracti.f r22, 6(vr1)
00076c  fa9c7040  vextracti.f r25, 7(vr1)
000770  7a9d8040  vextracti.f r26, 8(vr1)
000774  fa9b9040  vextracti.f r23, 9(vr1)
000778  fa9da040  vextracti.f r27, 10(vr1)
00077c  7a9eb040  vextracti.f r28, 11(vr1)
000780  fa95c040  vextracti.f r11, 12(vr1)
000784  7a96d040  vextracti.f r12, 13(vr1)
000788  7a94e040  vextracti.f r8, 14(vr1)
00078c  7a97f040  vextracti.f r14, 15(vr1)
000790  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000794  9f000fd4  addli r1, r30, -5632
000798  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
00079c  9f008fd1  addli r1, r30, -5952
0007a0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0007a4  9f008fd4  addli r1, r30, -5568
0007a8  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0007ac  fa900040  vextracti.f r1, 0(vr1)
0007b0  8be02048  max.f r1, r1, r2
0007b4  8be00049  max.f r1, r1, r16
0007b8  8be01049  max.f r1, r1, r17
0007bc  8be04049  max.f r1, r1, r20
0007c0  8be05049  max.f r1, r1, r21
0007c4  8be06049  max.f r1, r1, r22
0007c8  8be09049  max.f r1, r1, r25
0007cc  8be0a049  max.f r1, r1, r26
0007d0  8be07049  max.f r1, r1, r23
0007d4  8be0b049  max.f r1, r1, r27
0007d8  8be0c049  max.f r1, r1, r28
0007dc  8be0b048  max.f r1, r1, r11
0007e0  8be0c048  max.f r1, r1, r12
0007e4  8be08048  max.f r1, r1, r8
0007e8  8be0e048  max.f r1, r1, r14
0007ec  73e01200  stores.w r1, 0(r5)
0007f0  00a00300  mfence { lm, sm, gm }
0007f4  80210204  csr_set csr3, r4
0007f8  00d00100  sync_group
0007fc  bb900600  bneq r13, zero, 36
000800  efc00400  loads.w r1, 0(r9)
000804  6fc14400  loads.w r2, 4(r9)
000808  6fc48400  loads.w r8, 8(r9)
00080c  efc5c400  loads.w r11, 12(r9)
000810  8be02048  max.f r1, r1, r2
000814  8be08048  max.f r1, r1, r8
000818  8be0b048  max.f r1, r1, r11
00081c  73e01400  stores.w r1, 0(r9)
000820  00a00300  mfence { lm, sm, gm }
000824  80210204  csr_set csr3, r4
000828  00d00100  sync_group
00082c  efc00400  loads.w r1, 0(r9)
000830  2b010080  lui r2, 524288
000834  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000838  1f160000  addli r12, zero, 1
00083c  1f070020  addli r14, zero, 4096
000840  1f080010  addli r16, zero, 2048
000844  9f080040  addli r17, zero, 8192
000848  12331002  vadd.s.mz vr6{mr1}, zero, vr1
00084c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000850  7e0106e0  vmmov mr2, r12
000854  1f260000  addli r12, zero, 2
000858  fe0106e0  vmmov mr3, r12
00085c  1f460000  addli r12, zero, 4
000860  7e0006e0  vmmov mr0, r12
000864  1f061000  addli r12, zero, 8
000868  97a02000  xor r1, r1, r2
00086c  1291a002  vadd.f.mz.rn vr2{mr1}, r1, vr10
000870  7a110140  vextracti.f r2, 0(vr2)
000874  7a141140  vextracti.f r8, 1(vr2)
000878  fa152140  vextracti.f r11, 2(vr2)
00087c  0f010100  exp.f.rn r2, r2
000880  0f040400  exp.f.rn r8, r8
000884  6a236134  vor.u.mh vr6{mr2}, r2, vr6
000888  0f810500  exp.f.rn r2, r11
00088c  fa153140  vextracti.f r11, 3(vr2)
000890  6a236436  vor.u.mh vr6{mr3}, r8, vr6
000894  0f840500  exp.f.rn r8, r11
000898  fa154140  vextracti.f r11, 4(vr2)
00089c  6a236130  vor.u.mh vr6{mr0}, r2, vr6
0008a0  0f810500  exp.f.rn r2, r11
0008a4  fa155140  vextracti.f r11, 5(vr2)
0008a8  7e0006e0  vmmov mr0, r12
0008ac  1f062000  addli r12, zero, 16
0008b0  6a236430  vor.u.mh vr6{mr0}, r8, vr6
0008b4  0f840500  exp.f.rn r8, r11
0008b8  fa156140  vextracti.f r11, 6(vr2)
0008bc  7e0006e0  vmmov mr0, r12
0008c0  1f064000  addli r12, zero, 32
0008c4  6a236130  vor.u.mh vr6{mr0}, r2, vr6
0008c8  0f810500  exp.f.rn r2, r11
0008cc  fa157140  vextracti.f r11, 7(vr2)
0008d0  7e0006e0  vmmov mr0, r12
0008d4  1f068000  addli r12, zero, 64
0008d8  6a236430  vor.u.mh vr6{mr0}, r8, vr6
0008dc  0f840500  exp.f.rn r8, r11
0008e0  fa158140  vextracti.f r11, 8(vr2)
0008e4  7e0006e0  vmmov mr0, r12
0008e8  1f060001  addli r12, zero, 128
0008ec  6a236130  vor.u.mh vr6{mr0}, r2, vr6
0008f0  0f810500  exp.f.rn r2, r11
0008f4  fa159140  vextracti.f r11, 9(vr2)
0008f8  7e0006e0  vmmov mr0, r12
0008fc  1f060002  addli r12, zero, 256
000900  6a236430  vor.u.mh vr6{mr0}, r8, vr6
000904  0f840500  exp.f.rn r8, r11
000908  fa15a140  vextracti.f r11, 10(vr2)
00090c  7e0006e0  vmmov mr0, r12
000910  1f060004  addli r12, zero, 512
000914  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000918  0f810500  exp.f.rn r2, r11
00091c  fa15b140  vextracti.f r11, 11(vr2)
000920  7e0006e0  vmmov mr0, r12
000924  1f060008  addli r12, zero, 1024
000928  6a236430  vor.u.mh vr6{mr0}, r8, vr6
00092c  0f840500  exp.f.rn r8, r11
000930  fa15c140  vextracti.f r11, 12(vr2)
000934  7e0006e0  vmmov mr0, r12
000938  1f060010  addli r12, zero, 2048
00093c  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000940  0f810500  exp.f.rn r2, r11
000944  fa15d140  vextracti.f r11, 13(vr2)
000948  7e0006e0  vmmov mr0, r12
00094c  7a16f140  vextracti.f r12, 15(vr2)
000950  6a236430  vor.u.mh vr6{mr0}, r8, vr6
000954  0f840500  exp.f.rn r8, r11
000958  fa15e140  vextracti.f r11, 14(vr2)
00095c  7e0007e0  vmmov mr0, r14
000960  1f070040  addli r14, zero, 8192
000964  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000968  0f810500  exp.f.rn r2, r11
00096c  9f058fdf  addli r11, r30, -4160
000970  7e0007e0  vmmov mr0, r14
000974  2b470000  lui r14, 4
000978  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
00097c  12910002  vadd.f.mz.rn vr2{mr1}, r1, vr0
000980  fa150140  vextracti.f r11, 0(vr2)
000984  6a236430  vor.u.mh vr6{mr0}, r8, vr6
000988  0f040600  exp.f.rn r8, r12
00098c  7e0007e0  vmmov mr0, r14
000990  2b870000  lui r14, 8
000994  7a161140  vextracti.f r12, 1(vr2)
000998  8f850500  exp.f.rn r11, r11
00099c  6a236130  vor.u.mh vr6{mr0}, r2, vr6
0009a0  7e0007e0  vmmov mr0, r14
0009a4  0f010600  exp.f.rn r2, r12
0009a8  7a162140  vextracti.f r12, 2(vr2)
0009ac  1f070020  addli r14, zero, 4096
0009b0  6a236430  vor.u.mh vr6{mr0}, r8, vr6
0009b4  1f048fdf  addli r8, r30, -4160
0009b8  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
0009bc  eaa01534  vor.u.mh vr1{mr2}, r11, vr1
0009c0  0f040600  exp.f.rn r8, r12
0009c4  fa153140  vextracti.f r11, 3(vr2)
0009c8  1f460000  addli r12, zero, 4
0009cc  12333002  vadd.s.mz vr6{mr1}, zero, vr3
0009d0  7e0006e0  vmmov mr0, r12
0009d4  1f061000  addli r12, zero, 8
0009d8  ea201136  vor.u.mh vr1{mr3}, r2, vr1
0009dc  0f810500  exp.f.rn r2, r11
0009e0  fa154140  vextracti.f r11, 4(vr2)
0009e4  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0009e8  0f840500  exp.f.rn r8, r11
0009ec  fa155140  vextracti.f r11, 5(vr2)
0009f0  7e0006e0  vmmov mr0, r12
0009f4  1f062000  addli r12, zero, 16
0009f8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0009fc  0f810500  exp.f.rn r2, r11
000a00  fa156140  vextracti.f r11, 6(vr2)
000a04  7e0006e0  vmmov mr0, r12
000a08  1f064000  addli r12, zero, 32
000a0c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000a10  0f840500  exp.f.rn r8, r11
000a14  fa157140  vextracti.f r11, 7(vr2)
000a18  7e0006e0  vmmov mr0, r12
000a1c  1f068000  addli r12, zero, 64
000a20  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000a24  0f810500  exp.f.rn r2, r11
000a28  fa158140  vextracti.f r11, 8(vr2)
000a2c  7e0006e0  vmmov mr0, r12
000a30  1f060001  addli r12, zero, 128
000a34  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000a38  0f840500  exp.f.rn r8, r11
000a3c  fa159140  vextracti.f r11, 9(vr2)
000a40  7e0006e0  vmmov mr0, r12
000a44  1f060002  addli r12, zero, 256
000a48  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000a4c  0f810500  exp.f.rn r2, r11
000a50  fa15a140  vextracti.f r11, 10(vr2)
000a54  7e0006e0  vmmov mr0, r12
000a58  1f060004  addli r12, zero, 512
000a5c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000a60  0f840500  exp.f.rn r8, r11
000a64  fa15b140  vextracti.f r11, 11(vr2)
000a68  7e0006e0  vmmov mr0, r12
000a6c  1f060008  addli r12, zero, 1024
000a70  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000a74  0f810500  exp.f.rn r2, r11
000a78  fa15c140  vextracti.f r11, 12(vr2)
000a7c  7e0006e0  vmmov mr0, r12
000a80  1f060010  addli r12, zero, 2048
000a84  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000a88  0f840500  exp.f.rn r8, r11
000a8c  fa15d140  vextracti.f r11, 13(vr2)
000a90  7e0006e0  vmmov mr0, r12
000a94  7a16f140  vextracti.f r12, 15(vr2)
000a98  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000a9c  0f810500  exp.f.rn r2, r11
000aa0  fa15e140  vextracti.f r11, 14(vr2)
000aa4  7e0007e0  vmmov mr0, r14
000aa8  1f070040  addli r14, zero, 8192
000aac  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000ab0  0f840500  exp.f.rn r8, r11
000ab4  9f050fdf  addli r11, r30, -4224
000ab8  7e0007e0  vmmov mr0, r14
000abc  2b470000  lui r14, 4
000ac0  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
000ac4  12910002  vadd.f.mz.rn vr2{mr1}, r1, vr0
000ac8  fa150140  vextracti.f r11, 0(vr2)
000acc  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000ad0  0f010600  exp.f.rn r2, r12
000ad4  7e0007e0  vmmov mr0, r14
000ad8  2b870000  lui r14, 8
000adc  7a161140  vextracti.f r12, 1(vr2)
000ae0  8f850500  exp.f.rn r11, r11
000ae4  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000ae8  7e0007e0  vmmov mr0, r14
000aec  0f040600  exp.f.rn r8, r12
000af0  7a162140  vextracti.f r12, 2(vr2)
000af4  1f070020  addli r14, zero, 4096
000af8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000afc  1f010fdf  addli r2, r30, -4224
000b00  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000b04  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000b08  0f010600  exp.f.rn r2, r12
000b0c  1f460000  addli r12, zero, 4
000b10  7e0006e0  vmmov mr0, r12
000b14  1f061000  addli r12, zero, 8
000b18  eaa01534  vor.u.mh vr1{mr2}, r11, vr1
000b1c  fa153140  vextracti.f r11, 3(vr2)
000b20  7e0106e0  vmmov mr2, r12
000b24  1f062000  addli r12, zero, 16
000b28  ea201436  vor.u.mh vr1{mr3}, r8, vr1
000b2c  0f840500  exp.f.rn r8, r11
000b30  fa154140  vextracti.f r11, 4(vr2)
000b34  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000b38  0f810500  exp.f.rn r2, r11
000b3c  fa155140  vextracti.f r11, 5(vr2)
000b40  ea201434  vor.u.mh vr1{mr2}, r8, vr1
000b44  0f840500  exp.f.rn r8, r11
000b48  fa156140  vextracti.f r11, 6(vr2)
000b4c  7e0106e0  vmmov mr2, r12
000b50  1f064000  addli r12, zero, 32
000b54  7e0006e0  vmmov mr0, r12
000b58  1f068000  addli r12, zero, 64
000b5c  ea201134  vor.u.mh vr1{mr2}, r2, vr1
000b60  0f810500  exp.f.rn r2, r11
000b64  fa157140  vextracti.f r11, 7(vr2)
000b68  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000b6c  0f840500  exp.f.rn r8, r11
000b70  fa158140  vextracti.f r11, 8(vr2)
000b74  7e0006e0  vmmov mr0, r12
000b78  1f060001  addli r12, zero, 128
000b7c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000b80  0f810500  exp.f.rn r2, r11
000b84  fa159140  vextracti.f r11, 9(vr2)
000b88  7e0006e0  vmmov mr0, r12
000b8c  1f060002  addli r12, zero, 256
000b90  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000b94  0f840500  exp.f.rn r8, r11
000b98  fa15a140  vextracti.f r11, 10(vr2)
000b9c  7e0006e0  vmmov mr0, r12
000ba0  1f060004  addli r12, zero, 512
000ba4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000ba8  0f810500  exp.f.rn r2, r11
000bac  fa15b140  vextracti.f r11, 11(vr2)
000bb0  7e0006e0  vmmov mr0, r12
000bb4  1f060008  addli r12, zero, 1024
000bb8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000bbc  0f840500  exp.f.rn r8, r11
000bc0  fa15c140  vextracti.f r11, 12(vr2)
000bc4  7e0006e0  vmmov mr0, r12
000bc8  1f060010  addli r12, zero, 2048
000bcc  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000bd0  0f810500  exp.f.rn r2, r11
000bd4  fa15d140  vextracti.f r11, 13(vr2)
000bd8  7e0006e0  vmmov mr0, r12
000bdc  7a16f140  vextracti.f r12, 15(vr2)
000be0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000be4  0f840500  exp.f.rn r8, r11
000be8  fa15e140  vextracti.f r11, 14(vr2)
000bec  7e0007e0  vmmov mr0, r14
000bf0  1f070040  addli r14, zero, 8192
000bf4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000bf8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000bfc  0f810500  exp.f.rn r2, r11
000c00  9f058fde  addli r11, r30, -4288
000c04  7e0007e0  vmmov mr0, r14
000c08  2b470000  lui r14, 4
000c0c  92322002  vadd.s.mz vr5{mr1}, zero, vr2
000c10  92332002  vadd.s.mz vr7{mr1}, zero, vr2
000c14  92342002  vadd.s.mz vr9{mr1}, zero, vr2
000c18  92352002  vadd.s.mz vr11{mr1}, zero, vr2
000c1c  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
000c20  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000c24  fa150040  vextracti.f r11, 0(vr0)
000c28  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000c2c  0f040600  exp.f.rn r8, r12
000c30  7e0007e0  vmmov mr0, r14
000c34  2b870000  lui r14, 8
000c38  7a161040  vextracti.f r12, 1(vr0)
000c3c  8f850500  exp.f.rn r11, r11
000c40  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000c44  7e0007e0  vmmov mr0, r14
000c48  0f010600  exp.f.rn r2, r12
000c4c  7a162040  vextracti.f r12, 2(vr0)
000c50  1f070020  addli r14, zero, 4096
000c54  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000c58  1f048fde  addli r8, r30, -4288
000c5c  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
000c60  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000c64  1f140000  addli r8, zero, 1
000c68  7e0004e0  vmmov mr0, r8
000c6c  0f040600  exp.f.rn r8, r12
000c70  1f460000  addli r12, zero, 4
000c74  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
000c78  fa153040  vextracti.f r11, 3(vr0)
000c7c  7e0006e0  vmmov mr0, r12
000c80  1f061000  addli r12, zero, 8
000c84  ea201136  vor.u.mh vr1{mr3}, r2, vr1
000c88  0f810500  exp.f.rn r2, r11
000c8c  fa154040  vextracti.f r11, 4(vr0)
000c90  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000c94  0f840500  exp.f.rn r8, r11
000c98  fa155040  vextracti.f r11, 5(vr0)
000c9c  7e0006e0  vmmov mr0, r12
000ca0  1f064000  addli r12, zero, 32
000ca4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000ca8  0f810500  exp.f.rn r2, r11
000cac  fa156040  vextracti.f r11, 6(vr0)
000cb0  7e0006e0  vmmov mr0, r12
000cb4  1f068000  addli r12, zero, 64
000cb8  ea201434  vor.u.mh vr1{mr2}, r8, vr1
000cbc  0f840500  exp.f.rn r8, r11
000cc0  fa157040  vextracti.f r11, 7(vr0)
000cc4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000cc8  0f810500  exp.f.rn r2, r11
000ccc  fa158040  vextracti.f r11, 8(vr0)
000cd0  7e0006e0  vmmov mr0, r12
000cd4  1f060001  addli r12, zero, 128
000cd8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000cdc  0f840500  exp.f.rn r8, r11
000ce0  fa159040  vextracti.f r11, 9(vr0)
000ce4  7e0006e0  vmmov mr0, r12
000ce8  1f060002  addli r12, zero, 256
000cec  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000cf0  0f810500  exp.f.rn r2, r11
000cf4  fa15a040  vextracti.f r11, 10(vr0)
000cf8  7e0006e0  vmmov mr0, r12
000cfc  1f060004  addli r12, zero, 512
000d00  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000d04  0f840500  exp.f.rn r8, r11
000d08  fa15b040  vextracti.f r11, 11(vr0)
000d0c  7e0006e0  vmmov mr0, r12
000d10  1f060008  addli r12, zero, 1024
000d14  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000d18  0f810500  exp.f.rn r2, r11
000d1c  fa15c040  vextracti.f r11, 12(vr0)
000d20  7e0006e0  vmmov mr0, r12
000d24  1f060010  addli r12, zero, 2048
000d28  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000d2c  0f840500  exp.f.rn r8, r11
000d30  fa15d040  vextracti.f r11, 13(vr0)
000d34  7e0006e0  vmmov mr0, r12
000d38  7a16f040  vextracti.f r12, 15(vr0)
000d3c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000d40  0f810500  exp.f.rn r2, r11
000d44  fa15e040  vextracti.f r11, 14(vr0)
000d48  7e0007e0  vmmov mr0, r14
000d4c  1f070040  addli r14, zero, 8192
000d50  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000d54  0f840500  exp.f.rn r8, r11
000d58  9f050fde  addli r11, r30, -4352
000d5c  7e0007e0  vmmov mr0, r14
000d60  2b470000  lui r14, 4
000d64  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
000d68  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000d6c  fa150040  vextracti.f r11, 0(vr0)
000d70  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000d74  0f010600  exp.f.rn r2, r12
000d78  7e0007e0  vmmov mr0, r14
000d7c  2b870000  lui r14, 8
000d80  7a161040  vextracti.f r12, 1(vr0)
000d84  fe0107e0  vmmov mr3, r14
000d88  8f850500  exp.f.rn r11, r11
000d8c  1f070020  addli r14, zero, 4096
000d90  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000d94  0f040600  exp.f.rn r8, r12
000d98  7a162040  vextracti.f r12, 2(vr0)
000d9c  ea201136  vor.u.mh vr1{mr3}, r2, vr1
000da0  1f010fde  addli r2, r30, -4352
000da4  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000da8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000dac  1f110000  addli r2, zero, 1
000db0  7e0001e0  vmmov mr0, r2
000db4  0f010600  exp.f.rn r2, r12
000db8  1f260000  addli r12, zero, 2
000dbc  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
000dc0  fa153040  vextracti.f r11, 3(vr0)
000dc4  7e0006e0  vmmov mr0, r12
000dc8  1f460000  addli r12, zero, 4
000dcc  7e0106e0  vmmov mr2, r12
000dd0  1f061000  addli r12, zero, 8
000dd4  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000dd8  0f840500  exp.f.rn r8, r11
000ddc  fa154040  vextracti.f r11, 4(vr0)
000de0  7e0001c0  vmmov mr0, mr2
000de4  7e0106e0  vmmov mr2, r12
000de8  1f062000  addli r12, zero, 16
000dec  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000df0  0f810500  exp.f.rn r2, r11
000df4  fa155040  vextracti.f r11, 5(vr0)
000df8  7e0006e0  vmmov mr0, r12
000dfc  1f064000  addli r12, zero, 32
000e00  ea201434  vor.u.mh vr1{mr2}, r8, vr1
000e04  0f840500  exp.f.rn r8, r11
000e08  fa156040  vextracti.f r11, 6(vr0)
000e0c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000e10  0f810500  exp.f.rn r2, r11
000e14  fa157040  vextracti.f r11, 7(vr0)
000e18  7e0006e0  vmmov mr0, r12
000e1c  1f068000  addli r12, zero, 64
000e20  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000e24  0f840500  exp.f.rn r8, r11
000e28  fa158040  vextracti.f r11, 8(vr0)
000e2c  7e0006e0  vmmov mr0, r12
000e30  1f060001  addli r12, zero, 128
000e34  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000e38  0f810500  exp.f.rn r2, r11
000e3c  fa159040  vextracti.f r11, 9(vr0)
000e40  7e0006e0  vmmov mr0, r12
000e44  1f060002  addli r12, zero, 256
000e48  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000e4c  0f840500  exp.f.rn r8, r11
000e50  fa15a040  vextracti.f r11, 10(vr0)
000e54  7e0006e0  vmmov mr0, r12
000e58  1f060004  addli r12, zero, 512
000e5c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000e60  0f810500  exp.f.rn r2, r11
000e64  fa15b040  vextracti.f r11, 11(vr0)
000e68  7e0006e0  vmmov mr0, r12
000e6c  1f060008  addli r12, zero, 1024
000e70  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000e74  0f840500  exp.f.rn r8, r11
000e78  fa15c040  vextracti.f r11, 12(vr0)
000e7c  7e0006e0  vmmov mr0, r12
000e80  1f060010  addli r12, zero, 2048
000e84  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000e88  0f810500  exp.f.rn r2, r11
000e8c  fa15d040  vextracti.f r11, 13(vr0)
000e90  7e0006e0  vmmov mr0, r12
000e94  7a16f040  vextracti.f r12, 15(vr0)
000e98  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000e9c  0f840500  exp.f.rn r8, r11
000ea0  fa15e040  vextracti.f r11, 14(vr0)
000ea4  7e0007e0  vmmov mr0, r14
000ea8  1f070040  addli r14, zero, 8192
000eac  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000eb0  0f810500  exp.f.rn r2, r11
000eb4  9f058fdd  addli r11, r30, -4416
000eb8  7e0007e0  vmmov mr0, r14
000ebc  2b470000  lui r14, 4
000ec0  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
000ec4  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000ec8  fa150040  vextracti.f r11, 0(vr0)
000ecc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000ed0  0f040600  exp.f.rn r8, r12
000ed4  7e0007e0  vmmov mr0, r14
000ed8  7a161040  vextracti.f r12, 1(vr0)
000edc  1f070020  addli r14, zero, 4096
000ee0  8f850500  exp.f.rn r11, r11
000ee4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000ee8  0f010600  exp.f.rn r2, r12
000eec  7a162040  vextracti.f r12, 2(vr0)
000ef0  ea201436  vor.u.mh vr1{mr3}, r8, vr1
000ef4  1f048fdd  addli r8, r30, -4416
000ef8  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
000efc  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000f00  1f140000  addli r8, zero, 1
000f04  7e0004e0  vmmov mr0, r8
000f08  0f040600  exp.f.rn r8, r12
000f0c  1f260000  addli r12, zero, 2
000f10  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
000f14  fa153040  vextracti.f r11, 3(vr0)
000f18  fe0106e0  vmmov mr3, r12
000f1c  1f460000  addli r12, zero, 4
000f20  7e0006e0  vmmov mr0, r12
000f24  1f062000  addli r12, zero, 16
000f28  ea201136  vor.u.mh vr1{mr3}, r2, vr1
000f2c  0f810500  exp.f.rn r2, r11
000f30  fa154040  vextracti.f r11, 4(vr0)
000f34  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000f38  0f840500  exp.f.rn r8, r11
000f3c  fa155040  vextracti.f r11, 5(vr0)
000f40  ea201134  vor.u.mh vr1{mr2}, r2, vr1
000f44  0f810500  exp.f.rn r2, r11
000f48  7e0106e0  vmmov mr2, r12
000f4c  fa156040  vextracti.f r11, 6(vr0)
000f50  1f064000  addli r12, zero, 32
000f54  7e0001c0  vmmov mr0, mr2
000f58  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000f5c  0f840500  exp.f.rn r8, r11
000f60  fa157040  vextracti.f r11, 7(vr0)
000f64  7e0006e0  vmmov mr0, r12
000f68  1f068000  addli r12, zero, 64
000f6c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000f70  0f810500  exp.f.rn r2, r11
000f74  fa158040  vextracti.f r11, 8(vr0)
000f78  7e0006e0  vmmov mr0, r12
000f7c  1f060001  addli r12, zero, 128
000f80  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000f84  0f840500  exp.f.rn r8, r11
000f88  fa159040  vextracti.f r11, 9(vr0)
000f8c  7e0006e0  vmmov mr0, r12
000f90  1f060002  addli r12, zero, 256
000f94  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000f98  0f810500  exp.f.rn r2, r11
000f9c  fa15a040  vextracti.f r11, 10(vr0)
000fa0  7e0006e0  vmmov mr0, r12
000fa4  1f060004  addli r12, zero, 512
000fa8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000fac  0f840500  exp.f.rn r8, r11
000fb0  fa15b040  vextracti.f r11, 11(vr0)
000fb4  7e0006e0  vmmov mr0, r12
000fb8  1f060008  addli r12, zero, 1024
000fbc  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000fc0  0f810500  exp.f.rn r2, r11
000fc4  fa15c040  vextracti.f r11, 12(vr0)
000fc8  7e0006e0  vmmov mr0, r12
000fcc  1f060010  addli r12, zero, 2048
000fd0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000fd4  0f840500  exp.f.rn r8, r11
000fd8  fa15d040  vextracti.f r11, 13(vr0)
000fdc  7e0006e0  vmmov mr0, r12
000fe0  7a16f040  vextracti.f r12, 15(vr0)
000fe4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000fe8  0f810500  exp.f.rn r2, r11
000fec  fa15e040  vextracti.f r11, 14(vr0)
000ff0  7e0007e0  vmmov mr0, r14
000ff4  1f070040  addli r14, zero, 8192
000ff8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
000ffc  0f840500  exp.f.rn r8, r11
001000  9f050fdd  addli r11, r30, -4480
001004  7e0007e0  vmmov mr0, r14
001008  2b470000  lui r14, 4
00100c  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001010  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
001014  fa150040  vextracti.f r11, 0(vr0)
001018  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00101c  0f010600  exp.f.rn r2, r12
001020  7e0007e0  vmmov mr0, r14
001024  2b870000  lui r14, 8
001028  7a161040  vextracti.f r12, 1(vr0)
00102c  7e0107e0  vmmov mr2, r14
001030  8f850500  exp.f.rn r11, r11
001034  1f070020  addli r14, zero, 4096
001038  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00103c  0f040600  exp.f.rn r8, r12
001040  7a162040  vextracti.f r12, 2(vr0)
001044  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001048  1f010fdd  addli r2, r30, -4480
00104c  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
001050  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001054  1f110000  addli r2, zero, 1
001058  7e0001e0  vmmov mr0, r2
00105c  0f010600  exp.f.rn r2, r12
001060  1f460000  addli r12, zero, 4
001064  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
001068  fa153040  vextracti.f r11, 3(vr0)
00106c  7e0006e0  vmmov mr0, r12
001070  1f061000  addli r12, zero, 8
001074  ea201436  vor.u.mh vr1{mr3}, r8, vr1
001078  0f840500  exp.f.rn r8, r11
00107c  fa154040  vextracti.f r11, 4(vr0)
001080  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001084  0f810500  exp.f.rn r2, r11
001088  fa155040  vextracti.f r11, 5(vr0)
00108c  7e0006e0  vmmov mr0, r12
001090  1f062000  addli r12, zero, 16
001094  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001098  0f840500  exp.f.rn r8, r11
00109c  fa156040  vextracti.f r11, 6(vr0)
0010a0  7e0006e0  vmmov mr0, r12
0010a4  1f064000  addli r12, zero, 32
0010a8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0010ac  0f810500  exp.f.rn r2, r11
0010b0  fa157040  vextracti.f r11, 7(vr0)
0010b4  7e0006e0  vmmov mr0, r12
0010b8  1f068000  addli r12, zero, 64
0010bc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0010c0  0f840500  exp.f.rn r8, r11
0010c4  fa158040  vextracti.f r11, 8(vr0)
0010c8  7e0006e0  vmmov mr0, r12
0010cc  1f060001  addli r12, zero, 128
0010d0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0010d4  0f810500  exp.f.rn r2, r11
0010d8  fa159040  vextracti.f r11, 9(vr0)
0010dc  7e0006e0  vmmov mr0, r12
0010e0  1f060002  addli r12, zero, 256
0010e4  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0010e8  0f840500  exp.f.rn r8, r11
0010ec  fa15a040  vextracti.f r11, 10(vr0)
0010f0  7e0006e0  vmmov mr0, r12
0010f4  1f060004  addli r12, zero, 512
0010f8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0010fc  0f810500  exp.f.rn r2, r11
001100  fa15b040  vextracti.f r11, 11(vr0)
001104  7e0006e0  vmmov mr0, r12
001108  1f060008  addli r12, zero, 1024
00110c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001110  0f840500  exp.f.rn r8, r11
001114  fa15c040  vextracti.f r11, 12(vr0)
001118  7e0006e0  vmmov mr0, r12
00111c  1f060010  addli r12, zero, 2048
001120  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001124  0f810500  exp.f.rn r2, r11
001128  fa15d040  vextracti.f r11, 13(vr0)
00112c  7e0006e0  vmmov mr0, r12
001130  7a16f040  vextracti.f r12, 15(vr0)
001134  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001138  0f840500  exp.f.rn r8, r11
00113c  fa15e040  vextracti.f r11, 14(vr0)
001140  7e0007e0  vmmov mr0, r14
001144  1f070040  addli r14, zero, 8192
001148  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00114c  0f810500  exp.f.rn r2, r11
001150  9f058fdc  addli r11, r30, -4544
001154  7e0007e0  vmmov mr0, r14
001158  2b470000  lui r14, 4
00115c  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001160  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
001164  fa150040  vextracti.f r11, 0(vr0)
001168  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00116c  0f040600  exp.f.rn r8, r12
001170  7e0007e0  vmmov mr0, r14
001174  7a161040  vextracti.f r12, 1(vr0)
001178  1f070020  addli r14, zero, 4096
00117c  8f850500  exp.f.rn r11, r11
001180  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001184  0f010600  exp.f.rn r2, r12
001188  7a162040  vextracti.f r12, 2(vr0)
00118c  ea201434  vor.u.mh vr1{mr2}, r8, vr1
001190  1f048fdc  addli r8, r30, -4544
001194  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
001198  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00119c  1f140000  addli r8, zero, 1
0011a0  7e0004e0  vmmov mr0, r8
0011a4  0f040600  exp.f.rn r8, r12
0011a8  1f460000  addli r12, zero, 4
0011ac  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
0011b0  fa153040  vextracti.f r11, 3(vr0)
0011b4  7e0006e0  vmmov mr0, r12
0011b8  1f061000  addli r12, zero, 8
0011bc  ea201136  vor.u.mh vr1{mr3}, r2, vr1
0011c0  0f810500  exp.f.rn r2, r11
0011c4  fa154040  vextracti.f r11, 4(vr0)
0011c8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0011cc  0f840500  exp.f.rn r8, r11
0011d0  fa155040  vextracti.f r11, 5(vr0)
0011d4  7e0006e0  vmmov mr0, r12
0011d8  1f062000  addli r12, zero, 16
0011dc  7e0106e0  vmmov mr2, r12
0011e0  1f064000  addli r12, zero, 32
0011e4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0011e8  0f810500  exp.f.rn r2, r11
0011ec  fa156040  vextracti.f r11, 6(vr0)
0011f0  7e0006e0  vmmov mr0, r12
0011f4  1f068000  addli r12, zero, 64
0011f8  ea201434  vor.u.mh vr1{mr2}, r8, vr1
0011fc  0f840500  exp.f.rn r8, r11
001200  fa157040  vextracti.f r11, 7(vr0)
001204  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001208  0f810500  exp.f.rn r2, r11
00120c  fa158040  vextracti.f r11, 8(vr0)
001210  7e0006e0  vmmov mr0, r12
001214  1f060001  addli r12, zero, 128
001218  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00121c  0f840500  exp.f.rn r8, r11
001220  fa159040  vextracti.f r11, 9(vr0)
001224  7e0006e0  vmmov mr0, r12
001228  1f060002  addli r12, zero, 256
00122c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001230  0f810500  exp.f.rn r2, r11
001234  fa15a040  vextracti.f r11, 10(vr0)
001238  7e0006e0  vmmov mr0, r12
00123c  1f060004  addli r12, zero, 512
001240  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001244  0f840500  exp.f.rn r8, r11
001248  fa15b040  vextracti.f r11, 11(vr0)
00124c  7e0006e0  vmmov mr0, r12
001250  1f060008  addli r12, zero, 1024
001254  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001258  0f810500  exp.f.rn r2, r11
00125c  fa15c040  vextracti.f r11, 12(vr0)
001260  7e0006e0  vmmov mr0, r12
001264  1f060010  addli r12, zero, 2048
001268  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00126c  0f840500  exp.f.rn r8, r11
001270  fa15d040  vextracti.f r11, 13(vr0)
001274  7e0006e0  vmmov mr0, r12
001278  7a16f040  vextracti.f r12, 15(vr0)
00127c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001280  0f810500  exp.f.rn r2, r11
001284  fa15e040  vextracti.f r11, 14(vr0)
001288  7e0007e0  vmmov mr0, r14
00128c  1f070040  addli r14, zero, 8192
001290  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001294  0f840500  exp.f.rn r8, r11
001298  9f050fdc  addli r11, r30, -4608
00129c  7e0007e0  vmmov mr0, r14
0012a0  2b470000  lui r14, 4
0012a4  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
0012a8  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0012ac  fa150040  vextracti.f r11, 0(vr0)
0012b0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0012b4  0f010600  exp.f.rn r2, r12
0012b8  7e0007e0  vmmov mr0, r14
0012bc  2b870000  lui r14, 8
0012c0  7a161040  vextracti.f r12, 1(vr0)
0012c4  8f850500  exp.f.rn r11, r11
0012c8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0012cc  7e0007e0  vmmov mr0, r14
0012d0  0f040600  exp.f.rn r8, r12
0012d4  7a162040  vextracti.f r12, 2(vr0)
0012d8  1f070020  addli r14, zero, 4096
0012dc  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0012e0  1f010fdc  addli r2, r30, -4608
0012e4  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0012e8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0012ec  1f110000  addli r2, zero, 1
0012f0  7e0001e0  vmmov mr0, r2
0012f4  0f010600  exp.f.rn r2, r12
0012f8  1f460000  addli r12, zero, 4
0012fc  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
001300  fa153040  vextracti.f r11, 3(vr0)
001304  7e0006e0  vmmov mr0, r12
001308  1f061000  addli r12, zero, 8
00130c  ea201436  vor.u.mh vr1{mr3}, r8, vr1
001310  0f840500  exp.f.rn r8, r11
001314  fa154040  vextracti.f r11, 4(vr0)
001318  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00131c  0f810500  exp.f.rn r2, r11
001320  fa155040  vextracti.f r11, 5(vr0)
001324  7e0006e0  vmmov mr0, r12
001328  1f064000  addli r12, zero, 32
00132c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001330  0f840500  exp.f.rn r8, r11
001334  fa156040  vextracti.f r11, 6(vr0)
001338  ea201134  vor.u.mh vr1{mr2}, r2, vr1
00133c  0f810500  exp.f.rn r2, r11
001340  fa157040  vextracti.f r11, 7(vr0)
001344  7e0106e0  vmmov mr2, r12
001348  1f068000  addli r12, zero, 64
00134c  7e0006e0  vmmov mr0, r12
001350  1f060001  addli r12, zero, 128
001354  ea201434  vor.u.mh vr1{mr2}, r8, vr1
001358  0f840500  exp.f.rn r8, r11
00135c  fa158040  vextracti.f r11, 8(vr0)
001360  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001364  0f810500  exp.f.rn r2, r11
001368  fa159040  vextracti.f r11, 9(vr0)
00136c  7e0006e0  vmmov mr0, r12
001370  1f060002  addli r12, zero, 256
001374  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001378  0f840500  exp.f.rn r8, r11
00137c  fa15a040  vextracti.f r11, 10(vr0)
001380  7e0006e0  vmmov mr0, r12
001384  1f060004  addli r12, zero, 512
001388  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00138c  0f810500  exp.f.rn r2, r11
001390  fa15b040  vextracti.f r11, 11(vr0)
001394  7e0006e0  vmmov mr0, r12
001398  1f060008  addli r12, zero, 1024
00139c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0013a0  0f840500  exp.f.rn r8, r11
0013a4  fa15c040  vextracti.f r11, 12(vr0)
0013a8  7e0006e0  vmmov mr0, r12
0013ac  1f060010  addli r12, zero, 2048
0013b0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0013b4  0f810500  exp.f.rn r2, r11
0013b8  fa15d040  vextracti.f r11, 13(vr0)
0013bc  7e0006e0  vmmov mr0, r12
0013c0  7a16f040  vextracti.f r12, 15(vr0)
0013c4  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0013c8  0f840500  exp.f.rn r8, r11
0013cc  fa15e040  vextracti.f r11, 14(vr0)
0013d0  7e0007e0  vmmov mr0, r14
0013d4  1f070040  addli r14, zero, 8192
0013d8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0013dc  0f810500  exp.f.rn r2, r11
0013e0  9f058fdb  addli r11, r30, -4672
0013e4  7e0007e0  vmmov mr0, r14
0013e8  2b470000  lui r14, 4
0013ec  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
0013f0  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0013f4  fa150040  vextracti.f r11, 0(vr0)
0013f8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0013fc  0f040600  exp.f.rn r8, r12
001400  7e0007e0  vmmov mr0, r14
001404  2b870000  lui r14, 8
001408  7a161040  vextracti.f r12, 1(vr0)
00140c  8f850500  exp.f.rn r11, r11
001410  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001414  7e0007e0  vmmov mr0, r14
001418  0f010600  exp.f.rn r2, r12
00141c  7a162040  vextracti.f r12, 2(vr0)
001420  1f070020  addli r14, zero, 4096
001424  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001428  1f048fdb  addli r8, r30, -4672
00142c  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
001430  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001434  1f140000  addli r8, zero, 1
001438  7e0004e0  vmmov mr0, r8
00143c  0f040600  exp.f.rn r8, r12
001440  1f460000  addli r12, zero, 4
001444  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
001448  fa153040  vextracti.f r11, 3(vr0)
00144c  7e0006e0  vmmov mr0, r12
001450  1f061000  addli r12, zero, 8
001454  ea201136  vor.u.mh vr1{mr3}, r2, vr1
001458  0f810500  exp.f.rn r2, r11
00145c  fa154040  vextracti.f r11, 4(vr0)
001460  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001464  0f840500  exp.f.rn r8, r11
001468  fa155040  vextracti.f r11, 5(vr0)
00146c  7e0006e0  vmmov mr0, r12
001470  1f062000  addli r12, zero, 16
001474  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001478  0f810500  exp.f.rn r2, r11
00147c  fa156040  vextracti.f r11, 6(vr0)
001480  7e0006e0  vmmov mr0, r12
001484  1f068000  addli r12, zero, 64
001488  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00148c  0f840500  exp.f.rn r8, r11
001490  fa157040  vextracti.f r11, 7(vr0)
001494  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001498  0f810500  exp.f.rn r2, r11
00149c  fa158040  vextracti.f r11, 8(vr0)
0014a0  7e0106e0  vmmov mr2, r12
0014a4  1f060001  addli r12, zero, 128
0014a8  ea201434  vor.u.mh vr1{mr2}, r8, vr1
0014ac  0f840500  exp.f.rn r8, r11
0014b0  fa159040  vextracti.f r11, 9(vr0)
0014b4  7e0106e0  vmmov mr2, r12
0014b8  1f060002  addli r12, zero, 256
0014bc  ea201134  vor.u.mh vr1{mr2}, r2, vr1
0014c0  0f810500  exp.f.rn r2, r11
0014c4  fa15a040  vextracti.f r11, 10(vr0)
0014c8  7e0106e0  vmmov mr2, r12
0014cc  1f060004  addli r12, zero, 512
0014d0  ea201434  vor.u.mh vr1{mr2}, r8, vr1
0014d4  0f840500  exp.f.rn r8, r11
0014d8  fa15b040  vextracti.f r11, 11(vr0)
0014dc  7e0106e0  vmmov mr2, r12
0014e0  1f060008  addli r12, zero, 1024
0014e4  ea201134  vor.u.mh vr1{mr2}, r2, vr1
0014e8  0f810500  exp.f.rn r2, r11
0014ec  fa15c040  vextracti.f r11, 12(vr0)
0014f0  7e0106e0  vmmov mr2, r12
0014f4  1f060010  addli r12, zero, 2048
0014f8  ea201434  vor.u.mh vr1{mr2}, r8, vr1
0014fc  0f840500  exp.f.rn r8, r11
001500  fa15d040  vextracti.f r11, 13(vr0)
001504  7e0106e0  vmmov mr2, r12
001508  7a16f040  vextracti.f r12, 15(vr0)
00150c  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001510  0f810500  exp.f.rn r2, r11
001514  fa15e040  vextracti.f r11, 14(vr0)
001518  7e0107e0  vmmov mr2, r14
00151c  1f070040  addli r14, zero, 8192
001520  ea201434  vor.u.mh vr1{mr2}, r8, vr1
001524  0f840500  exp.f.rn r8, r11
001528  9f050fdb  addli r11, r30, -4736
00152c  7e0107e0  vmmov mr2, r14
001530  2b470000  lui r14, 4
001534  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001538  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
00153c  fa150040  vextracti.f r11, 0(vr0)
001540  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001544  0f010600  exp.f.rn r2, r12
001548  7e0107e0  vmmov mr2, r14
00154c  2b870000  lui r14, 8
001550  7a161040  vextracti.f r12, 1(vr0)
001554  8f850500  exp.f.rn r11, r11
001558  ea201434  vor.u.mh vr1{mr2}, r8, vr1
00155c  7e0107e0  vmmov mr2, r14
001560  0f040600  exp.f.rn r8, r12
001564  7a162040  vextracti.f r12, 2(vr0)
001568  1f070020  addli r14, zero, 4096
00156c  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001570  1f010fdb  addli r2, r30, -4736
001574  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
001578  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00157c  1f110000  addli r2, zero, 1
001580  7e0101e0  vmmov mr2, r2
001584  0f010600  exp.f.rn r2, r12
001588  1f460000  addli r12, zero, 4
00158c  eaa01534  vor.u.mh vr1{mr2}, r11, vr1
001590  fa153040  vextracti.f r11, 3(vr0)
001594  7e0106e0  vmmov mr2, r12
001598  1f061000  addli r12, zero, 8
00159c  ea201436  vor.u.mh vr1{mr3}, r8, vr1
0015a0  0f840500  exp.f.rn r8, r11
0015a4  fa154040  vextracti.f r11, 4(vr0)
0015a8  fe0106e0  vmmov mr3, r12
0015ac  1f064000  addli r12, zero, 32
0015b0  ea201134  vor.u.mh vr1{mr2}, r2, vr1
0015b4  0f810500  exp.f.rn r2, r11
0015b8  fa155040  vextracti.f r11, 5(vr0)
0015bc  ea201436  vor.u.mh vr1{mr3}, r8, vr1
0015c0  0f840500  exp.f.rn r8, r11
0015c4  fa156040  vextracti.f r11, 6(vr0)
0015c8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0015cc  0f810500  exp.f.rn r2, r11
0015d0  fa157040  vextracti.f r11, 7(vr0)
0015d4  7e0100c0  vmmov mr2, mr0
0015d8  7e0006e0  vmmov mr0, r12
0015dc  1f068000  addli r12, zero, 64
0015e0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0015e4  0f840500  exp.f.rn r8, r11
0015e8  fa158040  vextracti.f r11, 8(vr0)
0015ec  7e0006e0  vmmov mr0, r12
0015f0  1f060001  addli r12, zero, 128
0015f4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0015f8  0f810500  exp.f.rn r2, r11
0015fc  fa159040  vextracti.f r11, 9(vr0)
001600  7e0006e0  vmmov mr0, r12
001604  1f060002  addli r12, zero, 256
001608  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00160c  0f840500  exp.f.rn r8, r11
001610  fa15a040  vextracti.f r11, 10(vr0)
001614  7e0006e0  vmmov mr0, r12
001618  1f060004  addli r12, zero, 512
00161c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001620  0f810500  exp.f.rn r2, r11
001624  fa15b040  vextracti.f r11, 11(vr0)
001628  7e0006e0  vmmov mr0, r12
00162c  1f060008  addli r12, zero, 1024
001630  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001634  0f840500  exp.f.rn r8, r11
001638  fa15c040  vextracti.f r11, 12(vr0)
00163c  7e0006e0  vmmov mr0, r12
001640  1f060010  addli r12, zero, 2048
001644  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001648  0f810500  exp.f.rn r2, r11
00164c  fa15d040  vextracti.f r11, 13(vr0)
001650  7e0006e0  vmmov mr0, r12
001654  7a16f040  vextracti.f r12, 15(vr0)
001658  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00165c  0f840500  exp.f.rn r8, r11
001660  fa15e040  vextracti.f r11, 14(vr0)
001664  7e0007e0  vmmov mr0, r14
001668  1f070040  addli r14, zero, 8192
00166c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001670  0f810500  exp.f.rn r2, r11
001674  9f050fda  addli r11, r30, -4864
001678  7e0007e0  vmmov mr0, r14
00167c  2b470000  lui r14, 4
001680  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001684  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
001688  fa150040  vextracti.f r11, 0(vr0)
00168c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001690  0f040600  exp.f.rn r8, r12
001694  7e0007e0  vmmov mr0, r14
001698  2b870000  lui r14, 8
00169c  7a161040  vextracti.f r12, 1(vr0)
0016a0  8f850500  exp.f.rn r11, r11
0016a4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0016a8  7e0007e0  vmmov mr0, r14
0016ac  0f010600  exp.f.rn r2, r12
0016b0  7a162040  vextracti.f r12, 2(vr0)
0016b4  1f070020  addli r14, zero, 4096
0016b8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0016bc  1f040fda  addli r8, r30, -4864
0016c0  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
0016c4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0016c8  1f140000  addli r8, zero, 1
0016cc  7e0004e0  vmmov mr0, r8
0016d0  0f040600  exp.f.rn r8, r12
0016d4  1f260000  addli r12, zero, 2
0016d8  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
0016dc  fa153040  vextracti.f r11, 3(vr0)
0016e0  7e0006e0  vmmov mr0, r12
0016e4  1f460000  addli r12, zero, 4
0016e8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0016ec  0f810500  exp.f.rn r2, r11
0016f0  fa154040  vextracti.f r11, 4(vr0)
0016f4  7e0006e0  vmmov mr0, r12
0016f8  1f064000  addli r12, zero, 32
0016fc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001700  0f840500  exp.f.rn r8, r11
001704  fa155040  vextracti.f r11, 5(vr0)
001708  7e0006e0  vmmov mr0, r12
00170c  1f068000  addli r12, zero, 64
001710  ea201136  vor.u.mh vr1{mr3}, r2, vr1
001714  0f810500  exp.f.rn r2, r11
001718  fa156040  vextracti.f r11, 6(vr0)
00171c  ea201434  vor.u.mh vr1{mr2}, r8, vr1
001720  0f840500  exp.f.rn r8, r11
001724  fa157040  vextracti.f r11, 7(vr0)
001728  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00172c  0f810500  exp.f.rn r2, r11
001730  fa158040  vextracti.f r11, 8(vr0)
001734  7e0006e0  vmmov mr0, r12
001738  1f060001  addli r12, zero, 128
00173c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001740  0f840500  exp.f.rn r8, r11
001744  fa159040  vextracti.f r11, 9(vr0)
001748  7e0006e0  vmmov mr0, r12
00174c  1f060002  addli r12, zero, 256
001750  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001754  0f810500  exp.f.rn r2, r11
001758  fa15a040  vextracti.f r11, 10(vr0)
00175c  7e0006e0  vmmov mr0, r12
001760  1f060004  addli r12, zero, 512
001764  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001768  0f840500  exp.f.rn r8, r11
00176c  fa15b040  vextracti.f r11, 11(vr0)
001770  7e0006e0  vmmov mr0, r12
001774  1f060008  addli r12, zero, 1024
001778  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00177c  0f810500  exp.f.rn r2, r11
001780  fa15c040  vextracti.f r11, 12(vr0)
001784  7e0006e0  vmmov mr0, r12
001788  1f060010  addli r12, zero, 2048
00178c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001790  0f840500  exp.f.rn r8, r11
001794  fa15d040  vextracti.f r11, 13(vr0)
001798  7e0006e0  vmmov mr0, r12
00179c  7a16f040  vextracti.f r12, 15(vr0)
0017a0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0017a4  0f810500  exp.f.rn r2, r11
0017a8  fa15e040  vextracti.f r11, 14(vr0)
0017ac  7e0007e0  vmmov mr0, r14
0017b0  1f070040  addli r14, zero, 8192
0017b4  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0017b8  0f840500  exp.f.rn r8, r11
0017bc  9f050fd9  addli r11, r30, -4992
0017c0  7e0007e0  vmmov mr0, r14
0017c4  2b470000  lui r14, 4
0017c8  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
0017cc  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0017d0  fa150040  vextracti.f r11, 0(vr0)
0017d4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0017d8  0f010600  exp.f.rn r2, r12
0017dc  7e0007e0  vmmov mr0, r14
0017e0  2b870000  lui r14, 8
0017e4  7a161040  vextracti.f r12, 1(vr0)
0017e8  8f850500  exp.f.rn r11, r11
0017ec  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0017f0  7e0007e0  vmmov mr0, r14
0017f4  0f040600  exp.f.rn r8, r12
0017f8  7a162040  vextracti.f r12, 2(vr0)
0017fc  1f070020  addli r14, zero, 4096
001800  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001804  1f010fd9  addli r2, r30, -4992
001808  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
00180c  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001810  1f110000  addli r2, zero, 1
001814  7e0001e0  vmmov mr0, r2
001818  0f010600  exp.f.rn r2, r12
00181c  1f260000  addli r12, zero, 2
001820  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
001824  fa153040  vextracti.f r11, 3(vr0)
001828  7e0006e0  vmmov mr0, r12
00182c  1f460000  addli r12, zero, 4
001830  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001834  0f840500  exp.f.rn r8, r11
001838  fa154040  vextracti.f r11, 4(vr0)
00183c  7e0006e0  vmmov mr0, r12
001840  1f064000  addli r12, zero, 32
001844  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001848  0f810500  exp.f.rn r2, r11
00184c  fa155040  vextracti.f r11, 5(vr0)
001850  7e0006e0  vmmov mr0, r12
001854  1f068000  addli r12, zero, 64
001858  ea201436  vor.u.mh vr1{mr3}, r8, vr1
00185c  0f840500  exp.f.rn r8, r11
001860  fa156040  vextracti.f r11, 6(vr0)
001864  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001868  0f810500  exp.f.rn r2, r11
00186c  fa157040  vextracti.f r11, 7(vr0)
001870  7e0106e0  vmmov mr2, r12
001874  1f060001  addli r12, zero, 128
001878  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00187c  0f840500  exp.f.rn r8, r11
001880  fa158040  vextracti.f r11, 8(vr0)
001884  7e0006e0  vmmov mr0, r12
001888  1f060002  addli r12, zero, 256
00188c  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001890  0f810500  exp.f.rn r2, r11
001894  fa159040  vextracti.f r11, 9(vr0)
001898  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00189c  0f840500  exp.f.rn r8, r11
0018a0  fa15a040  vextracti.f r11, 10(vr0)
0018a4  7e0006e0  vmmov mr0, r12
0018a8  1f060004  addli r12, zero, 512
0018ac  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0018b0  0f810500  exp.f.rn r2, r11
0018b4  fa15b040  vextracti.f r11, 11(vr0)
0018b8  7e0006e0  vmmov mr0, r12
0018bc  1f060008  addli r12, zero, 1024
0018c0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0018c4  0f840500  exp.f.rn r8, r11
0018c8  fa15c040  vextracti.f r11, 12(vr0)
0018cc  7e0006e0  vmmov mr0, r12
0018d0  1f060010  addli r12, zero, 2048
0018d4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0018d8  0f810500  exp.f.rn r2, r11
0018dc  fa15d040  vextracti.f r11, 13(vr0)
0018e0  7e0006e0  vmmov mr0, r12
0018e4  7a16f040  vextracti.f r12, 15(vr0)
0018e8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0018ec  0f840500  exp.f.rn r8, r11
0018f0  fa15e040  vextracti.f r11, 14(vr0)
0018f4  7e0007e0  vmmov mr0, r14
0018f8  1f070040  addli r14, zero, 8192
0018fc  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001900  0f810500  exp.f.rn r2, r11
001904  9f050fd8  addli r11, r30, -5120
001908  7e0007e0  vmmov mr0, r14
00190c  2b470000  lui r14, 4
001910  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001914  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
001918  fa150040  vextracti.f r11, 0(vr0)
00191c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001920  0f040600  exp.f.rn r8, r12
001924  7e0007e0  vmmov mr0, r14
001928  2b870000  lui r14, 8
00192c  7a161040  vextracti.f r12, 1(vr0)
001930  8f850500  exp.f.rn r11, r11
001934  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001938  7e0007e0  vmmov mr0, r14
00193c  0f010600  exp.f.rn r2, r12
001940  7a162040  vextracti.f r12, 2(vr0)
001944  1f070020  addli r14, zero, 4096
001948  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00194c  1f040fd8  addli r8, r30, -5120
001950  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
001954  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001958  1f140000  addli r8, zero, 1
00195c  7e0004e0  vmmov mr0, r8
001960  0f040600  exp.f.rn r8, r12
001964  1f260000  addli r12, zero, 2
001968  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
00196c  fa153040  vextracti.f r11, 3(vr0)
001970  7e0006e0  vmmov mr0, r12
001974  1f460000  addli r12, zero, 4
001978  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00197c  0f810500  exp.f.rn r2, r11
001980  fa154040  vextracti.f r11, 4(vr0)
001984  7e0006e0  vmmov mr0, r12
001988  1f062000  addli r12, zero, 16
00198c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001990  0f840500  exp.f.rn r8, r11
001994  fa155040  vextracti.f r11, 5(vr0)
001998  7e0006e0  vmmov mr0, r12
00199c  1f064000  addli r12, zero, 32
0019a0  ea201136  vor.u.mh vr1{mr3}, r2, vr1
0019a4  0f810500  exp.f.rn r2, r11
0019a8  fa156040  vextracti.f r11, 6(vr0)
0019ac  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0019b0  0f840500  exp.f.rn r8, r11
0019b4  fa157040  vextracti.f r11, 7(vr0)
0019b8  7e0006e0  vmmov mr0, r12
0019bc  1f060001  addli r12, zero, 128
0019c0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0019c4  0f810500  exp.f.rn r2, r11
0019c8  fa158040  vextracti.f r11, 8(vr0)
0019cc  7e0006e0  vmmov mr0, r12
0019d0  1f060002  addli r12, zero, 256
0019d4  ea201434  vor.u.mh vr1{mr2}, r8, vr1
0019d8  0f840500  exp.f.rn r8, r11
0019dc  fa159040  vextracti.f r11, 9(vr0)
0019e0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0019e4  0f810500  exp.f.rn r2, r11
0019e8  fa15a040  vextracti.f r11, 10(vr0)
0019ec  7e0006e0  vmmov mr0, r12
0019f0  1f060004  addli r12, zero, 512
0019f4  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0019f8  0f840500  exp.f.rn r8, r11
0019fc  fa15b040  vextracti.f r11, 11(vr0)
001a00  7e0100c0  vmmov mr2, mr0
001a04  7e0006e0  vmmov mr0, r12
001a08  1f060008  addli r12, zero, 1024
001a0c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001a10  0f810500  exp.f.rn r2, r11
001a14  fa15c040  vextracti.f r11, 12(vr0)
001a18  7e0006e0  vmmov mr0, r12
001a1c  1f060010  addli r12, zero, 2048
001a20  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001a24  0f840500  exp.f.rn r8, r11
001a28  fa15d040  vextracti.f r11, 13(vr0)
001a2c  7e0006e0  vmmov mr0, r12
001a30  7a16f040  vextracti.f r12, 15(vr0)
001a34  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001a38  0f810500  exp.f.rn r2, r11
001a3c  fa15e040  vextracti.f r11, 14(vr0)
001a40  7e0007e0  vmmov mr0, r14
001a44  1f070040  addli r14, zero, 8192
001a48  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001a4c  0f840500  exp.f.rn r8, r11
001a50  9f050fd7  addli r11, r30, -5248
001a54  7e0007e0  vmmov mr0, r14
001a58  2b470000  lui r14, 4
001a5c  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001a60  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
001a64  fa150040  vextracti.f r11, 0(vr0)
001a68  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001a6c  0f010600  exp.f.rn r2, r12
001a70  7e0007e0  vmmov mr0, r14
001a74  2b870000  lui r14, 8
001a78  7a161040  vextracti.f r12, 1(vr0)
001a7c  8f850500  exp.f.rn r11, r11
001a80  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001a84  7e0007e0  vmmov mr0, r14
001a88  0f040600  exp.f.rn r8, r12
001a8c  7a162040  vextracti.f r12, 2(vr0)
001a90  1f070020  addli r14, zero, 4096
001a94  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001a98  1f010fd7  addli r2, r30, -5248
001a9c  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
001aa0  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001aa4  1f110000  addli r2, zero, 1
001aa8  7e0001e0  vmmov mr0, r2
001aac  0f010600  exp.f.rn r2, r12
001ab0  1f260000  addli r12, zero, 2
001ab4  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
001ab8  fa153040  vextracti.f r11, 3(vr0)
001abc  7e0006e0  vmmov mr0, r12
001ac0  1f460000  addli r12, zero, 4
001ac4  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001ac8  0f840500  exp.f.rn r8, r11
001acc  fa154040  vextracti.f r11, 4(vr0)
001ad0  7e0006e0  vmmov mr0, r12
001ad4  1f062000  addli r12, zero, 16
001ad8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001adc  0f810500  exp.f.rn r2, r11
001ae0  fa155040  vextracti.f r11, 5(vr0)
001ae4  7e0006e0  vmmov mr0, r12
001ae8  1f064000  addli r12, zero, 32
001aec  ea201436  vor.u.mh vr1{mr3}, r8, vr1
001af0  0f840500  exp.f.rn r8, r11
001af4  fa156040  vextracti.f r11, 6(vr0)
001af8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001afc  0f810500  exp.f.rn r2, r11
001b00  fa157040  vextracti.f r11, 7(vr0)
001b04  7e0006e0  vmmov mr0, r12
001b08  1f068000  addli r12, zero, 64
001b0c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001b10  0f840500  exp.f.rn r8, r11
001b14  fa158040  vextracti.f r11, 8(vr0)
001b18  7e0006e0  vmmov mr0, r12
001b1c  1f060001  addli r12, zero, 128
001b20  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001b24  0f810500  exp.f.rn r2, r11
001b28  fa159040  vextracti.f r11, 9(vr0)
001b2c  7e0006e0  vmmov mr0, r12
001b30  1f060004  addli r12, zero, 512
001b34  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001b38  0f840500  exp.f.rn r8, r11
001b3c  fa15a040  vextracti.f r11, 10(vr0)
001b40  7e0006e0  vmmov mr0, r12
001b44  1f060008  addli r12, zero, 1024
001b48  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001b4c  0f810500  exp.f.rn r2, r11
001b50  fa15b040  vextracti.f r11, 11(vr0)
001b54  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001b58  0f840500  exp.f.rn r8, r11
001b5c  fa15c040  vextracti.f r11, 12(vr0)
001b60  7e0006e0  vmmov mr0, r12
001b64  1f060010  addli r12, zero, 2048
001b68  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001b6c  0f810500  exp.f.rn r2, r11
001b70  fa15d040  vextracti.f r11, 13(vr0)
001b74  7e0006e0  vmmov mr0, r12
001b78  7a16f040  vextracti.f r12, 15(vr0)
001b7c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001b80  0f840500  exp.f.rn r8, r11
001b84  fa15e040  vextracti.f r11, 14(vr0)
001b88  7e0007e0  vmmov mr0, r14
001b8c  1f070040  addli r14, zero, 8192
001b90  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001b94  0f810500  exp.f.rn r2, r11
001b98  9f050fd6  addli r11, r30, -5376
001b9c  7e0007e0  vmmov mr0, r14
001ba0  2b470000  lui r14, 4
001ba4  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001ba8  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
001bac  fa150040  vextracti.f r11, 0(vr0)
001bb0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001bb4  0f040600  exp.f.rn r8, r12
001bb8  7e0007e0  vmmov mr0, r14
001bbc  2b870000  lui r14, 8
001bc0  7a161040  vextracti.f r12, 1(vr0)
001bc4  8f850500  exp.f.rn r11, r11
001bc8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001bcc  7e0007e0  vmmov mr0, r14
001bd0  0f010600  exp.f.rn r2, r12
001bd4  7a162040  vextracti.f r12, 2(vr0)
001bd8  1f070020  addli r14, zero, 4096
001bdc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001be0  1f040fd6  addli r8, r30, -5376
001be4  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
001be8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001bec  1f140000  addli r8, zero, 1
001bf0  7e0104e0  vmmov mr2, r8
001bf4  0f040600  exp.f.rn r8, r12
001bf8  1f260000  addli r12, zero, 2
001bfc  eaa01534  vor.u.mh vr1{mr2}, r11, vr1
001c00  fa153040  vextracti.f r11, 3(vr0)
001c04  7e0006e0  vmmov mr0, r12
001c08  1f460000  addli r12, zero, 4
001c0c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001c10  0f810500  exp.f.rn r2, r11
001c14  fa154040  vextracti.f r11, 4(vr0)
001c18  7e0006e0  vmmov mr0, r12
001c1c  1f062000  addli r12, zero, 16
001c20  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001c24  0f840500  exp.f.rn r8, r11
001c28  fa155040  vextracti.f r11, 5(vr0)
001c2c  7e0006e0  vmmov mr0, r12
001c30  1f064000  addli r12, zero, 32
001c34  ea201136  vor.u.mh vr1{mr3}, r2, vr1
001c38  0f810500  exp.f.rn r2, r11
001c3c  fa156040  vextracti.f r11, 6(vr0)
001c40  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001c44  0f840500  exp.f.rn r8, r11
001c48  fa157040  vextracti.f r11, 7(vr0)
001c4c  7e0006e0  vmmov mr0, r12
001c50  1f068000  addli r12, zero, 64
001c54  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001c58  0f810500  exp.f.rn r2, r11
001c5c  fa158040  vextracti.f r11, 8(vr0)
001c60  7e0006e0  vmmov mr0, r12
001c64  1f060001  addli r12, zero, 128
001c68  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001c6c  0f840500  exp.f.rn r8, r11
001c70  fa159040  vextracti.f r11, 9(vr0)
001c74  7e0006e0  vmmov mr0, r12
001c78  1f060002  addli r12, zero, 256
001c7c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001c80  0f810500  exp.f.rn r2, r11
001c84  fa15a040  vextracti.f r11, 10(vr0)
001c88  7e0006e0  vmmov mr0, r12
001c8c  1f060004  addli r12, zero, 512
001c90  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001c94  0f840500  exp.f.rn r8, r11
001c98  fa15b040  vextracti.f r11, 11(vr0)
001c9c  7e0006e0  vmmov mr0, r12
001ca0  1f060008  addli r12, zero, 1024
001ca4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001ca8  0f810500  exp.f.rn r2, r11
001cac  fa15c040  vextracti.f r11, 12(vr0)
001cb0  7e0006e0  vmmov mr0, r12
001cb4  1f060010  addli r12, zero, 2048
001cb8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001cbc  0f840500  exp.f.rn r8, r11
001cc0  fa15d040  vextracti.f r11, 13(vr0)
001cc4  7e0006e0  vmmov mr0, r12
001cc8  7a16f040  vextracti.f r12, 15(vr0)
001ccc  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001cd0  0f810500  exp.f.rn r2, r11
001cd4  fa15e040  vextracti.f r11, 14(vr0)
001cd8  7e0007e0  vmmov mr0, r14
001cdc  1f070040  addli r14, zero, 8192
001ce0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001ce4  0f840500  exp.f.rn r8, r11
001ce8  9f058fd5  addli r11, r30, -5440
001cec  7e0007e0  vmmov mr0, r14
001cf0  2b470000  lui r14, 4
001cf4  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001cf8  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
001cfc  fa150040  vextracti.f r11, 0(vr0)
001d00  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001d04  0f010600  exp.f.rn r2, r12
001d08  7e0007e0  vmmov mr0, r14
001d0c  2b870000  lui r14, 8
001d10  7a161040  vextracti.f r12, 1(vr0)
001d14  8f850500  exp.f.rn r11, r11
001d18  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001d1c  7e0007e0  vmmov mr0, r14
001d20  0f040600  exp.f.rn r8, r12
001d24  7a162040  vextracti.f r12, 2(vr0)
001d28  1f070020  addli r14, zero, 4096
001d2c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001d30  1f018fd5  addli r2, r30, -5440
001d34  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
001d38  6aa36534  vor.u.mh vr6{mr2}, r11, vr6
001d3c  0f010600  exp.f.rn r2, r12
001d40  1f260000  addli r12, zero, 2
001d44  fa153040  vextracti.f r11, 3(vr0)
001d48  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001d4c  7e0006e0  vmmov mr0, r12
001d50  1f460000  addli r12, zero, 4
001d54  6a236430  vor.u.mh vr6{mr0}, r8, vr6
001d58  0f840500  exp.f.rn r8, r11
001d5c  fa154040  vextracti.f r11, 4(vr0)
001d60  7e0006e0  vmmov mr0, r12
001d64  1f062000  addli r12, zero, 16
001d68  6a236130  vor.u.mh vr6{mr0}, r2, vr6
001d6c  0f810500  exp.f.rn r2, r11
001d70  fa155040  vextracti.f r11, 5(vr0)
001d74  7e0006e0  vmmov mr0, r12
001d78  1f064000  addli r12, zero, 32
001d7c  7e0106e0  vmmov mr2, r12
001d80  1f068000  addli r12, zero, 64
001d84  6a236436  vor.u.mh vr6{mr3}, r8, vr6
001d88  0f840500  exp.f.rn r8, r11
001d8c  fa156040  vextracti.f r11, 6(vr0)
001d90  6a236130  vor.u.mh vr6{mr0}, r2, vr6
001d94  0f810500  exp.f.rn r2, r11
001d98  fa157040  vextracti.f r11, 7(vr0)
001d9c  7e0006e0  vmmov mr0, r12
001da0  1f060001  addli r12, zero, 128
001da4  6a236434  vor.u.mh vr6{mr2}, r8, vr6
001da8  0f840500  exp.f.rn r8, r11
001dac  fa158040  vextracti.f r11, 8(vr0)
001db0  6a236130  vor.u.mh vr6{mr0}, r2, vr6
001db4  0f810500  exp.f.rn r2, r11
001db8  fa159040  vextracti.f r11, 9(vr0)
001dbc  7e0006e0  vmmov mr0, r12
001dc0  1f060002  addli r12, zero, 256
001dc4  6a236430  vor.u.mh vr6{mr0}, r8, vr6
001dc8  0f840500  exp.f.rn r8, r11
001dcc  fa15a040  vextracti.f r11, 10(vr0)
001dd0  7e0006e0  vmmov mr0, r12
001dd4  1f060004  addli r12, zero, 512
001dd8  6a236130  vor.u.mh vr6{mr0}, r2, vr6
001ddc  0f810500  exp.f.rn r2, r11
001de0  fa15b040  vextracti.f r11, 11(vr0)
001de4  7e0006e0  vmmov mr0, r12
001de8  1f060008  addli r12, zero, 1024
001dec  6a236430  vor.u.mh vr6{mr0}, r8, vr6
001df0  0f840500  exp.f.rn r8, r11
001df4  fa15c040  vextracti.f r11, 12(vr0)
001df8  7e0006e0  vmmov mr0, r12
001dfc  1f060010  addli r12, zero, 2048
001e00  6a236130  vor.u.mh vr6{mr0}, r2, vr6
001e04  0f810500  exp.f.rn r2, r11
001e08  fa15d040  vextracti.f r11, 13(vr0)
001e0c  7e0006e0  vmmov mr0, r12
001e10  7a16f040  vextracti.f r12, 15(vr0)
001e14  6a236430  vor.u.mh vr6{mr0}, r8, vr6
001e18  0f840500  exp.f.rn r8, r11
001e1c  fa15e040  vextracti.f r11, 14(vr0)
001e20  7e0007e0  vmmov mr0, r14
001e24  1f070040  addli r14, zero, 8192
001e28  6a236130  vor.u.mh vr6{mr0}, r2, vr6
001e2c  0f810500  exp.f.rn r2, r11
001e30  9f050fd5  addli r11, r30, -5504
001e34  7e0007e0  vmmov mr0, r14
001e38  2b470000  lui r14, 4
001e3c  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001e40  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
001e44  fa150040  vextracti.f r11, 0(vr0)
001e48  6a236430  vor.u.mh vr6{mr0}, r8, vr6
001e4c  0f040600  exp.f.rn r8, r12
001e50  7e0007e0  vmmov mr0, r14
001e54  7a161040  vextracti.f r12, 1(vr0)
001e58  2b870000  lui r14, 8
001e5c  8f850500  exp.f.rn r11, r11
001e60  6a236130  vor.u.mh vr6{mr0}, r2, vr6
001e64  7e0007e0  vmmov mr0, r14
001e68  0f010600  exp.f.rn r2, r12
001e6c  7a162040  vextracti.f r12, 2(vr0)
001e70  1f070020  addli r14, zero, 4096
001e74  6a236430  vor.u.mh vr6{mr0}, r8, vr6
001e78  1f140000  addli r8, zero, 1
001e7c  7e0004e0  vmmov mr0, r8
001e80  0f040600  exp.f.rn r8, r12
001e84  1f260000  addli r12, zero, 2
001e88  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
001e8c  fa153040  vextracti.f r11, 3(vr0)
001e90  7e0006e0  vmmov mr0, r12
001e94  1f460000  addli r12, zero, 4
001e98  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001e9c  0f810500  exp.f.rn r2, r11
001ea0  fa154040  vextracti.f r11, 4(vr0)
001ea4  7e0006e0  vmmov mr0, r12
001ea8  1f062000  addli r12, zero, 16
001eac  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001eb0  0f840500  exp.f.rn r8, r11
001eb4  fa155040  vextracti.f r11, 5(vr0)
001eb8  7e0006e0  vmmov mr0, r12
001ebc  1f068000  addli r12, zero, 64
001ec0  ea201136  vor.u.mh vr1{mr3}, r2, vr1
001ec4  0f810500  exp.f.rn r2, r11
001ec8  fa156040  vextracti.f r11, 6(vr0)
001ecc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001ed0  0f840500  exp.f.rn r8, r11
001ed4  fa157040  vextracti.f r11, 7(vr0)
001ed8  7e0006e0  vmmov mr0, r12
001edc  1f060001  addli r12, zero, 128
001ee0  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001ee4  0f810500  exp.f.rn r2, r11
001ee8  fa158040  vextracti.f r11, 8(vr0)
001eec  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001ef0  0f840500  exp.f.rn r8, r11
001ef4  fa159040  vextracti.f r11, 9(vr0)
001ef8  7e0006e0  vmmov mr0, r12
001efc  1f060002  addli r12, zero, 256
001f00  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001f04  0f810500  exp.f.rn r2, r11
001f08  fa15a040  vextracti.f r11, 10(vr0)
001f0c  7e0006e0  vmmov mr0, r12
001f10  1f060004  addli r12, zero, 512
001f14  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001f18  0f840500  exp.f.rn r8, r11
001f1c  fa15b040  vextracti.f r11, 11(vr0)
001f20  7e0006e0  vmmov mr0, r12
001f24  1f060008  addli r12, zero, 1024
001f28  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001f2c  0f810500  exp.f.rn r2, r11
001f30  fa15c040  vextracti.f r11, 12(vr0)
001f34  7e0006e0  vmmov mr0, r12
001f38  1f060010  addli r12, zero, 2048
001f3c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001f40  0f840500  exp.f.rn r8, r11
001f44  fa15d040  vextracti.f r11, 13(vr0)
001f48  7e0006e0  vmmov mr0, r12
001f4c  7a16f040  vextracti.f r12, 15(vr0)
001f50  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001f54  0f810500  exp.f.rn r2, r11
001f58  fa15e040  vextracti.f r11, 14(vr0)
001f5c  7e0007e0  vmmov mr0, r14
001f60  1f070040  addli r14, zero, 8192
001f64  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001f68  0f840500  exp.f.rn r8, r11
001f6c  9f058fd6  addli r11, r30, -5312
001f70  7e0007e0  vmmov mr0, r14
001f74  2b470000  lui r14, 4
001f78  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001f7c  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
001f80  fa150040  vextracti.f r11, 0(vr0)
001f84  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001f88  0f010600  exp.f.rn r2, r12
001f8c  7e0007e0  vmmov mr0, r14
001f90  2b870000  lui r14, 8
001f94  7a161040  vextracti.f r12, 1(vr0)
001f98  8f850500  exp.f.rn r11, r11
001f9c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001fa0  7e0007e0  vmmov mr0, r14
001fa4  0f040600  exp.f.rn r8, r12
001fa8  7a162040  vextracti.f r12, 2(vr0)
001fac  1f070020  addli r14, zero, 4096
001fb0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001fb4  1f018fd6  addli r2, r30, -5312
001fb8  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
001fbc  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001fc0  1f110000  addli r2, zero, 1
001fc4  7e0101e0  vmmov mr2, r2
001fc8  0f010600  exp.f.rn r2, r12
001fcc  1f260000  addli r12, zero, 2
001fd0  eaa01534  vor.u.mh vr1{mr2}, r11, vr1
001fd4  fa153040  vextracti.f r11, 3(vr0)
001fd8  7e0006e0  vmmov mr0, r12
001fdc  1f460000  addli r12, zero, 4
001fe0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
001fe4  0f840500  exp.f.rn r8, r11
001fe8  fa154040  vextracti.f r11, 4(vr0)
001fec  7e0006e0  vmmov mr0, r12
001ff0  1f062000  addli r12, zero, 16
001ff4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001ff8  0f810500  exp.f.rn r2, r11
001ffc  fa155040  vextracti.f r11, 5(vr0)
002000  7e0006e0  vmmov mr0, r12
002004  1f064000  addli r12, zero, 32
002008  ea201436  vor.u.mh vr1{mr3}, r8, vr1
00200c  0f840500  exp.f.rn r8, r11
002010  fa156040  vextracti.f r11, 6(vr0)
002014  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002018  0f810500  exp.f.rn r2, r11
00201c  fa157040  vextracti.f r11, 7(vr0)
002020  7e0006e0  vmmov mr0, r12
002024  1f068000  addli r12, zero, 64
002028  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00202c  0f840500  exp.f.rn r8, r11
002030  fa158040  vextracti.f r11, 8(vr0)
002034  7e0006e0  vmmov mr0, r12
002038  1f060001  addli r12, zero, 128
00203c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002040  0f810500  exp.f.rn r2, r11
002044  fa159040  vextracti.f r11, 9(vr0)
002048  7e0006e0  vmmov mr0, r12
00204c  1f060002  addli r12, zero, 256
002050  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002054  0f840500  exp.f.rn r8, r11
002058  fa15a040  vextracti.f r11, 10(vr0)
00205c  7e0006e0  vmmov mr0, r12
002060  1f060004  addli r12, zero, 512
002064  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002068  0f810500  exp.f.rn r2, r11
00206c  fa15b040  vextracti.f r11, 11(vr0)
002070  7e0006e0  vmmov mr0, r12
002074  1f060008  addli r12, zero, 1024
002078  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00207c  0f840500  exp.f.rn r8, r11
002080  fa15c040  vextracti.f r11, 12(vr0)
002084  7e0006e0  vmmov mr0, r12
002088  1f060010  addli r12, zero, 2048
00208c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002090  0f810500  exp.f.rn r2, r11
002094  fa15d040  vextracti.f r11, 13(vr0)
002098  7e0006e0  vmmov mr0, r12
00209c  7a16f040  vextracti.f r12, 15(vr0)
0020a0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0020a4  0f840500  exp.f.rn r8, r11
0020a8  fa15e040  vextracti.f r11, 14(vr0)
0020ac  7e0007e0  vmmov mr0, r14
0020b0  1f070040  addli r14, zero, 8192
0020b4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0020b8  0f810500  exp.f.rn r2, r11
0020bc  9f058fd7  addli r11, r30, -5184
0020c0  7e0007e0  vmmov mr0, r14
0020c4  2b470000  lui r14, 4
0020c8  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
0020cc  fe0107e0  vmmov mr3, r14
0020d0  2b870000  lui r14, 8
0020d4  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0020d8  fa150040  vextracti.f r11, 0(vr0)
0020dc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0020e0  0f040600  exp.f.rn r8, r12
0020e4  7a161040  vextracti.f r12, 1(vr0)
0020e8  8f850500  exp.f.rn r11, r11
0020ec  ea201136  vor.u.mh vr1{mr3}, r2, vr1
0020f0  fe0107e0  vmmov mr3, r14
0020f4  0f010600  exp.f.rn r2, r12
0020f8  7a162040  vextracti.f r12, 2(vr0)
0020fc  1f070020  addli r14, zero, 4096
002100  ea201436  vor.u.mh vr1{mr3}, r8, vr1
002104  1f048fd7  addli r8, r30, -5184
002108  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
00210c  92302002  vadd.s.mz vr1{mr1}, zero, vr2
002110  0f040600  exp.f.rn r8, r12
002114  1f260000  addli r12, zero, 2
002118  fe0106e0  vmmov mr3, r12
00211c  1f460000  addli r12, zero, 4
002120  eaa01534  vor.u.mh vr1{mr2}, r11, vr1
002124  fa153040  vextracti.f r11, 3(vr0)
002128  ea201136  vor.u.mh vr1{mr3}, r2, vr1
00212c  0f810500  exp.f.rn r2, r11
002130  fa154040  vextracti.f r11, 4(vr0)
002134  fe0106e0  vmmov mr3, r12
002138  1f061000  addli r12, zero, 8
00213c  ea201436  vor.u.mh vr1{mr3}, r8, vr1
002140  0f840500  exp.f.rn r8, r11
002144  fa155040  vextracti.f r11, 5(vr0)
002148  fe0106e0  vmmov mr3, r12
00214c  1f062000  addli r12, zero, 16
002150  ea201136  vor.u.mh vr1{mr3}, r2, vr1
002154  0f810500  exp.f.rn r2, r11
002158  fa156040  vextracti.f r11, 6(vr0)
00215c  fe0106e0  vmmov mr3, r12
002160  1f064000  addli r12, zero, 32
002164  ea201436  vor.u.mh vr1{mr3}, r8, vr1
002168  0f840500  exp.f.rn r8, r11
00216c  fa157040  vextracti.f r11, 7(vr0)
002170  fe0106e0  vmmov mr3, r12
002174  1f068000  addli r12, zero, 64
002178  ea201136  vor.u.mh vr1{mr3}, r2, vr1
00217c  0f810500  exp.f.rn r2, r11
002180  fa158040  vextracti.f r11, 8(vr0)
002184  fe0106e0  vmmov mr3, r12
002188  1f060001  addli r12, zero, 128
00218c  ea201436  vor.u.mh vr1{mr3}, r8, vr1
002190  0f840500  exp.f.rn r8, r11
002194  fa159040  vextracti.f r11, 9(vr0)
002198  fe0106e0  vmmov mr3, r12
00219c  1f060002  addli r12, zero, 256
0021a0  ea201136  vor.u.mh vr1{mr3}, r2, vr1
0021a4  0f810500  exp.f.rn r2, r11
0021a8  fa15a040  vextracti.f r11, 10(vr0)
0021ac  fe0106e0  vmmov mr3, r12
0021b0  1f060004  addli r12, zero, 512
0021b4  ea201436  vor.u.mh vr1{mr3}, r8, vr1
0021b8  0f840500  exp.f.rn r8, r11
0021bc  fa15b040  vextracti.f r11, 11(vr0)
0021c0  fe0106e0  vmmov mr3, r12
0021c4  1f060008  addli r12, zero, 1024
0021c8  ea201136  vor.u.mh vr1{mr3}, r2, vr1
0021cc  0f810500  exp.f.rn r2, r11
0021d0  fa15c040  vextracti.f r11, 12(vr0)
0021d4  fe0106e0  vmmov mr3, r12
0021d8  1f060010  addli r12, zero, 2048
0021dc  ea201436  vor.u.mh vr1{mr3}, r8, vr1
0021e0  0f840500  exp.f.rn r8, r11
0021e4  fa15d040  vextracti.f r11, 13(vr0)
0021e8  fe0106e0  vmmov mr3, r12
0021ec  7a16f040  vextracti.f r12, 15(vr0)
0021f0  ea201136  vor.u.mh vr1{mr3}, r2, vr1
0021f4  0f810500  exp.f.rn r2, r11
0021f8  fa15e040  vextracti.f r11, 14(vr0)
0021fc  fe0107e0  vmmov mr3, r14
002200  2b470000  lui r14, 4
002204  ea201436  vor.u.mh vr1{mr3}, r8, vr1
002208  0f840500  exp.f.rn r8, r11
00220c  9f058fd8  addli r11, r30, -5056
002210  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
002214  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
002218  fa150040  vextracti.f r11, 0(vr0)
00221c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002220  0f010600  exp.f.rn r2, r12
002224  7e0007e0  vmmov mr0, r14
002228  2b870000  lui r14, 8
00222c  7a161040  vextracti.f r12, 1(vr0)
002230  8f850500  exp.f.rn r11, r11
002234  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002238  7e0007e0  vmmov mr0, r14
00223c  0f040600  exp.f.rn r8, r12
002240  7a162040  vextracti.f r12, 2(vr0)
002244  1f070020  addli r14, zero, 4096
002248  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00224c  1f018fd8  addli r2, r30, -5056
002250  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
002254  92302002  vadd.s.mz vr1{mr1}, zero, vr2
002258  0f010600  exp.f.rn r2, r12
00225c  1f260000  addli r12, zero, 2
002260  7e0006e0  vmmov mr0, r12
002264  1f460000  addli r12, zero, 4
002268  eaa01534  vor.u.mh vr1{mr2}, r11, vr1
00226c  fa153040  vextracti.f r11, 3(vr0)
002270  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002274  0f840500  exp.f.rn r8, r11
002278  fa154040  vextracti.f r11, 4(vr0)
00227c  7e0006e0  vmmov mr0, r12
002280  1f061000  addli r12, zero, 8
002284  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002288  0f810500  exp.f.rn r2, r11
00228c  fa155040  vextracti.f r11, 5(vr0)
002290  7e0006e0  vmmov mr0, r12
002294  1f062000  addli r12, zero, 16
002298  7e0106e0  vmmov mr2, r12
00229c  1f064000  addli r12, zero, 32
0022a0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0022a4  0f840500  exp.f.rn r8, r11
0022a8  fa156040  vextracti.f r11, 6(vr0)
0022ac  7e0006e0  vmmov mr0, r12
0022b0  1f068000  addli r12, zero, 64
0022b4  ea201134  vor.u.mh vr1{mr2}, r2, vr1
0022b8  0f810500  exp.f.rn r2, r11
0022bc  fa157040  vextracti.f r11, 7(vr0)
0022c0  7e0107e0  vmmov mr2, r14
0022c4  1f070040  addli r14, zero, 8192
0022c8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0022cc  0f840500  exp.f.rn r8, r11
0022d0  fa158040  vextracti.f r11, 8(vr0)
0022d4  7e0006e0  vmmov mr0, r12
0022d8  1f060001  addli r12, zero, 128
0022dc  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0022e0  0f810500  exp.f.rn r2, r11
0022e4  fa159040  vextracti.f r11, 9(vr0)
0022e8  7e0006e0  vmmov mr0, r12
0022ec  1f060002  addli r12, zero, 256
0022f0  fe0106e0  vmmov mr3, r12
0022f4  1f060004  addli r12, zero, 512
0022f8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0022fc  0f840500  exp.f.rn r8, r11
002300  fa15a040  vextracti.f r11, 10(vr0)
002304  7e0006e0  vmmov mr0, r12
002308  1f060008  addli r12, zero, 1024
00230c  ea201136  vor.u.mh vr1{mr3}, r2, vr1
002310  0f810500  exp.f.rn r2, r11
002314  fa15b040  vextracti.f r11, 11(vr0)
002318  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00231c  0f840500  exp.f.rn r8, r11
002320  fa15c040  vextracti.f r11, 12(vr0)
002324  7e0006e0  vmmov mr0, r12
002328  1f060010  addli r12, zero, 2048
00232c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002330  0f810500  exp.f.rn r2, r11
002334  fa15d040  vextracti.f r11, 13(vr0)
002338  7e0006e0  vmmov mr0, r12
00233c  7a16f040  vextracti.f r12, 15(vr0)
002340  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002344  0f840500  exp.f.rn r8, r11
002348  fa15e040  vextracti.f r11, 14(vr0)
00234c  7e0007e0  vmmov mr0, r14
002350  2b470000  lui r14, 4
002354  ea201134  vor.u.mh vr1{mr2}, r2, vr1
002358  0f810500  exp.f.rn r2, r11
00235c  9f058fd9  addli r11, r30, -4928
002360  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
002364  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
002368  fa150040  vextracti.f r11, 0(vr0)
00236c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002370  0f040600  exp.f.rn r8, r12
002374  7e0007e0  vmmov mr0, r14
002378  2b870000  lui r14, 8
00237c  7a161040  vextracti.f r12, 1(vr0)
002380  8f850500  exp.f.rn r11, r11
002384  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002388  7e0007e0  vmmov mr0, r14
00238c  0f010600  exp.f.rn r2, r12
002390  7a162040  vextracti.f r12, 2(vr0)
002394  1f070040  addli r14, zero, 8192
002398  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00239c  1f048fd0  addli r8, r30, -6080
0023a0  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
0023a4  92302002  vadd.s.mz vr1{mr1}, zero, vr2
0023a8  1f140000  addli r8, zero, 1
0023ac  7e0004e0  vmmov mr0, r8
0023b0  0f040600  exp.f.rn r8, r12
0023b4  1f260000  addli r12, zero, 2
0023b8  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
0023bc  fa153040  vextracti.f r11, 3(vr0)
0023c0  7e0006e0  vmmov mr0, r12
0023c4  1f460000  addli r12, zero, 4
0023c8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0023cc  0f810500  exp.f.rn r2, r11
0023d0  fa154040  vextracti.f r11, 4(vr0)
0023d4  7e0006e0  vmmov mr0, r12
0023d8  1f061000  addli r12, zero, 8
0023dc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0023e0  0f840500  exp.f.rn r8, r11
0023e4  fa155040  vextracti.f r11, 5(vr0)
0023e8  7e0006e0  vmmov mr0, r12
0023ec  1f062000  addli r12, zero, 16
0023f0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0023f4  0f810500  exp.f.rn r2, r11
0023f8  fa156040  vextracti.f r11, 6(vr0)
0023fc  7e0006e0  vmmov mr0, r12
002400  1f064000  addli r12, zero, 32
002404  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002408  0f840500  exp.f.rn r8, r11
00240c  fa157040  vextracti.f r11, 7(vr0)
002410  7e0006e0  vmmov mr0, r12
002414  1f068000  addli r12, zero, 64
002418  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00241c  0f810500  exp.f.rn r2, r11
002420  fa158040  vextracti.f r11, 8(vr0)
002424  7e0006e0  vmmov mr0, r12
002428  1f060001  addli r12, zero, 128
00242c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002430  0f840500  exp.f.rn r8, r11
002434  fa159040  vextracti.f r11, 9(vr0)
002438  7e0006e0  vmmov mr0, r12
00243c  1f060004  addli r12, zero, 512
002440  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002444  0f810500  exp.f.rn r2, r11
002448  fa15a040  vextracti.f r11, 10(vr0)
00244c  7e0006e0  vmmov mr0, r12
002450  1f060008  addli r12, zero, 1024
002454  ea201436  vor.u.mh vr1{mr3}, r8, vr1
002458  0f840500  exp.f.rn r8, r11
00245c  fa15b040  vextracti.f r11, 11(vr0)
002460  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002464  0f810500  exp.f.rn r2, r11
002468  fa15c040  vextracti.f r11, 12(vr0)
00246c  7e0006e0  vmmov mr0, r12
002470  1f060010  addli r12, zero, 2048
002474  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002478  0f840500  exp.f.rn r8, r11
00247c  fa15d040  vextracti.f r11, 13(vr0)
002480  7e0006e0  vmmov mr0, r12
002484  7a16f040  vextracti.f r12, 15(vr0)
002488  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00248c  0f810500  exp.f.rn r2, r11
002490  fa15e040  vextracti.f r11, 14(vr0)
002494  7e0007e0  vmmov mr0, r14
002498  2b470000  lui r14, 4
00249c  ea201434  vor.u.mh vr1{mr2}, r8, vr1
0024a0  0f840500  exp.f.rn r8, r11
0024a4  9f058fda  addli r11, r30, -4800
0024a8  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
0024ac  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0024b0  fa150040  vextracti.f r11, 0(vr0)
0024b4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0024b8  0f010600  exp.f.rn r2, r12
0024bc  7e0007e0  vmmov mr0, r14
0024c0  2b870000  lui r14, 8
0024c4  7a161040  vextracti.f r12, 1(vr0)
0024c8  8f850500  exp.f.rn r11, r11
0024cc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0024d0  7e0007e0  vmmov mr0, r14
0024d4  0f040600  exp.f.rn r8, r12
0024d8  7a162040  vextracti.f r12, 2(vr0)
0024dc  1f070020  addli r14, zero, 4096
0024e0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0024e4  1f018fda  addli r2, r30, -4800
0024e8  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0024ec  92302002  vadd.s.mz vr1{mr1}, zero, vr2
0024f0  1f110000  addli r2, zero, 1
0024f4  7e0001e0  vmmov mr0, r2
0024f8  0f010600  exp.f.rn r2, r12
0024fc  1f260000  addli r12, zero, 2
002500  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
002504  fa153040  vextracti.f r11, 3(vr0)
002508  7e0006e0  vmmov mr0, r12
00250c  1f460000  addli r12, zero, 4
002510  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002514  0f840500  exp.f.rn r8, r11
002518  fa154040  vextracti.f r11, 4(vr0)
00251c  7e0006e0  vmmov mr0, r12
002520  1f061000  addli r12, zero, 8
002524  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002528  0f810500  exp.f.rn r2, r11
00252c  fa155040  vextracti.f r11, 5(vr0)
002530  7e0006e0  vmmov mr0, r12
002534  1f062000  addli r12, zero, 16
002538  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00253c  0f840500  exp.f.rn r8, r11
002540  fa156040  vextracti.f r11, 6(vr0)
002544  7e0006e0  vmmov mr0, r12
002548  1f064000  addli r12, zero, 32
00254c  7e0106e0  vmmov mr2, r12
002550  1f068000  addli r12, zero, 64
002554  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002558  0f810500  exp.f.rn r2, r11
00255c  fa157040  vextracti.f r11, 7(vr0)
002560  7e0001c0  vmmov mr0, mr2
002564  7e0106e0  vmmov mr2, r12
002568  1f060001  addli r12, zero, 128
00256c  fe0106e0  vmmov mr3, r12
002570  1f060002  addli r12, zero, 256
002574  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002578  0f840500  exp.f.rn r8, r11
00257c  fa158040  vextracti.f r11, 8(vr0)
002580  7e0006e0  vmmov mr0, r12
002584  1f060004  addli r12, zero, 512
002588  ea201134  vor.u.mh vr1{mr2}, r2, vr1
00258c  0f810500  exp.f.rn r2, r11
002590  fa159040  vextracti.f r11, 9(vr0)
002594  ea201436  vor.u.mh vr1{mr3}, r8, vr1
002598  0f840500  exp.f.rn r8, r11
00259c  fa15a040  vextracti.f r11, 10(vr0)
0025a0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0025a4  0f810500  exp.f.rn r2, r11
0025a8  fa15b040  vextracti.f r11, 11(vr0)
0025ac  7e0006e0  vmmov mr0, r12
0025b0  1f060008  addli r12, zero, 1024
0025b4  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0025b8  0f840500  exp.f.rn r8, r11
0025bc  fa15c040  vextracti.f r11, 12(vr0)
0025c0  7e0006e0  vmmov mr0, r12
0025c4  1f060010  addli r12, zero, 2048
0025c8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0025cc  0f810500  exp.f.rn r2, r11
0025d0  fa15d040  vextracti.f r11, 13(vr0)
0025d4  7e0006e0  vmmov mr0, r12
0025d8  7a16f040  vextracti.f r12, 15(vr0)
0025dc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0025e0  0f840500  exp.f.rn r8, r11
0025e4  fa15e040  vextracti.f r11, 14(vr0)
0025e8  7e0007e0  vmmov mr0, r14
0025ec  1f070040  addli r14, zero, 8192
0025f0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0025f4  0f810500  exp.f.rn r2, r11
0025f8  9f050fd2  addli r11, r30, -5888
0025fc  7e0007e0  vmmov mr0, r14
002600  2b470000  lui r14, 4
002604  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
002608  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
00260c  fa150040  vextracti.f r11, 0(vr0)
002610  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002614  0f040600  exp.f.rn r8, r12
002618  7e0007e0  vmmov mr0, r14
00261c  2b870000  lui r14, 8
002620  7a161040  vextracti.f r12, 1(vr0)
002624  8f850500  exp.f.rn r11, r11
002628  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00262c  7e0007e0  vmmov mr0, r14
002630  0f010600  exp.f.rn r2, r12
002634  7a162040  vextracti.f r12, 2(vr0)
002638  1f070020  addli r14, zero, 4096
00263c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002640  1f048fd9  addli r8, r30, -4928
002644  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
002648  92302002  vadd.s.mz vr1{mr1}, zero, vr2
00264c  1f140000  addli r8, zero, 1
002650  7e0004e0  vmmov mr0, r8
002654  0f040600  exp.f.rn r8, r12
002658  1f260000  addli r12, zero, 2
00265c  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
002660  fa153040  vextracti.f r11, 3(vr0)
002664  7e0006e0  vmmov mr0, r12
002668  1f460000  addli r12, zero, 4
00266c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002670  0f810500  exp.f.rn r2, r11
002674  fa154040  vextracti.f r11, 4(vr0)
002678  7e0006e0  vmmov mr0, r12
00267c  1f061000  addli r12, zero, 8
002680  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002684  0f840500  exp.f.rn r8, r11
002688  fa155040  vextracti.f r11, 5(vr0)
00268c  7e0006e0  vmmov mr0, r12
002690  1f062000  addli r12, zero, 16
002694  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002698  0f810500  exp.f.rn r2, r11
00269c  fa156040  vextracti.f r11, 6(vr0)
0026a0  7e0006e0  vmmov mr0, r12
0026a4  1f064000  addli r12, zero, 32
0026a8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0026ac  0f840500  exp.f.rn r8, r11
0026b0  fa157040  vextracti.f r11, 7(vr0)
0026b4  7e0006e0  vmmov mr0, r12
0026b8  1f060002  addli r12, zero, 256
0026bc  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0026c0  0f810500  exp.f.rn r2, r11
0026c4  fa158040  vextracti.f r11, 8(vr0)
0026c8  7e0006e0  vmmov mr0, r12
0026cc  1f060004  addli r12, zero, 512
0026d0  ea201434  vor.u.mh vr1{mr2}, r8, vr1
0026d4  0f840500  exp.f.rn r8, r11
0026d8  fa159040  vextracti.f r11, 9(vr0)
0026dc  ea201136  vor.u.mh vr1{mr3}, r2, vr1
0026e0  0f810500  exp.f.rn r2, r11
0026e4  fa15a040  vextracti.f r11, 10(vr0)
0026e8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0026ec  0f840500  exp.f.rn r8, r11
0026f0  fa15b040  vextracti.f r11, 11(vr0)
0026f4  7e0006e0  vmmov mr0, r12
0026f8  1f060008  addli r12, zero, 1024
0026fc  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002700  0f810500  exp.f.rn r2, r11
002704  fa15c040  vextracti.f r11, 12(vr0)
002708  7e0006e0  vmmov mr0, r12
00270c  1f060010  addli r12, zero, 2048
002710  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002714  0f840500  exp.f.rn r8, r11
002718  fa15d040  vextracti.f r11, 13(vr0)
00271c  7e0006e0  vmmov mr0, r12
002720  7a16f040  vextracti.f r12, 15(vr0)
002724  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002728  0f810500  exp.f.rn r2, r11
00272c  fa15e040  vextracti.f r11, 14(vr0)
002730  7e0007e0  vmmov mr0, r14
002734  1f070040  addli r14, zero, 8192
002738  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00273c  0f840500  exp.f.rn r8, r11
002740  9f058fd2  addli r11, r30, -5824
002744  7e0007e0  vmmov mr0, r14
002748  2b470000  lui r14, 4
00274c  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
002750  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
002754  fa150040  vextracti.f r11, 0(vr0)
002758  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00275c  0f010600  exp.f.rn r2, r12
002760  7e0007e0  vmmov mr0, r14
002764  2b870000  lui r14, 8
002768  7a161040  vextracti.f r12, 1(vr0)
00276c  8f850500  exp.f.rn r11, r11
002770  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002774  7e0007e0  vmmov mr0, r14
002778  0f040600  exp.f.rn r8, r12
00277c  7a162040  vextracti.f r12, 2(vr0)
002780  1f070020  addli r14, zero, 4096
002784  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002788  1f018fd2  addli r2, r30, -5824
00278c  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
002790  1f110000  addli r2, zero, 1
002794  fe0101e0  vmmov mr3, r2
002798  0f010600  exp.f.rn r2, r12
00279c  1f260000  addli r12, zero, 2
0027a0  eaa25536  vor.u.mh vr5{mr3}, r11, vr5
0027a4  fa153040  vextracti.f r11, 3(vr0)
0027a8  7e0006e0  vmmov mr0, r12
0027ac  1f460000  addli r12, zero, 4
0027b0  ea225430  vor.u.mh vr5{mr0}, r8, vr5
0027b4  0f840500  exp.f.rn r8, r11
0027b8  fa154040  vextracti.f r11, 4(vr0)
0027bc  7e0006e0  vmmov mr0, r12
0027c0  1f061000  addli r12, zero, 8
0027c4  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0027c8  0f810500  exp.f.rn r2, r11
0027cc  fa155040  vextracti.f r11, 5(vr0)
0027d0  7e0006e0  vmmov mr0, r12
0027d4  1f062000  addli r12, zero, 16
0027d8  ea225430  vor.u.mh vr5{mr0}, r8, vr5
0027dc  0f840500  exp.f.rn r8, r11
0027e0  fa156040  vextracti.f r11, 6(vr0)
0027e4  7e0006e0  vmmov mr0, r12
0027e8  1f064000  addli r12, zero, 32
0027ec  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0027f0  0f810500  exp.f.rn r2, r11
0027f4  fa157040  vextracti.f r11, 7(vr0)
0027f8  7e0006e0  vmmov mr0, r12
0027fc  1f060001  addli r12, zero, 128
002800  ea225430  vor.u.mh vr5{mr0}, r8, vr5
002804  0f840500  exp.f.rn r8, r11
002808  fa158040  vextracti.f r11, 8(vr0)
00280c  7e0006e0  vmmov mr0, r12
002810  1f060002  addli r12, zero, 256
002814  ea225134  vor.u.mh vr5{mr2}, r2, vr5
002818  0f810500  exp.f.rn r2, r11
00281c  fa159040  vextracti.f r11, 9(vr0)
002820  ea225430  vor.u.mh vr5{mr0}, r8, vr5
002824  0f840500  exp.f.rn r8, r11
002828  fa15a040  vextracti.f r11, 10(vr0)
00282c  7e0006e0  vmmov mr0, r12
002830  1f060004  addli r12, zero, 512
002834  ea225130  vor.u.mh vr5{mr0}, r2, vr5
002838  0f810500  exp.f.rn r2, r11
00283c  fa15b040  vextracti.f r11, 11(vr0)
002840  7e0006e0  vmmov mr0, r12
002844  1f060008  addli r12, zero, 1024
002848  ea225430  vor.u.mh vr5{mr0}, r8, vr5
00284c  0f840500  exp.f.rn r8, r11
002850  fa15c040  vextracti.f r11, 12(vr0)
002854  7e0006e0  vmmov mr0, r12
002858  1f060010  addli r12, zero, 2048
00285c  7e0106e0  vmmov mr2, r12
002860  7a16f040  vextracti.f r12, 15(vr0)
002864  ea225130  vor.u.mh vr5{mr0}, r2, vr5
002868  0f810500  exp.f.rn r2, r11
00286c  fa15d040  vextracti.f r11, 13(vr0)
002870  ea225434  vor.u.mh vr5{mr2}, r8, vr5
002874  0f840500  exp.f.rn r8, r11
002878  fa15e040  vextracti.f r11, 14(vr0)
00287c  7e0107e0  vmmov mr2, r14
002880  1f070040  addli r14, zero, 8192
002884  ea225134  vor.u.mh vr5{mr2}, r2, vr5
002888  0f810500  exp.f.rn r2, r11
00288c  9f050fd3  addli r11, r30, -5760
002890  7e0107e0  vmmov mr2, r14
002894  2b470000  lui r14, 4
002898  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
00289c  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0028a0  fa150040  vextracti.f r11, 0(vr0)
0028a4  ea225434  vor.u.mh vr5{mr2}, r8, vr5
0028a8  0f040600  exp.f.rn r8, r12
0028ac  7a161040  vextracti.f r12, 1(vr0)
0028b0  7e0107e0  vmmov mr2, r14
0028b4  2b870000  lui r14, 8
0028b8  8f850500  exp.f.rn r11, r11
0028bc  ea225134  vor.u.mh vr5{mr2}, r2, vr5
0028c0  0f010600  exp.f.rn r2, r12
0028c4  7a162040  vextracti.f r12, 2(vr0)
0028c8  7e0107e0  vmmov mr2, r14
0028cc  1f070020  addli r14, zero, 4096
0028d0  ea225434  vor.u.mh vr5{mr2}, r8, vr5
0028d4  0f040600  exp.f.rn r8, r12
0028d8  1f260000  addli r12, zero, 2
0028dc  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
0028e0  fa153040  vextracti.f r11, 3(vr0)
0028e4  7e0106e0  vmmov mr2, r12
0028e8  1f460000  addli r12, zero, 4
0028ec  ea213134  vor.u.mh vr3{mr2}, r2, vr3
0028f0  0f810500  exp.f.rn r2, r11
0028f4  fa154040  vextracti.f r11, 4(vr0)
0028f8  7e0106e0  vmmov mr2, r12
0028fc  1f061000  addli r12, zero, 8
002900  ea213434  vor.u.mh vr3{mr2}, r8, vr3
002904  0f840500  exp.f.rn r8, r11
002908  fa155040  vextracti.f r11, 5(vr0)
00290c  7e0106e0  vmmov mr2, r12
002910  1f062000  addli r12, zero, 16
002914  ea213134  vor.u.mh vr3{mr2}, r2, vr3
002918  0f810500  exp.f.rn r2, r11
00291c  fa156040  vextracti.f r11, 6(vr0)
002920  7e0106e0  vmmov mr2, r12
002924  1f064000  addli r12, zero, 32
002928  ea213434  vor.u.mh vr3{mr2}, r8, vr3
00292c  0f840500  exp.f.rn r8, r11
002930  fa157040  vextracti.f r11, 7(vr0)
002934  7e0106e0  vmmov mr2, r12
002938  1f068000  addli r12, zero, 64
00293c  ea213134  vor.u.mh vr3{mr2}, r2, vr3
002940  0f810500  exp.f.rn r2, r11
002944  fa158040  vextracti.f r11, 8(vr0)
002948  7e0106e0  vmmov mr2, r12
00294c  1f060001  addli r12, zero, 128
002950  ea213434  vor.u.mh vr3{mr2}, r8, vr3
002954  0f840500  exp.f.rn r8, r11
002958  fa159040  vextracti.f r11, 9(vr0)
00295c  7e0106e0  vmmov mr2, r12
002960  1f060002  addli r12, zero, 256
002964  ea213134  vor.u.mh vr3{mr2}, r2, vr3
002968  0f810500  exp.f.rn r2, r11
00296c  fa15a040  vextracti.f r11, 10(vr0)
002970  7e0106e0  vmmov mr2, r12
002974  1f060004  addli r12, zero, 512
002978  ea213434  vor.u.mh vr3{mr2}, r8, vr3
00297c  0f840500  exp.f.rn r8, r11
002980  fa15b040  vextracti.f r11, 11(vr0)
002984  7e0106e0  vmmov mr2, r12
002988  1f060010  addli r12, zero, 2048
00298c  ea213134  vor.u.mh vr3{mr2}, r2, vr3
002990  0f810500  exp.f.rn r2, r11
002994  fa15c040  vextracti.f r11, 12(vr0)
002998  ea213430  vor.u.mh vr3{mr0}, r8, vr3
00299c  0f840500  exp.f.rn r8, r11
0029a0  fa15d040  vextracti.f r11, 13(vr0)
0029a4  fe0100c0  vmmov mr3, mr0
0029a8  7e0006e0  vmmov mr0, r12
0029ac  7a16f040  vextracti.f r12, 15(vr0)
0029b0  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0029b4  0f810500  exp.f.rn r2, r11
0029b8  fa15e040  vextracti.f r11, 14(vr0)
0029bc  7e0007e0  vmmov mr0, r14
0029c0  1f070040  addli r14, zero, 8192
0029c4  12904002  vadd.f.mz.rn vr0{mr1}, r1, vr4
0029c8  ea213430  vor.u.mh vr3{mr0}, r8, vr3
0029cc  0f840500  exp.f.rn r8, r11
0029d0  7e0007e0  vmmov mr0, r14
0029d4  fa150040  vextracti.f r11, 0(vr0)
0029d8  2b470000  lui r14, 4
0029dc  8f850500  exp.f.rn r11, r11
0029e0  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0029e4  0f010600  exp.f.rn r2, r12
0029e8  7e0007e0  vmmov mr0, r14
0029ec  7a161040  vextracti.f r12, 1(vr0)
0029f0  2b870000  lui r14, 8
0029f4  ea213430  vor.u.mh vr3{mr0}, r8, vr3
0029f8  7e0007e0  vmmov mr0, r14
0029fc  0f040600  exp.f.rn r8, r12
002a00  7a162040  vextracti.f r12, 2(vr0)
002a04  1f070020  addli r14, zero, 4096
002a08  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002a0c  1f110000  addli r2, zero, 1
002a10  7e0001e0  vmmov mr0, r2
002a14  0f010600  exp.f.rn r2, r12
002a18  1f260000  addli r12, zero, 2
002a1c  eaa37530  vor.u.mh vr7{mr0}, r11, vr7
002a20  fa153040  vextracti.f r11, 3(vr0)
002a24  7e0006e0  vmmov mr0, r12
002a28  1f460000  addli r12, zero, 4
002a2c  ea237430  vor.u.mh vr7{mr0}, r8, vr7
002a30  0f840500  exp.f.rn r8, r11
002a34  fa154040  vextracti.f r11, 4(vr0)
002a38  7e0006e0  vmmov mr0, r12
002a3c  1f061000  addli r12, zero, 8
002a40  ea237130  vor.u.mh vr7{mr0}, r2, vr7
002a44  0f810500  exp.f.rn r2, r11
002a48  fa155040  vextracti.f r11, 5(vr0)
002a4c  7e0006e0  vmmov mr0, r12
002a50  1f062000  addli r12, zero, 16
002a54  ea237430  vor.u.mh vr7{mr0}, r8, vr7
002a58  0f840500  exp.f.rn r8, r11
002a5c  fa156040  vextracti.f r11, 6(vr0)
002a60  7e0006e0  vmmov mr0, r12
002a64  1f064000  addli r12, zero, 32
002a68  ea237130  vor.u.mh vr7{mr0}, r2, vr7
002a6c  0f810500  exp.f.rn r2, r11
002a70  fa157040  vextracti.f r11, 7(vr0)
002a74  7e0006e0  vmmov mr0, r12
002a78  1f068000  addli r12, zero, 64
002a7c  ea237430  vor.u.mh vr7{mr0}, r8, vr7
002a80  0f840500  exp.f.rn r8, r11
002a84  fa158040  vextracti.f r11, 8(vr0)
002a88  7e0006e0  vmmov mr0, r12
002a8c  1f060001  addli r12, zero, 128
002a90  ea237130  vor.u.mh vr7{mr0}, r2, vr7
002a94  0f810500  exp.f.rn r2, r11
002a98  fa159040  vextracti.f r11, 9(vr0)
002a9c  7e0006e0  vmmov mr0, r12
002aa0  1f060002  addli r12, zero, 256
002aa4  ea237430  vor.u.mh vr7{mr0}, r8, vr7
002aa8  0f840500  exp.f.rn r8, r11
002aac  fa15a040  vextracti.f r11, 10(vr0)
002ab0  7e0006e0  vmmov mr0, r12
002ab4  1f060010  addli r12, zero, 2048
002ab8  ea237130  vor.u.mh vr7{mr0}, r2, vr7
002abc  0f810500  exp.f.rn r2, r11
002ac0  fa15b040  vextracti.f r11, 11(vr0)
002ac4  7e0006e0  vmmov mr0, r12
002ac8  7a16f040  vextracti.f r12, 15(vr0)
002acc  ea237434  vor.u.mh vr7{mr2}, r8, vr7
002ad0  0f840500  exp.f.rn r8, r11
002ad4  fa15c040  vextracti.f r11, 12(vr0)
002ad8  ea237136  vor.u.mh vr7{mr3}, r2, vr7
002adc  0f810500  exp.f.rn r2, r11
002ae0  fa15d040  vextracti.f r11, 13(vr0)
002ae4  ea237430  vor.u.mh vr7{mr0}, r8, vr7
002ae8  0f840500  exp.f.rn r8, r11
002aec  fa15e040  vextracti.f r11, 14(vr0)
002af0  7e0007e0  vmmov mr0, r14
002af4  1f070040  addli r14, zero, 8192
002af8  ea237130  vor.u.mh vr7{mr0}, r2, vr7
002afc  0f810500  exp.f.rn r2, r11
002b00  9f050fd1  addli r11, r30, -6016
002b04  7e0007e0  vmmov mr0, r14
002b08  2b470000  lui r14, 4
002b0c  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
002b10  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
002b14  fa150040  vextracti.f r11, 0(vr0)
002b18  ea237430  vor.u.mh vr7{mr0}, r8, vr7
002b1c  0f040600  exp.f.rn r8, r12
002b20  7e0007e0  vmmov mr0, r14
002b24  7a161040  vextracti.f r12, 1(vr0)
002b28  2b870000  lui r14, 8
002b2c  8f850500  exp.f.rn r11, r11
002b30  ea237130  vor.u.mh vr7{mr0}, r2, vr7
002b34  7e0007e0  vmmov mr0, r14
002b38  0f010600  exp.f.rn r2, r12
002b3c  7a162040  vextracti.f r12, 2(vr0)
002b40  1f070020  addli r14, zero, 4096
002b44  ea237430  vor.u.mh vr7{mr0}, r8, vr7
002b48  1f140000  addli r8, zero, 1
002b4c  7e0004e0  vmmov mr0, r8
002b50  0f040600  exp.f.rn r8, r12
002b54  1f260000  addli r12, zero, 2
002b58  eaa49530  vor.u.mh vr9{mr0}, r11, vr9
002b5c  fa153040  vextracti.f r11, 3(vr0)
002b60  7e0006e0  vmmov mr0, r12
002b64  1f460000  addli r12, zero, 4
002b68  ea249130  vor.u.mh vr9{mr0}, r2, vr9
002b6c  0f810500  exp.f.rn r2, r11
002b70  fa154040  vextracti.f r11, 4(vr0)
002b74  7e0006e0  vmmov mr0, r12
002b78  1f061000  addli r12, zero, 8
002b7c  ea249430  vor.u.mh vr9{mr0}, r8, vr9
002b80  0f840500  exp.f.rn r8, r11
002b84  fa155040  vextracti.f r11, 5(vr0)
002b88  7e0006e0  vmmov mr0, r12
002b8c  1f062000  addli r12, zero, 16
002b90  ea249130  vor.u.mh vr9{mr0}, r2, vr9
002b94  0f810500  exp.f.rn r2, r11
002b98  fa156040  vextracti.f r11, 6(vr0)
002b9c  7e0006e0  vmmov mr0, r12
002ba0  1f064000  addli r12, zero, 32
002ba4  ea249430  vor.u.mh vr9{mr0}, r8, vr9
002ba8  0f840500  exp.f.rn r8, r11
002bac  fa157040  vextracti.f r11, 7(vr0)
002bb0  7e0006e0  vmmov mr0, r12
002bb4  1f068000  addli r12, zero, 64
002bb8  ea249130  vor.u.mh vr9{mr0}, r2, vr9
002bbc  0f810500  exp.f.rn r2, r11
002bc0  fa158040  vextracti.f r11, 8(vr0)
002bc4  7e0006e0  vmmov mr0, r12
002bc8  1f060001  addli r12, zero, 128
002bcc  ea249430  vor.u.mh vr9{mr0}, r8, vr9
002bd0  0f840500  exp.f.rn r8, r11
002bd4  fa159040  vextracti.f r11, 9(vr0)
002bd8  7e0006e0  vmmov mr0, r12
002bdc  1f060002  addli r12, zero, 256
002be0  ea249130  vor.u.mh vr9{mr0}, r2, vr9
002be4  0f810500  exp.f.rn r2, r11
002be8  fa15a040  vextracti.f r11, 10(vr0)
002bec  7e0006e0  vmmov mr0, r12
002bf0  1f060010  addli r12, zero, 2048
002bf4  ea249430  vor.u.mh vr9{mr0}, r8, vr9
002bf8  0f840500  exp.f.rn r8, r11
002bfc  fa15b040  vextracti.f r11, 11(vr0)
002c00  7e0006e0  vmmov mr0, r12
002c04  7a16f040  vextracti.f r12, 15(vr0)
002c08  ea249134  vor.u.mh vr9{mr2}, r2, vr9
002c0c  0f810500  exp.f.rn r2, r11
002c10  fa15c040  vextracti.f r11, 12(vr0)
002c14  ea249436  vor.u.mh vr9{mr3}, r8, vr9
002c18  0f840500  exp.f.rn r8, r11
002c1c  fa15d040  vextracti.f r11, 13(vr0)
002c20  ea249130  vor.u.mh vr9{mr0}, r2, vr9
002c24  0f810500  exp.f.rn r2, r11
002c28  fa15e040  vextracti.f r11, 14(vr0)
002c2c  7e0007e0  vmmov mr0, r14
002c30  1f070040  addli r14, zero, 8192
002c34  ea249430  vor.u.mh vr9{mr0}, r8, vr9
002c38  0f840500  exp.f.rn r8, r11
002c3c  9f058fd3  addli r11, r30, -5696
002c40  7e0007e0  vmmov mr0, r14
002c44  2b470000  lui r14, 4
002c48  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
002c4c  12920002  vadd.f.mz.rn vr4{mr1}, r1, vr0
002c50  fa150240  vextracti.f r11, 0(vr4)
002c54  12302002  vadd.s.mz vr0{mr1}, zero, vr2
002c58  ea249130  vor.u.mh vr9{mr0}, r2, vr9
002c5c  0f010600  exp.f.rn r2, r12
002c60  7e0007e0  vmmov mr0, r14
002c64  7a161240  vextracti.f r12, 1(vr4)
002c68  2b870000  lui r14, 8
002c6c  8f850500  exp.f.rn r11, r11
002c70  ea249430  vor.u.mh vr9{mr0}, r8, vr9
002c74  7e0007e0  vmmov mr0, r14
002c78  0f040600  exp.f.rn r8, r12
002c7c  7a162240  vextracti.f r12, 2(vr4)
002c80  1f070020  addli r14, zero, 4096
002c84  ea249130  vor.u.mh vr9{mr0}, r2, vr9
002c88  1f110000  addli r2, zero, 1
002c8c  7e0001e0  vmmov mr0, r2
002c90  0f010600  exp.f.rn r2, r12
002c94  1f260000  addli r12, zero, 2
002c98  6aa00530  vor.u.mh vr0{mr0}, r11, vr0
002c9c  fa153240  vextracti.f r11, 3(vr4)
002ca0  7e0006e0  vmmov mr0, r12
002ca4  1f460000  addli r12, zero, 4
002ca8  6a200430  vor.u.mh vr0{mr0}, r8, vr0
002cac  0f840500  exp.f.rn r8, r11
002cb0  fa154240  vextracti.f r11, 4(vr4)
002cb4  7e0006e0  vmmov mr0, r12
002cb8  1f061000  addli r12, zero, 8
002cbc  6a200130  vor.u.mh vr0{mr0}, r2, vr0
002cc0  0f810500  exp.f.rn r2, r11
002cc4  fa155240  vextracti.f r11, 5(vr4)
002cc8  7e0006e0  vmmov mr0, r12
002ccc  1f062000  addli r12, zero, 16
002cd0  6a200430  vor.u.mh vr0{mr0}, r8, vr0
002cd4  0f840500  exp.f.rn r8, r11
002cd8  fa156240  vextracti.f r11, 6(vr4)
002cdc  7e0006e0  vmmov mr0, r12
002ce0  1f064000  addli r12, zero, 32
002ce4  6a200130  vor.u.mh vr0{mr0}, r2, vr0
002ce8  0f810500  exp.f.rn r2, r11
002cec  fa157240  vextracti.f r11, 7(vr4)
002cf0  7e0006e0  vmmov mr0, r12
002cf4  1f068000  addli r12, zero, 64
002cf8  6a200430  vor.u.mh vr0{mr0}, r8, vr0
002cfc  0f840500  exp.f.rn r8, r11
002d00  fa158240  vextracti.f r11, 8(vr4)
002d04  7e0006e0  vmmov mr0, r12
002d08  1f060001  addli r12, zero, 128
002d0c  6a200130  vor.u.mh vr0{mr0}, r2, vr0
002d10  0f810500  exp.f.rn r2, r11
002d14  fa159240  vextracti.f r11, 9(vr4)
002d18  7e0006e0  vmmov mr0, r12
002d1c  1f060002  addli r12, zero, 256
002d20  6a200430  vor.u.mh vr0{mr0}, r8, vr0
002d24  0f840500  exp.f.rn r8, r11
002d28  fa15a240  vextracti.f r11, 10(vr4)
002d2c  7e0006e0  vmmov mr0, r12
002d30  1f060010  addli r12, zero, 2048
002d34  6a200130  vor.u.mh vr0{mr0}, r2, vr0
002d38  0f810500  exp.f.rn r2, r11
002d3c  fa15b240  vextracti.f r11, 11(vr4)
002d40  7e0006e0  vmmov mr0, r12
002d44  7a16f240  vextracti.f r12, 15(vr4)
002d48  6a200434  vor.u.mh vr0{mr2}, r8, vr0
002d4c  0f840500  exp.f.rn r8, r11
002d50  fa15c240  vextracti.f r11, 12(vr4)
002d54  6a200136  vor.u.mh vr0{mr3}, r2, vr0
002d58  0f810500  exp.f.rn r2, r11
002d5c  fa15d240  vextracti.f r11, 13(vr4)
002d60  6a200430  vor.u.mh vr0{mr0}, r8, vr0
002d64  0f840500  exp.f.rn r8, r11
002d68  fa15e240  vextracti.f r11, 14(vr4)
002d6c  7e0007e0  vmmov mr0, r14
002d70  1f070040  addli r14, zero, 8192
002d74  6a200130  vor.u.mh vr0{mr0}, r2, vr0
002d78  0f810500  exp.f.rn r2, r11
002d7c  9f050fd4  addli r11, r30, -5632
002d80  7e0007e0  vmmov mr0, r14
002d84  2b470000  lui r14, 4
002d88  42920502  vload_mask16.mz vr4{mr1}, 0(r11)
002d8c  12924002  vadd.f.mz.rn vr4{mr1}, r1, vr4
002d90  fa150240  vextracti.f r11, 0(vr4)
002d94  6a200430  vor.u.mh vr0{mr0}, r8, vr0
002d98  0f040600  exp.f.rn r8, r12
002d9c  7e0007e0  vmmov mr0, r14
002da0  7a161240  vextracti.f r12, 1(vr4)
002da4  2b870000  lui r14, 8
002da8  8f850500  exp.f.rn r11, r11
002dac  6a200130  vor.u.mh vr0{mr0}, r2, vr0
002db0  7e0007e0  vmmov mr0, r14
002db4  0f010600  exp.f.rn r2, r12
002db8  7a162240  vextracti.f r12, 2(vr4)
002dbc  7a17e240  vextracti.f r14, 14(vr4)
002dc0  6a200430  vor.u.mh vr0{mr0}, r8, vr0
002dc4  1f140000  addli r8, zero, 1
002dc8  7e0004e0  vmmov mr0, r8
002dcc  0f040600  exp.f.rn r8, r12
002dd0  1f260000  addli r12, zero, 2
002dd4  eaa5b530  vor.u.mh vr11{mr0}, r11, vr11
002dd8  fa153240  vextracti.f r11, 3(vr4)
002ddc  7e0006e0  vmmov mr0, r12
002de0  1f460000  addli r12, zero, 4
002de4  ea25b130  vor.u.mh vr11{mr0}, r2, vr11
002de8  0f810500  exp.f.rn r2, r11
002dec  fa154240  vextracti.f r11, 4(vr4)
002df0  7e0006e0  vmmov mr0, r12
002df4  1f061000  addli r12, zero, 8
002df8  ea25b430  vor.u.mh vr11{mr0}, r8, vr11
002dfc  0f840500  exp.f.rn r8, r11
002e00  fa155240  vextracti.f r11, 5(vr4)
002e04  7e0006e0  vmmov mr0, r12
002e08  1f062000  addli r12, zero, 16
002e0c  ea25b130  vor.u.mh vr11{mr0}, r2, vr11
002e10  0f810500  exp.f.rn r2, r11
002e14  fa156240  vextracti.f r11, 6(vr4)
002e18  7e0006e0  vmmov mr0, r12
002e1c  1f064000  addli r12, zero, 32
002e20  ea25b430  vor.u.mh vr11{mr0}, r8, vr11
002e24  0f840500  exp.f.rn r8, r11
002e28  fa157240  vextracti.f r11, 7(vr4)
002e2c  7e0006e0  vmmov mr0, r12
002e30  1f068000  addli r12, zero, 64
002e34  ea25b130  vor.u.mh vr11{mr0}, r2, vr11
002e38  0f810500  exp.f.rn r2, r11
002e3c  fa158240  vextracti.f r11, 8(vr4)
002e40  7e0006e0  vmmov mr0, r12
002e44  1f060001  addli r12, zero, 128
002e48  ea25b430  vor.u.mh vr11{mr0}, r8, vr11
002e4c  0f840500  exp.f.rn r8, r11
002e50  fa159240  vextracti.f r11, 9(vr4)
002e54  7e0006e0  vmmov mr0, r12
002e58  1f060002  addli r12, zero, 256
002e5c  ea25b130  vor.u.mh vr11{mr0}, r2, vr11
002e60  0f810500  exp.f.rn r2, r11
002e64  fa15a240  vextracti.f r11, 10(vr4)
002e68  7e0006e0  vmmov mr0, r12
002e6c  7a16f240  vextracti.f r12, 15(vr4)
002e70  ea25b430  vor.u.mh vr11{mr0}, r8, vr11
002e74  0f840500  exp.f.rn r8, r11
002e78  fa15b240  vextracti.f r11, 11(vr4)
002e7c  7e0008e0  vmmov mr0, r16
002e80  1f080020  addli r16, zero, 4096
002e84  ea25b134  vor.u.mh vr11{mr2}, r2, vr11
002e88  0f810500  exp.f.rn r2, r11
002e8c  fa15c240  vextracti.f r11, 12(vr4)
002e90  ea25b436  vor.u.mh vr11{mr3}, r8, vr11
002e94  0f840500  exp.f.rn r8, r11
002e98  fa15d240  vextracti.f r11, 13(vr4)
002e9c  12322002  vadd.s.mz vr4{mr1}, zero, vr2
002ea0  8f850500  exp.f.rn r11, r11
002ea4  ea25b130  vor.u.mh vr11{mr0}, r2, vr11
002ea8  1f018fd1  addli r2, r30, -5952
002eac  7e0008e0  vmmov mr0, r16
002eb0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
002eb4  12941002  vadd.f.mz.rn vr8{mr1}, r1, vr1
002eb8  7a1b3440  vextracti.f r22, 3(vr8)
002ebc  7a11f440  vextracti.f r2, 15(vr8)
002ec0  7a18e440  vextracti.f r16, 14(vr8)
002ec4  ea25b430  vor.u.mh vr11{mr0}, r8, vr11
002ec8  0f040700  exp.f.rn r8, r14
002ecc  7e8008e0  vmmov mr0, r17
002ed0  7a170440  vextracti.f r14, 0(vr8)
002ed4  ab480000  lui r17, 4
002ed8  fe8108e0  vmmov mr3, r17
002edc  fa18d440  vextracti.f r17, 13(vr8)
002ee0  eaa5b530  vor.u.mh vr11{mr0}, r11, vr11
002ee4  8f050600  exp.f.rn r11, r12
002ee8  0f060700  exp.f.rn r12, r14
002eec  7a171440  vextracti.f r14, 1(vr8)
002ef0  0f0a0700  exp.f.rn r20, r14
002ef4  2b870000  lui r14, 8
002ef8  ea25b436  vor.u.mh vr11{mr3}, r8, vr11
002efc  7a142440  vextracti.f r8, 2(vr8)
002f00  fe0107e0  vmmov mr3, r14
002f04  1f070fde  addli r14, r30, -4352
002f08  8f0a0400  exp.f.rn r21, r8
002f0c  1f048fdf  addli r8, r30, -4160
002f10  eaa5b536  vor.u.mh vr11{mr3}, r11, vr11
002f14  9f150000  addli r11, zero, 1
002f18  fe8105e0  vmmov mr3, r11
002f1c  fa154440  vextracti.f r11, 4(vr8)
002f20  6a224636  vor.u.mh vr4{mr3}, r12, vr4
002f24  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002f28  1f040fdf  addli r8, r30, -4224
002f2c  1f068fde  addli r12, r30, -4288
002f30  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
002f34  1f240000  addli r8, zero, 2
002f38  8f850500  exp.f.rn r11, r11
002f3c  fe0104e0  vmmov mr3, r8
002f40  0f040b00  exp.f.rn r8, r22
002f44  6a224a36  vor.u.mh vr4{mr3}, r20, vr4
002f48  96101502  vadd.f.mz.rn vr1{mr1}, vr10, vr1
002f4c  42150602  vload_mask16.mz vr10{mr1}, 0(r12)
002f50  1f460000  addli r12, zero, 4
002f54  fe0106e0  vmmov mr3, r12
002f58  7a165440  vextracti.f r12, 5(vr8)
002f5c  6aa24a36  vor.u.mh vr4{mr3}, r21, vr4
002f60  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
002f64  42150702  vload_mask16.mz vr10{mr1}, 0(r14)
002f68  1f071000  addli r14, zero, 8
002f6c  fe0107e0  vmmov mr3, r14
002f70  1f078fdd  addli r14, r30, -4416
002f74  6a224436  vor.u.mh vr4{mr3}, r8, vr4
002f78  0f040600  exp.f.rn r8, r12
002f7c  7a166440  vextracti.f r12, 6(vr8)
002f80  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
002f84  42150702  vload_mask16.mz vr10{mr1}, 0(r14)
002f88  1f072000  addli r14, zero, 16
002f8c  fe0107e0  vmmov mr3, r14
002f90  1f070fdd  addli r14, r30, -4480
002f94  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
002f98  8f050600  exp.f.rn r11, r12
002f9c  7a167440  vextracti.f r12, 7(vr8)
002fa0  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
002fa4  42150702  vload_mask16.mz vr10{mr1}, 0(r14)
002fa8  1f074000  addli r14, zero, 32
002fac  fe0107e0  vmmov mr3, r14
002fb0  1f078fdc  addli r14, r30, -4544
002fb4  6a224436  vor.u.mh vr4{mr3}, r8, vr4
002fb8  0f040600  exp.f.rn r8, r12
002fbc  7a168440  vextracti.f r12, 8(vr8)
002fc0  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
002fc4  42150702  vload_mask16.mz vr10{mr1}, 0(r14)
002fc8  1f078000  addli r14, zero, 64
002fcc  fe0107e0  vmmov mr3, r14
002fd0  1f070fdc  addli r14, r30, -4608
002fd4  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
002fd8  8f050600  exp.f.rn r11, r12
002fdc  7a169440  vextracti.f r12, 9(vr8)
002fe0  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
002fe4  42150702  vload_mask16.mz vr10{mr1}, 0(r14)
002fe8  1f070001  addli r14, zero, 128
002fec  fe0107e0  vmmov mr3, r14
002ff0  1f078fdb  addli r14, r30, -4672
002ff4  6a224436  vor.u.mh vr4{mr3}, r8, vr4
002ff8  0f040600  exp.f.rn r8, r12
002ffc  7a16a440  vextracti.f r12, 10(vr8)
003000  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
003004  42150702  vload_mask16.mz vr10{mr1}, 0(r14)
003008  1f070002  addli r14, zero, 256
00300c  fe0107e0  vmmov mr3, r14
003010  1f070fdb  addli r14, r30, -4736
003014  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
003018  8f050600  exp.f.rn r11, r12
00301c  7a16b440  vextracti.f r12, 11(vr8)
003020  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
003024  42150702  vload_mask16.mz vr10{mr1}, 0(r14)
003028  1f070fda  addli r14, r30, -4864
00302c  6a224434  vor.u.mh vr4{mr2}, r8, vr4
003030  0f040600  exp.f.rn r8, r12
003034  7a16c440  vextracti.f r12, 12(vr8)
003038  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
00303c  1f070008  addli r14, zero, 1024
003040  fe0107e0  vmmov mr3, r14
003044  1f070fd7  addli r14, r30, -5248
003048  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
00304c  8f050600  exp.f.rn r11, r12
003050  1f068fd4  addli r12, r30, -5568
003054  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
003058  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
00305c  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
003060  1f060fd8  addli r12, r30, -5120
003064  12948002  vadd.f.mz.rn vr8{mr1}, r1, vr8
003068  9f000fd9  addli r1, r30, -4992
00306c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
003070  9f000010  addli r1, zero, 2048
003074  fe8100e0  vmmov mr3, r1
003078  8f800800  exp.f.rn r1, r17
00307c  6a224436  vor.u.mh vr4{mr3}, r8, vr4
003080  7a141440  vextracti.f r8, 1(vr8)
003084  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
003088  42150602  vload_mask16.mz vr10{mr1}, 0(r12)
00308c  1f060020  addli r12, zero, 4096
003090  0f040400  exp.f.rn r8, r8
003094  fe0106e0  vmmov mr3, r12
003098  7a160440  vextracti.f r12, 0(vr8)
00309c  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
0030a0  8f050800  exp.f.rn r11, r16
0030a4  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
0030a8  42150702  vload_mask16.mz vr10{mr1}, 0(r14)
0030ac  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0030b0  8f000100  exp.f.rn r1, r2
0030b4  0f010600  exp.f.rn r2, r12
0030b8  1f060fd6  addli r12, r30, -5376
0030bc  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
0030c0  42150602  vload_mask16.mz vr10{mr1}, 0(r12)
0030c4  2b460000  lui r12, 4
0030c8  fe0106e0  vmmov mr3, r12
0030cc  1f068fd5  addli r12, r30, -5440
0030d0  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
0030d4  fa152440  vextracti.f r11, 2(vr8)
0030d8  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
0030dc  42150602  vload_mask16.mz vr10{mr1}, 0(r12)
0030e0  2b860000  lui r12, 8
0030e4  fe0106e0  vmmov mr3, r12
0030e8  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
0030ec  9f100000  addli r1, zero, 1
0030f0  fe8100e0  vmmov mr3, r1
0030f4  8f800500  exp.f.rn r1, r11
0030f8  9f058fd4  addli r11, r30, -5568
0030fc  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
003100  12352002  vadd.s.mz vr10{mr1}, zero, vr2
003104  6a25a136  vor.u.mh vr10{mr3}, r2, vr10
003108  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
00310c  9f058fd8  addli r11, r30, -5056
003110  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
003114  7a113440  vextracti.f r2, 3(vr8)
003118  42910502  vload_mask16.mz vr2{mr1}, 0(r11)
00311c  9f250000  addli r11, zero, 2
003120  0f010100  exp.f.rn r2, r2
003124  fe8105e0  vmmov mr3, r11
003128  9f058fd6  addli r11, r30, -5312
00312c  6a25a436  vor.u.mh vr10{mr3}, r8, vr10
003130  7a144440  vextracti.f r8, 4(vr8)
003134  42930502  vload_mask16.mz vr6{mr1}, 0(r11)
003138  9f450000  addli r11, zero, 4
00313c  fe8105e0  vmmov mr3, r11
003140  9f058fd7  addli r11, r30, -5184
003144  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
003148  8f000400  exp.f.rn r1, r8
00314c  7a145440  vextracti.f r8, 5(vr8)
003150  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
003154  42930502  vload_mask16.mz vr6{mr1}, 0(r11)
003158  9f051000  addli r11, zero, 8
00315c  fe8105e0  vmmov mr3, r11
003160  9f058fd0  addli r11, r30, -6080
003164  6a25a136  vor.u.mh vr10{mr3}, r2, vr10
003168  0f010400  exp.f.rn r2, r8
00316c  7a146440  vextracti.f r8, 6(vr8)
003170  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
003174  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
003178  42910502  vload_mask16.mz vr2{mr1}, 0(r11)
00317c  9f052000  addli r11, zero, 16
003180  fe8105e0  vmmov mr3, r11
003184  9f054000  addli r11, zero, 32
003188  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
00318c  8f000400  exp.f.rn r1, r8
003190  7a147440  vextracti.f r8, 7(vr8)
003194  fe8105e0  vmmov mr3, r11
003198  9f058fda  addli r11, r30, -4800
00319c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0031a0  6a25a136  vor.u.mh vr10{mr3}, r2, vr10
0031a4  42930502  vload_mask16.mz vr6{mr1}, 0(r11)
0031a8  9f058000  addli r11, zero, 64
0031ac  0f010400  exp.f.rn r2, r8
0031b0  7a148440  vextracti.f r8, 8(vr8)
0031b4  fe8105e0  vmmov mr3, r11
0031b8  9f058fd9  addli r11, r30, -4928
0031bc  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
0031c0  8f000400  exp.f.rn r1, r8
0031c4  7a149440  vextracti.f r8, 9(vr8)
0031c8  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
0031cc  42930502  vload_mask16.mz vr6{mr1}, 0(r11)
0031d0  9f058fd2  addli r11, r30, -5824
0031d4  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
0031d8  42930502  vload_mask16.mz vr6{mr1}, 0(r11)
0031dc  9f050001  addli r11, zero, 128
0031e0  fe8105e0  vmmov mr3, r11
0031e4  9f050002  addli r11, zero, 256
0031e8  6a25a136  vor.u.mh vr10{mr3}, r2, vr10
0031ec  0f010400  exp.f.rn r2, r8
0031f0  7a14a440  vextracti.f r8, 10(vr8)
0031f4  fe8105e0  vmmov mr3, r11
0031f8  9f050fd4  addli r11, r30, -5632
0031fc  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
003200  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
003204  8f000400  exp.f.rn r1, r8
003208  7a14b440  vextracti.f r8, 11(vr8)
00320c  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
003210  9f050008  addli r11, zero, 1024
003214  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
003218  6a25a134  vor.u.mh vr10{mr2}, r2, vr10
00321c  0f010400  exp.f.rn r2, r8
003220  7a14c440  vextracti.f r8, 12(vr8)
003224  7e8105e0  vmmov mr2, r11
003228  9f050010  addli r11, zero, 2048
00322c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003230  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
003234  8f000400  exp.f.rn r1, r8
003238  7a14d440  vextracti.f r8, 13(vr8)
00323c  7e8105e0  vmmov mr2, r11
003240  9f050020  addli r11, zero, 4096
003244  96907002  vadd.f.mz.rn vr1{mr1}, vr1, vr7
003248  6a25a134  vor.u.mh vr10{mr2}, r2, vr10
00324c  0f010400  exp.f.rn r2, r8
003250  7a14e440  vextracti.f r8, 14(vr8)
003254  7e8105e0  vmmov mr2, r11
003258  96909002  vadd.f.mz.rn vr1{mr1}, vr1, vr9
00325c  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
003260  8f000400  exp.f.rn r1, r8
003264  7a14f440  vextracti.f r8, 15(vr8)
003268  96900002  vadd.f.mz.rn vr1{mr1}, vr1, vr0
00326c  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
003270  0f010400  exp.f.rn r2, r8
003274  2b440000  lui r8, 4
003278  7e0004e0  vmmov mr0, r8
00327c  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
003280  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
003284  ab800000  lui r1, 8
003288  7e8000e0  vmmov mr0, r1
00328c  9f000fd5  addli r1, r30, -5504
003290  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
003294  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
003298  1694a002  vadd.f.mz.rn vr8{mr1}, vr1, vr10
00329c  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
0032a0  fa100440  vextracti.f r1, 0(vr8)
0032a4  7a111440  vextracti.f r2, 1(vr8)
0032a8  8be02010  add.f.rn r1, r1, r2
0032ac  7a112440  vextracti.f r2, 2(vr8)
0032b0  8b601110  add.f.rn r1, r2, r1
0032b4  7a113440  vextracti.f r2, 3(vr8)
0032b8  8b601110  add.f.rn r1, r2, r1
0032bc  7a114440  vextracti.f r2, 4(vr8)
0032c0  8b601110  add.f.rn r1, r2, r1
0032c4  7a115440  vextracti.f r2, 5(vr8)
0032c8  8b601110  add.f.rn r1, r2, r1
0032cc  7a116440  vextracti.f r2, 6(vr8)
0032d0  8b601110  add.f.rn r1, r2, r1
0032d4  7a117440  vextracti.f r2, 7(vr8)
0032d8  8b601110  add.f.rn r1, r2, r1
0032dc  7a118440  vextracti.f r2, 8(vr8)
0032e0  8b601110  add.f.rn r1, r2, r1
0032e4  7a119440  vextracti.f r2, 9(vr8)
0032e8  8b601110  add.f.rn r1, r2, r1
0032ec  7a11a440  vextracti.f r2, 10(vr8)
0032f0  8b601110  add.f.rn r1, r2, r1
0032f4  7a11b440  vextracti.f r2, 11(vr8)
0032f8  8b601110  add.f.rn r1, r2, r1
0032fc  7a11c440  vextracti.f r2, 12(vr8)
003300  8b601110  add.f.rn r1, r2, r1
003304  7a11d440  vextracti.f r2, 13(vr8)
003308  8b601110  add.f.rn r1, r2, r1
00330c  7a11e440  vextracti.f r2, 14(vr8)
003310  8b601110  add.f.rn r1, r2, r1
003314  7a11f440  vextracti.f r2, 15(vr8)
003318  8b601110  add.f.rn r1, r2, r1
00331c  73e01100  stores.w r1, 0(r3)
003320  00a00300  mfence { lm, sm, gm }
003324  80210204  csr_set csr3, r4
003328  00d00100  sync_group
00332c  bb900600  bneq r13, zero, 36
003330  ef400500  loads.w r1, 0(r10)
003334  6f414500  loads.w r2, 4(r10)
003338  6f448500  loads.w r8, 8(r10)
00333c  8be02010  add.f.rn r1, r1, r2
003340  6f41c500  loads.w r2, 12(r10)
003344  8be08010  add.f.rn r1, r1, r8
003348  8be02010  add.f.rn r1, r1, r2
00334c  73601500  stores.w r1, 0(r10)
003350  00a00300  mfence { lm, sm, gm }
003354  80210204  csr_set csr3, r4
003358  00d00100  sync_group
00335c  ef400500  loads.w r1, 0(r10)
003360  2b01803f  lui r2, 260096
003364  9f2b0000  addli r23, zero, 2
003368  8f001118  div.f.rn r1, r2, r1
00336c  1f018fdf  addli r2, r30, -4160
003370  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
003374  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
003378  1f010ff0  addli r2, r30, -2048
00337c  0a941002  vmul.f.mz.rn vr8{mr1}, r1, vr1
003380  46108102  vstore_mask16.mz vr8{mr1}, 0(r2)
003384  1f010fdf  addli r2, r30, -4224
003388  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
00338c  1f018ff0  addli r2, r30, -1984
003390  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
003394  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
003398  1f018fde  addli r2, r30, -4288
00339c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0033a0  1f010ff1  addli r2, r30, -1920
0033a4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0033a8  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0033ac  1f010fde  addli r2, r30, -4352
0033b0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0033b4  1f018ff1  addli r2, r30, -1856
0033b8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0033bc  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0033c0  1f018fdd  addli r2, r30, -4416
0033c4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0033c8  1f010ff2  addli r2, r30, -1792
0033cc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0033d0  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0033d4  1f010fdd  addli r2, r30, -4480
0033d8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0033dc  1f018ff2  addli r2, r30, -1728
0033e0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0033e4  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0033e8  1f018fdc  addli r2, r30, -4544
0033ec  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0033f0  1f010ff3  addli r2, r30, -1664
0033f4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0033f8  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0033fc  1f010fdc  addli r2, r30, -4608
003400  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
003404  1f018ff3  addli r2, r30, -1600
003408  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00340c  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
003410  1f018fdb  addli r2, r30, -4672
003414  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
003418  1f010ff4  addli r2, r30, -1536
00341c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
003420  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
003424  1f010fdb  addli r2, r30, -4736
003428  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
00342c  1f018ff4  addli r2, r30, -1472
003430  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
003434  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
003438  1f010fda  addli r2, r30, -4864
00343c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
003440  1f010ff5  addli r2, r30, -1408
003444  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
003448  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
00344c  1f010fd9  addli r2, r30, -4992
003450  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
003454  1f018ff5  addli r2, r30, -1344
003458  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00345c  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
003460  1f010fd8  addli r2, r30, -5120
003464  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
003468  1f010ff6  addli r2, r30, -1280
00346c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
003470  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
003474  1f010fd7  addli r2, r30, -5248
003478  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
00347c  1f018ff6  addli r2, r30, -1216
003480  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
003484  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
003488  1f010fd6  addli r2, r30, -5376
00348c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
003490  1f010ff7  addli r2, r30, -1152
003494  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
003498  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
00349c  1f018fd5  addli r2, r30, -5440
0034a0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0034a4  1f018ff7  addli r2, r30, -1088
0034a8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0034ac  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0034b0  1f018fd4  addli r2, r30, -5568
0034b4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0034b8  1f018fd6  addli r2, r30, -5312
0034bc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0034c0  46101f82  vstore_mask16.mz vr1{mr1}, 1024(r30)
0034c4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0034c8  1f018fd7  addli r2, r30, -5184
0034cc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0034d0  46141f82  vstore_mask16.mz vr1{mr1}, 1088(r30)
0034d4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0034d8  1f018fd8  addli r2, r30, -5056
0034dc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0034e0  46181f82  vstore_mask16.mz vr1{mr1}, 1152(r30)
0034e4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0034e8  1f018fda  addli r2, r30, -4800
0034ec  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0034f0  461c1f82  vstore_mask16.mz vr1{mr1}, 1216(r30)
0034f4  8a902002  vmul.f.mz.rn vr1{mr1}, r1, vr2
0034f8  46101fa2  vstore_mask16.mz vr1{mr1}, 1280(r30)
0034fc  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
003500  1f018fd9  addli r2, r30, -4928
003504  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
003508  46141fa2  vstore_mask16.mz vr1{mr1}, 1344(r30)
00350c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
003510  1f010fd4  addli r2, r30, -5632
003514  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
003518  46181fa2  vstore_mask16.mz vr1{mr1}, 1408(r30)
00351c  8a906002  vmul.f.mz.rn vr1{mr1}, r1, vr6
003520  461c1fa2  vstore_mask16.mz vr1{mr1}, 1472(r30)
003524  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
003528  1f010fd5  addli r2, r30, -5504
00352c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
003530  46101fc2  vstore_mask16.mz vr1{mr1}, 1536(r30)
003534  8a903002  vmul.f.mz.rn vr1{mr1}, r1, vr3
003538  46141fc2  vstore_mask16.mz vr1{mr1}, 1600(r30)
00353c  8a907002  vmul.f.mz.rn vr1{mr1}, r1, vr7
003540  46181fc2  vstore_mask16.mz vr1{mr1}, 1664(r30)
003544  8a909002  vmul.f.mz.rn vr1{mr1}, r1, vr9
003548  461c1fc2  vstore_mask16.mz vr1{mr1}, 1728(r30)
00354c  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
003550  0a90b002  vmul.f.mz.rn vr0{mr1}, r1, vr11
003554  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
003558  0a904002  vmul.f.mz.rn vr0{mr1}, r1, vr4
00355c  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
003560  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
003564  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
003568  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
00356c  00a00000  mfence { lm }
003570  63018f00  loadli.w r2,  64(r30)
003574  e3401fd0  loadli.w r1,  -6132(r30)
003578  bfd227e6  blt.s r15, r2, -13132
00357c  9f000000  addli r1, zero, 0
003580  db95f9ff  j -13140
003584  9f0e0fd0  addli sp, r30, -6144
003588  9f8e0e30  addli sp, sp, 6144
00358c  00a00300  mfence { lm, sm, gm }
003590  00100000  exit
003594  00100000  exit
003598  00100000  exit
00359c  00100000  exit
0035a0  00100000  exit
0035a4  00100000  exit
0035a8  00100000  exit
0035ac  00100000  exit
0035b0  00100000  exit
0035b4  00100000  exit
0035b8  00100000  exit
0035bc  00100000  exit
0035c0  00100000  exit
0035c4  00100000  exit
0035c8  00100000  exit
0035cc  00100000  exit
0035d0  00100000  exit
0035d4  00100000  exit
0035d8  00100000  exit
0035dc  00100000  exit
0035e0  00100000  exit
0035e4  00100000  exit
0035e8  00100000  exit
0035ec  00100000  exit
0035f0  00100000  exit
0035f4  00100000  exit
0035f8  00100000  exit
0035fc  00100000  exit
003600  00100000  exit
003604  00100000  exit
003608  00100000  exit
00360c  00100000  exit
003610  00100000  exit
003614  00100000  exit
003618  00100000  exit
00361c  00100000  exit
003620  00100000  exit
003624  00100000  exit
003628  00100000  exit
00362c  00100000  exit
003630  00100000  exit
003634  00100000  exit
003638  00100000  exit
00363c  00100000  exit
003640  00100000  exit
003644  00100000  exit
003648  00100000  exit
00364c  00100000  exit
003650  00100000  exit
003654  00100000  exit
003658  00100000  exit
00365c  00100000  exit
003660  00100000  exit
003664  00100000  exit
003668  00100000  exit
00366c  00100000  exit
003670  00100000  exit
003674  00100000  exit
003678  00100000  exit
00367c  00100000  exit
003680  00100000  exit
003684  00100000  exit
003688  00100000  exit
00368c  00100000  exit
003690  00100000  exit
003694  00100000  exit
003698  00100000  exit
00369c  00100000  exit
0036a0  00100000  exit
0036a4  00100000  exit
0036a8  00100000  exit
0036ac  00100000  exit
0036b0  00100000  exit
0036b4  00100000  exit
0036b8  00100000  exit
0036bc  00100000  exit
0036c0  00100000  exit
0036c4  00100000  exit
0036c8  00100000  exit
0036cc  00100000  exit
0036d0  00100000  exit
0036d4  00100000  exit
0036d8  00100000  exit
0036dc  00100000  exit
0036e0  00100000  exit
0036e4  00100000  exit
0036e8  00100000  exit
0036ec  00100000  exit
0036f0  00100000  exit
0036f4  00100000  exit
0036f8  00100000  exit
0036fc  00100000  exit
003700  00100000  exit
003704  00100000  exit
003708  00100000  exit
00370c  00100000  exit
003710  00100000  exit
003714  00100000  exit
003718  00100000  exit
00371c  00100000  exit
003720  00100000  exit
003724  00100000  exit
003728  00100000  exit
00372c  00100000  exit
003730  00100000  exit
003734  00100000  exit
003738  00100000  exit
00373c  00100000  exit
003740  00100000  exit
003744  00100000  exit
003748  00100000  exit
00374c  00100000  exit
003750  00100000  exit
003754  00100000  exit
003758  00100000  exit
00375c  00100000  exit
003760  00100000  exit
003764  00100000  exit
003768  00100000  exit
00376c  00100000  exit
003770  00100000  exit
003774  00100000  exit
003778  00100000  exit
00377c  00100000  exit
003780  00100000  exit
003784  00100000  exit
003788  00100000  exit
00378c  00100000  exit
003790  00100000  exit
003794  00100000  exit
003798  00100000  exit
00379c  00100000  exit
0037a0  00100000  exit
0037a4  00100000  exit
0037a8  00100000  exit
0037ac  00100000  exit
0037b0  00100000  exit
0037b4  00100000  exit
0037b8  00100000  exit
0037bc  00100000  exit
0037c0  00100000  exit
0037c4  00100000  exit
0037c8  00100000  exit
0037cc  00100000  exit
0037d0  00100000  exit
