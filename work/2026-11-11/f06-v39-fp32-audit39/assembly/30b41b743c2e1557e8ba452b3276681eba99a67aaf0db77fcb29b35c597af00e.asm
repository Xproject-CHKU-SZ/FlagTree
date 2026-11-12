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
000148  e7035fce  storeli.w r5, -6344(r30)
00014c  73e00200  stores.w zero, 0(r5)
000150  00a00300  mfence { lm, sm, gm }
000154  80210204  csr_set csr3, r4
000158  00d00100  sync_group
00015c  4be46312  ble.s r7, r6, 9496
000160  9b063400  andi r13, r8, 3
000164  eb570f03  load.d r[16:17], 48(r30)
000168  e3095f00  loadli.w r19,  40(r30)
00016c  2bfaffff  lui r20, 1048575
000170  9f210000  addli r3, zero, 2
000174  6b5d0f02  load.d r[27:28], 32(r30)
000178  e34a1f00  loadli.w r21,  12(r30)
00017c  e34b8f00  loadli.w r23,  68(r30)
000180  1f070004  addli r14, zero, 512
000184  1b442400  srli r8, r8, 2
000188  eb550f05  load.d r[12:13], 80(r30)
00018c  6b5c8f01  load.d r[25:26], 24(r30)
000190  1bbb9600  slli r22, r13, 9
000194  1b1a0aff  ori r20, r20, 4080
000198  b3080b28  zext_int2long r[18:19], r22
00019c  8b996919  sub.s r19, r19, r22
0001a0  97844401  and r9, r9, r20
0001a4  8bb71721  mul.sl r[16:17], r[16:17], r[18:19]
0001a8  8b990948  max.s r19, r19, zero
0001ac  0b119110  add.s r2, r2, r9
0001b0  8b946b19  sub.s r9, r23, r22
0001b4  97b73702  sll.d r[16:17], r[16:17], r3
0001b8  8b99e940  min.s r19, r19, r14
0001bc  80d10002  load_param_i r3, 1
0001c0  0b1e1110  add.s r28, r2, r1
0001c4  8b900448  max.s r1, r9, zero
0001c8  8b27fd10  add.ul r[16:17], r[27:28], r[16:17]
0001cc  0b9d6a19  sub.s r26, r21, r22
0001d0  9b0af400  andi r21, r8, 15
0001d4  8b1da110  add.s r27, r2, r10
0001d8  9bb92900  slli r19, r19, 2
0001dc  2b0100f0  lui r2, 983040
0001e0  67433fce  storeli.w r3, -6348(r30)
0001e4  9f015fce  addli r3, r30, -6360
0001e8  8b90e040  min.s r1, r1, r14
0001ec  0b140d48  max.s r8, r26, zero
0001f0  338b0a28  zext_int2long r[23:24], r21
0001f4  17912900  or r2, r19, r2
0001f8  1bb52000  slli r10, r1, 2
0001fc  9f090ffe  addli r19, r30, -256
000200  0b14e440  min.s r8, r8, r14
000204  73b06101  store.d r[23:24], 0(r3)
000208  0b3b1c21  mul.sl r[23:24], r[25:26], r[18:19]
00020c  9f014fce  addli r3, r30, -6368
000210  1f070001  addli r14, zero, 128
000214  1b3d2400  slli r26, r8, 2
000218  0bb41521  mul.sl r[9:10], r[12:13], r[18:19]
00021c  9f050fee  addli r11, r30, -2304
000220  73b06101  store.d r[23:24], 0(r3)
000224  1f060002  addli r12, zero, 256
000228  7fa1b700  l_gm2lm r2, r11, 0(r[16:17])
00022c  9f050fde  addli r11, r30, -4352
000230  9f078000  addli r15, zero, 64
000234  1f084000  addli r16, zero, 32
000238  00a00000  mfence { lm }
00023c  5b080000  j 64
000240  6b518f04  load.d r[3:4], 72(r30)
000244  9f220000  addli r5, zero, 2
000248  0bb12820  mul.sl r[3:4], r[18:19], r[3:4]
00024c  eb588f03  load.d r[18:19], 56(r30)
000250  0b218110  add.ul r[3:4], r[3:4], r[9:10]
000254  17315102  sll.d r[3:4], r[3:4], r5
000258  ab0200f0  lui r5, 983040
00025c  0ba12810  add.ul r[3:4], r[18:19], r[3:4]
000260  97905000  or r1, r1, r5
000264  ff30b100  s_lm2gm r1, r11, 0(r[3:4])
000268  e3406fce  loadli.w r1,  -6348(r30)
00026c  00a00000  mfence { lm }
000270  0b131310  add.s r6, r6, r1
000274  3f207300  blt.s r6, r7, 8
000278  db7f0400  j 9212
00027c  e340cf00  loadli.w r1,  100(r30)
000280  6301cf00  loadli.w r2,  96(r30)
000284  00a00000  mfence { lm }
000288  e3011f00  loadli.w r3,  8(r30)
00028c  8b101330  div.s r1, r6, r1
000290  8b902030  div.s r1, r1, r2
000294  9bb84000  slli r17, r1, 4
000298  9f000d00  addli r1, r26, 0
00029c  17915801  or r2, r17, r21
0002a0  3f203100  blt.s r2, r3, 8
0002a4  9f000000  addli r1, zero, 0
0002a8  9f015fce  addli r3, r30, -6360
0002ac  b3980828  sext_int2long r[18:19], r17
0002b0  9f220000  addli r5, zero, 2
0002b4  6bdb0100  load.d r[23:24], 0(r3)
0002b8  9f014fce  addli r3, r30, -6368
0002bc  6bdc0100  load.d r[25:26], 0(r3)
0002c0  ab0100f0  lui r3, 983040
0002c4  97986803  or.d r[18:19], r[18:19], r[23:24]
0002c8  6b5b0f01  load.d r[23:24], 16(r30)
0002cc  97903000  or r1, r1, r3
0002d0  0bbb6821  mul.sl r[23:24], r[18:19], r[23:24]
0002d4  0b2b8b11  add.ul r[23:24], r[23:24], r[25:26]
0002d8  6b5c0f00  load.d r[25:26], 0(r30)
0002dc  173b5b02  sll.d r[23:24], r[23:24], r5
0002e0  0b2b6c11  add.ul r[23:24], r[25:26], r[23:24]
0002e4  ff20bb00  l_gm2lm r1, r11, 0(r[23:24])
0002e8  9f000fde  addli r1, r30, -4352
0002ec  00a00000  mfence { lm }
0002f0  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0002f4  9f008fde  addli r1, r30, -4288
0002f8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0002fc  9f000fdf  addli r1, r30, -4224
000300  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000304  9f008fdf  addli r1, r30, -4160
000308  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00030c  9f000fe0  addli r1, r30, -4096
000310  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000314  9f008fe0  addli r1, r30, -4032
000318  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00031c  9f000fee  addli r1, r30, -2304
000320  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000324  9f000fe1  addli r1, r30, -3968
000328  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
00032c  9f008fe1  addli r1, r30, -3904
000330  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000334  9f000fe2  addli r1, r30, -3840
000338  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00033c  9f008fe2  addli r1, r30, -3776
000340  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000344  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000348  9f008fee  addli r1, r30, -2240
00034c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000350  9f008fd2  addli r1, r30, -5824
000354  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000358  9f000fef  addli r1, r30, -2176
00035c  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000360  9f000fd5  addli r1, r30, -5504
000364  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
000368  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00036c  9f008fef  addli r1, r30, -2112
000370  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000374  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000378  9f000fd4  addli r1, r30, -5632
00037c  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000380  9f000ff0  addli r1, r30, -2048
000384  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000388  9f008fd3  addli r1, r30, -5696
00038c  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
000390  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000394  9f008ff0  addli r1, r30, -1984
000398  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
00039c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0003a0  9f000fd3  addli r1, r30, -5760
0003a4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0003a8  9f000ff1  addli r1, r30, -1920
0003ac  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0003b0  9f008fd5  addli r1, r30, -5440
0003b4  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0003b8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003bc  9f008ff1  addli r1, r30, -1856
0003c0  16901502  vadd.f.mz.rn vr0{mr1}, vr11, vr1
0003c4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0003c8  9f008fd4  addli r1, r30, -5568
0003cc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003d0  9f000fe3  addli r1, r30, -3712
0003d4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0003d8  9f000fd7  addli r1, r30, -5248
0003dc  16107502  vadd.f.mz.rn vr0{mr1}, vr10, vr7
0003e0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003e4  9f000ff2  addli r1, r30, -1792
0003e8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0003ec  9f008ff2  addli r1, r30, -1728
0003f0  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0003f4  9f000ff3  addli r1, r30, -1664
0003f8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0003fc  9f000fd6  addli r1, r30, -5376
000400  16917402  vadd.f.mz.rn vr2{mr1}, vr9, vr7
000404  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000408  1611a402  vadd.f.mz.rn vr2{mr1}, vr8, vr10
00040c  9f008fdd  addli r1, r30, -4416
000410  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000414  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000418  9f000fdd  addli r1, r30, -4480
00041c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000420  9f008fe3  addli r1, r30, -3648
000424  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000428  9f000fe4  addli r1, r30, -3584
00042c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000430  9f008fe4  addli r1, r30, -3520
000434  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000438  9f008ff3  addli r1, r30, -1600
00043c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000440  9f000ff4  addli r1, r30, -1536
000444  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000448  9f008ff4  addli r1, r30, -1472
00044c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000450  9f008fd6  addli r1, r30, -5312
000454  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000458  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00045c  16908302  vadd.f.mz.rn vr0{mr1}, vr7, vr8
000460  9f000fd8  addli r1, r30, -5120
000464  16119502  vadd.f.mz.rn vr2{mr1}, vr10, vr9
000468  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00046c  9f000fe5  addli r1, r30, -3456
000470  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000474  9f008fe5  addli r1, r30, -3392
000478  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00047c  9f000fe6  addli r1, r30, -3328
000480  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000484  9f000ff5  addli r1, r30, -1408
000488  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00048c  9f008ff5  addli r1, r30, -1344
000490  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000494  9f000ff6  addli r1, r30, -1280
000498  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00049c  9f008fd8  addli r1, r30, -5056
0004a0  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
0004a4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004a8  16908302  vadd.f.mz.rn vr0{mr1}, vr7, vr8
0004ac  9f008fd9  addli r1, r30, -4928
0004b0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004b4  16901402  vadd.f.mz.rn vr0{mr1}, vr9, vr1
0004b8  9f008fda  addli r1, r30, -4800
0004bc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004c0  9f008fe6  addli r1, r30, -3264
0004c4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0004c8  9f000fe7  addli r1, r30, -3200
0004cc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0004d0  9f008fe7  addli r1, r30, -3136
0004d4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0004d8  9f008ff6  addli r1, r30, -1216
0004dc  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0004e0  9f000ff7  addli r1, r30, -1152
0004e4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0004e8  9f008ff7  addli r1, r30, -1088
0004ec  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0004f0  9f008fdc  addli r1, r30, -4544
0004f4  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0004f8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004fc  16909002  vadd.f.mz.rn vr0{mr1}, vr1, vr9
000500  9f008fdb  addli r1, r30, -4672
000504  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000508  1690a302  vadd.f.mz.rn vr0{mr1}, vr7, vr10
00050c  9f000fdc  addli r1, r30, -4608
000510  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000514  9f000fe8  addli r1, r30, -3072
000518  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00051c  9f008fe8  addli r1, r30, -3008
000520  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000524  9f000fe9  addli r1, r30, -2944
000528  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00052c  42140f82  vload_mask16.mz vr8{mr1}, 1024(r30)
000530  c2148f82  vload_mask16.mz vr9{mr1}, 1088(r30)
000534  42150f83  vload_mask16.mz vr10{mr1}, 1152(r30)
000538  9f008fce  addli r1, r30, -6336
00053c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000540  16939002  vadd.f.mz.rn vr6{mr1}, vr1, vr9
000544  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000548  1690a302  vadd.f.mz.rn vr0{mr1}, vr7, vr10
00054c  9f008fd7  addli r1, r30, -5184
000550  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000554  9f008fe9  addli r1, r30, -2880
000558  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00055c  9f000fea  addli r1, r30, -2816
000560  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000564  9f008fea  addli r1, r30, -2752
000568  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00056c  42148f83  vload_mask16.mz vr8{mr1}, 1216(r30)
000570  c2140fa2  vload_mask16.mz vr9{mr1}, 1280(r30)
000574  9f000fd9  addli r1, r30, -4992
000578  42158fa2  vload_mask16.mz vr10{mr1}, 1344(r30)
00057c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000580  1692a302  vadd.f.mz.rn vr4{mr1}, vr7, vr10
000584  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000588  16909002  vadd.f.mz.rn vr0{mr1}, vr1, vr9
00058c  9f000fda  addli r1, r30, -4864
000590  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000594  9f000feb  addli r1, r30, -2688
000598  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00059c  9f008feb  addli r1, r30, -2624
0005a0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0005a4  9f000fec  addli r1, r30, -2560
0005a8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0005ac  42140fa3  vload_mask16.mz vr8{mr1}, 1408(r30)
0005b0  c2148fa3  vload_mask16.mz vr9{mr1}, 1472(r30)
0005b4  9f000fdb  addli r1, r30, -4736
0005b8  42150fc2  vload_mask16.mz vr10{mr1}, 1536(r30)
0005bc  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0005c0  96929002  vadd.f.mz.rn vr5{mr1}, vr1, vr9
0005c4  9695a302  vadd.f.mz.rn vr11{mr1}, vr7, vr10
0005c8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005cc  9f008fec  addli r1, r30, -2496
0005d0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0005d4  9f000fed  addli r1, r30, -2432
0005d8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0005dc  9f008fed  addli r1, r30, -2368
0005e0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0005e4  42148fc2  vload_mask16.mz vr8{mr1}, 1600(r30)
0005e8  c2140fc3  vload_mask16.mz vr9{mr1}, 1664(r30)
0005ec  42158fc3  vload_mask16.mz vr10{mr1}, 1728(r30)
0005f0  9f000fdc  addli r1, r30, -4608
0005f4  e3017fce  loadli.w r3,  -6344(r30)
0005f8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0005fc  9f008fd7  addli r1, r30, -5184
000600  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000604  1695a302  vadd.f.mz.rn vr10{mr1}, vr7, vr10
000608  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00060c  9f000fd5  addli r1, r30, -5504
000610  16949002  vadd.f.mz.rn vr8{mr1}, vr1, vr9
000614  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000618  9f008fd2  addli r1, r30, -5824
00061c  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000620  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000624  9f000fd4  addli r1, r30, -5632
000628  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00062c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000630  9f008fd3  addli r1, r30, -5696
000634  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000638  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00063c  9f000fd3  addli r1, r30, -5760
000640  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000644  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000648  9f008fd5  addli r1, r30, -5440
00064c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000650  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000654  9f008fd4  addli r1, r30, -5568
000658  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00065c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000660  9f000fd7  addli r1, r30, -5248
000664  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000668  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00066c  9f000fd6  addli r1, r30, -5376
000670  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000674  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000678  9f008fdd  addli r1, r30, -4416
00067c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000680  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000684  9f000fdd  addli r1, r30, -4480
000688  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00068c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000690  9f008fd6  addli r1, r30, -5312
000694  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000698  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00069c  9f000fd8  addli r1, r30, -5120
0006a0  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006a4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006a8  9f000fcf  addli r1, r30, -6272
0006ac  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006b0  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0006b4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0006b8  9f008fd8  addli r1, r30, -5056
0006bc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006c0  9f008fd9  addli r1, r30, -4928
0006c4  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006c8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006cc  9f008fda  addli r1, r30, -4800
0006d0  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006d4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006d8  9f008fdc  addli r1, r30, -4544
0006dc  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006e0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006e4  9f008fdb  addli r1, r30, -4672
0006e8  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006ec  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006f0  9f008fce  addli r1, r30, -6336
0006f4  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006f8  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
0006fc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000700  9f008fcf  addli r1, r30, -6208
000704  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000708  36106002  vmax.f.mz vr0{mr1}, vr0, vr6
00070c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000710  9f000fd9  addli r1, r30, -4992
000714  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
000718  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00071c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000720  9f000fda  addli r1, r30, -4864
000724  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000728  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00072c  9f000fd0  addli r1, r30, -6144
000730  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000734  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
000738  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00073c  9f000fdb  addli r1, r30, -4736
000740  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000744  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000748  9f008fd0  addli r1, r30, -6080
00074c  36105002  vmax.f.mz vr0{mr1}, vr0, vr5
000750  3610b002  vmax.f.mz vr0{mr1}, vr0, vr11
000754  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000758  9f000fd1  addli r1, r30, -6016
00075c  9232b002  vadd.s.mz vr5{mr1}, zero, vr11
000760  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
000764  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
000768  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
00076c  9f008fd1  addli r1, r30, -5952
000770  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000774  ea7006c0  vsrl.p vr1, r12, vr0
000778  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00077c  ea7007c0  vsrl.p vr1, r14, vr0
000780  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
000784  9f000fd2  addli r1, r30, -5888
000788  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00078c  eaf007c0  vsrl.p vr1, r15, vr0
000790  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000794  ea7008c0  vsrl.p vr1, r16, vr0
000798  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
00079c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0007a0  fa100040  vextracti.f r1, 0(vr0)
0007a4  73e01100  stores.w r1, 0(r3)
0007a8  00a00300  mfence { lm, sm, gm }
0007ac  80210204  csr_set csr3, r4
0007b0  00d00100  sync_group
0007b4  bb900600  bneq r13, zero, 36
0007b8  efc00d00  loads.w r1, 0(r27)
0007bc  efc14d00  loads.w r3, 4(r27)
0007c0  6fcb8d00  loads.w r22, 8(r27)
0007c4  efcbcd00  loads.w r23, 12(r27)
0007c8  8be03048  max.f r1, r1, r3
0007cc  8be06049  max.f r1, r1, r22
0007d0  8be07049  max.f r1, r1, r23
0007d4  73e01d00  stores.w r1, 0(r27)
0007d8  00a00300  mfence { lm, sm, gm }
0007dc  80210204  csr_set csr3, r4
0007e0  00d00100  sync_group
0007e4  efc00d00  loads.w r1, 0(r27)
0007e8  ab010080  lui r3, 524288
0007ec  97a03000  xor r1, r1, r3
0007f0  9f018fd2  addli r3, r30, -5824
0007f4  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0007f8  9f010fd5  addli r3, r30, -5504
0007fc  92930002  vadd.f.mz.rn vr7{mr1}, r1, vr0
000800  46107fe2  vstore_mask16.mz vr7{mr1}, 1792(r30)
000804  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000808  9f010fd4  addli r3, r30, -5632
00080c  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000810  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
000814  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000818  9f018fd3  addli r3, r30, -5696
00081c  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000820  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
000824  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000828  9f010fd3  addli r3, r30, -5760
00082c  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000830  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
000834  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000838  00a00000  mfence { lm }
00083c  e3810900  loadli.w r3,  0(r19)
000840  63cb0900  loadli.w r22,  4(r19)
000844  e38b1900  loadli.w r23,  8(r19)
000848  63ca1900  loadli.w r20,  12(r19)
00084c  e3822900  loadli.w r5,  16(r19)
000850  63cc2900  loadli.w r24,  20(r19)
000854  e38c3900  loadli.w r25,  24(r19)
000858  e3c53900  loadli.w r11,  28(r19)
00085c  8f810100  exp.f.rn r3, r3
000860  0f0b0b00  exp.f.rn r22, r22
000864  8f8b0b00  exp.f.rn r23, r23
000868  0f0a0a00  exp.f.rn r20, r20
00086c  8f820200  exp.f.rn r5, r5
000870  0f0c0c00  exp.f.rn r24, r24
000874  8f8c0c00  exp.f.rn r25, r25
000878  8f850500  exp.f.rn r11, r11
00087c  67803900  storeli.w r3, 0(r19)
000880  67c06901  storeli.w r22, 4(r19)
000884  e7807901  storeli.w r23, 8(r19)
000888  e7c04901  storeli.w r20, 12(r19)
00088c  67815900  storeli.w r5, 16(r19)
000890  67c18901  storeli.w r24, 20(r19)
000894  e7819901  storeli.w r25, 24(r19)
000898  e7c1b900  storeli.w r11, 28(r19)
00089c  e3814900  loadli.w r3,  32(r19)
0008a0  63cb4900  loadli.w r22,  36(r19)
0008a4  e38b5900  loadli.w r23,  40(r19)
0008a8  63ca5900  loadli.w r20,  44(r19)
0008ac  e3826900  loadli.w r5,  48(r19)
0008b0  63cc6900  loadli.w r24,  52(r19)
0008b4  e38c7900  loadli.w r25,  56(r19)
0008b8  e3c57900  loadli.w r11,  60(r19)
0008bc  8f810100  exp.f.rn r3, r3
0008c0  0f0b0b00  exp.f.rn r22, r22
0008c4  8f8b0b00  exp.f.rn r23, r23
0008c8  0f0a0a00  exp.f.rn r20, r20
0008cc  8f820200  exp.f.rn r5, r5
0008d0  0f0c0c00  exp.f.rn r24, r24
0008d4  8f8c0c00  exp.f.rn r25, r25
0008d8  8f850500  exp.f.rn r11, r11
0008dc  67823900  storeli.w r3, 32(r19)
0008e0  67c26901  storeli.w r22, 36(r19)
0008e4  e7827901  storeli.w r23, 40(r19)
0008e8  e7c24901  storeli.w r20, 44(r19)
0008ec  67835900  storeli.w r5, 48(r19)
0008f0  67c38901  storeli.w r24, 52(r19)
0008f4  e7839901  storeli.w r25, 56(r19)
0008f8  e7c3b900  storeli.w r11, 60(r19)
0008fc  e3818900  loadli.w r3,  64(r19)
000900  63cb8900  loadli.w r22,  68(r19)
000904  e38b9900  loadli.w r23,  72(r19)
000908  63ca9900  loadli.w r20,  76(r19)
00090c  e382a900  loadli.w r5,  80(r19)
000910  63cca900  loadli.w r24,  84(r19)
000914  e38cb900  loadli.w r25,  88(r19)
000918  e3c5b900  loadli.w r11,  92(r19)
00091c  8f810100  exp.f.rn r3, r3
000920  0f0b0b00  exp.f.rn r22, r22
000924  8f8b0b00  exp.f.rn r23, r23
000928  0f0a0a00  exp.f.rn r20, r20
00092c  8f820200  exp.f.rn r5, r5
000930  0f0c0c00  exp.f.rn r24, r24
000934  8f8c0c00  exp.f.rn r25, r25
000938  8f850500  exp.f.rn r11, r11
00093c  67843900  storeli.w r3, 64(r19)
000940  67c46901  storeli.w r22, 68(r19)
000944  e7847901  storeli.w r23, 72(r19)
000948  e7c44901  storeli.w r20, 76(r19)
00094c  67855900  storeli.w r5, 80(r19)
000950  67c58901  storeli.w r24, 84(r19)
000954  e7859901  storeli.w r25, 88(r19)
000958  e7c5b900  storeli.w r11, 92(r19)
00095c  e381c900  loadli.w r3,  96(r19)
000960  63cbc900  loadli.w r22,  100(r19)
000964  e38bd900  loadli.w r23,  104(r19)
000968  63cad900  loadli.w r20,  108(r19)
00096c  e382e900  loadli.w r5,  112(r19)
000970  63cce900  loadli.w r24,  116(r19)
000974  e38cf900  loadli.w r25,  120(r19)
000978  e3c5f900  loadli.w r11,  124(r19)
00097c  8f810100  exp.f.rn r3, r3
000980  0f0b0b00  exp.f.rn r22, r22
000984  8f8b0b00  exp.f.rn r23, r23
000988  0f0a0a00  exp.f.rn r20, r20
00098c  8f820200  exp.f.rn r5, r5
000990  0f0c0c00  exp.f.rn r24, r24
000994  8f8c0c00  exp.f.rn r25, r25
000998  8f850500  exp.f.rn r11, r11
00099c  67863900  storeli.w r3, 96(r19)
0009a0  67c66901  storeli.w r22, 100(r19)
0009a4  e7867901  storeli.w r23, 104(r19)
0009a8  e7c64901  storeli.w r20, 108(r19)
0009ac  67875900  storeli.w r5, 112(r19)
0009b0  67c78901  storeli.w r24, 116(r19)
0009b4  e7879901  storeli.w r25, 120(r19)
0009b8  e7c7b900  storeli.w r11, 124(r19)
0009bc  e3810901  loadli.w r3,  128(r19)
0009c0  63cb0901  loadli.w r22,  132(r19)
0009c4  e38b1901  loadli.w r23,  136(r19)
0009c8  63ca1901  loadli.w r20,  140(r19)
0009cc  e3822901  loadli.w r5,  144(r19)
0009d0  63cc2901  loadli.w r24,  148(r19)
0009d4  e38c3901  loadli.w r25,  152(r19)
0009d8  e3c53901  loadli.w r11,  156(r19)
0009dc  8f810100  exp.f.rn r3, r3
0009e0  0f0b0b00  exp.f.rn r22, r22
0009e4  8f8b0b00  exp.f.rn r23, r23
0009e8  0f0a0a00  exp.f.rn r20, r20
0009ec  8f820200  exp.f.rn r5, r5
0009f0  0f0c0c00  exp.f.rn r24, r24
0009f4  8f8c0c00  exp.f.rn r25, r25
0009f8  8f850500  exp.f.rn r11, r11
0009fc  67883900  storeli.w r3, 128(r19)
000a00  67c86901  storeli.w r22, 132(r19)
000a04  e7887901  storeli.w r23, 136(r19)
000a08  e7c84901  storeli.w r20, 140(r19)
000a0c  67895900  storeli.w r5, 144(r19)
000a10  67c98901  storeli.w r24, 148(r19)
000a14  e7899901  storeli.w r25, 152(r19)
000a18  e7c9b900  storeli.w r11, 156(r19)
000a1c  e3814901  loadli.w r3,  160(r19)
000a20  63cb4901  loadli.w r22,  164(r19)
000a24  e38b5901  loadli.w r23,  168(r19)
000a28  63ca5901  loadli.w r20,  172(r19)
000a2c  e3826901  loadli.w r5,  176(r19)
000a30  63cc6901  loadli.w r24,  180(r19)
000a34  e38c7901  loadli.w r25,  184(r19)
000a38  e3c57901  loadli.w r11,  188(r19)
000a3c  8f810100  exp.f.rn r3, r3
000a40  0f0b0b00  exp.f.rn r22, r22
000a44  8f8b0b00  exp.f.rn r23, r23
000a48  0f0a0a00  exp.f.rn r20, r20
000a4c  8f820200  exp.f.rn r5, r5
000a50  0f0c0c00  exp.f.rn r24, r24
000a54  8f8c0c00  exp.f.rn r25, r25
000a58  8f850500  exp.f.rn r11, r11
000a5c  678a3900  storeli.w r3, 160(r19)
000a60  67ca6901  storeli.w r22, 164(r19)
000a64  e78a7901  storeli.w r23, 168(r19)
000a68  e7ca4901  storeli.w r20, 172(r19)
000a6c  678b5900  storeli.w r5, 176(r19)
000a70  67cb8901  storeli.w r24, 180(r19)
000a74  e78b9901  storeli.w r25, 184(r19)
000a78  e7cbb900  storeli.w r11, 188(r19)
000a7c  e3818901  loadli.w r3,  192(r19)
000a80  63cb8901  loadli.w r22,  196(r19)
000a84  e38b9901  loadli.w r23,  200(r19)
000a88  63ca9901  loadli.w r20,  204(r19)
000a8c  e382a901  loadli.w r5,  208(r19)
000a90  63cca901  loadli.w r24,  212(r19)
000a94  e38cb901  loadli.w r25,  216(r19)
000a98  e3c5b901  loadli.w r11,  220(r19)
000a9c  8f810100  exp.f.rn r3, r3
000aa0  0f0b0b00  exp.f.rn r22, r22
000aa4  8f8b0b00  exp.f.rn r23, r23
000aa8  0f0a0a00  exp.f.rn r20, r20
000aac  8f820200  exp.f.rn r5, r5
000ab0  0f0c0c00  exp.f.rn r24, r24
000ab4  8f8c0c00  exp.f.rn r25, r25
000ab8  8f850500  exp.f.rn r11, r11
000abc  678c3900  storeli.w r3, 192(r19)
000ac0  67cc6901  storeli.w r22, 196(r19)
000ac4  e78c7901  storeli.w r23, 200(r19)
000ac8  e7cc4901  storeli.w r20, 204(r19)
000acc  678d5900  storeli.w r5, 208(r19)
000ad0  67cd8901  storeli.w r24, 212(r19)
000ad4  e78d9901  storeli.w r25, 216(r19)
000ad8  e7cdb900  storeli.w r11, 220(r19)
000adc  e381c901  loadli.w r3,  224(r19)
000ae0  63cbc901  loadli.w r22,  228(r19)
000ae4  e38bd901  loadli.w r23,  232(r19)
000ae8  63cad901  loadli.w r20,  236(r19)
000aec  e382e901  loadli.w r5,  240(r19)
000af0  63cce901  loadli.w r24,  244(r19)
000af4  e38cf901  loadli.w r25,  248(r19)
000af8  e3c5f901  loadli.w r11,  252(r19)
000afc  8f810100  exp.f.rn r3, r3
000b00  0f0b0b00  exp.f.rn r22, r22
000b04  8f8b0b00  exp.f.rn r23, r23
000b08  0f0a0a00  exp.f.rn r20, r20
000b0c  8f820200  exp.f.rn r5, r5
000b10  0f0c0c00  exp.f.rn r24, r24
000b14  8f8c0c00  exp.f.rn r25, r25
000b18  8f850500  exp.f.rn r11, r11
000b1c  678e3900  storeli.w r3, 224(r19)
000b20  67ce6901  storeli.w r22, 228(r19)
000b24  e78e7901  storeli.w r23, 232(r19)
000b28  e7ce4901  storeli.w r20, 236(r19)
000b2c  678f5900  storeli.w r5, 240(r19)
000b30  67cf8901  storeli.w r24, 244(r19)
000b34  e78f9901  storeli.w r25, 248(r19)
000b38  e7cfb900  storeli.w r11, 252(r19)
000b3c  00a00000  mfence { lm }
000b40  c2130fe2  vload_mask16.mz vr7{mr1}, 1792(r30)
000b44  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
000b48  9f018fd5  addli r3, r30, -5440
000b4c  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
000b50  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000b54  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
000b58  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
000b5c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000b60  9f018fd4  addli r3, r30, -5568
000b64  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000b68  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
000b6c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000b70  9f010fd5  addli r3, r30, -5504
000b74  92910002  vadd.f.mz.rn vr3{mr1}, r1, vr0
000b78  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
000b7c  9f018fd4  addli r3, r30, -5568
000b80  16901302  vadd.f.mz.rn vr0{mr1}, vr7, vr1
000b84  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000b88  9f010fd7  addli r3, r30, -5248
000b8c  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
000b90  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000b94  9f018fd5  addli r3, r30, -5440
000b98  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000b9c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000ba0  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000ba4  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
000ba8  9f010fd6  addli r3, r30, -5376
000bac  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000bb0  00a00000  mfence { lm }
000bb4  e3810900  loadli.w r3,  0(r19)
000bb8  e3c20900  loadli.w r5,  4(r19)
000bbc  e3851900  loadli.w r11,  8(r19)
000bc0  63ca1900  loadli.w r20,  12(r19)
000bc4  638b2900  loadli.w r22,  16(r19)
000bc8  e3cb2900  loadli.w r23,  20(r19)
000bcc  638c3900  loadli.w r24,  24(r19)
000bd0  e3cc3900  loadli.w r25,  28(r19)
000bd4  8f810100  exp.f.rn r3, r3
000bd8  8f820200  exp.f.rn r5, r5
000bdc  8f850500  exp.f.rn r11, r11
000be0  0f0a0a00  exp.f.rn r20, r20
000be4  0f0b0b00  exp.f.rn r22, r22
000be8  8f8b0b00  exp.f.rn r23, r23
000bec  0f0c0c00  exp.f.rn r24, r24
000bf0  8f8c0c00  exp.f.rn r25, r25
000bf4  67803900  storeli.w r3, 0(r19)
000bf8  67c05900  storeli.w r5, 4(r19)
000bfc  e780b900  storeli.w r11, 8(r19)
000c00  e7c04901  storeli.w r20, 12(r19)
000c04  67816901  storeli.w r22, 16(r19)
000c08  67c17901  storeli.w r23, 20(r19)
000c0c  e7818901  storeli.w r24, 24(r19)
000c10  e7c19901  storeli.w r25, 28(r19)
000c14  e3814900  loadli.w r3,  32(r19)
000c18  e3c24900  loadli.w r5,  36(r19)
000c1c  e3855900  loadli.w r11,  40(r19)
000c20  63ca5900  loadli.w r20,  44(r19)
000c24  638b6900  loadli.w r22,  48(r19)
000c28  e3cb6900  loadli.w r23,  52(r19)
000c2c  638c7900  loadli.w r24,  56(r19)
000c30  e3cc7900  loadli.w r25,  60(r19)
000c34  8f810100  exp.f.rn r3, r3
000c38  8f820200  exp.f.rn r5, r5
000c3c  8f850500  exp.f.rn r11, r11
000c40  0f0a0a00  exp.f.rn r20, r20
000c44  0f0b0b00  exp.f.rn r22, r22
000c48  8f8b0b00  exp.f.rn r23, r23
000c4c  0f0c0c00  exp.f.rn r24, r24
000c50  8f8c0c00  exp.f.rn r25, r25
000c54  67823900  storeli.w r3, 32(r19)
000c58  67c25900  storeli.w r5, 36(r19)
000c5c  e782b900  storeli.w r11, 40(r19)
000c60  e7c24901  storeli.w r20, 44(r19)
000c64  67836901  storeli.w r22, 48(r19)
000c68  67c37901  storeli.w r23, 52(r19)
000c6c  e7838901  storeli.w r24, 56(r19)
000c70  e7c39901  storeli.w r25, 60(r19)
000c74  e3818900  loadli.w r3,  64(r19)
000c78  e3c28900  loadli.w r5,  68(r19)
000c7c  e3859900  loadli.w r11,  72(r19)
000c80  63ca9900  loadli.w r20,  76(r19)
000c84  638ba900  loadli.w r22,  80(r19)
000c88  e3cba900  loadli.w r23,  84(r19)
000c8c  638cb900  loadli.w r24,  88(r19)
000c90  e3ccb900  loadli.w r25,  92(r19)
000c94  8f810100  exp.f.rn r3, r3
000c98  8f820200  exp.f.rn r5, r5
000c9c  8f850500  exp.f.rn r11, r11
000ca0  0f0a0a00  exp.f.rn r20, r20
000ca4  0f0b0b00  exp.f.rn r22, r22
000ca8  8f8b0b00  exp.f.rn r23, r23
000cac  0f0c0c00  exp.f.rn r24, r24
000cb0  8f8c0c00  exp.f.rn r25, r25
000cb4  67843900  storeli.w r3, 64(r19)
000cb8  67c45900  storeli.w r5, 68(r19)
000cbc  e784b900  storeli.w r11, 72(r19)
000cc0  e7c44901  storeli.w r20, 76(r19)
000cc4  67856901  storeli.w r22, 80(r19)
000cc8  67c57901  storeli.w r23, 84(r19)
000ccc  e7858901  storeli.w r24, 88(r19)
000cd0  e7c59901  storeli.w r25, 92(r19)
000cd4  e381c900  loadli.w r3,  96(r19)
000cd8  e3c2c900  loadli.w r5,  100(r19)
000cdc  e385d900  loadli.w r11,  104(r19)
000ce0  63cad900  loadli.w r20,  108(r19)
000ce4  638be900  loadli.w r22,  112(r19)
000ce8  e3cbe900  loadli.w r23,  116(r19)
000cec  638cf900  loadli.w r24,  120(r19)
000cf0  e3ccf900  loadli.w r25,  124(r19)
000cf4  8f810100  exp.f.rn r3, r3
000cf8  8f820200  exp.f.rn r5, r5
000cfc  8f850500  exp.f.rn r11, r11
000d00  0f0a0a00  exp.f.rn r20, r20
000d04  0f0b0b00  exp.f.rn r22, r22
000d08  8f8b0b00  exp.f.rn r23, r23
000d0c  0f0c0c00  exp.f.rn r24, r24
000d10  8f8c0c00  exp.f.rn r25, r25
000d14  67863900  storeli.w r3, 96(r19)
000d18  67c65900  storeli.w r5, 100(r19)
000d1c  e786b900  storeli.w r11, 104(r19)
000d20  e7c64901  storeli.w r20, 108(r19)
000d24  67876901  storeli.w r22, 112(r19)
000d28  67c77901  storeli.w r23, 116(r19)
000d2c  e7878901  storeli.w r24, 120(r19)
000d30  e7c79901  storeli.w r25, 124(r19)
000d34  e3810901  loadli.w r3,  128(r19)
000d38  e3c20901  loadli.w r5,  132(r19)
000d3c  e3851901  loadli.w r11,  136(r19)
000d40  63ca1901  loadli.w r20,  140(r19)
000d44  638b2901  loadli.w r22,  144(r19)
000d48  e3cb2901  loadli.w r23,  148(r19)
000d4c  638c3901  loadli.w r24,  152(r19)
000d50  e3cc3901  loadli.w r25,  156(r19)
000d54  8f810100  exp.f.rn r3, r3
000d58  8f820200  exp.f.rn r5, r5
000d5c  8f850500  exp.f.rn r11, r11
000d60  0f0a0a00  exp.f.rn r20, r20
000d64  0f0b0b00  exp.f.rn r22, r22
000d68  8f8b0b00  exp.f.rn r23, r23
000d6c  0f0c0c00  exp.f.rn r24, r24
000d70  8f8c0c00  exp.f.rn r25, r25
000d74  67883900  storeli.w r3, 128(r19)
000d78  67c85900  storeli.w r5, 132(r19)
000d7c  e788b900  storeli.w r11, 136(r19)
000d80  e7c84901  storeli.w r20, 140(r19)
000d84  67896901  storeli.w r22, 144(r19)
000d88  67c97901  storeli.w r23, 148(r19)
000d8c  e7898901  storeli.w r24, 152(r19)
000d90  e7c99901  storeli.w r25, 156(r19)
000d94  e3814901  loadli.w r3,  160(r19)
000d98  e3c24901  loadli.w r5,  164(r19)
000d9c  e3855901  loadli.w r11,  168(r19)
000da0  63ca5901  loadli.w r20,  172(r19)
000da4  638b6901  loadli.w r22,  176(r19)
000da8  e3cb6901  loadli.w r23,  180(r19)
000dac  638c7901  loadli.w r24,  184(r19)
000db0  e3cc7901  loadli.w r25,  188(r19)
000db4  8f810100  exp.f.rn r3, r3
000db8  8f820200  exp.f.rn r5, r5
000dbc  8f850500  exp.f.rn r11, r11
000dc0  0f0a0a00  exp.f.rn r20, r20
000dc4  0f0b0b00  exp.f.rn r22, r22
000dc8  8f8b0b00  exp.f.rn r23, r23
000dcc  0f0c0c00  exp.f.rn r24, r24
000dd0  8f8c0c00  exp.f.rn r25, r25
000dd4  678a3900  storeli.w r3, 160(r19)
000dd8  67ca5900  storeli.w r5, 164(r19)
000ddc  e78ab900  storeli.w r11, 168(r19)
000de0  e7ca4901  storeli.w r20, 172(r19)
000de4  678b6901  storeli.w r22, 176(r19)
000de8  67cb7901  storeli.w r23, 180(r19)
000dec  e78b8901  storeli.w r24, 184(r19)
000df0  e7cb9901  storeli.w r25, 188(r19)
000df4  e3818901  loadli.w r3,  192(r19)
000df8  e3c28901  loadli.w r5,  196(r19)
000dfc  e3859901  loadli.w r11,  200(r19)
000e00  63ca9901  loadli.w r20,  204(r19)
000e04  638ba901  loadli.w r22,  208(r19)
000e08  e3cba901  loadli.w r23,  212(r19)
000e0c  638cb901  loadli.w r24,  216(r19)
000e10  e3ccb901  loadli.w r25,  220(r19)
000e14  8f810100  exp.f.rn r3, r3
000e18  8f820200  exp.f.rn r5, r5
000e1c  8f850500  exp.f.rn r11, r11
000e20  0f0a0a00  exp.f.rn r20, r20
000e24  0f0b0b00  exp.f.rn r22, r22
000e28  8f8b0b00  exp.f.rn r23, r23
000e2c  0f0c0c00  exp.f.rn r24, r24
000e30  8f8c0c00  exp.f.rn r25, r25
000e34  678c3900  storeli.w r3, 192(r19)
000e38  67cc5900  storeli.w r5, 196(r19)
000e3c  e78cb900  storeli.w r11, 200(r19)
000e40  e7cc4901  storeli.w r20, 204(r19)
000e44  678d6901  storeli.w r22, 208(r19)
000e48  67cd7901  storeli.w r23, 212(r19)
000e4c  e78d8901  storeli.w r24, 216(r19)
000e50  e7cd9901  storeli.w r25, 220(r19)
000e54  e381c901  loadli.w r3,  224(r19)
000e58  e3c2c901  loadli.w r5,  228(r19)
000e5c  e385d901  loadli.w r11,  232(r19)
000e60  63cad901  loadli.w r20,  236(r19)
000e64  638be901  loadli.w r22,  240(r19)
000e68  e3cbe901  loadli.w r23,  244(r19)
000e6c  638cf901  loadli.w r24,  248(r19)
000e70  e3ccf901  loadli.w r25,  252(r19)
000e74  8f810100  exp.f.rn r3, r3
000e78  8f820200  exp.f.rn r5, r5
000e7c  8f850500  exp.f.rn r11, r11
000e80  0f0a0a00  exp.f.rn r20, r20
000e84  0f0b0b00  exp.f.rn r22, r22
000e88  8f8b0b00  exp.f.rn r23, r23
000e8c  0f0c0c00  exp.f.rn r24, r24
000e90  8f8c0c00  exp.f.rn r25, r25
000e94  678e3900  storeli.w r3, 224(r19)
000e98  67ce5900  storeli.w r5, 228(r19)
000e9c  e78eb900  storeli.w r11, 232(r19)
000ea0  e7ce4901  storeli.w r20, 236(r19)
000ea4  678f6901  storeli.w r22, 240(r19)
000ea8  67cf7901  storeli.w r23, 244(r19)
000eac  e78f8901  storeli.w r24, 248(r19)
000eb0  e7cf9901  storeli.w r25, 252(r19)
000eb4  00a00000  mfence { lm }
000eb8  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000ebc  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
000ec0  9f010fd7  addli r3, r30, -5248
000ec4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000ec8  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000ecc  9f010fd6  addli r3, r30, -5376
000ed0  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
000ed4  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
000ed8  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
000edc  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000ee0  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
000ee4  9f018fdd  addli r3, r30, -4416
000ee8  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000eec  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000ef0  9f010fdd  addli r3, r30, -4480
000ef4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000ef8  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000efc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f00  9f010fd4  addli r3, r30, -5632
000f04  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000f08  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f0c  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000f10  9f018fd6  addli r3, r30, -5312
000f14  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
000f18  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f1c  9f010fdd  addli r3, r30, -4480
000f20  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000f24  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f28  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000f2c  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000f30  9f010fd8  addli r3, r30, -5120
000f34  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f38  00a00000  mfence { lm }
000f3c  e3810900  loadli.w r3,  0(r19)
000f40  e3c20900  loadli.w r5,  4(r19)
000f44  e3851900  loadli.w r11,  8(r19)
000f48  63ca1900  loadli.w r20,  12(r19)
000f4c  638b2900  loadli.w r22,  16(r19)
000f50  e3cb2900  loadli.w r23,  20(r19)
000f54  638c3900  loadli.w r24,  24(r19)
000f58  e3cc3900  loadli.w r25,  28(r19)
000f5c  8f810100  exp.f.rn r3, r3
000f60  8f820200  exp.f.rn r5, r5
000f64  8f850500  exp.f.rn r11, r11
000f68  0f0a0a00  exp.f.rn r20, r20
000f6c  0f0b0b00  exp.f.rn r22, r22
000f70  8f8b0b00  exp.f.rn r23, r23
000f74  0f0c0c00  exp.f.rn r24, r24
000f78  8f8c0c00  exp.f.rn r25, r25
000f7c  67803900  storeli.w r3, 0(r19)
000f80  67c05900  storeli.w r5, 4(r19)
000f84  e780b900  storeli.w r11, 8(r19)
000f88  e7c04901  storeli.w r20, 12(r19)
000f8c  67816901  storeli.w r22, 16(r19)
000f90  67c17901  storeli.w r23, 20(r19)
000f94  e7818901  storeli.w r24, 24(r19)
000f98  e7c19901  storeli.w r25, 28(r19)
000f9c  e3814900  loadli.w r3,  32(r19)
000fa0  e3c24900  loadli.w r5,  36(r19)
000fa4  e3855900  loadli.w r11,  40(r19)
000fa8  63ca5900  loadli.w r20,  44(r19)
000fac  638b6900  loadli.w r22,  48(r19)
000fb0  e3cb6900  loadli.w r23,  52(r19)
000fb4  638c7900  loadli.w r24,  56(r19)
000fb8  e3cc7900  loadli.w r25,  60(r19)
000fbc  8f810100  exp.f.rn r3, r3
000fc0  8f820200  exp.f.rn r5, r5
000fc4  8f850500  exp.f.rn r11, r11
000fc8  0f0a0a00  exp.f.rn r20, r20
000fcc  0f0b0b00  exp.f.rn r22, r22
000fd0  8f8b0b00  exp.f.rn r23, r23
000fd4  0f0c0c00  exp.f.rn r24, r24
000fd8  8f8c0c00  exp.f.rn r25, r25
000fdc  67823900  storeli.w r3, 32(r19)
000fe0  67c25900  storeli.w r5, 36(r19)
000fe4  e782b900  storeli.w r11, 40(r19)
000fe8  e7c24901  storeli.w r20, 44(r19)
000fec  67836901  storeli.w r22, 48(r19)
000ff0  67c37901  storeli.w r23, 52(r19)
000ff4  e7838901  storeli.w r24, 56(r19)
000ff8  e7c39901  storeli.w r25, 60(r19)
000ffc  e3818900  loadli.w r3,  64(r19)
001000  e3c28900  loadli.w r5,  68(r19)
001004  e3859900  loadli.w r11,  72(r19)
001008  63ca9900  loadli.w r20,  76(r19)
00100c  638ba900  loadli.w r22,  80(r19)
001010  e3cba900  loadli.w r23,  84(r19)
001014  638cb900  loadli.w r24,  88(r19)
001018  e3ccb900  loadli.w r25,  92(r19)
00101c  8f810100  exp.f.rn r3, r3
001020  8f820200  exp.f.rn r5, r5
001024  8f850500  exp.f.rn r11, r11
001028  0f0a0a00  exp.f.rn r20, r20
00102c  0f0b0b00  exp.f.rn r22, r22
001030  8f8b0b00  exp.f.rn r23, r23
001034  0f0c0c00  exp.f.rn r24, r24
001038  8f8c0c00  exp.f.rn r25, r25
00103c  67843900  storeli.w r3, 64(r19)
001040  67c45900  storeli.w r5, 68(r19)
001044  e784b900  storeli.w r11, 72(r19)
001048  e7c44901  storeli.w r20, 76(r19)
00104c  67856901  storeli.w r22, 80(r19)
001050  67c57901  storeli.w r23, 84(r19)
001054  e7858901  storeli.w r24, 88(r19)
001058  e7c59901  storeli.w r25, 92(r19)
00105c  e381c900  loadli.w r3,  96(r19)
001060  e3c2c900  loadli.w r5,  100(r19)
001064  e385d900  loadli.w r11,  104(r19)
001068  63cad900  loadli.w r20,  108(r19)
00106c  638be900  loadli.w r22,  112(r19)
001070  e3cbe900  loadli.w r23,  116(r19)
001074  638cf900  loadli.w r24,  120(r19)
001078  e3ccf900  loadli.w r25,  124(r19)
00107c  8f810100  exp.f.rn r3, r3
001080  8f820200  exp.f.rn r5, r5
001084  8f850500  exp.f.rn r11, r11
001088  0f0a0a00  exp.f.rn r20, r20
00108c  0f0b0b00  exp.f.rn r22, r22
001090  8f8b0b00  exp.f.rn r23, r23
001094  0f0c0c00  exp.f.rn r24, r24
001098  8f8c0c00  exp.f.rn r25, r25
00109c  67863900  storeli.w r3, 96(r19)
0010a0  67c65900  storeli.w r5, 100(r19)
0010a4  e786b900  storeli.w r11, 104(r19)
0010a8  e7c64901  storeli.w r20, 108(r19)
0010ac  67876901  storeli.w r22, 112(r19)
0010b0  67c77901  storeli.w r23, 116(r19)
0010b4  e7878901  storeli.w r24, 120(r19)
0010b8  e7c79901  storeli.w r25, 124(r19)
0010bc  e3810901  loadli.w r3,  128(r19)
0010c0  e3c20901  loadli.w r5,  132(r19)
0010c4  e3851901  loadli.w r11,  136(r19)
0010c8  63ca1901  loadli.w r20,  140(r19)
0010cc  638b2901  loadli.w r22,  144(r19)
0010d0  e3cb2901  loadli.w r23,  148(r19)
0010d4  638c3901  loadli.w r24,  152(r19)
0010d8  e3cc3901  loadli.w r25,  156(r19)
0010dc  8f810100  exp.f.rn r3, r3
0010e0  8f820200  exp.f.rn r5, r5
0010e4  8f850500  exp.f.rn r11, r11
0010e8  0f0a0a00  exp.f.rn r20, r20
0010ec  0f0b0b00  exp.f.rn r22, r22
0010f0  8f8b0b00  exp.f.rn r23, r23
0010f4  0f0c0c00  exp.f.rn r24, r24
0010f8  8f8c0c00  exp.f.rn r25, r25
0010fc  67883900  storeli.w r3, 128(r19)
001100  67c85900  storeli.w r5, 132(r19)
001104  e788b900  storeli.w r11, 136(r19)
001108  e7c84901  storeli.w r20, 140(r19)
00110c  67896901  storeli.w r22, 144(r19)
001110  67c97901  storeli.w r23, 148(r19)
001114  e7898901  storeli.w r24, 152(r19)
001118  e7c99901  storeli.w r25, 156(r19)
00111c  e3814901  loadli.w r3,  160(r19)
001120  e3c24901  loadli.w r5,  164(r19)
001124  e3855901  loadli.w r11,  168(r19)
001128  63ca5901  loadli.w r20,  172(r19)
00112c  638b6901  loadli.w r22,  176(r19)
001130  e3cb6901  loadli.w r23,  180(r19)
001134  638c7901  loadli.w r24,  184(r19)
001138  e3cc7901  loadli.w r25,  188(r19)
00113c  8f810100  exp.f.rn r3, r3
001140  8f820200  exp.f.rn r5, r5
001144  8f850500  exp.f.rn r11, r11
001148  0f0a0a00  exp.f.rn r20, r20
00114c  0f0b0b00  exp.f.rn r22, r22
001150  8f8b0b00  exp.f.rn r23, r23
001154  0f0c0c00  exp.f.rn r24, r24
001158  8f8c0c00  exp.f.rn r25, r25
00115c  678a3900  storeli.w r3, 160(r19)
001160  67ca5900  storeli.w r5, 164(r19)
001164  e78ab900  storeli.w r11, 168(r19)
001168  e7ca4901  storeli.w r20, 172(r19)
00116c  678b6901  storeli.w r22, 176(r19)
001170  67cb7901  storeli.w r23, 180(r19)
001174  e78b8901  storeli.w r24, 184(r19)
001178  e7cb9901  storeli.w r25, 188(r19)
00117c  e3818901  loadli.w r3,  192(r19)
001180  e3c28901  loadli.w r5,  196(r19)
001184  e3859901  loadli.w r11,  200(r19)
001188  63ca9901  loadli.w r20,  204(r19)
00118c  638ba901  loadli.w r22,  208(r19)
001190  e3cba901  loadli.w r23,  212(r19)
001194  638cb901  loadli.w r24,  216(r19)
001198  e3ccb901  loadli.w r25,  220(r19)
00119c  8f810100  exp.f.rn r3, r3
0011a0  8f820200  exp.f.rn r5, r5
0011a4  8f850500  exp.f.rn r11, r11
0011a8  0f0a0a00  exp.f.rn r20, r20
0011ac  0f0b0b00  exp.f.rn r22, r22
0011b0  8f8b0b00  exp.f.rn r23, r23
0011b4  0f0c0c00  exp.f.rn r24, r24
0011b8  8f8c0c00  exp.f.rn r25, r25
0011bc  678c3900  storeli.w r3, 192(r19)
0011c0  67cc5900  storeli.w r5, 196(r19)
0011c4  e78cb900  storeli.w r11, 200(r19)
0011c8  e7cc4901  storeli.w r20, 204(r19)
0011cc  678d6901  storeli.w r22, 208(r19)
0011d0  67cd7901  storeli.w r23, 212(r19)
0011d4  e78d8901  storeli.w r24, 216(r19)
0011d8  e7cd9901  storeli.w r25, 220(r19)
0011dc  e381c901  loadli.w r3,  224(r19)
0011e0  e3c2c901  loadli.w r5,  228(r19)
0011e4  e385d901  loadli.w r11,  232(r19)
0011e8  63cad901  loadli.w r20,  236(r19)
0011ec  638be901  loadli.w r22,  240(r19)
0011f0  e3cbe901  loadli.w r23,  244(r19)
0011f4  638cf901  loadli.w r24,  248(r19)
0011f8  e3ccf901  loadli.w r25,  252(r19)
0011fc  8f810100  exp.f.rn r3, r3
001200  8f820200  exp.f.rn r5, r5
001204  8f850500  exp.f.rn r11, r11
001208  0f0a0a00  exp.f.rn r20, r20
00120c  0f0b0b00  exp.f.rn r22, r22
001210  8f8b0b00  exp.f.rn r23, r23
001214  0f0c0c00  exp.f.rn r24, r24
001218  8f8c0c00  exp.f.rn r25, r25
00121c  678e3900  storeli.w r3, 224(r19)
001220  67ce5900  storeli.w r5, 228(r19)
001224  e78eb900  storeli.w r11, 232(r19)
001228  e7ce4901  storeli.w r20, 236(r19)
00122c  678f6901  storeli.w r22, 240(r19)
001230  67cf7901  storeli.w r23, 244(r19)
001234  e78f8901  storeli.w r24, 248(r19)
001238  e7cf9901  storeli.w r25, 252(r19)
00123c  00a00000  mfence { lm }
001240  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001244  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
001248  9f018fdd  addli r3, r30, -4416
00124c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001250  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
001254  9f010fd8  addli r3, r30, -5120
001258  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
00125c  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
001260  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
001264  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001268  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
00126c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001270  9f010fcf  addli r3, r30, -6272
001274  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001278  9f018fd8  addli r3, r30, -5056
00127c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001280  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001284  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001288  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
00128c  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
001290  9f018fd9  addli r3, r30, -4928
001294  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001298  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
00129c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0012a0  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0012a4  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0012a8  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0012ac  9f018fda  addli r3, r30, -4800
0012b0  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0012b4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0012b8  00a00000  mfence { lm }
0012bc  e3810900  loadli.w r3,  0(r19)
0012c0  e3c20900  loadli.w r5,  4(r19)
0012c4  e3851900  loadli.w r11,  8(r19)
0012c8  63ca1900  loadli.w r20,  12(r19)
0012cc  638b2900  loadli.w r22,  16(r19)
0012d0  e3cb2900  loadli.w r23,  20(r19)
0012d4  638c3900  loadli.w r24,  24(r19)
0012d8  e3cc3900  loadli.w r25,  28(r19)
0012dc  8f810100  exp.f.rn r3, r3
0012e0  8f820200  exp.f.rn r5, r5
0012e4  8f850500  exp.f.rn r11, r11
0012e8  0f0a0a00  exp.f.rn r20, r20
0012ec  0f0b0b00  exp.f.rn r22, r22
0012f0  8f8b0b00  exp.f.rn r23, r23
0012f4  0f0c0c00  exp.f.rn r24, r24
0012f8  8f8c0c00  exp.f.rn r25, r25
0012fc  67803900  storeli.w r3, 0(r19)
001300  67c05900  storeli.w r5, 4(r19)
001304  e780b900  storeli.w r11, 8(r19)
001308  e7c04901  storeli.w r20, 12(r19)
00130c  67816901  storeli.w r22, 16(r19)
001310  67c17901  storeli.w r23, 20(r19)
001314  e7818901  storeli.w r24, 24(r19)
001318  e7c19901  storeli.w r25, 28(r19)
00131c  e3814900  loadli.w r3,  32(r19)
001320  e3c24900  loadli.w r5,  36(r19)
001324  e3855900  loadli.w r11,  40(r19)
001328  63ca5900  loadli.w r20,  44(r19)
00132c  638b6900  loadli.w r22,  48(r19)
001330  e3cb6900  loadli.w r23,  52(r19)
001334  638c7900  loadli.w r24,  56(r19)
001338  e3cc7900  loadli.w r25,  60(r19)
00133c  8f810100  exp.f.rn r3, r3
001340  8f820200  exp.f.rn r5, r5
001344  8f850500  exp.f.rn r11, r11
001348  0f0a0a00  exp.f.rn r20, r20
00134c  0f0b0b00  exp.f.rn r22, r22
001350  8f8b0b00  exp.f.rn r23, r23
001354  0f0c0c00  exp.f.rn r24, r24
001358  8f8c0c00  exp.f.rn r25, r25
00135c  67823900  storeli.w r3, 32(r19)
001360  67c25900  storeli.w r5, 36(r19)
001364  e782b900  storeli.w r11, 40(r19)
001368  e7c24901  storeli.w r20, 44(r19)
00136c  67836901  storeli.w r22, 48(r19)
001370  67c37901  storeli.w r23, 52(r19)
001374  e7838901  storeli.w r24, 56(r19)
001378  e7c39901  storeli.w r25, 60(r19)
00137c  e3818900  loadli.w r3,  64(r19)
001380  e3c28900  loadli.w r5,  68(r19)
001384  e3859900  loadli.w r11,  72(r19)
001388  63ca9900  loadli.w r20,  76(r19)
00138c  638ba900  loadli.w r22,  80(r19)
001390  e3cba900  loadli.w r23,  84(r19)
001394  638cb900  loadli.w r24,  88(r19)
001398  e3ccb900  loadli.w r25,  92(r19)
00139c  8f810100  exp.f.rn r3, r3
0013a0  8f820200  exp.f.rn r5, r5
0013a4  8f850500  exp.f.rn r11, r11
0013a8  0f0a0a00  exp.f.rn r20, r20
0013ac  0f0b0b00  exp.f.rn r22, r22
0013b0  8f8b0b00  exp.f.rn r23, r23
0013b4  0f0c0c00  exp.f.rn r24, r24
0013b8  8f8c0c00  exp.f.rn r25, r25
0013bc  67843900  storeli.w r3, 64(r19)
0013c0  67c45900  storeli.w r5, 68(r19)
0013c4  e784b900  storeli.w r11, 72(r19)
0013c8  e7c44901  storeli.w r20, 76(r19)
0013cc  67856901  storeli.w r22, 80(r19)
0013d0  67c57901  storeli.w r23, 84(r19)
0013d4  e7858901  storeli.w r24, 88(r19)
0013d8  e7c59901  storeli.w r25, 92(r19)
0013dc  e381c900  loadli.w r3,  96(r19)
0013e0  e3c2c900  loadli.w r5,  100(r19)
0013e4  e385d900  loadli.w r11,  104(r19)
0013e8  63cad900  loadli.w r20,  108(r19)
0013ec  638be900  loadli.w r22,  112(r19)
0013f0  e3cbe900  loadli.w r23,  116(r19)
0013f4  638cf900  loadli.w r24,  120(r19)
0013f8  e3ccf900  loadli.w r25,  124(r19)
0013fc  8f810100  exp.f.rn r3, r3
001400  8f820200  exp.f.rn r5, r5
001404  8f850500  exp.f.rn r11, r11
001408  0f0a0a00  exp.f.rn r20, r20
00140c  0f0b0b00  exp.f.rn r22, r22
001410  8f8b0b00  exp.f.rn r23, r23
001414  0f0c0c00  exp.f.rn r24, r24
001418  8f8c0c00  exp.f.rn r25, r25
00141c  67863900  storeli.w r3, 96(r19)
001420  67c65900  storeli.w r5, 100(r19)
001424  e786b900  storeli.w r11, 104(r19)
001428  e7c64901  storeli.w r20, 108(r19)
00142c  67876901  storeli.w r22, 112(r19)
001430  67c77901  storeli.w r23, 116(r19)
001434  e7878901  storeli.w r24, 120(r19)
001438  e7c79901  storeli.w r25, 124(r19)
00143c  e3810901  loadli.w r3,  128(r19)
001440  e3c20901  loadli.w r5,  132(r19)
001444  e3851901  loadli.w r11,  136(r19)
001448  63ca1901  loadli.w r20,  140(r19)
00144c  638b2901  loadli.w r22,  144(r19)
001450  e3cb2901  loadli.w r23,  148(r19)
001454  638c3901  loadli.w r24,  152(r19)
001458  e3cc3901  loadli.w r25,  156(r19)
00145c  8f810100  exp.f.rn r3, r3
001460  8f820200  exp.f.rn r5, r5
001464  8f850500  exp.f.rn r11, r11
001468  0f0a0a00  exp.f.rn r20, r20
00146c  0f0b0b00  exp.f.rn r22, r22
001470  8f8b0b00  exp.f.rn r23, r23
001474  0f0c0c00  exp.f.rn r24, r24
001478  8f8c0c00  exp.f.rn r25, r25
00147c  67883900  storeli.w r3, 128(r19)
001480  67c85900  storeli.w r5, 132(r19)
001484  e788b900  storeli.w r11, 136(r19)
001488  e7c84901  storeli.w r20, 140(r19)
00148c  67896901  storeli.w r22, 144(r19)
001490  67c97901  storeli.w r23, 148(r19)
001494  e7898901  storeli.w r24, 152(r19)
001498  e7c99901  storeli.w r25, 156(r19)
00149c  e3814901  loadli.w r3,  160(r19)
0014a0  e3c24901  loadli.w r5,  164(r19)
0014a4  e3855901  loadli.w r11,  168(r19)
0014a8  63ca5901  loadli.w r20,  172(r19)
0014ac  638b6901  loadli.w r22,  176(r19)
0014b0  e3cb6901  loadli.w r23,  180(r19)
0014b4  638c7901  loadli.w r24,  184(r19)
0014b8  e3cc7901  loadli.w r25,  188(r19)
0014bc  8f810100  exp.f.rn r3, r3
0014c0  8f820200  exp.f.rn r5, r5
0014c4  8f850500  exp.f.rn r11, r11
0014c8  0f0a0a00  exp.f.rn r20, r20
0014cc  0f0b0b00  exp.f.rn r22, r22
0014d0  8f8b0b00  exp.f.rn r23, r23
0014d4  0f0c0c00  exp.f.rn r24, r24
0014d8  8f8c0c00  exp.f.rn r25, r25
0014dc  678a3900  storeli.w r3, 160(r19)
0014e0  67ca5900  storeli.w r5, 164(r19)
0014e4  e78ab900  storeli.w r11, 168(r19)
0014e8  e7ca4901  storeli.w r20, 172(r19)
0014ec  678b6901  storeli.w r22, 176(r19)
0014f0  67cb7901  storeli.w r23, 180(r19)
0014f4  e78b8901  storeli.w r24, 184(r19)
0014f8  e7cb9901  storeli.w r25, 188(r19)
0014fc  e3818901  loadli.w r3,  192(r19)
001500  e3c28901  loadli.w r5,  196(r19)
001504  e3859901  loadli.w r11,  200(r19)
001508  63ca9901  loadli.w r20,  204(r19)
00150c  638ba901  loadli.w r22,  208(r19)
001510  e3cba901  loadli.w r23,  212(r19)
001514  638cb901  loadli.w r24,  216(r19)
001518  e3ccb901  loadli.w r25,  220(r19)
00151c  8f810100  exp.f.rn r3, r3
001520  8f820200  exp.f.rn r5, r5
001524  8f850500  exp.f.rn r11, r11
001528  0f0a0a00  exp.f.rn r20, r20
00152c  0f0b0b00  exp.f.rn r22, r22
001530  8f8b0b00  exp.f.rn r23, r23
001534  0f0c0c00  exp.f.rn r24, r24
001538  8f8c0c00  exp.f.rn r25, r25
00153c  678c3900  storeli.w r3, 192(r19)
001540  67cc5900  storeli.w r5, 196(r19)
001544  e78cb900  storeli.w r11, 200(r19)
001548  e7cc4901  storeli.w r20, 204(r19)
00154c  678d6901  storeli.w r22, 208(r19)
001550  67cd7901  storeli.w r23, 212(r19)
001554  e78d8901  storeli.w r24, 216(r19)
001558  e7cd9901  storeli.w r25, 220(r19)
00155c  e381c901  loadli.w r3,  224(r19)
001560  e3c2c901  loadli.w r5,  228(r19)
001564  e385d901  loadli.w r11,  232(r19)
001568  63cad901  loadli.w r20,  236(r19)
00156c  638be901  loadli.w r22,  240(r19)
001570  e3cbe901  loadli.w r23,  244(r19)
001574  638cf901  loadli.w r24,  248(r19)
001578  e3ccf901  loadli.w r25,  252(r19)
00157c  8f810100  exp.f.rn r3, r3
001580  8f820200  exp.f.rn r5, r5
001584  8f850500  exp.f.rn r11, r11
001588  0f0a0a00  exp.f.rn r20, r20
00158c  0f0b0b00  exp.f.rn r22, r22
001590  8f8b0b00  exp.f.rn r23, r23
001594  0f0c0c00  exp.f.rn r24, r24
001598  8f8c0c00  exp.f.rn r25, r25
00159c  678e3900  storeli.w r3, 224(r19)
0015a0  67ce5900  storeli.w r5, 228(r19)
0015a4  e78eb900  storeli.w r11, 232(r19)
0015a8  e7ce4901  storeli.w r20, 236(r19)
0015ac  678f6901  storeli.w r22, 240(r19)
0015b0  67cf7901  storeli.w r23, 244(r19)
0015b4  e78f8901  storeli.w r24, 248(r19)
0015b8  e7cf9901  storeli.w r25, 252(r19)
0015bc  00a00000  mfence { lm }
0015c0  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
0015c4  9f018fda  addli r3, r30, -4800
0015c8  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0015cc  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0015d0  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
0015d4  9f018fd6  addli r3, r30, -5312
0015d8  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
0015dc  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
0015e0  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
0015e4  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0015e8  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
0015ec  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0015f0  9f018fdc  addli r3, r30, -4544
0015f4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0015f8  9f018fdb  addli r3, r30, -4672
0015fc  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001600  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001604  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001608  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00160c  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
001610  9f010fdc  addli r3, r30, -4608
001614  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001618  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
00161c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001620  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001624  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001628  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
00162c  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001630  00a00000  mfence { lm }
001634  e3810900  loadli.w r3,  0(r19)
001638  e3c20900  loadli.w r5,  4(r19)
00163c  e3851900  loadli.w r11,  8(r19)
001640  63ca1900  loadli.w r20,  12(r19)
001644  638b2900  loadli.w r22,  16(r19)
001648  e3cb2900  loadli.w r23,  20(r19)
00164c  638c3900  loadli.w r24,  24(r19)
001650  e3cc3900  loadli.w r25,  28(r19)
001654  8f810100  exp.f.rn r3, r3
001658  8f820200  exp.f.rn r5, r5
00165c  8f850500  exp.f.rn r11, r11
001660  0f0a0a00  exp.f.rn r20, r20
001664  0f0b0b00  exp.f.rn r22, r22
001668  8f8b0b00  exp.f.rn r23, r23
00166c  0f0c0c00  exp.f.rn r24, r24
001670  8f8c0c00  exp.f.rn r25, r25
001674  67803900  storeli.w r3, 0(r19)
001678  67c05900  storeli.w r5, 4(r19)
00167c  e780b900  storeli.w r11, 8(r19)
001680  e7c04901  storeli.w r20, 12(r19)
001684  67816901  storeli.w r22, 16(r19)
001688  67c17901  storeli.w r23, 20(r19)
00168c  e7818901  storeli.w r24, 24(r19)
001690  e7c19901  storeli.w r25, 28(r19)
001694  e3814900  loadli.w r3,  32(r19)
001698  e3c24900  loadli.w r5,  36(r19)
00169c  e3855900  loadli.w r11,  40(r19)
0016a0  63ca5900  loadli.w r20,  44(r19)
0016a4  638b6900  loadli.w r22,  48(r19)
0016a8  e3cb6900  loadli.w r23,  52(r19)
0016ac  638c7900  loadli.w r24,  56(r19)
0016b0  e3cc7900  loadli.w r25,  60(r19)
0016b4  8f810100  exp.f.rn r3, r3
0016b8  8f820200  exp.f.rn r5, r5
0016bc  8f850500  exp.f.rn r11, r11
0016c0  0f0a0a00  exp.f.rn r20, r20
0016c4  0f0b0b00  exp.f.rn r22, r22
0016c8  8f8b0b00  exp.f.rn r23, r23
0016cc  0f0c0c00  exp.f.rn r24, r24
0016d0  8f8c0c00  exp.f.rn r25, r25
0016d4  67823900  storeli.w r3, 32(r19)
0016d8  67c25900  storeli.w r5, 36(r19)
0016dc  e782b900  storeli.w r11, 40(r19)
0016e0  e7c24901  storeli.w r20, 44(r19)
0016e4  67836901  storeli.w r22, 48(r19)
0016e8  67c37901  storeli.w r23, 52(r19)
0016ec  e7838901  storeli.w r24, 56(r19)
0016f0  e7c39901  storeli.w r25, 60(r19)
0016f4  e3818900  loadli.w r3,  64(r19)
0016f8  e3c28900  loadli.w r5,  68(r19)
0016fc  e3859900  loadli.w r11,  72(r19)
001700  63ca9900  loadli.w r20,  76(r19)
001704  638ba900  loadli.w r22,  80(r19)
001708  e3cba900  loadli.w r23,  84(r19)
00170c  638cb900  loadli.w r24,  88(r19)
001710  e3ccb900  loadli.w r25,  92(r19)
001714  8f810100  exp.f.rn r3, r3
001718  8f820200  exp.f.rn r5, r5
00171c  8f850500  exp.f.rn r11, r11
001720  0f0a0a00  exp.f.rn r20, r20
001724  0f0b0b00  exp.f.rn r22, r22
001728  8f8b0b00  exp.f.rn r23, r23
00172c  0f0c0c00  exp.f.rn r24, r24
001730  8f8c0c00  exp.f.rn r25, r25
001734  67843900  storeli.w r3, 64(r19)
001738  67c45900  storeli.w r5, 68(r19)
00173c  e784b900  storeli.w r11, 72(r19)
001740  e7c44901  storeli.w r20, 76(r19)
001744  67856901  storeli.w r22, 80(r19)
001748  67c57901  storeli.w r23, 84(r19)
00174c  e7858901  storeli.w r24, 88(r19)
001750  e7c59901  storeli.w r25, 92(r19)
001754  e381c900  loadli.w r3,  96(r19)
001758  e3c2c900  loadli.w r5,  100(r19)
00175c  e385d900  loadli.w r11,  104(r19)
001760  63cad900  loadli.w r20,  108(r19)
001764  638be900  loadli.w r22,  112(r19)
001768  e3cbe900  loadli.w r23,  116(r19)
00176c  638cf900  loadli.w r24,  120(r19)
001770  e3ccf900  loadli.w r25,  124(r19)
001774  8f810100  exp.f.rn r3, r3
001778  8f820200  exp.f.rn r5, r5
00177c  8f850500  exp.f.rn r11, r11
001780  0f0a0a00  exp.f.rn r20, r20
001784  0f0b0b00  exp.f.rn r22, r22
001788  8f8b0b00  exp.f.rn r23, r23
00178c  0f0c0c00  exp.f.rn r24, r24
001790  8f8c0c00  exp.f.rn r25, r25
001794  67863900  storeli.w r3, 96(r19)
001798  67c65900  storeli.w r5, 100(r19)
00179c  e786b900  storeli.w r11, 104(r19)
0017a0  e7c64901  storeli.w r20, 108(r19)
0017a4  67876901  storeli.w r22, 112(r19)
0017a8  67c77901  storeli.w r23, 116(r19)
0017ac  e7878901  storeli.w r24, 120(r19)
0017b0  e7c79901  storeli.w r25, 124(r19)
0017b4  e3810901  loadli.w r3,  128(r19)
0017b8  e3c20901  loadli.w r5,  132(r19)
0017bc  e3851901  loadli.w r11,  136(r19)
0017c0  63ca1901  loadli.w r20,  140(r19)
0017c4  638b2901  loadli.w r22,  144(r19)
0017c8  e3cb2901  loadli.w r23,  148(r19)
0017cc  638c3901  loadli.w r24,  152(r19)
0017d0  e3cc3901  loadli.w r25,  156(r19)
0017d4  8f810100  exp.f.rn r3, r3
0017d8  8f820200  exp.f.rn r5, r5
0017dc  8f850500  exp.f.rn r11, r11
0017e0  0f0a0a00  exp.f.rn r20, r20
0017e4  0f0b0b00  exp.f.rn r22, r22
0017e8  8f8b0b00  exp.f.rn r23, r23
0017ec  0f0c0c00  exp.f.rn r24, r24
0017f0  8f8c0c00  exp.f.rn r25, r25
0017f4  67883900  storeli.w r3, 128(r19)
0017f8  67c85900  storeli.w r5, 132(r19)
0017fc  e788b900  storeli.w r11, 136(r19)
001800  e7c84901  storeli.w r20, 140(r19)
001804  67896901  storeli.w r22, 144(r19)
001808  67c97901  storeli.w r23, 148(r19)
00180c  e7898901  storeli.w r24, 152(r19)
001810  e7c99901  storeli.w r25, 156(r19)
001814  e3814901  loadli.w r3,  160(r19)
001818  e3c24901  loadli.w r5,  164(r19)
00181c  e3855901  loadli.w r11,  168(r19)
001820  63ca5901  loadli.w r20,  172(r19)
001824  638b6901  loadli.w r22,  176(r19)
001828  e3cb6901  loadli.w r23,  180(r19)
00182c  638c7901  loadli.w r24,  184(r19)
001830  e3cc7901  loadli.w r25,  188(r19)
001834  8f810100  exp.f.rn r3, r3
001838  8f820200  exp.f.rn r5, r5
00183c  8f850500  exp.f.rn r11, r11
001840  0f0a0a00  exp.f.rn r20, r20
001844  0f0b0b00  exp.f.rn r22, r22
001848  8f8b0b00  exp.f.rn r23, r23
00184c  0f0c0c00  exp.f.rn r24, r24
001850  8f8c0c00  exp.f.rn r25, r25
001854  678a3900  storeli.w r3, 160(r19)
001858  67ca5900  storeli.w r5, 164(r19)
00185c  e78ab900  storeli.w r11, 168(r19)
001860  e7ca4901  storeli.w r20, 172(r19)
001864  678b6901  storeli.w r22, 176(r19)
001868  67cb7901  storeli.w r23, 180(r19)
00186c  e78b8901  storeli.w r24, 184(r19)
001870  e7cb9901  storeli.w r25, 188(r19)
001874  e3818901  loadli.w r3,  192(r19)
001878  e3c28901  loadli.w r5,  196(r19)
00187c  e3859901  loadli.w r11,  200(r19)
001880  63ca9901  loadli.w r20,  204(r19)
001884  638ba901  loadli.w r22,  208(r19)
001888  e3cba901  loadli.w r23,  212(r19)
00188c  638cb901  loadli.w r24,  216(r19)
001890  e3ccb901  loadli.w r25,  220(r19)
001894  8f810100  exp.f.rn r3, r3
001898  8f820200  exp.f.rn r5, r5
00189c  8f850500  exp.f.rn r11, r11
0018a0  0f0a0a00  exp.f.rn r20, r20
0018a4  0f0b0b00  exp.f.rn r22, r22
0018a8  8f8b0b00  exp.f.rn r23, r23
0018ac  0f0c0c00  exp.f.rn r24, r24
0018b0  8f8c0c00  exp.f.rn r25, r25
0018b4  678c3900  storeli.w r3, 192(r19)
0018b8  67cc5900  storeli.w r5, 196(r19)
0018bc  e78cb900  storeli.w r11, 200(r19)
0018c0  e7cc4901  storeli.w r20, 204(r19)
0018c4  678d6901  storeli.w r22, 208(r19)
0018c8  67cd7901  storeli.w r23, 212(r19)
0018cc  e78d8901  storeli.w r24, 216(r19)
0018d0  e7cd9901  storeli.w r25, 220(r19)
0018d4  e381c901  loadli.w r3,  224(r19)
0018d8  e3c2c901  loadli.w r5,  228(r19)
0018dc  e385d901  loadli.w r11,  232(r19)
0018e0  63cad901  loadli.w r20,  236(r19)
0018e4  638be901  loadli.w r22,  240(r19)
0018e8  e3cbe901  loadli.w r23,  244(r19)
0018ec  638cf901  loadli.w r24,  248(r19)
0018f0  e3ccf901  loadli.w r25,  252(r19)
0018f4  8f810100  exp.f.rn r3, r3
0018f8  8f820200  exp.f.rn r5, r5
0018fc  8f850500  exp.f.rn r11, r11
001900  0f0a0a00  exp.f.rn r20, r20
001904  0f0b0b00  exp.f.rn r22, r22
001908  8f8b0b00  exp.f.rn r23, r23
00190c  0f0c0c00  exp.f.rn r24, r24
001910  8f8c0c00  exp.f.rn r25, r25
001914  678e3900  storeli.w r3, 224(r19)
001918  67ce5900  storeli.w r5, 228(r19)
00191c  e78eb900  storeli.w r11, 232(r19)
001920  e7ce4901  storeli.w r20, 236(r19)
001924  678f6901  storeli.w r22, 240(r19)
001928  67cf7901  storeli.w r23, 244(r19)
00192c  e78f8901  storeli.w r24, 248(r19)
001930  e7cf9901  storeli.w r25, 252(r19)
001934  00a00000  mfence { lm }
001938  92902002  vadd.f.mz.rn vr1{mr1}, r1, vr2
00193c  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
001940  9f018fdc  addli r3, r30, -4544
001944  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
001948  9f018fd3  addli r3, r30, -5696
00194c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001950  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
001954  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
001958  42118fe3  vload_mask16.mz vr2{mr1}, 1984(r30)
00195c  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001960  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
001964  9f018fcf  addli r3, r30, -6208
001968  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
00196c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001970  9f018fd7  addli r3, r30, -5184
001974  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001978  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
00197c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001980  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001984  9f010fd9  addli r3, r30, -4992
001988  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
00198c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001990  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001994  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001998  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
00199c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0019a0  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
0019a4  9f010fda  addli r3, r30, -4864
0019a8  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0019ac  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0019b0  00a00000  mfence { lm }
0019b4  e3810900  loadli.w r3,  0(r19)
0019b8  e3c20900  loadli.w r5,  4(r19)
0019bc  e3851900  loadli.w r11,  8(r19)
0019c0  63ca1900  loadli.w r20,  12(r19)
0019c4  638b2900  loadli.w r22,  16(r19)
0019c8  e3cb2900  loadli.w r23,  20(r19)
0019cc  638c3900  loadli.w r24,  24(r19)
0019d0  e3cc3900  loadli.w r25,  28(r19)
0019d4  8f810100  exp.f.rn r3, r3
0019d8  8f820200  exp.f.rn r5, r5
0019dc  8f850500  exp.f.rn r11, r11
0019e0  0f0a0a00  exp.f.rn r20, r20
0019e4  0f0b0b00  exp.f.rn r22, r22
0019e8  8f8b0b00  exp.f.rn r23, r23
0019ec  0f0c0c00  exp.f.rn r24, r24
0019f0  8f8c0c00  exp.f.rn r25, r25
0019f4  67803900  storeli.w r3, 0(r19)
0019f8  67c05900  storeli.w r5, 4(r19)
0019fc  e780b900  storeli.w r11, 8(r19)
001a00  e7c04901  storeli.w r20, 12(r19)
001a04  67816901  storeli.w r22, 16(r19)
001a08  67c17901  storeli.w r23, 20(r19)
001a0c  e7818901  storeli.w r24, 24(r19)
001a10  e7c19901  storeli.w r25, 28(r19)
001a14  e3814900  loadli.w r3,  32(r19)
001a18  e3c24900  loadli.w r5,  36(r19)
001a1c  e3855900  loadli.w r11,  40(r19)
001a20  63ca5900  loadli.w r20,  44(r19)
001a24  638b6900  loadli.w r22,  48(r19)
001a28  e3cb6900  loadli.w r23,  52(r19)
001a2c  638c7900  loadli.w r24,  56(r19)
001a30  e3cc7900  loadli.w r25,  60(r19)
001a34  8f810100  exp.f.rn r3, r3
001a38  8f820200  exp.f.rn r5, r5
001a3c  8f850500  exp.f.rn r11, r11
001a40  0f0a0a00  exp.f.rn r20, r20
001a44  0f0b0b00  exp.f.rn r22, r22
001a48  8f8b0b00  exp.f.rn r23, r23
001a4c  0f0c0c00  exp.f.rn r24, r24
001a50  8f8c0c00  exp.f.rn r25, r25
001a54  67823900  storeli.w r3, 32(r19)
001a58  67c25900  storeli.w r5, 36(r19)
001a5c  e782b900  storeli.w r11, 40(r19)
001a60  e7c24901  storeli.w r20, 44(r19)
001a64  67836901  storeli.w r22, 48(r19)
001a68  67c37901  storeli.w r23, 52(r19)
001a6c  e7838901  storeli.w r24, 56(r19)
001a70  e7c39901  storeli.w r25, 60(r19)
001a74  e3818900  loadli.w r3,  64(r19)
001a78  e3c28900  loadli.w r5,  68(r19)
001a7c  e3859900  loadli.w r11,  72(r19)
001a80  63ca9900  loadli.w r20,  76(r19)
001a84  638ba900  loadli.w r22,  80(r19)
001a88  e3cba900  loadli.w r23,  84(r19)
001a8c  638cb900  loadli.w r24,  88(r19)
001a90  e3ccb900  loadli.w r25,  92(r19)
001a94  8f810100  exp.f.rn r3, r3
001a98  8f820200  exp.f.rn r5, r5
001a9c  8f850500  exp.f.rn r11, r11
001aa0  0f0a0a00  exp.f.rn r20, r20
001aa4  0f0b0b00  exp.f.rn r22, r22
001aa8  8f8b0b00  exp.f.rn r23, r23
001aac  0f0c0c00  exp.f.rn r24, r24
001ab0  8f8c0c00  exp.f.rn r25, r25
001ab4  67843900  storeli.w r3, 64(r19)
001ab8  67c45900  storeli.w r5, 68(r19)
001abc  e784b900  storeli.w r11, 72(r19)
001ac0  e7c44901  storeli.w r20, 76(r19)
001ac4  67856901  storeli.w r22, 80(r19)
001ac8  67c57901  storeli.w r23, 84(r19)
001acc  e7858901  storeli.w r24, 88(r19)
001ad0  e7c59901  storeli.w r25, 92(r19)
001ad4  e381c900  loadli.w r3,  96(r19)
001ad8  e3c2c900  loadli.w r5,  100(r19)
001adc  e385d900  loadli.w r11,  104(r19)
001ae0  63cad900  loadli.w r20,  108(r19)
001ae4  638be900  loadli.w r22,  112(r19)
001ae8  e3cbe900  loadli.w r23,  116(r19)
001aec  638cf900  loadli.w r24,  120(r19)
001af0  e3ccf900  loadli.w r25,  124(r19)
001af4  8f810100  exp.f.rn r3, r3
001af8  8f820200  exp.f.rn r5, r5
001afc  8f850500  exp.f.rn r11, r11
001b00  0f0a0a00  exp.f.rn r20, r20
001b04  0f0b0b00  exp.f.rn r22, r22
001b08  8f8b0b00  exp.f.rn r23, r23
001b0c  0f0c0c00  exp.f.rn r24, r24
001b10  8f8c0c00  exp.f.rn r25, r25
001b14  67863900  storeli.w r3, 96(r19)
001b18  67c65900  storeli.w r5, 100(r19)
001b1c  e786b900  storeli.w r11, 104(r19)
001b20  e7c64901  storeli.w r20, 108(r19)
001b24  67876901  storeli.w r22, 112(r19)
001b28  67c77901  storeli.w r23, 116(r19)
001b2c  e7878901  storeli.w r24, 120(r19)
001b30  e7c79901  storeli.w r25, 124(r19)
001b34  e3810901  loadli.w r3,  128(r19)
001b38  e3c20901  loadli.w r5,  132(r19)
001b3c  e3851901  loadli.w r11,  136(r19)
001b40  63ca1901  loadli.w r20,  140(r19)
001b44  638b2901  loadli.w r22,  144(r19)
001b48  e3cb2901  loadli.w r23,  148(r19)
001b4c  638c3901  loadli.w r24,  152(r19)
001b50  e3cc3901  loadli.w r25,  156(r19)
001b54  8f810100  exp.f.rn r3, r3
001b58  8f820200  exp.f.rn r5, r5
001b5c  8f850500  exp.f.rn r11, r11
001b60  0f0a0a00  exp.f.rn r20, r20
001b64  0f0b0b00  exp.f.rn r22, r22
001b68  8f8b0b00  exp.f.rn r23, r23
001b6c  0f0c0c00  exp.f.rn r24, r24
001b70  8f8c0c00  exp.f.rn r25, r25
001b74  67883900  storeli.w r3, 128(r19)
001b78  67c85900  storeli.w r5, 132(r19)
001b7c  e788b900  storeli.w r11, 136(r19)
001b80  e7c84901  storeli.w r20, 140(r19)
001b84  67896901  storeli.w r22, 144(r19)
001b88  67c97901  storeli.w r23, 148(r19)
001b8c  e7898901  storeli.w r24, 152(r19)
001b90  e7c99901  storeli.w r25, 156(r19)
001b94  e3814901  loadli.w r3,  160(r19)
001b98  e3c24901  loadli.w r5,  164(r19)
001b9c  e3855901  loadli.w r11,  168(r19)
001ba0  63ca5901  loadli.w r20,  172(r19)
001ba4  638b6901  loadli.w r22,  176(r19)
001ba8  e3cb6901  loadli.w r23,  180(r19)
001bac  638c7901  loadli.w r24,  184(r19)
001bb0  e3cc7901  loadli.w r25,  188(r19)
001bb4  8f810100  exp.f.rn r3, r3
001bb8  8f820200  exp.f.rn r5, r5
001bbc  8f850500  exp.f.rn r11, r11
001bc0  0f0a0a00  exp.f.rn r20, r20
001bc4  0f0b0b00  exp.f.rn r22, r22
001bc8  8f8b0b00  exp.f.rn r23, r23
001bcc  0f0c0c00  exp.f.rn r24, r24
001bd0  8f8c0c00  exp.f.rn r25, r25
001bd4  678a3900  storeli.w r3, 160(r19)
001bd8  67ca5900  storeli.w r5, 164(r19)
001bdc  e78ab900  storeli.w r11, 168(r19)
001be0  e7ca4901  storeli.w r20, 172(r19)
001be4  678b6901  storeli.w r22, 176(r19)
001be8  67cb7901  storeli.w r23, 180(r19)
001bec  e78b8901  storeli.w r24, 184(r19)
001bf0  e7cb9901  storeli.w r25, 188(r19)
001bf4  e3818901  loadli.w r3,  192(r19)
001bf8  e3c28901  loadli.w r5,  196(r19)
001bfc  e3859901  loadli.w r11,  200(r19)
001c00  63ca9901  loadli.w r20,  204(r19)
001c04  638ba901  loadli.w r22,  208(r19)
001c08  e3cba901  loadli.w r23,  212(r19)
001c0c  638cb901  loadli.w r24,  216(r19)
001c10  e3ccb901  loadli.w r25,  220(r19)
001c14  8f810100  exp.f.rn r3, r3
001c18  8f820200  exp.f.rn r5, r5
001c1c  8f850500  exp.f.rn r11, r11
001c20  0f0a0a00  exp.f.rn r20, r20
001c24  0f0b0b00  exp.f.rn r22, r22
001c28  8f8b0b00  exp.f.rn r23, r23
001c2c  0f0c0c00  exp.f.rn r24, r24
001c30  8f8c0c00  exp.f.rn r25, r25
001c34  678c3900  storeli.w r3, 192(r19)
001c38  67cc5900  storeli.w r5, 196(r19)
001c3c  e78cb900  storeli.w r11, 200(r19)
001c40  e7cc4901  storeli.w r20, 204(r19)
001c44  678d6901  storeli.w r22, 208(r19)
001c48  67cd7901  storeli.w r23, 212(r19)
001c4c  e78d8901  storeli.w r24, 216(r19)
001c50  e7cd9901  storeli.w r25, 220(r19)
001c54  e381c901  loadli.w r3,  224(r19)
001c58  e3c2c901  loadli.w r5,  228(r19)
001c5c  e385d901  loadli.w r11,  232(r19)
001c60  63cad901  loadli.w r20,  236(r19)
001c64  638be901  loadli.w r22,  240(r19)
001c68  e3cbe901  loadli.w r23,  244(r19)
001c6c  638cf901  loadli.w r24,  248(r19)
001c70  e3ccf901  loadli.w r25,  252(r19)
001c74  8f810100  exp.f.rn r3, r3
001c78  8f820200  exp.f.rn r5, r5
001c7c  8f850500  exp.f.rn r11, r11
001c80  0f0a0a00  exp.f.rn r20, r20
001c84  0f0b0b00  exp.f.rn r22, r22
001c88  8f8b0b00  exp.f.rn r23, r23
001c8c  0f0c0c00  exp.f.rn r24, r24
001c90  8f8c0c00  exp.f.rn r25, r25
001c94  678e3900  storeli.w r3, 224(r19)
001c98  67ce5900  storeli.w r5, 228(r19)
001c9c  e78eb900  storeli.w r11, 232(r19)
001ca0  e7ce4901  storeli.w r20, 236(r19)
001ca4  678f6901  storeli.w r22, 240(r19)
001ca8  67cf7901  storeli.w r23, 244(r19)
001cac  e78f8901  storeli.w r24, 248(r19)
001cb0  e7cf9901  storeli.w r25, 252(r19)
001cb4  00a00000  mfence { lm }
001cb8  c2130fe2  vload_mask16.mz vr7{mr1}, 1792(r30)
001cbc  9f010fda  addli r3, r30, -4864
001cc0  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001cc4  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
001cc8  9f010fd0  addli r3, r30, -6144
001ccc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001cd0  c2148fe2  vload_mask16.mz vr9{mr1}, 1856(r30)
001cd4  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
001cd8  42118fe3  vload_mask16.mz vr2{mr1}, 1984(r30)
001cdc  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001ce0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001ce4  9f010fdb  addli r3, r30, -4736
001ce8  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001cec  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001cf0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001cf4  9f018fd0  addli r3, r30, -6080
001cf8  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001cfc  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d00  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001d04  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001d08  9f010fd3  addli r3, r30, -5760
001d0c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d10  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001d14  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
001d18  92905002  vadd.f.mz.rn vr1{mr1}, r1, vr5
001d1c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001d20  00a00000  mfence { lm }
001d24  e3810900  loadli.w r3,  0(r19)
001d28  e3c20900  loadli.w r5,  4(r19)
001d2c  e3851900  loadli.w r11,  8(r19)
001d30  63ca1900  loadli.w r20,  12(r19)
001d34  638b2900  loadli.w r22,  16(r19)
001d38  e3cb2900  loadli.w r23,  20(r19)
001d3c  638c3900  loadli.w r24,  24(r19)
001d40  e3cc3900  loadli.w r25,  28(r19)
001d44  8f810100  exp.f.rn r3, r3
001d48  8f820200  exp.f.rn r5, r5
001d4c  8f850500  exp.f.rn r11, r11
001d50  0f0a0a00  exp.f.rn r20, r20
001d54  0f0b0b00  exp.f.rn r22, r22
001d58  8f8b0b00  exp.f.rn r23, r23
001d5c  0f0c0c00  exp.f.rn r24, r24
001d60  8f8c0c00  exp.f.rn r25, r25
001d64  67803900  storeli.w r3, 0(r19)
001d68  67c05900  storeli.w r5, 4(r19)
001d6c  e780b900  storeli.w r11, 8(r19)
001d70  e7c04901  storeli.w r20, 12(r19)
001d74  67816901  storeli.w r22, 16(r19)
001d78  67c17901  storeli.w r23, 20(r19)
001d7c  e7818901  storeli.w r24, 24(r19)
001d80  e7c19901  storeli.w r25, 28(r19)
001d84  e3814900  loadli.w r3,  32(r19)
001d88  e3c24900  loadli.w r5,  36(r19)
001d8c  e3855900  loadli.w r11,  40(r19)
001d90  63ca5900  loadli.w r20,  44(r19)
001d94  638b6900  loadli.w r22,  48(r19)
001d98  e3cb6900  loadli.w r23,  52(r19)
001d9c  638c7900  loadli.w r24,  56(r19)
001da0  e3cc7900  loadli.w r25,  60(r19)
001da4  8f810100  exp.f.rn r3, r3
001da8  8f820200  exp.f.rn r5, r5
001dac  8f850500  exp.f.rn r11, r11
001db0  0f0a0a00  exp.f.rn r20, r20
001db4  0f0b0b00  exp.f.rn r22, r22
001db8  8f8b0b00  exp.f.rn r23, r23
001dbc  0f0c0c00  exp.f.rn r24, r24
001dc0  8f8c0c00  exp.f.rn r25, r25
001dc4  67823900  storeli.w r3, 32(r19)
001dc8  67c25900  storeli.w r5, 36(r19)
001dcc  e782b900  storeli.w r11, 40(r19)
001dd0  e7c24901  storeli.w r20, 44(r19)
001dd4  67836901  storeli.w r22, 48(r19)
001dd8  67c37901  storeli.w r23, 52(r19)
001ddc  e7838901  storeli.w r24, 56(r19)
001de0  e7c39901  storeli.w r25, 60(r19)
001de4  e3818900  loadli.w r3,  64(r19)
001de8  e3c28900  loadli.w r5,  68(r19)
001dec  e3859900  loadli.w r11,  72(r19)
001df0  63ca9900  loadli.w r20,  76(r19)
001df4  638ba900  loadli.w r22,  80(r19)
001df8  e3cba900  loadli.w r23,  84(r19)
001dfc  638cb900  loadli.w r24,  88(r19)
001e00  e3ccb900  loadli.w r25,  92(r19)
001e04  8f810100  exp.f.rn r3, r3
001e08  8f820200  exp.f.rn r5, r5
001e0c  8f850500  exp.f.rn r11, r11
001e10  0f0a0a00  exp.f.rn r20, r20
001e14  0f0b0b00  exp.f.rn r22, r22
001e18  8f8b0b00  exp.f.rn r23, r23
001e1c  0f0c0c00  exp.f.rn r24, r24
001e20  8f8c0c00  exp.f.rn r25, r25
001e24  67843900  storeli.w r3, 64(r19)
001e28  67c45900  storeli.w r5, 68(r19)
001e2c  e784b900  storeli.w r11, 72(r19)
001e30  e7c44901  storeli.w r20, 76(r19)
001e34  67856901  storeli.w r22, 80(r19)
001e38  67c57901  storeli.w r23, 84(r19)
001e3c  e7858901  storeli.w r24, 88(r19)
001e40  e7c59901  storeli.w r25, 92(r19)
001e44  e381c900  loadli.w r3,  96(r19)
001e48  e3c2c900  loadli.w r5,  100(r19)
001e4c  e385d900  loadli.w r11,  104(r19)
001e50  63cad900  loadli.w r20,  108(r19)
001e54  638be900  loadli.w r22,  112(r19)
001e58  e3cbe900  loadli.w r23,  116(r19)
001e5c  638cf900  loadli.w r24,  120(r19)
001e60  e3ccf900  loadli.w r25,  124(r19)
001e64  8f810100  exp.f.rn r3, r3
001e68  8f820200  exp.f.rn r5, r5
001e6c  8f850500  exp.f.rn r11, r11
001e70  0f0a0a00  exp.f.rn r20, r20
001e74  0f0b0b00  exp.f.rn r22, r22
001e78  8f8b0b00  exp.f.rn r23, r23
001e7c  0f0c0c00  exp.f.rn r24, r24
001e80  8f8c0c00  exp.f.rn r25, r25
001e84  67863900  storeli.w r3, 96(r19)
001e88  67c65900  storeli.w r5, 100(r19)
001e8c  e786b900  storeli.w r11, 104(r19)
001e90  e7c64901  storeli.w r20, 108(r19)
001e94  67876901  storeli.w r22, 112(r19)
001e98  67c77901  storeli.w r23, 116(r19)
001e9c  e7878901  storeli.w r24, 120(r19)
001ea0  e7c79901  storeli.w r25, 124(r19)
001ea4  e3810901  loadli.w r3,  128(r19)
001ea8  e3c20901  loadli.w r5,  132(r19)
001eac  e3851901  loadli.w r11,  136(r19)
001eb0  63ca1901  loadli.w r20,  140(r19)
001eb4  638b2901  loadli.w r22,  144(r19)
001eb8  e3cb2901  loadli.w r23,  148(r19)
001ebc  638c3901  loadli.w r24,  152(r19)
001ec0  e3cc3901  loadli.w r25,  156(r19)
001ec4  8f810100  exp.f.rn r3, r3
001ec8  8f820200  exp.f.rn r5, r5
001ecc  8f850500  exp.f.rn r11, r11
001ed0  0f0a0a00  exp.f.rn r20, r20
001ed4  0f0b0b00  exp.f.rn r22, r22
001ed8  8f8b0b00  exp.f.rn r23, r23
001edc  0f0c0c00  exp.f.rn r24, r24
001ee0  8f8c0c00  exp.f.rn r25, r25
001ee4  67883900  storeli.w r3, 128(r19)
001ee8  67c85900  storeli.w r5, 132(r19)
001eec  e788b900  storeli.w r11, 136(r19)
001ef0  e7c84901  storeli.w r20, 140(r19)
001ef4  67896901  storeli.w r22, 144(r19)
001ef8  67c97901  storeli.w r23, 148(r19)
001efc  e7898901  storeli.w r24, 152(r19)
001f00  e7c99901  storeli.w r25, 156(r19)
001f04  e3814901  loadli.w r3,  160(r19)
001f08  e3c24901  loadli.w r5,  164(r19)
001f0c  e3855901  loadli.w r11,  168(r19)
001f10  63ca5901  loadli.w r20,  172(r19)
001f14  638b6901  loadli.w r22,  176(r19)
001f18  e3cb6901  loadli.w r23,  180(r19)
001f1c  638c7901  loadli.w r24,  184(r19)
001f20  e3cc7901  loadli.w r25,  188(r19)
001f24  8f810100  exp.f.rn r3, r3
001f28  8f820200  exp.f.rn r5, r5
001f2c  8f850500  exp.f.rn r11, r11
001f30  0f0a0a00  exp.f.rn r20, r20
001f34  0f0b0b00  exp.f.rn r22, r22
001f38  8f8b0b00  exp.f.rn r23, r23
001f3c  0f0c0c00  exp.f.rn r24, r24
001f40  8f8c0c00  exp.f.rn r25, r25
001f44  678a3900  storeli.w r3, 160(r19)
001f48  67ca5900  storeli.w r5, 164(r19)
001f4c  e78ab900  storeli.w r11, 168(r19)
001f50  e7ca4901  storeli.w r20, 172(r19)
001f54  678b6901  storeli.w r22, 176(r19)
001f58  67cb7901  storeli.w r23, 180(r19)
001f5c  e78b8901  storeli.w r24, 184(r19)
001f60  e7cb9901  storeli.w r25, 188(r19)
001f64  e3818901  loadli.w r3,  192(r19)
001f68  e3c28901  loadli.w r5,  196(r19)
001f6c  e3859901  loadli.w r11,  200(r19)
001f70  63ca9901  loadli.w r20,  204(r19)
001f74  638ba901  loadli.w r22,  208(r19)
001f78  e3cba901  loadli.w r23,  212(r19)
001f7c  638cb901  loadli.w r24,  216(r19)
001f80  e3ccb901  loadli.w r25,  220(r19)
001f84  8f810100  exp.f.rn r3, r3
001f88  8f820200  exp.f.rn r5, r5
001f8c  8f850500  exp.f.rn r11, r11
001f90  0f0a0a00  exp.f.rn r20, r20
001f94  0f0b0b00  exp.f.rn r22, r22
001f98  8f8b0b00  exp.f.rn r23, r23
001f9c  0f0c0c00  exp.f.rn r24, r24
001fa0  8f8c0c00  exp.f.rn r25, r25
001fa4  678c3900  storeli.w r3, 192(r19)
001fa8  67cc5900  storeli.w r5, 196(r19)
001fac  e78cb900  storeli.w r11, 200(r19)
001fb0  e7cc4901  storeli.w r20, 204(r19)
001fb4  678d6901  storeli.w r22, 208(r19)
001fb8  67cd7901  storeli.w r23, 212(r19)
001fbc  e78d8901  storeli.w r24, 216(r19)
001fc0  e7cd9901  storeli.w r25, 220(r19)
001fc4  e381c901  loadli.w r3,  224(r19)
001fc8  e3c2c901  loadli.w r5,  228(r19)
001fcc  e385d901  loadli.w r11,  232(r19)
001fd0  63cad901  loadli.w r20,  236(r19)
001fd4  638be901  loadli.w r22,  240(r19)
001fd8  e3cbe901  loadli.w r23,  244(r19)
001fdc  638cf901  loadli.w r24,  248(r19)
001fe0  e3ccf901  loadli.w r25,  252(r19)
001fe4  8f810100  exp.f.rn r3, r3
001fe8  8f820200  exp.f.rn r5, r5
001fec  8f850500  exp.f.rn r11, r11
001ff0  0f0a0a00  exp.f.rn r20, r20
001ff4  0f0b0b00  exp.f.rn r22, r22
001ff8  8f8b0b00  exp.f.rn r23, r23
001ffc  0f0c0c00  exp.f.rn r24, r24
002000  8f8c0c00  exp.f.rn r25, r25
002004  678e3900  storeli.w r3, 224(r19)
002008  67ce5900  storeli.w r5, 228(r19)
00200c  e78eb900  storeli.w r11, 232(r19)
002010  e7ce4901  storeli.w r20, 236(r19)
002014  678f6901  storeli.w r22, 240(r19)
002018  67cf7901  storeli.w r23, 244(r19)
00201c  e78f8901  storeli.w r24, 248(r19)
002020  e7cf9901  storeli.w r25, 252(r19)
002024  00a00000  mfence { lm }
002028  9f010fdb  addli r3, r30, -4736
00202c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
002030  c2110fe2  vload_mask16.mz vr3{mr1}, 1792(r30)
002034  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
002038  9f010fd1  addli r3, r30, -6016
00203c  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
002040  c2150fe3  vload_mask16.mz vr11{mr1}, 1920(r30)
002044  42158fe3  vload_mask16.mz vr10{mr1}, 1984(r30)
002048  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
00204c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002050  9f018fd1  addli r3, r30, -5952
002054  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
002058  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
00205c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002060  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002064  9f010fd2  addli r3, r30, -5888
002068  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
00206c  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
002070  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002074  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
002078  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
00207c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
002080  00a00000  mfence { lm }
002084  e3800900  loadli.w r1,  0(r19)
002088  e3c10900  loadli.w r3,  4(r19)
00208c  e3821900  loadli.w r5,  8(r19)
002090  e3c51900  loadli.w r11,  12(r19)
002094  638a2900  loadli.w r20,  16(r19)
002098  63cb2900  loadli.w r22,  20(r19)
00209c  e38b3900  loadli.w r23,  24(r19)
0020a0  63cc3900  loadli.w r24,  28(r19)
0020a4  8f800000  exp.f.rn r1, r1
0020a8  8f810100  exp.f.rn r3, r3
0020ac  8f820200  exp.f.rn r5, r5
0020b0  8f850500  exp.f.rn r11, r11
0020b4  0f0a0a00  exp.f.rn r20, r20
0020b8  0f0b0b00  exp.f.rn r22, r22
0020bc  8f8b0b00  exp.f.rn r23, r23
0020c0  0f0c0c00  exp.f.rn r24, r24
0020c4  67801900  storeli.w r1, 0(r19)
0020c8  67c03900  storeli.w r3, 4(r19)
0020cc  e7805900  storeli.w r5, 8(r19)
0020d0  e7c0b900  storeli.w r11, 12(r19)
0020d4  67814901  storeli.w r20, 16(r19)
0020d8  67c16901  storeli.w r22, 20(r19)
0020dc  e7817901  storeli.w r23, 24(r19)
0020e0  e7c18901  storeli.w r24, 28(r19)
0020e4  e3804900  loadli.w r1,  32(r19)
0020e8  e3c14900  loadli.w r3,  36(r19)
0020ec  e3825900  loadli.w r5,  40(r19)
0020f0  e3c55900  loadli.w r11,  44(r19)
0020f4  638a6900  loadli.w r20,  48(r19)
0020f8  63cb6900  loadli.w r22,  52(r19)
0020fc  e38b7900  loadli.w r23,  56(r19)
002100  63cc7900  loadli.w r24,  60(r19)
002104  8f800000  exp.f.rn r1, r1
002108  8f810100  exp.f.rn r3, r3
00210c  8f820200  exp.f.rn r5, r5
002110  8f850500  exp.f.rn r11, r11
002114  0f0a0a00  exp.f.rn r20, r20
002118  0f0b0b00  exp.f.rn r22, r22
00211c  8f8b0b00  exp.f.rn r23, r23
002120  0f0c0c00  exp.f.rn r24, r24
002124  67821900  storeli.w r1, 32(r19)
002128  67c23900  storeli.w r3, 36(r19)
00212c  e7825900  storeli.w r5, 40(r19)
002130  e7c2b900  storeli.w r11, 44(r19)
002134  67834901  storeli.w r20, 48(r19)
002138  67c36901  storeli.w r22, 52(r19)
00213c  e7837901  storeli.w r23, 56(r19)
002140  e7c38901  storeli.w r24, 60(r19)
002144  e3808900  loadli.w r1,  64(r19)
002148  e3c18900  loadli.w r3,  68(r19)
00214c  e3829900  loadli.w r5,  72(r19)
002150  e3c59900  loadli.w r11,  76(r19)
002154  638aa900  loadli.w r20,  80(r19)
002158  63cba900  loadli.w r22,  84(r19)
00215c  e38bb900  loadli.w r23,  88(r19)
002160  63ccb900  loadli.w r24,  92(r19)
002164  8f800000  exp.f.rn r1, r1
002168  8f810100  exp.f.rn r3, r3
00216c  8f820200  exp.f.rn r5, r5
002170  8f850500  exp.f.rn r11, r11
002174  0f0a0a00  exp.f.rn r20, r20
002178  0f0b0b00  exp.f.rn r22, r22
00217c  8f8b0b00  exp.f.rn r23, r23
002180  0f0c0c00  exp.f.rn r24, r24
002184  67841900  storeli.w r1, 64(r19)
002188  67c43900  storeli.w r3, 68(r19)
00218c  e7845900  storeli.w r5, 72(r19)
002190  e7c4b900  storeli.w r11, 76(r19)
002194  67854901  storeli.w r20, 80(r19)
002198  67c56901  storeli.w r22, 84(r19)
00219c  e7857901  storeli.w r23, 88(r19)
0021a0  e7c58901  storeli.w r24, 92(r19)
0021a4  e380c900  loadli.w r1,  96(r19)
0021a8  e3c1c900  loadli.w r3,  100(r19)
0021ac  e382d900  loadli.w r5,  104(r19)
0021b0  e3c5d900  loadli.w r11,  108(r19)
0021b4  638ae900  loadli.w r20,  112(r19)
0021b8  63cbe900  loadli.w r22,  116(r19)
0021bc  e38bf900  loadli.w r23,  120(r19)
0021c0  63ccf900  loadli.w r24,  124(r19)
0021c4  8f800000  exp.f.rn r1, r1
0021c8  8f810100  exp.f.rn r3, r3
0021cc  8f820200  exp.f.rn r5, r5
0021d0  8f850500  exp.f.rn r11, r11
0021d4  0f0a0a00  exp.f.rn r20, r20
0021d8  0f0b0b00  exp.f.rn r22, r22
0021dc  8f8b0b00  exp.f.rn r23, r23
0021e0  0f0c0c00  exp.f.rn r24, r24
0021e4  67861900  storeli.w r1, 96(r19)
0021e8  67c63900  storeli.w r3, 100(r19)
0021ec  e7865900  storeli.w r5, 104(r19)
0021f0  e7c6b900  storeli.w r11, 108(r19)
0021f4  67874901  storeli.w r20, 112(r19)
0021f8  67c76901  storeli.w r22, 116(r19)
0021fc  e7877901  storeli.w r23, 120(r19)
002200  e7c78901  storeli.w r24, 124(r19)
002204  e3800901  loadli.w r1,  128(r19)
002208  e3c10901  loadli.w r3,  132(r19)
00220c  e3821901  loadli.w r5,  136(r19)
002210  e3c51901  loadli.w r11,  140(r19)
002214  638a2901  loadli.w r20,  144(r19)
002218  63cb2901  loadli.w r22,  148(r19)
00221c  e38b3901  loadli.w r23,  152(r19)
002220  63cc3901  loadli.w r24,  156(r19)
002224  8f800000  exp.f.rn r1, r1
002228  8f810100  exp.f.rn r3, r3
00222c  8f820200  exp.f.rn r5, r5
002230  8f850500  exp.f.rn r11, r11
002234  0f0a0a00  exp.f.rn r20, r20
002238  0f0b0b00  exp.f.rn r22, r22
00223c  8f8b0b00  exp.f.rn r23, r23
002240  0f0c0c00  exp.f.rn r24, r24
002244  67881900  storeli.w r1, 128(r19)
002248  67c83900  storeli.w r3, 132(r19)
00224c  e7885900  storeli.w r5, 136(r19)
002250  e7c8b900  storeli.w r11, 140(r19)
002254  67894901  storeli.w r20, 144(r19)
002258  67c96901  storeli.w r22, 148(r19)
00225c  e7897901  storeli.w r23, 152(r19)
002260  e7c98901  storeli.w r24, 156(r19)
002264  e3804901  loadli.w r1,  160(r19)
002268  e3c14901  loadli.w r3,  164(r19)
00226c  e3825901  loadli.w r5,  168(r19)
002270  e3c55901  loadli.w r11,  172(r19)
002274  638a6901  loadli.w r20,  176(r19)
002278  63cb6901  loadli.w r22,  180(r19)
00227c  e38b7901  loadli.w r23,  184(r19)
002280  63cc7901  loadli.w r24,  188(r19)
002284  8f800000  exp.f.rn r1, r1
002288  8f810100  exp.f.rn r3, r3
00228c  8f820200  exp.f.rn r5, r5
002290  8f850500  exp.f.rn r11, r11
002294  0f0a0a00  exp.f.rn r20, r20
002298  0f0b0b00  exp.f.rn r22, r22
00229c  8f8b0b00  exp.f.rn r23, r23
0022a0  0f0c0c00  exp.f.rn r24, r24
0022a4  678a1900  storeli.w r1, 160(r19)
0022a8  67ca3900  storeli.w r3, 164(r19)
0022ac  e78a5900  storeli.w r5, 168(r19)
0022b0  e7cab900  storeli.w r11, 172(r19)
0022b4  678b4901  storeli.w r20, 176(r19)
0022b8  67cb6901  storeli.w r22, 180(r19)
0022bc  e78b7901  storeli.w r23, 184(r19)
0022c0  e7cb8901  storeli.w r24, 188(r19)
0022c4  e3808901  loadli.w r1,  192(r19)
0022c8  e3c18901  loadli.w r3,  196(r19)
0022cc  e3829901  loadli.w r5,  200(r19)
0022d0  e3c59901  loadli.w r11,  204(r19)
0022d4  638aa901  loadli.w r20,  208(r19)
0022d8  63cba901  loadli.w r22,  212(r19)
0022dc  e38bb901  loadli.w r23,  216(r19)
0022e0  63ccb901  loadli.w r24,  220(r19)
0022e4  8f800000  exp.f.rn r1, r1
0022e8  8f810100  exp.f.rn r3, r3
0022ec  8f820200  exp.f.rn r5, r5
0022f0  8f850500  exp.f.rn r11, r11
0022f4  0f0a0a00  exp.f.rn r20, r20
0022f8  0f0b0b00  exp.f.rn r22, r22
0022fc  8f8b0b00  exp.f.rn r23, r23
002300  0f0c0c00  exp.f.rn r24, r24
002304  678c1900  storeli.w r1, 192(r19)
002308  67cc3900  storeli.w r3, 196(r19)
00230c  e78c5900  storeli.w r5, 200(r19)
002310  e7ccb900  storeli.w r11, 204(r19)
002314  678d4901  storeli.w r20, 208(r19)
002318  67cd6901  storeli.w r22, 212(r19)
00231c  e78d7901  storeli.w r23, 216(r19)
002320  e7cd8901  storeli.w r24, 220(r19)
002324  e380c901  loadli.w r1,  224(r19)
002328  e3c1c901  loadli.w r3,  228(r19)
00232c  e382d901  loadli.w r5,  232(r19)
002330  e3c5d901  loadli.w r11,  236(r19)
002334  638ae901  loadli.w r20,  240(r19)
002338  63cbe901  loadli.w r22,  244(r19)
00233c  e38bf901  loadli.w r23,  248(r19)
002340  63ccf901  loadli.w r24,  252(r19)
002344  8f800000  exp.f.rn r1, r1
002348  8f810100  exp.f.rn r3, r3
00234c  8f820200  exp.f.rn r5, r5
002350  8f850500  exp.f.rn r11, r11
002354  0f0a0a00  exp.f.rn r20, r20
002358  0f0b0b00  exp.f.rn r22, r22
00235c  8f8b0b00  exp.f.rn r23, r23
002360  0f0c0c00  exp.f.rn r24, r24
002364  678e1900  storeli.w r1, 224(r19)
002368  67ce3900  storeli.w r3, 228(r19)
00236c  e78e5900  storeli.w r5, 232(r19)
002370  e7ceb900  storeli.w r11, 236(r19)
002374  678f4901  storeli.w r20, 240(r19)
002378  67cf6901  storeli.w r22, 244(r19)
00237c  e78f7901  storeli.w r23, 248(r19)
002380  e7cf8901  storeli.w r24, 252(r19)
002384  00a00000  mfence { lm }
002388  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
00238c  9610b002  vadd.f.mz.rn vr1{mr1}, vr0, vr11
002390  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
002394  42118fe2  vload_mask16.mz vr2{mr1}, 1856(r30)
002398  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
00239c  c2128fe3  vload_mask16.mz vr5{mr1}, 1984(r30)
0023a0  e3417fce  loadli.w r3,  -6340(r30)
0023a4  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
0023a8  96900002  vadd.f.mz.rn vr1{mr1}, vr1, vr0
0023ac  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0023b0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0023b4  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
0023b8  6a7416c0  vsrl.p vr8, r12, vr1
0023bc  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
0023c0  6a7417c0  vsrl.p vr8, r14, vr1
0023c4  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
0023c8  6af417c0  vsrl.p vr8, r15, vr1
0023cc  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
0023d0  6a7418c0  vsrl.p vr8, r16, vr1
0023d4  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
0023d8  fa900040  vextracti.f r1, 0(vr1)
0023dc  73e01100  stores.w r1, 0(r3)
0023e0  00a00300  mfence { lm, sm, gm }
0023e4  80210204  csr_set csr3, r4
0023e8  00d00100  sync_group
0023ec  bb900600  bneq r13, zero, 36
0023f0  ef400e00  loads.w r1, 0(r28)
0023f4  ef414e00  loads.w r3, 4(r28)
0023f8  ef428e00  loads.w r5, 8(r28)
0023fc  8be03010  add.f.rn r1, r1, r3
002400  ef41ce00  loads.w r3, 12(r28)
002404  8be05010  add.f.rn r1, r1, r5
002408  8be03010  add.f.rn r1, r1, r3
00240c  73601e00  stores.w r1, 0(r28)
002410  00a00300  mfence { lm, sm, gm }
002414  80210204  csr_set csr3, r4
002418  00d00100  sync_group
00241c  ef400e00  loads.w r1, 0(r28)
002420  ab01803f  lui r3, 260096
002424  9f050fde  addli r11, r30, -4352
002428  8f801118  div.f.rn r1, r3, r1
00242c  9f018fd4  addli r3, r30, -5568
002430  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
002434  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002438  9f010fde  addli r3, r30, -4352
00243c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002440  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002444  9f010fd5  addli r3, r30, -5504
002448  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00244c  9f018fde  addli r3, r30, -4288
002450  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002454  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002458  9f018fd5  addli r3, r30, -5440
00245c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002460  9f010fdf  addli r3, r30, -4224
002464  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002468  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00246c  9f010fd7  addli r3, r30, -5248
002470  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002474  9f018fdf  addli r3, r30, -4160
002478  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00247c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002480  9f010fd6  addli r3, r30, -5376
002484  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002488  9f010fe0  addli r3, r30, -4096
00248c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002490  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002494  9f010fd4  addli r3, r30, -5632
002498  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00249c  9f018fe0  addli r3, r30, -4032
0024a0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024a4  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0024a8  9f010fdd  addli r3, r30, -4480
0024ac  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0024b0  9f010fe1  addli r3, r30, -3968
0024b4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024b8  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0024bc  9f018fdd  addli r3, r30, -4416
0024c0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0024c4  9f018fe1  addli r3, r30, -3904
0024c8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024cc  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0024d0  9f010fd8  addli r3, r30, -5120
0024d4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0024d8  9f010fe2  addli r3, r30, -3840
0024dc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024e0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0024e4  9f018fd8  addli r3, r30, -5056
0024e8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0024ec  9f018fe2  addli r3, r30, -3776
0024f0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024f4  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0024f8  9f018fd9  addli r3, r30, -4928
0024fc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002500  9f010fe3  addli r3, r30, -3712
002504  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002508  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00250c  9f018fda  addli r3, r30, -4800
002510  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002514  9f018fe3  addli r3, r30, -3648
002518  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00251c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002520  9f018fd6  addli r3, r30, -5312
002524  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002528  9f010fe4  addli r3, r30, -3584
00252c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002530  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002534  9f018fdb  addli r3, r30, -4672
002538  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00253c  9f018fe4  addli r3, r30, -3520
002540  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002544  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002548  9f010fdc  addli r3, r30, -4608
00254c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002550  9f010fe5  addli r3, r30, -3456
002554  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002558  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00255c  9f018fdc  addli r3, r30, -4544
002560  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002564  9f018fe5  addli r3, r30, -3392
002568  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00256c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002570  9f018fd3  addli r3, r30, -5696
002574  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002578  9f010fe6  addli r3, r30, -3328
00257c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002580  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002584  9f018fd7  addli r3, r30, -5184
002588  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00258c  9f018fe6  addli r3, r30, -3264
002590  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002594  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002598  9f010fd9  addli r3, r30, -4992
00259c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025a0  9f010fe7  addli r3, r30, -3200
0025a4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025a8  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025ac  9f010fda  addli r3, r30, -4864
0025b0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025b4  9f018fe7  addli r3, r30, -3136
0025b8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025bc  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025c0  9f010fe8  addli r3, r30, -3072
0025c4  8a907002  vmul.f.mz.rn vr1{mr1}, r1, vr7
0025c8  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025cc  9f018fe8  addli r3, r30, -3008
0025d0  8a909002  vmul.f.mz.rn vr1{mr1}, r1, vr9
0025d4  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025d8  9f010fd3  addli r3, r30, -5760
0025dc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025e0  9f010fe9  addli r3, r30, -2944
0025e4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025e8  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025ec  9f010fdb  addli r3, r30, -4736
0025f0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025f4  9f018fe9  addli r3, r30, -2880
0025f8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025fc  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002600  9f010fea  addli r3, r30, -2816
002604  8a903002  vmul.f.mz.rn vr1{mr1}, r1, vr3
002608  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00260c  9f018fea  addli r3, r30, -2752
002610  8a906002  vmul.f.mz.rn vr1{mr1}, r1, vr6
002614  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002618  9f010feb  addli r3, r30, -2688
00261c  8a90b002  vmul.f.mz.rn vr1{mr1}, r1, vr11
002620  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002624  9f018feb  addli r3, r30, -2624
002628  8a90a002  vmul.f.mz.rn vr1{mr1}, r1, vr10
00262c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002630  9f010fec  addli r3, r30, -2560
002634  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
002638  9f018fec  addli r3, r30, -2496
00263c  0a902002  vmul.f.mz.rn vr0{mr1}, r1, vr2
002640  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
002644  9f010fed  addli r3, r30, -2432
002648  0a904002  vmul.f.mz.rn vr0{mr1}, r1, vr4
00264c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
002650  0a905002  vmul.f.mz.rn vr0{mr1}, r1, vr5
002654  9f008fed  addli r1, r30, -2368
002658  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00265c  9f000500  addli r1, r10, 0
002660  00a00000  mfence { lm }
002664  e3018f00  loadli.w r3,  64(r30)
002668  3f6f31ec  blt.s r2, r3, -9256
00266c  9f000000  addli r1, zero, 0
002670  5b7afbff  j -9264
002674  9f0e0fce  addli sp, r30, -6400
002678  9f8e0e32  addli sp, sp, 6400
00267c  00a00300  mfence { lm, sm, gm }
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
0028b8  00100000  exit
0028bc  00100000  exit
0028c0  00100000  exit
