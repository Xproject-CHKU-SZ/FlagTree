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
000160  cbb66112  ble.s r3, r6, 9644
000164  9b063400  andi r13, r8, 3
000168  eb570f03  load.d r[16:17], 48(r30)
00016c  9f230000  addli r7, zero, 2
000170  e3095f00  loadli.w r19,  40(r30)
000174  6b5a0f02  load.d r[21:22], 32(r30)
000178  9f01dfcd  addli r3, r30, -6424
00017c  634c1f00  loadli.w r24,  12(r30)
000180  1b442400  srli r8, r8, 2
000184  634d8f00  loadli.w r26,  68(r30)
000188  eb5d8f01  load.d r[28:29], 24(r30)
00018c  eb550f05  load.d r[12:13], 80(r30)
000190  9f029fcd  addli r5, r30, -6456
000194  9bbc9600  slli r25, r13, 9
000198  b3880c28  zext_int2long r[18:19], r25
00019c  0bbb1721  mul.sl r[23:24], r[16:17], r[18:19]
0001a0  0b989919  sub.s r16, r19, r25
0001a4  abf9ffff  lui r19, 1048575
0001a8  173b7b02  sll.d r[23:24], r[23:24], r7
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
0001ec  0b189d19  sub.s r16, r26, r25
0001f0  670e3fcc  storeli.w r3, -6432(r30)
0001f4  b3090c28  zext_int2long r[20:21], r24
0001f8  9f01bfcd  addli r3, r30, -6440
0001fc  73b03101  store.d r[20:21], 0(r3)
000200  0b180848  max.s r16, r16, zero
000204  8bb91d21  mul.sl r[20:21], r[28:29], r[18:19]
000208  9f01afcd  addli r3, r30, -6448
00020c  0b14e440  min.s r8, r8, r14
000210  73b03101  store.d r[20:21], 0(r3)
000214  8b10e840  min.s r1, r16, r14
000218  0bb11521  mul.sl r[3:4], r[12:13], r[18:19]
00021c  1b342400  slli r8, r8, 2
000220  9f090ffe  addli r19, r30, -256
000224  73b02200  store.d r[3:4], 0(r5)
000228  1bb72000  slli r14, r1, 2
00022c  9f020fee  addli r5, r30, -2304
000230  db090000  j 76
000234  6b518f04  load.d r[3:4], 72(r30)
000238  9f029fcd  addli r5, r30, -6456
00023c  ebd50200  load.d r[12:13], 0(r5)
000240  ab0200f0  lui r5, 983040
000244  0bb12820  mul.sl r[3:4], r[18:19], r[3:4]
000248  97905000  or r1, r1, r5
00024c  9f020fee  addli r5, r30, -2304
000250  0b21b110  add.ul r[3:4], r[3:4], r[12:13]
000254  eb558f03  load.d r[12:13], 56(r30)
000258  17317102  sll.d r[3:4], r[3:4], r7
00025c  0ba12510  add.ul r[3:4], r[12:13], r[3:4]
000260  ff305100  s_lm2gm r1, r5, 0(r[3:4])
000264  e340cfcd  loadli.w r1,  -6428(r30)
000268  00a00000  mfence { lm }
00026c  0b131310  add.s r6, r6, r1
000270  e340efcd  loadli.w r1,  -6412(r30)
000274  3f201300  blt.s r6, r1, 8
000278  db920400  j 9364
00027c  e340cf00  loadli.w r1,  100(r30)
000280  6301cf00  loadli.w r2,  96(r30)
000284  e301cfcd  loadli.w r3,  -6432(r30)
000288  8b101330  div.s r1, r6, r1
00028c  8b902030  div.s r1, r1, r2
000290  2b0100f0  lui r2, 983040
000294  17912100  or r2, r3, r2
000298  9bb84000  slli r17, r1, 4
00029c  9f00dfcd  addli r1, r30, -6424
0002a0  ebd50000  load.d r[12:13], 0(r1)
0002a4  9f000fde  addli r1, r30, -4352
0002a8  7fa11500  l_gm2lm r2, r1, 0(r[12:13])
0002ac  17918801  or r2, r17, r24
0002b0  9f000400  addli r1, r8, 0
0002b4  00a00000  mfence { lm }
0002b8  e3011f00  loadli.w r3,  8(r30)
0002bc  3f203100  blt.s r2, r3, 8
0002c0  9f000000  addli r1, zero, 0
0002c4  9f01bfcd  addli r3, r30, -6440
0002c8  b3980828  sext_int2long r[18:19], r17
0002cc  ab0700f0  lui r15, 983040
0002d0  ebd50100  load.d r[12:13], 0(r3)
0002d4  9f01afcd  addli r3, r30, -6448
0002d8  9790f000  or r1, r1, r15
0002dc  9798b802  or.d r[18:19], r[18:19], r[12:13]
0002e0  eb550f01  load.d r[12:13], 16(r30)
0002e4  0bbab820  mul.sl r[21:22], r[18:19], r[12:13]
0002e8  ebd50100  load.d r[12:13], 0(r3)
0002ec  0b2aba10  add.ul r[21:22], r[21:22], r[12:13]
0002f0  eb550f00  load.d r[12:13], 0(r30)
0002f4  173a7a02  sll.d r[21:22], r[21:22], r7
0002f8  0baa4511  add.ul r[21:22], r[12:13], r[21:22]
0002fc  ff205a00  l_gm2lm r1, r5, 0(r[21:22])
000300  9f000fee  addli r1, r30, -2304
000304  00a00000  mfence { lm }
000308  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
00030c  9f008fee  addli r1, r30, -2240
000310  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000314  9f000fef  addli r1, r30, -2176
000318  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
00031c  9f008fef  addli r1, r30, -2112
000320  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000324  9f000ff0  addli r1, r30, -2048
000328  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00032c  9f008ff0  addli r1, r30, -1984
000330  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000334  9f000fde  addli r1, r30, -4352
000338  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
00033c  9f000ff1  addli r1, r30, -1920
000340  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000344  9f008ff1  addli r1, r30, -1856
000348  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00034c  9f000ff2  addli r1, r30, -1792
000350  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000354  9f008ff2  addli r1, r30, -1728
000358  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
00035c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000360  9f008fde  addli r1, r30, -4288
000364  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000368  9f000fcf  addli r1, r30, -6272
00036c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000370  9f000fdf  addli r1, r30, -4224
000374  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
000378  9f000fd4  addli r1, r30, -5632
00037c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
000380  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000384  9f008fdf  addli r1, r30, -4160
000388  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
00038c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000390  9f008fd5  addli r1, r30, -5440
000394  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000398  9f000fe0  addli r1, r30, -4096
00039c  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0003a0  9f000fd5  addli r1, r30, -5504
0003a4  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
0003a8  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0003ac  9f008fe0  addli r1, r30, -4032
0003b0  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
0003b4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0003b8  9f008fd4  addli r1, r30, -5568
0003bc  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0003c0  9f000fe1  addli r1, r30, -3968
0003c4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0003c8  9f008fd6  addli r1, r30, -5312
0003cc  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0003d0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003d4  9f008fe1  addli r1, r30, -3904
0003d8  16901502  vadd.f.mz.rn vr0{mr1}, vr11, vr1
0003dc  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0003e0  9f000fd6  addli r1, r30, -5376
0003e4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003e8  9f000ff3  addli r1, r30, -1664
0003ec  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0003f0  9f008fd8  addli r1, r30, -5056
0003f4  16107502  vadd.f.mz.rn vr0{mr1}, vr10, vr7
0003f8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0003fc  9f000fe2  addli r1, r30, -3840
000400  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000404  9f008fe2  addli r1, r30, -3776
000408  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00040c  9f000fe3  addli r1, r30, -3712
000410  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000414  9f008fd7  addli r1, r30, -5184
000418  16917402  vadd.f.mz.rn vr2{mr1}, vr9, vr7
00041c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000420  1611a402  vadd.f.mz.rn vr2{mr1}, vr8, vr10
000424  9f000fdd  addli r1, r30, -4480
000428  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
00042c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000430  9f008fdc  addli r1, r30, -4544
000434  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000438  9f008ff3  addli r1, r30, -1600
00043c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000440  9f000ff4  addli r1, r30, -1536
000444  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000448  9f008ff4  addli r1, r30, -1472
00044c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000450  9f008fe3  addli r1, r30, -3648
000454  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000458  9f000fe4  addli r1, r30, -3584
00045c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000460  9f008fe4  addli r1, r30, -3520
000464  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000468  9f000fd8  addli r1, r30, -5120
00046c  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000470  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000474  16908302  vadd.f.mz.rn vr0{mr1}, vr7, vr8
000478  9f008fd9  addli r1, r30, -4928
00047c  96159502  vadd.f.mz.rn vr11{mr1}, vr10, vr9
000480  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000484  9f000ff5  addli r1, r30, -1408
000488  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00048c  9f008ff5  addli r1, r30, -1344
000490  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000494  9f000ff6  addli r1, r30, -1280
000498  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00049c  9f000fe5  addli r1, r30, -3456
0004a0  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0004a4  9f008fe5  addli r1, r30, -3392
0004a8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0004ac  9f000fe6  addli r1, r30, -3328
0004b0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0004b4  9f000fda  addli r1, r30, -4864
0004b8  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
0004bc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004c0  16908302  vadd.f.mz.rn vr0{mr1}, vr7, vr8
0004c4  9f008fd3  addli r1, r30, -5696
0004c8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004cc  16901402  vadd.f.mz.rn vr0{mr1}, vr9, vr1
0004d0  9f000fdb  addli r1, r30, -4736
0004d4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004d8  9f008ff6  addli r1, r30, -1216
0004dc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0004e0  9f000ff7  addli r1, r30, -1152
0004e4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0004e8  9f008ff7  addli r1, r30, -1088
0004ec  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0004f0  9f008fe6  addli r1, r30, -3264
0004f4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0004f8  9f000fe7  addli r1, r30, -3200
0004fc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000500  9f008fe7  addli r1, r30, -3136
000504  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000508  9f000fdc  addli r1, r30, -4608
00050c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000510  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000514  16909002  vadd.f.mz.rn vr0{mr1}, vr1, vr9
000518  9f008fdb  addli r1, r30, -4672
00051c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000520  1690a302  vadd.f.mz.rn vr0{mr1}, vr7, vr10
000524  9f008fdd  addli r1, r30, -4416
000528  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00052c  9f000fe8  addli r1, r30, -3072
000530  42100f82  vload_mask16.mz vr0{mr1}, 1024(r30)
000534  c2108f82  vload_mask16.mz vr1{mr1}, 1088(r30)
000538  c2130f83  vload_mask16.mz vr7{mr1}, 1152(r30)
00053c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000540  9f008fe8  addli r1, r30, -3008
000544  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000548  9f000fe9  addli r1, r30, -2944
00054c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000550  9f000fd9  addli r1, r30, -4992
000554  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000558  16919002  vadd.f.mz.rn vr2{mr1}, vr1, vr9
00055c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000560  1690a302  vadd.f.mz.rn vr0{mr1}, vr7, vr10
000564  9f008fda  addli r1, r30, -4800
000568  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00056c  9f008fe9  addli r1, r30, -2880
000570  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
000574  c2100fa2  vload_mask16.mz vr1{mr1}, 1280(r30)
000578  c2138fa2  vload_mask16.mz vr7{mr1}, 1344(r30)
00057c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000580  9f000fea  addli r1, r30, -2816
000584  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000588  9f008fea  addli r1, r30, -2752
00058c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000590  9f008fce  addli r1, r30, -6336
000594  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000598  96929002  vadd.f.mz.rn vr5{mr1}, vr1, vr9
00059c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005a0  9f000feb  addli r1, r30, -2688
0005a4  1692a302  vadd.f.mz.rn vr4{mr1}, vr7, vr10
0005a8  42100fa3  vload_mask16.mz vr0{mr1}, 1408(r30)
0005ac  c2108fa3  vload_mask16.mz vr1{mr1}, 1472(r30)
0005b0  c2130fc2  vload_mask16.mz vr7{mr1}, 1536(r30)
0005b4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0005b8  9f008feb  addli r1, r30, -2624
0005bc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0005c0  9f000fec  addli r1, r30, -2560
0005c4  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0005c8  9f000fce  addli r1, r30, -6400
0005cc  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0005d0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005d4  16909002  vadd.f.mz.rn vr0{mr1}, vr1, vr9
0005d8  9f000fd7  addli r1, r30, -5248
0005dc  1693a302  vadd.f.mz.rn vr6{mr1}, vr7, vr10
0005e0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005e4  9f008fec  addli r1, r30, -2496
0005e8  42108fc2  vload_mask16.mz vr0{mr1}, 1600(r30)
0005ec  c2100fc3  vload_mask16.mz vr1{mr1}, 1664(r30)
0005f0  c2138fc3  vload_mask16.mz vr7{mr1}, 1728(r30)
0005f4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0005f8  9f000fed  addli r1, r30, -2432
0005fc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000600  9f008fed  addli r1, r30, -2368
000604  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000608  9f008fda  addli r1, r30, -4800
00060c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
000610  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000614  9f000fd4  addli r1, r30, -5632
000618  96919002  vadd.f.mz.rn vr3{mr1}, vr1, vr9
00061c  9690a302  vadd.f.mz.rn vr1{mr1}, vr7, vr10
000620  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000624  9f000fcf  addli r1, r30, -6272
000628  92340002  vadd.s.mz vr9{mr1}, zero, vr0
00062c  92334002  vadd.s.mz vr7{mr1}, zero, vr4
000630  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000634  9f008fd5  addli r1, r30, -5440
000638  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00063c  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000640  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000644  9f000fd5  addli r1, r30, -5504
000648  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
00064c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000650  9f008fd4  addli r1, r30, -5568
000654  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000658  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00065c  9f008fd6  addli r1, r30, -5312
000660  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000664  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000668  9f000fd6  addli r1, r30, -5376
00066c  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000670  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000674  9f008fd8  addli r1, r30, -5056
000678  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
00067c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000680  9f008fd7  addli r1, r30, -5184
000684  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000688  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00068c  9f000fdd  addli r1, r30, -4480
000690  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000694  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000698  9f008fdc  addli r1, r30, -4544
00069c  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0006a0  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0006a4  9f000fd8  addli r1, r30, -5120
0006a8  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0006ac  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0006b0  9f008fd9  addli r1, r30, -4928
0006b4  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0006b8  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0006bc  9f000fd0  addli r1, r30, -6144
0006c0  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0006c4  3610b002  vmax.f.mz vr0{mr1}, vr0, vr11
0006c8  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
0006cc  9f008fd3  addli r1, r30, -5696
0006d0  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0006d4  9f000fda  addli r1, r30, -4864
0006d8  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0006dc  9f000fdb  addli r1, r30, -4736
0006e0  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0006e4  3610b002  vmax.f.mz vr0{mr1}, vr0, vr11
0006e8  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0006ec  9f000fdc  addli r1, r30, -4608
0006f0  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0006f4  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0006f8  9f008fdb  addli r1, r30, -4672
0006fc  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000700  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000704  9f008fdd  addli r1, r30, -4416
000708  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
00070c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
000710  9f000fd7  addli r1, r30, -5248
000714  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000718  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00071c  9f000fd9  addli r1, r30, -4992
000720  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000724  9f000fd1  addli r1, r30, -6016
000728  3610b002  vmax.f.mz vr0{mr1}, vr0, vr11
00072c  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
000730  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000734  9f000fce  addli r1, r30, -6400
000738  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
00073c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000740  9f008fce  addli r1, r30, -6336
000744  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000748  9f008fd0  addli r1, r30, -6080
00074c  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
000750  36105002  vmax.f.mz vr0{mr1}, vr0, vr5
000754  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000758  9f008fcf  addli r1, r30, -6208
00075c  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
000760  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
000764  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000768  9f000fd2  addli r1, r30, -5888
00076c  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
000770  36106002  vmax.f.mz vr0{mr1}, vr0, vr6
000774  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000778  9f008fd1  addli r1, r30, -5952
00077c  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
000780  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
000784  b6131002  vmax.f.mz vr7{mr1}, vr0, vr1
000788  fa971340  vextracti.f r15, 1(vr7)
00078c  7a9a2340  vextracti.f r20, 2(vr7)
000790  fa9a3340  vextracti.f r21, 3(vr7)
000794  7a9b4340  vextracti.f r22, 4(vr7)
000798  fa9b5340  vextracti.f r23, 5(vr7)
00079c  fa916340  vextracti.f r3, 6(vr7)
0007a0  7a987340  vextracti.f r16, 7(vr7)
0007a4  fa9c8340  vextracti.f r25, 8(vr7)
0007a8  7a9d9340  vextracti.f r26, 9(vr7)
0007ac  fa9da340  vextracti.f r27, 10(vr7)
0007b0  7a9eb340  vextracti.f r28, 11(vr7)
0007b4  fa92c340  vextracti.f r5, 12(vr7)
0007b8  fa95d340  vextracti.f r11, 13(vr7)
0007bc  7a96e340  vextracti.f r12, 14(vr7)
0007c0  fa93f340  vextracti.f r7, 15(vr7)
0007c4  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0007c8  9f008fd2  addli r1, r30, -5824
0007cc  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0007d0  9f000fd3  addli r1, r30, -5760
0007d4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0007d8  fa900340  vextracti.f r1, 0(vr7)
0007dc  8be0f048  max.f r1, r1, r15
0007e0  8be04049  max.f r1, r1, r20
0007e4  8be05049  max.f r1, r1, r21
0007e8  8be06049  max.f r1, r1, r22
0007ec  8be07049  max.f r1, r1, r23
0007f0  8be03048  max.f r1, r1, r3
0007f4  e301ffcd  loadli.w r3,  -6408(r30)
0007f8  8be00049  max.f r1, r1, r16
0007fc  8be09049  max.f r1, r1, r25
000800  8be0a049  max.f r1, r1, r26
000804  8be0b049  max.f r1, r1, r27
000808  8be0c049  max.f r1, r1, r28
00080c  8be05048  max.f r1, r1, r5
000810  8be0b048  max.f r1, r1, r11
000814  8be0c048  max.f r1, r1, r12
000818  8be07048  max.f r1, r1, r7
00081c  73e01100  stores.w r1, 0(r3)
000820  00a00300  mfence { lm, sm, gm }
000824  80210204  csr_set csr3, r4
000828  00d00100  sync_group
00082c  bb900600  bneq r13, zero, 36
000830  efc00400  loads.w r1, 0(r9)
000834  efc14400  loads.w r3, 4(r9)
000838  efc28400  loads.w r5, 8(r9)
00083c  efc3c400  loads.w r7, 12(r9)
000840  8be03048  max.f r1, r1, r3
000844  8be05048  max.f r1, r1, r5
000848  8be07048  max.f r1, r1, r7
00084c  73e01400  stores.w r1, 0(r9)
000850  00a00300  mfence { lm, sm, gm }
000854  80210204  csr_set csr3, r4
000858  00d00100  sync_group
00085c  efc00400  loads.w r1, 0(r9)
000860  ab010080  lui r3, 524288
000864  97a03000  xor r1, r1, r3
000868  9f010fd4  addli r3, r30, -5632
00086c  92934002  vadd.f.mz.rn vr7{mr1}, r1, vr4
000870  46107fe2  vstore_mask16.mz vr7{mr1}, 1792(r30)
000874  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000878  9f018fd5  addli r3, r30, -5440
00087c  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000880  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
000884  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000888  9f010fd5  addli r3, r30, -5504
00088c  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000890  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
000894  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000898  9f018fd4  addli r3, r30, -5568
00089c  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0008a0  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
0008a4  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0008a8  00a00000  mfence { lm }
0008ac  e3810900  loadli.w r3,  0(r19)
0008b0  e3c20900  loadli.w r5,  4(r19)
0008b4  e3831900  loadli.w r7,  8(r19)
0008b8  e3c51900  loadli.w r11,  12(r19)
0008bc  8f810100  exp.f.rn r3, r3
0008c0  8f820200  exp.f.rn r5, r5
0008c4  8f830300  exp.f.rn r7, r7
0008c8  8f850500  exp.f.rn r11, r11
0008cc  67803900  storeli.w r3, 0(r19)
0008d0  67c05900  storeli.w r5, 4(r19)
0008d4  e7807900  storeli.w r7, 8(r19)
0008d8  e7c0b900  storeli.w r11, 12(r19)
0008dc  e3812900  loadli.w r3,  16(r19)
0008e0  e3c22900  loadli.w r5,  20(r19)
0008e4  e3833900  loadli.w r7,  24(r19)
0008e8  e3c53900  loadli.w r11,  28(r19)
0008ec  8f810100  exp.f.rn r3, r3
0008f0  8f820200  exp.f.rn r5, r5
0008f4  8f830300  exp.f.rn r7, r7
0008f8  8f850500  exp.f.rn r11, r11
0008fc  67813900  storeli.w r3, 16(r19)
000900  67c15900  storeli.w r5, 20(r19)
000904  e7817900  storeli.w r7, 24(r19)
000908  e7c1b900  storeli.w r11, 28(r19)
00090c  e3814900  loadli.w r3,  32(r19)
000910  e3c24900  loadli.w r5,  36(r19)
000914  e3835900  loadli.w r7,  40(r19)
000918  e3c55900  loadli.w r11,  44(r19)
00091c  8f810100  exp.f.rn r3, r3
000920  8f820200  exp.f.rn r5, r5
000924  8f830300  exp.f.rn r7, r7
000928  8f850500  exp.f.rn r11, r11
00092c  67823900  storeli.w r3, 32(r19)
000930  67c25900  storeli.w r5, 36(r19)
000934  e7827900  storeli.w r7, 40(r19)
000938  e7c2b900  storeli.w r11, 44(r19)
00093c  e3816900  loadli.w r3,  48(r19)
000940  e3c26900  loadli.w r5,  52(r19)
000944  e3837900  loadli.w r7,  56(r19)
000948  e3c57900  loadli.w r11,  60(r19)
00094c  8f810100  exp.f.rn r3, r3
000950  8f820200  exp.f.rn r5, r5
000954  8f830300  exp.f.rn r7, r7
000958  8f850500  exp.f.rn r11, r11
00095c  67833900  storeli.w r3, 48(r19)
000960  67c35900  storeli.w r5, 52(r19)
000964  e7837900  storeli.w r7, 56(r19)
000968  e7c3b900  storeli.w r11, 60(r19)
00096c  e3818900  loadli.w r3,  64(r19)
000970  e3c28900  loadli.w r5,  68(r19)
000974  e3839900  loadli.w r7,  72(r19)
000978  e3c59900  loadli.w r11,  76(r19)
00097c  8f810100  exp.f.rn r3, r3
000980  8f820200  exp.f.rn r5, r5
000984  8f830300  exp.f.rn r7, r7
000988  8f850500  exp.f.rn r11, r11
00098c  67843900  storeli.w r3, 64(r19)
000990  67c45900  storeli.w r5, 68(r19)
000994  e7847900  storeli.w r7, 72(r19)
000998  e7c4b900  storeli.w r11, 76(r19)
00099c  e381a900  loadli.w r3,  80(r19)
0009a0  e3c2a900  loadli.w r5,  84(r19)
0009a4  e383b900  loadli.w r7,  88(r19)
0009a8  e3c5b900  loadli.w r11,  92(r19)
0009ac  8f810100  exp.f.rn r3, r3
0009b0  8f820200  exp.f.rn r5, r5
0009b4  8f830300  exp.f.rn r7, r7
0009b8  8f850500  exp.f.rn r11, r11
0009bc  67853900  storeli.w r3, 80(r19)
0009c0  67c55900  storeli.w r5, 84(r19)
0009c4  e7857900  storeli.w r7, 88(r19)
0009c8  e7c5b900  storeli.w r11, 92(r19)
0009cc  e381c900  loadli.w r3,  96(r19)
0009d0  e3c2c900  loadli.w r5,  100(r19)
0009d4  e383d900  loadli.w r7,  104(r19)
0009d8  e3c5d900  loadli.w r11,  108(r19)
0009dc  8f810100  exp.f.rn r3, r3
0009e0  8f820200  exp.f.rn r5, r5
0009e4  8f830300  exp.f.rn r7, r7
0009e8  8f850500  exp.f.rn r11, r11
0009ec  67863900  storeli.w r3, 96(r19)
0009f0  67c65900  storeli.w r5, 100(r19)
0009f4  e7867900  storeli.w r7, 104(r19)
0009f8  e7c6b900  storeli.w r11, 108(r19)
0009fc  e381e900  loadli.w r3,  112(r19)
000a00  e3c2e900  loadli.w r5,  116(r19)
000a04  e383f900  loadli.w r7,  120(r19)
000a08  e3c5f900  loadli.w r11,  124(r19)
000a0c  8f810100  exp.f.rn r3, r3
000a10  8f820200  exp.f.rn r5, r5
000a14  8f830300  exp.f.rn r7, r7
000a18  8f850500  exp.f.rn r11, r11
000a1c  67873900  storeli.w r3, 112(r19)
000a20  67c75900  storeli.w r5, 116(r19)
000a24  e7877900  storeli.w r7, 120(r19)
000a28  e7c7b900  storeli.w r11, 124(r19)
000a2c  e3810901  loadli.w r3,  128(r19)
000a30  e3c20901  loadli.w r5,  132(r19)
000a34  e3831901  loadli.w r7,  136(r19)
000a38  e3c51901  loadli.w r11,  140(r19)
000a3c  8f810100  exp.f.rn r3, r3
000a40  8f820200  exp.f.rn r5, r5
000a44  8f830300  exp.f.rn r7, r7
000a48  8f850500  exp.f.rn r11, r11
000a4c  67883900  storeli.w r3, 128(r19)
000a50  67c85900  storeli.w r5, 132(r19)
000a54  e7887900  storeli.w r7, 136(r19)
000a58  e7c8b900  storeli.w r11, 140(r19)
000a5c  e3812901  loadli.w r3,  144(r19)
000a60  e3c22901  loadli.w r5,  148(r19)
000a64  e3833901  loadli.w r7,  152(r19)
000a68  e3c53901  loadli.w r11,  156(r19)
000a6c  8f810100  exp.f.rn r3, r3
000a70  8f820200  exp.f.rn r5, r5
000a74  8f830300  exp.f.rn r7, r7
000a78  8f850500  exp.f.rn r11, r11
000a7c  67893900  storeli.w r3, 144(r19)
000a80  67c95900  storeli.w r5, 148(r19)
000a84  e7897900  storeli.w r7, 152(r19)
000a88  e7c9b900  storeli.w r11, 156(r19)
000a8c  e3814901  loadli.w r3,  160(r19)
000a90  e3c24901  loadli.w r5,  164(r19)
000a94  e3835901  loadli.w r7,  168(r19)
000a98  e3c55901  loadli.w r11,  172(r19)
000a9c  8f810100  exp.f.rn r3, r3
000aa0  8f820200  exp.f.rn r5, r5
000aa4  8f830300  exp.f.rn r7, r7
000aa8  8f850500  exp.f.rn r11, r11
000aac  678a3900  storeli.w r3, 160(r19)
000ab0  67ca5900  storeli.w r5, 164(r19)
000ab4  e78a7900  storeli.w r7, 168(r19)
000ab8  e7cab900  storeli.w r11, 172(r19)
000abc  e3816901  loadli.w r3,  176(r19)
000ac0  e3c26901  loadli.w r5,  180(r19)
000ac4  e3837901  loadli.w r7,  184(r19)
000ac8  e3c57901  loadli.w r11,  188(r19)
000acc  8f810100  exp.f.rn r3, r3
000ad0  8f820200  exp.f.rn r5, r5
000ad4  8f830300  exp.f.rn r7, r7
000ad8  8f850500  exp.f.rn r11, r11
000adc  678b3900  storeli.w r3, 176(r19)
000ae0  67cb5900  storeli.w r5, 180(r19)
000ae4  e78b7900  storeli.w r7, 184(r19)
000ae8  e7cbb900  storeli.w r11, 188(r19)
000aec  e3818901  loadli.w r3,  192(r19)
000af0  e3c28901  loadli.w r5,  196(r19)
000af4  e3839901  loadli.w r7,  200(r19)
000af8  e3c59901  loadli.w r11,  204(r19)
000afc  8f810100  exp.f.rn r3, r3
000b00  8f820200  exp.f.rn r5, r5
000b04  8f830300  exp.f.rn r7, r7
000b08  8f850500  exp.f.rn r11, r11
000b0c  678c3900  storeli.w r3, 192(r19)
000b10  67cc5900  storeli.w r5, 196(r19)
000b14  e78c7900  storeli.w r7, 200(r19)
000b18  e7ccb900  storeli.w r11, 204(r19)
000b1c  e381a901  loadli.w r3,  208(r19)
000b20  e3c2a901  loadli.w r5,  212(r19)
000b24  e383b901  loadli.w r7,  216(r19)
000b28  e3c5b901  loadli.w r11,  220(r19)
000b2c  8f810100  exp.f.rn r3, r3
000b30  8f820200  exp.f.rn r5, r5
000b34  8f830300  exp.f.rn r7, r7
000b38  8f850500  exp.f.rn r11, r11
000b3c  678d3900  storeli.w r3, 208(r19)
000b40  67cd5900  storeli.w r5, 212(r19)
000b44  e78d7900  storeli.w r7, 216(r19)
000b48  e7cdb900  storeli.w r11, 220(r19)
000b4c  e381c901  loadli.w r3,  224(r19)
000b50  e3c2c901  loadli.w r5,  228(r19)
000b54  e383d901  loadli.w r7,  232(r19)
000b58  e3c5d901  loadli.w r11,  236(r19)
000b5c  8f810100  exp.f.rn r3, r3
000b60  8f820200  exp.f.rn r5, r5
000b64  8f830300  exp.f.rn r7, r7
000b68  8f850500  exp.f.rn r11, r11
000b6c  678e3900  storeli.w r3, 224(r19)
000b70  67ce5900  storeli.w r5, 228(r19)
000b74  e78e7900  storeli.w r7, 232(r19)
000b78  e7ceb900  storeli.w r11, 236(r19)
000b7c  e381e901  loadli.w r3,  240(r19)
000b80  e3c2e901  loadli.w r5,  244(r19)
000b84  e383f901  loadli.w r7,  248(r19)
000b88  e3c5f901  loadli.w r11,  252(r19)
000b8c  8f810100  exp.f.rn r3, r3
000b90  8f820200  exp.f.rn r5, r5
000b94  8f830300  exp.f.rn r7, r7
000b98  8f850500  exp.f.rn r11, r11
000b9c  678f3900  storeli.w r3, 240(r19)
000ba0  67cf5900  storeli.w r5, 244(r19)
000ba4  e78f7900  storeli.w r7, 248(r19)
000ba8  e7cfb900  storeli.w r11, 252(r19)
000bac  00a00000  mfence { lm }
000bb0  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
000bb4  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
000bb8  9f018fd6  addli r3, r30, -5312
000bbc  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
000bc0  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000bc4  c2128fe3  vload_mask16.mz vr5{mr1}, 1984(r30)
000bc8  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
000bcc  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000bd0  9f010fd6  addli r3, r30, -5376
000bd4  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000bd8  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
000bdc  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000be0  92910002  vadd.f.mz.rn vr3{mr1}, r1, vr0
000be4  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
000be8  9f018fd5  addli r3, r30, -5440
000bec  16101202  vadd.f.mz.rn vr0{mr1}, vr4, vr1
000bf0  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000bf4  9f018fd8  addli r3, r30, -5056
000bf8  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
000bfc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000c00  9f018fd6  addli r3, r30, -5312
000c04  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000c08  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000c0c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000c10  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
000c14  9f018fd7  addli r3, r30, -5184
000c18  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000c1c  00a00000  mfence { lm }
000c20  e3810900  loadli.w r3,  0(r19)
000c24  e3c20900  loadli.w r5,  4(r19)
000c28  e3831900  loadli.w r7,  8(r19)
000c2c  e3c51900  loadli.w r11,  12(r19)
000c30  8f810100  exp.f.rn r3, r3
000c34  8f820200  exp.f.rn r5, r5
000c38  8f830300  exp.f.rn r7, r7
000c3c  8f850500  exp.f.rn r11, r11
000c40  67803900  storeli.w r3, 0(r19)
000c44  67c05900  storeli.w r5, 4(r19)
000c48  e7807900  storeli.w r7, 8(r19)
000c4c  e7c0b900  storeli.w r11, 12(r19)
000c50  e3812900  loadli.w r3,  16(r19)
000c54  e3c22900  loadli.w r5,  20(r19)
000c58  e3833900  loadli.w r7,  24(r19)
000c5c  e3c53900  loadli.w r11,  28(r19)
000c60  8f810100  exp.f.rn r3, r3
000c64  8f820200  exp.f.rn r5, r5
000c68  8f830300  exp.f.rn r7, r7
000c6c  8f850500  exp.f.rn r11, r11
000c70  67813900  storeli.w r3, 16(r19)
000c74  67c15900  storeli.w r5, 20(r19)
000c78  e7817900  storeli.w r7, 24(r19)
000c7c  e7c1b900  storeli.w r11, 28(r19)
000c80  e3814900  loadli.w r3,  32(r19)
000c84  e3c24900  loadli.w r5,  36(r19)
000c88  e3835900  loadli.w r7,  40(r19)
000c8c  e3c55900  loadli.w r11,  44(r19)
000c90  8f810100  exp.f.rn r3, r3
000c94  8f820200  exp.f.rn r5, r5
000c98  8f830300  exp.f.rn r7, r7
000c9c  8f850500  exp.f.rn r11, r11
000ca0  67823900  storeli.w r3, 32(r19)
000ca4  67c25900  storeli.w r5, 36(r19)
000ca8  e7827900  storeli.w r7, 40(r19)
000cac  e7c2b900  storeli.w r11, 44(r19)
000cb0  e3816900  loadli.w r3,  48(r19)
000cb4  e3c26900  loadli.w r5,  52(r19)
000cb8  e3837900  loadli.w r7,  56(r19)
000cbc  e3c57900  loadli.w r11,  60(r19)
000cc0  8f810100  exp.f.rn r3, r3
000cc4  8f820200  exp.f.rn r5, r5
000cc8  8f830300  exp.f.rn r7, r7
000ccc  8f850500  exp.f.rn r11, r11
000cd0  67833900  storeli.w r3, 48(r19)
000cd4  67c35900  storeli.w r5, 52(r19)
000cd8  e7837900  storeli.w r7, 56(r19)
000cdc  e7c3b900  storeli.w r11, 60(r19)
000ce0  e3818900  loadli.w r3,  64(r19)
000ce4  e3c28900  loadli.w r5,  68(r19)
000ce8  e3839900  loadli.w r7,  72(r19)
000cec  e3c59900  loadli.w r11,  76(r19)
000cf0  8f810100  exp.f.rn r3, r3
000cf4  8f820200  exp.f.rn r5, r5
000cf8  8f830300  exp.f.rn r7, r7
000cfc  8f850500  exp.f.rn r11, r11
000d00  67843900  storeli.w r3, 64(r19)
000d04  67c45900  storeli.w r5, 68(r19)
000d08  e7847900  storeli.w r7, 72(r19)
000d0c  e7c4b900  storeli.w r11, 76(r19)
000d10  e381a900  loadli.w r3,  80(r19)
000d14  e3c2a900  loadli.w r5,  84(r19)
000d18  e383b900  loadli.w r7,  88(r19)
000d1c  e3c5b900  loadli.w r11,  92(r19)
000d20  8f810100  exp.f.rn r3, r3
000d24  8f820200  exp.f.rn r5, r5
000d28  8f830300  exp.f.rn r7, r7
000d2c  8f850500  exp.f.rn r11, r11
000d30  67853900  storeli.w r3, 80(r19)
000d34  67c55900  storeli.w r5, 84(r19)
000d38  e7857900  storeli.w r7, 88(r19)
000d3c  e7c5b900  storeli.w r11, 92(r19)
000d40  e381c900  loadli.w r3,  96(r19)
000d44  e3c2c900  loadli.w r5,  100(r19)
000d48  e383d900  loadli.w r7,  104(r19)
000d4c  e3c5d900  loadli.w r11,  108(r19)
000d50  8f810100  exp.f.rn r3, r3
000d54  8f820200  exp.f.rn r5, r5
000d58  8f830300  exp.f.rn r7, r7
000d5c  8f850500  exp.f.rn r11, r11
000d60  67863900  storeli.w r3, 96(r19)
000d64  67c65900  storeli.w r5, 100(r19)
000d68  e7867900  storeli.w r7, 104(r19)
000d6c  e7c6b900  storeli.w r11, 108(r19)
000d70  e381e900  loadli.w r3,  112(r19)
000d74  e3c2e900  loadli.w r5,  116(r19)
000d78  e383f900  loadli.w r7,  120(r19)
000d7c  e3c5f900  loadli.w r11,  124(r19)
000d80  8f810100  exp.f.rn r3, r3
000d84  8f820200  exp.f.rn r5, r5
000d88  8f830300  exp.f.rn r7, r7
000d8c  8f850500  exp.f.rn r11, r11
000d90  67873900  storeli.w r3, 112(r19)
000d94  67c75900  storeli.w r5, 116(r19)
000d98  e7877900  storeli.w r7, 120(r19)
000d9c  e7c7b900  storeli.w r11, 124(r19)
000da0  e3810901  loadli.w r3,  128(r19)
000da4  e3c20901  loadli.w r5,  132(r19)
000da8  e3831901  loadli.w r7,  136(r19)
000dac  e3c51901  loadli.w r11,  140(r19)
000db0  8f810100  exp.f.rn r3, r3
000db4  8f820200  exp.f.rn r5, r5
000db8  8f830300  exp.f.rn r7, r7
000dbc  8f850500  exp.f.rn r11, r11
000dc0  67883900  storeli.w r3, 128(r19)
000dc4  67c85900  storeli.w r5, 132(r19)
000dc8  e7887900  storeli.w r7, 136(r19)
000dcc  e7c8b900  storeli.w r11, 140(r19)
000dd0  e3812901  loadli.w r3,  144(r19)
000dd4  e3c22901  loadli.w r5,  148(r19)
000dd8  e3833901  loadli.w r7,  152(r19)
000ddc  e3c53901  loadli.w r11,  156(r19)
000de0  8f810100  exp.f.rn r3, r3
000de4  8f820200  exp.f.rn r5, r5
000de8  8f830300  exp.f.rn r7, r7
000dec  8f850500  exp.f.rn r11, r11
000df0  67893900  storeli.w r3, 144(r19)
000df4  67c95900  storeli.w r5, 148(r19)
000df8  e7897900  storeli.w r7, 152(r19)
000dfc  e7c9b900  storeli.w r11, 156(r19)
000e00  e3814901  loadli.w r3,  160(r19)
000e04  e3c24901  loadli.w r5,  164(r19)
000e08  e3835901  loadli.w r7,  168(r19)
000e0c  e3c55901  loadli.w r11,  172(r19)
000e10  8f810100  exp.f.rn r3, r3
000e14  8f820200  exp.f.rn r5, r5
000e18  8f830300  exp.f.rn r7, r7
000e1c  8f850500  exp.f.rn r11, r11
000e20  678a3900  storeli.w r3, 160(r19)
000e24  67ca5900  storeli.w r5, 164(r19)
000e28  e78a7900  storeli.w r7, 168(r19)
000e2c  e7cab900  storeli.w r11, 172(r19)
000e30  e3816901  loadli.w r3,  176(r19)
000e34  e3c26901  loadli.w r5,  180(r19)
000e38  e3837901  loadli.w r7,  184(r19)
000e3c  e3c57901  loadli.w r11,  188(r19)
000e40  8f810100  exp.f.rn r3, r3
000e44  8f820200  exp.f.rn r5, r5
000e48  8f830300  exp.f.rn r7, r7
000e4c  8f850500  exp.f.rn r11, r11
000e50  678b3900  storeli.w r3, 176(r19)
000e54  67cb5900  storeli.w r5, 180(r19)
000e58  e78b7900  storeli.w r7, 184(r19)
000e5c  e7cbb900  storeli.w r11, 188(r19)
000e60  e3818901  loadli.w r3,  192(r19)
000e64  e3c28901  loadli.w r5,  196(r19)
000e68  e3839901  loadli.w r7,  200(r19)
000e6c  e3c59901  loadli.w r11,  204(r19)
000e70  8f810100  exp.f.rn r3, r3
000e74  8f820200  exp.f.rn r5, r5
000e78  8f830300  exp.f.rn r7, r7
000e7c  8f850500  exp.f.rn r11, r11
000e80  678c3900  storeli.w r3, 192(r19)
000e84  67cc5900  storeli.w r5, 196(r19)
000e88  e78c7900  storeli.w r7, 200(r19)
000e8c  e7ccb900  storeli.w r11, 204(r19)
000e90  e381a901  loadli.w r3,  208(r19)
000e94  e3c2a901  loadli.w r5,  212(r19)
000e98  e383b901  loadli.w r7,  216(r19)
000e9c  e3c5b901  loadli.w r11,  220(r19)
000ea0  8f810100  exp.f.rn r3, r3
000ea4  8f820200  exp.f.rn r5, r5
000ea8  8f830300  exp.f.rn r7, r7
000eac  8f850500  exp.f.rn r11, r11
000eb0  678d3900  storeli.w r3, 208(r19)
000eb4  67cd5900  storeli.w r5, 212(r19)
000eb8  e78d7900  storeli.w r7, 216(r19)
000ebc  e7cdb900  storeli.w r11, 220(r19)
000ec0  e381c901  loadli.w r3,  224(r19)
000ec4  e3c2c901  loadli.w r5,  228(r19)
000ec8  e383d901  loadli.w r7,  232(r19)
000ecc  e3c5d901  loadli.w r11,  236(r19)
000ed0  8f810100  exp.f.rn r3, r3
000ed4  8f820200  exp.f.rn r5, r5
000ed8  8f830300  exp.f.rn r7, r7
000edc  8f850500  exp.f.rn r11, r11
000ee0  678e3900  storeli.w r3, 224(r19)
000ee4  67ce5900  storeli.w r5, 228(r19)
000ee8  e78e7900  storeli.w r7, 232(r19)
000eec  e7ceb900  storeli.w r11, 236(r19)
000ef0  e381e901  loadli.w r3,  240(r19)
000ef4  e3c2e901  loadli.w r5,  244(r19)
000ef8  e383f901  loadli.w r7,  248(r19)
000efc  e3c5f901  loadli.w r11,  252(r19)
000f00  8f810100  exp.f.rn r3, r3
000f04  8f820200  exp.f.rn r5, r5
000f08  8f830300  exp.f.rn r7, r7
000f0c  8f850500  exp.f.rn r11, r11
000f10  678f3900  storeli.w r3, 240(r19)
000f14  67cf5900  storeli.w r5, 244(r19)
000f18  e78f7900  storeli.w r7, 248(r19)
000f1c  e7cfb900  storeli.w r11, 252(r19)
000f20  00a00000  mfence { lm }
000f24  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000f28  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
000f2c  9f018fd8  addli r3, r30, -5056
000f30  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f34  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
000f38  9f018fd7  addli r3, r30, -5184
000f3c  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
000f40  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
000f44  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
000f48  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000f4c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
000f50  9f010fdd  addli r3, r30, -4480
000f54  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000f58  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f5c  9f018fdc  addli r3, r30, -4544
000f60  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f64  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000f68  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f6c  9f010fd5  addli r3, r30, -5504
000f70  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000f74  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f78  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
000f7c  9f010fd8  addli r3, r30, -5120
000f80  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
000f84  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000f88  9f018fdc  addli r3, r30, -4544
000f8c  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
000f90  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
000f94  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000f98  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000f9c  9f018fd9  addli r3, r30, -4928
000fa0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
000fa4  00a00000  mfence { lm }
000fa8  e3810900  loadli.w r3,  0(r19)
000fac  e3c20900  loadli.w r5,  4(r19)
000fb0  e3831900  loadli.w r7,  8(r19)
000fb4  e3c51900  loadli.w r11,  12(r19)
000fb8  8f810100  exp.f.rn r3, r3
000fbc  8f820200  exp.f.rn r5, r5
000fc0  8f830300  exp.f.rn r7, r7
000fc4  8f850500  exp.f.rn r11, r11
000fc8  67803900  storeli.w r3, 0(r19)
000fcc  67c05900  storeli.w r5, 4(r19)
000fd0  e7807900  storeli.w r7, 8(r19)
000fd4  e7c0b900  storeli.w r11, 12(r19)
000fd8  e3812900  loadli.w r3,  16(r19)
000fdc  e3c22900  loadli.w r5,  20(r19)
000fe0  e3833900  loadli.w r7,  24(r19)
000fe4  e3c53900  loadli.w r11,  28(r19)
000fe8  8f810100  exp.f.rn r3, r3
000fec  8f820200  exp.f.rn r5, r5
000ff0  8f830300  exp.f.rn r7, r7
000ff4  8f850500  exp.f.rn r11, r11
000ff8  67813900  storeli.w r3, 16(r19)
000ffc  67c15900  storeli.w r5, 20(r19)
001000  e7817900  storeli.w r7, 24(r19)
001004  e7c1b900  storeli.w r11, 28(r19)
001008  e3814900  loadli.w r3,  32(r19)
00100c  e3c24900  loadli.w r5,  36(r19)
001010  e3835900  loadli.w r7,  40(r19)
001014  e3c55900  loadli.w r11,  44(r19)
001018  8f810100  exp.f.rn r3, r3
00101c  8f820200  exp.f.rn r5, r5
001020  8f830300  exp.f.rn r7, r7
001024  8f850500  exp.f.rn r11, r11
001028  67823900  storeli.w r3, 32(r19)
00102c  67c25900  storeli.w r5, 36(r19)
001030  e7827900  storeli.w r7, 40(r19)
001034  e7c2b900  storeli.w r11, 44(r19)
001038  e3816900  loadli.w r3,  48(r19)
00103c  e3c26900  loadli.w r5,  52(r19)
001040  e3837900  loadli.w r7,  56(r19)
001044  e3c57900  loadli.w r11,  60(r19)
001048  8f810100  exp.f.rn r3, r3
00104c  8f820200  exp.f.rn r5, r5
001050  8f830300  exp.f.rn r7, r7
001054  8f850500  exp.f.rn r11, r11
001058  67833900  storeli.w r3, 48(r19)
00105c  67c35900  storeli.w r5, 52(r19)
001060  e7837900  storeli.w r7, 56(r19)
001064  e7c3b900  storeli.w r11, 60(r19)
001068  e3818900  loadli.w r3,  64(r19)
00106c  e3c28900  loadli.w r5,  68(r19)
001070  e3839900  loadli.w r7,  72(r19)
001074  e3c59900  loadli.w r11,  76(r19)
001078  8f810100  exp.f.rn r3, r3
00107c  8f820200  exp.f.rn r5, r5
001080  8f830300  exp.f.rn r7, r7
001084  8f850500  exp.f.rn r11, r11
001088  67843900  storeli.w r3, 64(r19)
00108c  67c45900  storeli.w r5, 68(r19)
001090  e7847900  storeli.w r7, 72(r19)
001094  e7c4b900  storeli.w r11, 76(r19)
001098  e381a900  loadli.w r3,  80(r19)
00109c  e3c2a900  loadli.w r5,  84(r19)
0010a0  e383b900  loadli.w r7,  88(r19)
0010a4  e3c5b900  loadli.w r11,  92(r19)
0010a8  8f810100  exp.f.rn r3, r3
0010ac  8f820200  exp.f.rn r5, r5
0010b0  8f830300  exp.f.rn r7, r7
0010b4  8f850500  exp.f.rn r11, r11
0010b8  67853900  storeli.w r3, 80(r19)
0010bc  67c55900  storeli.w r5, 84(r19)
0010c0  e7857900  storeli.w r7, 88(r19)
0010c4  e7c5b900  storeli.w r11, 92(r19)
0010c8  e381c900  loadli.w r3,  96(r19)
0010cc  e3c2c900  loadli.w r5,  100(r19)
0010d0  e383d900  loadli.w r7,  104(r19)
0010d4  e3c5d900  loadli.w r11,  108(r19)
0010d8  8f810100  exp.f.rn r3, r3
0010dc  8f820200  exp.f.rn r5, r5
0010e0  8f830300  exp.f.rn r7, r7
0010e4  8f850500  exp.f.rn r11, r11
0010e8  67863900  storeli.w r3, 96(r19)
0010ec  67c65900  storeli.w r5, 100(r19)
0010f0  e7867900  storeli.w r7, 104(r19)
0010f4  e7c6b900  storeli.w r11, 108(r19)
0010f8  e381e900  loadli.w r3,  112(r19)
0010fc  e3c2e900  loadli.w r5,  116(r19)
001100  e383f900  loadli.w r7,  120(r19)
001104  e3c5f900  loadli.w r11,  124(r19)
001108  8f810100  exp.f.rn r3, r3
00110c  8f820200  exp.f.rn r5, r5
001110  8f830300  exp.f.rn r7, r7
001114  8f850500  exp.f.rn r11, r11
001118  67873900  storeli.w r3, 112(r19)
00111c  67c75900  storeli.w r5, 116(r19)
001120  e7877900  storeli.w r7, 120(r19)
001124  e7c7b900  storeli.w r11, 124(r19)
001128  e3810901  loadli.w r3,  128(r19)
00112c  e3c20901  loadli.w r5,  132(r19)
001130  e3831901  loadli.w r7,  136(r19)
001134  e3c51901  loadli.w r11,  140(r19)
001138  8f810100  exp.f.rn r3, r3
00113c  8f820200  exp.f.rn r5, r5
001140  8f830300  exp.f.rn r7, r7
001144  8f850500  exp.f.rn r11, r11
001148  67883900  storeli.w r3, 128(r19)
00114c  67c85900  storeli.w r5, 132(r19)
001150  e7887900  storeli.w r7, 136(r19)
001154  e7c8b900  storeli.w r11, 140(r19)
001158  e3812901  loadli.w r3,  144(r19)
00115c  e3c22901  loadli.w r5,  148(r19)
001160  e3833901  loadli.w r7,  152(r19)
001164  e3c53901  loadli.w r11,  156(r19)
001168  8f810100  exp.f.rn r3, r3
00116c  8f820200  exp.f.rn r5, r5
001170  8f830300  exp.f.rn r7, r7
001174  8f850500  exp.f.rn r11, r11
001178  67893900  storeli.w r3, 144(r19)
00117c  67c95900  storeli.w r5, 148(r19)
001180  e7897900  storeli.w r7, 152(r19)
001184  e7c9b900  storeli.w r11, 156(r19)
001188  e3814901  loadli.w r3,  160(r19)
00118c  e3c24901  loadli.w r5,  164(r19)
001190  e3835901  loadli.w r7,  168(r19)
001194  e3c55901  loadli.w r11,  172(r19)
001198  8f810100  exp.f.rn r3, r3
00119c  8f820200  exp.f.rn r5, r5
0011a0  8f830300  exp.f.rn r7, r7
0011a4  8f850500  exp.f.rn r11, r11
0011a8  678a3900  storeli.w r3, 160(r19)
0011ac  67ca5900  storeli.w r5, 164(r19)
0011b0  e78a7900  storeli.w r7, 168(r19)
0011b4  e7cab900  storeli.w r11, 172(r19)
0011b8  e3816901  loadli.w r3,  176(r19)
0011bc  e3c26901  loadli.w r5,  180(r19)
0011c0  e3837901  loadli.w r7,  184(r19)
0011c4  e3c57901  loadli.w r11,  188(r19)
0011c8  8f810100  exp.f.rn r3, r3
0011cc  8f820200  exp.f.rn r5, r5
0011d0  8f830300  exp.f.rn r7, r7
0011d4  8f850500  exp.f.rn r11, r11
0011d8  678b3900  storeli.w r3, 176(r19)
0011dc  67cb5900  storeli.w r5, 180(r19)
0011e0  e78b7900  storeli.w r7, 184(r19)
0011e4  e7cbb900  storeli.w r11, 188(r19)
0011e8  e3818901  loadli.w r3,  192(r19)
0011ec  e3c28901  loadli.w r5,  196(r19)
0011f0  e3839901  loadli.w r7,  200(r19)
0011f4  e3c59901  loadli.w r11,  204(r19)
0011f8  8f810100  exp.f.rn r3, r3
0011fc  8f820200  exp.f.rn r5, r5
001200  8f830300  exp.f.rn r7, r7
001204  8f850500  exp.f.rn r11, r11
001208  678c3900  storeli.w r3, 192(r19)
00120c  67cc5900  storeli.w r5, 196(r19)
001210  e78c7900  storeli.w r7, 200(r19)
001214  e7ccb900  storeli.w r11, 204(r19)
001218  e381a901  loadli.w r3,  208(r19)
00121c  e3c2a901  loadli.w r5,  212(r19)
001220  e383b901  loadli.w r7,  216(r19)
001224  e3c5b901  loadli.w r11,  220(r19)
001228  8f810100  exp.f.rn r3, r3
00122c  8f820200  exp.f.rn r5, r5
001230  8f830300  exp.f.rn r7, r7
001234  8f850500  exp.f.rn r11, r11
001238  678d3900  storeli.w r3, 208(r19)
00123c  67cd5900  storeli.w r5, 212(r19)
001240  e78d7900  storeli.w r7, 216(r19)
001244  e7cdb900  storeli.w r11, 220(r19)
001248  e381c901  loadli.w r3,  224(r19)
00124c  e3c2c901  loadli.w r5,  228(r19)
001250  e383d901  loadli.w r7,  232(r19)
001254  e3c5d901  loadli.w r11,  236(r19)
001258  8f810100  exp.f.rn r3, r3
00125c  8f820200  exp.f.rn r5, r5
001260  8f830300  exp.f.rn r7, r7
001264  8f850500  exp.f.rn r11, r11
001268  678e3900  storeli.w r3, 224(r19)
00126c  67ce5900  storeli.w r5, 228(r19)
001270  e78e7900  storeli.w r7, 232(r19)
001274  e7ceb900  storeli.w r11, 236(r19)
001278  e381e901  loadli.w r3,  240(r19)
00127c  e3c2e901  loadli.w r5,  244(r19)
001280  e383f901  loadli.w r7,  248(r19)
001284  e3c5f901  loadli.w r11,  252(r19)
001288  8f810100  exp.f.rn r3, r3
00128c  8f820200  exp.f.rn r5, r5
001290  8f830300  exp.f.rn r7, r7
001294  8f850500  exp.f.rn r11, r11
001298  678f3900  storeli.w r3, 240(r19)
00129c  67cf5900  storeli.w r5, 244(r19)
0012a0  e78f7900  storeli.w r7, 248(r19)
0012a4  e7cfb900  storeli.w r11, 252(r19)
0012a8  00a00000  mfence { lm }
0012ac  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0012b0  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
0012b4  9f010fdd  addli r3, r30, -4480
0012b8  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0012bc  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
0012c0  9f018fd9  addli r3, r30, -4928
0012c4  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
0012c8  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
0012cc  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
0012d0  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0012d4  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
0012d8  9f010fd0  addli r3, r30, -6144
0012dc  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
0012e0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0012e4  9f010fda  addli r3, r30, -4864
0012e8  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0012ec  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
0012f0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0012f4  9f010fd8  addli r3, r30, -5120
0012f8  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
0012fc  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001300  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001304  9f018fd3  addli r3, r30, -5696
001308  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
00130c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001310  9f010fda  addli r3, r30, -4864
001314  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001318  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
00131c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001320  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
001324  9f010fdb  addli r3, r30, -4736
001328  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00132c  00a00000  mfence { lm }
001330  e3810900  loadli.w r3,  0(r19)
001334  e3c20900  loadli.w r5,  4(r19)
001338  e3831900  loadli.w r7,  8(r19)
00133c  e3c51900  loadli.w r11,  12(r19)
001340  8f810100  exp.f.rn r3, r3
001344  8f820200  exp.f.rn r5, r5
001348  8f830300  exp.f.rn r7, r7
00134c  8f850500  exp.f.rn r11, r11
001350  67803900  storeli.w r3, 0(r19)
001354  67c05900  storeli.w r5, 4(r19)
001358  e7807900  storeli.w r7, 8(r19)
00135c  e7c0b900  storeli.w r11, 12(r19)
001360  e3812900  loadli.w r3,  16(r19)
001364  e3c22900  loadli.w r5,  20(r19)
001368  e3833900  loadli.w r7,  24(r19)
00136c  e3c53900  loadli.w r11,  28(r19)
001370  8f810100  exp.f.rn r3, r3
001374  8f820200  exp.f.rn r5, r5
001378  8f830300  exp.f.rn r7, r7
00137c  8f850500  exp.f.rn r11, r11
001380  67813900  storeli.w r3, 16(r19)
001384  67c15900  storeli.w r5, 20(r19)
001388  e7817900  storeli.w r7, 24(r19)
00138c  e7c1b900  storeli.w r11, 28(r19)
001390  e3814900  loadli.w r3,  32(r19)
001394  e3c24900  loadli.w r5,  36(r19)
001398  e3835900  loadli.w r7,  40(r19)
00139c  e3c55900  loadli.w r11,  44(r19)
0013a0  8f810100  exp.f.rn r3, r3
0013a4  8f820200  exp.f.rn r5, r5
0013a8  8f830300  exp.f.rn r7, r7
0013ac  8f850500  exp.f.rn r11, r11
0013b0  67823900  storeli.w r3, 32(r19)
0013b4  67c25900  storeli.w r5, 36(r19)
0013b8  e7827900  storeli.w r7, 40(r19)
0013bc  e7c2b900  storeli.w r11, 44(r19)
0013c0  e3816900  loadli.w r3,  48(r19)
0013c4  e3c26900  loadli.w r5,  52(r19)
0013c8  e3837900  loadli.w r7,  56(r19)
0013cc  e3c57900  loadli.w r11,  60(r19)
0013d0  8f810100  exp.f.rn r3, r3
0013d4  8f820200  exp.f.rn r5, r5
0013d8  8f830300  exp.f.rn r7, r7
0013dc  8f850500  exp.f.rn r11, r11
0013e0  67833900  storeli.w r3, 48(r19)
0013e4  67c35900  storeli.w r5, 52(r19)
0013e8  e7837900  storeli.w r7, 56(r19)
0013ec  e7c3b900  storeli.w r11, 60(r19)
0013f0  e3818900  loadli.w r3,  64(r19)
0013f4  e3c28900  loadli.w r5,  68(r19)
0013f8  e3839900  loadli.w r7,  72(r19)
0013fc  e3c59900  loadli.w r11,  76(r19)
001400  8f810100  exp.f.rn r3, r3
001404  8f820200  exp.f.rn r5, r5
001408  8f830300  exp.f.rn r7, r7
00140c  8f850500  exp.f.rn r11, r11
001410  67843900  storeli.w r3, 64(r19)
001414  67c45900  storeli.w r5, 68(r19)
001418  e7847900  storeli.w r7, 72(r19)
00141c  e7c4b900  storeli.w r11, 76(r19)
001420  e381a900  loadli.w r3,  80(r19)
001424  e3c2a900  loadli.w r5,  84(r19)
001428  e383b900  loadli.w r7,  88(r19)
00142c  e3c5b900  loadli.w r11,  92(r19)
001430  8f810100  exp.f.rn r3, r3
001434  8f820200  exp.f.rn r5, r5
001438  8f830300  exp.f.rn r7, r7
00143c  8f850500  exp.f.rn r11, r11
001440  67853900  storeli.w r3, 80(r19)
001444  67c55900  storeli.w r5, 84(r19)
001448  e7857900  storeli.w r7, 88(r19)
00144c  e7c5b900  storeli.w r11, 92(r19)
001450  e381c900  loadli.w r3,  96(r19)
001454  e3c2c900  loadli.w r5,  100(r19)
001458  e383d900  loadli.w r7,  104(r19)
00145c  e3c5d900  loadli.w r11,  108(r19)
001460  8f810100  exp.f.rn r3, r3
001464  8f820200  exp.f.rn r5, r5
001468  8f830300  exp.f.rn r7, r7
00146c  8f850500  exp.f.rn r11, r11
001470  67863900  storeli.w r3, 96(r19)
001474  67c65900  storeli.w r5, 100(r19)
001478  e7867900  storeli.w r7, 104(r19)
00147c  e7c6b900  storeli.w r11, 108(r19)
001480  e381e900  loadli.w r3,  112(r19)
001484  e3c2e900  loadli.w r5,  116(r19)
001488  e383f900  loadli.w r7,  120(r19)
00148c  e3c5f900  loadli.w r11,  124(r19)
001490  8f810100  exp.f.rn r3, r3
001494  8f820200  exp.f.rn r5, r5
001498  8f830300  exp.f.rn r7, r7
00149c  8f850500  exp.f.rn r11, r11
0014a0  67873900  storeli.w r3, 112(r19)
0014a4  67c75900  storeli.w r5, 116(r19)
0014a8  e7877900  storeli.w r7, 120(r19)
0014ac  e7c7b900  storeli.w r11, 124(r19)
0014b0  e3810901  loadli.w r3,  128(r19)
0014b4  e3c20901  loadli.w r5,  132(r19)
0014b8  e3831901  loadli.w r7,  136(r19)
0014bc  e3c51901  loadli.w r11,  140(r19)
0014c0  8f810100  exp.f.rn r3, r3
0014c4  8f820200  exp.f.rn r5, r5
0014c8  8f830300  exp.f.rn r7, r7
0014cc  8f850500  exp.f.rn r11, r11
0014d0  67883900  storeli.w r3, 128(r19)
0014d4  67c85900  storeli.w r5, 132(r19)
0014d8  e7887900  storeli.w r7, 136(r19)
0014dc  e7c8b900  storeli.w r11, 140(r19)
0014e0  e3812901  loadli.w r3,  144(r19)
0014e4  e3c22901  loadli.w r5,  148(r19)
0014e8  e3833901  loadli.w r7,  152(r19)
0014ec  e3c53901  loadli.w r11,  156(r19)
0014f0  8f810100  exp.f.rn r3, r3
0014f4  8f820200  exp.f.rn r5, r5
0014f8  8f830300  exp.f.rn r7, r7
0014fc  8f850500  exp.f.rn r11, r11
001500  67893900  storeli.w r3, 144(r19)
001504  67c95900  storeli.w r5, 148(r19)
001508  e7897900  storeli.w r7, 152(r19)
00150c  e7c9b900  storeli.w r11, 156(r19)
001510  e3814901  loadli.w r3,  160(r19)
001514  e3c24901  loadli.w r5,  164(r19)
001518  e3835901  loadli.w r7,  168(r19)
00151c  e3c55901  loadli.w r11,  172(r19)
001520  8f810100  exp.f.rn r3, r3
001524  8f820200  exp.f.rn r5, r5
001528  8f830300  exp.f.rn r7, r7
00152c  8f850500  exp.f.rn r11, r11
001530  678a3900  storeli.w r3, 160(r19)
001534  67ca5900  storeli.w r5, 164(r19)
001538  e78a7900  storeli.w r7, 168(r19)
00153c  e7cab900  storeli.w r11, 172(r19)
001540  e3816901  loadli.w r3,  176(r19)
001544  e3c26901  loadli.w r5,  180(r19)
001548  e3837901  loadli.w r7,  184(r19)
00154c  e3c57901  loadli.w r11,  188(r19)
001550  8f810100  exp.f.rn r3, r3
001554  8f820200  exp.f.rn r5, r5
001558  8f830300  exp.f.rn r7, r7
00155c  8f850500  exp.f.rn r11, r11
001560  678b3900  storeli.w r3, 176(r19)
001564  67cb5900  storeli.w r5, 180(r19)
001568  e78b7900  storeli.w r7, 184(r19)
00156c  e7cbb900  storeli.w r11, 188(r19)
001570  e3818901  loadli.w r3,  192(r19)
001574  e3c28901  loadli.w r5,  196(r19)
001578  e3839901  loadli.w r7,  200(r19)
00157c  e3c59901  loadli.w r11,  204(r19)
001580  8f810100  exp.f.rn r3, r3
001584  8f820200  exp.f.rn r5, r5
001588  8f830300  exp.f.rn r7, r7
00158c  8f850500  exp.f.rn r11, r11
001590  678c3900  storeli.w r3, 192(r19)
001594  67cc5900  storeli.w r5, 196(r19)
001598  e78c7900  storeli.w r7, 200(r19)
00159c  e7ccb900  storeli.w r11, 204(r19)
0015a0  e381a901  loadli.w r3,  208(r19)
0015a4  e3c2a901  loadli.w r5,  212(r19)
0015a8  e383b901  loadli.w r7,  216(r19)
0015ac  e3c5b901  loadli.w r11,  220(r19)
0015b0  8f810100  exp.f.rn r3, r3
0015b4  8f820200  exp.f.rn r5, r5
0015b8  8f830300  exp.f.rn r7, r7
0015bc  8f850500  exp.f.rn r11, r11
0015c0  678d3900  storeli.w r3, 208(r19)
0015c4  67cd5900  storeli.w r5, 212(r19)
0015c8  e78d7900  storeli.w r7, 216(r19)
0015cc  e7cdb900  storeli.w r11, 220(r19)
0015d0  e381c901  loadli.w r3,  224(r19)
0015d4  e3c2c901  loadli.w r5,  228(r19)
0015d8  e383d901  loadli.w r7,  232(r19)
0015dc  e3c5d901  loadli.w r11,  236(r19)
0015e0  8f810100  exp.f.rn r3, r3
0015e4  8f820200  exp.f.rn r5, r5
0015e8  8f830300  exp.f.rn r7, r7
0015ec  8f850500  exp.f.rn r11, r11
0015f0  678e3900  storeli.w r3, 224(r19)
0015f4  67ce5900  storeli.w r5, 228(r19)
0015f8  e78e7900  storeli.w r7, 232(r19)
0015fc  e7ceb900  storeli.w r11, 236(r19)
001600  e381e901  loadli.w r3,  240(r19)
001604  e3c2e901  loadli.w r5,  244(r19)
001608  e383f901  loadli.w r7,  248(r19)
00160c  e3c5f901  loadli.w r11,  252(r19)
001610  8f810100  exp.f.rn r3, r3
001614  8f820200  exp.f.rn r5, r5
001618  8f830300  exp.f.rn r7, r7
00161c  8f850500  exp.f.rn r11, r11
001620  678f3900  storeli.w r3, 240(r19)
001624  67cf5900  storeli.w r5, 244(r19)
001628  e78f7900  storeli.w r7, 248(r19)
00162c  e7cfb900  storeli.w r11, 252(r19)
001630  00a00000  mfence { lm }
001634  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001638  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
00163c  9f010fdb  addli r3, r30, -4736
001640  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001644  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
001648  9f018fd4  addli r3, r30, -5568
00164c  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
001650  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
001654  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
001658  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
00165c  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
001660  9f010fdc  addli r3, r30, -4608
001664  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
001668  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00166c  9f018fdb  addli r3, r30, -4672
001670  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001674  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001678  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00167c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001680  9f018fdd  addli r3, r30, -4416
001684  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
001688  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
00168c  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001690  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001694  9f010fdc  addli r3, r30, -4608
001698  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
00169c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0016a0  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0016a4  9f010fd9  addli r3, r30, -4992
0016a8  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0016ac  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0016b0  00a00000  mfence { lm }
0016b4  e3810900  loadli.w r3,  0(r19)
0016b8  e3c20900  loadli.w r5,  4(r19)
0016bc  e3831900  loadli.w r7,  8(r19)
0016c0  e3c51900  loadli.w r11,  12(r19)
0016c4  8f810100  exp.f.rn r3, r3
0016c8  8f820200  exp.f.rn r5, r5
0016cc  8f830300  exp.f.rn r7, r7
0016d0  8f850500  exp.f.rn r11, r11
0016d4  67803900  storeli.w r3, 0(r19)
0016d8  67c05900  storeli.w r5, 4(r19)
0016dc  e7807900  storeli.w r7, 8(r19)
0016e0  e7c0b900  storeli.w r11, 12(r19)
0016e4  e3812900  loadli.w r3,  16(r19)
0016e8  e3c22900  loadli.w r5,  20(r19)
0016ec  e3833900  loadli.w r7,  24(r19)
0016f0  e3c53900  loadli.w r11,  28(r19)
0016f4  8f810100  exp.f.rn r3, r3
0016f8  8f820200  exp.f.rn r5, r5
0016fc  8f830300  exp.f.rn r7, r7
001700  8f850500  exp.f.rn r11, r11
001704  67813900  storeli.w r3, 16(r19)
001708  67c15900  storeli.w r5, 20(r19)
00170c  e7817900  storeli.w r7, 24(r19)
001710  e7c1b900  storeli.w r11, 28(r19)
001714  e3814900  loadli.w r3,  32(r19)
001718  e3c24900  loadli.w r5,  36(r19)
00171c  e3835900  loadli.w r7,  40(r19)
001720  e3c55900  loadli.w r11,  44(r19)
001724  8f810100  exp.f.rn r3, r3
001728  8f820200  exp.f.rn r5, r5
00172c  8f830300  exp.f.rn r7, r7
001730  8f850500  exp.f.rn r11, r11
001734  67823900  storeli.w r3, 32(r19)
001738  67c25900  storeli.w r5, 36(r19)
00173c  e7827900  storeli.w r7, 40(r19)
001740  e7c2b900  storeli.w r11, 44(r19)
001744  e3816900  loadli.w r3,  48(r19)
001748  e3c26900  loadli.w r5,  52(r19)
00174c  e3837900  loadli.w r7,  56(r19)
001750  e3c57900  loadli.w r11,  60(r19)
001754  8f810100  exp.f.rn r3, r3
001758  8f820200  exp.f.rn r5, r5
00175c  8f830300  exp.f.rn r7, r7
001760  8f850500  exp.f.rn r11, r11
001764  67833900  storeli.w r3, 48(r19)
001768  67c35900  storeli.w r5, 52(r19)
00176c  e7837900  storeli.w r7, 56(r19)
001770  e7c3b900  storeli.w r11, 60(r19)
001774  e3818900  loadli.w r3,  64(r19)
001778  e3c28900  loadli.w r5,  68(r19)
00177c  e3839900  loadli.w r7,  72(r19)
001780  e3c59900  loadli.w r11,  76(r19)
001784  8f810100  exp.f.rn r3, r3
001788  8f820200  exp.f.rn r5, r5
00178c  8f830300  exp.f.rn r7, r7
001790  8f850500  exp.f.rn r11, r11
001794  67843900  storeli.w r3, 64(r19)
001798  67c45900  storeli.w r5, 68(r19)
00179c  e7847900  storeli.w r7, 72(r19)
0017a0  e7c4b900  storeli.w r11, 76(r19)
0017a4  e381a900  loadli.w r3,  80(r19)
0017a8  e3c2a900  loadli.w r5,  84(r19)
0017ac  e383b900  loadli.w r7,  88(r19)
0017b0  e3c5b900  loadli.w r11,  92(r19)
0017b4  8f810100  exp.f.rn r3, r3
0017b8  8f820200  exp.f.rn r5, r5
0017bc  8f830300  exp.f.rn r7, r7
0017c0  8f850500  exp.f.rn r11, r11
0017c4  67853900  storeli.w r3, 80(r19)
0017c8  67c55900  storeli.w r5, 84(r19)
0017cc  e7857900  storeli.w r7, 88(r19)
0017d0  e7c5b900  storeli.w r11, 92(r19)
0017d4  e381c900  loadli.w r3,  96(r19)
0017d8  e3c2c900  loadli.w r5,  100(r19)
0017dc  e383d900  loadli.w r7,  104(r19)
0017e0  e3c5d900  loadli.w r11,  108(r19)
0017e4  8f810100  exp.f.rn r3, r3
0017e8  8f820200  exp.f.rn r5, r5
0017ec  8f830300  exp.f.rn r7, r7
0017f0  8f850500  exp.f.rn r11, r11
0017f4  67863900  storeli.w r3, 96(r19)
0017f8  67c65900  storeli.w r5, 100(r19)
0017fc  e7867900  storeli.w r7, 104(r19)
001800  e7c6b900  storeli.w r11, 108(r19)
001804  e381e900  loadli.w r3,  112(r19)
001808  e3c2e900  loadli.w r5,  116(r19)
00180c  e383f900  loadli.w r7,  120(r19)
001810  e3c5f900  loadli.w r11,  124(r19)
001814  8f810100  exp.f.rn r3, r3
001818  8f820200  exp.f.rn r5, r5
00181c  8f830300  exp.f.rn r7, r7
001820  8f850500  exp.f.rn r11, r11
001824  67873900  storeli.w r3, 112(r19)
001828  67c75900  storeli.w r5, 116(r19)
00182c  e7877900  storeli.w r7, 120(r19)
001830  e7c7b900  storeli.w r11, 124(r19)
001834  e3810901  loadli.w r3,  128(r19)
001838  e3c20901  loadli.w r5,  132(r19)
00183c  e3831901  loadli.w r7,  136(r19)
001840  e3c51901  loadli.w r11,  140(r19)
001844  8f810100  exp.f.rn r3, r3
001848  8f820200  exp.f.rn r5, r5
00184c  8f830300  exp.f.rn r7, r7
001850  8f850500  exp.f.rn r11, r11
001854  67883900  storeli.w r3, 128(r19)
001858  67c85900  storeli.w r5, 132(r19)
00185c  e7887900  storeli.w r7, 136(r19)
001860  e7c8b900  storeli.w r11, 140(r19)
001864  e3812901  loadli.w r3,  144(r19)
001868  e3c22901  loadli.w r5,  148(r19)
00186c  e3833901  loadli.w r7,  152(r19)
001870  e3c53901  loadli.w r11,  156(r19)
001874  8f810100  exp.f.rn r3, r3
001878  8f820200  exp.f.rn r5, r5
00187c  8f830300  exp.f.rn r7, r7
001880  8f850500  exp.f.rn r11, r11
001884  67893900  storeli.w r3, 144(r19)
001888  67c95900  storeli.w r5, 148(r19)
00188c  e7897900  storeli.w r7, 152(r19)
001890  e7c9b900  storeli.w r11, 156(r19)
001894  e3814901  loadli.w r3,  160(r19)
001898  e3c24901  loadli.w r5,  164(r19)
00189c  e3835901  loadli.w r7,  168(r19)
0018a0  e3c55901  loadli.w r11,  172(r19)
0018a4  8f810100  exp.f.rn r3, r3
0018a8  8f820200  exp.f.rn r5, r5
0018ac  8f830300  exp.f.rn r7, r7
0018b0  8f850500  exp.f.rn r11, r11
0018b4  678a3900  storeli.w r3, 160(r19)
0018b8  67ca5900  storeli.w r5, 164(r19)
0018bc  e78a7900  storeli.w r7, 168(r19)
0018c0  e7cab900  storeli.w r11, 172(r19)
0018c4  e3816901  loadli.w r3,  176(r19)
0018c8  e3c26901  loadli.w r5,  180(r19)
0018cc  e3837901  loadli.w r7,  184(r19)
0018d0  e3c57901  loadli.w r11,  188(r19)
0018d4  8f810100  exp.f.rn r3, r3
0018d8  8f820200  exp.f.rn r5, r5
0018dc  8f830300  exp.f.rn r7, r7
0018e0  8f850500  exp.f.rn r11, r11
0018e4  678b3900  storeli.w r3, 176(r19)
0018e8  67cb5900  storeli.w r5, 180(r19)
0018ec  e78b7900  storeli.w r7, 184(r19)
0018f0  e7cbb900  storeli.w r11, 188(r19)
0018f4  e3818901  loadli.w r3,  192(r19)
0018f8  e3c28901  loadli.w r5,  196(r19)
0018fc  e3839901  loadli.w r7,  200(r19)
001900  e3c59901  loadli.w r11,  204(r19)
001904  8f810100  exp.f.rn r3, r3
001908  8f820200  exp.f.rn r5, r5
00190c  8f830300  exp.f.rn r7, r7
001910  8f850500  exp.f.rn r11, r11
001914  678c3900  storeli.w r3, 192(r19)
001918  67cc5900  storeli.w r5, 196(r19)
00191c  e78c7900  storeli.w r7, 200(r19)
001920  e7ccb900  storeli.w r11, 204(r19)
001924  e381a901  loadli.w r3,  208(r19)
001928  e3c2a901  loadli.w r5,  212(r19)
00192c  e383b901  loadli.w r7,  216(r19)
001930  e3c5b901  loadli.w r11,  220(r19)
001934  8f810100  exp.f.rn r3, r3
001938  8f820200  exp.f.rn r5, r5
00193c  8f830300  exp.f.rn r7, r7
001940  8f850500  exp.f.rn r11, r11
001944  678d3900  storeli.w r3, 208(r19)
001948  67cd5900  storeli.w r5, 212(r19)
00194c  e78d7900  storeli.w r7, 216(r19)
001950  e7cdb900  storeli.w r11, 220(r19)
001954  e381c901  loadli.w r3,  224(r19)
001958  e3c2c901  loadli.w r5,  228(r19)
00195c  e383d901  loadli.w r7,  232(r19)
001960  e3c5d901  loadli.w r11,  236(r19)
001964  8f810100  exp.f.rn r3, r3
001968  8f820200  exp.f.rn r5, r5
00196c  8f830300  exp.f.rn r7, r7
001970  8f850500  exp.f.rn r11, r11
001974  678e3900  storeli.w r3, 224(r19)
001978  67ce5900  storeli.w r5, 228(r19)
00197c  e78e7900  storeli.w r7, 232(r19)
001980  e7ceb900  storeli.w r11, 236(r19)
001984  e381e901  loadli.w r3,  240(r19)
001988  e3c2e901  loadli.w r5,  244(r19)
00198c  e383f901  loadli.w r7,  248(r19)
001990  e3c5f901  loadli.w r11,  252(r19)
001994  8f810100  exp.f.rn r3, r3
001998  8f820200  exp.f.rn r5, r5
00199c  8f830300  exp.f.rn r7, r7
0019a0  8f850500  exp.f.rn r11, r11
0019a4  678f3900  storeli.w r3, 240(r19)
0019a8  67cf5900  storeli.w r5, 244(r19)
0019ac  e78f7900  storeli.w r7, 248(r19)
0019b0  e7cfb900  storeli.w r11, 252(r19)
0019b4  00a00000  mfence { lm }
0019b8  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
0019bc  9f018fdd  addli r3, r30, -4416
0019c0  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0019c4  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0019c8  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
0019cc  9f010fd4  addli r3, r30, -5632
0019d0  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
0019d4  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
0019d8  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
0019dc  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0019e0  46905102  vstore_mask16.mz vr5{mr1}, 0(r3)
0019e4  9f010fd1  addli r3, r30, -6016
0019e8  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
0019ec  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0019f0  9f018fda  addli r3, r30, -4800
0019f4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0019f8  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
0019fc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001a00  9f018fd3  addli r3, r30, -5696
001a04  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
001a08  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001a0c  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001a10  9f010fd9  addli r3, r30, -4992
001a14  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001a18  92908002  vadd.f.mz.rn vr1{mr1}, r1, vr8
001a1c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001a20  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
001a24  9f018fd0  addli r3, r30, -6080
001a28  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001a2c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001a30  00a00000  mfence { lm }
001a34  e3810900  loadli.w r3,  0(r19)
001a38  e3c20900  loadli.w r5,  4(r19)
001a3c  e3831900  loadli.w r7,  8(r19)
001a40  e3c51900  loadli.w r11,  12(r19)
001a44  8f810100  exp.f.rn r3, r3
001a48  8f820200  exp.f.rn r5, r5
001a4c  8f830300  exp.f.rn r7, r7
001a50  8f850500  exp.f.rn r11, r11
001a54  67803900  storeli.w r3, 0(r19)
001a58  67c05900  storeli.w r5, 4(r19)
001a5c  e7807900  storeli.w r7, 8(r19)
001a60  e7c0b900  storeli.w r11, 12(r19)
001a64  e3812900  loadli.w r3,  16(r19)
001a68  e3c22900  loadli.w r5,  20(r19)
001a6c  e3833900  loadli.w r7,  24(r19)
001a70  e3c53900  loadli.w r11,  28(r19)
001a74  8f810100  exp.f.rn r3, r3
001a78  8f820200  exp.f.rn r5, r5
001a7c  8f830300  exp.f.rn r7, r7
001a80  8f850500  exp.f.rn r11, r11
001a84  67813900  storeli.w r3, 16(r19)
001a88  67c15900  storeli.w r5, 20(r19)
001a8c  e7817900  storeli.w r7, 24(r19)
001a90  e7c1b900  storeli.w r11, 28(r19)
001a94  e3814900  loadli.w r3,  32(r19)
001a98  e3c24900  loadli.w r5,  36(r19)
001a9c  e3835900  loadli.w r7,  40(r19)
001aa0  e3c55900  loadli.w r11,  44(r19)
001aa4  8f810100  exp.f.rn r3, r3
001aa8  8f820200  exp.f.rn r5, r5
001aac  8f830300  exp.f.rn r7, r7
001ab0  8f850500  exp.f.rn r11, r11
001ab4  67823900  storeli.w r3, 32(r19)
001ab8  67c25900  storeli.w r5, 36(r19)
001abc  e7827900  storeli.w r7, 40(r19)
001ac0  e7c2b900  storeli.w r11, 44(r19)
001ac4  e3816900  loadli.w r3,  48(r19)
001ac8  e3c26900  loadli.w r5,  52(r19)
001acc  e3837900  loadli.w r7,  56(r19)
001ad0  e3c57900  loadli.w r11,  60(r19)
001ad4  8f810100  exp.f.rn r3, r3
001ad8  8f820200  exp.f.rn r5, r5
001adc  8f830300  exp.f.rn r7, r7
001ae0  8f850500  exp.f.rn r11, r11
001ae4  67833900  storeli.w r3, 48(r19)
001ae8  67c35900  storeli.w r5, 52(r19)
001aec  e7837900  storeli.w r7, 56(r19)
001af0  e7c3b900  storeli.w r11, 60(r19)
001af4  e3818900  loadli.w r3,  64(r19)
001af8  e3c28900  loadli.w r5,  68(r19)
001afc  e3839900  loadli.w r7,  72(r19)
001b00  e3c59900  loadli.w r11,  76(r19)
001b04  8f810100  exp.f.rn r3, r3
001b08  8f820200  exp.f.rn r5, r5
001b0c  8f830300  exp.f.rn r7, r7
001b10  8f850500  exp.f.rn r11, r11
001b14  67843900  storeli.w r3, 64(r19)
001b18  67c45900  storeli.w r5, 68(r19)
001b1c  e7847900  storeli.w r7, 72(r19)
001b20  e7c4b900  storeli.w r11, 76(r19)
001b24  e381a900  loadli.w r3,  80(r19)
001b28  e3c2a900  loadli.w r5,  84(r19)
001b2c  e383b900  loadli.w r7,  88(r19)
001b30  e3c5b900  loadli.w r11,  92(r19)
001b34  8f810100  exp.f.rn r3, r3
001b38  8f820200  exp.f.rn r5, r5
001b3c  8f830300  exp.f.rn r7, r7
001b40  8f850500  exp.f.rn r11, r11
001b44  67853900  storeli.w r3, 80(r19)
001b48  67c55900  storeli.w r5, 84(r19)
001b4c  e7857900  storeli.w r7, 88(r19)
001b50  e7c5b900  storeli.w r11, 92(r19)
001b54  e381c900  loadli.w r3,  96(r19)
001b58  e3c2c900  loadli.w r5,  100(r19)
001b5c  e383d900  loadli.w r7,  104(r19)
001b60  e3c5d900  loadli.w r11,  108(r19)
001b64  8f810100  exp.f.rn r3, r3
001b68  8f820200  exp.f.rn r5, r5
001b6c  8f830300  exp.f.rn r7, r7
001b70  8f850500  exp.f.rn r11, r11
001b74  67863900  storeli.w r3, 96(r19)
001b78  67c65900  storeli.w r5, 100(r19)
001b7c  e7867900  storeli.w r7, 104(r19)
001b80  e7c6b900  storeli.w r11, 108(r19)
001b84  e381e900  loadli.w r3,  112(r19)
001b88  e3c2e900  loadli.w r5,  116(r19)
001b8c  e383f900  loadli.w r7,  120(r19)
001b90  e3c5f900  loadli.w r11,  124(r19)
001b94  8f810100  exp.f.rn r3, r3
001b98  8f820200  exp.f.rn r5, r5
001b9c  8f830300  exp.f.rn r7, r7
001ba0  8f850500  exp.f.rn r11, r11
001ba4  67873900  storeli.w r3, 112(r19)
001ba8  67c75900  storeli.w r5, 116(r19)
001bac  e7877900  storeli.w r7, 120(r19)
001bb0  e7c7b900  storeli.w r11, 124(r19)
001bb4  e3810901  loadli.w r3,  128(r19)
001bb8  e3c20901  loadli.w r5,  132(r19)
001bbc  e3831901  loadli.w r7,  136(r19)
001bc0  e3c51901  loadli.w r11,  140(r19)
001bc4  8f810100  exp.f.rn r3, r3
001bc8  8f820200  exp.f.rn r5, r5
001bcc  8f830300  exp.f.rn r7, r7
001bd0  8f850500  exp.f.rn r11, r11
001bd4  67883900  storeli.w r3, 128(r19)
001bd8  67c85900  storeli.w r5, 132(r19)
001bdc  e7887900  storeli.w r7, 136(r19)
001be0  e7c8b900  storeli.w r11, 140(r19)
001be4  e3812901  loadli.w r3,  144(r19)
001be8  e3c22901  loadli.w r5,  148(r19)
001bec  e3833901  loadli.w r7,  152(r19)
001bf0  e3c53901  loadli.w r11,  156(r19)
001bf4  8f810100  exp.f.rn r3, r3
001bf8  8f820200  exp.f.rn r5, r5
001bfc  8f830300  exp.f.rn r7, r7
001c00  8f850500  exp.f.rn r11, r11
001c04  67893900  storeli.w r3, 144(r19)
001c08  67c95900  storeli.w r5, 148(r19)
001c0c  e7897900  storeli.w r7, 152(r19)
001c10  e7c9b900  storeli.w r11, 156(r19)
001c14  e3814901  loadli.w r3,  160(r19)
001c18  e3c24901  loadli.w r5,  164(r19)
001c1c  e3835901  loadli.w r7,  168(r19)
001c20  e3c55901  loadli.w r11,  172(r19)
001c24  8f810100  exp.f.rn r3, r3
001c28  8f820200  exp.f.rn r5, r5
001c2c  8f830300  exp.f.rn r7, r7
001c30  8f850500  exp.f.rn r11, r11
001c34  678a3900  storeli.w r3, 160(r19)
001c38  67ca5900  storeli.w r5, 164(r19)
001c3c  e78a7900  storeli.w r7, 168(r19)
001c40  e7cab900  storeli.w r11, 172(r19)
001c44  e3816901  loadli.w r3,  176(r19)
001c48  e3c26901  loadli.w r5,  180(r19)
001c4c  e3837901  loadli.w r7,  184(r19)
001c50  e3c57901  loadli.w r11,  188(r19)
001c54  8f810100  exp.f.rn r3, r3
001c58  8f820200  exp.f.rn r5, r5
001c5c  8f830300  exp.f.rn r7, r7
001c60  8f850500  exp.f.rn r11, r11
001c64  678b3900  storeli.w r3, 176(r19)
001c68  67cb5900  storeli.w r5, 180(r19)
001c6c  e78b7900  storeli.w r7, 184(r19)
001c70  e7cbb900  storeli.w r11, 188(r19)
001c74  e3818901  loadli.w r3,  192(r19)
001c78  e3c28901  loadli.w r5,  196(r19)
001c7c  e3839901  loadli.w r7,  200(r19)
001c80  e3c59901  loadli.w r11,  204(r19)
001c84  8f810100  exp.f.rn r3, r3
001c88  8f820200  exp.f.rn r5, r5
001c8c  8f830300  exp.f.rn r7, r7
001c90  8f850500  exp.f.rn r11, r11
001c94  678c3900  storeli.w r3, 192(r19)
001c98  67cc5900  storeli.w r5, 196(r19)
001c9c  e78c7900  storeli.w r7, 200(r19)
001ca0  e7ccb900  storeli.w r11, 204(r19)
001ca4  e381a901  loadli.w r3,  208(r19)
001ca8  e3c2a901  loadli.w r5,  212(r19)
001cac  e383b901  loadli.w r7,  216(r19)
001cb0  e3c5b901  loadli.w r11,  220(r19)
001cb4  8f810100  exp.f.rn r3, r3
001cb8  8f820200  exp.f.rn r5, r5
001cbc  8f830300  exp.f.rn r7, r7
001cc0  8f850500  exp.f.rn r11, r11
001cc4  678d3900  storeli.w r3, 208(r19)
001cc8  67cd5900  storeli.w r5, 212(r19)
001ccc  e78d7900  storeli.w r7, 216(r19)
001cd0  e7cdb900  storeli.w r11, 220(r19)
001cd4  e381c901  loadli.w r3,  224(r19)
001cd8  e3c2c901  loadli.w r5,  228(r19)
001cdc  e383d901  loadli.w r7,  232(r19)
001ce0  e3c5d901  loadli.w r11,  236(r19)
001ce4  8f810100  exp.f.rn r3, r3
001ce8  8f820200  exp.f.rn r5, r5
001cec  8f830300  exp.f.rn r7, r7
001cf0  8f850500  exp.f.rn r11, r11
001cf4  678e3900  storeli.w r3, 224(r19)
001cf8  67ce5900  storeli.w r5, 228(r19)
001cfc  e78e7900  storeli.w r7, 232(r19)
001d00  e7ceb900  storeli.w r11, 236(r19)
001d04  e381e901  loadli.w r3,  240(r19)
001d08  e3c2e901  loadli.w r5,  244(r19)
001d0c  e383f901  loadli.w r7,  248(r19)
001d10  e3c5f901  loadli.w r11,  252(r19)
001d14  8f810100  exp.f.rn r3, r3
001d18  8f820200  exp.f.rn r5, r5
001d1c  8f830300  exp.f.rn r7, r7
001d20  8f850500  exp.f.rn r11, r11
001d24  678f3900  storeli.w r3, 240(r19)
001d28  67cf5900  storeli.w r5, 244(r19)
001d2c  e78f7900  storeli.w r7, 248(r19)
001d30  e7cfb900  storeli.w r11, 252(r19)
001d34  00a00000  mfence { lm }
001d38  c2130fe2  vload_mask16.mz vr7{mr1}, 1792(r30)
001d3c  9f018fda  addli r3, r30, -4800
001d40  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d44  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001d48  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
001d4c  9f018fcf  addli r3, r30, -6208
001d50  c2148fe2  vload_mask16.mz vr9{mr1}, 1856(r30)
001d54  42140fe3  vload_mask16.mz vr8{mr1}, 1920(r30)
001d58  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
001d5c  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001d60  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001d64  9f010fd7  addli r3, r30, -5248
001d68  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d6c  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001d70  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
001d74  92902002  vadd.f.mz.rn vr1{mr1}, r1, vr2
001d78  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001d7c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001d80  9f010fd2  addli r3, r30, -5888
001d84  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001d88  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001d8c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
001d90  00a00000  mfence { lm }
001d94  e3810900  loadli.w r3,  0(r19)
001d98  e3c20900  loadli.w r5,  4(r19)
001d9c  e3831900  loadli.w r7,  8(r19)
001da0  e3c51900  loadli.w r11,  12(r19)
001da4  8f810100  exp.f.rn r3, r3
001da8  8f820200  exp.f.rn r5, r5
001dac  8f830300  exp.f.rn r7, r7
001db0  8f850500  exp.f.rn r11, r11
001db4  67803900  storeli.w r3, 0(r19)
001db8  67c05900  storeli.w r5, 4(r19)
001dbc  e7807900  storeli.w r7, 8(r19)
001dc0  e7c0b900  storeli.w r11, 12(r19)
001dc4  e3812900  loadli.w r3,  16(r19)
001dc8  e3c22900  loadli.w r5,  20(r19)
001dcc  e3833900  loadli.w r7,  24(r19)
001dd0  e3c53900  loadli.w r11,  28(r19)
001dd4  8f810100  exp.f.rn r3, r3
001dd8  8f820200  exp.f.rn r5, r5
001ddc  8f830300  exp.f.rn r7, r7
001de0  8f850500  exp.f.rn r11, r11
001de4  67813900  storeli.w r3, 16(r19)
001de8  67c15900  storeli.w r5, 20(r19)
001dec  e7817900  storeli.w r7, 24(r19)
001df0  e7c1b900  storeli.w r11, 28(r19)
001df4  e3814900  loadli.w r3,  32(r19)
001df8  e3c24900  loadli.w r5,  36(r19)
001dfc  e3835900  loadli.w r7,  40(r19)
001e00  e3c55900  loadli.w r11,  44(r19)
001e04  8f810100  exp.f.rn r3, r3
001e08  8f820200  exp.f.rn r5, r5
001e0c  8f830300  exp.f.rn r7, r7
001e10  8f850500  exp.f.rn r11, r11
001e14  67823900  storeli.w r3, 32(r19)
001e18  67c25900  storeli.w r5, 36(r19)
001e1c  e7827900  storeli.w r7, 40(r19)
001e20  e7c2b900  storeli.w r11, 44(r19)
001e24  e3816900  loadli.w r3,  48(r19)
001e28  e3c26900  loadli.w r5,  52(r19)
001e2c  e3837900  loadli.w r7,  56(r19)
001e30  e3c57900  loadli.w r11,  60(r19)
001e34  8f810100  exp.f.rn r3, r3
001e38  8f820200  exp.f.rn r5, r5
001e3c  8f830300  exp.f.rn r7, r7
001e40  8f850500  exp.f.rn r11, r11
001e44  67833900  storeli.w r3, 48(r19)
001e48  67c35900  storeli.w r5, 52(r19)
001e4c  e7837900  storeli.w r7, 56(r19)
001e50  e7c3b900  storeli.w r11, 60(r19)
001e54  e3818900  loadli.w r3,  64(r19)
001e58  e3c28900  loadli.w r5,  68(r19)
001e5c  e3839900  loadli.w r7,  72(r19)
001e60  e3c59900  loadli.w r11,  76(r19)
001e64  8f810100  exp.f.rn r3, r3
001e68  8f820200  exp.f.rn r5, r5
001e6c  8f830300  exp.f.rn r7, r7
001e70  8f850500  exp.f.rn r11, r11
001e74  67843900  storeli.w r3, 64(r19)
001e78  67c45900  storeli.w r5, 68(r19)
001e7c  e7847900  storeli.w r7, 72(r19)
001e80  e7c4b900  storeli.w r11, 76(r19)
001e84  e381a900  loadli.w r3,  80(r19)
001e88  e3c2a900  loadli.w r5,  84(r19)
001e8c  e383b900  loadli.w r7,  88(r19)
001e90  e3c5b900  loadli.w r11,  92(r19)
001e94  8f810100  exp.f.rn r3, r3
001e98  8f820200  exp.f.rn r5, r5
001e9c  8f830300  exp.f.rn r7, r7
001ea0  8f850500  exp.f.rn r11, r11
001ea4  67853900  storeli.w r3, 80(r19)
001ea8  67c55900  storeli.w r5, 84(r19)
001eac  e7857900  storeli.w r7, 88(r19)
001eb0  e7c5b900  storeli.w r11, 92(r19)
001eb4  e381c900  loadli.w r3,  96(r19)
001eb8  e3c2c900  loadli.w r5,  100(r19)
001ebc  e383d900  loadli.w r7,  104(r19)
001ec0  e3c5d900  loadli.w r11,  108(r19)
001ec4  8f810100  exp.f.rn r3, r3
001ec8  8f820200  exp.f.rn r5, r5
001ecc  8f830300  exp.f.rn r7, r7
001ed0  8f850500  exp.f.rn r11, r11
001ed4  67863900  storeli.w r3, 96(r19)
001ed8  67c65900  storeli.w r5, 100(r19)
001edc  e7867900  storeli.w r7, 104(r19)
001ee0  e7c6b900  storeli.w r11, 108(r19)
001ee4  e381e900  loadli.w r3,  112(r19)
001ee8  e3c2e900  loadli.w r5,  116(r19)
001eec  e383f900  loadli.w r7,  120(r19)
001ef0  e3c5f900  loadli.w r11,  124(r19)
001ef4  8f810100  exp.f.rn r3, r3
001ef8  8f820200  exp.f.rn r5, r5
001efc  8f830300  exp.f.rn r7, r7
001f00  8f850500  exp.f.rn r11, r11
001f04  67873900  storeli.w r3, 112(r19)
001f08  67c75900  storeli.w r5, 116(r19)
001f0c  e7877900  storeli.w r7, 120(r19)
001f10  e7c7b900  storeli.w r11, 124(r19)
001f14  e3810901  loadli.w r3,  128(r19)
001f18  e3c20901  loadli.w r5,  132(r19)
001f1c  e3831901  loadli.w r7,  136(r19)
001f20  e3c51901  loadli.w r11,  140(r19)
001f24  8f810100  exp.f.rn r3, r3
001f28  8f820200  exp.f.rn r5, r5
001f2c  8f830300  exp.f.rn r7, r7
001f30  8f850500  exp.f.rn r11, r11
001f34  67883900  storeli.w r3, 128(r19)
001f38  67c85900  storeli.w r5, 132(r19)
001f3c  e7887900  storeli.w r7, 136(r19)
001f40  e7c8b900  storeli.w r11, 140(r19)
001f44  e3812901  loadli.w r3,  144(r19)
001f48  e3c22901  loadli.w r5,  148(r19)
001f4c  e3833901  loadli.w r7,  152(r19)
001f50  e3c53901  loadli.w r11,  156(r19)
001f54  8f810100  exp.f.rn r3, r3
001f58  8f820200  exp.f.rn r5, r5
001f5c  8f830300  exp.f.rn r7, r7
001f60  8f850500  exp.f.rn r11, r11
001f64  67893900  storeli.w r3, 144(r19)
001f68  67c95900  storeli.w r5, 148(r19)
001f6c  e7897900  storeli.w r7, 152(r19)
001f70  e7c9b900  storeli.w r11, 156(r19)
001f74  e3814901  loadli.w r3,  160(r19)
001f78  e3c24901  loadli.w r5,  164(r19)
001f7c  e3835901  loadli.w r7,  168(r19)
001f80  e3c55901  loadli.w r11,  172(r19)
001f84  8f810100  exp.f.rn r3, r3
001f88  8f820200  exp.f.rn r5, r5
001f8c  8f830300  exp.f.rn r7, r7
001f90  8f850500  exp.f.rn r11, r11
001f94  678a3900  storeli.w r3, 160(r19)
001f98  67ca5900  storeli.w r5, 164(r19)
001f9c  e78a7900  storeli.w r7, 168(r19)
001fa0  e7cab900  storeli.w r11, 172(r19)
001fa4  e3816901  loadli.w r3,  176(r19)
001fa8  e3c26901  loadli.w r5,  180(r19)
001fac  e3837901  loadli.w r7,  184(r19)
001fb0  e3c57901  loadli.w r11,  188(r19)
001fb4  8f810100  exp.f.rn r3, r3
001fb8  8f820200  exp.f.rn r5, r5
001fbc  8f830300  exp.f.rn r7, r7
001fc0  8f850500  exp.f.rn r11, r11
001fc4  678b3900  storeli.w r3, 176(r19)
001fc8  67cb5900  storeli.w r5, 180(r19)
001fcc  e78b7900  storeli.w r7, 184(r19)
001fd0  e7cbb900  storeli.w r11, 188(r19)
001fd4  e3818901  loadli.w r3,  192(r19)
001fd8  e3c28901  loadli.w r5,  196(r19)
001fdc  e3839901  loadli.w r7,  200(r19)
001fe0  e3c59901  loadli.w r11,  204(r19)
001fe4  8f810100  exp.f.rn r3, r3
001fe8  8f820200  exp.f.rn r5, r5
001fec  8f830300  exp.f.rn r7, r7
001ff0  8f850500  exp.f.rn r11, r11
001ff4  678c3900  storeli.w r3, 192(r19)
001ff8  67cc5900  storeli.w r5, 196(r19)
001ffc  e78c7900  storeli.w r7, 200(r19)
002000  e7ccb900  storeli.w r11, 204(r19)
002004  e381a901  loadli.w r3,  208(r19)
002008  e3c2a901  loadli.w r5,  212(r19)
00200c  e383b901  loadli.w r7,  216(r19)
002010  e3c5b901  loadli.w r11,  220(r19)
002014  8f810100  exp.f.rn r3, r3
002018  8f820200  exp.f.rn r5, r5
00201c  8f830300  exp.f.rn r7, r7
002020  8f850500  exp.f.rn r11, r11
002024  678d3900  storeli.w r3, 208(r19)
002028  67cd5900  storeli.w r5, 212(r19)
00202c  e78d7900  storeli.w r7, 216(r19)
002030  e7cdb900  storeli.w r11, 220(r19)
002034  e381c901  loadli.w r3,  224(r19)
002038  e3c2c901  loadli.w r5,  228(r19)
00203c  e383d901  loadli.w r7,  232(r19)
002040  e3c5d901  loadli.w r11,  236(r19)
002044  8f810100  exp.f.rn r3, r3
002048  8f820200  exp.f.rn r5, r5
00204c  8f830300  exp.f.rn r7, r7
002050  8f850500  exp.f.rn r11, r11
002054  678e3900  storeli.w r3, 224(r19)
002058  67ce5900  storeli.w r5, 228(r19)
00205c  e78e7900  storeli.w r7, 232(r19)
002060  e7ceb900  storeli.w r11, 236(r19)
002064  e381e901  loadli.w r3,  240(r19)
002068  e3c2e901  loadli.w r5,  244(r19)
00206c  e383f901  loadli.w r7,  248(r19)
002070  e3c5f901  loadli.w r11,  252(r19)
002074  8f810100  exp.f.rn r3, r3
002078  8f820200  exp.f.rn r5, r5
00207c  8f830300  exp.f.rn r7, r7
002080  8f850500  exp.f.rn r11, r11
002084  678f3900  storeli.w r3, 240(r19)
002088  67cf5900  storeli.w r5, 244(r19)
00208c  e78f7900  storeli.w r7, 248(r19)
002090  e7cfb900  storeli.w r11, 252(r19)
002094  00a00000  mfence { lm }
002098  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
00209c  c2110fe2  vload_mask16.mz vr3{mr1}, 1792(r30)
0020a0  9f010fd7  addli r3, r30, -5248
0020a4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0020a8  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
0020ac  9f018fd1  addli r3, r30, -5952
0020b0  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
0020b4  c2150fe3  vload_mask16.mz vr11{mr1}, 1920(r30)
0020b8  42158fe3  vload_mask16.mz vr10{mr1}, 1984(r30)
0020bc  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0020c0  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0020c4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0020c8  9f018fd2  addli r3, r30, -5824
0020cc  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0020d0  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
0020d4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0020d8  9f010fd3  addli r3, r30, -5760
0020dc  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0020e0  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
0020e4  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0020e8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0020ec  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0020f0  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0020f4  00a00000  mfence { lm }
0020f8  e3800900  loadli.w r1,  0(r19)
0020fc  e3c10900  loadli.w r3,  4(r19)
002100  e3821900  loadli.w r5,  8(r19)
002104  e3c31900  loadli.w r7,  12(r19)
002108  8f800000  exp.f.rn r1, r1
00210c  8f810100  exp.f.rn r3, r3
002110  8f820200  exp.f.rn r5, r5
002114  8f830300  exp.f.rn r7, r7
002118  67801900  storeli.w r1, 0(r19)
00211c  67c03900  storeli.w r3, 4(r19)
002120  e7805900  storeli.w r5, 8(r19)
002124  e7c07900  storeli.w r7, 12(r19)
002128  e3802900  loadli.w r1,  16(r19)
00212c  e3c12900  loadli.w r3,  20(r19)
002130  e3823900  loadli.w r5,  24(r19)
002134  e3c33900  loadli.w r7,  28(r19)
002138  8f800000  exp.f.rn r1, r1
00213c  8f810100  exp.f.rn r3, r3
002140  8f820200  exp.f.rn r5, r5
002144  8f830300  exp.f.rn r7, r7
002148  67811900  storeli.w r1, 16(r19)
00214c  67c13900  storeli.w r3, 20(r19)
002150  e7815900  storeli.w r5, 24(r19)
002154  e7c17900  storeli.w r7, 28(r19)
002158  e3804900  loadli.w r1,  32(r19)
00215c  e3c14900  loadli.w r3,  36(r19)
002160  e3825900  loadli.w r5,  40(r19)
002164  e3c35900  loadli.w r7,  44(r19)
002168  8f800000  exp.f.rn r1, r1
00216c  8f810100  exp.f.rn r3, r3
002170  8f820200  exp.f.rn r5, r5
002174  8f830300  exp.f.rn r7, r7
002178  67821900  storeli.w r1, 32(r19)
00217c  67c23900  storeli.w r3, 36(r19)
002180  e7825900  storeli.w r5, 40(r19)
002184  e7c27900  storeli.w r7, 44(r19)
002188  e3806900  loadli.w r1,  48(r19)
00218c  e3c16900  loadli.w r3,  52(r19)
002190  e3827900  loadli.w r5,  56(r19)
002194  e3c37900  loadli.w r7,  60(r19)
002198  8f800000  exp.f.rn r1, r1
00219c  8f810100  exp.f.rn r3, r3
0021a0  8f820200  exp.f.rn r5, r5
0021a4  8f830300  exp.f.rn r7, r7
0021a8  67831900  storeli.w r1, 48(r19)
0021ac  67c33900  storeli.w r3, 52(r19)
0021b0  e7835900  storeli.w r5, 56(r19)
0021b4  e7c37900  storeli.w r7, 60(r19)
0021b8  e3808900  loadli.w r1,  64(r19)
0021bc  e3c18900  loadli.w r3,  68(r19)
0021c0  e3829900  loadli.w r5,  72(r19)
0021c4  e3c39900  loadli.w r7,  76(r19)
0021c8  8f800000  exp.f.rn r1, r1
0021cc  8f810100  exp.f.rn r3, r3
0021d0  8f820200  exp.f.rn r5, r5
0021d4  8f830300  exp.f.rn r7, r7
0021d8  67841900  storeli.w r1, 64(r19)
0021dc  67c43900  storeli.w r3, 68(r19)
0021e0  e7845900  storeli.w r5, 72(r19)
0021e4  e7c47900  storeli.w r7, 76(r19)
0021e8  e380a900  loadli.w r1,  80(r19)
0021ec  e3c1a900  loadli.w r3,  84(r19)
0021f0  e382b900  loadli.w r5,  88(r19)
0021f4  e3c3b900  loadli.w r7,  92(r19)
0021f8  8f800000  exp.f.rn r1, r1
0021fc  8f810100  exp.f.rn r3, r3
002200  8f820200  exp.f.rn r5, r5
002204  8f830300  exp.f.rn r7, r7
002208  67851900  storeli.w r1, 80(r19)
00220c  67c53900  storeli.w r3, 84(r19)
002210  e7855900  storeli.w r5, 88(r19)
002214  e7c57900  storeli.w r7, 92(r19)
002218  e380c900  loadli.w r1,  96(r19)
00221c  e3c1c900  loadli.w r3,  100(r19)
002220  e382d900  loadli.w r5,  104(r19)
002224  e3c3d900  loadli.w r7,  108(r19)
002228  8f800000  exp.f.rn r1, r1
00222c  8f810100  exp.f.rn r3, r3
002230  8f820200  exp.f.rn r5, r5
002234  8f830300  exp.f.rn r7, r7
002238  67861900  storeli.w r1, 96(r19)
00223c  67c63900  storeli.w r3, 100(r19)
002240  e7865900  storeli.w r5, 104(r19)
002244  e7c67900  storeli.w r7, 108(r19)
002248  e380e900  loadli.w r1,  112(r19)
00224c  e3c1e900  loadli.w r3,  116(r19)
002250  e382f900  loadli.w r5,  120(r19)
002254  e3c3f900  loadli.w r7,  124(r19)
002258  8f800000  exp.f.rn r1, r1
00225c  8f810100  exp.f.rn r3, r3
002260  8f820200  exp.f.rn r5, r5
002264  8f830300  exp.f.rn r7, r7
002268  67871900  storeli.w r1, 112(r19)
00226c  67c73900  storeli.w r3, 116(r19)
002270  e7875900  storeli.w r5, 120(r19)
002274  e7c77900  storeli.w r7, 124(r19)
002278  e3800901  loadli.w r1,  128(r19)
00227c  e3c10901  loadli.w r3,  132(r19)
002280  e3821901  loadli.w r5,  136(r19)
002284  e3c31901  loadli.w r7,  140(r19)
002288  8f800000  exp.f.rn r1, r1
00228c  8f810100  exp.f.rn r3, r3
002290  8f820200  exp.f.rn r5, r5
002294  8f830300  exp.f.rn r7, r7
002298  67881900  storeli.w r1, 128(r19)
00229c  67c83900  storeli.w r3, 132(r19)
0022a0  e7885900  storeli.w r5, 136(r19)
0022a4  e7c87900  storeli.w r7, 140(r19)
0022a8  e3802901  loadli.w r1,  144(r19)
0022ac  e3c12901  loadli.w r3,  148(r19)
0022b0  e3823901  loadli.w r5,  152(r19)
0022b4  e3c33901  loadli.w r7,  156(r19)
0022b8  8f800000  exp.f.rn r1, r1
0022bc  8f810100  exp.f.rn r3, r3
0022c0  8f820200  exp.f.rn r5, r5
0022c4  8f830300  exp.f.rn r7, r7
0022c8  67891900  storeli.w r1, 144(r19)
0022cc  67c93900  storeli.w r3, 148(r19)
0022d0  e7895900  storeli.w r5, 152(r19)
0022d4  e7c97900  storeli.w r7, 156(r19)
0022d8  e3804901  loadli.w r1,  160(r19)
0022dc  e3c14901  loadli.w r3,  164(r19)
0022e0  e3825901  loadli.w r5,  168(r19)
0022e4  e3c35901  loadli.w r7,  172(r19)
0022e8  8f800000  exp.f.rn r1, r1
0022ec  8f810100  exp.f.rn r3, r3
0022f0  8f820200  exp.f.rn r5, r5
0022f4  8f830300  exp.f.rn r7, r7
0022f8  678a1900  storeli.w r1, 160(r19)
0022fc  67ca3900  storeli.w r3, 164(r19)
002300  e78a5900  storeli.w r5, 168(r19)
002304  e7ca7900  storeli.w r7, 172(r19)
002308  e3806901  loadli.w r1,  176(r19)
00230c  e3c16901  loadli.w r3,  180(r19)
002310  e3827901  loadli.w r5,  184(r19)
002314  e3c37901  loadli.w r7,  188(r19)
002318  8f800000  exp.f.rn r1, r1
00231c  8f810100  exp.f.rn r3, r3
002320  8f820200  exp.f.rn r5, r5
002324  8f830300  exp.f.rn r7, r7
002328  678b1900  storeli.w r1, 176(r19)
00232c  67cb3900  storeli.w r3, 180(r19)
002330  e78b5900  storeli.w r5, 184(r19)
002334  e7cb7900  storeli.w r7, 188(r19)
002338  e3808901  loadli.w r1,  192(r19)
00233c  e3c18901  loadli.w r3,  196(r19)
002340  e3829901  loadli.w r5,  200(r19)
002344  e3c39901  loadli.w r7,  204(r19)
002348  8f800000  exp.f.rn r1, r1
00234c  8f810100  exp.f.rn r3, r3
002350  8f820200  exp.f.rn r5, r5
002354  8f830300  exp.f.rn r7, r7
002358  678c1900  storeli.w r1, 192(r19)
00235c  67cc3900  storeli.w r3, 196(r19)
002360  e78c5900  storeli.w r5, 200(r19)
002364  e7cc7900  storeli.w r7, 204(r19)
002368  e380a901  loadli.w r1,  208(r19)
00236c  e3c1a901  loadli.w r3,  212(r19)
002370  e382b901  loadli.w r5,  216(r19)
002374  e3c3b901  loadli.w r7,  220(r19)
002378  8f800000  exp.f.rn r1, r1
00237c  8f810100  exp.f.rn r3, r3
002380  8f820200  exp.f.rn r5, r5
002384  8f830300  exp.f.rn r7, r7
002388  678d1900  storeli.w r1, 208(r19)
00238c  67cd3900  storeli.w r3, 212(r19)
002390  e78d5900  storeli.w r5, 216(r19)
002394  e7cd7900  storeli.w r7, 220(r19)
002398  e380c901  loadli.w r1,  224(r19)
00239c  e3c1c901  loadli.w r3,  228(r19)
0023a0  e382d901  loadli.w r5,  232(r19)
0023a4  e3c3d901  loadli.w r7,  236(r19)
0023a8  8f800000  exp.f.rn r1, r1
0023ac  8f810100  exp.f.rn r3, r3
0023b0  8f820200  exp.f.rn r5, r5
0023b4  8f830300  exp.f.rn r7, r7
0023b8  678e1900  storeli.w r1, 224(r19)
0023bc  67ce3900  storeli.w r3, 228(r19)
0023c0  e78e5900  storeli.w r5, 232(r19)
0023c4  e7ce7900  storeli.w r7, 236(r19)
0023c8  e380e901  loadli.w r1,  240(r19)
0023cc  e3c1e901  loadli.w r3,  244(r19)
0023d0  e382f901  loadli.w r5,  248(r19)
0023d4  e3c3f901  loadli.w r7,  252(r19)
0023d8  8f800000  exp.f.rn r1, r1
0023dc  8f810100  exp.f.rn r3, r3
0023e0  8f820200  exp.f.rn r5, r5
0023e4  8f830300  exp.f.rn r7, r7
0023e8  678f1900  storeli.w r1, 240(r19)
0023ec  67cf3900  storeli.w r3, 244(r19)
0023f0  e78f5900  storeli.w r5, 248(r19)
0023f4  e7cf7900  storeli.w r7, 252(r19)
0023f8  00a00000  mfence { lm }
0023fc  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
002400  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
002404  9610b002  vadd.f.mz.rn vr1{mr1}, vr0, vr11
002408  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
00240c  42118fe2  vload_mask16.mz vr2{mr1}, 1856(r30)
002410  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
002414  c2128fe3  vload_mask16.mz vr5{mr1}, 1984(r30)
002418  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
00241c  96900002  vadd.f.mz.rn vr1{mr1}, vr1, vr0
002420  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
002424  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002428  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
00242c  fa900040  vextracti.f r1, 0(vr1)
002430  fa911040  vextracti.f r3, 1(vr1)
002434  8be03010  add.f.rn r1, r1, r3
002438  fa912040  vextracti.f r3, 2(vr1)
00243c  8be01110  add.f.rn r1, r3, r1
002440  fa913040  vextracti.f r3, 3(vr1)
002444  8be01110  add.f.rn r1, r3, r1
002448  fa914040  vextracti.f r3, 4(vr1)
00244c  8be01110  add.f.rn r1, r3, r1
002450  fa915040  vextracti.f r3, 5(vr1)
002454  8be01110  add.f.rn r1, r3, r1
002458  fa916040  vextracti.f r3, 6(vr1)
00245c  8be01110  add.f.rn r1, r3, r1
002460  fa917040  vextracti.f r3, 7(vr1)
002464  8be01110  add.f.rn r1, r3, r1
002468  fa918040  vextracti.f r3, 8(vr1)
00246c  8be01110  add.f.rn r1, r3, r1
002470  fa919040  vextracti.f r3, 9(vr1)
002474  8be01110  add.f.rn r1, r3, r1
002478  fa91a040  vextracti.f r3, 10(vr1)
00247c  8be01110  add.f.rn r1, r3, r1
002480  fa91b040  vextracti.f r3, 11(vr1)
002484  8be01110  add.f.rn r1, r3, r1
002488  fa91c040  vextracti.f r3, 12(vr1)
00248c  8be01110  add.f.rn r1, r3, r1
002490  fa91d040  vextracti.f r3, 13(vr1)
002494  8be01110  add.f.rn r1, r3, r1
002498  fa91e040  vextracti.f r3, 14(vr1)
00249c  8be01110  add.f.rn r1, r3, r1
0024a0  fa91f040  vextracti.f r3, 15(vr1)
0024a4  8be01110  add.f.rn r1, r3, r1
0024a8  e341ffcd  loadli.w r3,  -6404(r30)
0024ac  73e01100  stores.w r1, 0(r3)
0024b0  00a00300  mfence { lm, sm, gm }
0024b4  80210204  csr_set csr3, r4
0024b8  00d00100  sync_group
0024bc  bb900600  bneq r13, zero, 36
0024c0  ef400500  loads.w r1, 0(r10)
0024c4  ef414500  loads.w r3, 4(r10)
0024c8  ef428500  loads.w r5, 8(r10)
0024cc  8be03010  add.f.rn r1, r1, r3
0024d0  ef41c500  loads.w r3, 12(r10)
0024d4  8be05010  add.f.rn r1, r1, r5
0024d8  8be03010  add.f.rn r1, r1, r3
0024dc  73601500  stores.w r1, 0(r10)
0024e0  00a00300  mfence { lm, sm, gm }
0024e4  80210204  csr_set csr3, r4
0024e8  00d00100  sync_group
0024ec  ef400500  loads.w r1, 0(r10)
0024f0  ab01803f  lui r3, 260096
0024f4  9f230000  addli r7, zero, 2
0024f8  8f801118  div.f.rn r1, r3, r1
0024fc  9f018fd5  addli r3, r30, -5440
002500  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
002504  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002508  9f010fee  addli r3, r30, -2304
00250c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002510  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002514  9f010fd6  addli r3, r30, -5376
002518  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00251c  9f018fee  addli r3, r30, -2240
002520  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002524  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002528  9f018fd6  addli r3, r30, -5312
00252c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002530  9f010fef  addli r3, r30, -2176
002534  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002538  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00253c  9f018fd8  addli r3, r30, -5056
002540  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002544  9f018fef  addli r3, r30, -2112
002548  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00254c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002550  9f018fd7  addli r3, r30, -5184
002554  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002558  9f010ff0  addli r3, r30, -2048
00255c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002560  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002564  9f010fd5  addli r3, r30, -5504
002568  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00256c  9f018ff0  addli r3, r30, -1984
002570  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002574  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002578  9f018fdc  addli r3, r30, -4544
00257c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002580  9f010ff1  addli r3, r30, -1920
002584  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002588  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00258c  9f010fdd  addli r3, r30, -4480
002590  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002594  9f018ff1  addli r3, r30, -1856
002598  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00259c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025a0  9f018fd9  addli r3, r30, -4928
0025a4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025a8  9f010ff2  addli r3, r30, -1792
0025ac  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025b0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025b4  9f010fd8  addli r3, r30, -5120
0025b8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025bc  9f018ff2  addli r3, r30, -1728
0025c0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025c4  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025c8  9f010fda  addli r3, r30, -4864
0025cc  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025d0  9f010ff3  addli r3, r30, -1664
0025d4  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025d8  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025dc  9f010fdb  addli r3, r30, -4736
0025e0  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025e4  9f018ff3  addli r3, r30, -1600
0025e8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0025ec  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0025f0  9f018fd4  addli r3, r30, -5568
0025f4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0025f8  9f010ff4  addli r3, r30, -1536
0025fc  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002600  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002604  9f018fdb  addli r3, r30, -4672
002608  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00260c  9f018ff4  addli r3, r30, -1472
002610  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002614  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002618  9f010fdc  addli r3, r30, -4608
00261c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002620  9f010ff5  addli r3, r30, -1408
002624  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002628  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00262c  9f018fdd  addli r3, r30, -4416
002630  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002634  9f018ff5  addli r3, r30, -1344
002638  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00263c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002640  9f010fd4  addli r3, r30, -5632
002644  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002648  9f010ff6  addli r3, r30, -1280
00264c  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002650  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002654  9f018fd3  addli r3, r30, -5696
002658  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00265c  9f018ff6  addli r3, r30, -1216
002660  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002664  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002668  9f010fd9  addli r3, r30, -4992
00266c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002670  9f010ff7  addli r3, r30, -1152
002674  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
002678  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00267c  9f018fda  addli r3, r30, -4800
002680  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
002684  9f018ff7  addli r3, r30, -1088
002688  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
00268c  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
002690  8a907002  vmul.f.mz.rn vr1{mr1}, r1, vr7
002694  46101f82  vstore_mask16.mz vr1{mr1}, 1024(r30)
002698  9f010fd7  addli r3, r30, -5248
00269c  8a909002  vmul.f.mz.rn vr1{mr1}, r1, vr9
0026a0  46141f82  vstore_mask16.mz vr1{mr1}, 1088(r30)
0026a4  8a908002  vmul.f.mz.rn vr1{mr1}, r1, vr8
0026a8  46181f82  vstore_mask16.mz vr1{mr1}, 1152(r30)
0026ac  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0026b0  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0026b4  461c1f82  vstore_mask16.mz vr1{mr1}, 1216(r30)
0026b8  8a903002  vmul.f.mz.rn vr1{mr1}, r1, vr3
0026bc  46101fa2  vstore_mask16.mz vr1{mr1}, 1280(r30)
0026c0  8a906002  vmul.f.mz.rn vr1{mr1}, r1, vr6
0026c4  46141fa2  vstore_mask16.mz vr1{mr1}, 1344(r30)
0026c8  8a90b002  vmul.f.mz.rn vr1{mr1}, r1, vr11
0026cc  46181fa2  vstore_mask16.mz vr1{mr1}, 1408(r30)
0026d0  8a90a002  vmul.f.mz.rn vr1{mr1}, r1, vr10
0026d4  461c1fa2  vstore_mask16.mz vr1{mr1}, 1472(r30)
0026d8  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
0026dc  0a902002  vmul.f.mz.rn vr0{mr1}, r1, vr2
0026e0  46140fc2  vstore_mask16.mz vr0{mr1}, 1600(r30)
0026e4  0a904002  vmul.f.mz.rn vr0{mr1}, r1, vr4
0026e8  46180fc2  vstore_mask16.mz vr0{mr1}, 1664(r30)
0026ec  0a905002  vmul.f.mz.rn vr0{mr1}, r1, vr5
0026f0  461c0fc2  vstore_mask16.mz vr0{mr1}, 1728(r30)
0026f4  9f000700  addli r1, r14, 0
0026f8  00a00000  mfence { lm }
0026fc  e3018f00  loadli.w r3,  64(r30)
002700  bf5c31ec  blt.s r2, r3, -9420
002704  9f000000  addli r1, zero, 0
002708  db65fbff  j -9428
00270c  9f0e8fcd  addli sp, r30, -6464
002710  9f8e8e32  addli sp, sp, 6464
002714  00a00300  mfence { lm, sm, gm }
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
