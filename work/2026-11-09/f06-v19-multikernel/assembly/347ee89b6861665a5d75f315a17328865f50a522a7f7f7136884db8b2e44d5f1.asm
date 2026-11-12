; SHA-256 347ee89b6861665a5d75f315a17328865f50a522a7f7f7136884db8b2e44d5f1
; P800 Cluster · XTDK LLVM 19 · 2630 / 2630 words decoded
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
000128  8b913320  mul.s r3, r7, r3
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
00015c  67433fce  storeli.w r3, -6348(r30)
000160  cba56112  ble.s r3, r6, 9576
000164  9b023400  andi r5, r8, 3
000168  eb570f03  load.d r[16:17], 48(r30)
00016c  2bfaffff  lui r20, 1048575
000170  9f210000  addli r3, zero, 2
000174  6b5d0f02  load.d r[27:28], 32(r30)
000178  e34a1f00  loadli.w r21,  12(r30)
00017c  1b442400  srli r8, r8, 2
000180  e34b8f00  loadli.w r23,  68(r30)
000184  e3095f00  loadli.w r19,  40(r30)
000188  6b5c8f01  load.d r[25:26], 24(r30)
00018c  1f070004  addli r14, zero, 512
000190  eb550f05  load.d r[12:13], 80(r30)
000194  9f032fce  addli r7, r30, -6384
000198  9f064000  addli r13, zero, 32
00019c  1bbb9200  slli r22, r5, 9
0001a0  1b1a0aff  ori r20, r20, 4080
0001a4  b3080b28  zext_int2long r[18:19], r22
0001a8  97844401  and r9, r9, r20
0001ac  8b996919  sub.s r19, r19, r22
0001b0  8bb71721  mul.sl r[16:17], r[16:17], r[18:19]
0001b4  0b119110  add.s r2, r2, r9
0001b8  8b946b19  sub.s r9, r23, r22
0001bc  8b990948  max.s r19, r19, zero
0001c0  97b73702  sll.d r[16:17], r[16:17], r3
0001c4  80d10002  load_param_i r3, 1
0001c8  8b99e940  min.s r19, r19, r14
0001cc  0b1e1110  add.s r28, r2, r1
0001d0  8b900448  max.s r1, r9, zero
0001d4  9f040fde  addli r9, r30, -4352
0001d8  8b27fd10  add.ul r[16:17], r[27:28], r[16:17]
0001dc  67033fce  storeli.w r3, -6352(r30)
0001e0  0b9d6a19  sub.s r26, r21, r22
0001e4  9b01f400  andi r3, r8, 15
0001e8  8b1da110  add.s r27, r2, r10
0001ec  9bb92900  slli r19, r19, 2
0001f0  8b90e040  min.s r1, r1, r14
0001f4  1f058000  addli r10, zero, 64
0001f8  9f0a0002  addli r21, zero, 256
0001fc  0b140d48  max.s r8, r26, zero
000200  e7403fce  storeli.w r3, -6388(r30)
000204  338b0128  zext_int2long r[23:24], r3
000208  9f015fce  addli r3, r30, -6360
00020c  9bb02000  slli r1, r1, 2
000210  73b06101  store.d r[23:24], 0(r3)
000214  0b14e440  min.s r8, r8, r14
000218  0b3b1c21  mul.sl r[23:24], r[25:26], r[18:19]
00021c  9f014fce  addli r3, r30, -6368
000220  1f870200  addli r14, r5, 0
000224  e7001fce  storeli.w r1, -6392(r30)
000228  73b06101  store.d r[23:24], 0(r3)
00022c  9b312400  slli r3, r8, 2
000230  e7413fce  storeli.w r3, -6372(r30)
000234  0bb11521  mul.sl r[3:4], r[12:13], r[18:19]
000238  9f050fee  addli r11, r30, -2304
00023c  1f060001  addli r12, zero, 128
000240  73b02300  store.d r[3:4], 0(r7)
000244  2b0100f0  lui r2, 983040
000248  17912900  or r2, r19, r2
00024c  9f090ffe  addli r19, r30, -256
000250  7fa1b700  l_gm2lm r2, r11, 0(r[16:17])
000254  9f050002  addli r11, zero, 256
000258  00a00000  mfence { lm }
00025c  db090000  j 76
000260  6b518f04  load.d r[3:4], 72(r30)
000264  9f022fce  addli r5, r30, -6384
000268  ebd30200  load.d r[8:9], 0(r5)
00026c  9f220000  addli r5, zero, 2
000270  0bb12820  mul.sl r[3:4], r[18:19], r[3:4]
000274  0b217110  add.ul r[3:4], r[3:4], r[8:9]
000278  eb538f03  load.d r[8:9], 56(r30)
00027c  17315102  sll.d r[3:4], r[3:4], r5
000280  ab0200f0  lui r5, 983040
000284  0ba12310  add.ul r[3:4], r[8:9], r[3:4]
000288  97905000  or r1, r1, r5
00028c  ff309100  s_lm2gm r1, r9, 0(r[3:4])
000290  e3006fce  loadli.w r1,  -6352(r30)
000294  00a00000  mfence { lm }
000298  0b131310  add.s r6, r6, r1
00029c  e3406fce  loadli.w r1,  -6348(r30)
0002a0  3f201300  blt.s r6, r1, 8
0002a4  db840400  j 9252
0002a8  e340cf00  loadli.w r1,  100(r30)
0002ac  6301cf00  loadli.w r2,  96(r30)
0002b0  8b101330  div.s r1, r6, r1
0002b4  8b902030  div.s r1, r1, r2
0002b8  9bb84000  slli r17, r1, 4
0002bc  e3401fce  loadli.w r1,  -6388(r30)
0002c0  00a00000  mfence { lm }
0002c4  e3011f00  loadli.w r3,  8(r30)
0002c8  17911800  or r2, r17, r1
0002cc  e3403fce  loadli.w r1,  -6372(r30)
0002d0  3f203100  blt.s r2, r3, 8
0002d4  9f000000  addli r1, zero, 0
0002d8  9f015fce  addli r3, r30, -6360
0002dc  b3980828  sext_int2long r[18:19], r17
0002e0  9f220000  addli r5, zero, 2
0002e4  ebd30100  load.d r[8:9], 0(r3)
0002e8  9f014fce  addli r3, r30, -6368
0002ec  97987802  or.d r[18:19], r[18:19], r[8:9]
0002f0  eb530f01  load.d r[8:9], 16(r30)
0002f4  0bbb7820  mul.sl r[23:24], r[18:19], r[8:9]
0002f8  ebd30100  load.d r[8:9], 0(r3)
0002fc  ab0100f0  lui r3, 983040
000300  97903000  or r1, r1, r3
000304  0b2b7b10  add.ul r[23:24], r[23:24], r[8:9]
000308  eb530f00  load.d r[8:9], 0(r30)
00030c  173b5b02  sll.d r[23:24], r[23:24], r5
000310  0bab6311  add.ul r[23:24], r[8:9], r[23:24]
000314  ff209b00  l_gm2lm r1, r9, 0(r[23:24])
000318  9f000fde  addli r1, r30, -4352
00031c  00a00000  mfence { lm }
000320  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000324  9f008fde  addli r1, r30, -4288
000328  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00032c  9f000fdf  addli r1, r30, -4224
000330  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000334  9f008fdf  addli r1, r30, -4160
000338  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00033c  9f000fe0  addli r1, r30, -4096
000340  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000344  9f008fe0  addli r1, r30, -4032
000348  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00034c  9f000fee  addli r1, r30, -2304
000350  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000354  9f000fe1  addli r1, r30, -3968
000358  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
00035c  9f008fe1  addli r1, r30, -3904
000360  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000364  9f000fe2  addli r1, r30, -3840
000368  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00036c  9f008fe2  addli r1, r30, -3776
000370  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000374  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000378  9f008fee  addli r1, r30, -2240
00037c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000380  9f008fd2  addli r1, r30, -5824
000384  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000388  9f000fef  addli r1, r30, -2176
00038c  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000390  9f000fd5  addli r1, r30, -5504
000394  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
000398  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00039c  9f008fef  addli r1, r30, -2112
0003a0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0003a4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0003a8  9f000fd4  addli r1, r30, -5632
0003ac  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0003b0  9f000ff0  addli r1, r30, -2048
0003b4  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0003b8  9f008fd3  addli r1, r30, -5696
0003bc  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
0003c0  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0003c4  9f008ff0  addli r1, r30, -1984
0003c8  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
0003cc  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0003d0  9f000fd3  addli r1, r30, -5760
0003d4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0003d8  9f000ff1  addli r1, r30, -1920
0003dc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0003e0  9f008fd5  addli r1, r30, -5440
0003e4  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0003e8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003ec  9f008ff1  addli r1, r30, -1856
0003f0  16901502  vadd.f.mz.rn vr0{mr1}, vr11, vr1
0003f4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0003f8  9f008fd4  addli r1, r30, -5568
0003fc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000400  9f000fe3  addli r1, r30, -3712
000404  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000408  9f000fd7  addli r1, r30, -5248
00040c  16107502  vadd.f.mz.rn vr0{mr1}, vr10, vr7
000410  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000414  9f000ff2  addli r1, r30, -1792
000418  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00041c  9f008ff2  addli r1, r30, -1728
000420  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000424  9f000ff3  addli r1, r30, -1664
000428  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00042c  9f000fd6  addli r1, r30, -5376
000430  16917402  vadd.f.mz.rn vr2{mr1}, vr9, vr7
000434  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000438  1611a402  vadd.f.mz.rn vr2{mr1}, vr8, vr10
00043c  9f008fdd  addli r1, r30, -4416
000440  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000444  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000448  9f000fdd  addli r1, r30, -4480
00044c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000450  9f008fe3  addli r1, r30, -3648
000454  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000458  9f000fe4  addli r1, r30, -3584
00045c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000460  9f008fe4  addli r1, r30, -3520
000464  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000468  9f008ff3  addli r1, r30, -1600
00046c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000470  9f000ff4  addli r1, r30, -1536
000474  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000478  9f008ff4  addli r1, r30, -1472
00047c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000480  9f008fd6  addli r1, r30, -5312
000484  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000488  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00048c  16908302  vadd.f.mz.rn vr0{mr1}, vr7, vr8
000490  9f000fd8  addli r1, r30, -5120
000494  16119502  vadd.f.mz.rn vr2{mr1}, vr10, vr9
000498  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00049c  9f000fe5  addli r1, r30, -3456
0004a0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0004a4  9f008fe5  addli r1, r30, -3392
0004a8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0004ac  9f000fe6  addli r1, r30, -3328
0004b0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0004b4  9f000ff5  addli r1, r30, -1408
0004b8  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0004bc  9f008ff5  addli r1, r30, -1344
0004c0  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0004c4  9f000ff6  addli r1, r30, -1280
0004c8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0004cc  9f008fd8  addli r1, r30, -5056
0004d0  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
0004d4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004d8  16908302  vadd.f.mz.rn vr0{mr1}, vr7, vr8
0004dc  9f008fd9  addli r1, r30, -4928
0004e0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004e4  16901402  vadd.f.mz.rn vr0{mr1}, vr9, vr1
0004e8  9f008fda  addli r1, r30, -4800
0004ec  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004f0  9f008fe6  addli r1, r30, -3264
0004f4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0004f8  9f000fe7  addli r1, r30, -3200
0004fc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000500  9f008fe7  addli r1, r30, -3136
000504  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000508  9f008ff6  addli r1, r30, -1216
00050c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000510  9f000ff7  addli r1, r30, -1152
000514  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000518  9f008ff7  addli r1, r30, -1088
00051c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000520  9f008fdc  addli r1, r30, -4544
000524  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000528  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00052c  16909002  vadd.f.mz.rn vr0{mr1}, vr1, vr9
000530  9f008fdb  addli r1, r30, -4672
000534  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000538  1690a302  vadd.f.mz.rn vr0{mr1}, vr7, vr10
00053c  9f000fdc  addli r1, r30, -4608
000540  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000544  9f000fe8  addli r1, r30, -3072
000548  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00054c  9f008fe8  addli r1, r30, -3008
000550  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000554  9f000fe9  addli r1, r30, -2944
000558  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00055c  42140f82  vload_mask16.mz vr8{mr1}, 1024(r30)
000560  c2148f82  vload_mask16.mz vr9{mr1}, 1088(r30)
000564  42150f83  vload_mask16.mz vr10{mr1}, 1152(r30)
000568  9f008fce  addli r1, r30, -6336
00056c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000570  16939002  vadd.f.mz.rn vr6{mr1}, vr1, vr9
000574  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000578  1690a302  vadd.f.mz.rn vr0{mr1}, vr7, vr10
00057c  9f008fd7  addli r1, r30, -5184
000580  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000584  9f008fe9  addli r1, r30, -2880
000588  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00058c  9f000fea  addli r1, r30, -2816
000590  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000594  9f008fea  addli r1, r30, -2752
000598  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00059c  42148f83  vload_mask16.mz vr8{mr1}, 1216(r30)
0005a0  c2140fa2  vload_mask16.mz vr9{mr1}, 1280(r30)
0005a4  9f000fd9  addli r1, r30, -4992
0005a8  42158fa2  vload_mask16.mz vr10{mr1}, 1344(r30)
0005ac  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0005b0  1692a302  vadd.f.mz.rn vr4{mr1}, vr7, vr10
0005b4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005b8  16909002  vadd.f.mz.rn vr0{mr1}, vr1, vr9
0005bc  9f000fda  addli r1, r30, -4864
0005c0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005c4  9f000feb  addli r1, r30, -2688
0005c8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0005cc  9f008feb  addli r1, r30, -2624
0005d0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0005d4  9f000fec  addli r1, r30, -2560
0005d8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0005dc  42140fa3  vload_mask16.mz vr8{mr1}, 1408(r30)
0005e0  c2148fa3  vload_mask16.mz vr9{mr1}, 1472(r30)
0005e4  9f000fdb  addli r1, r30, -4736
0005e8  42150fc2  vload_mask16.mz vr10{mr1}, 1536(r30)
0005ec  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0005f0  96929002  vadd.f.mz.rn vr5{mr1}, vr1, vr9
0005f4  9695a302  vadd.f.mz.rn vr11{mr1}, vr7, vr10
0005f8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005fc  9f008fec  addli r1, r30, -2496
000600  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000604  9f000fed  addli r1, r30, -2432
000608  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00060c  9f008fed  addli r1, r30, -2368
000610  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000614  42148fc2  vload_mask16.mz vr8{mr1}, 1600(r30)
000618  c2140fc3  vload_mask16.mz vr9{mr1}, 1664(r30)
00061c  42158fc3  vload_mask16.mz vr10{mr1}, 1728(r30)
000620  9f000fdc  addli r1, r30, -4608
000624  e3017fce  loadli.w r3,  -6344(r30)
000628  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00062c  9f008fd7  addli r1, r30, -5184
000630  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000634  1695a302  vadd.f.mz.rn vr10{mr1}, vr7, vr10
000638  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00063c  9f000fd5  addli r1, r30, -5504
000640  16949002  vadd.f.mz.rn vr8{mr1}, vr1, vr9
000644  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000648  9f008fd2  addli r1, r30, -5824
00064c  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000650  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000654  9f000fd4  addli r1, r30, -5632
000658  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00065c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000660  9f008fd3  addli r1, r30, -5696
000664  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000668  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00066c  9f000fd3  addli r1, r30, -5760
000670  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000674  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000678  9f008fd5  addli r1, r30, -5440
00067c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000680  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000684  9f008fd4  addli r1, r30, -5568
000688  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00068c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000690  9f000fd7  addli r1, r30, -5248
000694  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000698  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00069c  9f000fd6  addli r1, r30, -5376
0006a0  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006a4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006a8  9f008fdd  addli r1, r30, -4416
0006ac  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006b0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006b4  9f000fdd  addli r1, r30, -4480
0006b8  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006bc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006c0  9f008fd6  addli r1, r30, -5312
0006c4  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006c8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006cc  9f000fd8  addli r1, r30, -5120
0006d0  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006d4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006d8  9f000fcf  addli r1, r30, -6272
0006dc  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006e0  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0006e4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0006e8  9f008fd8  addli r1, r30, -5056
0006ec  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006f0  9f008fd9  addli r1, r30, -4928
0006f4  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0006f8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006fc  9f008fda  addli r1, r30, -4800
000700  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000704  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000708  9f008fdc  addli r1, r30, -4544
00070c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000710  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000714  9f008fdb  addli r1, r30, -4672
000718  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00071c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000720  9f008fce  addli r1, r30, -6336
000724  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000728  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
00072c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000730  9f008fcf  addli r1, r30, -6208
000734  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000738  36106002  vmax.f.mz vr0{mr1}, vr0, vr6
00073c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000740  9f000fd9  addli r1, r30, -4992
000744  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
000748  12311002  vadd.s.mz vr2{mr1}, zero, vr1
00074c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000750  9f000fda  addli r1, r30, -4864
000754  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000758  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00075c  9f000fd0  addli r1, r30, -6144
000760  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000764  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
000768  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00076c  9f000fdb  addli r1, r30, -4736
000770  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000774  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000778  9f008fd0  addli r1, r30, -6080
00077c  36105002  vmax.f.mz vr0{mr1}, vr0, vr5
000780  3610b002  vmax.f.mz vr0{mr1}, vr0, vr11
000784  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000788  9f000fd1  addli r1, r30, -6016
00078c  9232b002  vadd.s.mz vr5{mr1}, zero, vr11
000790  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
000794  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
000798  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
00079c  9f008fd1  addli r1, r30, -5952
0007a0  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0007a4  eaf005c0  vsrl.p vr1, r11, vr0
0007a8  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0007ac  ea7006c0  vsrl.p vr1, r12, vr0
0007b0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0007b4  9f000fd2  addli r1, r30, -5888
0007b8  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0007bc  ea7005c0  vsrl.p vr1, r10, vr0
0007c0  1f050001  addli r10, zero, 128
0007c4  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0007c8  eaf006c0  vsrl.p vr1, r13, vr0
0007cc  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
0007d0  9f060700  addli r13, r14, 0
0007d4  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0007d8  fa100040  vextracti.f r1, 0(vr0)
0007dc  73e01100  stores.w r1, 0(r3)
0007e0  00a00300  mfence { lm, sm, gm }
0007e4  80210204  csr_set csr3, r4
0007e8  00d00100  sync_group
0007ec  bb900600  bneq r13, zero, 36
0007f0  efc00d00  loads.w r1, 0(r27)
0007f4  efc14d00  loads.w r3, 4(r27)
0007f8  6fcb8d00  loads.w r22, 8(r27)
0007fc  efcbcd00  loads.w r23, 12(r27)
000800  8be03048  max.f r1, r1, r3
000804  8be06049  max.f r1, r1, r22
000808  8be07049  max.f r1, r1, r23
00080c  73e01d00  stores.w r1, 0(r27)
000810  00a00300  mfence { lm, sm, gm }
000814  80210204  csr_set csr3, r4
000818  00d00100  sync_group
00081c  efc00d00  loads.w r1, 0(r27)
000820  ab010080  lui r3, 524288
000824  97a03000  xor r1, r1, r3
000828  9f018fd2  addli r3, r30, -5824
00082c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000830  9f010fd5  addli r3, r30, -5504
000834  92930002  vadd.f.mz.rn vr7{mr1}, r1, vr0
000838  46107fe2  vstore_mask16.mz vr7{mr1}, 1792(r30)
00083c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000840  9f010fd4  addli r3, r30, -5632
000844  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000848  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
00084c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000850  9f018fd3  addli r3, r30, -5696
000854  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000858  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
00085c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000860  9f010fd3  addli r3, r30, -5760
000864  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000868  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
00086c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000870  00a00000  mfence { lm }
000874  e3810900  loadli.w r3,  0(r19)
000878  63cb0900  loadli.w r22,  4(r19)
00087c  e38b1900  loadli.w r23,  8(r19)
000880  63ca1900  loadli.w r20,  12(r19)
000884  e3822900  loadli.w r5,  16(r19)
000888  63cc2900  loadli.w r24,  20(r19)
00088c  e38c3900  loadli.w r25,  24(r19)
000890  e3c53900  loadli.w r11,  28(r19)
000894  63864900  loadli.w r12,  32(r19)
000898  e3c34900  loadli.w r7,  36(r19)
00089c  63845900  loadli.w r8,  40(r19)
0008a0  e3c45900  loadli.w r9,  44(r19)
0008a4  63876900  loadli.w r14,  48(r19)
0008a8  e3c76900  loadli.w r15,  52(r19)
0008ac  63887900  loadli.w r16,  56(r19)
0008b0  63cd7900  loadli.w r26,  60(r19)
0008b4  8f810100  exp.f.rn r3, r3
0008b8  0f0b0b00  exp.f.rn r22, r22
0008bc  8f8b0b00  exp.f.rn r23, r23
0008c0  0f0a0a00  exp.f.rn r20, r20
0008c4  8f820200  exp.f.rn r5, r5
0008c8  0f0c0c00  exp.f.rn r24, r24
0008cc  8f8c0c00  exp.f.rn r25, r25
0008d0  8f850500  exp.f.rn r11, r11
0008d4  0f060600  exp.f.rn r12, r12
0008d8  8f830300  exp.f.rn r7, r7
0008dc  0f040400  exp.f.rn r8, r8
0008e0  8f840400  exp.f.rn r9, r9
0008e4  0f070700  exp.f.rn r14, r14
0008e8  8f870700  exp.f.rn r15, r15
0008ec  0f080800  exp.f.rn r16, r16
0008f0  0f0d0d00  exp.f.rn r26, r26
0008f4  67803900  storeli.w r3, 0(r19)
0008f8  67c06901  storeli.w r22, 4(r19)
0008fc  e7807901  storeli.w r23, 8(r19)
000900  e7c04901  storeli.w r20, 12(r19)
000904  67815900  storeli.w r5, 16(r19)
000908  67c18901  storeli.w r24, 20(r19)
00090c  e7819901  storeli.w r25, 24(r19)
000910  e7c1b900  storeli.w r11, 28(r19)
000914  6782c900  storeli.w r12, 32(r19)
000918  67c27900  storeli.w r7, 36(r19)
00091c  e7828900  storeli.w r8, 40(r19)
000920  e7c29900  storeli.w r9, 44(r19)
000924  6783e900  storeli.w r14, 48(r19)
000928  67c3f900  storeli.w r15, 52(r19)
00092c  e7830901  storeli.w r16, 56(r19)
000930  e7c3a901  storeli.w r26, 60(r19)
000934  e3818900  loadli.w r3,  64(r19)
000938  63cb8900  loadli.w r22,  68(r19)
00093c  e38b9900  loadli.w r23,  72(r19)
000940  63ca9900  loadli.w r20,  76(r19)
000944  e382a900  loadli.w r5,  80(r19)
000948  63cca900  loadli.w r24,  84(r19)
00094c  e38cb900  loadli.w r25,  88(r19)
000950  e3c5b900  loadli.w r11,  92(r19)
000954  6386c900  loadli.w r12,  96(r19)
000958  e3c3c900  loadli.w r7,  100(r19)
00095c  6384d900  loadli.w r8,  104(r19)
000960  e3c4d900  loadli.w r9,  108(r19)
000964  6387e900  loadli.w r14,  112(r19)
000968  e3c7e900  loadli.w r15,  116(r19)
00096c  6388f900  loadli.w r16,  120(r19)
000970  63cdf900  loadli.w r26,  124(r19)
000974  8f810100  exp.f.rn r3, r3
000978  0f0b0b00  exp.f.rn r22, r22
00097c  8f8b0b00  exp.f.rn r23, r23
000980  0f0a0a00  exp.f.rn r20, r20
000984  8f820200  exp.f.rn r5, r5
000988  0f0c0c00  exp.f.rn r24, r24
00098c  8f8c0c00  exp.f.rn r25, r25
000990  8f850500  exp.f.rn r11, r11
000994  0f060600  exp.f.rn r12, r12
000998  8f830300  exp.f.rn r7, r7
00099c  0f040400  exp.f.rn r8, r8
0009a0  8f840400  exp.f.rn r9, r9
0009a4  0f070700  exp.f.rn r14, r14
0009a8  8f870700  exp.f.rn r15, r15
0009ac  0f080800  exp.f.rn r16, r16
0009b0  0f0d0d00  exp.f.rn r26, r26
0009b4  67843900  storeli.w r3, 64(r19)
0009b8  67c46901  storeli.w r22, 68(r19)
0009bc  e7847901  storeli.w r23, 72(r19)
0009c0  e7c44901  storeli.w r20, 76(r19)
0009c4  67855900  storeli.w r5, 80(r19)
0009c8  67c58901  storeli.w r24, 84(r19)
0009cc  e7859901  storeli.w r25, 88(r19)
0009d0  e7c5b900  storeli.w r11, 92(r19)
0009d4  6786c900  storeli.w r12, 96(r19)
0009d8  67c67900  storeli.w r7, 100(r19)
0009dc  e7868900  storeli.w r8, 104(r19)
0009e0  e7c69900  storeli.w r9, 108(r19)
0009e4  6787e900  storeli.w r14, 112(r19)
0009e8  67c7f900  storeli.w r15, 116(r19)
0009ec  e7870901  storeli.w r16, 120(r19)
0009f0  e7c7a901  storeli.w r26, 124(r19)
0009f4  e3810901  loadli.w r3,  128(r19)
0009f8  63cb0901  loadli.w r22,  132(r19)
0009fc  e38b1901  loadli.w r23,  136(r19)
000a00  63ca1901  loadli.w r20,  140(r19)
000a04  e3822901  loadli.w r5,  144(r19)
000a08  63cc2901  loadli.w r24,  148(r19)
000a0c  e38c3901  loadli.w r25,  152(r19)
000a10  e3c53901  loadli.w r11,  156(r19)
000a14  63864901  loadli.w r12,  160(r19)
000a18  e3c34901  loadli.w r7,  164(r19)
000a1c  63845901  loadli.w r8,  168(r19)
000a20  e3c45901  loadli.w r9,  172(r19)
000a24  63876901  loadli.w r14,  176(r19)
000a28  e3c76901  loadli.w r15,  180(r19)
000a2c  63887901  loadli.w r16,  184(r19)
000a30  63cd7901  loadli.w r26,  188(r19)
000a34  8f810100  exp.f.rn r3, r3
000a38  0f0b0b00  exp.f.rn r22, r22
000a3c  8f8b0b00  exp.f.rn r23, r23
000a40  0f0a0a00  exp.f.rn r20, r20
000a44  8f820200  exp.f.rn r5, r5
000a48  0f0c0c00  exp.f.rn r24, r24
000a4c  8f8c0c00  exp.f.rn r25, r25
000a50  8f850500  exp.f.rn r11, r11
000a54  0f060600  exp.f.rn r12, r12
000a58  8f830300  exp.f.rn r7, r7
000a5c  0f040400  exp.f.rn r8, r8
000a60  8f840400  exp.f.rn r9, r9
000a64  0f070700  exp.f.rn r14, r14
000a68  8f870700  exp.f.rn r15, r15
000a6c  0f080800  exp.f.rn r16, r16
000a70  0f0d0d00  exp.f.rn r26, r26
000a74  67883900  storeli.w r3, 128(r19)
000a78  67c86901  storeli.w r22, 132(r19)
000a7c  e7887901  storeli.w r23, 136(r19)
000a80  e7c84901  storeli.w r20, 140(r19)
000a84  67895900  storeli.w r5, 144(r19)
000a88  67c98901  storeli.w r24, 148(r19)
000a8c  e7899901  storeli.w r25, 152(r19)
000a90  e7c9b900  storeli.w r11, 156(r19)
000a94  678ac900  storeli.w r12, 160(r19)
000a98  67ca7900  storeli.w r7, 164(r19)
000a9c  e78a8900  storeli.w r8, 168(r19)
000aa0  e7ca9900  storeli.w r9, 172(r19)
000aa4  678be900  storeli.w r14, 176(r19)
000aa8  67cbf900  storeli.w r15, 180(r19)
000aac  e78b0901  storeli.w r16, 184(r19)
000ab0  e7cba901  storeli.w r26, 188(r19)
000ab4  e3818901  loadli.w r3,  192(r19)
000ab8  63cb8901  loadli.w r22,  196(r19)
000abc  e38b9901  loadli.w r23,  200(r19)
000ac0  63ca9901  loadli.w r20,  204(r19)
000ac4  e382a901  loadli.w r5,  208(r19)
000ac8  63cca901  loadli.w r24,  212(r19)
000acc  e38cb901  loadli.w r25,  216(r19)
000ad0  e3c5b901  loadli.w r11,  220(r19)
000ad4  6386c901  loadli.w r12,  224(r19)
000ad8  e3c3c901  loadli.w r7,  228(r19)
000adc  6384d901  loadli.w r8,  232(r19)
000ae0  e3c4d901  loadli.w r9,  236(r19)
000ae4  6387e901  loadli.w r14,  240(r19)
000ae8  e3c7e901  loadli.w r15,  244(r19)
000aec  6388f901  loadli.w r16,  248(r19)
000af0  63cdf901  loadli.w r26,  252(r19)
000af4  8f810100  exp.f.rn r3, r3
000af8  0f0b0b00  exp.f.rn r22, r22
000afc  8f8b0b00  exp.f.rn r23, r23
000b00  0f0a0a00  exp.f.rn r20, r20
000b04  8f820200  exp.f.rn r5, r5
000b08  0f0c0c00  exp.f.rn r24, r24
000b0c  8f8c0c00  exp.f.rn r25, r25
000b10  8f850500  exp.f.rn r11, r11
000b14  0f060600  exp.f.rn r12, r12
000b18  8f830300  exp.f.rn r7, r7
000b1c  0f040400  exp.f.rn r8, r8
000b20  8f840400  exp.f.rn r9, r9
000b24  0f070700  exp.f.rn r14, r14
000b28  8f870700  exp.f.rn r15, r15
000b2c  0f080800  exp.f.rn r16, r16
000b30  0f0d0d00  exp.f.rn r26, r26
000b34  678c3900  storeli.w r3, 192(r19)
000b38  67cc6901  storeli.w r22, 196(r19)
000b3c  e78c7901  storeli.w r23, 200(r19)
000b40  e7cc4901  storeli.w r20, 204(r19)
000b44  678d5900  storeli.w r5, 208(r19)
000b48  67cd8901  storeli.w r24, 212(r19)
000b4c  e78d9901  storeli.w r25, 216(r19)
000b50  e7cdb900  storeli.w r11, 220(r19)
000b54  678ec900  storeli.w r12, 224(r19)
000b58  67ce7900  storeli.w r7, 228(r19)
000b5c  e78e8900  storeli.w r8, 232(r19)
000b60  e7ce9900  storeli.w r9, 236(r19)
000b64  678fe900  storeli.w r14, 240(r19)
000b68  67cff900  storeli.w r15, 244(r19)
000b6c  e78f0901  storeli.w r16, 248(r19)
000b70  e7cfa901  storeli.w r26, 252(r19)
000b74  00a00000  mfence { lm }
000b78  c2130fe2  vload_mask16.mz vr7{mr1}, 1792(r30)
000b7c  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
000b80  9f018fd5  addli r3, r30, -5440
000b84  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
000b88  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000b8c  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
000b90  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
000b94  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000b98  9f018fd4  addli r3, r30, -5568
000b9c  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000ba0  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
000ba4  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000ba8  9f010fd5  addli r3, r30, -5504
000bac  92910002  vadd.f.mz.rn vr3{mr1}, r1, vr0
000bb0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
000bb4  9f018fd4  addli r3, r30, -5568
000bb8  16901302  vadd.f.mz.rn vr0{mr1}, vr7, vr1
000bbc  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000bc0  9f010fd7  addli r3, r30, -5248
000bc4  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
000bc8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000bcc  9f018fd5  addli r3, r30, -5440
000bd0  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000bd4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000bd8  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000bdc  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
000be0  9f010fd6  addli r3, r30, -5376
000be4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000be8  00a00000  mfence { lm }
000bec  e3810900  loadli.w r3,  0(r19)
000bf0  e3c20900  loadli.w r5,  4(r19)
000bf4  e3831900  loadli.w r7,  8(r19)
000bf8  63c41900  loadli.w r8,  12(r19)
000bfc  e3842900  loadli.w r9,  16(r19)
000c00  e3c52900  loadli.w r11,  20(r19)
000c04  63863900  loadli.w r12,  24(r19)
000c08  63c73900  loadli.w r14,  28(r19)
000c0c  e3874900  loadli.w r15,  32(r19)
000c10  63c84900  loadli.w r16,  36(r19)
000c14  638a5900  loadli.w r20,  40(r19)
000c18  63cb5900  loadli.w r22,  44(r19)
000c1c  e38b6900  loadli.w r23,  48(r19)
000c20  63cc6900  loadli.w r24,  52(r19)
000c24  e38c7900  loadli.w r25,  56(r19)
000c28  63cd7900  loadli.w r26,  60(r19)
000c2c  8f810100  exp.f.rn r3, r3
000c30  8f820200  exp.f.rn r5, r5
000c34  8f830300  exp.f.rn r7, r7
000c38  0f040400  exp.f.rn r8, r8
000c3c  8f840400  exp.f.rn r9, r9
000c40  8f850500  exp.f.rn r11, r11
000c44  0f060600  exp.f.rn r12, r12
000c48  0f070700  exp.f.rn r14, r14
000c4c  8f870700  exp.f.rn r15, r15
000c50  0f080800  exp.f.rn r16, r16
000c54  0f0a0a00  exp.f.rn r20, r20
000c58  0f0b0b00  exp.f.rn r22, r22
000c5c  8f8b0b00  exp.f.rn r23, r23
000c60  0f0c0c00  exp.f.rn r24, r24
000c64  8f8c0c00  exp.f.rn r25, r25
000c68  0f0d0d00  exp.f.rn r26, r26
000c6c  67803900  storeli.w r3, 0(r19)
000c70  67c05900  storeli.w r5, 4(r19)
000c74  e7807900  storeli.w r7, 8(r19)
000c78  e7c08900  storeli.w r8, 12(r19)
000c7c  67819900  storeli.w r9, 16(r19)
000c80  67c1b900  storeli.w r11, 20(r19)
000c84  e781c900  storeli.w r12, 24(r19)
000c88  e7c1e900  storeli.w r14, 28(r19)
000c8c  6782f900  storeli.w r15, 32(r19)
000c90  67c20901  storeli.w r16, 36(r19)
000c94  e7824901  storeli.w r20, 40(r19)
000c98  e7c26901  storeli.w r22, 44(r19)
000c9c  67837901  storeli.w r23, 48(r19)
000ca0  67c38901  storeli.w r24, 52(r19)
000ca4  e7839901  storeli.w r25, 56(r19)
000ca8  e7c3a901  storeli.w r26, 60(r19)
000cac  e3818900  loadli.w r3,  64(r19)
000cb0  e3c28900  loadli.w r5,  68(r19)
000cb4  e3839900  loadli.w r7,  72(r19)
000cb8  63c49900  loadli.w r8,  76(r19)
000cbc  e384a900  loadli.w r9,  80(r19)
000cc0  e3c5a900  loadli.w r11,  84(r19)
000cc4  6386b900  loadli.w r12,  88(r19)
000cc8  63c7b900  loadli.w r14,  92(r19)
000ccc  e387c900  loadli.w r15,  96(r19)
000cd0  63c8c900  loadli.w r16,  100(r19)
000cd4  638ad900  loadli.w r20,  104(r19)
000cd8  63cbd900  loadli.w r22,  108(r19)
000cdc  e38be900  loadli.w r23,  112(r19)
000ce0  63cce900  loadli.w r24,  116(r19)
000ce4  e38cf900  loadli.w r25,  120(r19)
000ce8  63cdf900  loadli.w r26,  124(r19)
000cec  8f810100  exp.f.rn r3, r3
000cf0  8f820200  exp.f.rn r5, r5
000cf4  8f830300  exp.f.rn r7, r7
000cf8  0f040400  exp.f.rn r8, r8
000cfc  8f840400  exp.f.rn r9, r9
000d00  8f850500  exp.f.rn r11, r11
000d04  0f060600  exp.f.rn r12, r12
000d08  0f070700  exp.f.rn r14, r14
000d0c  8f870700  exp.f.rn r15, r15
000d10  0f080800  exp.f.rn r16, r16
000d14  0f0a0a00  exp.f.rn r20, r20
000d18  0f0b0b00  exp.f.rn r22, r22
000d1c  8f8b0b00  exp.f.rn r23, r23
000d20  0f0c0c00  exp.f.rn r24, r24
000d24  8f8c0c00  exp.f.rn r25, r25
000d28  0f0d0d00  exp.f.rn r26, r26
000d2c  67843900  storeli.w r3, 64(r19)
000d30  67c45900  storeli.w r5, 68(r19)
000d34  e7847900  storeli.w r7, 72(r19)
000d38  e7c48900  storeli.w r8, 76(r19)
000d3c  67859900  storeli.w r9, 80(r19)
000d40  67c5b900  storeli.w r11, 84(r19)
000d44  e785c900  storeli.w r12, 88(r19)
000d48  e7c5e900  storeli.w r14, 92(r19)
000d4c  6786f900  storeli.w r15, 96(r19)
000d50  67c60901  storeli.w r16, 100(r19)
000d54  e7864901  storeli.w r20, 104(r19)
000d58  e7c66901  storeli.w r22, 108(r19)
000d5c  67877901  storeli.w r23, 112(r19)
000d60  67c78901  storeli.w r24, 116(r19)
000d64  e7879901  storeli.w r25, 120(r19)
000d68  e7c7a901  storeli.w r26, 124(r19)
000d6c  e3810901  loadli.w r3,  128(r19)
000d70  e3c20901  loadli.w r5,  132(r19)
000d74  e3831901  loadli.w r7,  136(r19)
000d78  63c41901  loadli.w r8,  140(r19)
000d7c  e3842901  loadli.w r9,  144(r19)
000d80  e3c52901  loadli.w r11,  148(r19)
000d84  63863901  loadli.w r12,  152(r19)
000d88  63c73901  loadli.w r14,  156(r19)
000d8c  e3874901  loadli.w r15,  160(r19)
000d90  63c84901  loadli.w r16,  164(r19)
000d94  638a5901  loadli.w r20,  168(r19)
000d98  63cb5901  loadli.w r22,  172(r19)
000d9c  e38b6901  loadli.w r23,  176(r19)
000da0  63cc6901  loadli.w r24,  180(r19)
000da4  e38c7901  loadli.w r25,  184(r19)
000da8  63cd7901  loadli.w r26,  188(r19)
000dac  8f810100  exp.f.rn r3, r3
000db0  8f820200  exp.f.rn r5, r5
000db4  8f830300  exp.f.rn r7, r7
000db8  0f040400  exp.f.rn r8, r8
000dbc  8f840400  exp.f.rn r9, r9
000dc0  8f850500  exp.f.rn r11, r11
000dc4  0f060600  exp.f.rn r12, r12
000dc8  0f070700  exp.f.rn r14, r14
000dcc  8f870700  exp.f.rn r15, r15
000dd0  0f080800  exp.f.rn r16, r16
000dd4  0f0a0a00  exp.f.rn r20, r20
000dd8  0f0b0b00  exp.f.rn r22, r22
000ddc  8f8b0b00  exp.f.rn r23, r23
000de0  0f0c0c00  exp.f.rn r24, r24
000de4  8f8c0c00  exp.f.rn r25, r25
000de8  0f0d0d00  exp.f.rn r26, r26
000dec  67883900  storeli.w r3, 128(r19)
000df0  67c85900  storeli.w r5, 132(r19)
000df4  e7887900  storeli.w r7, 136(r19)
000df8  e7c88900  storeli.w r8, 140(r19)
000dfc  67899900  storeli.w r9, 144(r19)
000e00  67c9b900  storeli.w r11, 148(r19)
000e04  e789c900  storeli.w r12, 152(r19)
000e08  e7c9e900  storeli.w r14, 156(r19)
000e0c  678af900  storeli.w r15, 160(r19)
000e10  67ca0901  storeli.w r16, 164(r19)
000e14  e78a4901  storeli.w r20, 168(r19)
000e18  e7ca6901  storeli.w r22, 172(r19)
000e1c  678b7901  storeli.w r23, 176(r19)
000e20  67cb8901  storeli.w r24, 180(r19)
000e24  e78b9901  storeli.w r25, 184(r19)
000e28  e7cba901  storeli.w r26, 188(r19)
000e2c  e3818901  loadli.w r3,  192(r19)
000e30  e3c28901  loadli.w r5,  196(r19)
000e34  e3839901  loadli.w r7,  200(r19)
000e38  63c49901  loadli.w r8,  204(r19)
000e3c  e384a901  loadli.w r9,  208(r19)
000e40  e3c5a901  loadli.w r11,  212(r19)
000e44  6386b901  loadli.w r12,  216(r19)
000e48  63c7b901  loadli.w r14,  220(r19)
000e4c  e387c901  loadli.w r15,  224(r19)
000e50  63c8c901  loadli.w r16,  228(r19)
000e54  638ad901  loadli.w r20,  232(r19)
000e58  63cbd901  loadli.w r22,  236(r19)
000e5c  e38be901  loadli.w r23,  240(r19)
000e60  63cce901  loadli.w r24,  244(r19)
000e64  e38cf901  loadli.w r25,  248(r19)
000e68  63cdf901  loadli.w r26,  252(r19)
000e6c  8f810100  exp.f.rn r3, r3
000e70  8f820200  exp.f.rn r5, r5
000e74  8f830300  exp.f.rn r7, r7
000e78  0f040400  exp.f.rn r8, r8
000e7c  8f840400  exp.f.rn r9, r9
000e80  8f850500  exp.f.rn r11, r11
000e84  0f060600  exp.f.rn r12, r12
000e88  0f070700  exp.f.rn r14, r14
000e8c  8f870700  exp.f.rn r15, r15
000e90  0f080800  exp.f.rn r16, r16
000e94  0f0a0a00  exp.f.rn r20, r20
000e98  0f0b0b00  exp.f.rn r22, r22
000e9c  8f8b0b00  exp.f.rn r23, r23
000ea0  0f0c0c00  exp.f.rn r24, r24
000ea4  8f8c0c00  exp.f.rn r25, r25
000ea8  0f0d0d00  exp.f.rn r26, r26
000eac  678c3900  storeli.w r3, 192(r19)
000eb0  67cc5900  storeli.w r5, 196(r19)
000eb4  e78c7900  storeli.w r7, 200(r19)
000eb8  e7cc8900  storeli.w r8, 204(r19)
000ebc  678d9900  storeli.w r9, 208(r19)
000ec0  67cdb900  storeli.w r11, 212(r19)
000ec4  e78dc900  storeli.w r12, 216(r19)
000ec8  e7cde900  storeli.w r14, 220(r19)
000ecc  678ef900  storeli.w r15, 224(r19)
000ed0  67ce0901  storeli.w r16, 228(r19)
000ed4  e78e4901  storeli.w r20, 232(r19)
000ed8  e7ce6901  storeli.w r22, 236(r19)
000edc  678f7901  storeli.w r23, 240(r19)
000ee0  67cf8901  storeli.w r24, 244(r19)
000ee4  e78f9901  storeli.w r25, 248(r19)
000ee8  e7cfa901  storeli.w r26, 252(r19)
000eec  00a00000  mfence { lm }
000ef0  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000ef4  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
000ef8  9f010fd7  addli r3, r30, -5248
000efc  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f00  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000f04  9f010fd6  addli r3, r30, -5376
000f08  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
000f0c  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
000f10  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
000f14  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000f18  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
000f1c  9f018fdd  addli r3, r30, -4416
000f20  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000f24  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f28  9f010fdd  addli r3, r30, -4480
000f2c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f30  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000f34  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f38  9f010fd4  addli r3, r30, -5632
000f3c  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000f40  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f44  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000f48  9f018fd6  addli r3, r30, -5312
000f4c  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
000f50  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f54  9f010fdd  addli r3, r30, -4480
000f58  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000f5c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f60  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000f64  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000f68  9f010fd8  addli r3, r30, -5120
000f6c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f70  00a00000  mfence { lm }
000f74  e3810900  loadli.w r3,  0(r19)
000f78  e3c20900  loadli.w r5,  4(r19)
000f7c  e3831900  loadli.w r7,  8(r19)
000f80  63c41900  loadli.w r8,  12(r19)
000f84  e3842900  loadli.w r9,  16(r19)
000f88  e3c52900  loadli.w r11,  20(r19)
000f8c  63863900  loadli.w r12,  24(r19)
000f90  63c73900  loadli.w r14,  28(r19)
000f94  e3874900  loadli.w r15,  32(r19)
000f98  63c84900  loadli.w r16,  36(r19)
000f9c  638a5900  loadli.w r20,  40(r19)
000fa0  63cb5900  loadli.w r22,  44(r19)
000fa4  e38b6900  loadli.w r23,  48(r19)
000fa8  63cc6900  loadli.w r24,  52(r19)
000fac  e38c7900  loadli.w r25,  56(r19)
000fb0  63cd7900  loadli.w r26,  60(r19)
000fb4  8f810100  exp.f.rn r3, r3
000fb8  8f820200  exp.f.rn r5, r5
000fbc  8f830300  exp.f.rn r7, r7
000fc0  0f040400  exp.f.rn r8, r8
000fc4  8f840400  exp.f.rn r9, r9
000fc8  8f850500  exp.f.rn r11, r11
000fcc  0f060600  exp.f.rn r12, r12
000fd0  0f070700  exp.f.rn r14, r14
000fd4  8f870700  exp.f.rn r15, r15
000fd8  0f080800  exp.f.rn r16, r16
000fdc  0f0a0a00  exp.f.rn r20, r20
000fe0  0f0b0b00  exp.f.rn r22, r22
000fe4  8f8b0b00  exp.f.rn r23, r23
000fe8  0f0c0c00  exp.f.rn r24, r24
000fec  8f8c0c00  exp.f.rn r25, r25
000ff0  0f0d0d00  exp.f.rn r26, r26
000ff4  67803900  storeli.w r3, 0(r19)
000ff8  67c05900  storeli.w r5, 4(r19)
000ffc  e7807900  storeli.w r7, 8(r19)
001000  e7c08900  storeli.w r8, 12(r19)
001004  67819900  storeli.w r9, 16(r19)
001008  67c1b900  storeli.w r11, 20(r19)
00100c  e781c900  storeli.w r12, 24(r19)
001010  e7c1e900  storeli.w r14, 28(r19)
001014  6782f900  storeli.w r15, 32(r19)
001018  67c20901  storeli.w r16, 36(r19)
00101c  e7824901  storeli.w r20, 40(r19)
001020  e7c26901  storeli.w r22, 44(r19)
001024  67837901  storeli.w r23, 48(r19)
001028  67c38901  storeli.w r24, 52(r19)
00102c  e7839901  storeli.w r25, 56(r19)
001030  e7c3a901  storeli.w r26, 60(r19)
001034  e3818900  loadli.w r3,  64(r19)
001038  e3c28900  loadli.w r5,  68(r19)
00103c  e3839900  loadli.w r7,  72(r19)
001040  63c49900  loadli.w r8,  76(r19)
001044  e384a900  loadli.w r9,  80(r19)
001048  e3c5a900  loadli.w r11,  84(r19)
00104c  6386b900  loadli.w r12,  88(r19)
001050  63c7b900  loadli.w r14,  92(r19)
001054  e387c900  loadli.w r15,  96(r19)
001058  63c8c900  loadli.w r16,  100(r19)
00105c  638ad900  loadli.w r20,  104(r19)
001060  63cbd900  loadli.w r22,  108(r19)
001064  e38be900  loadli.w r23,  112(r19)
001068  63cce900  loadli.w r24,  116(r19)
00106c  e38cf900  loadli.w r25,  120(r19)
001070  63cdf900  loadli.w r26,  124(r19)
001074  8f810100  exp.f.rn r3, r3
001078  8f820200  exp.f.rn r5, r5
00107c  8f830300  exp.f.rn r7, r7
001080  0f040400  exp.f.rn r8, r8
001084  8f840400  exp.f.rn r9, r9
001088  8f850500  exp.f.rn r11, r11
00108c  0f060600  exp.f.rn r12, r12
001090  0f070700  exp.f.rn r14, r14
001094  8f870700  exp.f.rn r15, r15
001098  0f080800  exp.f.rn r16, r16
00109c  0f0a0a00  exp.f.rn r20, r20
0010a0  0f0b0b00  exp.f.rn r22, r22
0010a4  8f8b0b00  exp.f.rn r23, r23
0010a8  0f0c0c00  exp.f.rn r24, r24
0010ac  8f8c0c00  exp.f.rn r25, r25
0010b0  0f0d0d00  exp.f.rn r26, r26
0010b4  67843900  storeli.w r3, 64(r19)
0010b8  67c45900  storeli.w r5, 68(r19)
0010bc  e7847900  storeli.w r7, 72(r19)
0010c0  e7c48900  storeli.w r8, 76(r19)
0010c4  67859900  storeli.w r9, 80(r19)
0010c8  67c5b900  storeli.w r11, 84(r19)
0010cc  e785c900  storeli.w r12, 88(r19)
0010d0  e7c5e900  storeli.w r14, 92(r19)
0010d4  6786f900  storeli.w r15, 96(r19)
0010d8  67c60901  storeli.w r16, 100(r19)
0010dc  e7864901  storeli.w r20, 104(r19)
0010e0  e7c66901  storeli.w r22, 108(r19)
0010e4  67877901  storeli.w r23, 112(r19)
0010e8  67c78901  storeli.w r24, 116(r19)
0010ec  e7879901  storeli.w r25, 120(r19)
0010f0  e7c7a901  storeli.w r26, 124(r19)
0010f4  e3810901  loadli.w r3,  128(r19)
0010f8  e3c20901  loadli.w r5,  132(r19)
0010fc  e3831901  loadli.w r7,  136(r19)
001100  63c41901  loadli.w r8,  140(r19)
001104  e3842901  loadli.w r9,  144(r19)
001108  e3c52901  loadli.w r11,  148(r19)
00110c  63863901  loadli.w r12,  152(r19)
001110  63c73901  loadli.w r14,  156(r19)
001114  e3874901  loadli.w r15,  160(r19)
001118  63c84901  loadli.w r16,  164(r19)
00111c  638a5901  loadli.w r20,  168(r19)
001120  63cb5901  loadli.w r22,  172(r19)
001124  e38b6901  loadli.w r23,  176(r19)
001128  63cc6901  loadli.w r24,  180(r19)
00112c  e38c7901  loadli.w r25,  184(r19)
001130  63cd7901  loadli.w r26,  188(r19)
001134  8f810100  exp.f.rn r3, r3
001138  8f820200  exp.f.rn r5, r5
00113c  8f830300  exp.f.rn r7, r7
001140  0f040400  exp.f.rn r8, r8
001144  8f840400  exp.f.rn r9, r9
001148  8f850500  exp.f.rn r11, r11
00114c  0f060600  exp.f.rn r12, r12
001150  0f070700  exp.f.rn r14, r14
001154  8f870700  exp.f.rn r15, r15
001158  0f080800  exp.f.rn r16, r16
00115c  0f0a0a00  exp.f.rn r20, r20
001160  0f0b0b00  exp.f.rn r22, r22
001164  8f8b0b00  exp.f.rn r23, r23
001168  0f0c0c00  exp.f.rn r24, r24
00116c  8f8c0c00  exp.f.rn r25, r25
001170  0f0d0d00  exp.f.rn r26, r26
001174  67883900  storeli.w r3, 128(r19)
001178  67c85900  storeli.w r5, 132(r19)
00117c  e7887900  storeli.w r7, 136(r19)
001180  e7c88900  storeli.w r8, 140(r19)
001184  67899900  storeli.w r9, 144(r19)
001188  67c9b900  storeli.w r11, 148(r19)
00118c  e789c900  storeli.w r12, 152(r19)
001190  e7c9e900  storeli.w r14, 156(r19)
001194  678af900  storeli.w r15, 160(r19)
001198  67ca0901  storeli.w r16, 164(r19)
00119c  e78a4901  storeli.w r20, 168(r19)
0011a0  e7ca6901  storeli.w r22, 172(r19)
0011a4  678b7901  storeli.w r23, 176(r19)
0011a8  67cb8901  storeli.w r24, 180(r19)
0011ac  e78b9901  storeli.w r25, 184(r19)
0011b0  e7cba901  storeli.w r26, 188(r19)
0011b4  e3818901  loadli.w r3,  192(r19)
0011b8  e3c28901  loadli.w r5,  196(r19)
0011bc  e3839901  loadli.w r7,  200(r19)
0011c0  63c49901  loadli.w r8,  204(r19)
0011c4  e384a901  loadli.w r9,  208(r19)
0011c8  e3c5a901  loadli.w r11,  212(r19)
0011cc  6386b901  loadli.w r12,  216(r19)
0011d0  63c7b901  loadli.w r14,  220(r19)
0011d4  e387c901  loadli.w r15,  224(r19)
0011d8  63c8c901  loadli.w r16,  228(r19)
0011dc  638ad901  loadli.w r20,  232(r19)
0011e0  63cbd901  loadli.w r22,  236(r19)
0011e4  e38be901  loadli.w r23,  240(r19)
0011e8  63cce901  loadli.w r24,  244(r19)
0011ec  e38cf901  loadli.w r25,  248(r19)
0011f0  63cdf901  loadli.w r26,  252(r19)
0011f4  8f810100  exp.f.rn r3, r3
0011f8  8f820200  exp.f.rn r5, r5
0011fc  8f830300  exp.f.rn r7, r7
001200  0f040400  exp.f.rn r8, r8
001204  8f840400  exp.f.rn r9, r9
001208  8f850500  exp.f.rn r11, r11
00120c  0f060600  exp.f.rn r12, r12
001210  0f070700  exp.f.rn r14, r14
001214  8f870700  exp.f.rn r15, r15
001218  0f080800  exp.f.rn r16, r16
00121c  0f0a0a00  exp.f.rn r20, r20
001220  0f0b0b00  exp.f.rn r22, r22
001224  8f8b0b00  exp.f.rn r23, r23
001228  0f0c0c00  exp.f.rn r24, r24
00122c  8f8c0c00  exp.f.rn r25, r25
001230  0f0d0d00  exp.f.rn r26, r26
001234  678c3900  storeli.w r3, 192(r19)
001238  67cc5900  storeli.w r5, 196(r19)
00123c  e78c7900  storeli.w r7, 200(r19)
001240  e7cc8900  storeli.w r8, 204(r19)
001244  678d9900  storeli.w r9, 208(r19)
001248  67cdb900  storeli.w r11, 212(r19)
00124c  e78dc900  storeli.w r12, 216(r19)
001250  e7cde900  storeli.w r14, 220(r19)
001254  678ef900  storeli.w r15, 224(r19)
001258  67ce0901  storeli.w r16, 228(r19)
00125c  e78e4901  storeli.w r20, 232(r19)
001260  e7ce6901  storeli.w r22, 236(r19)
001264  678f7901  storeli.w r23, 240(r19)
001268  67cf8901  storeli.w r24, 244(r19)
00126c  e78f9901  storeli.w r25, 248(r19)
001270  e7cfa901  storeli.w r26, 252(r19)
001274  00a00000  mfence { lm }
001278  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00127c  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
001280  9f018fdd  addli r3, r30, -4416
001284  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001288  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
00128c  9f010fd8  addli r3, r30, -5120
001290  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
001294  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
001298  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
00129c  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0012a0  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
0012a4  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0012a8  9f010fcf  addli r3, r30, -6272
0012ac  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0012b0  9f018fd8  addli r3, r30, -5056
0012b4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0012b8  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
0012bc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0012c0  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0012c4  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
0012c8  9f018fd9  addli r3, r30, -4928
0012cc  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0012d0  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
0012d4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0012d8  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0012dc  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0012e0  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0012e4  9f018fda  addli r3, r30, -4800
0012e8  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0012ec  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0012f0  00a00000  mfence { lm }
0012f4  e3810900  loadli.w r3,  0(r19)
0012f8  e3c20900  loadli.w r5,  4(r19)
0012fc  e3831900  loadli.w r7,  8(r19)
001300  63c41900  loadli.w r8,  12(r19)
001304  e3842900  loadli.w r9,  16(r19)
001308  e3c52900  loadli.w r11,  20(r19)
00130c  63863900  loadli.w r12,  24(r19)
001310  63c73900  loadli.w r14,  28(r19)
001314  e3874900  loadli.w r15,  32(r19)
001318  63c84900  loadli.w r16,  36(r19)
00131c  638a5900  loadli.w r20,  40(r19)
001320  63cb5900  loadli.w r22,  44(r19)
001324  e38b6900  loadli.w r23,  48(r19)
001328  63cc6900  loadli.w r24,  52(r19)
00132c  e38c7900  loadli.w r25,  56(r19)
001330  63cd7900  loadli.w r26,  60(r19)
001334  8f810100  exp.f.rn r3, r3
001338  8f820200  exp.f.rn r5, r5
00133c  8f830300  exp.f.rn r7, r7
001340  0f040400  exp.f.rn r8, r8
001344  8f840400  exp.f.rn r9, r9
001348  8f850500  exp.f.rn r11, r11
00134c  0f060600  exp.f.rn r12, r12
001350  0f070700  exp.f.rn r14, r14
001354  8f870700  exp.f.rn r15, r15
001358  0f080800  exp.f.rn r16, r16
00135c  0f0a0a00  exp.f.rn r20, r20
001360  0f0b0b00  exp.f.rn r22, r22
001364  8f8b0b00  exp.f.rn r23, r23
001368  0f0c0c00  exp.f.rn r24, r24
00136c  8f8c0c00  exp.f.rn r25, r25
001370  0f0d0d00  exp.f.rn r26, r26
001374  67803900  storeli.w r3, 0(r19)
001378  67c05900  storeli.w r5, 4(r19)
00137c  e7807900  storeli.w r7, 8(r19)
001380  e7c08900  storeli.w r8, 12(r19)
001384  67819900  storeli.w r9, 16(r19)
001388  67c1b900  storeli.w r11, 20(r19)
00138c  e781c900  storeli.w r12, 24(r19)
001390  e7c1e900  storeli.w r14, 28(r19)
001394  6782f900  storeli.w r15, 32(r19)
001398  67c20901  storeli.w r16, 36(r19)
00139c  e7824901  storeli.w r20, 40(r19)
0013a0  e7c26901  storeli.w r22, 44(r19)
0013a4  67837901  storeli.w r23, 48(r19)
0013a8  67c38901  storeli.w r24, 52(r19)
0013ac  e7839901  storeli.w r25, 56(r19)
0013b0  e7c3a901  storeli.w r26, 60(r19)
0013b4  e3818900  loadli.w r3,  64(r19)
0013b8  e3c28900  loadli.w r5,  68(r19)
0013bc  e3839900  loadli.w r7,  72(r19)
0013c0  63c49900  loadli.w r8,  76(r19)
0013c4  e384a900  loadli.w r9,  80(r19)
0013c8  e3c5a900  loadli.w r11,  84(r19)
0013cc  6386b900  loadli.w r12,  88(r19)
0013d0  63c7b900  loadli.w r14,  92(r19)
0013d4  e387c900  loadli.w r15,  96(r19)
0013d8  63c8c900  loadli.w r16,  100(r19)
0013dc  638ad900  loadli.w r20,  104(r19)
0013e0  63cbd900  loadli.w r22,  108(r19)
0013e4  e38be900  loadli.w r23,  112(r19)
0013e8  63cce900  loadli.w r24,  116(r19)
0013ec  e38cf900  loadli.w r25,  120(r19)
0013f0  63cdf900  loadli.w r26,  124(r19)
0013f4  8f810100  exp.f.rn r3, r3
0013f8  8f820200  exp.f.rn r5, r5
0013fc  8f830300  exp.f.rn r7, r7
001400  0f040400  exp.f.rn r8, r8
001404  8f840400  exp.f.rn r9, r9
001408  8f850500  exp.f.rn r11, r11
00140c  0f060600  exp.f.rn r12, r12
001410  0f070700  exp.f.rn r14, r14
001414  8f870700  exp.f.rn r15, r15
001418  0f080800  exp.f.rn r16, r16
00141c  0f0a0a00  exp.f.rn r20, r20
001420  0f0b0b00  exp.f.rn r22, r22
001424  8f8b0b00  exp.f.rn r23, r23
001428  0f0c0c00  exp.f.rn r24, r24
00142c  8f8c0c00  exp.f.rn r25, r25
001430  0f0d0d00  exp.f.rn r26, r26
001434  67843900  storeli.w r3, 64(r19)
001438  67c45900  storeli.w r5, 68(r19)
00143c  e7847900  storeli.w r7, 72(r19)
001440  e7c48900  storeli.w r8, 76(r19)
001444  67859900  storeli.w r9, 80(r19)
001448  67c5b900  storeli.w r11, 84(r19)
00144c  e785c900  storeli.w r12, 88(r19)
001450  e7c5e900  storeli.w r14, 92(r19)
001454  6786f900  storeli.w r15, 96(r19)
001458  67c60901  storeli.w r16, 100(r19)
00145c  e7864901  storeli.w r20, 104(r19)
001460  e7c66901  storeli.w r22, 108(r19)
001464  67877901  storeli.w r23, 112(r19)
001468  67c78901  storeli.w r24, 116(r19)
00146c  e7879901  storeli.w r25, 120(r19)
001470  e7c7a901  storeli.w r26, 124(r19)
001474  e3810901  loadli.w r3,  128(r19)
001478  e3c20901  loadli.w r5,  132(r19)
00147c  e3831901  loadli.w r7,  136(r19)
001480  63c41901  loadli.w r8,  140(r19)
001484  e3842901  loadli.w r9,  144(r19)
001488  e3c52901  loadli.w r11,  148(r19)
00148c  63863901  loadli.w r12,  152(r19)
001490  63c73901  loadli.w r14,  156(r19)
001494  e3874901  loadli.w r15,  160(r19)
001498  63c84901  loadli.w r16,  164(r19)
00149c  638a5901  loadli.w r20,  168(r19)
0014a0  63cb5901  loadli.w r22,  172(r19)
0014a4  e38b6901  loadli.w r23,  176(r19)
0014a8  63cc6901  loadli.w r24,  180(r19)
0014ac  e38c7901  loadli.w r25,  184(r19)
0014b0  63cd7901  loadli.w r26,  188(r19)
0014b4  8f810100  exp.f.rn r3, r3
0014b8  8f820200  exp.f.rn r5, r5
0014bc  8f830300  exp.f.rn r7, r7
0014c0  0f040400  exp.f.rn r8, r8
0014c4  8f840400  exp.f.rn r9, r9
0014c8  8f850500  exp.f.rn r11, r11
0014cc  0f060600  exp.f.rn r12, r12
0014d0  0f070700  exp.f.rn r14, r14
0014d4  8f870700  exp.f.rn r15, r15
0014d8  0f080800  exp.f.rn r16, r16
0014dc  0f0a0a00  exp.f.rn r20, r20
0014e0  0f0b0b00  exp.f.rn r22, r22
0014e4  8f8b0b00  exp.f.rn r23, r23
0014e8  0f0c0c00  exp.f.rn r24, r24
0014ec  8f8c0c00  exp.f.rn r25, r25
0014f0  0f0d0d00  exp.f.rn r26, r26
0014f4  67883900  storeli.w r3, 128(r19)
0014f8  67c85900  storeli.w r5, 132(r19)
0014fc  e7887900  storeli.w r7, 136(r19)
001500  e7c88900  storeli.w r8, 140(r19)
001504  67899900  storeli.w r9, 144(r19)
001508  67c9b900  storeli.w r11, 148(r19)
00150c  e789c900  storeli.w r12, 152(r19)
001510  e7c9e900  storeli.w r14, 156(r19)
001514  678af900  storeli.w r15, 160(r19)
001518  67ca0901  storeli.w r16, 164(r19)
00151c  e78a4901  storeli.w r20, 168(r19)
001520  e7ca6901  storeli.w r22, 172(r19)
001524  678b7901  storeli.w r23, 176(r19)
001528  67cb8901  storeli.w r24, 180(r19)
00152c  e78b9901  storeli.w r25, 184(r19)
001530  e7cba901  storeli.w r26, 188(r19)
001534  e3818901  loadli.w r3,  192(r19)
001538  e3c28901  loadli.w r5,  196(r19)
00153c  e3839901  loadli.w r7,  200(r19)
001540  63c49901  loadli.w r8,  204(r19)
001544  e384a901  loadli.w r9,  208(r19)
001548  e3c5a901  loadli.w r11,  212(r19)
00154c  6386b901  loadli.w r12,  216(r19)
001550  63c7b901  loadli.w r14,  220(r19)
001554  e387c901  loadli.w r15,  224(r19)
001558  63c8c901  loadli.w r16,  228(r19)
00155c  638ad901  loadli.w r20,  232(r19)
001560  63cbd901  loadli.w r22,  236(r19)
001564  e38be901  loadli.w r23,  240(r19)
001568  63cce901  loadli.w r24,  244(r19)
00156c  e38cf901  loadli.w r25,  248(r19)
001570  63cdf901  loadli.w r26,  252(r19)
001574  8f810100  exp.f.rn r3, r3
001578  8f820200  exp.f.rn r5, r5
00157c  8f830300  exp.f.rn r7, r7
001580  0f040400  exp.f.rn r8, r8
001584  8f840400  exp.f.rn r9, r9
001588  8f850500  exp.f.rn r11, r11
00158c  0f060600  exp.f.rn r12, r12
001590  0f070700  exp.f.rn r14, r14
001594  8f870700  exp.f.rn r15, r15
001598  0f080800  exp.f.rn r16, r16
00159c  0f0a0a00  exp.f.rn r20, r20
0015a0  0f0b0b00  exp.f.rn r22, r22
0015a4  8f8b0b00  exp.f.rn r23, r23
0015a8  0f0c0c00  exp.f.rn r24, r24
0015ac  8f8c0c00  exp.f.rn r25, r25
0015b0  0f0d0d00  exp.f.rn r26, r26
0015b4  678c3900  storeli.w r3, 192(r19)
0015b8  67cc5900  storeli.w r5, 196(r19)
0015bc  e78c7900  storeli.w r7, 200(r19)
0015c0  e7cc8900  storeli.w r8, 204(r19)
0015c4  678d9900  storeli.w r9, 208(r19)
0015c8  67cdb900  storeli.w r11, 212(r19)
0015cc  e78dc900  storeli.w r12, 216(r19)
0015d0  e7cde900  storeli.w r14, 220(r19)
0015d4  678ef900  storeli.w r15, 224(r19)
0015d8  67ce0901  storeli.w r16, 228(r19)
0015dc  e78e4901  storeli.w r20, 232(r19)
0015e0  e7ce6901  storeli.w r22, 236(r19)
0015e4  678f7901  storeli.w r23, 240(r19)
0015e8  67cf8901  storeli.w r24, 244(r19)
0015ec  e78f9901  storeli.w r25, 248(r19)
0015f0  e7cfa901  storeli.w r26, 252(r19)
0015f4  00a00000  mfence { lm }
0015f8  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
0015fc  9f018fda  addli r3, r30, -4800
001600  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001604  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001608  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
00160c  9f018fd6  addli r3, r30, -5312
001610  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
001614  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
001618  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
00161c  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001620  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
001624  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001628  9f018fdc  addli r3, r30, -4544
00162c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001630  9f018fdb  addli r3, r30, -4672
001634  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001638  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
00163c  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001640  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001644  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
001648  9f010fdc  addli r3, r30, -4608
00164c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001650  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001654  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001658  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
00165c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001660  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
001664  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001668  00a00000  mfence { lm }
00166c  e3810900  loadli.w r3,  0(r19)
001670  e3c20900  loadli.w r5,  4(r19)
001674  e3831900  loadli.w r7,  8(r19)
001678  63c41900  loadli.w r8,  12(r19)
00167c  e3842900  loadli.w r9,  16(r19)
001680  e3c52900  loadli.w r11,  20(r19)
001684  63863900  loadli.w r12,  24(r19)
001688  63c73900  loadli.w r14,  28(r19)
00168c  e3874900  loadli.w r15,  32(r19)
001690  63c84900  loadli.w r16,  36(r19)
001694  638a5900  loadli.w r20,  40(r19)
001698  63cb5900  loadli.w r22,  44(r19)
00169c  e38b6900  loadli.w r23,  48(r19)
0016a0  63cc6900  loadli.w r24,  52(r19)
0016a4  e38c7900  loadli.w r25,  56(r19)
0016a8  63cd7900  loadli.w r26,  60(r19)
0016ac  8f810100  exp.f.rn r3, r3
0016b0  8f820200  exp.f.rn r5, r5
0016b4  8f830300  exp.f.rn r7, r7
0016b8  0f040400  exp.f.rn r8, r8
0016bc  8f840400  exp.f.rn r9, r9
0016c0  8f850500  exp.f.rn r11, r11
0016c4  0f060600  exp.f.rn r12, r12
0016c8  0f070700  exp.f.rn r14, r14
0016cc  8f870700  exp.f.rn r15, r15
0016d0  0f080800  exp.f.rn r16, r16
0016d4  0f0a0a00  exp.f.rn r20, r20
0016d8  0f0b0b00  exp.f.rn r22, r22
0016dc  8f8b0b00  exp.f.rn r23, r23
0016e0  0f0c0c00  exp.f.rn r24, r24
0016e4  8f8c0c00  exp.f.rn r25, r25
0016e8  0f0d0d00  exp.f.rn r26, r26
0016ec  67803900  storeli.w r3, 0(r19)
0016f0  67c05900  storeli.w r5, 4(r19)
0016f4  e7807900  storeli.w r7, 8(r19)
0016f8  e7c08900  storeli.w r8, 12(r19)
0016fc  67819900  storeli.w r9, 16(r19)
001700  67c1b900  storeli.w r11, 20(r19)
001704  e781c900  storeli.w r12, 24(r19)
001708  e7c1e900  storeli.w r14, 28(r19)
00170c  6782f900  storeli.w r15, 32(r19)
001710  67c20901  storeli.w r16, 36(r19)
001714  e7824901  storeli.w r20, 40(r19)
001718  e7c26901  storeli.w r22, 44(r19)
00171c  67837901  storeli.w r23, 48(r19)
001720  67c38901  storeli.w r24, 52(r19)
001724  e7839901  storeli.w r25, 56(r19)
001728  e7c3a901  storeli.w r26, 60(r19)
00172c  e3818900  loadli.w r3,  64(r19)
001730  e3c28900  loadli.w r5,  68(r19)
001734  e3839900  loadli.w r7,  72(r19)
001738  63c49900  loadli.w r8,  76(r19)
00173c  e384a900  loadli.w r9,  80(r19)
001740  e3c5a900  loadli.w r11,  84(r19)
001744  6386b900  loadli.w r12,  88(r19)
001748  63c7b900  loadli.w r14,  92(r19)
00174c  e387c900  loadli.w r15,  96(r19)
001750  63c8c900  loadli.w r16,  100(r19)
001754  638ad900  loadli.w r20,  104(r19)
001758  63cbd900  loadli.w r22,  108(r19)
00175c  e38be900  loadli.w r23,  112(r19)
001760  63cce900  loadli.w r24,  116(r19)
001764  e38cf900  loadli.w r25,  120(r19)
001768  63cdf900  loadli.w r26,  124(r19)
00176c  8f810100  exp.f.rn r3, r3
001770  8f820200  exp.f.rn r5, r5
001774  8f830300  exp.f.rn r7, r7
001778  0f040400  exp.f.rn r8, r8
00177c  8f840400  exp.f.rn r9, r9
001780  8f850500  exp.f.rn r11, r11
001784  0f060600  exp.f.rn r12, r12
001788  0f070700  exp.f.rn r14, r14
00178c  8f870700  exp.f.rn r15, r15
001790  0f080800  exp.f.rn r16, r16
001794  0f0a0a00  exp.f.rn r20, r20
001798  0f0b0b00  exp.f.rn r22, r22
00179c  8f8b0b00  exp.f.rn r23, r23
0017a0  0f0c0c00  exp.f.rn r24, r24
0017a4  8f8c0c00  exp.f.rn r25, r25
0017a8  0f0d0d00  exp.f.rn r26, r26
0017ac  67843900  storeli.w r3, 64(r19)
0017b0  67c45900  storeli.w r5, 68(r19)
0017b4  e7847900  storeli.w r7, 72(r19)
0017b8  e7c48900  storeli.w r8, 76(r19)
0017bc  67859900  storeli.w r9, 80(r19)
0017c0  67c5b900  storeli.w r11, 84(r19)
0017c4  e785c900  storeli.w r12, 88(r19)
0017c8  e7c5e900  storeli.w r14, 92(r19)
0017cc  6786f900  storeli.w r15, 96(r19)
0017d0  67c60901  storeli.w r16, 100(r19)
0017d4  e7864901  storeli.w r20, 104(r19)
0017d8  e7c66901  storeli.w r22, 108(r19)
0017dc  67877901  storeli.w r23, 112(r19)
0017e0  67c78901  storeli.w r24, 116(r19)
0017e4  e7879901  storeli.w r25, 120(r19)
0017e8  e7c7a901  storeli.w r26, 124(r19)
0017ec  e3810901  loadli.w r3,  128(r19)
0017f0  e3c20901  loadli.w r5,  132(r19)
0017f4  e3831901  loadli.w r7,  136(r19)
0017f8  63c41901  loadli.w r8,  140(r19)
0017fc  e3842901  loadli.w r9,  144(r19)
001800  e3c52901  loadli.w r11,  148(r19)
001804  63863901  loadli.w r12,  152(r19)
001808  63c73901  loadli.w r14,  156(r19)
00180c  e3874901  loadli.w r15,  160(r19)
001810  63c84901  loadli.w r16,  164(r19)
001814  638a5901  loadli.w r20,  168(r19)
001818  63cb5901  loadli.w r22,  172(r19)
00181c  e38b6901  loadli.w r23,  176(r19)
001820  63cc6901  loadli.w r24,  180(r19)
001824  e38c7901  loadli.w r25,  184(r19)
001828  63cd7901  loadli.w r26,  188(r19)
00182c  8f810100  exp.f.rn r3, r3
001830  8f820200  exp.f.rn r5, r5
001834  8f830300  exp.f.rn r7, r7
001838  0f040400  exp.f.rn r8, r8
00183c  8f840400  exp.f.rn r9, r9
001840  8f850500  exp.f.rn r11, r11
001844  0f060600  exp.f.rn r12, r12
001848  0f070700  exp.f.rn r14, r14
00184c  8f870700  exp.f.rn r15, r15
001850  0f080800  exp.f.rn r16, r16
001854  0f0a0a00  exp.f.rn r20, r20
001858  0f0b0b00  exp.f.rn r22, r22
00185c  8f8b0b00  exp.f.rn r23, r23
001860  0f0c0c00  exp.f.rn r24, r24
001864  8f8c0c00  exp.f.rn r25, r25
001868  0f0d0d00  exp.f.rn r26, r26
00186c  67883900  storeli.w r3, 128(r19)
001870  67c85900  storeli.w r5, 132(r19)
001874  e7887900  storeli.w r7, 136(r19)
001878  e7c88900  storeli.w r8, 140(r19)
00187c  67899900  storeli.w r9, 144(r19)
001880  67c9b900  storeli.w r11, 148(r19)
001884  e789c900  storeli.w r12, 152(r19)
001888  e7c9e900  storeli.w r14, 156(r19)
00188c  678af900  storeli.w r15, 160(r19)
001890  67ca0901  storeli.w r16, 164(r19)
001894  e78a4901  storeli.w r20, 168(r19)
001898  e7ca6901  storeli.w r22, 172(r19)
00189c  678b7901  storeli.w r23, 176(r19)
0018a0  67cb8901  storeli.w r24, 180(r19)
0018a4  e78b9901  storeli.w r25, 184(r19)
0018a8  e7cba901  storeli.w r26, 188(r19)
0018ac  e3818901  loadli.w r3,  192(r19)
0018b0  e3c28901  loadli.w r5,  196(r19)
0018b4  e3839901  loadli.w r7,  200(r19)
0018b8  63c49901  loadli.w r8,  204(r19)
0018bc  e384a901  loadli.w r9,  208(r19)
0018c0  e3c5a901  loadli.w r11,  212(r19)
0018c4  6386b901  loadli.w r12,  216(r19)
0018c8  63c7b901  loadli.w r14,  220(r19)
0018cc  e387c901  loadli.w r15,  224(r19)
0018d0  63c8c901  loadli.w r16,  228(r19)
0018d4  638ad901  loadli.w r20,  232(r19)
0018d8  63cbd901  loadli.w r22,  236(r19)
0018dc  e38be901  loadli.w r23,  240(r19)
0018e0  63cce901  loadli.w r24,  244(r19)
0018e4  e38cf901  loadli.w r25,  248(r19)
0018e8  63cdf901  loadli.w r26,  252(r19)
0018ec  8f810100  exp.f.rn r3, r3
0018f0  8f820200  exp.f.rn r5, r5
0018f4  8f830300  exp.f.rn r7, r7
0018f8  0f040400  exp.f.rn r8, r8
0018fc  8f840400  exp.f.rn r9, r9
001900  8f850500  exp.f.rn r11, r11
001904  0f060600  exp.f.rn r12, r12
001908  0f070700  exp.f.rn r14, r14
00190c  8f870700  exp.f.rn r15, r15
001910  0f080800  exp.f.rn r16, r16
001914  0f0a0a00  exp.f.rn r20, r20
001918  0f0b0b00  exp.f.rn r22, r22
00191c  8f8b0b00  exp.f.rn r23, r23
001920  0f0c0c00  exp.f.rn r24, r24
001924  8f8c0c00  exp.f.rn r25, r25
001928  0f0d0d00  exp.f.rn r26, r26
00192c  678c3900  storeli.w r3, 192(r19)
001930  67cc5900  storeli.w r5, 196(r19)
001934  e78c7900  storeli.w r7, 200(r19)
001938  e7cc8900  storeli.w r8, 204(r19)
00193c  678d9900  storeli.w r9, 208(r19)
001940  67cdb900  storeli.w r11, 212(r19)
001944  e78dc900  storeli.w r12, 216(r19)
001948  e7cde900  storeli.w r14, 220(r19)
00194c  678ef900  storeli.w r15, 224(r19)
001950  67ce0901  storeli.w r16, 228(r19)
001954  e78e4901  storeli.w r20, 232(r19)
001958  e7ce6901  storeli.w r22, 236(r19)
00195c  678f7901  storeli.w r23, 240(r19)
001960  67cf8901  storeli.w r24, 244(r19)
001964  e78f9901  storeli.w r25, 248(r19)
001968  e7cfa901  storeli.w r26, 252(r19)
00196c  00a00000  mfence { lm }
001970  92902002  vadd.f.mz.rn vr1{mr1}, r1, vr2
001974  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
001978  9f018fdc  addli r3, r30, -4544
00197c  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
001980  9f018fd3  addli r3, r30, -5696
001984  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001988  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
00198c  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
001990  42118fe3  vload_mask16.mz vr2{mr1}, 1984(r30)
001994  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001998  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
00199c  9f018fcf  addli r3, r30, -6208
0019a0  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0019a4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0019a8  9f018fd7  addli r3, r30, -5184
0019ac  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0019b0  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
0019b4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0019b8  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
0019bc  9f010fd9  addli r3, r30, -4992
0019c0  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
0019c4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0019c8  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
0019cc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0019d0  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0019d4  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0019d8  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
0019dc  9f010fda  addli r3, r30, -4864
0019e0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0019e4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0019e8  00a00000  mfence { lm }
0019ec  e3810900  loadli.w r3,  0(r19)
0019f0  e3c20900  loadli.w r5,  4(r19)
0019f4  e3831900  loadli.w r7,  8(r19)
0019f8  63c41900  loadli.w r8,  12(r19)
0019fc  e3842900  loadli.w r9,  16(r19)
001a00  e3c52900  loadli.w r11,  20(r19)
001a04  63863900  loadli.w r12,  24(r19)
001a08  63c73900  loadli.w r14,  28(r19)
001a0c  e3874900  loadli.w r15,  32(r19)
001a10  63c84900  loadli.w r16,  36(r19)
001a14  638a5900  loadli.w r20,  40(r19)
001a18  63cb5900  loadli.w r22,  44(r19)
001a1c  e38b6900  loadli.w r23,  48(r19)
001a20  63cc6900  loadli.w r24,  52(r19)
001a24  e38c7900  loadli.w r25,  56(r19)
001a28  63cd7900  loadli.w r26,  60(r19)
001a2c  8f810100  exp.f.rn r3, r3
001a30  8f820200  exp.f.rn r5, r5
001a34  8f830300  exp.f.rn r7, r7
001a38  0f040400  exp.f.rn r8, r8
001a3c  8f840400  exp.f.rn r9, r9
001a40  8f850500  exp.f.rn r11, r11
001a44  0f060600  exp.f.rn r12, r12
001a48  0f070700  exp.f.rn r14, r14
001a4c  8f870700  exp.f.rn r15, r15
001a50  0f080800  exp.f.rn r16, r16
001a54  0f0a0a00  exp.f.rn r20, r20
001a58  0f0b0b00  exp.f.rn r22, r22
001a5c  8f8b0b00  exp.f.rn r23, r23
001a60  0f0c0c00  exp.f.rn r24, r24
001a64  8f8c0c00  exp.f.rn r25, r25
001a68  0f0d0d00  exp.f.rn r26, r26
001a6c  67803900  storeli.w r3, 0(r19)
001a70  67c05900  storeli.w r5, 4(r19)
001a74  e7807900  storeli.w r7, 8(r19)
001a78  e7c08900  storeli.w r8, 12(r19)
001a7c  67819900  storeli.w r9, 16(r19)
001a80  67c1b900  storeli.w r11, 20(r19)
001a84  e781c900  storeli.w r12, 24(r19)
001a88  e7c1e900  storeli.w r14, 28(r19)
001a8c  6782f900  storeli.w r15, 32(r19)
001a90  67c20901  storeli.w r16, 36(r19)
001a94  e7824901  storeli.w r20, 40(r19)
001a98  e7c26901  storeli.w r22, 44(r19)
001a9c  67837901  storeli.w r23, 48(r19)
001aa0  67c38901  storeli.w r24, 52(r19)
001aa4  e7839901  storeli.w r25, 56(r19)
001aa8  e7c3a901  storeli.w r26, 60(r19)
001aac  e3818900  loadli.w r3,  64(r19)
001ab0  e3c28900  loadli.w r5,  68(r19)
001ab4  e3839900  loadli.w r7,  72(r19)
001ab8  63c49900  loadli.w r8,  76(r19)
001abc  e384a900  loadli.w r9,  80(r19)
001ac0  e3c5a900  loadli.w r11,  84(r19)
001ac4  6386b900  loadli.w r12,  88(r19)
001ac8  63c7b900  loadli.w r14,  92(r19)
001acc  e387c900  loadli.w r15,  96(r19)
001ad0  63c8c900  loadli.w r16,  100(r19)
001ad4  638ad900  loadli.w r20,  104(r19)
001ad8  63cbd900  loadli.w r22,  108(r19)
001adc  e38be900  loadli.w r23,  112(r19)
001ae0  63cce900  loadli.w r24,  116(r19)
001ae4  e38cf900  loadli.w r25,  120(r19)
001ae8  63cdf900  loadli.w r26,  124(r19)
001aec  8f810100  exp.f.rn r3, r3
001af0  8f820200  exp.f.rn r5, r5
001af4  8f830300  exp.f.rn r7, r7
001af8  0f040400  exp.f.rn r8, r8
001afc  8f840400  exp.f.rn r9, r9
001b00  8f850500  exp.f.rn r11, r11
001b04  0f060600  exp.f.rn r12, r12
001b08  0f070700  exp.f.rn r14, r14
001b0c  8f870700  exp.f.rn r15, r15
001b10  0f080800  exp.f.rn r16, r16
001b14  0f0a0a00  exp.f.rn r20, r20
001b18  0f0b0b00  exp.f.rn r22, r22
001b1c  8f8b0b00  exp.f.rn r23, r23
001b20  0f0c0c00  exp.f.rn r24, r24
001b24  8f8c0c00  exp.f.rn r25, r25
001b28  0f0d0d00  exp.f.rn r26, r26
001b2c  67843900  storeli.w r3, 64(r19)
001b30  67c45900  storeli.w r5, 68(r19)
001b34  e7847900  storeli.w r7, 72(r19)
001b38  e7c48900  storeli.w r8, 76(r19)
001b3c  67859900  storeli.w r9, 80(r19)
001b40  67c5b900  storeli.w r11, 84(r19)
001b44  e785c900  storeli.w r12, 88(r19)
001b48  e7c5e900  storeli.w r14, 92(r19)
001b4c  6786f900  storeli.w r15, 96(r19)
001b50  67c60901  storeli.w r16, 100(r19)
001b54  e7864901  storeli.w r20, 104(r19)
001b58  e7c66901  storeli.w r22, 108(r19)
001b5c  67877901  storeli.w r23, 112(r19)
001b60  67c78901  storeli.w r24, 116(r19)
001b64  e7879901  storeli.w r25, 120(r19)
001b68  e7c7a901  storeli.w r26, 124(r19)
001b6c  e3810901  loadli.w r3,  128(r19)
001b70  e3c20901  loadli.w r5,  132(r19)
001b74  e3831901  loadli.w r7,  136(r19)
001b78  63c41901  loadli.w r8,  140(r19)
001b7c  e3842901  loadli.w r9,  144(r19)
001b80  e3c52901  loadli.w r11,  148(r19)
001b84  63863901  loadli.w r12,  152(r19)
001b88  63c73901  loadli.w r14,  156(r19)
001b8c  e3874901  loadli.w r15,  160(r19)
001b90  63c84901  loadli.w r16,  164(r19)
001b94  638a5901  loadli.w r20,  168(r19)
001b98  63cb5901  loadli.w r22,  172(r19)
001b9c  e38b6901  loadli.w r23,  176(r19)
001ba0  63cc6901  loadli.w r24,  180(r19)
001ba4  e38c7901  loadli.w r25,  184(r19)
001ba8  63cd7901  loadli.w r26,  188(r19)
001bac  8f810100  exp.f.rn r3, r3
001bb0  8f820200  exp.f.rn r5, r5
001bb4  8f830300  exp.f.rn r7, r7
001bb8  0f040400  exp.f.rn r8, r8
001bbc  8f840400  exp.f.rn r9, r9
001bc0  8f850500  exp.f.rn r11, r11
001bc4  0f060600  exp.f.rn r12, r12
001bc8  0f070700  exp.f.rn r14, r14
001bcc  8f870700  exp.f.rn r15, r15
001bd0  0f080800  exp.f.rn r16, r16
001bd4  0f0a0a00  exp.f.rn r20, r20
001bd8  0f0b0b00  exp.f.rn r22, r22
001bdc  8f8b0b00  exp.f.rn r23, r23
001be0  0f0c0c00  exp.f.rn r24, r24
001be4  8f8c0c00  exp.f.rn r25, r25
001be8  0f0d0d00  exp.f.rn r26, r26
001bec  67883900  storeli.w r3, 128(r19)
001bf0  67c85900  storeli.w r5, 132(r19)
001bf4  e7887900  storeli.w r7, 136(r19)
001bf8  e7c88900  storeli.w r8, 140(r19)
001bfc  67899900  storeli.w r9, 144(r19)
001c00  67c9b900  storeli.w r11, 148(r19)
001c04  e789c900  storeli.w r12, 152(r19)
001c08  e7c9e900  storeli.w r14, 156(r19)
001c0c  678af900  storeli.w r15, 160(r19)
001c10  67ca0901  storeli.w r16, 164(r19)
001c14  e78a4901  storeli.w r20, 168(r19)
001c18  e7ca6901  storeli.w r22, 172(r19)
001c1c  678b7901  storeli.w r23, 176(r19)
001c20  67cb8901  storeli.w r24, 180(r19)
001c24  e78b9901  storeli.w r25, 184(r19)
001c28  e7cba901  storeli.w r26, 188(r19)
001c2c  e3818901  loadli.w r3,  192(r19)
001c30  e3c28901  loadli.w r5,  196(r19)
001c34  e3839901  loadli.w r7,  200(r19)
001c38  63c49901  loadli.w r8,  204(r19)
001c3c  e384a901  loadli.w r9,  208(r19)
001c40  e3c5a901  loadli.w r11,  212(r19)
001c44  6386b901  loadli.w r12,  216(r19)
001c48  63c7b901  loadli.w r14,  220(r19)
001c4c  e387c901  loadli.w r15,  224(r19)
001c50  63c8c901  loadli.w r16,  228(r19)
001c54  638ad901  loadli.w r20,  232(r19)
001c58  63cbd901  loadli.w r22,  236(r19)
001c5c  e38be901  loadli.w r23,  240(r19)
001c60  63cce901  loadli.w r24,  244(r19)
001c64  e38cf901  loadli.w r25,  248(r19)
001c68  63cdf901  loadli.w r26,  252(r19)
001c6c  8f810100  exp.f.rn r3, r3
001c70  8f820200  exp.f.rn r5, r5
001c74  8f830300  exp.f.rn r7, r7
001c78  0f040400  exp.f.rn r8, r8
001c7c  8f840400  exp.f.rn r9, r9
001c80  8f850500  exp.f.rn r11, r11
001c84  0f060600  exp.f.rn r12, r12
001c88  0f070700  exp.f.rn r14, r14
001c8c  8f870700  exp.f.rn r15, r15
001c90  0f080800  exp.f.rn r16, r16
001c94  0f0a0a00  exp.f.rn r20, r20
001c98  0f0b0b00  exp.f.rn r22, r22
001c9c  8f8b0b00  exp.f.rn r23, r23
001ca0  0f0c0c00  exp.f.rn r24, r24
001ca4  8f8c0c00  exp.f.rn r25, r25
001ca8  0f0d0d00  exp.f.rn r26, r26
001cac  678c3900  storeli.w r3, 192(r19)
001cb0  67cc5900  storeli.w r5, 196(r19)
001cb4  e78c7900  storeli.w r7, 200(r19)
001cb8  e7cc8900  storeli.w r8, 204(r19)
001cbc  678d9900  storeli.w r9, 208(r19)
001cc0  67cdb900  storeli.w r11, 212(r19)
001cc4  e78dc900  storeli.w r12, 216(r19)
001cc8  e7cde900  storeli.w r14, 220(r19)
001ccc  678ef900  storeli.w r15, 224(r19)
001cd0  67ce0901  storeli.w r16, 228(r19)
001cd4  e78e4901  storeli.w r20, 232(r19)
001cd8  e7ce6901  storeli.w r22, 236(r19)
001cdc  678f7901  storeli.w r23, 240(r19)
001ce0  67cf8901  storeli.w r24, 244(r19)
001ce4  e78f9901  storeli.w r25, 248(r19)
001ce8  e7cfa901  storeli.w r26, 252(r19)
001cec  00a00000  mfence { lm }
001cf0  c2130fe2  vload_mask16.mz vr7{mr1}, 1792(r30)
001cf4  9f010fda  addli r3, r30, -4864
001cf8  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001cfc  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
001d00  9f010fd0  addli r3, r30, -6144
001d04  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001d08  c2148fe2  vload_mask16.mz vr9{mr1}, 1856(r30)
001d0c  c2110fe3  vload_mask16.mz vr3{mr1}, 1920(r30)
001d10  42118fe3  vload_mask16.mz vr2{mr1}, 1984(r30)
001d14  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001d18  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001d1c  9f010fdb  addli r3, r30, -4736
001d20  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d24  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001d28  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001d2c  9f018fd0  addli r3, r30, -6080
001d30  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001d34  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d38  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001d3c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001d40  9f010fd3  addli r3, r30, -5760
001d44  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d48  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001d4c  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
001d50  92905002  vadd.f.mz.rn vr1{mr1}, r1, vr5
001d54  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001d58  00a00000  mfence { lm }
001d5c  e3810900  loadli.w r3,  0(r19)
001d60  e3c20900  loadli.w r5,  4(r19)
001d64  e3831900  loadli.w r7,  8(r19)
001d68  63c41900  loadli.w r8,  12(r19)
001d6c  e3842900  loadli.w r9,  16(r19)
001d70  e3c52900  loadli.w r11,  20(r19)
001d74  63863900  loadli.w r12,  24(r19)
001d78  63c73900  loadli.w r14,  28(r19)
001d7c  e3874900  loadli.w r15,  32(r19)
001d80  63c84900  loadli.w r16,  36(r19)
001d84  638a5900  loadli.w r20,  40(r19)
001d88  63cb5900  loadli.w r22,  44(r19)
001d8c  e38b6900  loadli.w r23,  48(r19)
001d90  63cc6900  loadli.w r24,  52(r19)
001d94  e38c7900  loadli.w r25,  56(r19)
001d98  63cd7900  loadli.w r26,  60(r19)
001d9c  8f810100  exp.f.rn r3, r3
001da0  8f820200  exp.f.rn r5, r5
001da4  8f830300  exp.f.rn r7, r7
001da8  0f040400  exp.f.rn r8, r8
001dac  8f840400  exp.f.rn r9, r9
001db0  8f850500  exp.f.rn r11, r11
001db4  0f060600  exp.f.rn r12, r12
001db8  0f070700  exp.f.rn r14, r14
001dbc  8f870700  exp.f.rn r15, r15
001dc0  0f080800  exp.f.rn r16, r16
001dc4  0f0a0a00  exp.f.rn r20, r20
001dc8  0f0b0b00  exp.f.rn r22, r22
001dcc  8f8b0b00  exp.f.rn r23, r23
001dd0  0f0c0c00  exp.f.rn r24, r24
001dd4  8f8c0c00  exp.f.rn r25, r25
001dd8  0f0d0d00  exp.f.rn r26, r26
001ddc  67803900  storeli.w r3, 0(r19)
001de0  67c05900  storeli.w r5, 4(r19)
001de4  e7807900  storeli.w r7, 8(r19)
001de8  e7c08900  storeli.w r8, 12(r19)
001dec  67819900  storeli.w r9, 16(r19)
001df0  67c1b900  storeli.w r11, 20(r19)
001df4  e781c900  storeli.w r12, 24(r19)
001df8  e7c1e900  storeli.w r14, 28(r19)
001dfc  6782f900  storeli.w r15, 32(r19)
001e00  67c20901  storeli.w r16, 36(r19)
001e04  e7824901  storeli.w r20, 40(r19)
001e08  e7c26901  storeli.w r22, 44(r19)
001e0c  67837901  storeli.w r23, 48(r19)
001e10  67c38901  storeli.w r24, 52(r19)
001e14  e7839901  storeli.w r25, 56(r19)
001e18  e7c3a901  storeli.w r26, 60(r19)
001e1c  e3818900  loadli.w r3,  64(r19)
001e20  e3c28900  loadli.w r5,  68(r19)
001e24  e3839900  loadli.w r7,  72(r19)
001e28  63c49900  loadli.w r8,  76(r19)
001e2c  e384a900  loadli.w r9,  80(r19)
001e30  e3c5a900  loadli.w r11,  84(r19)
001e34  6386b900  loadli.w r12,  88(r19)
001e38  63c7b900  loadli.w r14,  92(r19)
001e3c  e387c900  loadli.w r15,  96(r19)
001e40  63c8c900  loadli.w r16,  100(r19)
001e44  638ad900  loadli.w r20,  104(r19)
001e48  63cbd900  loadli.w r22,  108(r19)
001e4c  e38be900  loadli.w r23,  112(r19)
001e50  63cce900  loadli.w r24,  116(r19)
001e54  e38cf900  loadli.w r25,  120(r19)
001e58  63cdf900  loadli.w r26,  124(r19)
001e5c  8f810100  exp.f.rn r3, r3
001e60  8f820200  exp.f.rn r5, r5
001e64  8f830300  exp.f.rn r7, r7
001e68  0f040400  exp.f.rn r8, r8
001e6c  8f840400  exp.f.rn r9, r9
001e70  8f850500  exp.f.rn r11, r11
001e74  0f060600  exp.f.rn r12, r12
001e78  0f070700  exp.f.rn r14, r14
001e7c  8f870700  exp.f.rn r15, r15
001e80  0f080800  exp.f.rn r16, r16
001e84  0f0a0a00  exp.f.rn r20, r20
001e88  0f0b0b00  exp.f.rn r22, r22
001e8c  8f8b0b00  exp.f.rn r23, r23
001e90  0f0c0c00  exp.f.rn r24, r24
001e94  8f8c0c00  exp.f.rn r25, r25
001e98  0f0d0d00  exp.f.rn r26, r26
001e9c  67843900  storeli.w r3, 64(r19)
001ea0  67c45900  storeli.w r5, 68(r19)
001ea4  e7847900  storeli.w r7, 72(r19)
001ea8  e7c48900  storeli.w r8, 76(r19)
001eac  67859900  storeli.w r9, 80(r19)
001eb0  67c5b900  storeli.w r11, 84(r19)
001eb4  e785c900  storeli.w r12, 88(r19)
001eb8  e7c5e900  storeli.w r14, 92(r19)
001ebc  6786f900  storeli.w r15, 96(r19)
001ec0  67c60901  storeli.w r16, 100(r19)
001ec4  e7864901  storeli.w r20, 104(r19)
001ec8  e7c66901  storeli.w r22, 108(r19)
001ecc  67877901  storeli.w r23, 112(r19)
001ed0  67c78901  storeli.w r24, 116(r19)
001ed4  e7879901  storeli.w r25, 120(r19)
001ed8  e7c7a901  storeli.w r26, 124(r19)
001edc  e3810901  loadli.w r3,  128(r19)
001ee0  e3c20901  loadli.w r5,  132(r19)
001ee4  e3831901  loadli.w r7,  136(r19)
001ee8  63c41901  loadli.w r8,  140(r19)
001eec  e3842901  loadli.w r9,  144(r19)
001ef0  e3c52901  loadli.w r11,  148(r19)
001ef4  63863901  loadli.w r12,  152(r19)
001ef8  63c73901  loadli.w r14,  156(r19)
001efc  e3874901  loadli.w r15,  160(r19)
001f00  63c84901  loadli.w r16,  164(r19)
001f04  638a5901  loadli.w r20,  168(r19)
001f08  63cb5901  loadli.w r22,  172(r19)
001f0c  e38b6901  loadli.w r23,  176(r19)
001f10  63cc6901  loadli.w r24,  180(r19)
001f14  e38c7901  loadli.w r25,  184(r19)
001f18  63cd7901  loadli.w r26,  188(r19)
001f1c  8f810100  exp.f.rn r3, r3
001f20  8f820200  exp.f.rn r5, r5
001f24  8f830300  exp.f.rn r7, r7
001f28  0f040400  exp.f.rn r8, r8
001f2c  8f840400  exp.f.rn r9, r9
001f30  8f850500  exp.f.rn r11, r11
001f34  0f060600  exp.f.rn r12, r12
001f38  0f070700  exp.f.rn r14, r14
001f3c  8f870700  exp.f.rn r15, r15
001f40  0f080800  exp.f.rn r16, r16
001f44  0f0a0a00  exp.f.rn r20, r20
001f48  0f0b0b00  exp.f.rn r22, r22
001f4c  8f8b0b00  exp.f.rn r23, r23
001f50  0f0c0c00  exp.f.rn r24, r24
001f54  8f8c0c00  exp.f.rn r25, r25
001f58  0f0d0d00  exp.f.rn r26, r26
001f5c  67883900  storeli.w r3, 128(r19)
001f60  67c85900  storeli.w r5, 132(r19)
001f64  e7887900  storeli.w r7, 136(r19)
001f68  e7c88900  storeli.w r8, 140(r19)
001f6c  67899900  storeli.w r9, 144(r19)
001f70  67c9b900  storeli.w r11, 148(r19)
001f74  e789c900  storeli.w r12, 152(r19)
001f78  e7c9e900  storeli.w r14, 156(r19)
001f7c  678af900  storeli.w r15, 160(r19)
001f80  67ca0901  storeli.w r16, 164(r19)
001f84  e78a4901  storeli.w r20, 168(r19)
001f88  e7ca6901  storeli.w r22, 172(r19)
001f8c  678b7901  storeli.w r23, 176(r19)
001f90  67cb8901  storeli.w r24, 180(r19)
001f94  e78b9901  storeli.w r25, 184(r19)
001f98  e7cba901  storeli.w r26, 188(r19)
001f9c  e3818901  loadli.w r3,  192(r19)
001fa0  e3c28901  loadli.w r5,  196(r19)
001fa4  e3839901  loadli.w r7,  200(r19)
001fa8  63c49901  loadli.w r8,  204(r19)
001fac  e384a901  loadli.w r9,  208(r19)
001fb0  e3c5a901  loadli.w r11,  212(r19)
001fb4  6386b901  loadli.w r12,  216(r19)
001fb8  63c7b901  loadli.w r14,  220(r19)
001fbc  e387c901  loadli.w r15,  224(r19)
001fc0  63c8c901  loadli.w r16,  228(r19)
001fc4  638ad901  loadli.w r20,  232(r19)
001fc8  63cbd901  loadli.w r22,  236(r19)
001fcc  e38be901  loadli.w r23,  240(r19)
001fd0  63cce901  loadli.w r24,  244(r19)
001fd4  e38cf901  loadli.w r25,  248(r19)
001fd8  63cdf901  loadli.w r26,  252(r19)
001fdc  8f810100  exp.f.rn r3, r3
001fe0  8f820200  exp.f.rn r5, r5
001fe4  8f830300  exp.f.rn r7, r7
001fe8  0f040400  exp.f.rn r8, r8
001fec  8f840400  exp.f.rn r9, r9
001ff0  8f850500  exp.f.rn r11, r11
001ff4  0f060600  exp.f.rn r12, r12
001ff8  0f070700  exp.f.rn r14, r14
001ffc  8f870700  exp.f.rn r15, r15
002000  0f080800  exp.f.rn r16, r16
002004  0f0a0a00  exp.f.rn r20, r20
002008  0f0b0b00  exp.f.rn r22, r22
00200c  8f8b0b00  exp.f.rn r23, r23
002010  0f0c0c00  exp.f.rn r24, r24
002014  8f8c0c00  exp.f.rn r25, r25
002018  0f0d0d00  exp.f.rn r26, r26
00201c  678c3900  storeli.w r3, 192(r19)
002020  67cc5900  storeli.w r5, 196(r19)
002024  e78c7900  storeli.w r7, 200(r19)
002028  e7cc8900  storeli.w r8, 204(r19)
00202c  678d9900  storeli.w r9, 208(r19)
002030  67cdb900  storeli.w r11, 212(r19)
002034  e78dc900  storeli.w r12, 216(r19)
002038  e7cde900  storeli.w r14, 220(r19)
00203c  678ef900  storeli.w r15, 224(r19)
002040  67ce0901  storeli.w r16, 228(r19)
002044  e78e4901  storeli.w r20, 232(r19)
002048  e7ce6901  storeli.w r22, 236(r19)
00204c  678f7901  storeli.w r23, 240(r19)
002050  67cf8901  storeli.w r24, 244(r19)
002054  e78f9901  storeli.w r25, 248(r19)
002058  e7cfa901  storeli.w r26, 252(r19)
00205c  00a00000  mfence { lm }
002060  9f010fdb  addli r3, r30, -4736
002064  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
002068  c2110fe2  vload_mask16.mz vr3{mr1}, 1792(r30)
00206c  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
002070  9f010fd1  addli r3, r30, -6016
002074  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
002078  c2150fe3  vload_mask16.mz vr11{mr1}, 1920(r30)
00207c  42158fe3  vload_mask16.mz vr10{mr1}, 1984(r30)
002080  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
002084  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002088  9f018fd1  addli r3, r30, -5952
00208c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
002090  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
002094  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002098  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00209c  9f010fd2  addli r3, r30, -5888
0020a0  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0020a4  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
0020a8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0020ac  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0020b0  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0020b4  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0020b8  00a00000  mfence { lm }
0020bc  e3800900  loadli.w r1,  0(r19)
0020c0  e3c10900  loadli.w r3,  4(r19)
0020c4  e3821900  loadli.w r5,  8(r19)
0020c8  e3c31900  loadli.w r7,  12(r19)
0020cc  63842900  loadli.w r8,  16(r19)
0020d0  e3c42900  loadli.w r9,  20(r19)
0020d4  e3853900  loadli.w r11,  24(r19)
0020d8  63c63900  loadli.w r12,  28(r19)
0020dc  63874900  loadli.w r14,  32(r19)
0020e0  e3c74900  loadli.w r15,  36(r19)
0020e4  63885900  loadli.w r16,  40(r19)
0020e8  63ca5900  loadli.w r20,  44(r19)
0020ec  638b6900  loadli.w r22,  48(r19)
0020f0  e3cb6900  loadli.w r23,  52(r19)
0020f4  638c7900  loadli.w r24,  56(r19)
0020f8  e3cc7900  loadli.w r25,  60(r19)
0020fc  8f800000  exp.f.rn r1, r1
002100  8f810100  exp.f.rn r3, r3
002104  8f820200  exp.f.rn r5, r5
002108  8f830300  exp.f.rn r7, r7
00210c  0f040400  exp.f.rn r8, r8
002110  8f840400  exp.f.rn r9, r9
002114  8f850500  exp.f.rn r11, r11
002118  0f060600  exp.f.rn r12, r12
00211c  0f070700  exp.f.rn r14, r14
002120  8f870700  exp.f.rn r15, r15
002124  0f080800  exp.f.rn r16, r16
002128  0f0a0a00  exp.f.rn r20, r20
00212c  0f0b0b00  exp.f.rn r22, r22
002130  8f8b0b00  exp.f.rn r23, r23
002134  0f0c0c00  exp.f.rn r24, r24
002138  8f8c0c00  exp.f.rn r25, r25
00213c  67801900  storeli.w r1, 0(r19)
002140  67c03900  storeli.w r3, 4(r19)
002144  e7805900  storeli.w r5, 8(r19)
002148  e7c07900  storeli.w r7, 12(r19)
00214c  67818900  storeli.w r8, 16(r19)
002150  67c19900  storeli.w r9, 20(r19)
002154  e781b900  storeli.w r11, 24(r19)
002158  e7c1c900  storeli.w r12, 28(r19)
00215c  6782e900  storeli.w r14, 32(r19)
002160  67c2f900  storeli.w r15, 36(r19)
002164  e7820901  storeli.w r16, 40(r19)
002168  e7c24901  storeli.w r20, 44(r19)
00216c  67836901  storeli.w r22, 48(r19)
002170  67c37901  storeli.w r23, 52(r19)
002174  e7838901  storeli.w r24, 56(r19)
002178  e7c39901  storeli.w r25, 60(r19)
00217c  e3808900  loadli.w r1,  64(r19)
002180  e3c18900  loadli.w r3,  68(r19)
002184  e3829900  loadli.w r5,  72(r19)
002188  e3c39900  loadli.w r7,  76(r19)
00218c  6384a900  loadli.w r8,  80(r19)
002190  e3c4a900  loadli.w r9,  84(r19)
002194  e385b900  loadli.w r11,  88(r19)
002198  63c6b900  loadli.w r12,  92(r19)
00219c  6387c900  loadli.w r14,  96(r19)
0021a0  e3c7c900  loadli.w r15,  100(r19)
0021a4  6388d900  loadli.w r16,  104(r19)
0021a8  63cad900  loadli.w r20,  108(r19)
0021ac  638be900  loadli.w r22,  112(r19)
0021b0  e3cbe900  loadli.w r23,  116(r19)
0021b4  638cf900  loadli.w r24,  120(r19)
0021b8  e3ccf900  loadli.w r25,  124(r19)
0021bc  8f800000  exp.f.rn r1, r1
0021c0  8f810100  exp.f.rn r3, r3
0021c4  8f820200  exp.f.rn r5, r5
0021c8  8f830300  exp.f.rn r7, r7
0021cc  0f040400  exp.f.rn r8, r8
0021d0  8f840400  exp.f.rn r9, r9
0021d4  8f850500  exp.f.rn r11, r11
0021d8  0f060600  exp.f.rn r12, r12
0021dc  0f070700  exp.f.rn r14, r14
0021e0  8f870700  exp.f.rn r15, r15
0021e4  0f080800  exp.f.rn r16, r16
0021e8  0f0a0a00  exp.f.rn r20, r20
0021ec  0f0b0b00  exp.f.rn r22, r22
0021f0  8f8b0b00  exp.f.rn r23, r23
0021f4  0f0c0c00  exp.f.rn r24, r24
0021f8  8f8c0c00  exp.f.rn r25, r25
0021fc  67841900  storeli.w r1, 64(r19)
002200  67c43900  storeli.w r3, 68(r19)
002204  e7845900  storeli.w r5, 72(r19)
002208  e7c47900  storeli.w r7, 76(r19)
00220c  67858900  storeli.w r8, 80(r19)
002210  67c59900  storeli.w r9, 84(r19)
002214  e785b900  storeli.w r11, 88(r19)
002218  e7c5c900  storeli.w r12, 92(r19)
00221c  6786e900  storeli.w r14, 96(r19)
002220  67c6f900  storeli.w r15, 100(r19)
002224  e7860901  storeli.w r16, 104(r19)
002228  e7c64901  storeli.w r20, 108(r19)
00222c  67876901  storeli.w r22, 112(r19)
002230  67c77901  storeli.w r23, 116(r19)
002234  e7878901  storeli.w r24, 120(r19)
002238  e7c79901  storeli.w r25, 124(r19)
00223c  e3800901  loadli.w r1,  128(r19)
002240  e3c10901  loadli.w r3,  132(r19)
002244  e3821901  loadli.w r5,  136(r19)
002248  e3c31901  loadli.w r7,  140(r19)
00224c  63842901  loadli.w r8,  144(r19)
002250  e3c42901  loadli.w r9,  148(r19)
002254  e3853901  loadli.w r11,  152(r19)
002258  63c63901  loadli.w r12,  156(r19)
00225c  63874901  loadli.w r14,  160(r19)
002260  e3c74901  loadli.w r15,  164(r19)
002264  63885901  loadli.w r16,  168(r19)
002268  63ca5901  loadli.w r20,  172(r19)
00226c  638b6901  loadli.w r22,  176(r19)
002270  e3cb6901  loadli.w r23,  180(r19)
002274  638c7901  loadli.w r24,  184(r19)
002278  e3cc7901  loadli.w r25,  188(r19)
00227c  8f800000  exp.f.rn r1, r1
002280  8f810100  exp.f.rn r3, r3
002284  8f820200  exp.f.rn r5, r5
002288  8f830300  exp.f.rn r7, r7
00228c  0f040400  exp.f.rn r8, r8
002290  8f840400  exp.f.rn r9, r9
002294  8f850500  exp.f.rn r11, r11
002298  0f060600  exp.f.rn r12, r12
00229c  0f070700  exp.f.rn r14, r14
0022a0  8f870700  exp.f.rn r15, r15
0022a4  0f080800  exp.f.rn r16, r16
0022a8  0f0a0a00  exp.f.rn r20, r20
0022ac  0f0b0b00  exp.f.rn r22, r22
0022b0  8f8b0b00  exp.f.rn r23, r23
0022b4  0f0c0c00  exp.f.rn r24, r24
0022b8  8f8c0c00  exp.f.rn r25, r25
0022bc  67881900  storeli.w r1, 128(r19)
0022c0  67c83900  storeli.w r3, 132(r19)
0022c4  e7885900  storeli.w r5, 136(r19)
0022c8  e7c87900  storeli.w r7, 140(r19)
0022cc  67898900  storeli.w r8, 144(r19)
0022d0  67c99900  storeli.w r9, 148(r19)
0022d4  e789b900  storeli.w r11, 152(r19)
0022d8  e7c9c900  storeli.w r12, 156(r19)
0022dc  678ae900  storeli.w r14, 160(r19)
0022e0  67caf900  storeli.w r15, 164(r19)
0022e4  e78a0901  storeli.w r16, 168(r19)
0022e8  e7ca4901  storeli.w r20, 172(r19)
0022ec  678b6901  storeli.w r22, 176(r19)
0022f0  67cb7901  storeli.w r23, 180(r19)
0022f4  e78b8901  storeli.w r24, 184(r19)
0022f8  e7cb9901  storeli.w r25, 188(r19)
0022fc  e3808901  loadli.w r1,  192(r19)
002300  e3c18901  loadli.w r3,  196(r19)
002304  e3829901  loadli.w r5,  200(r19)
002308  e3c39901  loadli.w r7,  204(r19)
00230c  6384a901  loadli.w r8,  208(r19)
002310  e3c4a901  loadli.w r9,  212(r19)
002314  e385b901  loadli.w r11,  216(r19)
002318  63c6b901  loadli.w r12,  220(r19)
00231c  6387c901  loadli.w r14,  224(r19)
002320  e3c7c901  loadli.w r15,  228(r19)
002324  6388d901  loadli.w r16,  232(r19)
002328  63cad901  loadli.w r20,  236(r19)
00232c  638be901  loadli.w r22,  240(r19)
002330  e3cbe901  loadli.w r23,  244(r19)
002334  638cf901  loadli.w r24,  248(r19)
002338  e3ccf901  loadli.w r25,  252(r19)
00233c  8f800000  exp.f.rn r1, r1
002340  8f810100  exp.f.rn r3, r3
002344  8f820200  exp.f.rn r5, r5
002348  8f830300  exp.f.rn r7, r7
00234c  0f040400  exp.f.rn r8, r8
002350  8f840400  exp.f.rn r9, r9
002354  8f850500  exp.f.rn r11, r11
002358  0f060600  exp.f.rn r12, r12
00235c  0f070700  exp.f.rn r14, r14
002360  8f870700  exp.f.rn r15, r15
002364  0f080800  exp.f.rn r16, r16
002368  0f0a0a00  exp.f.rn r20, r20
00236c  0f0b0b00  exp.f.rn r22, r22
002370  8f8b0b00  exp.f.rn r23, r23
002374  0f0c0c00  exp.f.rn r24, r24
002378  8f8c0c00  exp.f.rn r25, r25
00237c  678c1900  storeli.w r1, 192(r19)
002380  67cc3900  storeli.w r3, 196(r19)
002384  e78c5900  storeli.w r5, 200(r19)
002388  e7cc7900  storeli.w r7, 204(r19)
00238c  678d8900  storeli.w r8, 208(r19)
002390  67cd9900  storeli.w r9, 212(r19)
002394  e78db900  storeli.w r11, 216(r19)
002398  e7cdc900  storeli.w r12, 220(r19)
00239c  678ee900  storeli.w r14, 224(r19)
0023a0  67cef900  storeli.w r15, 228(r19)
0023a4  e78e0901  storeli.w r16, 232(r19)
0023a8  e7ce4901  storeli.w r20, 236(r19)
0023ac  678f6901  storeli.w r22, 240(r19)
0023b0  67cf7901  storeli.w r23, 244(r19)
0023b4  e78f8901  storeli.w r24, 248(r19)
0023b8  e7cf9901  storeli.w r25, 252(r19)
0023bc  00a00000  mfence { lm }
0023c0  9f008000  addli r1, zero, 64
0023c4  1f870600  addli r14, r13, 0
0023c8  9f050002  addli r11, zero, 256
0023cc  1f060001  addli r12, zero, 128
0023d0  9f064000  addli r13, zero, 32
0023d4  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
0023d8  9610b002  vadd.f.mz.rn vr1{mr1}, vr0, vr11
0023dc  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
0023e0  42118fe2  vload_mask16.mz vr2{mr1}, 1856(r30)
0023e4  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
0023e8  c2128fe3  vload_mask16.mz vr5{mr1}, 1984(r30)
0023ec  e3417fce  loadli.w r3,  -6340(r30)
0023f0  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
0023f4  96900002  vadd.f.mz.rn vr1{mr1}, vr1, vr0
0023f8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0023fc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002400  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
002404  6af41ac0  vsrl.p vr8, r21, vr1
002408  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
00240c  6a7415c0  vsrl.p vr8, r10, vr1
002410  1f058000  addli r10, zero, 64
002414  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
002418  6af410c0  vsrl.p vr8, r1, vr1
00241c  9f004000  addli r1, zero, 32
002420  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
002424  6af410c0  vsrl.p vr8, r1, vr1
002428  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
00242c  fa900040  vextracti.f r1, 0(vr1)
002430  73e01100  stores.w r1, 0(r3)
002434  00a00300  mfence { lm, sm, gm }
002438  80210204  csr_set csr3, r4
00243c  00d00100  sync_group
002440  bb100700  bneq r14, zero, 36
002444  ef400e00  loads.w r1, 0(r28)
002448  ef414e00  loads.w r3, 4(r28)
00244c  ef428e00  loads.w r5, 8(r28)
002450  8be03010  add.f.rn r1, r1, r3
002454  ef41ce00  loads.w r3, 12(r28)
002458  8be05010  add.f.rn r1, r1, r5
00245c  8be03010  add.f.rn r1, r1, r3
002460  73601e00  stores.w r1, 0(r28)
002464  00a00300  mfence { lm, sm, gm }
002468  80210204  csr_set csr3, r4
00246c  00d00100  sync_group
002470  ef400e00  loads.w r1, 0(r28)
002474  ab01803f  lui r3, 260096
002478  9f040fde  addli r9, r30, -4352
00247c  8f801118  div.f.rn r1, r3, r1
002480  9f018fd4  addli r3, r30, -5568
002484  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
002488  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00248c  9f010fde  addli r3, r30, -4352
002490  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002494  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002498  9f010fd5  addli r3, r30, -5504
00249c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0024a0  9f018fde  addli r3, r30, -4288
0024a4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024a8  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0024ac  9f018fd5  addli r3, r30, -5440
0024b0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0024b4  9f010fdf  addli r3, r30, -4224
0024b8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024bc  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0024c0  9f010fd7  addli r3, r30, -5248
0024c4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0024c8  9f018fdf  addli r3, r30, -4160
0024cc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024d0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0024d4  9f010fd6  addli r3, r30, -5376
0024d8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0024dc  9f010fe0  addli r3, r30, -4096
0024e0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024e4  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0024e8  9f010fd4  addli r3, r30, -5632
0024ec  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0024f0  9f018fe0  addli r3, r30, -4032
0024f4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0024f8  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0024fc  9f010fdd  addli r3, r30, -4480
002500  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002504  9f010fe1  addli r3, r30, -3968
002508  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00250c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002510  9f018fdd  addli r3, r30, -4416
002514  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002518  9f018fe1  addli r3, r30, -3904
00251c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002520  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002524  9f010fd8  addli r3, r30, -5120
002528  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00252c  9f010fe2  addli r3, r30, -3840
002530  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002534  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002538  9f018fd8  addli r3, r30, -5056
00253c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002540  9f018fe2  addli r3, r30, -3776
002544  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002548  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00254c  9f018fd9  addli r3, r30, -4928
002550  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002554  9f010fe3  addli r3, r30, -3712
002558  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00255c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002560  9f018fda  addli r3, r30, -4800
002564  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002568  9f018fe3  addli r3, r30, -3648
00256c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002570  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002574  9f018fd6  addli r3, r30, -5312
002578  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00257c  9f010fe4  addli r3, r30, -3584
002580  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002584  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002588  9f018fdb  addli r3, r30, -4672
00258c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002590  9f018fe4  addli r3, r30, -3520
002594  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002598  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00259c  9f010fdc  addli r3, r30, -4608
0025a0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025a4  9f010fe5  addli r3, r30, -3456
0025a8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025ac  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025b0  9f018fdc  addli r3, r30, -4544
0025b4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025b8  9f018fe5  addli r3, r30, -3392
0025bc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025c0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025c4  9f018fd3  addli r3, r30, -5696
0025c8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025cc  9f010fe6  addli r3, r30, -3328
0025d0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025d4  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025d8  9f018fd7  addli r3, r30, -5184
0025dc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025e0  9f018fe6  addli r3, r30, -3264
0025e4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025e8  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025ec  9f010fd9  addli r3, r30, -4992
0025f0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025f4  9f010fe7  addli r3, r30, -3200
0025f8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025fc  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002600  9f010fda  addli r3, r30, -4864
002604  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002608  9f018fe7  addli r3, r30, -3136
00260c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002610  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002614  9f010fe8  addli r3, r30, -3072
002618  8a907002  vmul.f.mz.rn vr1{mr1}, r1, vr7
00261c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002620  9f018fe8  addli r3, r30, -3008
002624  8a909002  vmul.f.mz.rn vr1{mr1}, r1, vr9
002628  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00262c  9f010fd3  addli r3, r30, -5760
002630  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002634  9f010fe9  addli r3, r30, -2944
002638  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00263c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002640  9f010fdb  addli r3, r30, -4736
002644  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002648  9f018fe9  addli r3, r30, -2880
00264c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002650  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002654  9f010fea  addli r3, r30, -2816
002658  8a903002  vmul.f.mz.rn vr1{mr1}, r1, vr3
00265c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002660  9f018fea  addli r3, r30, -2752
002664  8a906002  vmul.f.mz.rn vr1{mr1}, r1, vr6
002668  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00266c  9f010feb  addli r3, r30, -2688
002670  8a90b002  vmul.f.mz.rn vr1{mr1}, r1, vr11
002674  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002678  9f018feb  addli r3, r30, -2624
00267c  8a90a002  vmul.f.mz.rn vr1{mr1}, r1, vr10
002680  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002684  9f010fec  addli r3, r30, -2560
002688  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00268c  9f018fec  addli r3, r30, -2496
002690  0a902002  vmul.f.mz.rn vr0{mr1}, r1, vr2
002694  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
002698  9f010fed  addli r3, r30, -2432
00269c  0a904002  vmul.f.mz.rn vr0{mr1}, r1, vr4
0026a0  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0026a4  0a905002  vmul.f.mz.rn vr0{mr1}, r1, vr5
0026a8  9f008fed  addli r1, r30, -2368
0026ac  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0026b0  00a00000  mfence { lm }
0026b4  e3018f00  loadli.w r3,  64(r30)
0026b8  e3001fce  loadli.w r1,  -6392(r30)
0026bc  bf1e31ec  blt.s r2, r3, -9308
0026c0  9f000000  addli r1, zero, 0
0026c4  db73fbff  j -9316
0026c8  9f0e0fce  addli sp, r30, -6400
0026cc  9f8e0e32  addli sp, sp, 6400
0026d0  00a00300  mfence { lm, sm, gm }
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
0028c4  00100000  exit
0028c8  00100000  exit
0028cc  00100000  exit
0028d0  00100000  exit
0028d4  00100000  exit
0028d8  00100000  exit
0028dc  00100000  exit
0028e0  00100000  exit
0028e4  00100000  exit
0028e8  00100000  exit
0028ec  00100000  exit
0028f0  00100000  exit
0028f4  00100000  exit
0028f8  00100000  exit
0028fc  00100000  exit
002900  00100000  exit
002904  00100000  exit
002908  00100000  exit
00290c  00100000  exit
002910  00100000  exit
002914  00100000  exit
