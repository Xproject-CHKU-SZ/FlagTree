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
0000e4  9f8e0ecd  addli sp, sp, -6528
0000e8  2b010000  lui r2, 0
0000ec  00340002  core_id r8
0000f0  ab800000  lui r1, 8
0000f4  1f8f0e32  addli r30, sp, 6400
0000f8  2b450000  lui r10, 4
0000fc  9b342400  slli r9, r8, 2
000100  1f010100  addli r2, r2, 0
000104  9b900001  ori r1, r1, 16
000108  e303cf00  loadli.w r7,  96(r30)
00010c  6343bf00  loadli.w r6,  92(r30)
000110  e341cf00  loadli.w r3,  100(r30)
000114  8b129110  add.s r5, r2, r9
000118  8b936320  mul.s r7, r7, r6
00011c  00530002  load_param_i r6, 0
000120  0b921210  add.s r4, r5, r1
000124  8b92a210  add.s r5, r5, r10
000128  8b933320  mul.s r7, r7, r3
00012c  e7434fce  storeli.w r4, -6340(r30)
000130  73600200  stores.w zero, 0(r4)
000134  2bf20000  lui r4, 15
000138  00a00300  mfence { lm, sm, gm }
00013c  1b12f2ff  ori r4, r4, 4095
000140  80210204  csr_set csr3, r4
000144  00d00100  sync_group
000148  73e00200  stores.w zero, 0(r5)
00014c  00a00300  mfence { lm, sm, gm }
000150  80210204  csr_set csr3, r4
000154  00d00100  sync_group
000158  4bc46312  ble.s r7, r6, 9488
00015c  9b063400  andi r13, r8, 3
000160  eb570f03  load.d r[16:17], 48(r30)
000164  e3095f00  loadli.w r19,  40(r30)
000168  2bfaffff  lui r20, 1048575
00016c  9f210000  addli r3, zero, 2
000170  6b5d0f02  load.d r[27:28], 32(r30)
000174  e34a1f00  loadli.w r21,  12(r30)
000178  e34b8f00  loadli.w r23,  68(r30)
00017c  1f070004  addli r14, zero, 512
000180  1b442400  srli r8, r8, 2
000184  eb550f05  load.d r[12:13], 80(r30)
000188  6b5c8f01  load.d r[25:26], 24(r30)
00018c  1bbb9600  slli r22, r13, 9
000190  1b1a0aff  ori r20, r20, 4080
000194  b3080b28  zext_int2long r[18:19], r22
000198  8b996919  sub.s r19, r19, r22
00019c  97844401  and r9, r9, r20
0001a0  8bb71721  mul.sl r[16:17], r[16:17], r[18:19]
0001a4  8b990948  max.s r19, r19, zero
0001a8  0b119110  add.s r2, r2, r9
0001ac  8b946b19  sub.s r9, r23, r22
0001b0  97b73702  sll.d r[16:17], r[16:17], r3
0001b4  8b99e940  min.s r19, r19, r14
0001b8  80d10002  load_param_i r3, 1
0001bc  0b1e1110  add.s r28, r2, r1
0001c0  8b900448  max.s r1, r9, zero
0001c4  8b27fd10  add.ul r[16:17], r[27:28], r[16:17]
0001c8  0b9d6a19  sub.s r26, r21, r22
0001cc  9b0af400  andi r21, r8, 15
0001d0  8b1da110  add.s r27, r2, r10
0001d4  9bb92900  slli r19, r19, 2
0001d8  2b0100f0  lui r2, 983040
0001dc  e7033fce  storeli.w r3, -6344(r30)
0001e0  9f016fce  addli r3, r30, -6352
0001e4  8b90e040  min.s r1, r1, r14
0001e8  0b140d48  max.s r8, r26, zero
0001ec  338b0a28  zext_int2long r[23:24], r21
0001f0  17912900  or r2, r19, r2
0001f4  1bb52000  slli r10, r1, 2
0001f8  9f090ffe  addli r19, r30, -256
0001fc  0b14e440  min.s r8, r8, r14
000200  73b06101  store.d r[23:24], 0(r3)
000204  0b3b1c21  mul.sl r[23:24], r[25:26], r[18:19]
000208  9f015fce  addli r3, r30, -6360
00020c  1f070001  addli r14, zero, 128
000210  1b3d2400  slli r26, r8, 2
000214  0bb41521  mul.sl r[9:10], r[12:13], r[18:19]
000218  9f050fee  addli r11, r30, -2304
00021c  73b06101  store.d r[23:24], 0(r3)
000220  1f060002  addli r12, zero, 256
000224  7fa1b700  l_gm2lm r2, r11, 0(r[16:17])
000228  9f050fde  addli r11, r30, -4352
00022c  9f078000  addli r15, zero, 64
000230  1f084000  addli r16, zero, 32
000234  00a00000  mfence { lm }
000238  5b080000  j 64
00023c  6b518f04  load.d r[3:4], 72(r30)
000240  6b5b8f03  load.d r[23:24], 56(r30)
000244  0bb12820  mul.sl r[3:4], r[18:19], r[3:4]
000248  9f280000  addli r17, zero, 2
00024c  0b218110  add.ul r[3:4], r[3:4], r[9:10]
000250  17311103  sll.d r[3:4], r[3:4], r17
000254  ab0800f0  lui r17, 983040
000258  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00025c  97901001  or r1, r1, r17
000260  ff30b100  s_lm2gm r1, r11, 0(r[3:4])
000264  e3007fce  loadli.w r1,  -6344(r30)
000268  00a00000  mfence { lm }
00026c  0b131310  add.s r6, r6, r1
000270  3f207300  blt.s r6, r7, 8
000274  db7e0400  j 9204
000278  e340cf00  loadli.w r1,  100(r30)
00027c  6301cf00  loadli.w r2,  96(r30)
000280  00a00000  mfence { lm }
000284  e3011f00  loadli.w r3,  8(r30)
000288  8b101330  div.s r1, r6, r1
00028c  8b902030  div.s r1, r1, r2
000290  9bb84000  slli r17, r1, 4
000294  9f000d00  addli r1, r26, 0
000298  17915801  or r2, r17, r21
00029c  3f203100  blt.s r2, r3, 8
0002a0  9f000000  addli r1, zero, 0
0002a4  9f016fce  addli r3, r30, -6352
0002a8  b3980828  sext_int2long r[18:19], r17
0002ac  1f2a0000  addli r20, zero, 2
0002b0  6bdb0100  load.d r[23:24], 0(r3)
0002b4  9f015fce  addli r3, r30, -6360
0002b8  6bdc0100  load.d r[25:26], 0(r3)
0002bc  ab0100f0  lui r3, 983040
0002c0  97986803  or.d r[18:19], r[18:19], r[23:24]
0002c4  6b5b0f01  load.d r[23:24], 16(r30)
0002c8  97903000  or r1, r1, r3
0002cc  0bbb6821  mul.sl r[23:24], r[18:19], r[23:24]
0002d0  0b2b8b11  add.ul r[23:24], r[23:24], r[25:26]
0002d4  6b5c0f00  load.d r[25:26], 0(r30)
0002d8  173b4b03  sll.d r[23:24], r[23:24], r20
0002dc  0b2b6c11  add.ul r[23:24], r[25:26], r[23:24]
0002e0  ff20bb00  l_gm2lm r1, r11, 0(r[23:24])
0002e4  9f000fde  addli r1, r30, -4352
0002e8  00a00000  mfence { lm }
0002ec  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0002f0  9f008fde  addli r1, r30, -4288
0002f4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0002f8  9f000fdf  addli r1, r30, -4224
0002fc  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000300  9f008fdf  addli r1, r30, -4160
000304  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000308  9f000fe0  addli r1, r30, -4096
00030c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000310  9f008fe0  addli r1, r30, -4032
000314  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000318  9f000fee  addli r1, r30, -2304
00031c  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000320  9f000fe1  addli r1, r30, -3968
000324  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000328  9f008fe1  addli r1, r30, -3904
00032c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000330  9f000fe2  addli r1, r30, -3840
000334  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000338  9f008fe2  addli r1, r30, -3776
00033c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000340  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000344  9f008fee  addli r1, r30, -2240
000348  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00034c  9f008fd2  addli r1, r30, -5824
000350  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000354  9f000fef  addli r1, r30, -2176
000358  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
00035c  9f000fd5  addli r1, r30, -5504
000360  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
000364  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000368  9f008fef  addli r1, r30, -2112
00036c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000370  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000374  9f000fd4  addli r1, r30, -5632
000378  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00037c  9f000ff0  addli r1, r30, -2048
000380  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000384  9f008fd3  addli r1, r30, -5696
000388  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
00038c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000390  9f008ff0  addli r1, r30, -1984
000394  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
000398  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00039c  9f000fd3  addli r1, r30, -5760
0003a0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0003a4  9f000ff1  addli r1, r30, -1920
0003a8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0003ac  9f008fd5  addli r1, r30, -5440
0003b0  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0003b4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003b8  9f008ff1  addli r1, r30, -1856
0003bc  16901502  vadd.f.mz.rn vr0{mr1}, vr11, vr1
0003c0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0003c4  9f008fd4  addli r1, r30, -5568
0003c8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003cc  9f000fe3  addli r1, r30, -3712
0003d0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0003d4  9f000fd7  addli r1, r30, -5248
0003d8  16107502  vadd.f.mz.rn vr0{mr1}, vr10, vr7
0003dc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003e0  9f000ff2  addli r1, r30, -1792
0003e4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0003e8  9f008ff2  addli r1, r30, -1728
0003ec  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0003f0  9f000ff3  addli r1, r30, -1664
0003f4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0003f8  9f000fd6  addli r1, r30, -5376
0003fc  16917402  vadd.f.mz.rn vr2{mr1}, vr9, vr7
000400  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000404  1611a402  vadd.f.mz.rn vr2{mr1}, vr8, vr10
000408  9f008fdd  addli r1, r30, -4416
00040c  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000410  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000414  9f000fdd  addli r1, r30, -4480
000418  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00041c  9f008fe3  addli r1, r30, -3648
000420  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000424  9f000fe4  addli r1, r30, -3584
000428  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00042c  9f008fe4  addli r1, r30, -3520
000430  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000434  9f008ff3  addli r1, r30, -1600
000438  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00043c  9f000ff4  addli r1, r30, -1536
000440  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000444  9f008ff4  addli r1, r30, -1472
000448  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00044c  9f008fd6  addli r1, r30, -5312
000450  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000454  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000458  16908302  vadd.f.mz.rn vr0{mr1}, vr7, vr8
00045c  9f000fd8  addli r1, r30, -5120
000460  16119502  vadd.f.mz.rn vr2{mr1}, vr10, vr9
000464  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000468  9f000fe5  addli r1, r30, -3456
00046c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000470  9f008fe5  addli r1, r30, -3392
000474  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000478  9f000fe6  addli r1, r30, -3328
00047c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000480  9f000ff5  addli r1, r30, -1408
000484  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000488  9f008ff5  addli r1, r30, -1344
00048c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000490  9f000ff6  addli r1, r30, -1280
000494  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000498  9f008fd8  addli r1, r30, -5056
00049c  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
0004a0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004a4  16908302  vadd.f.mz.rn vr0{mr1}, vr7, vr8
0004a8  9f008fd9  addli r1, r30, -4928
0004ac  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004b0  16901402  vadd.f.mz.rn vr0{mr1}, vr9, vr1
0004b4  9f008fda  addli r1, r30, -4800
0004b8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004bc  9f008fe6  addli r1, r30, -3264
0004c0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0004c4  9f000fe7  addli r1, r30, -3200
0004c8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0004cc  9f008fe7  addli r1, r30, -3136
0004d0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0004d4  9f008ff6  addli r1, r30, -1216
0004d8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0004dc  9f000ff7  addli r1, r30, -1152
0004e0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0004e4  9f008ff7  addli r1, r30, -1088
0004e8  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0004ec  9f008fdc  addli r1, r30, -4544
0004f0  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0004f4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004f8  16909002  vadd.f.mz.rn vr0{mr1}, vr1, vr9
0004fc  9f008fdb  addli r1, r30, -4672
000500  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000504  1690a302  vadd.f.mz.rn vr0{mr1}, vr7, vr10
000508  9f000fdc  addli r1, r30, -4608
00050c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000510  9f000fe8  addli r1, r30, -3072
000514  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000518  9f008fe8  addli r1, r30, -3008
00051c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000520  9f000fe9  addli r1, r30, -2944
000524  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000528  42140f82  vload_mask16.mz vr8{mr1}, 1024(r30)
00052c  c2148f82  vload_mask16.mz vr9{mr1}, 1088(r30)
000530  42150f83  vload_mask16.mz vr10{mr1}, 1152(r30)
000534  9f008fce  addli r1, r30, -6336
000538  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00053c  16939002  vadd.f.mz.rn vr6{mr1}, vr1, vr9
000540  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000544  1690a302  vadd.f.mz.rn vr0{mr1}, vr7, vr10
000548  9f008fd7  addli r1, r30, -5184
00054c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000550  9f008fe9  addli r1, r30, -2880
000554  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000558  9f000fea  addli r1, r30, -2816
00055c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000560  9f008fea  addli r1, r30, -2752
000564  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000568  42148f83  vload_mask16.mz vr8{mr1}, 1216(r30)
00056c  c2140fa2  vload_mask16.mz vr9{mr1}, 1280(r30)
000570  9f000fd9  addli r1, r30, -4992
000574  42158fa2  vload_mask16.mz vr10{mr1}, 1344(r30)
000578  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00057c  1692a302  vadd.f.mz.rn vr4{mr1}, vr7, vr10
000580  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000584  16909002  vadd.f.mz.rn vr0{mr1}, vr1, vr9
000588  9f000fda  addli r1, r30, -4864
00058c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000590  9f000feb  addli r1, r30, -2688
000594  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000598  9f008feb  addli r1, r30, -2624
00059c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0005a0  9f000fec  addli r1, r30, -2560
0005a4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0005a8  42140fa3  vload_mask16.mz vr8{mr1}, 1408(r30)
0005ac  c2148fa3  vload_mask16.mz vr9{mr1}, 1472(r30)
0005b0  9f000fdb  addli r1, r30, -4736
0005b4  42150fc2  vload_mask16.mz vr10{mr1}, 1536(r30)
0005b8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0005bc  96929002  vadd.f.mz.rn vr5{mr1}, vr1, vr9
0005c0  9695a302  vadd.f.mz.rn vr11{mr1}, vr7, vr10
0005c4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005c8  9f008fec  addli r1, r30, -2496
0005cc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0005d0  9f000fed  addli r1, r30, -2432
0005d4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0005d8  9f008fed  addli r1, r30, -2368
0005dc  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0005e0  42148fc2  vload_mask16.mz vr8{mr1}, 1600(r30)
0005e4  c2140fc3  vload_mask16.mz vr9{mr1}, 1664(r30)
0005e8  42158fc3  vload_mask16.mz vr10{mr1}, 1728(r30)
0005ec  9f000fdc  addli r1, r30, -4608
0005f0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0005f4  9f008fd7  addli r1, r30, -5184
0005f8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0005fc  1695a302  vadd.f.mz.rn vr10{mr1}, vr7, vr10
000600  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000604  9f000fd5  addli r1, r30, -5504
000608  16949002  vadd.f.mz.rn vr8{mr1}, vr1, vr9
00060c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000610  9f008fd2  addli r1, r30, -5824
000614  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000618  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00061c  9f000fd4  addli r1, r30, -5632
000620  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000624  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000628  9f008fd3  addli r1, r30, -5696
00062c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000630  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000634  9f000fd3  addli r1, r30, -5760
000638  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00063c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000640  9f008fd5  addli r1, r30, -5440
000644  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000648  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00064c  9f008fd4  addli r1, r30, -5568
000650  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000654  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000658  9f000fd7  addli r1, r30, -5248
00065c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000660  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000664  9f000fd6  addli r1, r30, -5376
000668  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00066c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000670  9f008fdd  addli r1, r30, -4416
000674  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000678  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00067c  9f000fdd  addli r1, r30, -4480
000680  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000684  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000688  9f008fd6  addli r1, r30, -5312
00068c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000690  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000694  9f000fd8  addli r1, r30, -5120
000698  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00069c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006a0  9f000fcf  addli r1, r30, -6272
0006a4  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006a8  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0006ac  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0006b0  9f008fd8  addli r1, r30, -5056
0006b4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006b8  9f008fd9  addli r1, r30, -4928
0006bc  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006c0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006c4  9f008fda  addli r1, r30, -4800
0006c8  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006cc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006d0  9f008fdc  addli r1, r30, -4544
0006d4  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006d8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006dc  9f008fdb  addli r1, r30, -4672
0006e0  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006e4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006e8  9f008fce  addli r1, r30, -6336
0006ec  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006f0  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
0006f4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006f8  9f008fcf  addli r1, r30, -6208
0006fc  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000700  36106002  vmax.f.mz vr0{mr1}, vr0, vr6
000704  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000708  9f000fd9  addli r1, r30, -4992
00070c  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
000710  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000714  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000718  9f000fda  addli r1, r30, -4864
00071c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000720  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000724  9f000fd0  addli r1, r30, -6144
000728  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00072c  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
000730  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000734  9f000fdb  addli r1, r30, -4736
000738  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00073c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000740  9f008fd0  addli r1, r30, -6080
000744  36105002  vmax.f.mz vr0{mr1}, vr0, vr5
000748  3610b002  vmax.f.mz vr0{mr1}, vr0, vr11
00074c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000750  9f000fd1  addli r1, r30, -6016
000754  9232b002  vadd.s.mz vr5{mr1}, zero, vr11
000758  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
00075c  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
000760  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
000764  9f008fd1  addli r1, r30, -5952
000768  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
00076c  ea7006c0  vsrl.p vr1, r12, vr0
000770  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000774  ea7007c0  vsrl.p vr1, r14, vr0
000778  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00077c  9f000fd2  addli r1, r30, -5888
000780  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000784  eaf007c0  vsrl.p vr1, r15, vr0
000788  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00078c  ea7008c0  vsrl.p vr1, r16, vr0
000790  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
000794  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000798  fa100040  vextracti.f r1, 0(vr0)
00079c  73e01200  stores.w r1, 0(r5)
0007a0  00a00300  mfence { lm, sm, gm }
0007a4  80210204  csr_set csr3, r4
0007a8  00d00100  sync_group
0007ac  bb900600  bneq r13, zero, 36
0007b0  efc00d00  loads.w r1, 0(r27)
0007b4  efc14d00  loads.w r3, 4(r27)
0007b8  6fcb8d00  loads.w r22, 8(r27)
0007bc  efcbcd00  loads.w r23, 12(r27)
0007c0  8be03048  max.f r1, r1, r3
0007c4  8be06049  max.f r1, r1, r22
0007c8  8be07049  max.f r1, r1, r23
0007cc  73e01d00  stores.w r1, 0(r27)
0007d0  00a00300  mfence { lm, sm, gm }
0007d4  80210204  csr_set csr3, r4
0007d8  00d00100  sync_group
0007dc  efc00d00  loads.w r1, 0(r27)
0007e0  ab010080  lui r3, 524288
0007e4  97a03000  xor r1, r1, r3
0007e8  9f018fd2  addli r3, r30, -5824
0007ec  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0007f0  9f010fd5  addli r3, r30, -5504
0007f4  92930002  vadd.f.mz.rn vr7{mr1}, r1, vr0
0007f8  46107fe2  vstore_mask16.mz vr7{mr1}, 1792(r30)
0007fc  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000800  9f010fd4  addli r3, r30, -5632
000804  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000808  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
00080c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000810  9f018fd3  addli r3, r30, -5696
000814  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000818  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
00081c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000820  9f010fd3  addli r3, r30, -5760
000824  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000828  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
00082c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000830  00a00000  mfence { lm }
000834  e3810900  loadli.w r3,  0(r19)
000838  63cb0900  loadli.w r22,  4(r19)
00083c  e38b1900  loadli.w r23,  8(r19)
000840  63ca1900  loadli.w r20,  12(r19)
000844  8f810100  exp.f.rn r3, r3
000848  0f0b0b00  exp.f.rn r22, r22
00084c  8f8b0b00  exp.f.rn r23, r23
000850  0f0a0a00  exp.f.rn r20, r20
000854  67803900  storeli.w r3, 0(r19)
000858  67c06901  storeli.w r22, 4(r19)
00085c  e7807901  storeli.w r23, 8(r19)
000860  e7c04901  storeli.w r20, 12(r19)
000864  e3812900  loadli.w r3,  16(r19)
000868  63cb2900  loadli.w r22,  20(r19)
00086c  e38b3900  loadli.w r23,  24(r19)
000870  63ca3900  loadli.w r20,  28(r19)
000874  8f810100  exp.f.rn r3, r3
000878  0f0b0b00  exp.f.rn r22, r22
00087c  8f8b0b00  exp.f.rn r23, r23
000880  0f0a0a00  exp.f.rn r20, r20
000884  67813900  storeli.w r3, 16(r19)
000888  67c16901  storeli.w r22, 20(r19)
00088c  e7817901  storeli.w r23, 24(r19)
000890  e7c14901  storeli.w r20, 28(r19)
000894  e3814900  loadli.w r3,  32(r19)
000898  63cb4900  loadli.w r22,  36(r19)
00089c  e38b5900  loadli.w r23,  40(r19)
0008a0  63ca5900  loadli.w r20,  44(r19)
0008a4  8f810100  exp.f.rn r3, r3
0008a8  0f0b0b00  exp.f.rn r22, r22
0008ac  8f8b0b00  exp.f.rn r23, r23
0008b0  0f0a0a00  exp.f.rn r20, r20
0008b4  67823900  storeli.w r3, 32(r19)
0008b8  67c26901  storeli.w r22, 36(r19)
0008bc  e7827901  storeli.w r23, 40(r19)
0008c0  e7c24901  storeli.w r20, 44(r19)
0008c4  e3816900  loadli.w r3,  48(r19)
0008c8  63cb6900  loadli.w r22,  52(r19)
0008cc  e38b7900  loadli.w r23,  56(r19)
0008d0  63ca7900  loadli.w r20,  60(r19)
0008d4  8f810100  exp.f.rn r3, r3
0008d8  0f0b0b00  exp.f.rn r22, r22
0008dc  8f8b0b00  exp.f.rn r23, r23
0008e0  0f0a0a00  exp.f.rn r20, r20
0008e4  67833900  storeli.w r3, 48(r19)
0008e8  67c36901  storeli.w r22, 52(r19)
0008ec  e7837901  storeli.w r23, 56(r19)
0008f0  e7c34901  storeli.w r20, 60(r19)
0008f4  e3818900  loadli.w r3,  64(r19)
0008f8  63cb8900  loadli.w r22,  68(r19)
0008fc  e38b9900  loadli.w r23,  72(r19)
000900  63ca9900  loadli.w r20,  76(r19)
000904  8f810100  exp.f.rn r3, r3
000908  0f0b0b00  exp.f.rn r22, r22
00090c  8f8b0b00  exp.f.rn r23, r23
000910  0f0a0a00  exp.f.rn r20, r20
000914  67843900  storeli.w r3, 64(r19)
000918  67c46901  storeli.w r22, 68(r19)
00091c  e7847901  storeli.w r23, 72(r19)
000920  e7c44901  storeli.w r20, 76(r19)
000924  e381a900  loadli.w r3,  80(r19)
000928  63cba900  loadli.w r22,  84(r19)
00092c  e38bb900  loadli.w r23,  88(r19)
000930  63cab900  loadli.w r20,  92(r19)
000934  8f810100  exp.f.rn r3, r3
000938  0f0b0b00  exp.f.rn r22, r22
00093c  8f8b0b00  exp.f.rn r23, r23
000940  0f0a0a00  exp.f.rn r20, r20
000944  67853900  storeli.w r3, 80(r19)
000948  67c56901  storeli.w r22, 84(r19)
00094c  e7857901  storeli.w r23, 88(r19)
000950  e7c54901  storeli.w r20, 92(r19)
000954  e381c900  loadli.w r3,  96(r19)
000958  63cbc900  loadli.w r22,  100(r19)
00095c  e38bd900  loadli.w r23,  104(r19)
000960  63cad900  loadli.w r20,  108(r19)
000964  8f810100  exp.f.rn r3, r3
000968  0f0b0b00  exp.f.rn r22, r22
00096c  8f8b0b00  exp.f.rn r23, r23
000970  0f0a0a00  exp.f.rn r20, r20
000974  67863900  storeli.w r3, 96(r19)
000978  67c66901  storeli.w r22, 100(r19)
00097c  e7867901  storeli.w r23, 104(r19)
000980  e7c64901  storeli.w r20, 108(r19)
000984  e381e900  loadli.w r3,  112(r19)
000988  63cbe900  loadli.w r22,  116(r19)
00098c  e38bf900  loadli.w r23,  120(r19)
000990  63caf900  loadli.w r20,  124(r19)
000994  8f810100  exp.f.rn r3, r3
000998  0f0b0b00  exp.f.rn r22, r22
00099c  8f8b0b00  exp.f.rn r23, r23
0009a0  0f0a0a00  exp.f.rn r20, r20
0009a4  67873900  storeli.w r3, 112(r19)
0009a8  67c76901  storeli.w r22, 116(r19)
0009ac  e7877901  storeli.w r23, 120(r19)
0009b0  e7c74901  storeli.w r20, 124(r19)
0009b4  e3810901  loadli.w r3,  128(r19)
0009b8  63cb0901  loadli.w r22,  132(r19)
0009bc  e38b1901  loadli.w r23,  136(r19)
0009c0  63ca1901  loadli.w r20,  140(r19)
0009c4  8f810100  exp.f.rn r3, r3
0009c8  0f0b0b00  exp.f.rn r22, r22
0009cc  8f8b0b00  exp.f.rn r23, r23
0009d0  0f0a0a00  exp.f.rn r20, r20
0009d4  67883900  storeli.w r3, 128(r19)
0009d8  67c86901  storeli.w r22, 132(r19)
0009dc  e7887901  storeli.w r23, 136(r19)
0009e0  e7c84901  storeli.w r20, 140(r19)
0009e4  e3812901  loadli.w r3,  144(r19)
0009e8  63cb2901  loadli.w r22,  148(r19)
0009ec  e38b3901  loadli.w r23,  152(r19)
0009f0  63ca3901  loadli.w r20,  156(r19)
0009f4  8f810100  exp.f.rn r3, r3
0009f8  0f0b0b00  exp.f.rn r22, r22
0009fc  8f8b0b00  exp.f.rn r23, r23
000a00  0f0a0a00  exp.f.rn r20, r20
000a04  67893900  storeli.w r3, 144(r19)
000a08  67c96901  storeli.w r22, 148(r19)
000a0c  e7897901  storeli.w r23, 152(r19)
000a10  e7c94901  storeli.w r20, 156(r19)
000a14  e3814901  loadli.w r3,  160(r19)
000a18  63cb4901  loadli.w r22,  164(r19)
000a1c  e38b5901  loadli.w r23,  168(r19)
000a20  63ca5901  loadli.w r20,  172(r19)
000a24  8f810100  exp.f.rn r3, r3
000a28  0f0b0b00  exp.f.rn r22, r22
000a2c  8f8b0b00  exp.f.rn r23, r23
000a30  0f0a0a00  exp.f.rn r20, r20
000a34  678a3900  storeli.w r3, 160(r19)
000a38  67ca6901  storeli.w r22, 164(r19)
000a3c  e78a7901  storeli.w r23, 168(r19)
000a40  e7ca4901  storeli.w r20, 172(r19)
000a44  e3816901  loadli.w r3,  176(r19)
000a48  63cb6901  loadli.w r22,  180(r19)
000a4c  e38b7901  loadli.w r23,  184(r19)
000a50  63ca7901  loadli.w r20,  188(r19)
000a54  8f810100  exp.f.rn r3, r3
000a58  0f0b0b00  exp.f.rn r22, r22
000a5c  8f8b0b00  exp.f.rn r23, r23
000a60  0f0a0a00  exp.f.rn r20, r20
000a64  678b3900  storeli.w r3, 176(r19)
000a68  67cb6901  storeli.w r22, 180(r19)
000a6c  e78b7901  storeli.w r23, 184(r19)
000a70  e7cb4901  storeli.w r20, 188(r19)
000a74  e3818901  loadli.w r3,  192(r19)
000a78  63cb8901  loadli.w r22,  196(r19)
000a7c  e38b9901  loadli.w r23,  200(r19)
000a80  63ca9901  loadli.w r20,  204(r19)
000a84  8f810100  exp.f.rn r3, r3
000a88  0f0b0b00  exp.f.rn r22, r22
000a8c  8f8b0b00  exp.f.rn r23, r23
000a90  0f0a0a00  exp.f.rn r20, r20
000a94  678c3900  storeli.w r3, 192(r19)
000a98  67cc6901  storeli.w r22, 196(r19)
000a9c  e78c7901  storeli.w r23, 200(r19)
000aa0  e7cc4901  storeli.w r20, 204(r19)
000aa4  e381a901  loadli.w r3,  208(r19)
000aa8  63cba901  loadli.w r22,  212(r19)
000aac  e38bb901  loadli.w r23,  216(r19)
000ab0  63cab901  loadli.w r20,  220(r19)
000ab4  8f810100  exp.f.rn r3, r3
000ab8  0f0b0b00  exp.f.rn r22, r22
000abc  8f8b0b00  exp.f.rn r23, r23
000ac0  0f0a0a00  exp.f.rn r20, r20
000ac4  678d3900  storeli.w r3, 208(r19)
000ac8  67cd6901  storeli.w r22, 212(r19)
000acc  e78d7901  storeli.w r23, 216(r19)
000ad0  e7cd4901  storeli.w r20, 220(r19)
000ad4  e381c901  loadli.w r3,  224(r19)
000ad8  63cbc901  loadli.w r22,  228(r19)
000adc  e38bd901  loadli.w r23,  232(r19)
000ae0  63cad901  loadli.w r20,  236(r19)
000ae4  8f810100  exp.f.rn r3, r3
000ae8  0f0b0b00  exp.f.rn r22, r22
000aec  8f8b0b00  exp.f.rn r23, r23
000af0  0f0a0a00  exp.f.rn r20, r20
000af4  678e3900  storeli.w r3, 224(r19)
000af8  67ce6901  storeli.w r22, 228(r19)
000afc  e78e7901  storeli.w r23, 232(r19)
000b00  e7ce4901  storeli.w r20, 236(r19)
000b04  e381e901  loadli.w r3,  240(r19)
000b08  63cbe901  loadli.w r22,  244(r19)
000b0c  e38bf901  loadli.w r23,  248(r19)
000b10  63caf901  loadli.w r20,  252(r19)
000b14  8f810100  exp.f.rn r3, r3
000b18  0f0b0b00  exp.f.rn r22, r22
000b1c  8f8b0b00  exp.f.rn r23, r23
000b20  0f0a0a00  exp.f.rn r20, r20
000b24  678f3900  storeli.w r3, 240(r19)
000b28  67cf6901  storeli.w r22, 244(r19)
000b2c  e78f7901  storeli.w r23, 248(r19)
000b30  e7cf4901  storeli.w r20, 252(r19)
000b34  00a00000  mfence { lm }
000b38  c2130fe2  vload_mask16.mz vr7{mr1}, 1792(r30)
000b3c  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
000b40  9f018fd5  addli r3, r30, -5440
000b44  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
000b48  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000b4c  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
000b50  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
000b54  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000b58  9f018fd4  addli r3, r30, -5568
000b5c  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000b60  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
000b64  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000b68  9f010fd5  addli r3, r30, -5504
000b6c  92910002  vadd.f.mz.rn vr3{mr1}, r1, vr0
000b70  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
000b74  9f018fd4  addli r3, r30, -5568
000b78  16901302  vadd.f.mz.rn vr0{mr1}, vr7, vr1
000b7c  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000b80  9f010fd7  addli r3, r30, -5248
000b84  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
000b88  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000b8c  9f018fd5  addli r3, r30, -5440
000b90  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000b94  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000b98  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000b9c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
000ba0  9f010fd6  addli r3, r30, -5376
000ba4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000ba8  00a00000  mfence { lm }
000bac  e3810900  loadli.w r3,  0(r19)
000bb0  63ca0900  loadli.w r20,  4(r19)
000bb4  638b1900  loadli.w r22,  8(r19)
000bb8  e3cb1900  loadli.w r23,  12(r19)
000bbc  8f810100  exp.f.rn r3, r3
000bc0  0f0a0a00  exp.f.rn r20, r20
000bc4  0f0b0b00  exp.f.rn r22, r22
000bc8  8f8b0b00  exp.f.rn r23, r23
000bcc  67803900  storeli.w r3, 0(r19)
000bd0  67c04901  storeli.w r20, 4(r19)
000bd4  e7806901  storeli.w r22, 8(r19)
000bd8  e7c07901  storeli.w r23, 12(r19)
000bdc  e3812900  loadli.w r3,  16(r19)
000be0  63ca2900  loadli.w r20,  20(r19)
000be4  638b3900  loadli.w r22,  24(r19)
000be8  e3cb3900  loadli.w r23,  28(r19)
000bec  8f810100  exp.f.rn r3, r3
000bf0  0f0a0a00  exp.f.rn r20, r20
000bf4  0f0b0b00  exp.f.rn r22, r22
000bf8  8f8b0b00  exp.f.rn r23, r23
000bfc  67813900  storeli.w r3, 16(r19)
000c00  67c14901  storeli.w r20, 20(r19)
000c04  e7816901  storeli.w r22, 24(r19)
000c08  e7c17901  storeli.w r23, 28(r19)
000c0c  e3814900  loadli.w r3,  32(r19)
000c10  63ca4900  loadli.w r20,  36(r19)
000c14  638b5900  loadli.w r22,  40(r19)
000c18  e3cb5900  loadli.w r23,  44(r19)
000c1c  8f810100  exp.f.rn r3, r3
000c20  0f0a0a00  exp.f.rn r20, r20
000c24  0f0b0b00  exp.f.rn r22, r22
000c28  8f8b0b00  exp.f.rn r23, r23
000c2c  67823900  storeli.w r3, 32(r19)
000c30  67c24901  storeli.w r20, 36(r19)
000c34  e7826901  storeli.w r22, 40(r19)
000c38  e7c27901  storeli.w r23, 44(r19)
000c3c  e3816900  loadli.w r3,  48(r19)
000c40  63ca6900  loadli.w r20,  52(r19)
000c44  638b7900  loadli.w r22,  56(r19)
000c48  e3cb7900  loadli.w r23,  60(r19)
000c4c  8f810100  exp.f.rn r3, r3
000c50  0f0a0a00  exp.f.rn r20, r20
000c54  0f0b0b00  exp.f.rn r22, r22
000c58  8f8b0b00  exp.f.rn r23, r23
000c5c  67833900  storeli.w r3, 48(r19)
000c60  67c34901  storeli.w r20, 52(r19)
000c64  e7836901  storeli.w r22, 56(r19)
000c68  e7c37901  storeli.w r23, 60(r19)
000c6c  e3818900  loadli.w r3,  64(r19)
000c70  63ca8900  loadli.w r20,  68(r19)
000c74  638b9900  loadli.w r22,  72(r19)
000c78  e3cb9900  loadli.w r23,  76(r19)
000c7c  8f810100  exp.f.rn r3, r3
000c80  0f0a0a00  exp.f.rn r20, r20
000c84  0f0b0b00  exp.f.rn r22, r22
000c88  8f8b0b00  exp.f.rn r23, r23
000c8c  67843900  storeli.w r3, 64(r19)
000c90  67c44901  storeli.w r20, 68(r19)
000c94  e7846901  storeli.w r22, 72(r19)
000c98  e7c47901  storeli.w r23, 76(r19)
000c9c  e381a900  loadli.w r3,  80(r19)
000ca0  63caa900  loadli.w r20,  84(r19)
000ca4  638bb900  loadli.w r22,  88(r19)
000ca8  e3cbb900  loadli.w r23,  92(r19)
000cac  8f810100  exp.f.rn r3, r3
000cb0  0f0a0a00  exp.f.rn r20, r20
000cb4  0f0b0b00  exp.f.rn r22, r22
000cb8  8f8b0b00  exp.f.rn r23, r23
000cbc  67853900  storeli.w r3, 80(r19)
000cc0  67c54901  storeli.w r20, 84(r19)
000cc4  e7856901  storeli.w r22, 88(r19)
000cc8  e7c57901  storeli.w r23, 92(r19)
000ccc  e381c900  loadli.w r3,  96(r19)
000cd0  63cac900  loadli.w r20,  100(r19)
000cd4  638bd900  loadli.w r22,  104(r19)
000cd8  e3cbd900  loadli.w r23,  108(r19)
000cdc  8f810100  exp.f.rn r3, r3
000ce0  0f0a0a00  exp.f.rn r20, r20
000ce4  0f0b0b00  exp.f.rn r22, r22
000ce8  8f8b0b00  exp.f.rn r23, r23
000cec  67863900  storeli.w r3, 96(r19)
000cf0  67c64901  storeli.w r20, 100(r19)
000cf4  e7866901  storeli.w r22, 104(r19)
000cf8  e7c67901  storeli.w r23, 108(r19)
000cfc  e381e900  loadli.w r3,  112(r19)
000d00  63cae900  loadli.w r20,  116(r19)
000d04  638bf900  loadli.w r22,  120(r19)
000d08  e3cbf900  loadli.w r23,  124(r19)
000d0c  8f810100  exp.f.rn r3, r3
000d10  0f0a0a00  exp.f.rn r20, r20
000d14  0f0b0b00  exp.f.rn r22, r22
000d18  8f8b0b00  exp.f.rn r23, r23
000d1c  67873900  storeli.w r3, 112(r19)
000d20  67c74901  storeli.w r20, 116(r19)
000d24  e7876901  storeli.w r22, 120(r19)
000d28  e7c77901  storeli.w r23, 124(r19)
000d2c  e3810901  loadli.w r3,  128(r19)
000d30  63ca0901  loadli.w r20,  132(r19)
000d34  638b1901  loadli.w r22,  136(r19)
000d38  e3cb1901  loadli.w r23,  140(r19)
000d3c  8f810100  exp.f.rn r3, r3
000d40  0f0a0a00  exp.f.rn r20, r20
000d44  0f0b0b00  exp.f.rn r22, r22
000d48  8f8b0b00  exp.f.rn r23, r23
000d4c  67883900  storeli.w r3, 128(r19)
000d50  67c84901  storeli.w r20, 132(r19)
000d54  e7886901  storeli.w r22, 136(r19)
000d58  e7c87901  storeli.w r23, 140(r19)
000d5c  e3812901  loadli.w r3,  144(r19)
000d60  63ca2901  loadli.w r20,  148(r19)
000d64  638b3901  loadli.w r22,  152(r19)
000d68  e3cb3901  loadli.w r23,  156(r19)
000d6c  8f810100  exp.f.rn r3, r3
000d70  0f0a0a00  exp.f.rn r20, r20
000d74  0f0b0b00  exp.f.rn r22, r22
000d78  8f8b0b00  exp.f.rn r23, r23
000d7c  67893900  storeli.w r3, 144(r19)
000d80  67c94901  storeli.w r20, 148(r19)
000d84  e7896901  storeli.w r22, 152(r19)
000d88  e7c97901  storeli.w r23, 156(r19)
000d8c  e3814901  loadli.w r3,  160(r19)
000d90  63ca4901  loadli.w r20,  164(r19)
000d94  638b5901  loadli.w r22,  168(r19)
000d98  e3cb5901  loadli.w r23,  172(r19)
000d9c  8f810100  exp.f.rn r3, r3
000da0  0f0a0a00  exp.f.rn r20, r20
000da4  0f0b0b00  exp.f.rn r22, r22
000da8  8f8b0b00  exp.f.rn r23, r23
000dac  678a3900  storeli.w r3, 160(r19)
000db0  67ca4901  storeli.w r20, 164(r19)
000db4  e78a6901  storeli.w r22, 168(r19)
000db8  e7ca7901  storeli.w r23, 172(r19)
000dbc  e3816901  loadli.w r3,  176(r19)
000dc0  63ca6901  loadli.w r20,  180(r19)
000dc4  638b7901  loadli.w r22,  184(r19)
000dc8  e3cb7901  loadli.w r23,  188(r19)
000dcc  8f810100  exp.f.rn r3, r3
000dd0  0f0a0a00  exp.f.rn r20, r20
000dd4  0f0b0b00  exp.f.rn r22, r22
000dd8  8f8b0b00  exp.f.rn r23, r23
000ddc  678b3900  storeli.w r3, 176(r19)
000de0  67cb4901  storeli.w r20, 180(r19)
000de4  e78b6901  storeli.w r22, 184(r19)
000de8  e7cb7901  storeli.w r23, 188(r19)
000dec  e3818901  loadli.w r3,  192(r19)
000df0  63ca8901  loadli.w r20,  196(r19)
000df4  638b9901  loadli.w r22,  200(r19)
000df8  e3cb9901  loadli.w r23,  204(r19)
000dfc  8f810100  exp.f.rn r3, r3
000e00  0f0a0a00  exp.f.rn r20, r20
000e04  0f0b0b00  exp.f.rn r22, r22
000e08  8f8b0b00  exp.f.rn r23, r23
000e0c  678c3900  storeli.w r3, 192(r19)
000e10  67cc4901  storeli.w r20, 196(r19)
000e14  e78c6901  storeli.w r22, 200(r19)
000e18  e7cc7901  storeli.w r23, 204(r19)
000e1c  e381a901  loadli.w r3,  208(r19)
000e20  63caa901  loadli.w r20,  212(r19)
000e24  638bb901  loadli.w r22,  216(r19)
000e28  e3cbb901  loadli.w r23,  220(r19)
000e2c  8f810100  exp.f.rn r3, r3
000e30  0f0a0a00  exp.f.rn r20, r20
000e34  0f0b0b00  exp.f.rn r22, r22
000e38  8f8b0b00  exp.f.rn r23, r23
000e3c  678d3900  storeli.w r3, 208(r19)
000e40  67cd4901  storeli.w r20, 212(r19)
000e44  e78d6901  storeli.w r22, 216(r19)
000e48  e7cd7901  storeli.w r23, 220(r19)
000e4c  e381c901  loadli.w r3,  224(r19)
000e50  63cac901  loadli.w r20,  228(r19)
000e54  638bd901  loadli.w r22,  232(r19)
000e58  e3cbd901  loadli.w r23,  236(r19)
000e5c  8f810100  exp.f.rn r3, r3
000e60  0f0a0a00  exp.f.rn r20, r20
000e64  0f0b0b00  exp.f.rn r22, r22
000e68  8f8b0b00  exp.f.rn r23, r23
000e6c  678e3900  storeli.w r3, 224(r19)
000e70  67ce4901  storeli.w r20, 228(r19)
000e74  e78e6901  storeli.w r22, 232(r19)
000e78  e7ce7901  storeli.w r23, 236(r19)
000e7c  e381e901  loadli.w r3,  240(r19)
000e80  63cae901  loadli.w r20,  244(r19)
000e84  638bf901  loadli.w r22,  248(r19)
000e88  e3cbf901  loadli.w r23,  252(r19)
000e8c  8f810100  exp.f.rn r3, r3
000e90  0f0a0a00  exp.f.rn r20, r20
000e94  0f0b0b00  exp.f.rn r22, r22
000e98  8f8b0b00  exp.f.rn r23, r23
000e9c  678f3900  storeli.w r3, 240(r19)
000ea0  67cf4901  storeli.w r20, 244(r19)
000ea4  e78f6901  storeli.w r22, 248(r19)
000ea8  e7cf7901  storeli.w r23, 252(r19)
000eac  00a00000  mfence { lm }
000eb0  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000eb4  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
000eb8  9f010fd7  addli r3, r30, -5248
000ebc  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000ec0  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000ec4  9f010fd6  addli r3, r30, -5376
000ec8  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
000ecc  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
000ed0  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
000ed4  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000ed8  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
000edc  9f018fdd  addli r3, r30, -4416
000ee0  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000ee4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000ee8  9f010fdd  addli r3, r30, -4480
000eec  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000ef0  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000ef4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000ef8  9f010fd4  addli r3, r30, -5632
000efc  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000f00  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f04  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000f08  9f018fd6  addli r3, r30, -5312
000f0c  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
000f10  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f14  9f010fdd  addli r3, r30, -4480
000f18  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000f1c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f20  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000f24  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000f28  9f010fd8  addli r3, r30, -5120
000f2c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f30  00a00000  mfence { lm }
000f34  e3810900  loadli.w r3,  0(r19)
000f38  63ca0900  loadli.w r20,  4(r19)
000f3c  638b1900  loadli.w r22,  8(r19)
000f40  e3cb1900  loadli.w r23,  12(r19)
000f44  8f810100  exp.f.rn r3, r3
000f48  0f0a0a00  exp.f.rn r20, r20
000f4c  0f0b0b00  exp.f.rn r22, r22
000f50  8f8b0b00  exp.f.rn r23, r23
000f54  67803900  storeli.w r3, 0(r19)
000f58  67c04901  storeli.w r20, 4(r19)
000f5c  e7806901  storeli.w r22, 8(r19)
000f60  e7c07901  storeli.w r23, 12(r19)
000f64  e3812900  loadli.w r3,  16(r19)
000f68  63ca2900  loadli.w r20,  20(r19)
000f6c  638b3900  loadli.w r22,  24(r19)
000f70  e3cb3900  loadli.w r23,  28(r19)
000f74  8f810100  exp.f.rn r3, r3
000f78  0f0a0a00  exp.f.rn r20, r20
000f7c  0f0b0b00  exp.f.rn r22, r22
000f80  8f8b0b00  exp.f.rn r23, r23
000f84  67813900  storeli.w r3, 16(r19)
000f88  67c14901  storeli.w r20, 20(r19)
000f8c  e7816901  storeli.w r22, 24(r19)
000f90  e7c17901  storeli.w r23, 28(r19)
000f94  e3814900  loadli.w r3,  32(r19)
000f98  63ca4900  loadli.w r20,  36(r19)
000f9c  638b5900  loadli.w r22,  40(r19)
000fa0  e3cb5900  loadli.w r23,  44(r19)
000fa4  8f810100  exp.f.rn r3, r3
000fa8  0f0a0a00  exp.f.rn r20, r20
000fac  0f0b0b00  exp.f.rn r22, r22
000fb0  8f8b0b00  exp.f.rn r23, r23
000fb4  67823900  storeli.w r3, 32(r19)
000fb8  67c24901  storeli.w r20, 36(r19)
000fbc  e7826901  storeli.w r22, 40(r19)
000fc0  e7c27901  storeli.w r23, 44(r19)
000fc4  e3816900  loadli.w r3,  48(r19)
000fc8  63ca6900  loadli.w r20,  52(r19)
000fcc  638b7900  loadli.w r22,  56(r19)
000fd0  e3cb7900  loadli.w r23,  60(r19)
000fd4  8f810100  exp.f.rn r3, r3
000fd8  0f0a0a00  exp.f.rn r20, r20
000fdc  0f0b0b00  exp.f.rn r22, r22
000fe0  8f8b0b00  exp.f.rn r23, r23
000fe4  67833900  storeli.w r3, 48(r19)
000fe8  67c34901  storeli.w r20, 52(r19)
000fec  e7836901  storeli.w r22, 56(r19)
000ff0  e7c37901  storeli.w r23, 60(r19)
000ff4  e3818900  loadli.w r3,  64(r19)
000ff8  63ca8900  loadli.w r20,  68(r19)
000ffc  638b9900  loadli.w r22,  72(r19)
001000  e3cb9900  loadli.w r23,  76(r19)
001004  8f810100  exp.f.rn r3, r3
001008  0f0a0a00  exp.f.rn r20, r20
00100c  0f0b0b00  exp.f.rn r22, r22
001010  8f8b0b00  exp.f.rn r23, r23
001014  67843900  storeli.w r3, 64(r19)
001018  67c44901  storeli.w r20, 68(r19)
00101c  e7846901  storeli.w r22, 72(r19)
001020  e7c47901  storeli.w r23, 76(r19)
001024  e381a900  loadli.w r3,  80(r19)
001028  63caa900  loadli.w r20,  84(r19)
00102c  638bb900  loadli.w r22,  88(r19)
001030  e3cbb900  loadli.w r23,  92(r19)
001034  8f810100  exp.f.rn r3, r3
001038  0f0a0a00  exp.f.rn r20, r20
00103c  0f0b0b00  exp.f.rn r22, r22
001040  8f8b0b00  exp.f.rn r23, r23
001044  67853900  storeli.w r3, 80(r19)
001048  67c54901  storeli.w r20, 84(r19)
00104c  e7856901  storeli.w r22, 88(r19)
001050  e7c57901  storeli.w r23, 92(r19)
001054  e381c900  loadli.w r3,  96(r19)
001058  63cac900  loadli.w r20,  100(r19)
00105c  638bd900  loadli.w r22,  104(r19)
001060  e3cbd900  loadli.w r23,  108(r19)
001064  8f810100  exp.f.rn r3, r3
001068  0f0a0a00  exp.f.rn r20, r20
00106c  0f0b0b00  exp.f.rn r22, r22
001070  8f8b0b00  exp.f.rn r23, r23
001074  67863900  storeli.w r3, 96(r19)
001078  67c64901  storeli.w r20, 100(r19)
00107c  e7866901  storeli.w r22, 104(r19)
001080  e7c67901  storeli.w r23, 108(r19)
001084  e381e900  loadli.w r3,  112(r19)
001088  63cae900  loadli.w r20,  116(r19)
00108c  638bf900  loadli.w r22,  120(r19)
001090  e3cbf900  loadli.w r23,  124(r19)
001094  8f810100  exp.f.rn r3, r3
001098  0f0a0a00  exp.f.rn r20, r20
00109c  0f0b0b00  exp.f.rn r22, r22
0010a0  8f8b0b00  exp.f.rn r23, r23
0010a4  67873900  storeli.w r3, 112(r19)
0010a8  67c74901  storeli.w r20, 116(r19)
0010ac  e7876901  storeli.w r22, 120(r19)
0010b0  e7c77901  storeli.w r23, 124(r19)
0010b4  e3810901  loadli.w r3,  128(r19)
0010b8  63ca0901  loadli.w r20,  132(r19)
0010bc  638b1901  loadli.w r22,  136(r19)
0010c0  e3cb1901  loadli.w r23,  140(r19)
0010c4  8f810100  exp.f.rn r3, r3
0010c8  0f0a0a00  exp.f.rn r20, r20
0010cc  0f0b0b00  exp.f.rn r22, r22
0010d0  8f8b0b00  exp.f.rn r23, r23
0010d4  67883900  storeli.w r3, 128(r19)
0010d8  67c84901  storeli.w r20, 132(r19)
0010dc  e7886901  storeli.w r22, 136(r19)
0010e0  e7c87901  storeli.w r23, 140(r19)
0010e4  e3812901  loadli.w r3,  144(r19)
0010e8  63ca2901  loadli.w r20,  148(r19)
0010ec  638b3901  loadli.w r22,  152(r19)
0010f0  e3cb3901  loadli.w r23,  156(r19)
0010f4  8f810100  exp.f.rn r3, r3
0010f8  0f0a0a00  exp.f.rn r20, r20
0010fc  0f0b0b00  exp.f.rn r22, r22
001100  8f8b0b00  exp.f.rn r23, r23
001104  67893900  storeli.w r3, 144(r19)
001108  67c94901  storeli.w r20, 148(r19)
00110c  e7896901  storeli.w r22, 152(r19)
001110  e7c97901  storeli.w r23, 156(r19)
001114  e3814901  loadli.w r3,  160(r19)
001118  63ca4901  loadli.w r20,  164(r19)
00111c  638b5901  loadli.w r22,  168(r19)
001120  e3cb5901  loadli.w r23,  172(r19)
001124  8f810100  exp.f.rn r3, r3
001128  0f0a0a00  exp.f.rn r20, r20
00112c  0f0b0b00  exp.f.rn r22, r22
001130  8f8b0b00  exp.f.rn r23, r23
001134  678a3900  storeli.w r3, 160(r19)
001138  67ca4901  storeli.w r20, 164(r19)
00113c  e78a6901  storeli.w r22, 168(r19)
001140  e7ca7901  storeli.w r23, 172(r19)
001144  e3816901  loadli.w r3,  176(r19)
001148  63ca6901  loadli.w r20,  180(r19)
00114c  638b7901  loadli.w r22,  184(r19)
001150  e3cb7901  loadli.w r23,  188(r19)
001154  8f810100  exp.f.rn r3, r3
001158  0f0a0a00  exp.f.rn r20, r20
00115c  0f0b0b00  exp.f.rn r22, r22
001160  8f8b0b00  exp.f.rn r23, r23
001164  678b3900  storeli.w r3, 176(r19)
001168  67cb4901  storeli.w r20, 180(r19)
00116c  e78b6901  storeli.w r22, 184(r19)
001170  e7cb7901  storeli.w r23, 188(r19)
001174  e3818901  loadli.w r3,  192(r19)
001178  63ca8901  loadli.w r20,  196(r19)
00117c  638b9901  loadli.w r22,  200(r19)
001180  e3cb9901  loadli.w r23,  204(r19)
001184  8f810100  exp.f.rn r3, r3
001188  0f0a0a00  exp.f.rn r20, r20
00118c  0f0b0b00  exp.f.rn r22, r22
001190  8f8b0b00  exp.f.rn r23, r23
001194  678c3900  storeli.w r3, 192(r19)
001198  67cc4901  storeli.w r20, 196(r19)
00119c  e78c6901  storeli.w r22, 200(r19)
0011a0  e7cc7901  storeli.w r23, 204(r19)
0011a4  e381a901  loadli.w r3,  208(r19)
0011a8  63caa901  loadli.w r20,  212(r19)
0011ac  638bb901  loadli.w r22,  216(r19)
0011b0  e3cbb901  loadli.w r23,  220(r19)
0011b4  8f810100  exp.f.rn r3, r3
0011b8  0f0a0a00  exp.f.rn r20, r20
0011bc  0f0b0b00  exp.f.rn r22, r22
0011c0  8f8b0b00  exp.f.rn r23, r23
0011c4  678d3900  storeli.w r3, 208(r19)
0011c8  67cd4901  storeli.w r20, 212(r19)
0011cc  e78d6901  storeli.w r22, 216(r19)
0011d0  e7cd7901  storeli.w r23, 220(r19)
0011d4  e381c901  loadli.w r3,  224(r19)
0011d8  63cac901  loadli.w r20,  228(r19)
0011dc  638bd901  loadli.w r22,  232(r19)
0011e0  e3cbd901  loadli.w r23,  236(r19)
0011e4  8f810100  exp.f.rn r3, r3
0011e8  0f0a0a00  exp.f.rn r20, r20
0011ec  0f0b0b00  exp.f.rn r22, r22
0011f0  8f8b0b00  exp.f.rn r23, r23
0011f4  678e3900  storeli.w r3, 224(r19)
0011f8  67ce4901  storeli.w r20, 228(r19)
0011fc  e78e6901  storeli.w r22, 232(r19)
001200  e7ce7901  storeli.w r23, 236(r19)
001204  e381e901  loadli.w r3,  240(r19)
001208  63cae901  loadli.w r20,  244(r19)
00120c  638bf901  loadli.w r22,  248(r19)
001210  e3cbf901  loadli.w r23,  252(r19)
001214  8f810100  exp.f.rn r3, r3
001218  0f0a0a00  exp.f.rn r20, r20
00121c  0f0b0b00  exp.f.rn r22, r22
001220  8f8b0b00  exp.f.rn r23, r23
001224  678f3900  storeli.w r3, 240(r19)
001228  67cf4901  storeli.w r20, 244(r19)
00122c  e78f6901  storeli.w r22, 248(r19)
001230  e7cf7901  storeli.w r23, 252(r19)
001234  00a00000  mfence { lm }
001238  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00123c  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
001240  9f018fdd  addli r3, r30, -4416
001244  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001248  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
00124c  9f010fd8  addli r3, r30, -5120
001250  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
001254  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
001258  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
00125c  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001260  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
001264  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001268  9f010fcf  addli r3, r30, -6272
00126c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001270  9f018fd8  addli r3, r30, -5056
001274  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001278  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
00127c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001280  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001284  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
001288  9f018fd9  addli r3, r30, -4928
00128c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001290  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001294  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001298  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
00129c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0012a0  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0012a4  9f018fda  addli r3, r30, -4800
0012a8  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0012ac  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0012b0  00a00000  mfence { lm }
0012b4  e3810900  loadli.w r3,  0(r19)
0012b8  63ca0900  loadli.w r20,  4(r19)
0012bc  638b1900  loadli.w r22,  8(r19)
0012c0  e3cb1900  loadli.w r23,  12(r19)
0012c4  8f810100  exp.f.rn r3, r3
0012c8  0f0a0a00  exp.f.rn r20, r20
0012cc  0f0b0b00  exp.f.rn r22, r22
0012d0  8f8b0b00  exp.f.rn r23, r23
0012d4  67803900  storeli.w r3, 0(r19)
0012d8  67c04901  storeli.w r20, 4(r19)
0012dc  e7806901  storeli.w r22, 8(r19)
0012e0  e7c07901  storeli.w r23, 12(r19)
0012e4  e3812900  loadli.w r3,  16(r19)
0012e8  63ca2900  loadli.w r20,  20(r19)
0012ec  638b3900  loadli.w r22,  24(r19)
0012f0  e3cb3900  loadli.w r23,  28(r19)
0012f4  8f810100  exp.f.rn r3, r3
0012f8  0f0a0a00  exp.f.rn r20, r20
0012fc  0f0b0b00  exp.f.rn r22, r22
001300  8f8b0b00  exp.f.rn r23, r23
001304  67813900  storeli.w r3, 16(r19)
001308  67c14901  storeli.w r20, 20(r19)
00130c  e7816901  storeli.w r22, 24(r19)
001310  e7c17901  storeli.w r23, 28(r19)
001314  e3814900  loadli.w r3,  32(r19)
001318  63ca4900  loadli.w r20,  36(r19)
00131c  638b5900  loadli.w r22,  40(r19)
001320  e3cb5900  loadli.w r23,  44(r19)
001324  8f810100  exp.f.rn r3, r3
001328  0f0a0a00  exp.f.rn r20, r20
00132c  0f0b0b00  exp.f.rn r22, r22
001330  8f8b0b00  exp.f.rn r23, r23
001334  67823900  storeli.w r3, 32(r19)
001338  67c24901  storeli.w r20, 36(r19)
00133c  e7826901  storeli.w r22, 40(r19)
001340  e7c27901  storeli.w r23, 44(r19)
001344  e3816900  loadli.w r3,  48(r19)
001348  63ca6900  loadli.w r20,  52(r19)
00134c  638b7900  loadli.w r22,  56(r19)
001350  e3cb7900  loadli.w r23,  60(r19)
001354  8f810100  exp.f.rn r3, r3
001358  0f0a0a00  exp.f.rn r20, r20
00135c  0f0b0b00  exp.f.rn r22, r22
001360  8f8b0b00  exp.f.rn r23, r23
001364  67833900  storeli.w r3, 48(r19)
001368  67c34901  storeli.w r20, 52(r19)
00136c  e7836901  storeli.w r22, 56(r19)
001370  e7c37901  storeli.w r23, 60(r19)
001374  e3818900  loadli.w r3,  64(r19)
001378  63ca8900  loadli.w r20,  68(r19)
00137c  638b9900  loadli.w r22,  72(r19)
001380  e3cb9900  loadli.w r23,  76(r19)
001384  8f810100  exp.f.rn r3, r3
001388  0f0a0a00  exp.f.rn r20, r20
00138c  0f0b0b00  exp.f.rn r22, r22
001390  8f8b0b00  exp.f.rn r23, r23
001394  67843900  storeli.w r3, 64(r19)
001398  67c44901  storeli.w r20, 68(r19)
00139c  e7846901  storeli.w r22, 72(r19)
0013a0  e7c47901  storeli.w r23, 76(r19)
0013a4  e381a900  loadli.w r3,  80(r19)
0013a8  63caa900  loadli.w r20,  84(r19)
0013ac  638bb900  loadli.w r22,  88(r19)
0013b0  e3cbb900  loadli.w r23,  92(r19)
0013b4  8f810100  exp.f.rn r3, r3
0013b8  0f0a0a00  exp.f.rn r20, r20
0013bc  0f0b0b00  exp.f.rn r22, r22
0013c0  8f8b0b00  exp.f.rn r23, r23
0013c4  67853900  storeli.w r3, 80(r19)
0013c8  67c54901  storeli.w r20, 84(r19)
0013cc  e7856901  storeli.w r22, 88(r19)
0013d0  e7c57901  storeli.w r23, 92(r19)
0013d4  e381c900  loadli.w r3,  96(r19)
0013d8  63cac900  loadli.w r20,  100(r19)
0013dc  638bd900  loadli.w r22,  104(r19)
0013e0  e3cbd900  loadli.w r23,  108(r19)
0013e4  8f810100  exp.f.rn r3, r3
0013e8  0f0a0a00  exp.f.rn r20, r20
0013ec  0f0b0b00  exp.f.rn r22, r22
0013f0  8f8b0b00  exp.f.rn r23, r23
0013f4  67863900  storeli.w r3, 96(r19)
0013f8  67c64901  storeli.w r20, 100(r19)
0013fc  e7866901  storeli.w r22, 104(r19)
001400  e7c67901  storeli.w r23, 108(r19)
001404  e381e900  loadli.w r3,  112(r19)
001408  63cae900  loadli.w r20,  116(r19)
00140c  638bf900  loadli.w r22,  120(r19)
001410  e3cbf900  loadli.w r23,  124(r19)
001414  8f810100  exp.f.rn r3, r3
001418  0f0a0a00  exp.f.rn r20, r20
00141c  0f0b0b00  exp.f.rn r22, r22
001420  8f8b0b00  exp.f.rn r23, r23
001424  67873900  storeli.w r3, 112(r19)
001428  67c74901  storeli.w r20, 116(r19)
00142c  e7876901  storeli.w r22, 120(r19)
001430  e7c77901  storeli.w r23, 124(r19)
001434  e3810901  loadli.w r3,  128(r19)
001438  63ca0901  loadli.w r20,  132(r19)
00143c  638b1901  loadli.w r22,  136(r19)
001440  e3cb1901  loadli.w r23,  140(r19)
001444  8f810100  exp.f.rn r3, r3
001448  0f0a0a00  exp.f.rn r20, r20
00144c  0f0b0b00  exp.f.rn r22, r22
001450  8f8b0b00  exp.f.rn r23, r23
001454  67883900  storeli.w r3, 128(r19)
001458  67c84901  storeli.w r20, 132(r19)
00145c  e7886901  storeli.w r22, 136(r19)
001460  e7c87901  storeli.w r23, 140(r19)
001464  e3812901  loadli.w r3,  144(r19)
001468  63ca2901  loadli.w r20,  148(r19)
00146c  638b3901  loadli.w r22,  152(r19)
001470  e3cb3901  loadli.w r23,  156(r19)
001474  8f810100  exp.f.rn r3, r3
001478  0f0a0a00  exp.f.rn r20, r20
00147c  0f0b0b00  exp.f.rn r22, r22
001480  8f8b0b00  exp.f.rn r23, r23
001484  67893900  storeli.w r3, 144(r19)
001488  67c94901  storeli.w r20, 148(r19)
00148c  e7896901  storeli.w r22, 152(r19)
001490  e7c97901  storeli.w r23, 156(r19)
001494  e3814901  loadli.w r3,  160(r19)
001498  63ca4901  loadli.w r20,  164(r19)
00149c  638b5901  loadli.w r22,  168(r19)
0014a0  e3cb5901  loadli.w r23,  172(r19)
0014a4  8f810100  exp.f.rn r3, r3
0014a8  0f0a0a00  exp.f.rn r20, r20
0014ac  0f0b0b00  exp.f.rn r22, r22
0014b0  8f8b0b00  exp.f.rn r23, r23
0014b4  678a3900  storeli.w r3, 160(r19)
0014b8  67ca4901  storeli.w r20, 164(r19)
0014bc  e78a6901  storeli.w r22, 168(r19)
0014c0  e7ca7901  storeli.w r23, 172(r19)
0014c4  e3816901  loadli.w r3,  176(r19)
0014c8  63ca6901  loadli.w r20,  180(r19)
0014cc  638b7901  loadli.w r22,  184(r19)
0014d0  e3cb7901  loadli.w r23,  188(r19)
0014d4  8f810100  exp.f.rn r3, r3
0014d8  0f0a0a00  exp.f.rn r20, r20
0014dc  0f0b0b00  exp.f.rn r22, r22
0014e0  8f8b0b00  exp.f.rn r23, r23
0014e4  678b3900  storeli.w r3, 176(r19)
0014e8  67cb4901  storeli.w r20, 180(r19)
0014ec  e78b6901  storeli.w r22, 184(r19)
0014f0  e7cb7901  storeli.w r23, 188(r19)
0014f4  e3818901  loadli.w r3,  192(r19)
0014f8  63ca8901  loadli.w r20,  196(r19)
0014fc  638b9901  loadli.w r22,  200(r19)
001500  e3cb9901  loadli.w r23,  204(r19)
001504  8f810100  exp.f.rn r3, r3
001508  0f0a0a00  exp.f.rn r20, r20
00150c  0f0b0b00  exp.f.rn r22, r22
001510  8f8b0b00  exp.f.rn r23, r23
001514  678c3900  storeli.w r3, 192(r19)
001518  67cc4901  storeli.w r20, 196(r19)
00151c  e78c6901  storeli.w r22, 200(r19)
001520  e7cc7901  storeli.w r23, 204(r19)
001524  e381a901  loadli.w r3,  208(r19)
001528  63caa901  loadli.w r20,  212(r19)
00152c  638bb901  loadli.w r22,  216(r19)
001530  e3cbb901  loadli.w r23,  220(r19)
001534  8f810100  exp.f.rn r3, r3
001538  0f0a0a00  exp.f.rn r20, r20
00153c  0f0b0b00  exp.f.rn r22, r22
001540  8f8b0b00  exp.f.rn r23, r23
001544  678d3900  storeli.w r3, 208(r19)
001548  67cd4901  storeli.w r20, 212(r19)
00154c  e78d6901  storeli.w r22, 216(r19)
001550  e7cd7901  storeli.w r23, 220(r19)
001554  e381c901  loadli.w r3,  224(r19)
001558  63cac901  loadli.w r20,  228(r19)
00155c  638bd901  loadli.w r22,  232(r19)
001560  e3cbd901  loadli.w r23,  236(r19)
001564  8f810100  exp.f.rn r3, r3
001568  0f0a0a00  exp.f.rn r20, r20
00156c  0f0b0b00  exp.f.rn r22, r22
001570  8f8b0b00  exp.f.rn r23, r23
001574  678e3900  storeli.w r3, 224(r19)
001578  67ce4901  storeli.w r20, 228(r19)
00157c  e78e6901  storeli.w r22, 232(r19)
001580  e7ce7901  storeli.w r23, 236(r19)
001584  e381e901  loadli.w r3,  240(r19)
001588  63cae901  loadli.w r20,  244(r19)
00158c  638bf901  loadli.w r22,  248(r19)
001590  e3cbf901  loadli.w r23,  252(r19)
001594  8f810100  exp.f.rn r3, r3
001598  0f0a0a00  exp.f.rn r20, r20
00159c  0f0b0b00  exp.f.rn r22, r22
0015a0  8f8b0b00  exp.f.rn r23, r23
0015a4  678f3900  storeli.w r3, 240(r19)
0015a8  67cf4901  storeli.w r20, 244(r19)
0015ac  e78f6901  storeli.w r22, 248(r19)
0015b0  e7cf7901  storeli.w r23, 252(r19)
0015b4  00a00000  mfence { lm }
0015b8  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
0015bc  9f018fda  addli r3, r30, -4800
0015c0  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0015c4  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0015c8  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
0015cc  9f018fd6  addli r3, r30, -5312
0015d0  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
0015d4  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
0015d8  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
0015dc  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0015e0  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
0015e4  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0015e8  9f018fdc  addli r3, r30, -4544
0015ec  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0015f0  9f018fdb  addli r3, r30, -4672
0015f4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0015f8  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
0015fc  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001600  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001604  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
001608  9f010fdc  addli r3, r30, -4608
00160c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001610  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001614  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001618  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
00161c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001620  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
001624  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001628  00a00000  mfence { lm }
00162c  e3810900  loadli.w r3,  0(r19)
001630  63ca0900  loadli.w r20,  4(r19)
001634  638b1900  loadli.w r22,  8(r19)
001638  e3cb1900  loadli.w r23,  12(r19)
00163c  8f810100  exp.f.rn r3, r3
001640  0f0a0a00  exp.f.rn r20, r20
001644  0f0b0b00  exp.f.rn r22, r22
001648  8f8b0b00  exp.f.rn r23, r23
00164c  67803900  storeli.w r3, 0(r19)
001650  67c04901  storeli.w r20, 4(r19)
001654  e7806901  storeli.w r22, 8(r19)
001658  e7c07901  storeli.w r23, 12(r19)
00165c  e3812900  loadli.w r3,  16(r19)
001660  63ca2900  loadli.w r20,  20(r19)
001664  638b3900  loadli.w r22,  24(r19)
001668  e3cb3900  loadli.w r23,  28(r19)
00166c  8f810100  exp.f.rn r3, r3
001670  0f0a0a00  exp.f.rn r20, r20
001674  0f0b0b00  exp.f.rn r22, r22
001678  8f8b0b00  exp.f.rn r23, r23
00167c  67813900  storeli.w r3, 16(r19)
001680  67c14901  storeli.w r20, 20(r19)
001684  e7816901  storeli.w r22, 24(r19)
001688  e7c17901  storeli.w r23, 28(r19)
00168c  e3814900  loadli.w r3,  32(r19)
001690  63ca4900  loadli.w r20,  36(r19)
001694  638b5900  loadli.w r22,  40(r19)
001698  e3cb5900  loadli.w r23,  44(r19)
00169c  8f810100  exp.f.rn r3, r3
0016a0  0f0a0a00  exp.f.rn r20, r20
0016a4  0f0b0b00  exp.f.rn r22, r22
0016a8  8f8b0b00  exp.f.rn r23, r23
0016ac  67823900  storeli.w r3, 32(r19)
0016b0  67c24901  storeli.w r20, 36(r19)
0016b4  e7826901  storeli.w r22, 40(r19)
0016b8  e7c27901  storeli.w r23, 44(r19)
0016bc  e3816900  loadli.w r3,  48(r19)
0016c0  63ca6900  loadli.w r20,  52(r19)
0016c4  638b7900  loadli.w r22,  56(r19)
0016c8  e3cb7900  loadli.w r23,  60(r19)
0016cc  8f810100  exp.f.rn r3, r3
0016d0  0f0a0a00  exp.f.rn r20, r20
0016d4  0f0b0b00  exp.f.rn r22, r22
0016d8  8f8b0b00  exp.f.rn r23, r23
0016dc  67833900  storeli.w r3, 48(r19)
0016e0  67c34901  storeli.w r20, 52(r19)
0016e4  e7836901  storeli.w r22, 56(r19)
0016e8  e7c37901  storeli.w r23, 60(r19)
0016ec  e3818900  loadli.w r3,  64(r19)
0016f0  63ca8900  loadli.w r20,  68(r19)
0016f4  638b9900  loadli.w r22,  72(r19)
0016f8  e3cb9900  loadli.w r23,  76(r19)
0016fc  8f810100  exp.f.rn r3, r3
001700  0f0a0a00  exp.f.rn r20, r20
001704  0f0b0b00  exp.f.rn r22, r22
001708  8f8b0b00  exp.f.rn r23, r23
00170c  67843900  storeli.w r3, 64(r19)
001710  67c44901  storeli.w r20, 68(r19)
001714  e7846901  storeli.w r22, 72(r19)
001718  e7c47901  storeli.w r23, 76(r19)
00171c  e381a900  loadli.w r3,  80(r19)
001720  63caa900  loadli.w r20,  84(r19)
001724  638bb900  loadli.w r22,  88(r19)
001728  e3cbb900  loadli.w r23,  92(r19)
00172c  8f810100  exp.f.rn r3, r3
001730  0f0a0a00  exp.f.rn r20, r20
001734  0f0b0b00  exp.f.rn r22, r22
001738  8f8b0b00  exp.f.rn r23, r23
00173c  67853900  storeli.w r3, 80(r19)
001740  67c54901  storeli.w r20, 84(r19)
001744  e7856901  storeli.w r22, 88(r19)
001748  e7c57901  storeli.w r23, 92(r19)
00174c  e381c900  loadli.w r3,  96(r19)
001750  63cac900  loadli.w r20,  100(r19)
001754  638bd900  loadli.w r22,  104(r19)
001758  e3cbd900  loadli.w r23,  108(r19)
00175c  8f810100  exp.f.rn r3, r3
001760  0f0a0a00  exp.f.rn r20, r20
001764  0f0b0b00  exp.f.rn r22, r22
001768  8f8b0b00  exp.f.rn r23, r23
00176c  67863900  storeli.w r3, 96(r19)
001770  67c64901  storeli.w r20, 100(r19)
001774  e7866901  storeli.w r22, 104(r19)
001778  e7c67901  storeli.w r23, 108(r19)
00177c  e381e900  loadli.w r3,  112(r19)
001780  63cae900  loadli.w r20,  116(r19)
001784  638bf900  loadli.w r22,  120(r19)
001788  e3cbf900  loadli.w r23,  124(r19)
00178c  8f810100  exp.f.rn r3, r3
001790  0f0a0a00  exp.f.rn r20, r20
001794  0f0b0b00  exp.f.rn r22, r22
001798  8f8b0b00  exp.f.rn r23, r23
00179c  67873900  storeli.w r3, 112(r19)
0017a0  67c74901  storeli.w r20, 116(r19)
0017a4  e7876901  storeli.w r22, 120(r19)
0017a8  e7c77901  storeli.w r23, 124(r19)
0017ac  e3810901  loadli.w r3,  128(r19)
0017b0  63ca0901  loadli.w r20,  132(r19)
0017b4  638b1901  loadli.w r22,  136(r19)
0017b8  e3cb1901  loadli.w r23,  140(r19)
0017bc  8f810100  exp.f.rn r3, r3
0017c0  0f0a0a00  exp.f.rn r20, r20
0017c4  0f0b0b00  exp.f.rn r22, r22
0017c8  8f8b0b00  exp.f.rn r23, r23
0017cc  67883900  storeli.w r3, 128(r19)
0017d0  67c84901  storeli.w r20, 132(r19)
0017d4  e7886901  storeli.w r22, 136(r19)
0017d8  e7c87901  storeli.w r23, 140(r19)
0017dc  e3812901  loadli.w r3,  144(r19)
0017e0  63ca2901  loadli.w r20,  148(r19)
0017e4  638b3901  loadli.w r22,  152(r19)
0017e8  e3cb3901  loadli.w r23,  156(r19)
0017ec  8f810100  exp.f.rn r3, r3
0017f0  0f0a0a00  exp.f.rn r20, r20
0017f4  0f0b0b00  exp.f.rn r22, r22
0017f8  8f8b0b00  exp.f.rn r23, r23
0017fc  67893900  storeli.w r3, 144(r19)
001800  67c94901  storeli.w r20, 148(r19)
001804  e7896901  storeli.w r22, 152(r19)
001808  e7c97901  storeli.w r23, 156(r19)
00180c  e3814901  loadli.w r3,  160(r19)
001810  63ca4901  loadli.w r20,  164(r19)
001814  638b5901  loadli.w r22,  168(r19)
001818  e3cb5901  loadli.w r23,  172(r19)
00181c  8f810100  exp.f.rn r3, r3
001820  0f0a0a00  exp.f.rn r20, r20
001824  0f0b0b00  exp.f.rn r22, r22
001828  8f8b0b00  exp.f.rn r23, r23
00182c  678a3900  storeli.w r3, 160(r19)
001830  67ca4901  storeli.w r20, 164(r19)
001834  e78a6901  storeli.w r22, 168(r19)
001838  e7ca7901  storeli.w r23, 172(r19)
00183c  e3816901  loadli.w r3,  176(r19)
001840  63ca6901  loadli.w r20,  180(r19)
001844  638b7901  loadli.w r22,  184(r19)
001848  e3cb7901  loadli.w r23,  188(r19)
00184c  8f810100  exp.f.rn r3, r3
001850  0f0a0a00  exp.f.rn r20, r20
001854  0f0b0b00  exp.f.rn r22, r22
001858  8f8b0b00  exp.f.rn r23, r23
00185c  678b3900  storeli.w r3, 176(r19)
001860  67cb4901  storeli.w r20, 180(r19)
001864  e78b6901  storeli.w r22, 184(r19)
001868  e7cb7901  storeli.w r23, 188(r19)
00186c  e3818901  loadli.w r3,  192(r19)
001870  63ca8901  loadli.w r20,  196(r19)
001874  638b9901  loadli.w r22,  200(r19)
001878  e3cb9901  loadli.w r23,  204(r19)
00187c  8f810100  exp.f.rn r3, r3
001880  0f0a0a00  exp.f.rn r20, r20
001884  0f0b0b00  exp.f.rn r22, r22
001888  8f8b0b00  exp.f.rn r23, r23
00188c  678c3900  storeli.w r3, 192(r19)
001890  67cc4901  storeli.w r20, 196(r19)
001894  e78c6901  storeli.w r22, 200(r19)
001898  e7cc7901  storeli.w r23, 204(r19)
00189c  e381a901  loadli.w r3,  208(r19)
0018a0  63caa901  loadli.w r20,  212(r19)
0018a4  638bb901  loadli.w r22,  216(r19)
0018a8  e3cbb901  loadli.w r23,  220(r19)
0018ac  8f810100  exp.f.rn r3, r3
0018b0  0f0a0a00  exp.f.rn r20, r20
0018b4  0f0b0b00  exp.f.rn r22, r22
0018b8  8f8b0b00  exp.f.rn r23, r23
0018bc  678d3900  storeli.w r3, 208(r19)
0018c0  67cd4901  storeli.w r20, 212(r19)
0018c4  e78d6901  storeli.w r22, 216(r19)
0018c8  e7cd7901  storeli.w r23, 220(r19)
0018cc  e381c901  loadli.w r3,  224(r19)
0018d0  63cac901  loadli.w r20,  228(r19)
0018d4  638bd901  loadli.w r22,  232(r19)
0018d8  e3cbd901  loadli.w r23,  236(r19)
0018dc  8f810100  exp.f.rn r3, r3
0018e0  0f0a0a00  exp.f.rn r20, r20
0018e4  0f0b0b00  exp.f.rn r22, r22
0018e8  8f8b0b00  exp.f.rn r23, r23
0018ec  678e3900  storeli.w r3, 224(r19)
0018f0  67ce4901  storeli.w r20, 228(r19)
0018f4  e78e6901  storeli.w r22, 232(r19)
0018f8  e7ce7901  storeli.w r23, 236(r19)
0018fc  e381e901  loadli.w r3,  240(r19)
001900  63cae901  loadli.w r20,  244(r19)
001904  638bf901  loadli.w r22,  248(r19)
001908  e3cbf901  loadli.w r23,  252(r19)
00190c  8f810100  exp.f.rn r3, r3
001910  0f0a0a00  exp.f.rn r20, r20
001914  0f0b0b00  exp.f.rn r22, r22
001918  8f8b0b00  exp.f.rn r23, r23
00191c  678f3900  storeli.w r3, 240(r19)
001920  67cf4901  storeli.w r20, 244(r19)
001924  e78f6901  storeli.w r22, 248(r19)
001928  e7cf7901  storeli.w r23, 252(r19)
00192c  00a00000  mfence { lm }
001930  92902002  vadd.f.mz.rn vr1{mr1}, r1, vr2
001934  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
001938  9f018fdc  addli r3, r30, -4544
00193c  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
001940  9f018fd3  addli r3, r30, -5696
001944  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001948  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
00194c  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
001950  42118fe3  vload_mask16.mz vr2{mr1}, 1984(r30)
001954  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001958  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
00195c  9f018fcf  addli r3, r30, -6208
001960  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001964  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001968  9f018fd7  addli r3, r30, -5184
00196c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001970  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001974  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001978  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
00197c  9f010fd9  addli r3, r30, -4992
001980  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
001984  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001988  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
00198c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001990  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001994  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001998  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
00199c  9f010fda  addli r3, r30, -4864
0019a0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0019a4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0019a8  00a00000  mfence { lm }
0019ac  e3810900  loadli.w r3,  0(r19)
0019b0  63ca0900  loadli.w r20,  4(r19)
0019b4  638b1900  loadli.w r22,  8(r19)
0019b8  e3cb1900  loadli.w r23,  12(r19)
0019bc  8f810100  exp.f.rn r3, r3
0019c0  0f0a0a00  exp.f.rn r20, r20
0019c4  0f0b0b00  exp.f.rn r22, r22
0019c8  8f8b0b00  exp.f.rn r23, r23
0019cc  67803900  storeli.w r3, 0(r19)
0019d0  67c04901  storeli.w r20, 4(r19)
0019d4  e7806901  storeli.w r22, 8(r19)
0019d8  e7c07901  storeli.w r23, 12(r19)
0019dc  e3812900  loadli.w r3,  16(r19)
0019e0  63ca2900  loadli.w r20,  20(r19)
0019e4  638b3900  loadli.w r22,  24(r19)
0019e8  e3cb3900  loadli.w r23,  28(r19)
0019ec  8f810100  exp.f.rn r3, r3
0019f0  0f0a0a00  exp.f.rn r20, r20
0019f4  0f0b0b00  exp.f.rn r22, r22
0019f8  8f8b0b00  exp.f.rn r23, r23
0019fc  67813900  storeli.w r3, 16(r19)
001a00  67c14901  storeli.w r20, 20(r19)
001a04  e7816901  storeli.w r22, 24(r19)
001a08  e7c17901  storeli.w r23, 28(r19)
001a0c  e3814900  loadli.w r3,  32(r19)
001a10  63ca4900  loadli.w r20,  36(r19)
001a14  638b5900  loadli.w r22,  40(r19)
001a18  e3cb5900  loadli.w r23,  44(r19)
001a1c  8f810100  exp.f.rn r3, r3
001a20  0f0a0a00  exp.f.rn r20, r20
001a24  0f0b0b00  exp.f.rn r22, r22
001a28  8f8b0b00  exp.f.rn r23, r23
001a2c  67823900  storeli.w r3, 32(r19)
001a30  67c24901  storeli.w r20, 36(r19)
001a34  e7826901  storeli.w r22, 40(r19)
001a38  e7c27901  storeli.w r23, 44(r19)
001a3c  e3816900  loadli.w r3,  48(r19)
001a40  63ca6900  loadli.w r20,  52(r19)
001a44  638b7900  loadli.w r22,  56(r19)
001a48  e3cb7900  loadli.w r23,  60(r19)
001a4c  8f810100  exp.f.rn r3, r3
001a50  0f0a0a00  exp.f.rn r20, r20
001a54  0f0b0b00  exp.f.rn r22, r22
001a58  8f8b0b00  exp.f.rn r23, r23
001a5c  67833900  storeli.w r3, 48(r19)
001a60  67c34901  storeli.w r20, 52(r19)
001a64  e7836901  storeli.w r22, 56(r19)
001a68  e7c37901  storeli.w r23, 60(r19)
001a6c  e3818900  loadli.w r3,  64(r19)
001a70  63ca8900  loadli.w r20,  68(r19)
001a74  638b9900  loadli.w r22,  72(r19)
001a78  e3cb9900  loadli.w r23,  76(r19)
001a7c  8f810100  exp.f.rn r3, r3
001a80  0f0a0a00  exp.f.rn r20, r20
001a84  0f0b0b00  exp.f.rn r22, r22
001a88  8f8b0b00  exp.f.rn r23, r23
001a8c  67843900  storeli.w r3, 64(r19)
001a90  67c44901  storeli.w r20, 68(r19)
001a94  e7846901  storeli.w r22, 72(r19)
001a98  e7c47901  storeli.w r23, 76(r19)
001a9c  e381a900  loadli.w r3,  80(r19)
001aa0  63caa900  loadli.w r20,  84(r19)
001aa4  638bb900  loadli.w r22,  88(r19)
001aa8  e3cbb900  loadli.w r23,  92(r19)
001aac  8f810100  exp.f.rn r3, r3
001ab0  0f0a0a00  exp.f.rn r20, r20
001ab4  0f0b0b00  exp.f.rn r22, r22
001ab8  8f8b0b00  exp.f.rn r23, r23
001abc  67853900  storeli.w r3, 80(r19)
001ac0  67c54901  storeli.w r20, 84(r19)
001ac4  e7856901  storeli.w r22, 88(r19)
001ac8  e7c57901  storeli.w r23, 92(r19)
001acc  e381c900  loadli.w r3,  96(r19)
001ad0  63cac900  loadli.w r20,  100(r19)
001ad4  638bd900  loadli.w r22,  104(r19)
001ad8  e3cbd900  loadli.w r23,  108(r19)
001adc  8f810100  exp.f.rn r3, r3
001ae0  0f0a0a00  exp.f.rn r20, r20
001ae4  0f0b0b00  exp.f.rn r22, r22
001ae8  8f8b0b00  exp.f.rn r23, r23
001aec  67863900  storeli.w r3, 96(r19)
001af0  67c64901  storeli.w r20, 100(r19)
001af4  e7866901  storeli.w r22, 104(r19)
001af8  e7c67901  storeli.w r23, 108(r19)
001afc  e381e900  loadli.w r3,  112(r19)
001b00  63cae900  loadli.w r20,  116(r19)
001b04  638bf900  loadli.w r22,  120(r19)
001b08  e3cbf900  loadli.w r23,  124(r19)
001b0c  8f810100  exp.f.rn r3, r3
001b10  0f0a0a00  exp.f.rn r20, r20
001b14  0f0b0b00  exp.f.rn r22, r22
001b18  8f8b0b00  exp.f.rn r23, r23
001b1c  67873900  storeli.w r3, 112(r19)
001b20  67c74901  storeli.w r20, 116(r19)
001b24  e7876901  storeli.w r22, 120(r19)
001b28  e7c77901  storeli.w r23, 124(r19)
001b2c  e3810901  loadli.w r3,  128(r19)
001b30  63ca0901  loadli.w r20,  132(r19)
001b34  638b1901  loadli.w r22,  136(r19)
001b38  e3cb1901  loadli.w r23,  140(r19)
001b3c  8f810100  exp.f.rn r3, r3
001b40  0f0a0a00  exp.f.rn r20, r20
001b44  0f0b0b00  exp.f.rn r22, r22
001b48  8f8b0b00  exp.f.rn r23, r23
001b4c  67883900  storeli.w r3, 128(r19)
001b50  67c84901  storeli.w r20, 132(r19)
001b54  e7886901  storeli.w r22, 136(r19)
001b58  e7c87901  storeli.w r23, 140(r19)
001b5c  e3812901  loadli.w r3,  144(r19)
001b60  63ca2901  loadli.w r20,  148(r19)
001b64  638b3901  loadli.w r22,  152(r19)
001b68  e3cb3901  loadli.w r23,  156(r19)
001b6c  8f810100  exp.f.rn r3, r3
001b70  0f0a0a00  exp.f.rn r20, r20
001b74  0f0b0b00  exp.f.rn r22, r22
001b78  8f8b0b00  exp.f.rn r23, r23
001b7c  67893900  storeli.w r3, 144(r19)
001b80  67c94901  storeli.w r20, 148(r19)
001b84  e7896901  storeli.w r22, 152(r19)
001b88  e7c97901  storeli.w r23, 156(r19)
001b8c  e3814901  loadli.w r3,  160(r19)
001b90  63ca4901  loadli.w r20,  164(r19)
001b94  638b5901  loadli.w r22,  168(r19)
001b98  e3cb5901  loadli.w r23,  172(r19)
001b9c  8f810100  exp.f.rn r3, r3
001ba0  0f0a0a00  exp.f.rn r20, r20
001ba4  0f0b0b00  exp.f.rn r22, r22
001ba8  8f8b0b00  exp.f.rn r23, r23
001bac  678a3900  storeli.w r3, 160(r19)
001bb0  67ca4901  storeli.w r20, 164(r19)
001bb4  e78a6901  storeli.w r22, 168(r19)
001bb8  e7ca7901  storeli.w r23, 172(r19)
001bbc  e3816901  loadli.w r3,  176(r19)
001bc0  63ca6901  loadli.w r20,  180(r19)
001bc4  638b7901  loadli.w r22,  184(r19)
001bc8  e3cb7901  loadli.w r23,  188(r19)
001bcc  8f810100  exp.f.rn r3, r3
001bd0  0f0a0a00  exp.f.rn r20, r20
001bd4  0f0b0b00  exp.f.rn r22, r22
001bd8  8f8b0b00  exp.f.rn r23, r23
001bdc  678b3900  storeli.w r3, 176(r19)
001be0  67cb4901  storeli.w r20, 180(r19)
001be4  e78b6901  storeli.w r22, 184(r19)
001be8  e7cb7901  storeli.w r23, 188(r19)
001bec  e3818901  loadli.w r3,  192(r19)
001bf0  63ca8901  loadli.w r20,  196(r19)
001bf4  638b9901  loadli.w r22,  200(r19)
001bf8  e3cb9901  loadli.w r23,  204(r19)
001bfc  8f810100  exp.f.rn r3, r3
001c00  0f0a0a00  exp.f.rn r20, r20
001c04  0f0b0b00  exp.f.rn r22, r22
001c08  8f8b0b00  exp.f.rn r23, r23
001c0c  678c3900  storeli.w r3, 192(r19)
001c10  67cc4901  storeli.w r20, 196(r19)
001c14  e78c6901  storeli.w r22, 200(r19)
001c18  e7cc7901  storeli.w r23, 204(r19)
001c1c  e381a901  loadli.w r3,  208(r19)
001c20  63caa901  loadli.w r20,  212(r19)
001c24  638bb901  loadli.w r22,  216(r19)
001c28  e3cbb901  loadli.w r23,  220(r19)
001c2c  8f810100  exp.f.rn r3, r3
001c30  0f0a0a00  exp.f.rn r20, r20
001c34  0f0b0b00  exp.f.rn r22, r22
001c38  8f8b0b00  exp.f.rn r23, r23
001c3c  678d3900  storeli.w r3, 208(r19)
001c40  67cd4901  storeli.w r20, 212(r19)
001c44  e78d6901  storeli.w r22, 216(r19)
001c48  e7cd7901  storeli.w r23, 220(r19)
001c4c  e381c901  loadli.w r3,  224(r19)
001c50  63cac901  loadli.w r20,  228(r19)
001c54  638bd901  loadli.w r22,  232(r19)
001c58  e3cbd901  loadli.w r23,  236(r19)
001c5c  8f810100  exp.f.rn r3, r3
001c60  0f0a0a00  exp.f.rn r20, r20
001c64  0f0b0b00  exp.f.rn r22, r22
001c68  8f8b0b00  exp.f.rn r23, r23
001c6c  678e3900  storeli.w r3, 224(r19)
001c70  67ce4901  storeli.w r20, 228(r19)
001c74  e78e6901  storeli.w r22, 232(r19)
001c78  e7ce7901  storeli.w r23, 236(r19)
001c7c  e381e901  loadli.w r3,  240(r19)
001c80  63cae901  loadli.w r20,  244(r19)
001c84  638bf901  loadli.w r22,  248(r19)
001c88  e3cbf901  loadli.w r23,  252(r19)
001c8c  8f810100  exp.f.rn r3, r3
001c90  0f0a0a00  exp.f.rn r20, r20
001c94  0f0b0b00  exp.f.rn r22, r22
001c98  8f8b0b00  exp.f.rn r23, r23
001c9c  678f3900  storeli.w r3, 240(r19)
001ca0  67cf4901  storeli.w r20, 244(r19)
001ca4  e78f6901  storeli.w r22, 248(r19)
001ca8  e7cf7901  storeli.w r23, 252(r19)
001cac  00a00000  mfence { lm }
001cb0  c2130fe2  vload_mask16.mz vr7{mr1}, 1792(r30)
001cb4  9f010fda  addli r3, r30, -4864
001cb8  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001cbc  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
001cc0  9f010fd0  addli r3, r30, -6144
001cc4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001cc8  c2148fe2  vload_mask16.mz vr9{mr1}, 1856(r30)
001ccc  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
001cd0  42118fe3  vload_mask16.mz vr2{mr1}, 1984(r30)
001cd4  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001cd8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001cdc  9f010fdb  addli r3, r30, -4736
001ce0  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001ce4  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001ce8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001cec  9f018fd0  addli r3, r30, -6080
001cf0  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001cf4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001cf8  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001cfc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001d00  9f010fd3  addli r3, r30, -5760
001d04  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d08  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001d0c  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
001d10  92905002  vadd.f.mz.rn vr1{mr1}, r1, vr5
001d14  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001d18  00a00000  mfence { lm }
001d1c  e3810900  loadli.w r3,  0(r19)
001d20  63ca0900  loadli.w r20,  4(r19)
001d24  638b1900  loadli.w r22,  8(r19)
001d28  e3cb1900  loadli.w r23,  12(r19)
001d2c  8f810100  exp.f.rn r3, r3
001d30  0f0a0a00  exp.f.rn r20, r20
001d34  0f0b0b00  exp.f.rn r22, r22
001d38  8f8b0b00  exp.f.rn r23, r23
001d3c  67803900  storeli.w r3, 0(r19)
001d40  67c04901  storeli.w r20, 4(r19)
001d44  e7806901  storeli.w r22, 8(r19)
001d48  e7c07901  storeli.w r23, 12(r19)
001d4c  e3812900  loadli.w r3,  16(r19)
001d50  63ca2900  loadli.w r20,  20(r19)
001d54  638b3900  loadli.w r22,  24(r19)
001d58  e3cb3900  loadli.w r23,  28(r19)
001d5c  8f810100  exp.f.rn r3, r3
001d60  0f0a0a00  exp.f.rn r20, r20
001d64  0f0b0b00  exp.f.rn r22, r22
001d68  8f8b0b00  exp.f.rn r23, r23
001d6c  67813900  storeli.w r3, 16(r19)
001d70  67c14901  storeli.w r20, 20(r19)
001d74  e7816901  storeli.w r22, 24(r19)
001d78  e7c17901  storeli.w r23, 28(r19)
001d7c  e3814900  loadli.w r3,  32(r19)
001d80  63ca4900  loadli.w r20,  36(r19)
001d84  638b5900  loadli.w r22,  40(r19)
001d88  e3cb5900  loadli.w r23,  44(r19)
001d8c  8f810100  exp.f.rn r3, r3
001d90  0f0a0a00  exp.f.rn r20, r20
001d94  0f0b0b00  exp.f.rn r22, r22
001d98  8f8b0b00  exp.f.rn r23, r23
001d9c  67823900  storeli.w r3, 32(r19)
001da0  67c24901  storeli.w r20, 36(r19)
001da4  e7826901  storeli.w r22, 40(r19)
001da8  e7c27901  storeli.w r23, 44(r19)
001dac  e3816900  loadli.w r3,  48(r19)
001db0  63ca6900  loadli.w r20,  52(r19)
001db4  638b7900  loadli.w r22,  56(r19)
001db8  e3cb7900  loadli.w r23,  60(r19)
001dbc  8f810100  exp.f.rn r3, r3
001dc0  0f0a0a00  exp.f.rn r20, r20
001dc4  0f0b0b00  exp.f.rn r22, r22
001dc8  8f8b0b00  exp.f.rn r23, r23
001dcc  67833900  storeli.w r3, 48(r19)
001dd0  67c34901  storeli.w r20, 52(r19)
001dd4  e7836901  storeli.w r22, 56(r19)
001dd8  e7c37901  storeli.w r23, 60(r19)
001ddc  e3818900  loadli.w r3,  64(r19)
001de0  63ca8900  loadli.w r20,  68(r19)
001de4  638b9900  loadli.w r22,  72(r19)
001de8  e3cb9900  loadli.w r23,  76(r19)
001dec  8f810100  exp.f.rn r3, r3
001df0  0f0a0a00  exp.f.rn r20, r20
001df4  0f0b0b00  exp.f.rn r22, r22
001df8  8f8b0b00  exp.f.rn r23, r23
001dfc  67843900  storeli.w r3, 64(r19)
001e00  67c44901  storeli.w r20, 68(r19)
001e04  e7846901  storeli.w r22, 72(r19)
001e08  e7c47901  storeli.w r23, 76(r19)
001e0c  e381a900  loadli.w r3,  80(r19)
001e10  63caa900  loadli.w r20,  84(r19)
001e14  638bb900  loadli.w r22,  88(r19)
001e18  e3cbb900  loadli.w r23,  92(r19)
001e1c  8f810100  exp.f.rn r3, r3
001e20  0f0a0a00  exp.f.rn r20, r20
001e24  0f0b0b00  exp.f.rn r22, r22
001e28  8f8b0b00  exp.f.rn r23, r23
001e2c  67853900  storeli.w r3, 80(r19)
001e30  67c54901  storeli.w r20, 84(r19)
001e34  e7856901  storeli.w r22, 88(r19)
001e38  e7c57901  storeli.w r23, 92(r19)
001e3c  e381c900  loadli.w r3,  96(r19)
001e40  63cac900  loadli.w r20,  100(r19)
001e44  638bd900  loadli.w r22,  104(r19)
001e48  e3cbd900  loadli.w r23,  108(r19)
001e4c  8f810100  exp.f.rn r3, r3
001e50  0f0a0a00  exp.f.rn r20, r20
001e54  0f0b0b00  exp.f.rn r22, r22
001e58  8f8b0b00  exp.f.rn r23, r23
001e5c  67863900  storeli.w r3, 96(r19)
001e60  67c64901  storeli.w r20, 100(r19)
001e64  e7866901  storeli.w r22, 104(r19)
001e68  e7c67901  storeli.w r23, 108(r19)
001e6c  e381e900  loadli.w r3,  112(r19)
001e70  63cae900  loadli.w r20,  116(r19)
001e74  638bf900  loadli.w r22,  120(r19)
001e78  e3cbf900  loadli.w r23,  124(r19)
001e7c  8f810100  exp.f.rn r3, r3
001e80  0f0a0a00  exp.f.rn r20, r20
001e84  0f0b0b00  exp.f.rn r22, r22
001e88  8f8b0b00  exp.f.rn r23, r23
001e8c  67873900  storeli.w r3, 112(r19)
001e90  67c74901  storeli.w r20, 116(r19)
001e94  e7876901  storeli.w r22, 120(r19)
001e98  e7c77901  storeli.w r23, 124(r19)
001e9c  e3810901  loadli.w r3,  128(r19)
001ea0  63ca0901  loadli.w r20,  132(r19)
001ea4  638b1901  loadli.w r22,  136(r19)
001ea8  e3cb1901  loadli.w r23,  140(r19)
001eac  8f810100  exp.f.rn r3, r3
001eb0  0f0a0a00  exp.f.rn r20, r20
001eb4  0f0b0b00  exp.f.rn r22, r22
001eb8  8f8b0b00  exp.f.rn r23, r23
001ebc  67883900  storeli.w r3, 128(r19)
001ec0  67c84901  storeli.w r20, 132(r19)
001ec4  e7886901  storeli.w r22, 136(r19)
001ec8  e7c87901  storeli.w r23, 140(r19)
001ecc  e3812901  loadli.w r3,  144(r19)
001ed0  63ca2901  loadli.w r20,  148(r19)
001ed4  638b3901  loadli.w r22,  152(r19)
001ed8  e3cb3901  loadli.w r23,  156(r19)
001edc  8f810100  exp.f.rn r3, r3
001ee0  0f0a0a00  exp.f.rn r20, r20
001ee4  0f0b0b00  exp.f.rn r22, r22
001ee8  8f8b0b00  exp.f.rn r23, r23
001eec  67893900  storeli.w r3, 144(r19)
001ef0  67c94901  storeli.w r20, 148(r19)
001ef4  e7896901  storeli.w r22, 152(r19)
001ef8  e7c97901  storeli.w r23, 156(r19)
001efc  e3814901  loadli.w r3,  160(r19)
001f00  63ca4901  loadli.w r20,  164(r19)
001f04  638b5901  loadli.w r22,  168(r19)
001f08  e3cb5901  loadli.w r23,  172(r19)
001f0c  8f810100  exp.f.rn r3, r3
001f10  0f0a0a00  exp.f.rn r20, r20
001f14  0f0b0b00  exp.f.rn r22, r22
001f18  8f8b0b00  exp.f.rn r23, r23
001f1c  678a3900  storeli.w r3, 160(r19)
001f20  67ca4901  storeli.w r20, 164(r19)
001f24  e78a6901  storeli.w r22, 168(r19)
001f28  e7ca7901  storeli.w r23, 172(r19)
001f2c  e3816901  loadli.w r3,  176(r19)
001f30  63ca6901  loadli.w r20,  180(r19)
001f34  638b7901  loadli.w r22,  184(r19)
001f38  e3cb7901  loadli.w r23,  188(r19)
001f3c  8f810100  exp.f.rn r3, r3
001f40  0f0a0a00  exp.f.rn r20, r20
001f44  0f0b0b00  exp.f.rn r22, r22
001f48  8f8b0b00  exp.f.rn r23, r23
001f4c  678b3900  storeli.w r3, 176(r19)
001f50  67cb4901  storeli.w r20, 180(r19)
001f54  e78b6901  storeli.w r22, 184(r19)
001f58  e7cb7901  storeli.w r23, 188(r19)
001f5c  e3818901  loadli.w r3,  192(r19)
001f60  63ca8901  loadli.w r20,  196(r19)
001f64  638b9901  loadli.w r22,  200(r19)
001f68  e3cb9901  loadli.w r23,  204(r19)
001f6c  8f810100  exp.f.rn r3, r3
001f70  0f0a0a00  exp.f.rn r20, r20
001f74  0f0b0b00  exp.f.rn r22, r22
001f78  8f8b0b00  exp.f.rn r23, r23
001f7c  678c3900  storeli.w r3, 192(r19)
001f80  67cc4901  storeli.w r20, 196(r19)
001f84  e78c6901  storeli.w r22, 200(r19)
001f88  e7cc7901  storeli.w r23, 204(r19)
001f8c  e381a901  loadli.w r3,  208(r19)
001f90  63caa901  loadli.w r20,  212(r19)
001f94  638bb901  loadli.w r22,  216(r19)
001f98  e3cbb901  loadli.w r23,  220(r19)
001f9c  8f810100  exp.f.rn r3, r3
001fa0  0f0a0a00  exp.f.rn r20, r20
001fa4  0f0b0b00  exp.f.rn r22, r22
001fa8  8f8b0b00  exp.f.rn r23, r23
001fac  678d3900  storeli.w r3, 208(r19)
001fb0  67cd4901  storeli.w r20, 212(r19)
001fb4  e78d6901  storeli.w r22, 216(r19)
001fb8  e7cd7901  storeli.w r23, 220(r19)
001fbc  e381c901  loadli.w r3,  224(r19)
001fc0  63cac901  loadli.w r20,  228(r19)
001fc4  638bd901  loadli.w r22,  232(r19)
001fc8  e3cbd901  loadli.w r23,  236(r19)
001fcc  8f810100  exp.f.rn r3, r3
001fd0  0f0a0a00  exp.f.rn r20, r20
001fd4  0f0b0b00  exp.f.rn r22, r22
001fd8  8f8b0b00  exp.f.rn r23, r23
001fdc  678e3900  storeli.w r3, 224(r19)
001fe0  67ce4901  storeli.w r20, 228(r19)
001fe4  e78e6901  storeli.w r22, 232(r19)
001fe8  e7ce7901  storeli.w r23, 236(r19)
001fec  e381e901  loadli.w r3,  240(r19)
001ff0  63cae901  loadli.w r20,  244(r19)
001ff4  638bf901  loadli.w r22,  248(r19)
001ff8  e3cbf901  loadli.w r23,  252(r19)
001ffc  8f810100  exp.f.rn r3, r3
002000  0f0a0a00  exp.f.rn r20, r20
002004  0f0b0b00  exp.f.rn r22, r22
002008  8f8b0b00  exp.f.rn r23, r23
00200c  678f3900  storeli.w r3, 240(r19)
002010  67cf4901  storeli.w r20, 244(r19)
002014  e78f6901  storeli.w r22, 248(r19)
002018  e7cf7901  storeli.w r23, 252(r19)
00201c  00a00000  mfence { lm }
002020  9f010fdb  addli r3, r30, -4736
002024  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
002028  c2110fe2  vload_mask16.mz vr3{mr1}, 1792(r30)
00202c  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
002030  9f010fd1  addli r3, r30, -6016
002034  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
002038  c2150fe3  vload_mask16.mz vr11{mr1}, 1920(r30)
00203c  42158fe3  vload_mask16.mz vr10{mr1}, 1984(r30)
002040  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
002044  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002048  9f018fd1  addli r3, r30, -5952
00204c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
002050  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
002054  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002058  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00205c  9f010fd2  addli r3, r30, -5888
002060  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
002064  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
002068  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00206c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
002070  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
002074  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
002078  00a00000  mfence { lm }
00207c  e3800900  loadli.w r1,  0(r19)
002080  e3c10900  loadli.w r3,  4(r19)
002084  638a1900  loadli.w r20,  8(r19)
002088  63cb1900  loadli.w r22,  12(r19)
00208c  8f800000  exp.f.rn r1, r1
002090  8f810100  exp.f.rn r3, r3
002094  0f0a0a00  exp.f.rn r20, r20
002098  0f0b0b00  exp.f.rn r22, r22
00209c  67801900  storeli.w r1, 0(r19)
0020a0  67c03900  storeli.w r3, 4(r19)
0020a4  e7804901  storeli.w r20, 8(r19)
0020a8  e7c06901  storeli.w r22, 12(r19)
0020ac  e3802900  loadli.w r1,  16(r19)
0020b0  e3c12900  loadli.w r3,  20(r19)
0020b4  638a3900  loadli.w r20,  24(r19)
0020b8  63cb3900  loadli.w r22,  28(r19)
0020bc  8f800000  exp.f.rn r1, r1
0020c0  8f810100  exp.f.rn r3, r3
0020c4  0f0a0a00  exp.f.rn r20, r20
0020c8  0f0b0b00  exp.f.rn r22, r22
0020cc  67811900  storeli.w r1, 16(r19)
0020d0  67c13900  storeli.w r3, 20(r19)
0020d4  e7814901  storeli.w r20, 24(r19)
0020d8  e7c16901  storeli.w r22, 28(r19)
0020dc  e3804900  loadli.w r1,  32(r19)
0020e0  e3c14900  loadli.w r3,  36(r19)
0020e4  638a5900  loadli.w r20,  40(r19)
0020e8  63cb5900  loadli.w r22,  44(r19)
0020ec  8f800000  exp.f.rn r1, r1
0020f0  8f810100  exp.f.rn r3, r3
0020f4  0f0a0a00  exp.f.rn r20, r20
0020f8  0f0b0b00  exp.f.rn r22, r22
0020fc  67821900  storeli.w r1, 32(r19)
002100  67c23900  storeli.w r3, 36(r19)
002104  e7824901  storeli.w r20, 40(r19)
002108  e7c26901  storeli.w r22, 44(r19)
00210c  e3806900  loadli.w r1,  48(r19)
002110  e3c16900  loadli.w r3,  52(r19)
002114  638a7900  loadli.w r20,  56(r19)
002118  63cb7900  loadli.w r22,  60(r19)
00211c  8f800000  exp.f.rn r1, r1
002120  8f810100  exp.f.rn r3, r3
002124  0f0a0a00  exp.f.rn r20, r20
002128  0f0b0b00  exp.f.rn r22, r22
00212c  67831900  storeli.w r1, 48(r19)
002130  67c33900  storeli.w r3, 52(r19)
002134  e7834901  storeli.w r20, 56(r19)
002138  e7c36901  storeli.w r22, 60(r19)
00213c  e3808900  loadli.w r1,  64(r19)
002140  e3c18900  loadli.w r3,  68(r19)
002144  638a9900  loadli.w r20,  72(r19)
002148  63cb9900  loadli.w r22,  76(r19)
00214c  8f800000  exp.f.rn r1, r1
002150  8f810100  exp.f.rn r3, r3
002154  0f0a0a00  exp.f.rn r20, r20
002158  0f0b0b00  exp.f.rn r22, r22
00215c  67841900  storeli.w r1, 64(r19)
002160  67c43900  storeli.w r3, 68(r19)
002164  e7844901  storeli.w r20, 72(r19)
002168  e7c46901  storeli.w r22, 76(r19)
00216c  e380a900  loadli.w r1,  80(r19)
002170  e3c1a900  loadli.w r3,  84(r19)
002174  638ab900  loadli.w r20,  88(r19)
002178  63cbb900  loadli.w r22,  92(r19)
00217c  8f800000  exp.f.rn r1, r1
002180  8f810100  exp.f.rn r3, r3
002184  0f0a0a00  exp.f.rn r20, r20
002188  0f0b0b00  exp.f.rn r22, r22
00218c  67851900  storeli.w r1, 80(r19)
002190  67c53900  storeli.w r3, 84(r19)
002194  e7854901  storeli.w r20, 88(r19)
002198  e7c56901  storeli.w r22, 92(r19)
00219c  e380c900  loadli.w r1,  96(r19)
0021a0  e3c1c900  loadli.w r3,  100(r19)
0021a4  638ad900  loadli.w r20,  104(r19)
0021a8  63cbd900  loadli.w r22,  108(r19)
0021ac  8f800000  exp.f.rn r1, r1
0021b0  8f810100  exp.f.rn r3, r3
0021b4  0f0a0a00  exp.f.rn r20, r20
0021b8  0f0b0b00  exp.f.rn r22, r22
0021bc  67861900  storeli.w r1, 96(r19)
0021c0  67c63900  storeli.w r3, 100(r19)
0021c4  e7864901  storeli.w r20, 104(r19)
0021c8  e7c66901  storeli.w r22, 108(r19)
0021cc  e380e900  loadli.w r1,  112(r19)
0021d0  e3c1e900  loadli.w r3,  116(r19)
0021d4  638af900  loadli.w r20,  120(r19)
0021d8  63cbf900  loadli.w r22,  124(r19)
0021dc  8f800000  exp.f.rn r1, r1
0021e0  8f810100  exp.f.rn r3, r3
0021e4  0f0a0a00  exp.f.rn r20, r20
0021e8  0f0b0b00  exp.f.rn r22, r22
0021ec  67871900  storeli.w r1, 112(r19)
0021f0  67c73900  storeli.w r3, 116(r19)
0021f4  e7874901  storeli.w r20, 120(r19)
0021f8  e7c76901  storeli.w r22, 124(r19)
0021fc  e3800901  loadli.w r1,  128(r19)
002200  e3c10901  loadli.w r3,  132(r19)
002204  638a1901  loadli.w r20,  136(r19)
002208  63cb1901  loadli.w r22,  140(r19)
00220c  8f800000  exp.f.rn r1, r1
002210  8f810100  exp.f.rn r3, r3
002214  0f0a0a00  exp.f.rn r20, r20
002218  0f0b0b00  exp.f.rn r22, r22
00221c  67881900  storeli.w r1, 128(r19)
002220  67c83900  storeli.w r3, 132(r19)
002224  e7884901  storeli.w r20, 136(r19)
002228  e7c86901  storeli.w r22, 140(r19)
00222c  e3802901  loadli.w r1,  144(r19)
002230  e3c12901  loadli.w r3,  148(r19)
002234  638a3901  loadli.w r20,  152(r19)
002238  63cb3901  loadli.w r22,  156(r19)
00223c  8f800000  exp.f.rn r1, r1
002240  8f810100  exp.f.rn r3, r3
002244  0f0a0a00  exp.f.rn r20, r20
002248  0f0b0b00  exp.f.rn r22, r22
00224c  67891900  storeli.w r1, 144(r19)
002250  67c93900  storeli.w r3, 148(r19)
002254  e7894901  storeli.w r20, 152(r19)
002258  e7c96901  storeli.w r22, 156(r19)
00225c  e3804901  loadli.w r1,  160(r19)
002260  e3c14901  loadli.w r3,  164(r19)
002264  638a5901  loadli.w r20,  168(r19)
002268  63cb5901  loadli.w r22,  172(r19)
00226c  8f800000  exp.f.rn r1, r1
002270  8f810100  exp.f.rn r3, r3
002274  0f0a0a00  exp.f.rn r20, r20
002278  0f0b0b00  exp.f.rn r22, r22
00227c  678a1900  storeli.w r1, 160(r19)
002280  67ca3900  storeli.w r3, 164(r19)
002284  e78a4901  storeli.w r20, 168(r19)
002288  e7ca6901  storeli.w r22, 172(r19)
00228c  e3806901  loadli.w r1,  176(r19)
002290  e3c16901  loadli.w r3,  180(r19)
002294  638a7901  loadli.w r20,  184(r19)
002298  63cb7901  loadli.w r22,  188(r19)
00229c  8f800000  exp.f.rn r1, r1
0022a0  8f810100  exp.f.rn r3, r3
0022a4  0f0a0a00  exp.f.rn r20, r20
0022a8  0f0b0b00  exp.f.rn r22, r22
0022ac  678b1900  storeli.w r1, 176(r19)
0022b0  67cb3900  storeli.w r3, 180(r19)
0022b4  e78b4901  storeli.w r20, 184(r19)
0022b8  e7cb6901  storeli.w r22, 188(r19)
0022bc  e3808901  loadli.w r1,  192(r19)
0022c0  e3c18901  loadli.w r3,  196(r19)
0022c4  638a9901  loadli.w r20,  200(r19)
0022c8  63cb9901  loadli.w r22,  204(r19)
0022cc  8f800000  exp.f.rn r1, r1
0022d0  8f810100  exp.f.rn r3, r3
0022d4  0f0a0a00  exp.f.rn r20, r20
0022d8  0f0b0b00  exp.f.rn r22, r22
0022dc  678c1900  storeli.w r1, 192(r19)
0022e0  67cc3900  storeli.w r3, 196(r19)
0022e4  e78c4901  storeli.w r20, 200(r19)
0022e8  e7cc6901  storeli.w r22, 204(r19)
0022ec  e380a901  loadli.w r1,  208(r19)
0022f0  e3c1a901  loadli.w r3,  212(r19)
0022f4  638ab901  loadli.w r20,  216(r19)
0022f8  63cbb901  loadli.w r22,  220(r19)
0022fc  8f800000  exp.f.rn r1, r1
002300  8f810100  exp.f.rn r3, r3
002304  0f0a0a00  exp.f.rn r20, r20
002308  0f0b0b00  exp.f.rn r22, r22
00230c  678d1900  storeli.w r1, 208(r19)
002310  67cd3900  storeli.w r3, 212(r19)
002314  e78d4901  storeli.w r20, 216(r19)
002318  e7cd6901  storeli.w r22, 220(r19)
00231c  e380c901  loadli.w r1,  224(r19)
002320  e3c1c901  loadli.w r3,  228(r19)
002324  638ad901  loadli.w r20,  232(r19)
002328  63cbd901  loadli.w r22,  236(r19)
00232c  8f800000  exp.f.rn r1, r1
002330  8f810100  exp.f.rn r3, r3
002334  0f0a0a00  exp.f.rn r20, r20
002338  0f0b0b00  exp.f.rn r22, r22
00233c  678e1900  storeli.w r1, 224(r19)
002340  67ce3900  storeli.w r3, 228(r19)
002344  e78e4901  storeli.w r20, 232(r19)
002348  e7ce6901  storeli.w r22, 236(r19)
00234c  e380e901  loadli.w r1,  240(r19)
002350  e3c1e901  loadli.w r3,  244(r19)
002354  638af901  loadli.w r20,  248(r19)
002358  63cbf901  loadli.w r22,  252(r19)
00235c  8f800000  exp.f.rn r1, r1
002360  8f810100  exp.f.rn r3, r3
002364  0f0a0a00  exp.f.rn r20, r20
002368  0f0b0b00  exp.f.rn r22, r22
00236c  678f1900  storeli.w r1, 240(r19)
002370  67cf3900  storeli.w r3, 244(r19)
002374  e78f4901  storeli.w r20, 248(r19)
002378  e7cf6901  storeli.w r22, 252(r19)
00237c  00a00000  mfence { lm }
002380  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
002384  9610b002  vadd.f.mz.rn vr1{mr1}, vr0, vr11
002388  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
00238c  42118fe2  vload_mask16.mz vr2{mr1}, 1856(r30)
002390  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
002394  c2128fe3  vload_mask16.mz vr5{mr1}, 1984(r30)
002398  e3417fce  loadli.w r3,  -6340(r30)
00239c  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
0023a0  96900002  vadd.f.mz.rn vr1{mr1}, vr1, vr0
0023a4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0023a8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0023ac  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
0023b0  6a7416c0  vsrl.p vr8, r12, vr1
0023b4  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
0023b8  6a7417c0  vsrl.p vr8, r14, vr1
0023bc  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
0023c0  6af417c0  vsrl.p vr8, r15, vr1
0023c4  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
0023c8  6a7418c0  vsrl.p vr8, r16, vr1
0023cc  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
0023d0  fa900040  vextracti.f r1, 0(vr1)
0023d4  73e01100  stores.w r1, 0(r3)
0023d8  00a00300  mfence { lm, sm, gm }
0023dc  80210204  csr_set csr3, r4
0023e0  00d00100  sync_group
0023e4  bb900600  bneq r13, zero, 36
0023e8  ef400e00  loads.w r1, 0(r28)
0023ec  ef414e00  loads.w r3, 4(r28)
0023f0  6f4a8e00  loads.w r20, 8(r28)
0023f4  8be03010  add.f.rn r1, r1, r3
0023f8  ef41ce00  loads.w r3, 12(r28)
0023fc  8be04011  add.f.rn r1, r1, r20
002400  8be03010  add.f.rn r1, r1, r3
002404  73601e00  stores.w r1, 0(r28)
002408  00a00300  mfence { lm, sm, gm }
00240c  80210204  csr_set csr3, r4
002410  00d00100  sync_group
002414  ef400e00  loads.w r1, 0(r28)
002418  ab01803f  lui r3, 260096
00241c  8f801118  div.f.rn r1, r3, r1
002420  9f018fd4  addli r3, r30, -5568
002424  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
002428  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00242c  9f010fde  addli r3, r30, -4352
002430  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002434  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002438  9f010fd5  addli r3, r30, -5504
00243c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002440  9f018fde  addli r3, r30, -4288
002444  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002448  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00244c  9f018fd5  addli r3, r30, -5440
002450  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002454  9f010fdf  addli r3, r30, -4224
002458  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00245c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002460  9f010fd7  addli r3, r30, -5248
002464  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002468  9f018fdf  addli r3, r30, -4160
00246c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002470  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002474  9f010fd6  addli r3, r30, -5376
002478  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00247c  9f010fe0  addli r3, r30, -4096
002480  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002484  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002488  9f010fd4  addli r3, r30, -5632
00248c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002490  9f018fe0  addli r3, r30, -4032
002494  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002498  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00249c  9f010fdd  addli r3, r30, -4480
0024a0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0024a4  9f010fe1  addli r3, r30, -3968
0024a8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024ac  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0024b0  9f018fdd  addli r3, r30, -4416
0024b4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0024b8  9f018fe1  addli r3, r30, -3904
0024bc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024c0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0024c4  9f010fd8  addli r3, r30, -5120
0024c8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0024cc  9f010fe2  addli r3, r30, -3840
0024d0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024d4  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0024d8  9f018fd8  addli r3, r30, -5056
0024dc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0024e0  9f018fe2  addli r3, r30, -3776
0024e4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024e8  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0024ec  9f018fd9  addli r3, r30, -4928
0024f0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0024f4  9f010fe3  addli r3, r30, -3712
0024f8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024fc  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002500  9f018fda  addli r3, r30, -4800
002504  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002508  9f018fe3  addli r3, r30, -3648
00250c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002510  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002514  9f018fd6  addli r3, r30, -5312
002518  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00251c  9f010fe4  addli r3, r30, -3584
002520  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002524  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002528  9f018fdb  addli r3, r30, -4672
00252c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002530  9f018fe4  addli r3, r30, -3520
002534  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002538  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00253c  9f010fdc  addli r3, r30, -4608
002540  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002544  9f010fe5  addli r3, r30, -3456
002548  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00254c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002550  9f018fdc  addli r3, r30, -4544
002554  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002558  9f018fe5  addli r3, r30, -3392
00255c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002560  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002564  9f018fd3  addli r3, r30, -5696
002568  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00256c  9f010fe6  addli r3, r30, -3328
002570  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002574  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002578  9f018fd7  addli r3, r30, -5184
00257c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002580  9f018fe6  addli r3, r30, -3264
002584  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002588  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00258c  9f010fd9  addli r3, r30, -4992
002590  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002594  9f010fe7  addli r3, r30, -3200
002598  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00259c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025a0  9f010fda  addli r3, r30, -4864
0025a4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025a8  9f018fe7  addli r3, r30, -3136
0025ac  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025b0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025b4  9f010fe8  addli r3, r30, -3072
0025b8  8a907002  vmul.f.mz.rn vr1{mr1}, r1, vr7
0025bc  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025c0  9f018fe8  addli r3, r30, -3008
0025c4  8a909002  vmul.f.mz.rn vr1{mr1}, r1, vr9
0025c8  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025cc  9f010fd3  addli r3, r30, -5760
0025d0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025d4  9f010fe9  addli r3, r30, -2944
0025d8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025dc  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025e0  9f010fdb  addli r3, r30, -4736
0025e4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025e8  9f018fe9  addli r3, r30, -2880
0025ec  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025f0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025f4  9f010fea  addli r3, r30, -2816
0025f8  8a903002  vmul.f.mz.rn vr1{mr1}, r1, vr3
0025fc  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002600  9f018fea  addli r3, r30, -2752
002604  8a906002  vmul.f.mz.rn vr1{mr1}, r1, vr6
002608  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00260c  9f010feb  addli r3, r30, -2688
002610  8a90b002  vmul.f.mz.rn vr1{mr1}, r1, vr11
002614  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002618  9f018feb  addli r3, r30, -2624
00261c  8a90a002  vmul.f.mz.rn vr1{mr1}, r1, vr10
002620  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002624  9f010fec  addli r3, r30, -2560
002628  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00262c  9f018fec  addli r3, r30, -2496
002630  0a902002  vmul.f.mz.rn vr0{mr1}, r1, vr2
002634  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
002638  9f010fed  addli r3, r30, -2432
00263c  0a904002  vmul.f.mz.rn vr0{mr1}, r1, vr4
002640  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
002644  0a905002  vmul.f.mz.rn vr0{mr1}, r1, vr5
002648  9f008fed  addli r1, r30, -2368
00264c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002650  9f000500  addli r1, r10, 0
002654  00a00000  mfence { lm }
002658  e3018f00  loadli.w r3,  64(r30)
00265c  bf0f31ec  blt.s r2, r3, -9248
002660  9f000000  addli r1, zero, 0
002664  5b7bfbff  j -9256
002668  9f0e0fce  addli sp, r30, -6400
00266c  9f8e0e32  addli sp, sp, 6400
002670  00a00300  mfence { lm, sm, gm }
002674  00100000  exit
002678  00100000  exit
00267c  00100000  exit
002680  00100000  exit
002684  00100000  exit
002688  00100000  exit
00268c  00100000  exit
002690  00100000  exit
002694  00100000  exit
002698  00100000  exit
00269c  00100000  exit
0026a0  00100000  exit
0026a4  00100000  exit
0026a8  00100000  exit
0026ac  00100000  exit
0026b0  00100000  exit
0026b4  00100000  exit
0026b8  00100000  exit
0026bc  00100000  exit
0026c0  00100000  exit
0026c4  00100000  exit
0026c8  00100000  exit
0026cc  00100000  exit
0026d0  00100000  exit
0026d4  00100000  exit
0026d8  00100000  exit
0026dc  00100000  exit
0026e0  00100000  exit
0026e4  00100000  exit
0026e8  00100000  exit
0026ec  00100000  exit
0026f0  00100000  exit
0026f4  00100000  exit
0026f8  00100000  exit
0026fc  00100000  exit
002700  00100000  exit
002704  00100000  exit
002708  00100000  exit
00270c  00100000  exit
002710  00100000  exit
002714  00100000  exit
002718  00100000  exit
00271c  00100000  exit
002720  00100000  exit
002724  00100000  exit
002728  00100000  exit
00272c  00100000  exit
002730  00100000  exit
002734  00100000  exit
002738  00100000  exit
00273c  00100000  exit
002740  00100000  exit
002744  00100000  exit
002748  00100000  exit
00274c  00100000  exit
002750  00100000  exit
002754  00100000  exit
002758  00100000  exit
00275c  00100000  exit
002760  00100000  exit
002764  00100000  exit
002768  00100000  exit
00276c  00100000  exit
002770  00100000  exit
002774  00100000  exit
002778  00100000  exit
00277c  00100000  exit
002780  00100000  exit
002784  00100000  exit
002788  00100000  exit
00278c  00100000  exit
002790  00100000  exit
002794  00100000  exit
002798  00100000  exit
00279c  00100000  exit
0027a0  00100000  exit
0027a4  00100000  exit
0027a8  00100000  exit
0027ac  00100000  exit
0027b0  00100000  exit
0027b4  00100000  exit
0027b8  00100000  exit
0027bc  00100000  exit
0027c0  00100000  exit
0027c4  00100000  exit
0027c8  00100000  exit
0027cc  00100000  exit
0027d0  00100000  exit
0027d4  00100000  exit
0027d8  00100000  exit
0027dc  00100000  exit
0027e0  00100000  exit
0027e4  00100000  exit
0027e8  00100000  exit
0027ec  00100000  exit
0027f0  00100000  exit
0027f4  00100000  exit
0027f8  00100000  exit
0027fc  00100000  exit
002800  00100000  exit
002804  00100000  exit
002808  00100000  exit
00280c  00100000  exit
002810  00100000  exit
002814  00100000  exit
002818  00100000  exit
00281c  00100000  exit
002820  00100000  exit
002824  00100000  exit
002828  00100000  exit
00282c  00100000  exit
002830  00100000  exit
002834  00100000  exit
002838  00100000  exit
00283c  00100000  exit
002840  00100000  exit
002844  00100000  exit
002848  00100000  exit
00284c  00100000  exit
002850  00100000  exit
002854  00100000  exit
002858  00100000  exit
00285c  00100000  exit
002860  00100000  exit
002864  00100000  exit
002868  00100000  exit
00286c  00100000  exit
002870  00100000  exit
002874  00100000  exit
002878  00100000  exit
00287c  00100000  exit
002880  00100000  exit
002884  00100000  exit
002888  00100000  exit
00288c  00100000  exit
002890  00100000  exit
002894  00100000  exit
002898  00100000  exit
00289c  00100000  exit
0028a0  00100000  exit
0028a4  00100000  exit
0028a8  00100000  exit
0028ac  00100000  exit
0028b0  00100000  exit
0028b4  00100000  exit
