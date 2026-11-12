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
0000e4  9f8e8ecc  addli sp, sp, -6592
0000e8  2b010000  lui r2, 0
0000ec  00340002  core_id r8
0000f0  ab800000  lui r1, 8
0000f4  1f8f8e32  addli r30, sp, 6464
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
00012c  e74f4fcc  storeli.w r4, -6404(r30)
000130  73600200  stores.w zero, 0(r4)
000134  2bf20000  lui r4, 15
000138  00a00300  mfence { lm, sm, gm }
00013c  1b12f2ff  ori r4, r4, 4095
000140  80210204  csr_set csr3, r4
000144  00d00100  sync_group
000148  e70f5fcc  storeli.w r5, -6408(r30)
00014c  73e00200  stores.w zero, 0(r5)
000150  00a00300  mfence { lm, sm, gm }
000154  80210204  csr_set csr3, r4
000158  00d00100  sync_group
00015c  674f3fcc  storeli.w r3, -6412(r30)
000160  cbd66112  ble.s r3, r6, 9652
000164  9b063400  andi r13, r8, 3
000168  eb570f03  load.d r[16:17], 48(r30)
00016c  9f210000  addli r3, zero, 2
000170  e3095f00  loadli.w r19,  40(r30)
000174  6b5a0f02  load.d r[21:22], 32(r30)
000178  634c1f00  loadli.w r24,  12(r30)
00017c  1b442400  srli r8, r8, 2
000180  634d8f00  loadli.w r26,  68(r30)
000184  eb5d8f01  load.d r[28:29], 24(r30)
000188  eb550f05  load.d r[12:13], 80(r30)
00018c  9f028fcd  addli r5, r30, -6464
000190  9bbc9600  slli r25, r13, 9
000194  b3880c28  zext_int2long r[18:19], r25
000198  0bbb1721  mul.sl r[23:24], r[16:17], r[18:19]
00019c  0b989919  sub.s r16, r19, r25
0001a0  abf9ffff  lui r19, 1048575
0001a4  173b3b02  sll.d r[23:24], r[23:24], r3
0001a8  9f01dfcd  addli r3, r30, -6424
0001ac  0b180848  max.s r16, r16, zero
0001b0  9b9909ff  ori r19, r19, 4080
0001b4  0b276a11  add.ul r[15:16], r[21:22], r[23:24]
0001b8  97843401  and r9, r9, r19
0001bc  73b0e100  store.d r[15:16], 0(r3)
0001c0  1f070004  addli r14, zero, 512
0001c4  80d10002  load_param_i r3, 1
0001c8  0b119110  add.s r2, r2, r9
0001cc  0b18e840  min.s r16, r16, r14
0001d0  674e3fcc  storeli.w r3, -6428(r30)
0001d4  8b14a110  add.s r9, r2, r10
0001d8  0b151110  add.s r10, r2, r1
0001dc  9b312800  slli r3, r16, 2
0001e0  0b189c19  sub.s r16, r24, r25
0001e4  1b0cf400  andi r24, r8, 15
0001e8  0b140848  max.s r8, r16, zero
0001ec  670e3fcc  storeli.w r3, -6432(r30)
0001f0  b3090c28  zext_int2long r[20:21], r24
0001f4  9f01bfcd  addli r3, r30, -6440
0001f8  0b189d19  sub.s r16, r26, r25
0001fc  73b03101  store.d r[20:21], 0(r3)
000200  0b14e440  min.s r8, r8, r14
000204  8bb91d21  mul.sl r[20:21], r[28:29], r[18:19]
000208  9f01afcd  addli r3, r30, -6448
00020c  0b180848  max.s r16, r16, zero
000210  73b03101  store.d r[20:21], 0(r3)
000214  9b312400  slli r3, r8, 2
000218  8b10e840  min.s r1, r16, r14
00021c  9f090ffe  addli r19, r30, -256
000220  e74c3fcc  storeli.w r3, -6452(r30)
000224  0bb11521  mul.sl r[3:4], r[12:13], r[18:19]
000228  1bb72000  slli r14, r1, 2
00022c  73b02200  store.d r[3:4], 0(r5)
000230  9f020fee  addli r5, r30, -2304
000234  5b0a0000  j 80
000238  6b518f04  load.d r[3:4], 72(r30)
00023c  9f028fcd  addli r5, r30, -6464
000240  ebd30200  load.d r[8:9], 0(r5)
000244  9f220000  addli r5, zero, 2
000248  0bb12820  mul.sl r[3:4], r[18:19], r[3:4]
00024c  0b217110  add.ul r[3:4], r[3:4], r[8:9]
000250  eb538f03  load.d r[8:9], 56(r30)
000254  17315102  sll.d r[3:4], r[3:4], r5
000258  ab0200f0  lui r5, 983040
00025c  97905000  or r1, r1, r5
000260  0ba12310  add.ul r[3:4], r[8:9], r[3:4]
000264  9f020fee  addli r5, r30, -2304
000268  ff305100  s_lm2gm r1, r5, 0(r[3:4])
00026c  e340cfcd  loadli.w r1,  -6428(r30)
000270  00a00000  mfence { lm }
000274  0b131310  add.s r6, r6, r1
000278  e340efcd  loadli.w r1,  -6412(r30)
00027c  3f201300  blt.s r6, r1, 8
000280  db920400  j 9364
000284  e340cf00  loadli.w r1,  100(r30)
000288  6301cf00  loadli.w r2,  96(r30)
00028c  e301cfcd  loadli.w r3,  -6432(r30)
000290  8b101330  div.s r1, r6, r1
000294  8b902030  div.s r1, r1, r2
000298  2b0100f0  lui r2, 983040
00029c  17912100  or r2, r3, r2
0002a0  9bb84000  slli r17, r1, 4
0002a4  9f00dfcd  addli r1, r30, -6424
0002a8  ebd30000  load.d r[8:9], 0(r1)
0002ac  9f000fde  addli r1, r30, -4352
0002b0  7fa11300  l_gm2lm r2, r1, 0(r[8:9])
0002b4  17918801  or r2, r17, r24
0002b8  00a00000  mfence { lm }
0002bc  e3011f00  loadli.w r3,  8(r30)
0002c0  e3409fcd  loadli.w r1,  -6452(r30)
0002c4  3f203100  blt.s r2, r3, 8
0002c8  9f000000  addli r1, zero, 0
0002cc  9f01bfcd  addli r3, r30, -6440
0002d0  b3980828  sext_int2long r[18:19], r17
0002d4  ab0700f0  lui r15, 983040
0002d8  ebd30100  load.d r[8:9], 0(r3)
0002dc  9f01afcd  addli r3, r30, -6448
0002e0  9790f000  or r1, r1, r15
0002e4  97987802  or.d r[18:19], r[18:19], r[8:9]
0002e8  eb530f01  load.d r[8:9], 16(r30)
0002ec  0bba7820  mul.sl r[21:22], r[18:19], r[8:9]
0002f0  ebd30100  load.d r[8:9], 0(r3)
0002f4  9f210000  addli r3, zero, 2
0002f8  0b2a7a10  add.ul r[21:22], r[21:22], r[8:9]
0002fc  eb530f00  load.d r[8:9], 0(r30)
000300  173a3a02  sll.d r[21:22], r[21:22], r3
000304  0baa4311  add.ul r[21:22], r[8:9], r[21:22]
000308  ff205a00  l_gm2lm r1, r5, 0(r[21:22])
00030c  9f000fee  addli r1, r30, -2304
000310  00a00000  mfence { lm }
000314  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000318  9f008fee  addli r1, r30, -2240
00031c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000320  9f000fef  addli r1, r30, -2176
000324  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000328  9f008fef  addli r1, r30, -2112
00032c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000330  9f000ff0  addli r1, r30, -2048
000334  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000338  9f008ff0  addli r1, r30, -1984
00033c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000340  9f000fde  addli r1, r30, -4352
000344  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000348  9f000ff1  addli r1, r30, -1920
00034c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000350  9f008ff1  addli r1, r30, -1856
000354  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000358  9f000ff2  addli r1, r30, -1792
00035c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000360  9f008ff2  addli r1, r30, -1728
000364  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
000368  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00036c  9f008fde  addli r1, r30, -4288
000370  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000374  9f000fcf  addli r1, r30, -6272
000378  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00037c  9f000fdf  addli r1, r30, -4224
000380  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000384  9f000fd4  addli r1, r30, -5632
000388  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00038c  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000390  9f008fdf  addli r1, r30, -4160
000394  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000398  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00039c  9f008fd5  addli r1, r30, -5440
0003a0  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0003a4  9f000fe0  addli r1, r30, -4096
0003a8  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0003ac  9f000fd5  addli r1, r30, -5504
0003b0  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
0003b4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0003b8  9f008fe0  addli r1, r30, -4032
0003bc  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
0003c0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0003c4  9f008fd4  addli r1, r30, -5568
0003c8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0003cc  9f000fe1  addli r1, r30, -3968
0003d0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0003d4  9f008fd6  addli r1, r30, -5312
0003d8  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0003dc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003e0  9f008fe1  addli r1, r30, -3904
0003e4  16901502  vadd.f.mz.rn vr0{mr1}, vr11, vr1
0003e8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0003ec  9f000fd6  addli r1, r30, -5376
0003f0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003f4  9f000ff3  addli r1, r30, -1664
0003f8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0003fc  9f008fd8  addli r1, r30, -5056
000400  16107502  vadd.f.mz.rn vr0{mr1}, vr10, vr7
000404  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000408  9f000fe2  addli r1, r30, -3840
00040c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000410  9f008fe2  addli r1, r30, -3776
000414  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000418  9f000fe3  addli r1, r30, -3712
00041c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000420  9f008fd7  addli r1, r30, -5184
000424  16917402  vadd.f.mz.rn vr2{mr1}, vr9, vr7
000428  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00042c  1611a402  vadd.f.mz.rn vr2{mr1}, vr8, vr10
000430  9f000fdd  addli r1, r30, -4480
000434  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000438  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00043c  9f008fdc  addli r1, r30, -4544
000440  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000444  9f008ff3  addli r1, r30, -1600
000448  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00044c  9f000ff4  addli r1, r30, -1536
000450  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000454  9f008ff4  addli r1, r30, -1472
000458  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00045c  9f008fe3  addli r1, r30, -3648
000460  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000464  9f000fe4  addli r1, r30, -3584
000468  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00046c  9f008fe4  addli r1, r30, -3520
000470  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000474  9f000fd8  addli r1, r30, -5120
000478  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
00047c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000480  16908302  vadd.f.mz.rn vr0{mr1}, vr7, vr8
000484  9f008fd9  addli r1, r30, -4928
000488  96159502  vadd.f.mz.rn vr11{mr1}, vr10, vr9
00048c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000490  9f000ff5  addli r1, r30, -1408
000494  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000498  9f008ff5  addli r1, r30, -1344
00049c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0004a0  9f000ff6  addli r1, r30, -1280
0004a4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0004a8  9f000fe5  addli r1, r30, -3456
0004ac  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0004b0  9f008fe5  addli r1, r30, -3392
0004b4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0004b8  9f000fe6  addli r1, r30, -3328
0004bc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0004c0  9f000fda  addli r1, r30, -4864
0004c4  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
0004c8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004cc  16908302  vadd.f.mz.rn vr0{mr1}, vr7, vr8
0004d0  9f008fd3  addli r1, r30, -5696
0004d4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004d8  16901402  vadd.f.mz.rn vr0{mr1}, vr9, vr1
0004dc  9f000fdb  addli r1, r30, -4736
0004e0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004e4  9f008ff6  addli r1, r30, -1216
0004e8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0004ec  9f000ff7  addli r1, r30, -1152
0004f0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0004f4  9f008ff7  addli r1, r30, -1088
0004f8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0004fc  9f008fe6  addli r1, r30, -3264
000500  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000504  9f000fe7  addli r1, r30, -3200
000508  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00050c  9f008fe7  addli r1, r30, -3136
000510  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000514  9f000fdc  addli r1, r30, -4608
000518  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00051c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000520  16909002  vadd.f.mz.rn vr0{mr1}, vr1, vr9
000524  9f008fdb  addli r1, r30, -4672
000528  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00052c  1690a302  vadd.f.mz.rn vr0{mr1}, vr7, vr10
000530  9f008fdd  addli r1, r30, -4416
000534  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000538  9f000fe8  addli r1, r30, -3072
00053c  42100f82  vload_mask16.mz vr0{mr1}, 1024(r30)
000540  c2108f82  vload_mask16.mz vr1{mr1}, 1088(r30)
000544  c2130f83  vload_mask16.mz vr7{mr1}, 1152(r30)
000548  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00054c  9f008fe8  addli r1, r30, -3008
000550  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000554  9f000fe9  addli r1, r30, -2944
000558  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00055c  9f000fd9  addli r1, r30, -4992
000560  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000564  16919002  vadd.f.mz.rn vr2{mr1}, vr1, vr9
000568  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00056c  1690a302  vadd.f.mz.rn vr0{mr1}, vr7, vr10
000570  9f008fda  addli r1, r30, -4800
000574  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000578  9f008fe9  addli r1, r30, -2880
00057c  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
000580  c2100fa2  vload_mask16.mz vr1{mr1}, 1280(r30)
000584  c2138fa2  vload_mask16.mz vr7{mr1}, 1344(r30)
000588  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00058c  9f000fea  addli r1, r30, -2816
000590  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000594  9f008fea  addli r1, r30, -2752
000598  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00059c  9f008fce  addli r1, r30, -6336
0005a0  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0005a4  96929002  vadd.f.mz.rn vr5{mr1}, vr1, vr9
0005a8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005ac  9f000feb  addli r1, r30, -2688
0005b0  1692a302  vadd.f.mz.rn vr4{mr1}, vr7, vr10
0005b4  42100fa3  vload_mask16.mz vr0{mr1}, 1408(r30)
0005b8  c2108fa3  vload_mask16.mz vr1{mr1}, 1472(r30)
0005bc  c2130fc2  vload_mask16.mz vr7{mr1}, 1536(r30)
0005c0  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0005c4  9f008feb  addli r1, r30, -2624
0005c8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0005cc  9f000fec  addli r1, r30, -2560
0005d0  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0005d4  9f000fce  addli r1, r30, -6400
0005d8  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0005dc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005e0  16909002  vadd.f.mz.rn vr0{mr1}, vr1, vr9
0005e4  9f000fd7  addli r1, r30, -5248
0005e8  1693a302  vadd.f.mz.rn vr6{mr1}, vr7, vr10
0005ec  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005f0  9f008fec  addli r1, r30, -2496
0005f4  42108fc2  vload_mask16.mz vr0{mr1}, 1600(r30)
0005f8  c2100fc3  vload_mask16.mz vr1{mr1}, 1664(r30)
0005fc  c2138fc3  vload_mask16.mz vr7{mr1}, 1728(r30)
000600  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000604  9f000fed  addli r1, r30, -2432
000608  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00060c  9f008fed  addli r1, r30, -2368
000610  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000614  9f008fda  addli r1, r30, -4800
000618  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00061c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000620  9f000fd4  addli r1, r30, -5632
000624  96919002  vadd.f.mz.rn vr3{mr1}, vr1, vr9
000628  9690a302  vadd.f.mz.rn vr1{mr1}, vr7, vr10
00062c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000630  9f000fcf  addli r1, r30, -6272
000634  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000638  92334002  vadd.s.mz vr7{mr1}, zero, vr4
00063c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000640  9f008fd5  addli r1, r30, -5440
000644  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000648  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
00064c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000650  9f000fd5  addli r1, r30, -5504
000654  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000658  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00065c  9f008fd4  addli r1, r30, -5568
000660  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000664  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000668  9f008fd6  addli r1, r30, -5312
00066c  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000670  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000674  9f000fd6  addli r1, r30, -5376
000678  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
00067c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000680  9f008fd8  addli r1, r30, -5056
000684  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000688  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00068c  9f008fd7  addli r1, r30, -5184
000690  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000694  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000698  9f000fdd  addli r1, r30, -4480
00069c  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0006a0  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0006a4  9f008fdc  addli r1, r30, -4544
0006a8  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0006ac  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0006b0  9f000fd8  addli r1, r30, -5120
0006b4  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0006b8  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0006bc  9f008fd9  addli r1, r30, -4928
0006c0  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0006c4  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0006c8  9f000fd0  addli r1, r30, -6144
0006cc  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0006d0  3610b002  vmax.f.mz vr0{mr1}, vr0, vr11
0006d4  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
0006d8  9f008fd3  addli r1, r30, -5696
0006dc  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0006e0  9f000fda  addli r1, r30, -4864
0006e4  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0006e8  9f000fdb  addli r1, r30, -4736
0006ec  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0006f0  3610b002  vmax.f.mz vr0{mr1}, vr0, vr11
0006f4  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0006f8  9f000fdc  addli r1, r30, -4608
0006fc  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000700  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000704  9f008fdb  addli r1, r30, -4672
000708  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
00070c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000710  9f008fdd  addli r1, r30, -4416
000714  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000718  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00071c  9f000fd7  addli r1, r30, -5248
000720  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000724  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000728  9f000fd9  addli r1, r30, -4992
00072c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000730  9f000fd1  addli r1, r30, -6016
000734  3610b002  vmax.f.mz vr0{mr1}, vr0, vr11
000738  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
00073c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000740  9f000fce  addli r1, r30, -6400
000744  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
000748  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00074c  9f008fce  addli r1, r30, -6336
000750  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000754  9f008fd0  addli r1, r30, -6080
000758  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
00075c  36105002  vmax.f.mz vr0{mr1}, vr0, vr5
000760  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000764  9f008fcf  addli r1, r30, -6208
000768  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
00076c  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
000770  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000774  9f000fd2  addli r1, r30, -5888
000778  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
00077c  36106002  vmax.f.mz vr0{mr1}, vr0, vr6
000780  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000784  9f008fd1  addli r1, r30, -5952
000788  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
00078c  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
000790  b6131002  vmax.f.mz vr7{mr1}, vr0, vr1
000794  fa971340  vextracti.f r15, 1(vr7)
000798  7a9a2340  vextracti.f r20, 2(vr7)
00079c  fa9a3340  vextracti.f r21, 3(vr7)
0007a0  7a9b4340  vextracti.f r22, 4(vr7)
0007a4  fa9b5340  vextracti.f r23, 5(vr7)
0007a8  fa916340  vextracti.f r3, 6(vr7)
0007ac  7a987340  vextracti.f r16, 7(vr7)
0007b0  fa9c8340  vextracti.f r25, 8(vr7)
0007b4  7a9d9340  vextracti.f r26, 9(vr7)
0007b8  fa9da340  vextracti.f r27, 10(vr7)
0007bc  7a9eb340  vextracti.f r28, 11(vr7)
0007c0  fa92c340  vextracti.f r5, 12(vr7)
0007c4  fa95d340  vextracti.f r11, 13(vr7)
0007c8  7a96e340  vextracti.f r12, 14(vr7)
0007cc  fa93f340  vextracti.f r7, 15(vr7)
0007d0  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0007d4  9f008fd2  addli r1, r30, -5824
0007d8  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0007dc  9f000fd3  addli r1, r30, -5760
0007e0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0007e4  fa900340  vextracti.f r1, 0(vr7)
0007e8  8be0f048  max.f r1, r1, r15
0007ec  8be04049  max.f r1, r1, r20
0007f0  8be05049  max.f r1, r1, r21
0007f4  8be06049  max.f r1, r1, r22
0007f8  8be07049  max.f r1, r1, r23
0007fc  8be03048  max.f r1, r1, r3
000800  e301ffcd  loadli.w r3,  -6408(r30)
000804  8be00049  max.f r1, r1, r16
000808  8be09049  max.f r1, r1, r25
00080c  8be0a049  max.f r1, r1, r26
000810  8be0b049  max.f r1, r1, r27
000814  8be0c049  max.f r1, r1, r28
000818  8be05048  max.f r1, r1, r5
00081c  8be0b048  max.f r1, r1, r11
000820  8be0c048  max.f r1, r1, r12
000824  8be07048  max.f r1, r1, r7
000828  73e01100  stores.w r1, 0(r3)
00082c  00a00300  mfence { lm, sm, gm }
000830  80210204  csr_set csr3, r4
000834  00d00100  sync_group
000838  bb900600  bneq r13, zero, 36
00083c  efc00400  loads.w r1, 0(r9)
000840  efc14400  loads.w r3, 4(r9)
000844  efc28400  loads.w r5, 8(r9)
000848  efc3c400  loads.w r7, 12(r9)
00084c  8be03048  max.f r1, r1, r3
000850  8be05048  max.f r1, r1, r5
000854  8be07048  max.f r1, r1, r7
000858  73e01400  stores.w r1, 0(r9)
00085c  00a00300  mfence { lm, sm, gm }
000860  80210204  csr_set csr3, r4
000864  00d00100  sync_group
000868  efc00400  loads.w r1, 0(r9)
00086c  ab010080  lui r3, 524288
000870  97a03000  xor r1, r1, r3
000874  9f010fd4  addli r3, r30, -5632
000878  92934002  vadd.f.mz.rn vr7{mr1}, r1, vr4
00087c  46107fe2  vstore_mask16.mz vr7{mr1}, 1792(r30)
000880  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000884  9f018fd5  addli r3, r30, -5440
000888  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
00088c  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
000890  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000894  9f010fd5  addli r3, r30, -5504
000898  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
00089c  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
0008a0  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0008a4  9f018fd4  addli r3, r30, -5568
0008a8  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0008ac  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
0008b0  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0008b4  00a00000  mfence { lm }
0008b8  e3810900  loadli.w r3,  0(r19)
0008bc  e3c20900  loadli.w r5,  4(r19)
0008c0  e3831900  loadli.w r7,  8(r19)
0008c4  e3c51900  loadli.w r11,  12(r19)
0008c8  63862900  loadli.w r12,  16(r19)
0008cc  e3c72900  loadli.w r15,  20(r19)
0008d0  63883900  loadli.w r16,  24(r19)
0008d4  63ca3900  loadli.w r20,  28(r19)
0008d8  e38a4900  loadli.w r21,  32(r19)
0008dc  63cb4900  loadli.w r22,  36(r19)
0008e0  e38b5900  loadli.w r23,  40(r19)
0008e4  e3cc5900  loadli.w r25,  44(r19)
0008e8  638d6900  loadli.w r26,  48(r19)
0008ec  e3cd6900  loadli.w r27,  52(r19)
0008f0  638e7900  loadli.w r28,  56(r19)
0008f4  63c47900  loadli.w r8,  60(r19)
0008f8  8f810100  exp.f.rn r3, r3
0008fc  8f820200  exp.f.rn r5, r5
000900  8f830300  exp.f.rn r7, r7
000904  8f850500  exp.f.rn r11, r11
000908  0f060600  exp.f.rn r12, r12
00090c  8f870700  exp.f.rn r15, r15
000910  0f080800  exp.f.rn r16, r16
000914  0f0a0a00  exp.f.rn r20, r20
000918  8f8a0a00  exp.f.rn r21, r21
00091c  0f0b0b00  exp.f.rn r22, r22
000920  8f8b0b00  exp.f.rn r23, r23
000924  8f8c0c00  exp.f.rn r25, r25
000928  0f0d0d00  exp.f.rn r26, r26
00092c  8f8d0d00  exp.f.rn r27, r27
000930  0f0e0e00  exp.f.rn r28, r28
000934  0f040400  exp.f.rn r8, r8
000938  67803900  storeli.w r3, 0(r19)
00093c  67c05900  storeli.w r5, 4(r19)
000940  e7807900  storeli.w r7, 8(r19)
000944  e7c0b900  storeli.w r11, 12(r19)
000948  6781c900  storeli.w r12, 16(r19)
00094c  67c1f900  storeli.w r15, 20(r19)
000950  e7810901  storeli.w r16, 24(r19)
000954  e7c14901  storeli.w r20, 28(r19)
000958  67825901  storeli.w r21, 32(r19)
00095c  67c26901  storeli.w r22, 36(r19)
000960  e7827901  storeli.w r23, 40(r19)
000964  e7c29901  storeli.w r25, 44(r19)
000968  6783a901  storeli.w r26, 48(r19)
00096c  67c3b901  storeli.w r27, 52(r19)
000970  e783c901  storeli.w r28, 56(r19)
000974  e7c38900  storeli.w r8, 60(r19)
000978  e3818900  loadli.w r3,  64(r19)
00097c  e3c28900  loadli.w r5,  68(r19)
000980  e3839900  loadli.w r7,  72(r19)
000984  e3c59900  loadli.w r11,  76(r19)
000988  6386a900  loadli.w r12,  80(r19)
00098c  e3c7a900  loadli.w r15,  84(r19)
000990  6388b900  loadli.w r16,  88(r19)
000994  63cab900  loadli.w r20,  92(r19)
000998  e38ac900  loadli.w r21,  96(r19)
00099c  63cbc900  loadli.w r22,  100(r19)
0009a0  e38bd900  loadli.w r23,  104(r19)
0009a4  e3ccd900  loadli.w r25,  108(r19)
0009a8  638de900  loadli.w r26,  112(r19)
0009ac  e3cde900  loadli.w r27,  116(r19)
0009b0  638ef900  loadli.w r28,  120(r19)
0009b4  63c4f900  loadli.w r8,  124(r19)
0009b8  8f810100  exp.f.rn r3, r3
0009bc  8f820200  exp.f.rn r5, r5
0009c0  8f830300  exp.f.rn r7, r7
0009c4  8f850500  exp.f.rn r11, r11
0009c8  0f060600  exp.f.rn r12, r12
0009cc  8f870700  exp.f.rn r15, r15
0009d0  0f080800  exp.f.rn r16, r16
0009d4  0f0a0a00  exp.f.rn r20, r20
0009d8  8f8a0a00  exp.f.rn r21, r21
0009dc  0f0b0b00  exp.f.rn r22, r22
0009e0  8f8b0b00  exp.f.rn r23, r23
0009e4  8f8c0c00  exp.f.rn r25, r25
0009e8  0f0d0d00  exp.f.rn r26, r26
0009ec  8f8d0d00  exp.f.rn r27, r27
0009f0  0f0e0e00  exp.f.rn r28, r28
0009f4  0f040400  exp.f.rn r8, r8
0009f8  67843900  storeli.w r3, 64(r19)
0009fc  67c45900  storeli.w r5, 68(r19)
000a00  e7847900  storeli.w r7, 72(r19)
000a04  e7c4b900  storeli.w r11, 76(r19)
000a08  6785c900  storeli.w r12, 80(r19)
000a0c  67c5f900  storeli.w r15, 84(r19)
000a10  e7850901  storeli.w r16, 88(r19)
000a14  e7c54901  storeli.w r20, 92(r19)
000a18  67865901  storeli.w r21, 96(r19)
000a1c  67c66901  storeli.w r22, 100(r19)
000a20  e7867901  storeli.w r23, 104(r19)
000a24  e7c69901  storeli.w r25, 108(r19)
000a28  6787a901  storeli.w r26, 112(r19)
000a2c  67c7b901  storeli.w r27, 116(r19)
000a30  e787c901  storeli.w r28, 120(r19)
000a34  e7c78900  storeli.w r8, 124(r19)
000a38  e3810901  loadli.w r3,  128(r19)
000a3c  e3c20901  loadli.w r5,  132(r19)
000a40  e3831901  loadli.w r7,  136(r19)
000a44  e3c51901  loadli.w r11,  140(r19)
000a48  63862901  loadli.w r12,  144(r19)
000a4c  e3c72901  loadli.w r15,  148(r19)
000a50  63883901  loadli.w r16,  152(r19)
000a54  63ca3901  loadli.w r20,  156(r19)
000a58  e38a4901  loadli.w r21,  160(r19)
000a5c  63cb4901  loadli.w r22,  164(r19)
000a60  e38b5901  loadli.w r23,  168(r19)
000a64  e3cc5901  loadli.w r25,  172(r19)
000a68  638d6901  loadli.w r26,  176(r19)
000a6c  e3cd6901  loadli.w r27,  180(r19)
000a70  638e7901  loadli.w r28,  184(r19)
000a74  63c47901  loadli.w r8,  188(r19)
000a78  8f810100  exp.f.rn r3, r3
000a7c  8f820200  exp.f.rn r5, r5
000a80  8f830300  exp.f.rn r7, r7
000a84  8f850500  exp.f.rn r11, r11
000a88  0f060600  exp.f.rn r12, r12
000a8c  8f870700  exp.f.rn r15, r15
000a90  0f080800  exp.f.rn r16, r16
000a94  0f0a0a00  exp.f.rn r20, r20
000a98  8f8a0a00  exp.f.rn r21, r21
000a9c  0f0b0b00  exp.f.rn r22, r22
000aa0  8f8b0b00  exp.f.rn r23, r23
000aa4  8f8c0c00  exp.f.rn r25, r25
000aa8  0f0d0d00  exp.f.rn r26, r26
000aac  8f8d0d00  exp.f.rn r27, r27
000ab0  0f0e0e00  exp.f.rn r28, r28
000ab4  0f040400  exp.f.rn r8, r8
000ab8  67883900  storeli.w r3, 128(r19)
000abc  67c85900  storeli.w r5, 132(r19)
000ac0  e7887900  storeli.w r7, 136(r19)
000ac4  e7c8b900  storeli.w r11, 140(r19)
000ac8  6789c900  storeli.w r12, 144(r19)
000acc  67c9f900  storeli.w r15, 148(r19)
000ad0  e7890901  storeli.w r16, 152(r19)
000ad4  e7c94901  storeli.w r20, 156(r19)
000ad8  678a5901  storeli.w r21, 160(r19)
000adc  67ca6901  storeli.w r22, 164(r19)
000ae0  e78a7901  storeli.w r23, 168(r19)
000ae4  e7ca9901  storeli.w r25, 172(r19)
000ae8  678ba901  storeli.w r26, 176(r19)
000aec  67cbb901  storeli.w r27, 180(r19)
000af0  e78bc901  storeli.w r28, 184(r19)
000af4  e7cb8900  storeli.w r8, 188(r19)
000af8  e3818901  loadli.w r3,  192(r19)
000afc  e3c28901  loadli.w r5,  196(r19)
000b00  e3839901  loadli.w r7,  200(r19)
000b04  e3c59901  loadli.w r11,  204(r19)
000b08  6386a901  loadli.w r12,  208(r19)
000b0c  e3c7a901  loadli.w r15,  212(r19)
000b10  6388b901  loadli.w r16,  216(r19)
000b14  63cab901  loadli.w r20,  220(r19)
000b18  e38ac901  loadli.w r21,  224(r19)
000b1c  63cbc901  loadli.w r22,  228(r19)
000b20  e38bd901  loadli.w r23,  232(r19)
000b24  e3ccd901  loadli.w r25,  236(r19)
000b28  638de901  loadli.w r26,  240(r19)
000b2c  e3cde901  loadli.w r27,  244(r19)
000b30  638ef901  loadli.w r28,  248(r19)
000b34  63c4f901  loadli.w r8,  252(r19)
000b38  8f810100  exp.f.rn r3, r3
000b3c  8f820200  exp.f.rn r5, r5
000b40  8f830300  exp.f.rn r7, r7
000b44  8f850500  exp.f.rn r11, r11
000b48  0f060600  exp.f.rn r12, r12
000b4c  8f870700  exp.f.rn r15, r15
000b50  0f080800  exp.f.rn r16, r16
000b54  0f0a0a00  exp.f.rn r20, r20
000b58  8f8a0a00  exp.f.rn r21, r21
000b5c  0f0b0b00  exp.f.rn r22, r22
000b60  8f8b0b00  exp.f.rn r23, r23
000b64  8f8c0c00  exp.f.rn r25, r25
000b68  0f0d0d00  exp.f.rn r26, r26
000b6c  8f8d0d00  exp.f.rn r27, r27
000b70  0f0e0e00  exp.f.rn r28, r28
000b74  0f040400  exp.f.rn r8, r8
000b78  678c3900  storeli.w r3, 192(r19)
000b7c  67cc5900  storeli.w r5, 196(r19)
000b80  e78c7900  storeli.w r7, 200(r19)
000b84  e7ccb900  storeli.w r11, 204(r19)
000b88  678dc900  storeli.w r12, 208(r19)
000b8c  67cdf900  storeli.w r15, 212(r19)
000b90  e78d0901  storeli.w r16, 216(r19)
000b94  e7cd4901  storeli.w r20, 220(r19)
000b98  678e5901  storeli.w r21, 224(r19)
000b9c  67ce6901  storeli.w r22, 228(r19)
000ba0  e78e7901  storeli.w r23, 232(r19)
000ba4  e7ce9901  storeli.w r25, 236(r19)
000ba8  678fa901  storeli.w r26, 240(r19)
000bac  67cfb901  storeli.w r27, 244(r19)
000bb0  e78fc901  storeli.w r28, 248(r19)
000bb4  e7cf8900  storeli.w r8, 252(r19)
000bb8  00a00000  mfence { lm }
000bbc  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
000bc0  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
000bc4  9f018fd6  addli r3, r30, -5312
000bc8  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
000bcc  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000bd0  c2128fe3  vload_mask16.mz vr5{mr1}, 1984(r30)
000bd4  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
000bd8  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000bdc  9f010fd6  addli r3, r30, -5376
000be0  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000be4  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
000be8  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000bec  92910002  vadd.f.mz.rn vr3{mr1}, r1, vr0
000bf0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
000bf4  9f018fd5  addli r3, r30, -5440
000bf8  16101202  vadd.f.mz.rn vr0{mr1}, vr4, vr1
000bfc  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000c00  9f018fd8  addli r3, r30, -5056
000c04  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
000c08  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000c0c  9f018fd6  addli r3, r30, -5312
000c10  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000c14  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000c18  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000c1c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
000c20  9f018fd7  addli r3, r30, -5184
000c24  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000c28  00a00000  mfence { lm }
000c2c  e3810900  loadli.w r3,  0(r19)
000c30  e3c20900  loadli.w r5,  4(r19)
000c34  e3831900  loadli.w r7,  8(r19)
000c38  63c41900  loadli.w r8,  12(r19)
000c3c  e3852900  loadli.w r11,  16(r19)
000c40  63c62900  loadli.w r12,  20(r19)
000c44  e3873900  loadli.w r15,  24(r19)
000c48  63c83900  loadli.w r16,  28(r19)
000c4c  638a4900  loadli.w r20,  32(r19)
000c50  e3ca4900  loadli.w r21,  36(r19)
000c54  638b5900  loadli.w r22,  40(r19)
000c58  e3cb5900  loadli.w r23,  44(r19)
000c5c  e38c6900  loadli.w r25,  48(r19)
000c60  63cd6900  loadli.w r26,  52(r19)
000c64  e38d7900  loadli.w r27,  56(r19)
000c68  63ce7900  loadli.w r28,  60(r19)
000c6c  8f810100  exp.f.rn r3, r3
000c70  8f820200  exp.f.rn r5, r5
000c74  8f830300  exp.f.rn r7, r7
000c78  0f040400  exp.f.rn r8, r8
000c7c  8f850500  exp.f.rn r11, r11
000c80  0f060600  exp.f.rn r12, r12
000c84  8f870700  exp.f.rn r15, r15
000c88  0f080800  exp.f.rn r16, r16
000c8c  0f0a0a00  exp.f.rn r20, r20
000c90  8f8a0a00  exp.f.rn r21, r21
000c94  0f0b0b00  exp.f.rn r22, r22
000c98  8f8b0b00  exp.f.rn r23, r23
000c9c  8f8c0c00  exp.f.rn r25, r25
000ca0  0f0d0d00  exp.f.rn r26, r26
000ca4  8f8d0d00  exp.f.rn r27, r27
000ca8  0f0e0e00  exp.f.rn r28, r28
000cac  67803900  storeli.w r3, 0(r19)
000cb0  67c05900  storeli.w r5, 4(r19)
000cb4  e7807900  storeli.w r7, 8(r19)
000cb8  e7c08900  storeli.w r8, 12(r19)
000cbc  6781b900  storeli.w r11, 16(r19)
000cc0  67c1c900  storeli.w r12, 20(r19)
000cc4  e781f900  storeli.w r15, 24(r19)
000cc8  e7c10901  storeli.w r16, 28(r19)
000ccc  67824901  storeli.w r20, 32(r19)
000cd0  67c25901  storeli.w r21, 36(r19)
000cd4  e7826901  storeli.w r22, 40(r19)
000cd8  e7c27901  storeli.w r23, 44(r19)
000cdc  67839901  storeli.w r25, 48(r19)
000ce0  67c3a901  storeli.w r26, 52(r19)
000ce4  e783b901  storeli.w r27, 56(r19)
000ce8  e7c3c901  storeli.w r28, 60(r19)
000cec  e3818900  loadli.w r3,  64(r19)
000cf0  e3c28900  loadli.w r5,  68(r19)
000cf4  e3839900  loadli.w r7,  72(r19)
000cf8  63c49900  loadli.w r8,  76(r19)
000cfc  e385a900  loadli.w r11,  80(r19)
000d00  63c6a900  loadli.w r12,  84(r19)
000d04  e387b900  loadli.w r15,  88(r19)
000d08  63c8b900  loadli.w r16,  92(r19)
000d0c  638ac900  loadli.w r20,  96(r19)
000d10  e3cac900  loadli.w r21,  100(r19)
000d14  638bd900  loadli.w r22,  104(r19)
000d18  e3cbd900  loadli.w r23,  108(r19)
000d1c  e38ce900  loadli.w r25,  112(r19)
000d20  63cde900  loadli.w r26,  116(r19)
000d24  e38df900  loadli.w r27,  120(r19)
000d28  63cef900  loadli.w r28,  124(r19)
000d2c  8f810100  exp.f.rn r3, r3
000d30  8f820200  exp.f.rn r5, r5
000d34  8f830300  exp.f.rn r7, r7
000d38  0f040400  exp.f.rn r8, r8
000d3c  8f850500  exp.f.rn r11, r11
000d40  0f060600  exp.f.rn r12, r12
000d44  8f870700  exp.f.rn r15, r15
000d48  0f080800  exp.f.rn r16, r16
000d4c  0f0a0a00  exp.f.rn r20, r20
000d50  8f8a0a00  exp.f.rn r21, r21
000d54  0f0b0b00  exp.f.rn r22, r22
000d58  8f8b0b00  exp.f.rn r23, r23
000d5c  8f8c0c00  exp.f.rn r25, r25
000d60  0f0d0d00  exp.f.rn r26, r26
000d64  8f8d0d00  exp.f.rn r27, r27
000d68  0f0e0e00  exp.f.rn r28, r28
000d6c  67843900  storeli.w r3, 64(r19)
000d70  67c45900  storeli.w r5, 68(r19)
000d74  e7847900  storeli.w r7, 72(r19)
000d78  e7c48900  storeli.w r8, 76(r19)
000d7c  6785b900  storeli.w r11, 80(r19)
000d80  67c5c900  storeli.w r12, 84(r19)
000d84  e785f900  storeli.w r15, 88(r19)
000d88  e7c50901  storeli.w r16, 92(r19)
000d8c  67864901  storeli.w r20, 96(r19)
000d90  67c65901  storeli.w r21, 100(r19)
000d94  e7866901  storeli.w r22, 104(r19)
000d98  e7c67901  storeli.w r23, 108(r19)
000d9c  67879901  storeli.w r25, 112(r19)
000da0  67c7a901  storeli.w r26, 116(r19)
000da4  e787b901  storeli.w r27, 120(r19)
000da8  e7c7c901  storeli.w r28, 124(r19)
000dac  e3810901  loadli.w r3,  128(r19)
000db0  e3c20901  loadli.w r5,  132(r19)
000db4  e3831901  loadli.w r7,  136(r19)
000db8  63c41901  loadli.w r8,  140(r19)
000dbc  e3852901  loadli.w r11,  144(r19)
000dc0  63c62901  loadli.w r12,  148(r19)
000dc4  e3873901  loadli.w r15,  152(r19)
000dc8  63c83901  loadli.w r16,  156(r19)
000dcc  638a4901  loadli.w r20,  160(r19)
000dd0  e3ca4901  loadli.w r21,  164(r19)
000dd4  638b5901  loadli.w r22,  168(r19)
000dd8  e3cb5901  loadli.w r23,  172(r19)
000ddc  e38c6901  loadli.w r25,  176(r19)
000de0  63cd6901  loadli.w r26,  180(r19)
000de4  e38d7901  loadli.w r27,  184(r19)
000de8  63ce7901  loadli.w r28,  188(r19)
000dec  8f810100  exp.f.rn r3, r3
000df0  8f820200  exp.f.rn r5, r5
000df4  8f830300  exp.f.rn r7, r7
000df8  0f040400  exp.f.rn r8, r8
000dfc  8f850500  exp.f.rn r11, r11
000e00  0f060600  exp.f.rn r12, r12
000e04  8f870700  exp.f.rn r15, r15
000e08  0f080800  exp.f.rn r16, r16
000e0c  0f0a0a00  exp.f.rn r20, r20
000e10  8f8a0a00  exp.f.rn r21, r21
000e14  0f0b0b00  exp.f.rn r22, r22
000e18  8f8b0b00  exp.f.rn r23, r23
000e1c  8f8c0c00  exp.f.rn r25, r25
000e20  0f0d0d00  exp.f.rn r26, r26
000e24  8f8d0d00  exp.f.rn r27, r27
000e28  0f0e0e00  exp.f.rn r28, r28
000e2c  67883900  storeli.w r3, 128(r19)
000e30  67c85900  storeli.w r5, 132(r19)
000e34  e7887900  storeli.w r7, 136(r19)
000e38  e7c88900  storeli.w r8, 140(r19)
000e3c  6789b900  storeli.w r11, 144(r19)
000e40  67c9c900  storeli.w r12, 148(r19)
000e44  e789f900  storeli.w r15, 152(r19)
000e48  e7c90901  storeli.w r16, 156(r19)
000e4c  678a4901  storeli.w r20, 160(r19)
000e50  67ca5901  storeli.w r21, 164(r19)
000e54  e78a6901  storeli.w r22, 168(r19)
000e58  e7ca7901  storeli.w r23, 172(r19)
000e5c  678b9901  storeli.w r25, 176(r19)
000e60  67cba901  storeli.w r26, 180(r19)
000e64  e78bb901  storeli.w r27, 184(r19)
000e68  e7cbc901  storeli.w r28, 188(r19)
000e6c  e3818901  loadli.w r3,  192(r19)
000e70  e3c28901  loadli.w r5,  196(r19)
000e74  e3839901  loadli.w r7,  200(r19)
000e78  63c49901  loadli.w r8,  204(r19)
000e7c  e385a901  loadli.w r11,  208(r19)
000e80  63c6a901  loadli.w r12,  212(r19)
000e84  e387b901  loadli.w r15,  216(r19)
000e88  63c8b901  loadli.w r16,  220(r19)
000e8c  638ac901  loadli.w r20,  224(r19)
000e90  e3cac901  loadli.w r21,  228(r19)
000e94  638bd901  loadli.w r22,  232(r19)
000e98  e3cbd901  loadli.w r23,  236(r19)
000e9c  e38ce901  loadli.w r25,  240(r19)
000ea0  63cde901  loadli.w r26,  244(r19)
000ea4  e38df901  loadli.w r27,  248(r19)
000ea8  63cef901  loadli.w r28,  252(r19)
000eac  8f810100  exp.f.rn r3, r3
000eb0  8f820200  exp.f.rn r5, r5
000eb4  8f830300  exp.f.rn r7, r7
000eb8  0f040400  exp.f.rn r8, r8
000ebc  8f850500  exp.f.rn r11, r11
000ec0  0f060600  exp.f.rn r12, r12
000ec4  8f870700  exp.f.rn r15, r15
000ec8  0f080800  exp.f.rn r16, r16
000ecc  0f0a0a00  exp.f.rn r20, r20
000ed0  8f8a0a00  exp.f.rn r21, r21
000ed4  0f0b0b00  exp.f.rn r22, r22
000ed8  8f8b0b00  exp.f.rn r23, r23
000edc  8f8c0c00  exp.f.rn r25, r25
000ee0  0f0d0d00  exp.f.rn r26, r26
000ee4  8f8d0d00  exp.f.rn r27, r27
000ee8  0f0e0e00  exp.f.rn r28, r28
000eec  678c3900  storeli.w r3, 192(r19)
000ef0  67cc5900  storeli.w r5, 196(r19)
000ef4  e78c7900  storeli.w r7, 200(r19)
000ef8  e7cc8900  storeli.w r8, 204(r19)
000efc  678db900  storeli.w r11, 208(r19)
000f00  67cdc900  storeli.w r12, 212(r19)
000f04  e78df900  storeli.w r15, 216(r19)
000f08  e7cd0901  storeli.w r16, 220(r19)
000f0c  678e4901  storeli.w r20, 224(r19)
000f10  67ce5901  storeli.w r21, 228(r19)
000f14  e78e6901  storeli.w r22, 232(r19)
000f18  e7ce7901  storeli.w r23, 236(r19)
000f1c  678f9901  storeli.w r25, 240(r19)
000f20  67cfa901  storeli.w r26, 244(r19)
000f24  e78fb901  storeli.w r27, 248(r19)
000f28  e7cfc901  storeli.w r28, 252(r19)
000f2c  00a00000  mfence { lm }
000f30  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000f34  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
000f38  9f018fd8  addli r3, r30, -5056
000f3c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f40  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
000f44  9f018fd7  addli r3, r30, -5184
000f48  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
000f4c  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
000f50  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
000f54  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000f58  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
000f5c  9f010fdd  addli r3, r30, -4480
000f60  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000f64  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f68  9f018fdc  addli r3, r30, -4544
000f6c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f70  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000f74  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f78  9f010fd5  addli r3, r30, -5504
000f7c  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000f80  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f84  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
000f88  9f010fd8  addli r3, r30, -5120
000f8c  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
000f90  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f94  9f018fdc  addli r3, r30, -4544
000f98  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000f9c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000fa0  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000fa4  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000fa8  9f018fd9  addli r3, r30, -4928
000fac  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000fb0  00a00000  mfence { lm }
000fb4  e3810900  loadli.w r3,  0(r19)
000fb8  e3c20900  loadli.w r5,  4(r19)
000fbc  e3831900  loadli.w r7,  8(r19)
000fc0  63c41900  loadli.w r8,  12(r19)
000fc4  e3852900  loadli.w r11,  16(r19)
000fc8  63c62900  loadli.w r12,  20(r19)
000fcc  e3873900  loadli.w r15,  24(r19)
000fd0  63c83900  loadli.w r16,  28(r19)
000fd4  638a4900  loadli.w r20,  32(r19)
000fd8  e3ca4900  loadli.w r21,  36(r19)
000fdc  638b5900  loadli.w r22,  40(r19)
000fe0  e3cb5900  loadli.w r23,  44(r19)
000fe4  e38c6900  loadli.w r25,  48(r19)
000fe8  63cd6900  loadli.w r26,  52(r19)
000fec  e38d7900  loadli.w r27,  56(r19)
000ff0  63ce7900  loadli.w r28,  60(r19)
000ff4  8f810100  exp.f.rn r3, r3
000ff8  8f820200  exp.f.rn r5, r5
000ffc  8f830300  exp.f.rn r7, r7
001000  0f040400  exp.f.rn r8, r8
001004  8f850500  exp.f.rn r11, r11
001008  0f060600  exp.f.rn r12, r12
00100c  8f870700  exp.f.rn r15, r15
001010  0f080800  exp.f.rn r16, r16
001014  0f0a0a00  exp.f.rn r20, r20
001018  8f8a0a00  exp.f.rn r21, r21
00101c  0f0b0b00  exp.f.rn r22, r22
001020  8f8b0b00  exp.f.rn r23, r23
001024  8f8c0c00  exp.f.rn r25, r25
001028  0f0d0d00  exp.f.rn r26, r26
00102c  8f8d0d00  exp.f.rn r27, r27
001030  0f0e0e00  exp.f.rn r28, r28
001034  67803900  storeli.w r3, 0(r19)
001038  67c05900  storeli.w r5, 4(r19)
00103c  e7807900  storeli.w r7, 8(r19)
001040  e7c08900  storeli.w r8, 12(r19)
001044  6781b900  storeli.w r11, 16(r19)
001048  67c1c900  storeli.w r12, 20(r19)
00104c  e781f900  storeli.w r15, 24(r19)
001050  e7c10901  storeli.w r16, 28(r19)
001054  67824901  storeli.w r20, 32(r19)
001058  67c25901  storeli.w r21, 36(r19)
00105c  e7826901  storeli.w r22, 40(r19)
001060  e7c27901  storeli.w r23, 44(r19)
001064  67839901  storeli.w r25, 48(r19)
001068  67c3a901  storeli.w r26, 52(r19)
00106c  e783b901  storeli.w r27, 56(r19)
001070  e7c3c901  storeli.w r28, 60(r19)
001074  e3818900  loadli.w r3,  64(r19)
001078  e3c28900  loadli.w r5,  68(r19)
00107c  e3839900  loadli.w r7,  72(r19)
001080  63c49900  loadli.w r8,  76(r19)
001084  e385a900  loadli.w r11,  80(r19)
001088  63c6a900  loadli.w r12,  84(r19)
00108c  e387b900  loadli.w r15,  88(r19)
001090  63c8b900  loadli.w r16,  92(r19)
001094  638ac900  loadli.w r20,  96(r19)
001098  e3cac900  loadli.w r21,  100(r19)
00109c  638bd900  loadli.w r22,  104(r19)
0010a0  e3cbd900  loadli.w r23,  108(r19)
0010a4  e38ce900  loadli.w r25,  112(r19)
0010a8  63cde900  loadli.w r26,  116(r19)
0010ac  e38df900  loadli.w r27,  120(r19)
0010b0  63cef900  loadli.w r28,  124(r19)
0010b4  8f810100  exp.f.rn r3, r3
0010b8  8f820200  exp.f.rn r5, r5
0010bc  8f830300  exp.f.rn r7, r7
0010c0  0f040400  exp.f.rn r8, r8
0010c4  8f850500  exp.f.rn r11, r11
0010c8  0f060600  exp.f.rn r12, r12
0010cc  8f870700  exp.f.rn r15, r15
0010d0  0f080800  exp.f.rn r16, r16
0010d4  0f0a0a00  exp.f.rn r20, r20
0010d8  8f8a0a00  exp.f.rn r21, r21
0010dc  0f0b0b00  exp.f.rn r22, r22
0010e0  8f8b0b00  exp.f.rn r23, r23
0010e4  8f8c0c00  exp.f.rn r25, r25
0010e8  0f0d0d00  exp.f.rn r26, r26
0010ec  8f8d0d00  exp.f.rn r27, r27
0010f0  0f0e0e00  exp.f.rn r28, r28
0010f4  67843900  storeli.w r3, 64(r19)
0010f8  67c45900  storeli.w r5, 68(r19)
0010fc  e7847900  storeli.w r7, 72(r19)
001100  e7c48900  storeli.w r8, 76(r19)
001104  6785b900  storeli.w r11, 80(r19)
001108  67c5c900  storeli.w r12, 84(r19)
00110c  e785f900  storeli.w r15, 88(r19)
001110  e7c50901  storeli.w r16, 92(r19)
001114  67864901  storeli.w r20, 96(r19)
001118  67c65901  storeli.w r21, 100(r19)
00111c  e7866901  storeli.w r22, 104(r19)
001120  e7c67901  storeli.w r23, 108(r19)
001124  67879901  storeli.w r25, 112(r19)
001128  67c7a901  storeli.w r26, 116(r19)
00112c  e787b901  storeli.w r27, 120(r19)
001130  e7c7c901  storeli.w r28, 124(r19)
001134  e3810901  loadli.w r3,  128(r19)
001138  e3c20901  loadli.w r5,  132(r19)
00113c  e3831901  loadli.w r7,  136(r19)
001140  63c41901  loadli.w r8,  140(r19)
001144  e3852901  loadli.w r11,  144(r19)
001148  63c62901  loadli.w r12,  148(r19)
00114c  e3873901  loadli.w r15,  152(r19)
001150  63c83901  loadli.w r16,  156(r19)
001154  638a4901  loadli.w r20,  160(r19)
001158  e3ca4901  loadli.w r21,  164(r19)
00115c  638b5901  loadli.w r22,  168(r19)
001160  e3cb5901  loadli.w r23,  172(r19)
001164  e38c6901  loadli.w r25,  176(r19)
001168  63cd6901  loadli.w r26,  180(r19)
00116c  e38d7901  loadli.w r27,  184(r19)
001170  63ce7901  loadli.w r28,  188(r19)
001174  8f810100  exp.f.rn r3, r3
001178  8f820200  exp.f.rn r5, r5
00117c  8f830300  exp.f.rn r7, r7
001180  0f040400  exp.f.rn r8, r8
001184  8f850500  exp.f.rn r11, r11
001188  0f060600  exp.f.rn r12, r12
00118c  8f870700  exp.f.rn r15, r15
001190  0f080800  exp.f.rn r16, r16
001194  0f0a0a00  exp.f.rn r20, r20
001198  8f8a0a00  exp.f.rn r21, r21
00119c  0f0b0b00  exp.f.rn r22, r22
0011a0  8f8b0b00  exp.f.rn r23, r23
0011a4  8f8c0c00  exp.f.rn r25, r25
0011a8  0f0d0d00  exp.f.rn r26, r26
0011ac  8f8d0d00  exp.f.rn r27, r27
0011b0  0f0e0e00  exp.f.rn r28, r28
0011b4  67883900  storeli.w r3, 128(r19)
0011b8  67c85900  storeli.w r5, 132(r19)
0011bc  e7887900  storeli.w r7, 136(r19)
0011c0  e7c88900  storeli.w r8, 140(r19)
0011c4  6789b900  storeli.w r11, 144(r19)
0011c8  67c9c900  storeli.w r12, 148(r19)
0011cc  e789f900  storeli.w r15, 152(r19)
0011d0  e7c90901  storeli.w r16, 156(r19)
0011d4  678a4901  storeli.w r20, 160(r19)
0011d8  67ca5901  storeli.w r21, 164(r19)
0011dc  e78a6901  storeli.w r22, 168(r19)
0011e0  e7ca7901  storeli.w r23, 172(r19)
0011e4  678b9901  storeli.w r25, 176(r19)
0011e8  67cba901  storeli.w r26, 180(r19)
0011ec  e78bb901  storeli.w r27, 184(r19)
0011f0  e7cbc901  storeli.w r28, 188(r19)
0011f4  e3818901  loadli.w r3,  192(r19)
0011f8  e3c28901  loadli.w r5,  196(r19)
0011fc  e3839901  loadli.w r7,  200(r19)
001200  63c49901  loadli.w r8,  204(r19)
001204  e385a901  loadli.w r11,  208(r19)
001208  63c6a901  loadli.w r12,  212(r19)
00120c  e387b901  loadli.w r15,  216(r19)
001210  63c8b901  loadli.w r16,  220(r19)
001214  638ac901  loadli.w r20,  224(r19)
001218  e3cac901  loadli.w r21,  228(r19)
00121c  638bd901  loadli.w r22,  232(r19)
001220  e3cbd901  loadli.w r23,  236(r19)
001224  e38ce901  loadli.w r25,  240(r19)
001228  63cde901  loadli.w r26,  244(r19)
00122c  e38df901  loadli.w r27,  248(r19)
001230  63cef901  loadli.w r28,  252(r19)
001234  8f810100  exp.f.rn r3, r3
001238  8f820200  exp.f.rn r5, r5
00123c  8f830300  exp.f.rn r7, r7
001240  0f040400  exp.f.rn r8, r8
001244  8f850500  exp.f.rn r11, r11
001248  0f060600  exp.f.rn r12, r12
00124c  8f870700  exp.f.rn r15, r15
001250  0f080800  exp.f.rn r16, r16
001254  0f0a0a00  exp.f.rn r20, r20
001258  8f8a0a00  exp.f.rn r21, r21
00125c  0f0b0b00  exp.f.rn r22, r22
001260  8f8b0b00  exp.f.rn r23, r23
001264  8f8c0c00  exp.f.rn r25, r25
001268  0f0d0d00  exp.f.rn r26, r26
00126c  8f8d0d00  exp.f.rn r27, r27
001270  0f0e0e00  exp.f.rn r28, r28
001274  678c3900  storeli.w r3, 192(r19)
001278  67cc5900  storeli.w r5, 196(r19)
00127c  e78c7900  storeli.w r7, 200(r19)
001280  e7cc8900  storeli.w r8, 204(r19)
001284  678db900  storeli.w r11, 208(r19)
001288  67cdc900  storeli.w r12, 212(r19)
00128c  e78df900  storeli.w r15, 216(r19)
001290  e7cd0901  storeli.w r16, 220(r19)
001294  678e4901  storeli.w r20, 224(r19)
001298  67ce5901  storeli.w r21, 228(r19)
00129c  e78e6901  storeli.w r22, 232(r19)
0012a0  e7ce7901  storeli.w r23, 236(r19)
0012a4  678f9901  storeli.w r25, 240(r19)
0012a8  67cfa901  storeli.w r26, 244(r19)
0012ac  e78fb901  storeli.w r27, 248(r19)
0012b0  e7cfc901  storeli.w r28, 252(r19)
0012b4  00a00000  mfence { lm }
0012b8  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0012bc  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
0012c0  9f010fdd  addli r3, r30, -4480
0012c4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0012c8  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
0012cc  9f018fd9  addli r3, r30, -4928
0012d0  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
0012d4  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
0012d8  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
0012dc  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0012e0  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
0012e4  9f010fd0  addli r3, r30, -6144
0012e8  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
0012ec  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0012f0  9f010fda  addli r3, r30, -4864
0012f4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0012f8  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
0012fc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001300  9f010fd8  addli r3, r30, -5120
001304  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
001308  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
00130c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001310  9f018fd3  addli r3, r30, -5696
001314  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001318  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00131c  9f010fda  addli r3, r30, -4864
001320  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001324  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001328  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
00132c  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
001330  9f010fdb  addli r3, r30, -4736
001334  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001338  00a00000  mfence { lm }
00133c  e3810900  loadli.w r3,  0(r19)
001340  e3c20900  loadli.w r5,  4(r19)
001344  e3831900  loadli.w r7,  8(r19)
001348  63c41900  loadli.w r8,  12(r19)
00134c  e3852900  loadli.w r11,  16(r19)
001350  63c62900  loadli.w r12,  20(r19)
001354  e3873900  loadli.w r15,  24(r19)
001358  63c83900  loadli.w r16,  28(r19)
00135c  638a4900  loadli.w r20,  32(r19)
001360  e3ca4900  loadli.w r21,  36(r19)
001364  638b5900  loadli.w r22,  40(r19)
001368  e3cb5900  loadli.w r23,  44(r19)
00136c  e38c6900  loadli.w r25,  48(r19)
001370  63cd6900  loadli.w r26,  52(r19)
001374  e38d7900  loadli.w r27,  56(r19)
001378  63ce7900  loadli.w r28,  60(r19)
00137c  8f810100  exp.f.rn r3, r3
001380  8f820200  exp.f.rn r5, r5
001384  8f830300  exp.f.rn r7, r7
001388  0f040400  exp.f.rn r8, r8
00138c  8f850500  exp.f.rn r11, r11
001390  0f060600  exp.f.rn r12, r12
001394  8f870700  exp.f.rn r15, r15
001398  0f080800  exp.f.rn r16, r16
00139c  0f0a0a00  exp.f.rn r20, r20
0013a0  8f8a0a00  exp.f.rn r21, r21
0013a4  0f0b0b00  exp.f.rn r22, r22
0013a8  8f8b0b00  exp.f.rn r23, r23
0013ac  8f8c0c00  exp.f.rn r25, r25
0013b0  0f0d0d00  exp.f.rn r26, r26
0013b4  8f8d0d00  exp.f.rn r27, r27
0013b8  0f0e0e00  exp.f.rn r28, r28
0013bc  67803900  storeli.w r3, 0(r19)
0013c0  67c05900  storeli.w r5, 4(r19)
0013c4  e7807900  storeli.w r7, 8(r19)
0013c8  e7c08900  storeli.w r8, 12(r19)
0013cc  6781b900  storeli.w r11, 16(r19)
0013d0  67c1c900  storeli.w r12, 20(r19)
0013d4  e781f900  storeli.w r15, 24(r19)
0013d8  e7c10901  storeli.w r16, 28(r19)
0013dc  67824901  storeli.w r20, 32(r19)
0013e0  67c25901  storeli.w r21, 36(r19)
0013e4  e7826901  storeli.w r22, 40(r19)
0013e8  e7c27901  storeli.w r23, 44(r19)
0013ec  67839901  storeli.w r25, 48(r19)
0013f0  67c3a901  storeli.w r26, 52(r19)
0013f4  e783b901  storeli.w r27, 56(r19)
0013f8  e7c3c901  storeli.w r28, 60(r19)
0013fc  e3818900  loadli.w r3,  64(r19)
001400  e3c28900  loadli.w r5,  68(r19)
001404  e3839900  loadli.w r7,  72(r19)
001408  63c49900  loadli.w r8,  76(r19)
00140c  e385a900  loadli.w r11,  80(r19)
001410  63c6a900  loadli.w r12,  84(r19)
001414  e387b900  loadli.w r15,  88(r19)
001418  63c8b900  loadli.w r16,  92(r19)
00141c  638ac900  loadli.w r20,  96(r19)
001420  e3cac900  loadli.w r21,  100(r19)
001424  638bd900  loadli.w r22,  104(r19)
001428  e3cbd900  loadli.w r23,  108(r19)
00142c  e38ce900  loadli.w r25,  112(r19)
001430  63cde900  loadli.w r26,  116(r19)
001434  e38df900  loadli.w r27,  120(r19)
001438  63cef900  loadli.w r28,  124(r19)
00143c  8f810100  exp.f.rn r3, r3
001440  8f820200  exp.f.rn r5, r5
001444  8f830300  exp.f.rn r7, r7
001448  0f040400  exp.f.rn r8, r8
00144c  8f850500  exp.f.rn r11, r11
001450  0f060600  exp.f.rn r12, r12
001454  8f870700  exp.f.rn r15, r15
001458  0f080800  exp.f.rn r16, r16
00145c  0f0a0a00  exp.f.rn r20, r20
001460  8f8a0a00  exp.f.rn r21, r21
001464  0f0b0b00  exp.f.rn r22, r22
001468  8f8b0b00  exp.f.rn r23, r23
00146c  8f8c0c00  exp.f.rn r25, r25
001470  0f0d0d00  exp.f.rn r26, r26
001474  8f8d0d00  exp.f.rn r27, r27
001478  0f0e0e00  exp.f.rn r28, r28
00147c  67843900  storeli.w r3, 64(r19)
001480  67c45900  storeli.w r5, 68(r19)
001484  e7847900  storeli.w r7, 72(r19)
001488  e7c48900  storeli.w r8, 76(r19)
00148c  6785b900  storeli.w r11, 80(r19)
001490  67c5c900  storeli.w r12, 84(r19)
001494  e785f900  storeli.w r15, 88(r19)
001498  e7c50901  storeli.w r16, 92(r19)
00149c  67864901  storeli.w r20, 96(r19)
0014a0  67c65901  storeli.w r21, 100(r19)
0014a4  e7866901  storeli.w r22, 104(r19)
0014a8  e7c67901  storeli.w r23, 108(r19)
0014ac  67879901  storeli.w r25, 112(r19)
0014b0  67c7a901  storeli.w r26, 116(r19)
0014b4  e787b901  storeli.w r27, 120(r19)
0014b8  e7c7c901  storeli.w r28, 124(r19)
0014bc  e3810901  loadli.w r3,  128(r19)
0014c0  e3c20901  loadli.w r5,  132(r19)
0014c4  e3831901  loadli.w r7,  136(r19)
0014c8  63c41901  loadli.w r8,  140(r19)
0014cc  e3852901  loadli.w r11,  144(r19)
0014d0  63c62901  loadli.w r12,  148(r19)
0014d4  e3873901  loadli.w r15,  152(r19)
0014d8  63c83901  loadli.w r16,  156(r19)
0014dc  638a4901  loadli.w r20,  160(r19)
0014e0  e3ca4901  loadli.w r21,  164(r19)
0014e4  638b5901  loadli.w r22,  168(r19)
0014e8  e3cb5901  loadli.w r23,  172(r19)
0014ec  e38c6901  loadli.w r25,  176(r19)
0014f0  63cd6901  loadli.w r26,  180(r19)
0014f4  e38d7901  loadli.w r27,  184(r19)
0014f8  63ce7901  loadli.w r28,  188(r19)
0014fc  8f810100  exp.f.rn r3, r3
001500  8f820200  exp.f.rn r5, r5
001504  8f830300  exp.f.rn r7, r7
001508  0f040400  exp.f.rn r8, r8
00150c  8f850500  exp.f.rn r11, r11
001510  0f060600  exp.f.rn r12, r12
001514  8f870700  exp.f.rn r15, r15
001518  0f080800  exp.f.rn r16, r16
00151c  0f0a0a00  exp.f.rn r20, r20
001520  8f8a0a00  exp.f.rn r21, r21
001524  0f0b0b00  exp.f.rn r22, r22
001528  8f8b0b00  exp.f.rn r23, r23
00152c  8f8c0c00  exp.f.rn r25, r25
001530  0f0d0d00  exp.f.rn r26, r26
001534  8f8d0d00  exp.f.rn r27, r27
001538  0f0e0e00  exp.f.rn r28, r28
00153c  67883900  storeli.w r3, 128(r19)
001540  67c85900  storeli.w r5, 132(r19)
001544  e7887900  storeli.w r7, 136(r19)
001548  e7c88900  storeli.w r8, 140(r19)
00154c  6789b900  storeli.w r11, 144(r19)
001550  67c9c900  storeli.w r12, 148(r19)
001554  e789f900  storeli.w r15, 152(r19)
001558  e7c90901  storeli.w r16, 156(r19)
00155c  678a4901  storeli.w r20, 160(r19)
001560  67ca5901  storeli.w r21, 164(r19)
001564  e78a6901  storeli.w r22, 168(r19)
001568  e7ca7901  storeli.w r23, 172(r19)
00156c  678b9901  storeli.w r25, 176(r19)
001570  67cba901  storeli.w r26, 180(r19)
001574  e78bb901  storeli.w r27, 184(r19)
001578  e7cbc901  storeli.w r28, 188(r19)
00157c  e3818901  loadli.w r3,  192(r19)
001580  e3c28901  loadli.w r5,  196(r19)
001584  e3839901  loadli.w r7,  200(r19)
001588  63c49901  loadli.w r8,  204(r19)
00158c  e385a901  loadli.w r11,  208(r19)
001590  63c6a901  loadli.w r12,  212(r19)
001594  e387b901  loadli.w r15,  216(r19)
001598  63c8b901  loadli.w r16,  220(r19)
00159c  638ac901  loadli.w r20,  224(r19)
0015a0  e3cac901  loadli.w r21,  228(r19)
0015a4  638bd901  loadli.w r22,  232(r19)
0015a8  e3cbd901  loadli.w r23,  236(r19)
0015ac  e38ce901  loadli.w r25,  240(r19)
0015b0  63cde901  loadli.w r26,  244(r19)
0015b4  e38df901  loadli.w r27,  248(r19)
0015b8  63cef901  loadli.w r28,  252(r19)
0015bc  8f810100  exp.f.rn r3, r3
0015c0  8f820200  exp.f.rn r5, r5
0015c4  8f830300  exp.f.rn r7, r7
0015c8  0f040400  exp.f.rn r8, r8
0015cc  8f850500  exp.f.rn r11, r11
0015d0  0f060600  exp.f.rn r12, r12
0015d4  8f870700  exp.f.rn r15, r15
0015d8  0f080800  exp.f.rn r16, r16
0015dc  0f0a0a00  exp.f.rn r20, r20
0015e0  8f8a0a00  exp.f.rn r21, r21
0015e4  0f0b0b00  exp.f.rn r22, r22
0015e8  8f8b0b00  exp.f.rn r23, r23
0015ec  8f8c0c00  exp.f.rn r25, r25
0015f0  0f0d0d00  exp.f.rn r26, r26
0015f4  8f8d0d00  exp.f.rn r27, r27
0015f8  0f0e0e00  exp.f.rn r28, r28
0015fc  678c3900  storeli.w r3, 192(r19)
001600  67cc5900  storeli.w r5, 196(r19)
001604  e78c7900  storeli.w r7, 200(r19)
001608  e7cc8900  storeli.w r8, 204(r19)
00160c  678db900  storeli.w r11, 208(r19)
001610  67cdc900  storeli.w r12, 212(r19)
001614  e78df900  storeli.w r15, 216(r19)
001618  e7cd0901  storeli.w r16, 220(r19)
00161c  678e4901  storeli.w r20, 224(r19)
001620  67ce5901  storeli.w r21, 228(r19)
001624  e78e6901  storeli.w r22, 232(r19)
001628  e7ce7901  storeli.w r23, 236(r19)
00162c  678f9901  storeli.w r25, 240(r19)
001630  67cfa901  storeli.w r26, 244(r19)
001634  e78fb901  storeli.w r27, 248(r19)
001638  e7cfc901  storeli.w r28, 252(r19)
00163c  00a00000  mfence { lm }
001640  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001644  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
001648  9f010fdb  addli r3, r30, -4736
00164c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001650  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
001654  9f018fd4  addli r3, r30, -5568
001658  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
00165c  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
001660  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
001664  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001668  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
00166c  9f010fdc  addli r3, r30, -4608
001670  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
001674  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001678  9f018fdb  addli r3, r30, -4672
00167c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001680  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001684  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001688  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
00168c  9f018fdd  addli r3, r30, -4416
001690  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
001694  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001698  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
00169c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0016a0  9f010fdc  addli r3, r30, -4608
0016a4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0016a8  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0016ac  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0016b0  9f010fd9  addli r3, r30, -4992
0016b4  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0016b8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0016bc  00a00000  mfence { lm }
0016c0  e3810900  loadli.w r3,  0(r19)
0016c4  e3c20900  loadli.w r5,  4(r19)
0016c8  e3831900  loadli.w r7,  8(r19)
0016cc  63c41900  loadli.w r8,  12(r19)
0016d0  e3852900  loadli.w r11,  16(r19)
0016d4  63c62900  loadli.w r12,  20(r19)
0016d8  e3873900  loadli.w r15,  24(r19)
0016dc  63c83900  loadli.w r16,  28(r19)
0016e0  638a4900  loadli.w r20,  32(r19)
0016e4  e3ca4900  loadli.w r21,  36(r19)
0016e8  638b5900  loadli.w r22,  40(r19)
0016ec  e3cb5900  loadli.w r23,  44(r19)
0016f0  e38c6900  loadli.w r25,  48(r19)
0016f4  63cd6900  loadli.w r26,  52(r19)
0016f8  e38d7900  loadli.w r27,  56(r19)
0016fc  63ce7900  loadli.w r28,  60(r19)
001700  8f810100  exp.f.rn r3, r3
001704  8f820200  exp.f.rn r5, r5
001708  8f830300  exp.f.rn r7, r7
00170c  0f040400  exp.f.rn r8, r8
001710  8f850500  exp.f.rn r11, r11
001714  0f060600  exp.f.rn r12, r12
001718  8f870700  exp.f.rn r15, r15
00171c  0f080800  exp.f.rn r16, r16
001720  0f0a0a00  exp.f.rn r20, r20
001724  8f8a0a00  exp.f.rn r21, r21
001728  0f0b0b00  exp.f.rn r22, r22
00172c  8f8b0b00  exp.f.rn r23, r23
001730  8f8c0c00  exp.f.rn r25, r25
001734  0f0d0d00  exp.f.rn r26, r26
001738  8f8d0d00  exp.f.rn r27, r27
00173c  0f0e0e00  exp.f.rn r28, r28
001740  67803900  storeli.w r3, 0(r19)
001744  67c05900  storeli.w r5, 4(r19)
001748  e7807900  storeli.w r7, 8(r19)
00174c  e7c08900  storeli.w r8, 12(r19)
001750  6781b900  storeli.w r11, 16(r19)
001754  67c1c900  storeli.w r12, 20(r19)
001758  e781f900  storeli.w r15, 24(r19)
00175c  e7c10901  storeli.w r16, 28(r19)
001760  67824901  storeli.w r20, 32(r19)
001764  67c25901  storeli.w r21, 36(r19)
001768  e7826901  storeli.w r22, 40(r19)
00176c  e7c27901  storeli.w r23, 44(r19)
001770  67839901  storeli.w r25, 48(r19)
001774  67c3a901  storeli.w r26, 52(r19)
001778  e783b901  storeli.w r27, 56(r19)
00177c  e7c3c901  storeli.w r28, 60(r19)
001780  e3818900  loadli.w r3,  64(r19)
001784  e3c28900  loadli.w r5,  68(r19)
001788  e3839900  loadli.w r7,  72(r19)
00178c  63c49900  loadli.w r8,  76(r19)
001790  e385a900  loadli.w r11,  80(r19)
001794  63c6a900  loadli.w r12,  84(r19)
001798  e387b900  loadli.w r15,  88(r19)
00179c  63c8b900  loadli.w r16,  92(r19)
0017a0  638ac900  loadli.w r20,  96(r19)
0017a4  e3cac900  loadli.w r21,  100(r19)
0017a8  638bd900  loadli.w r22,  104(r19)
0017ac  e3cbd900  loadli.w r23,  108(r19)
0017b0  e38ce900  loadli.w r25,  112(r19)
0017b4  63cde900  loadli.w r26,  116(r19)
0017b8  e38df900  loadli.w r27,  120(r19)
0017bc  63cef900  loadli.w r28,  124(r19)
0017c0  8f810100  exp.f.rn r3, r3
0017c4  8f820200  exp.f.rn r5, r5
0017c8  8f830300  exp.f.rn r7, r7
0017cc  0f040400  exp.f.rn r8, r8
0017d0  8f850500  exp.f.rn r11, r11
0017d4  0f060600  exp.f.rn r12, r12
0017d8  8f870700  exp.f.rn r15, r15
0017dc  0f080800  exp.f.rn r16, r16
0017e0  0f0a0a00  exp.f.rn r20, r20
0017e4  8f8a0a00  exp.f.rn r21, r21
0017e8  0f0b0b00  exp.f.rn r22, r22
0017ec  8f8b0b00  exp.f.rn r23, r23
0017f0  8f8c0c00  exp.f.rn r25, r25
0017f4  0f0d0d00  exp.f.rn r26, r26
0017f8  8f8d0d00  exp.f.rn r27, r27
0017fc  0f0e0e00  exp.f.rn r28, r28
001800  67843900  storeli.w r3, 64(r19)
001804  67c45900  storeli.w r5, 68(r19)
001808  e7847900  storeli.w r7, 72(r19)
00180c  e7c48900  storeli.w r8, 76(r19)
001810  6785b900  storeli.w r11, 80(r19)
001814  67c5c900  storeli.w r12, 84(r19)
001818  e785f900  storeli.w r15, 88(r19)
00181c  e7c50901  storeli.w r16, 92(r19)
001820  67864901  storeli.w r20, 96(r19)
001824  67c65901  storeli.w r21, 100(r19)
001828  e7866901  storeli.w r22, 104(r19)
00182c  e7c67901  storeli.w r23, 108(r19)
001830  67879901  storeli.w r25, 112(r19)
001834  67c7a901  storeli.w r26, 116(r19)
001838  e787b901  storeli.w r27, 120(r19)
00183c  e7c7c901  storeli.w r28, 124(r19)
001840  e3810901  loadli.w r3,  128(r19)
001844  e3c20901  loadli.w r5,  132(r19)
001848  e3831901  loadli.w r7,  136(r19)
00184c  63c41901  loadli.w r8,  140(r19)
001850  e3852901  loadli.w r11,  144(r19)
001854  63c62901  loadli.w r12,  148(r19)
001858  e3873901  loadli.w r15,  152(r19)
00185c  63c83901  loadli.w r16,  156(r19)
001860  638a4901  loadli.w r20,  160(r19)
001864  e3ca4901  loadli.w r21,  164(r19)
001868  638b5901  loadli.w r22,  168(r19)
00186c  e3cb5901  loadli.w r23,  172(r19)
001870  e38c6901  loadli.w r25,  176(r19)
001874  63cd6901  loadli.w r26,  180(r19)
001878  e38d7901  loadli.w r27,  184(r19)
00187c  63ce7901  loadli.w r28,  188(r19)
001880  8f810100  exp.f.rn r3, r3
001884  8f820200  exp.f.rn r5, r5
001888  8f830300  exp.f.rn r7, r7
00188c  0f040400  exp.f.rn r8, r8
001890  8f850500  exp.f.rn r11, r11
001894  0f060600  exp.f.rn r12, r12
001898  8f870700  exp.f.rn r15, r15
00189c  0f080800  exp.f.rn r16, r16
0018a0  0f0a0a00  exp.f.rn r20, r20
0018a4  8f8a0a00  exp.f.rn r21, r21
0018a8  0f0b0b00  exp.f.rn r22, r22
0018ac  8f8b0b00  exp.f.rn r23, r23
0018b0  8f8c0c00  exp.f.rn r25, r25
0018b4  0f0d0d00  exp.f.rn r26, r26
0018b8  8f8d0d00  exp.f.rn r27, r27
0018bc  0f0e0e00  exp.f.rn r28, r28
0018c0  67883900  storeli.w r3, 128(r19)
0018c4  67c85900  storeli.w r5, 132(r19)
0018c8  e7887900  storeli.w r7, 136(r19)
0018cc  e7c88900  storeli.w r8, 140(r19)
0018d0  6789b900  storeli.w r11, 144(r19)
0018d4  67c9c900  storeli.w r12, 148(r19)
0018d8  e789f900  storeli.w r15, 152(r19)
0018dc  e7c90901  storeli.w r16, 156(r19)
0018e0  678a4901  storeli.w r20, 160(r19)
0018e4  67ca5901  storeli.w r21, 164(r19)
0018e8  e78a6901  storeli.w r22, 168(r19)
0018ec  e7ca7901  storeli.w r23, 172(r19)
0018f0  678b9901  storeli.w r25, 176(r19)
0018f4  67cba901  storeli.w r26, 180(r19)
0018f8  e78bb901  storeli.w r27, 184(r19)
0018fc  e7cbc901  storeli.w r28, 188(r19)
001900  e3818901  loadli.w r3,  192(r19)
001904  e3c28901  loadli.w r5,  196(r19)
001908  e3839901  loadli.w r7,  200(r19)
00190c  63c49901  loadli.w r8,  204(r19)
001910  e385a901  loadli.w r11,  208(r19)
001914  63c6a901  loadli.w r12,  212(r19)
001918  e387b901  loadli.w r15,  216(r19)
00191c  63c8b901  loadli.w r16,  220(r19)
001920  638ac901  loadli.w r20,  224(r19)
001924  e3cac901  loadli.w r21,  228(r19)
001928  638bd901  loadli.w r22,  232(r19)
00192c  e3cbd901  loadli.w r23,  236(r19)
001930  e38ce901  loadli.w r25,  240(r19)
001934  63cde901  loadli.w r26,  244(r19)
001938  e38df901  loadli.w r27,  248(r19)
00193c  63cef901  loadli.w r28,  252(r19)
001940  8f810100  exp.f.rn r3, r3
001944  8f820200  exp.f.rn r5, r5
001948  8f830300  exp.f.rn r7, r7
00194c  0f040400  exp.f.rn r8, r8
001950  8f850500  exp.f.rn r11, r11
001954  0f060600  exp.f.rn r12, r12
001958  8f870700  exp.f.rn r15, r15
00195c  0f080800  exp.f.rn r16, r16
001960  0f0a0a00  exp.f.rn r20, r20
001964  8f8a0a00  exp.f.rn r21, r21
001968  0f0b0b00  exp.f.rn r22, r22
00196c  8f8b0b00  exp.f.rn r23, r23
001970  8f8c0c00  exp.f.rn r25, r25
001974  0f0d0d00  exp.f.rn r26, r26
001978  8f8d0d00  exp.f.rn r27, r27
00197c  0f0e0e00  exp.f.rn r28, r28
001980  678c3900  storeli.w r3, 192(r19)
001984  67cc5900  storeli.w r5, 196(r19)
001988  e78c7900  storeli.w r7, 200(r19)
00198c  e7cc8900  storeli.w r8, 204(r19)
001990  678db900  storeli.w r11, 208(r19)
001994  67cdc900  storeli.w r12, 212(r19)
001998  e78df900  storeli.w r15, 216(r19)
00199c  e7cd0901  storeli.w r16, 220(r19)
0019a0  678e4901  storeli.w r20, 224(r19)
0019a4  67ce5901  storeli.w r21, 228(r19)
0019a8  e78e6901  storeli.w r22, 232(r19)
0019ac  e7ce7901  storeli.w r23, 236(r19)
0019b0  678f9901  storeli.w r25, 240(r19)
0019b4  67cfa901  storeli.w r26, 244(r19)
0019b8  e78fb901  storeli.w r27, 248(r19)
0019bc  e7cfc901  storeli.w r28, 252(r19)
0019c0  00a00000  mfence { lm }
0019c4  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
0019c8  9f018fdd  addli r3, r30, -4416
0019cc  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0019d0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0019d4  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
0019d8  9f010fd4  addli r3, r30, -5632
0019dc  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
0019e0  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
0019e4  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
0019e8  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0019ec  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
0019f0  9f010fd1  addli r3, r30, -6016
0019f4  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
0019f8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0019fc  9f018fda  addli r3, r30, -4800
001a00  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001a04  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001a08  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001a0c  9f018fd3  addli r3, r30, -5696
001a10  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
001a14  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001a18  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001a1c  9f010fd9  addli r3, r30, -4992
001a20  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001a24  92908002  vadd.f.mz.rn vr1{mr1}, r1, vr8
001a28  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001a2c  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
001a30  9f018fd0  addli r3, r30, -6080
001a34  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001a38  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001a3c  00a00000  mfence { lm }
001a40  e3810900  loadli.w r3,  0(r19)
001a44  e3c20900  loadli.w r5,  4(r19)
001a48  e3831900  loadli.w r7,  8(r19)
001a4c  63c41900  loadli.w r8,  12(r19)
001a50  e3852900  loadli.w r11,  16(r19)
001a54  63c62900  loadli.w r12,  20(r19)
001a58  e3873900  loadli.w r15,  24(r19)
001a5c  63c83900  loadli.w r16,  28(r19)
001a60  638a4900  loadli.w r20,  32(r19)
001a64  e3ca4900  loadli.w r21,  36(r19)
001a68  638b5900  loadli.w r22,  40(r19)
001a6c  e3cb5900  loadli.w r23,  44(r19)
001a70  e38c6900  loadli.w r25,  48(r19)
001a74  63cd6900  loadli.w r26,  52(r19)
001a78  e38d7900  loadli.w r27,  56(r19)
001a7c  63ce7900  loadli.w r28,  60(r19)
001a80  8f810100  exp.f.rn r3, r3
001a84  8f820200  exp.f.rn r5, r5
001a88  8f830300  exp.f.rn r7, r7
001a8c  0f040400  exp.f.rn r8, r8
001a90  8f850500  exp.f.rn r11, r11
001a94  0f060600  exp.f.rn r12, r12
001a98  8f870700  exp.f.rn r15, r15
001a9c  0f080800  exp.f.rn r16, r16
001aa0  0f0a0a00  exp.f.rn r20, r20
001aa4  8f8a0a00  exp.f.rn r21, r21
001aa8  0f0b0b00  exp.f.rn r22, r22
001aac  8f8b0b00  exp.f.rn r23, r23
001ab0  8f8c0c00  exp.f.rn r25, r25
001ab4  0f0d0d00  exp.f.rn r26, r26
001ab8  8f8d0d00  exp.f.rn r27, r27
001abc  0f0e0e00  exp.f.rn r28, r28
001ac0  67803900  storeli.w r3, 0(r19)
001ac4  67c05900  storeli.w r5, 4(r19)
001ac8  e7807900  storeli.w r7, 8(r19)
001acc  e7c08900  storeli.w r8, 12(r19)
001ad0  6781b900  storeli.w r11, 16(r19)
001ad4  67c1c900  storeli.w r12, 20(r19)
001ad8  e781f900  storeli.w r15, 24(r19)
001adc  e7c10901  storeli.w r16, 28(r19)
001ae0  67824901  storeli.w r20, 32(r19)
001ae4  67c25901  storeli.w r21, 36(r19)
001ae8  e7826901  storeli.w r22, 40(r19)
001aec  e7c27901  storeli.w r23, 44(r19)
001af0  67839901  storeli.w r25, 48(r19)
001af4  67c3a901  storeli.w r26, 52(r19)
001af8  e783b901  storeli.w r27, 56(r19)
001afc  e7c3c901  storeli.w r28, 60(r19)
001b00  e3818900  loadli.w r3,  64(r19)
001b04  e3c28900  loadli.w r5,  68(r19)
001b08  e3839900  loadli.w r7,  72(r19)
001b0c  63c49900  loadli.w r8,  76(r19)
001b10  e385a900  loadli.w r11,  80(r19)
001b14  63c6a900  loadli.w r12,  84(r19)
001b18  e387b900  loadli.w r15,  88(r19)
001b1c  63c8b900  loadli.w r16,  92(r19)
001b20  638ac900  loadli.w r20,  96(r19)
001b24  e3cac900  loadli.w r21,  100(r19)
001b28  638bd900  loadli.w r22,  104(r19)
001b2c  e3cbd900  loadli.w r23,  108(r19)
001b30  e38ce900  loadli.w r25,  112(r19)
001b34  63cde900  loadli.w r26,  116(r19)
001b38  e38df900  loadli.w r27,  120(r19)
001b3c  63cef900  loadli.w r28,  124(r19)
001b40  8f810100  exp.f.rn r3, r3
001b44  8f820200  exp.f.rn r5, r5
001b48  8f830300  exp.f.rn r7, r7
001b4c  0f040400  exp.f.rn r8, r8
001b50  8f850500  exp.f.rn r11, r11
001b54  0f060600  exp.f.rn r12, r12
001b58  8f870700  exp.f.rn r15, r15
001b5c  0f080800  exp.f.rn r16, r16
001b60  0f0a0a00  exp.f.rn r20, r20
001b64  8f8a0a00  exp.f.rn r21, r21
001b68  0f0b0b00  exp.f.rn r22, r22
001b6c  8f8b0b00  exp.f.rn r23, r23
001b70  8f8c0c00  exp.f.rn r25, r25
001b74  0f0d0d00  exp.f.rn r26, r26
001b78  8f8d0d00  exp.f.rn r27, r27
001b7c  0f0e0e00  exp.f.rn r28, r28
001b80  67843900  storeli.w r3, 64(r19)
001b84  67c45900  storeli.w r5, 68(r19)
001b88  e7847900  storeli.w r7, 72(r19)
001b8c  e7c48900  storeli.w r8, 76(r19)
001b90  6785b900  storeli.w r11, 80(r19)
001b94  67c5c900  storeli.w r12, 84(r19)
001b98  e785f900  storeli.w r15, 88(r19)
001b9c  e7c50901  storeli.w r16, 92(r19)
001ba0  67864901  storeli.w r20, 96(r19)
001ba4  67c65901  storeli.w r21, 100(r19)
001ba8  e7866901  storeli.w r22, 104(r19)
001bac  e7c67901  storeli.w r23, 108(r19)
001bb0  67879901  storeli.w r25, 112(r19)
001bb4  67c7a901  storeli.w r26, 116(r19)
001bb8  e787b901  storeli.w r27, 120(r19)
001bbc  e7c7c901  storeli.w r28, 124(r19)
001bc0  e3810901  loadli.w r3,  128(r19)
001bc4  e3c20901  loadli.w r5,  132(r19)
001bc8  e3831901  loadli.w r7,  136(r19)
001bcc  63c41901  loadli.w r8,  140(r19)
001bd0  e3852901  loadli.w r11,  144(r19)
001bd4  63c62901  loadli.w r12,  148(r19)
001bd8  e3873901  loadli.w r15,  152(r19)
001bdc  63c83901  loadli.w r16,  156(r19)
001be0  638a4901  loadli.w r20,  160(r19)
001be4  e3ca4901  loadli.w r21,  164(r19)
001be8  638b5901  loadli.w r22,  168(r19)
001bec  e3cb5901  loadli.w r23,  172(r19)
001bf0  e38c6901  loadli.w r25,  176(r19)
001bf4  63cd6901  loadli.w r26,  180(r19)
001bf8  e38d7901  loadli.w r27,  184(r19)
001bfc  63ce7901  loadli.w r28,  188(r19)
001c00  8f810100  exp.f.rn r3, r3
001c04  8f820200  exp.f.rn r5, r5
001c08  8f830300  exp.f.rn r7, r7
001c0c  0f040400  exp.f.rn r8, r8
001c10  8f850500  exp.f.rn r11, r11
001c14  0f060600  exp.f.rn r12, r12
001c18  8f870700  exp.f.rn r15, r15
001c1c  0f080800  exp.f.rn r16, r16
001c20  0f0a0a00  exp.f.rn r20, r20
001c24  8f8a0a00  exp.f.rn r21, r21
001c28  0f0b0b00  exp.f.rn r22, r22
001c2c  8f8b0b00  exp.f.rn r23, r23
001c30  8f8c0c00  exp.f.rn r25, r25
001c34  0f0d0d00  exp.f.rn r26, r26
001c38  8f8d0d00  exp.f.rn r27, r27
001c3c  0f0e0e00  exp.f.rn r28, r28
001c40  67883900  storeli.w r3, 128(r19)
001c44  67c85900  storeli.w r5, 132(r19)
001c48  e7887900  storeli.w r7, 136(r19)
001c4c  e7c88900  storeli.w r8, 140(r19)
001c50  6789b900  storeli.w r11, 144(r19)
001c54  67c9c900  storeli.w r12, 148(r19)
001c58  e789f900  storeli.w r15, 152(r19)
001c5c  e7c90901  storeli.w r16, 156(r19)
001c60  678a4901  storeli.w r20, 160(r19)
001c64  67ca5901  storeli.w r21, 164(r19)
001c68  e78a6901  storeli.w r22, 168(r19)
001c6c  e7ca7901  storeli.w r23, 172(r19)
001c70  678b9901  storeli.w r25, 176(r19)
001c74  67cba901  storeli.w r26, 180(r19)
001c78  e78bb901  storeli.w r27, 184(r19)
001c7c  e7cbc901  storeli.w r28, 188(r19)
001c80  e3818901  loadli.w r3,  192(r19)
001c84  e3c28901  loadli.w r5,  196(r19)
001c88  e3839901  loadli.w r7,  200(r19)
001c8c  63c49901  loadli.w r8,  204(r19)
001c90  e385a901  loadli.w r11,  208(r19)
001c94  63c6a901  loadli.w r12,  212(r19)
001c98  e387b901  loadli.w r15,  216(r19)
001c9c  63c8b901  loadli.w r16,  220(r19)
001ca0  638ac901  loadli.w r20,  224(r19)
001ca4  e3cac901  loadli.w r21,  228(r19)
001ca8  638bd901  loadli.w r22,  232(r19)
001cac  e3cbd901  loadli.w r23,  236(r19)
001cb0  e38ce901  loadli.w r25,  240(r19)
001cb4  63cde901  loadli.w r26,  244(r19)
001cb8  e38df901  loadli.w r27,  248(r19)
001cbc  63cef901  loadli.w r28,  252(r19)
001cc0  8f810100  exp.f.rn r3, r3
001cc4  8f820200  exp.f.rn r5, r5
001cc8  8f830300  exp.f.rn r7, r7
001ccc  0f040400  exp.f.rn r8, r8
001cd0  8f850500  exp.f.rn r11, r11
001cd4  0f060600  exp.f.rn r12, r12
001cd8  8f870700  exp.f.rn r15, r15
001cdc  0f080800  exp.f.rn r16, r16
001ce0  0f0a0a00  exp.f.rn r20, r20
001ce4  8f8a0a00  exp.f.rn r21, r21
001ce8  0f0b0b00  exp.f.rn r22, r22
001cec  8f8b0b00  exp.f.rn r23, r23
001cf0  8f8c0c00  exp.f.rn r25, r25
001cf4  0f0d0d00  exp.f.rn r26, r26
001cf8  8f8d0d00  exp.f.rn r27, r27
001cfc  0f0e0e00  exp.f.rn r28, r28
001d00  678c3900  storeli.w r3, 192(r19)
001d04  67cc5900  storeli.w r5, 196(r19)
001d08  e78c7900  storeli.w r7, 200(r19)
001d0c  e7cc8900  storeli.w r8, 204(r19)
001d10  678db900  storeli.w r11, 208(r19)
001d14  67cdc900  storeli.w r12, 212(r19)
001d18  e78df900  storeli.w r15, 216(r19)
001d1c  e7cd0901  storeli.w r16, 220(r19)
001d20  678e4901  storeli.w r20, 224(r19)
001d24  67ce5901  storeli.w r21, 228(r19)
001d28  e78e6901  storeli.w r22, 232(r19)
001d2c  e7ce7901  storeli.w r23, 236(r19)
001d30  678f9901  storeli.w r25, 240(r19)
001d34  67cfa901  storeli.w r26, 244(r19)
001d38  e78fb901  storeli.w r27, 248(r19)
001d3c  e7cfc901  storeli.w r28, 252(r19)
001d40  00a00000  mfence { lm }
001d44  c2130fe2  vload_mask16.mz vr7{mr1}, 1792(r30)
001d48  9f018fda  addli r3, r30, -4800
001d4c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d50  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001d54  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
001d58  9f018fcf  addli r3, r30, -6208
001d5c  c2148fe2  vload_mask16.mz vr9{mr1}, 1856(r30)
001d60  42140fe3  vload_mask16.mz vr8{mr1}, 1920(r30)
001d64  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
001d68  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001d6c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001d70  9f010fd7  addli r3, r30, -5248
001d74  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d78  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001d7c  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001d80  92902002  vadd.f.mz.rn vr1{mr1}, r1, vr2
001d84  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001d88  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001d8c  9f010fd2  addli r3, r30, -5888
001d90  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d94  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001d98  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001d9c  00a00000  mfence { lm }
001da0  e3810900  loadli.w r3,  0(r19)
001da4  e3c20900  loadli.w r5,  4(r19)
001da8  e3831900  loadli.w r7,  8(r19)
001dac  63c41900  loadli.w r8,  12(r19)
001db0  e3852900  loadli.w r11,  16(r19)
001db4  63c62900  loadli.w r12,  20(r19)
001db8  e3873900  loadli.w r15,  24(r19)
001dbc  63c83900  loadli.w r16,  28(r19)
001dc0  638a4900  loadli.w r20,  32(r19)
001dc4  e3ca4900  loadli.w r21,  36(r19)
001dc8  638b5900  loadli.w r22,  40(r19)
001dcc  e3cb5900  loadli.w r23,  44(r19)
001dd0  e38c6900  loadli.w r25,  48(r19)
001dd4  63cd6900  loadli.w r26,  52(r19)
001dd8  e38d7900  loadli.w r27,  56(r19)
001ddc  63ce7900  loadli.w r28,  60(r19)
001de0  8f810100  exp.f.rn r3, r3
001de4  8f820200  exp.f.rn r5, r5
001de8  8f830300  exp.f.rn r7, r7
001dec  0f040400  exp.f.rn r8, r8
001df0  8f850500  exp.f.rn r11, r11
001df4  0f060600  exp.f.rn r12, r12
001df8  8f870700  exp.f.rn r15, r15
001dfc  0f080800  exp.f.rn r16, r16
001e00  0f0a0a00  exp.f.rn r20, r20
001e04  8f8a0a00  exp.f.rn r21, r21
001e08  0f0b0b00  exp.f.rn r22, r22
001e0c  8f8b0b00  exp.f.rn r23, r23
001e10  8f8c0c00  exp.f.rn r25, r25
001e14  0f0d0d00  exp.f.rn r26, r26
001e18  8f8d0d00  exp.f.rn r27, r27
001e1c  0f0e0e00  exp.f.rn r28, r28
001e20  67803900  storeli.w r3, 0(r19)
001e24  67c05900  storeli.w r5, 4(r19)
001e28  e7807900  storeli.w r7, 8(r19)
001e2c  e7c08900  storeli.w r8, 12(r19)
001e30  6781b900  storeli.w r11, 16(r19)
001e34  67c1c900  storeli.w r12, 20(r19)
001e38  e781f900  storeli.w r15, 24(r19)
001e3c  e7c10901  storeli.w r16, 28(r19)
001e40  67824901  storeli.w r20, 32(r19)
001e44  67c25901  storeli.w r21, 36(r19)
001e48  e7826901  storeli.w r22, 40(r19)
001e4c  e7c27901  storeli.w r23, 44(r19)
001e50  67839901  storeli.w r25, 48(r19)
001e54  67c3a901  storeli.w r26, 52(r19)
001e58  e783b901  storeli.w r27, 56(r19)
001e5c  e7c3c901  storeli.w r28, 60(r19)
001e60  e3818900  loadli.w r3,  64(r19)
001e64  e3c28900  loadli.w r5,  68(r19)
001e68  e3839900  loadli.w r7,  72(r19)
001e6c  63c49900  loadli.w r8,  76(r19)
001e70  e385a900  loadli.w r11,  80(r19)
001e74  63c6a900  loadli.w r12,  84(r19)
001e78  e387b900  loadli.w r15,  88(r19)
001e7c  63c8b900  loadli.w r16,  92(r19)
001e80  638ac900  loadli.w r20,  96(r19)
001e84  e3cac900  loadli.w r21,  100(r19)
001e88  638bd900  loadli.w r22,  104(r19)
001e8c  e3cbd900  loadli.w r23,  108(r19)
001e90  e38ce900  loadli.w r25,  112(r19)
001e94  63cde900  loadli.w r26,  116(r19)
001e98  e38df900  loadli.w r27,  120(r19)
001e9c  63cef900  loadli.w r28,  124(r19)
001ea0  8f810100  exp.f.rn r3, r3
001ea4  8f820200  exp.f.rn r5, r5
001ea8  8f830300  exp.f.rn r7, r7
001eac  0f040400  exp.f.rn r8, r8
001eb0  8f850500  exp.f.rn r11, r11
001eb4  0f060600  exp.f.rn r12, r12
001eb8  8f870700  exp.f.rn r15, r15
001ebc  0f080800  exp.f.rn r16, r16
001ec0  0f0a0a00  exp.f.rn r20, r20
001ec4  8f8a0a00  exp.f.rn r21, r21
001ec8  0f0b0b00  exp.f.rn r22, r22
001ecc  8f8b0b00  exp.f.rn r23, r23
001ed0  8f8c0c00  exp.f.rn r25, r25
001ed4  0f0d0d00  exp.f.rn r26, r26
001ed8  8f8d0d00  exp.f.rn r27, r27
001edc  0f0e0e00  exp.f.rn r28, r28
001ee0  67843900  storeli.w r3, 64(r19)
001ee4  67c45900  storeli.w r5, 68(r19)
001ee8  e7847900  storeli.w r7, 72(r19)
001eec  e7c48900  storeli.w r8, 76(r19)
001ef0  6785b900  storeli.w r11, 80(r19)
001ef4  67c5c900  storeli.w r12, 84(r19)
001ef8  e785f900  storeli.w r15, 88(r19)
001efc  e7c50901  storeli.w r16, 92(r19)
001f00  67864901  storeli.w r20, 96(r19)
001f04  67c65901  storeli.w r21, 100(r19)
001f08  e7866901  storeli.w r22, 104(r19)
001f0c  e7c67901  storeli.w r23, 108(r19)
001f10  67879901  storeli.w r25, 112(r19)
001f14  67c7a901  storeli.w r26, 116(r19)
001f18  e787b901  storeli.w r27, 120(r19)
001f1c  e7c7c901  storeli.w r28, 124(r19)
001f20  e3810901  loadli.w r3,  128(r19)
001f24  e3c20901  loadli.w r5,  132(r19)
001f28  e3831901  loadli.w r7,  136(r19)
001f2c  63c41901  loadli.w r8,  140(r19)
001f30  e3852901  loadli.w r11,  144(r19)
001f34  63c62901  loadli.w r12,  148(r19)
001f38  e3873901  loadli.w r15,  152(r19)
001f3c  63c83901  loadli.w r16,  156(r19)
001f40  638a4901  loadli.w r20,  160(r19)
001f44  e3ca4901  loadli.w r21,  164(r19)
001f48  638b5901  loadli.w r22,  168(r19)
001f4c  e3cb5901  loadli.w r23,  172(r19)
001f50  e38c6901  loadli.w r25,  176(r19)
001f54  63cd6901  loadli.w r26,  180(r19)
001f58  e38d7901  loadli.w r27,  184(r19)
001f5c  63ce7901  loadli.w r28,  188(r19)
001f60  8f810100  exp.f.rn r3, r3
001f64  8f820200  exp.f.rn r5, r5
001f68  8f830300  exp.f.rn r7, r7
001f6c  0f040400  exp.f.rn r8, r8
001f70  8f850500  exp.f.rn r11, r11
001f74  0f060600  exp.f.rn r12, r12
001f78  8f870700  exp.f.rn r15, r15
001f7c  0f080800  exp.f.rn r16, r16
001f80  0f0a0a00  exp.f.rn r20, r20
001f84  8f8a0a00  exp.f.rn r21, r21
001f88  0f0b0b00  exp.f.rn r22, r22
001f8c  8f8b0b00  exp.f.rn r23, r23
001f90  8f8c0c00  exp.f.rn r25, r25
001f94  0f0d0d00  exp.f.rn r26, r26
001f98  8f8d0d00  exp.f.rn r27, r27
001f9c  0f0e0e00  exp.f.rn r28, r28
001fa0  67883900  storeli.w r3, 128(r19)
001fa4  67c85900  storeli.w r5, 132(r19)
001fa8  e7887900  storeli.w r7, 136(r19)
001fac  e7c88900  storeli.w r8, 140(r19)
001fb0  6789b900  storeli.w r11, 144(r19)
001fb4  67c9c900  storeli.w r12, 148(r19)
001fb8  e789f900  storeli.w r15, 152(r19)
001fbc  e7c90901  storeli.w r16, 156(r19)
001fc0  678a4901  storeli.w r20, 160(r19)
001fc4  67ca5901  storeli.w r21, 164(r19)
001fc8  e78a6901  storeli.w r22, 168(r19)
001fcc  e7ca7901  storeli.w r23, 172(r19)
001fd0  678b9901  storeli.w r25, 176(r19)
001fd4  67cba901  storeli.w r26, 180(r19)
001fd8  e78bb901  storeli.w r27, 184(r19)
001fdc  e7cbc901  storeli.w r28, 188(r19)
001fe0  e3818901  loadli.w r3,  192(r19)
001fe4  e3c28901  loadli.w r5,  196(r19)
001fe8  e3839901  loadli.w r7,  200(r19)
001fec  63c49901  loadli.w r8,  204(r19)
001ff0  e385a901  loadli.w r11,  208(r19)
001ff4  63c6a901  loadli.w r12,  212(r19)
001ff8  e387b901  loadli.w r15,  216(r19)
001ffc  63c8b901  loadli.w r16,  220(r19)
002000  638ac901  loadli.w r20,  224(r19)
002004  e3cac901  loadli.w r21,  228(r19)
002008  638bd901  loadli.w r22,  232(r19)
00200c  e3cbd901  loadli.w r23,  236(r19)
002010  e38ce901  loadli.w r25,  240(r19)
002014  63cde901  loadli.w r26,  244(r19)
002018  e38df901  loadli.w r27,  248(r19)
00201c  63cef901  loadli.w r28,  252(r19)
002020  8f810100  exp.f.rn r3, r3
002024  8f820200  exp.f.rn r5, r5
002028  8f830300  exp.f.rn r7, r7
00202c  0f040400  exp.f.rn r8, r8
002030  8f850500  exp.f.rn r11, r11
002034  0f060600  exp.f.rn r12, r12
002038  8f870700  exp.f.rn r15, r15
00203c  0f080800  exp.f.rn r16, r16
002040  0f0a0a00  exp.f.rn r20, r20
002044  8f8a0a00  exp.f.rn r21, r21
002048  0f0b0b00  exp.f.rn r22, r22
00204c  8f8b0b00  exp.f.rn r23, r23
002050  8f8c0c00  exp.f.rn r25, r25
002054  0f0d0d00  exp.f.rn r26, r26
002058  8f8d0d00  exp.f.rn r27, r27
00205c  0f0e0e00  exp.f.rn r28, r28
002060  678c3900  storeli.w r3, 192(r19)
002064  67cc5900  storeli.w r5, 196(r19)
002068  e78c7900  storeli.w r7, 200(r19)
00206c  e7cc8900  storeli.w r8, 204(r19)
002070  678db900  storeli.w r11, 208(r19)
002074  67cdc900  storeli.w r12, 212(r19)
002078  e78df900  storeli.w r15, 216(r19)
00207c  e7cd0901  storeli.w r16, 220(r19)
002080  678e4901  storeli.w r20, 224(r19)
002084  67ce5901  storeli.w r21, 228(r19)
002088  e78e6901  storeli.w r22, 232(r19)
00208c  e7ce7901  storeli.w r23, 236(r19)
002090  678f9901  storeli.w r25, 240(r19)
002094  67cfa901  storeli.w r26, 244(r19)
002098  e78fb901  storeli.w r27, 248(r19)
00209c  e7cfc901  storeli.w r28, 252(r19)
0020a0  00a00000  mfence { lm }
0020a4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0020a8  c2110fe2  vload_mask16.mz vr3{mr1}, 1792(r30)
0020ac  9f010fd7  addli r3, r30, -5248
0020b0  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0020b4  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0020b8  9f018fd1  addli r3, r30, -5952
0020bc  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
0020c0  c2150fe3  vload_mask16.mz vr11{mr1}, 1920(r30)
0020c4  42158fe3  vload_mask16.mz vr10{mr1}, 1984(r30)
0020c8  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0020cc  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0020d0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0020d4  9f018fd2  addli r3, r30, -5824
0020d8  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0020dc  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
0020e0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0020e4  9f010fd3  addli r3, r30, -5760
0020e8  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0020ec  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
0020f0  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0020f4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0020f8  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0020fc  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
002100  00a00000  mfence { lm }
002104  e3800900  loadli.w r1,  0(r19)
002108  e3c10900  loadli.w r3,  4(r19)
00210c  e3821900  loadli.w r5,  8(r19)
002110  e3c31900  loadli.w r7,  12(r19)
002114  63842900  loadli.w r8,  16(r19)
002118  e3c52900  loadli.w r11,  20(r19)
00211c  63863900  loadli.w r12,  24(r19)
002120  e3c73900  loadli.w r15,  28(r19)
002124  63884900  loadli.w r16,  32(r19)
002128  63ca4900  loadli.w r20,  36(r19)
00212c  e38a5900  loadli.w r21,  40(r19)
002130  63cb5900  loadli.w r22,  44(r19)
002134  e38b6900  loadli.w r23,  48(r19)
002138  e3cc6900  loadli.w r25,  52(r19)
00213c  638d7900  loadli.w r26,  56(r19)
002140  e3cd7900  loadli.w r27,  60(r19)
002144  8f800000  exp.f.rn r1, r1
002148  8f810100  exp.f.rn r3, r3
00214c  8f820200  exp.f.rn r5, r5
002150  8f830300  exp.f.rn r7, r7
002154  0f040400  exp.f.rn r8, r8
002158  8f850500  exp.f.rn r11, r11
00215c  0f060600  exp.f.rn r12, r12
002160  8f870700  exp.f.rn r15, r15
002164  0f080800  exp.f.rn r16, r16
002168  0f0a0a00  exp.f.rn r20, r20
00216c  8f8a0a00  exp.f.rn r21, r21
002170  0f0b0b00  exp.f.rn r22, r22
002174  8f8b0b00  exp.f.rn r23, r23
002178  8f8c0c00  exp.f.rn r25, r25
00217c  0f0d0d00  exp.f.rn r26, r26
002180  8f8d0d00  exp.f.rn r27, r27
002184  67801900  storeli.w r1, 0(r19)
002188  67c03900  storeli.w r3, 4(r19)
00218c  e7805900  storeli.w r5, 8(r19)
002190  e7c07900  storeli.w r7, 12(r19)
002194  67818900  storeli.w r8, 16(r19)
002198  67c1b900  storeli.w r11, 20(r19)
00219c  e781c900  storeli.w r12, 24(r19)
0021a0  e7c1f900  storeli.w r15, 28(r19)
0021a4  67820901  storeli.w r16, 32(r19)
0021a8  67c24901  storeli.w r20, 36(r19)
0021ac  e7825901  storeli.w r21, 40(r19)
0021b0  e7c26901  storeli.w r22, 44(r19)
0021b4  67837901  storeli.w r23, 48(r19)
0021b8  67c39901  storeli.w r25, 52(r19)
0021bc  e783a901  storeli.w r26, 56(r19)
0021c0  e7c3b901  storeli.w r27, 60(r19)
0021c4  e3808900  loadli.w r1,  64(r19)
0021c8  e3c18900  loadli.w r3,  68(r19)
0021cc  e3829900  loadli.w r5,  72(r19)
0021d0  e3c39900  loadli.w r7,  76(r19)
0021d4  6384a900  loadli.w r8,  80(r19)
0021d8  e3c5a900  loadli.w r11,  84(r19)
0021dc  6386b900  loadli.w r12,  88(r19)
0021e0  e3c7b900  loadli.w r15,  92(r19)
0021e4  6388c900  loadli.w r16,  96(r19)
0021e8  63cac900  loadli.w r20,  100(r19)
0021ec  e38ad900  loadli.w r21,  104(r19)
0021f0  63cbd900  loadli.w r22,  108(r19)
0021f4  e38be900  loadli.w r23,  112(r19)
0021f8  e3cce900  loadli.w r25,  116(r19)
0021fc  638df900  loadli.w r26,  120(r19)
002200  e3cdf900  loadli.w r27,  124(r19)
002204  8f800000  exp.f.rn r1, r1
002208  8f810100  exp.f.rn r3, r3
00220c  8f820200  exp.f.rn r5, r5
002210  8f830300  exp.f.rn r7, r7
002214  0f040400  exp.f.rn r8, r8
002218  8f850500  exp.f.rn r11, r11
00221c  0f060600  exp.f.rn r12, r12
002220  8f870700  exp.f.rn r15, r15
002224  0f080800  exp.f.rn r16, r16
002228  0f0a0a00  exp.f.rn r20, r20
00222c  8f8a0a00  exp.f.rn r21, r21
002230  0f0b0b00  exp.f.rn r22, r22
002234  8f8b0b00  exp.f.rn r23, r23
002238  8f8c0c00  exp.f.rn r25, r25
00223c  0f0d0d00  exp.f.rn r26, r26
002240  8f8d0d00  exp.f.rn r27, r27
002244  67841900  storeli.w r1, 64(r19)
002248  67c43900  storeli.w r3, 68(r19)
00224c  e7845900  storeli.w r5, 72(r19)
002250  e7c47900  storeli.w r7, 76(r19)
002254  67858900  storeli.w r8, 80(r19)
002258  67c5b900  storeli.w r11, 84(r19)
00225c  e785c900  storeli.w r12, 88(r19)
002260  e7c5f900  storeli.w r15, 92(r19)
002264  67860901  storeli.w r16, 96(r19)
002268  67c64901  storeli.w r20, 100(r19)
00226c  e7865901  storeli.w r21, 104(r19)
002270  e7c66901  storeli.w r22, 108(r19)
002274  67877901  storeli.w r23, 112(r19)
002278  67c79901  storeli.w r25, 116(r19)
00227c  e787a901  storeli.w r26, 120(r19)
002280  e7c7b901  storeli.w r27, 124(r19)
002284  e3800901  loadli.w r1,  128(r19)
002288  e3c10901  loadli.w r3,  132(r19)
00228c  e3821901  loadli.w r5,  136(r19)
002290  e3c31901  loadli.w r7,  140(r19)
002294  63842901  loadli.w r8,  144(r19)
002298  e3c52901  loadli.w r11,  148(r19)
00229c  63863901  loadli.w r12,  152(r19)
0022a0  e3c73901  loadli.w r15,  156(r19)
0022a4  63884901  loadli.w r16,  160(r19)
0022a8  63ca4901  loadli.w r20,  164(r19)
0022ac  e38a5901  loadli.w r21,  168(r19)
0022b0  63cb5901  loadli.w r22,  172(r19)
0022b4  e38b6901  loadli.w r23,  176(r19)
0022b8  e3cc6901  loadli.w r25,  180(r19)
0022bc  638d7901  loadli.w r26,  184(r19)
0022c0  e3cd7901  loadli.w r27,  188(r19)
0022c4  8f800000  exp.f.rn r1, r1
0022c8  8f810100  exp.f.rn r3, r3
0022cc  8f820200  exp.f.rn r5, r5
0022d0  8f830300  exp.f.rn r7, r7
0022d4  0f040400  exp.f.rn r8, r8
0022d8  8f850500  exp.f.rn r11, r11
0022dc  0f060600  exp.f.rn r12, r12
0022e0  8f870700  exp.f.rn r15, r15
0022e4  0f080800  exp.f.rn r16, r16
0022e8  0f0a0a00  exp.f.rn r20, r20
0022ec  8f8a0a00  exp.f.rn r21, r21
0022f0  0f0b0b00  exp.f.rn r22, r22
0022f4  8f8b0b00  exp.f.rn r23, r23
0022f8  8f8c0c00  exp.f.rn r25, r25
0022fc  0f0d0d00  exp.f.rn r26, r26
002300  8f8d0d00  exp.f.rn r27, r27
002304  67881900  storeli.w r1, 128(r19)
002308  67c83900  storeli.w r3, 132(r19)
00230c  e7885900  storeli.w r5, 136(r19)
002310  e7c87900  storeli.w r7, 140(r19)
002314  67898900  storeli.w r8, 144(r19)
002318  67c9b900  storeli.w r11, 148(r19)
00231c  e789c900  storeli.w r12, 152(r19)
002320  e7c9f900  storeli.w r15, 156(r19)
002324  678a0901  storeli.w r16, 160(r19)
002328  67ca4901  storeli.w r20, 164(r19)
00232c  e78a5901  storeli.w r21, 168(r19)
002330  e7ca6901  storeli.w r22, 172(r19)
002334  678b7901  storeli.w r23, 176(r19)
002338  67cb9901  storeli.w r25, 180(r19)
00233c  e78ba901  storeli.w r26, 184(r19)
002340  e7cbb901  storeli.w r27, 188(r19)
002344  e3808901  loadli.w r1,  192(r19)
002348  e3c18901  loadli.w r3,  196(r19)
00234c  e3829901  loadli.w r5,  200(r19)
002350  e3c39901  loadli.w r7,  204(r19)
002354  6384a901  loadli.w r8,  208(r19)
002358  e3c5a901  loadli.w r11,  212(r19)
00235c  6386b901  loadli.w r12,  216(r19)
002360  e3c7b901  loadli.w r15,  220(r19)
002364  6388c901  loadli.w r16,  224(r19)
002368  63cac901  loadli.w r20,  228(r19)
00236c  e38ad901  loadli.w r21,  232(r19)
002370  63cbd901  loadli.w r22,  236(r19)
002374  e38be901  loadli.w r23,  240(r19)
002378  e3cce901  loadli.w r25,  244(r19)
00237c  638df901  loadli.w r26,  248(r19)
002380  e3cdf901  loadli.w r27,  252(r19)
002384  8f800000  exp.f.rn r1, r1
002388  8f810100  exp.f.rn r3, r3
00238c  8f820200  exp.f.rn r5, r5
002390  8f830300  exp.f.rn r7, r7
002394  0f040400  exp.f.rn r8, r8
002398  8f850500  exp.f.rn r11, r11
00239c  0f060600  exp.f.rn r12, r12
0023a0  8f870700  exp.f.rn r15, r15
0023a4  0f080800  exp.f.rn r16, r16
0023a8  0f0a0a00  exp.f.rn r20, r20
0023ac  8f8a0a00  exp.f.rn r21, r21
0023b0  0f0b0b00  exp.f.rn r22, r22
0023b4  8f8b0b00  exp.f.rn r23, r23
0023b8  8f8c0c00  exp.f.rn r25, r25
0023bc  0f0d0d00  exp.f.rn r26, r26
0023c0  8f8d0d00  exp.f.rn r27, r27
0023c4  678c1900  storeli.w r1, 192(r19)
0023c8  67cc3900  storeli.w r3, 196(r19)
0023cc  e78c5900  storeli.w r5, 200(r19)
0023d0  e7cc7900  storeli.w r7, 204(r19)
0023d4  678d8900  storeli.w r8, 208(r19)
0023d8  67cdb900  storeli.w r11, 212(r19)
0023dc  e78dc900  storeli.w r12, 216(r19)
0023e0  e7cdf900  storeli.w r15, 220(r19)
0023e4  678e0901  storeli.w r16, 224(r19)
0023e8  67ce4901  storeli.w r20, 228(r19)
0023ec  e78e5901  storeli.w r21, 232(r19)
0023f0  e7ce6901  storeli.w r22, 236(r19)
0023f4  678f7901  storeli.w r23, 240(r19)
0023f8  67cf9901  storeli.w r25, 244(r19)
0023fc  e78fa901  storeli.w r26, 248(r19)
002400  e7cfb901  storeli.w r27, 252(r19)
002404  00a00000  mfence { lm }
002408  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00240c  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
002410  9610b002  vadd.f.mz.rn vr1{mr1}, vr0, vr11
002414  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
002418  42118fe2  vload_mask16.mz vr2{mr1}, 1856(r30)
00241c  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
002420  c2128fe3  vload_mask16.mz vr5{mr1}, 1984(r30)
002424  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
002428  96900002  vadd.f.mz.rn vr1{mr1}, vr1, vr0
00242c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002430  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002434  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
002438  fa900040  vextracti.f r1, 0(vr1)
00243c  fa911040  vextracti.f r3, 1(vr1)
002440  8be03010  add.f.rn r1, r1, r3
002444  fa912040  vextracti.f r3, 2(vr1)
002448  8be01110  add.f.rn r1, r3, r1
00244c  fa913040  vextracti.f r3, 3(vr1)
002450  8be01110  add.f.rn r1, r3, r1
002454  fa914040  vextracti.f r3, 4(vr1)
002458  8be01110  add.f.rn r1, r3, r1
00245c  fa915040  vextracti.f r3, 5(vr1)
002460  8be01110  add.f.rn r1, r3, r1
002464  fa916040  vextracti.f r3, 6(vr1)
002468  8be01110  add.f.rn r1, r3, r1
00246c  fa917040  vextracti.f r3, 7(vr1)
002470  8be01110  add.f.rn r1, r3, r1
002474  fa918040  vextracti.f r3, 8(vr1)
002478  8be01110  add.f.rn r1, r3, r1
00247c  fa919040  vextracti.f r3, 9(vr1)
002480  8be01110  add.f.rn r1, r3, r1
002484  fa91a040  vextracti.f r3, 10(vr1)
002488  8be01110  add.f.rn r1, r3, r1
00248c  fa91b040  vextracti.f r3, 11(vr1)
002490  8be01110  add.f.rn r1, r3, r1
002494  fa91c040  vextracti.f r3, 12(vr1)
002498  8be01110  add.f.rn r1, r3, r1
00249c  fa91d040  vextracti.f r3, 13(vr1)
0024a0  8be01110  add.f.rn r1, r3, r1
0024a4  fa91e040  vextracti.f r3, 14(vr1)
0024a8  8be01110  add.f.rn r1, r3, r1
0024ac  fa91f040  vextracti.f r3, 15(vr1)
0024b0  8be01110  add.f.rn r1, r3, r1
0024b4  e341ffcd  loadli.w r3,  -6404(r30)
0024b8  73e01100  stores.w r1, 0(r3)
0024bc  00a00300  mfence { lm, sm, gm }
0024c0  80210204  csr_set csr3, r4
0024c4  00d00100  sync_group
0024c8  bb900600  bneq r13, zero, 36
0024cc  ef400500  loads.w r1, 0(r10)
0024d0  ef414500  loads.w r3, 4(r10)
0024d4  ef428500  loads.w r5, 8(r10)
0024d8  8be03010  add.f.rn r1, r1, r3
0024dc  ef41c500  loads.w r3, 12(r10)
0024e0  8be05010  add.f.rn r1, r1, r5
0024e4  8be03010  add.f.rn r1, r1, r3
0024e8  73601500  stores.w r1, 0(r10)
0024ec  00a00300  mfence { lm, sm, gm }
0024f0  80210204  csr_set csr3, r4
0024f4  00d00100  sync_group
0024f8  ef400500  loads.w r1, 0(r10)
0024fc  ab01803f  lui r3, 260096
002500  8f801118  div.f.rn r1, r3, r1
002504  9f018fd5  addli r3, r30, -5440
002508  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
00250c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002510  9f010fee  addli r3, r30, -2304
002514  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002518  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00251c  9f010fd6  addli r3, r30, -5376
002520  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002524  9f018fee  addli r3, r30, -2240
002528  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00252c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002530  9f018fd6  addli r3, r30, -5312
002534  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002538  9f010fef  addli r3, r30, -2176
00253c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002540  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002544  9f018fd8  addli r3, r30, -5056
002548  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00254c  9f018fef  addli r3, r30, -2112
002550  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002554  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002558  9f018fd7  addli r3, r30, -5184
00255c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002560  9f010ff0  addli r3, r30, -2048
002564  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002568  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00256c  9f010fd5  addli r3, r30, -5504
002570  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002574  9f018ff0  addli r3, r30, -1984
002578  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00257c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002580  9f018fdc  addli r3, r30, -4544
002584  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002588  9f010ff1  addli r3, r30, -1920
00258c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002590  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002594  9f010fdd  addli r3, r30, -4480
002598  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00259c  9f018ff1  addli r3, r30, -1856
0025a0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025a4  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025a8  9f018fd9  addli r3, r30, -4928
0025ac  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025b0  9f010ff2  addli r3, r30, -1792
0025b4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025b8  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025bc  9f010fd8  addli r3, r30, -5120
0025c0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025c4  9f018ff2  addli r3, r30, -1728
0025c8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025cc  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025d0  9f010fda  addli r3, r30, -4864
0025d4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025d8  9f010ff3  addli r3, r30, -1664
0025dc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025e0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025e4  9f010fdb  addli r3, r30, -4736
0025e8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025ec  9f018ff3  addli r3, r30, -1600
0025f0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025f4  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025f8  9f018fd4  addli r3, r30, -5568
0025fc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002600  9f010ff4  addli r3, r30, -1536
002604  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002608  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00260c  9f018fdb  addli r3, r30, -4672
002610  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002614  9f018ff4  addli r3, r30, -1472
002618  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00261c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002620  9f010fdc  addli r3, r30, -4608
002624  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002628  9f010ff5  addli r3, r30, -1408
00262c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002630  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002634  9f018fdd  addli r3, r30, -4416
002638  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00263c  9f018ff5  addli r3, r30, -1344
002640  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002644  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002648  9f010fd4  addli r3, r30, -5632
00264c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002650  9f010ff6  addli r3, r30, -1280
002654  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002658  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00265c  9f018fd3  addli r3, r30, -5696
002660  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002664  9f018ff6  addli r3, r30, -1216
002668  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00266c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002670  9f010fd9  addli r3, r30, -4992
002674  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002678  9f010ff7  addli r3, r30, -1152
00267c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002680  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002684  9f018fda  addli r3, r30, -4800
002688  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00268c  9f018ff7  addli r3, r30, -1088
002690  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002694  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002698  8a907002  vmul.f.mz.rn vr1{mr1}, r1, vr7
00269c  46101f82  vstore_mask16.mz vr1{mr1}, 1024(r30)
0026a0  9f010fd7  addli r3, r30, -5248
0026a4  8a909002  vmul.f.mz.rn vr1{mr1}, r1, vr9
0026a8  46141f82  vstore_mask16.mz vr1{mr1}, 1088(r30)
0026ac  8a908002  vmul.f.mz.rn vr1{mr1}, r1, vr8
0026b0  46181f82  vstore_mask16.mz vr1{mr1}, 1152(r30)
0026b4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0026b8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0026bc  461c1f82  vstore_mask16.mz vr1{mr1}, 1216(r30)
0026c0  8a903002  vmul.f.mz.rn vr1{mr1}, r1, vr3
0026c4  46101fa2  vstore_mask16.mz vr1{mr1}, 1280(r30)
0026c8  8a906002  vmul.f.mz.rn vr1{mr1}, r1, vr6
0026cc  46141fa2  vstore_mask16.mz vr1{mr1}, 1344(r30)
0026d0  8a90b002  vmul.f.mz.rn vr1{mr1}, r1, vr11
0026d4  46181fa2  vstore_mask16.mz vr1{mr1}, 1408(r30)
0026d8  8a90a002  vmul.f.mz.rn vr1{mr1}, r1, vr10
0026dc  461c1fa2  vstore_mask16.mz vr1{mr1}, 1472(r30)
0026e0  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
0026e4  0a902002  vmul.f.mz.rn vr0{mr1}, r1, vr2
0026e8  46140fc2  vstore_mask16.mz vr0{mr1}, 1600(r30)
0026ec  0a904002  vmul.f.mz.rn vr0{mr1}, r1, vr4
0026f0  46180fc2  vstore_mask16.mz vr0{mr1}, 1664(r30)
0026f4  0a905002  vmul.f.mz.rn vr0{mr1}, r1, vr5
0026f8  461c0fc2  vstore_mask16.mz vr0{mr1}, 1728(r30)
0026fc  9f000700  addli r1, r14, 0
002700  00a00000  mfence { lm }
002704  e3018f00  loadli.w r3,  64(r30)
002708  bf4c31ec  blt.s r2, r3, -9424
00270c  9f000000  addli r1, zero, 0
002710  5b65fbff  j -9432
002714  9f0e8fcd  addli sp, r30, -6464
002718  9f8e8e32  addli sp, sp, 6464
00271c  00a00300  mfence { lm, sm, gm }
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
002918  00100000  exit
00291c  00100000  exit
002920  00100000  exit
002924  00100000  exit
002928  00100000  exit
00292c  00100000  exit
002930  00100000  exit
002934  00100000  exit
002938  00100000  exit
00293c  00100000  exit
002940  00100000  exit
002944  00100000  exit
002948  00100000  exit
00294c  00100000  exit
002950  00100000  exit
002954  00100000  exit
002958  00100000  exit
00295c  00100000  exit
002960  00100000  exit
