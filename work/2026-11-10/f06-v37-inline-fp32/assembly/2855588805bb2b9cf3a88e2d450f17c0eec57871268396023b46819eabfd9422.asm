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
0000e4  9f8e0edc  addli sp, sp, -4608
0000e8  2b040000  lui r8, 0
0000ec  803b0002  core_id r23
0000f0  1f8f0e23  addli r30, sp, 4480
0000f4  ab600000  lui r1, 6
0000f8  2bf20000  lui r4, 15
0000fc  9bb42b00  slli r9, r23, 2
000100  1f040400  addli r8, r8, 0
000104  1b910001  ori r2, r1, 16
000108  6303cf00  loadli.w r6,  96(r30)
00010c  e340bf00  loadli.w r1,  92(r30)
000110  e341cf00  loadli.w r3,  100(r30)
000114  1b12f2ff  ori r4, r4, 4095
000118  8b129410  add.s r5, r8, r9
00011c  8b101320  mul.s r1, r6, r1
000120  00530002  load_param_i r6, 0
000124  8b932210  add.s r7, r5, r2
000128  9f820240  addli r5, r5, 8192
00012c  8b903020  mul.s r1, r1, r3
000130  e74b7fdc  storeli.w r7, -4420(r30)
000134  73e00300  stores.w zero, 0(r7)
000138  00a00300  mfence { lm, sm, gm }
00013c  80210204  csr_set csr3, r4
000140  00d00100  sync_group
000144  e70b5fdc  storeli.w r5, -4424(r30)
000148  73e00200  stores.w zero, 0(r5)
00014c  00a00300  mfence { lm, sm, gm }
000150  80210204  csr_set csr3, r4
000154  00d00100  sync_group
000158  674b1fdc  storeli.w r1, -4428(r30)
00015c  4ba86012  ble.s r1, r6, 9736
000160  9b873b00  andi r15, r23, 3
000164  6b580f03  load.d r[17:18], 48(r30)
000168  e3005f00  loadli.w r1,  40(r30)
00016c  9f120000  addli r5, zero, 1
000170  6b590f02  load.d r[19:20], 32(r30)
000174  634b1f00  loadli.w r22,  12(r30)
000178  1f050004  addli r10, zero, 512
00017c  6b5c8f01  load.d r[25:26], 24(r30)
000180  e34d8f00  loadli.w r27,  68(r30)
000184  eb550f05  load.d r[12:13], 80(r30)
000188  9f010fee  addli r3, r30, -2304
00018c  9f030001  addli r7, zero, 128
000190  1bba9700  slli r20, r15, 9
000194  b3060a28  zext_int2long r[14:15], r20
000198  8b904019  sub.s r1, r1, r20
00019c  0b1b4b19  sub.s r22, r22, r20
0001a0  0b38d820  mul.sl r[17:18], r[17:18], r[14:15]
0001a4  8b9a0048  max.s r21, r1, zero
0001a8  80d00002  load_param_i r1, 1
0001ac  17385802  sll.d r[17:18], r[17:18], r5
0001b0  670b1fdc  storeli.w r1, -4432(r30)
0001b4  0b280911  add.ul r[17:18], r[19:20], r[17:18]
0001b8  9bc92b00  srli r19, r23, 2
0001bc  abfbffff  lui r23, 1048575
0001c0  0b99aa40  min.s r18, r21, r10
0001c4  9b80f900  andi r1, r19, 15
0001c8  9b990bff  ori r19, r23, 4080
0001cc  1b391900  slli r18, r18, 1
0001d0  97843401  and r9, r9, r19
0001d4  8b190b48  max.s r19, r22, zero
0001d8  e74a1fdc  storeli.w r1, -4436(r30)
0001dc  b38a0028  zext_int2long r[22:23], r1
0001e0  9f004fdd  addli r1, r30, -4448
0001e4  0b149410  add.s r8, r8, r9
0001e8  73b05001  store.d r[22:23], 0(r1)
0001ec  8b94a940  min.s r9, r19, r10
0001f0  8b3adc20  mul.sl r[22:23], r[25:26], r[14:15]
0001f4  9f003fdd  addli r1, r30, -4456
0001f8  73b05001  store.d r[22:23], 0(r1)
0001fc  9bb01400  slli r1, r9, 1
000200  8b944d19  sub.s r9, r27, r20
000204  0b1e2410  add.s r28, r8, r2
000208  9f0d0440  addli r27, r8, 8192
00020c  0b910448  max.s r2, r9, zero
000210  67491fdc  storeli.w r1, -4460(r30)
000214  0bb4d520  mul.sl r[9:10], r[12:13], r[14:15]
000218  9f001fdd  addli r1, r30, -4472
00021c  9f050ff6  addli r11, r30, -1280
000220  0b11a140  min.s r2, r2, r10
000224  2b0500f0  lui r10, 983040
000228  73b08000  store.d r[9:10], 0(r1)
00022c  1716a900  or r12, r18, r10
000230  9b301100  slli r1, r2, 1
000234  1f058000  addli r10, zero, 64
000238  1f090ffe  addli r18, r30, -256
00023c  7f26b800  l_gm2lm r12, r11, 0(r[17:18])
000240  67481fdc  storeli.w r1, -4476(r30)
000244  9f050002  addli r11, zero, 256
000248  1f064000  addli r12, zero, 32
00024c  00a00000  mfence { lm }
000250  5b0a0000  j 80
000254  eb508f04  load.d r[2:3], 72(r30)
000258  9f011fdd  addli r3, r30, -4472
00025c  6bd40100  load.d r[9:10], 0(r3)
000260  ab0100f0  lui r3, 983040
000264  8bb01920  mul.sl r[2:3], r[20:21], r[2:3]
000268  97913800  or r3, r17, r3
00026c  8ba08010  add.ul r[2:3], r[2:3], r[9:10]
000270  6b548f03  load.d r[9:10], 56(r30)
000274  97b05002  sll.d r[2:3], r[2:3], r5
000278  8b201410  add.ul r[2:3], r[9:10], r[2:3]
00027c  1f040fee  addli r8, r30, -2304
000280  ffb18000  s_lm2gm r3, r8, 0(r[2:3])
000284  e3006fdd  loadli.w r1,  -4432(r30)
000288  9f010fee  addli r3, r30, -2304
00028c  00a00000  mfence { lm }
000290  0b131310  add.s r6, r6, r1
000294  e3406fdd  loadli.w r1,  -4428(r30)
000298  3f201300  blt.s r6, r1, 8
00029c  5b990400  j 9416
0002a0  e340cf00  loadli.w r1,  100(r30)
0002a4  0b111330  div.s r2, r6, r1
0002a8  e300cf00  loadli.w r1,  96(r30)
0002ac  0b111130  div.s r2, r2, r1
0002b0  e3405fdd  loadli.w r1,  -4436(r30)
0002b4  00a00000  mfence { lm }
0002b8  e3482fdd  loadli.w r17,  -4460(r30)
0002bc  9b394100  slli r19, r2, 4
0002c0  17911900  or r2, r19, r1
0002c4  e3001f00  loadli.w r1,  8(r30)
0002c8  3f201100  blt.s r2, r1, 8
0002cc  9f080000  addli r17, zero, 0
0002d0  9f004fdd  addli r1, r30, -4448
0002d4  b3990928  sext_int2long r[20:21], r19
0002d8  6bd40000  load.d r[9:10], 0(r1)
0002dc  9f003fdd  addli r1, r30, -4456
0002e0  97998902  or.d r[20:21], r[20:21], r[9:10]
0002e4  6b540f01  load.d r[9:10], 16(r30)
0002e8  0bbb8920  mul.sl r[23:24], r[20:21], r[9:10]
0002ec  6bd40000  load.d r[9:10], 0(r1)
0002f0  ab0000f0  lui r1, 983040
0002f4  97901800  or r1, r17, r1
0002f8  0b2b8b10  add.ul r[23:24], r[23:24], r[9:10]
0002fc  6b540f00  load.d r[9:10], 0(r30)
000300  173b5b02  sll.d r[23:24], r[23:24], r5
000304  0b2b6411  add.ul r[23:24], r[9:10], r[23:24]
000308  ff203b00  l_gm2lm r1, r3, 0(r[23:24])
00030c  9f000fee  addli r1, r30, -2304
000310  00a00000  mfence { lm }
000314  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000318  9f008fee  addli r1, r30, -2240
00031c  86330000  vfp162float_l.rn vr7, vr0
000320  06750000  vfp162float_h.rn vr10, vr0
000324  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000328  9f000fef  addli r1, r30, -2176
00032c  06b10100  vfp162float_l.rn vr2, vr3
000330  86f20100  vfp162float_h.rn vr5, vr3
000334  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000338  9f008fef  addli r1, r30, -2112
00033c  06330200  vfp162float_l.rn vr6, vr4
000340  86710200  vfp162float_h.rn vr3, vr4
000344  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000348  9f000ff6  addli r1, r30, -1280
00034c  06320400  vfp162float_l.rn vr4, vr8
000350  86740400  vfp162float_h.rn vr9, vr8
000354  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000358  9f000ff0  addli r1, r30, -2048
00035c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000360  06b40500  vfp162float_l.rn vr8, vr11
000364  06f00500  vfp162float_h.rn vr0, vr11
000368  9f000fe5  addli r1, r30, -3456
00036c  86b50000  vfp162float_l.rn vr11, vr1
000370  9693b302  vadd.f.mz.rn vr7{mr1}, vr7, vr11
000374  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000378  9f008ff6  addli r1, r30, -1216
00037c  86f30000  vfp162float_h.rn vr7, vr1
000380  96107502  vadd.f.mz.rn vr1{mr1}, vr10, vr7
000384  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000388  86b30500  vfp162float_l.rn vr7, vr11
00038c  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
000390  9f000fe9  addli r1, r30, -2944
000394  06f50500  vfp162float_h.rn vr10, vr11
000398  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00039c  9f000ff7  addli r1, r30, -1152
0003a0  1691a202  vadd.f.mz.rn vr2{mr1}, vr5, vr10
0003a4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0003a8  9f008fe7  addli r1, r30, -3136
0003ac  06b50300  vfp162float_l.rn vr10, vr7
0003b0  86f50300  vfp162float_h.rn vr11, vr7
0003b4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0003b8  1611a302  vadd.f.mz.rn vr2{mr1}, vr6, vr10
0003bc  9f000fe7  addli r1, r30, -3200
0003c0  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0003c4  9f008ff7  addli r1, r30, -1088
0003c8  1691b102  vadd.f.mz.rn vr2{mr1}, vr3, vr11
0003cc  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0003d0  9f008fe8  addli r1, r30, -3008
0003d4  86330500  vfp162float_l.rn vr7, vr10
0003d8  86750500  vfp162float_h.rn vr11, vr10
0003dc  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0003e0  16117202  vadd.f.mz.rn vr2{mr1}, vr4, vr7
0003e4  9f000fe8  addli r1, r30, -3072
0003e8  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0003ec  1691b402  vadd.f.mz.rn vr2{mr1}, vr9, vr11
0003f0  9f000fec  addli r1, r30, -2560
0003f4  c2130f82  vload_mask16.mz vr7{mr1}, 1024(r30)
0003f8  86b40300  vfp162float_l.rn vr9, vr7
0003fc  96119402  vadd.f.mz.rn vr3{mr1}, vr8, vr9
000400  86f40300  vfp162float_h.rn vr9, vr7
000404  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
000408  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00040c  9f008ff0  addli r1, r30, -1984
000410  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000414  9f008fec  addli r1, r30, -2496
000418  c2138f82  vload_mask16.mz vr7{mr1}, 1088(r30)
00041c  86b40300  vfp162float_l.rn vr9, vr7
000420  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000424  06300400  vfp162float_l.rn vr0, vr8
000428  9f000ff1  addli r1, r30, -1920
00042c  96159002  vadd.f.mz.rn vr11{mr1}, vr0, vr9
000430  06700400  vfp162float_h.rn vr0, vr8
000434  06f40300  vfp162float_h.rn vr8, vr7
000438  96118002  vadd.f.mz.rn vr3{mr1}, vr0, vr8
00043c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
000440  06b00300  vfp162float_l.rn vr0, vr7
000444  9f008ff1  addli r1, r30, -1856
000448  c2140f83  vload_mask16.mz vr9{mr1}, 1152(r30)
00044c  06b40400  vfp162float_l.rn vr8, vr9
000450  96128002  vadd.f.mz.rn vr5{mr1}, vr0, vr8
000454  06f00300  vfp162float_h.rn vr0, vr7
000458  86f30400  vfp162float_h.rn vr7, vr9
00045c  16157002  vadd.f.mz.rn vr10{mr1}, vr0, vr7
000460  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000464  06300400  vfp162float_l.rn vr0, vr8
000468  c2148f83  vload_mask16.mz vr9{mr1}, 1216(r30)
00046c  86b30400  vfp162float_l.rn vr7, vr9
000470  16127002  vadd.f.mz.rn vr4{mr1}, vr0, vr7
000474  9f000ff2  addli r1, r30, -1792
000478  06700400  vfp162float_h.rn vr0, vr8
00047c  86f30400  vfp162float_h.rn vr7, vr9
000480  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000484  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000488  9f008fed  addli r1, r30, -2368
00048c  c2140fa2  vload_mask16.mz vr9{mr1}, 1280(r30)
000490  86b30400  vfp162float_l.rn vr7, vr9
000494  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000498  06300400  vfp162float_l.rn vr0, vr8
00049c  9f008fe2  addli r1, r30, -3776
0004a0  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0004a4  86f30400  vfp162float_h.rn vr7, vr9
0004a8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004ac  9f008ff2  addli r1, r30, -1728
0004b0  06700400  vfp162float_h.rn vr0, vr8
0004b4  16137002  vadd.f.mz.rn vr6{mr1}, vr0, vr7
0004b8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0004bc  06300400  vfp162float_l.rn vr0, vr8
0004c0  c2148fa2  vload_mask16.mz vr9{mr1}, 1344(r30)
0004c4  86b30400  vfp162float_l.rn vr7, vr9
0004c8  9f000fed  addli r1, r30, -2432
0004cc  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0004d0  86f30400  vfp162float_h.rn vr7, vr9
0004d4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004d8  06700400  vfp162float_h.rn vr0, vr8
0004dc  9f000ff3  addli r1, r30, -1664
0004e0  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0004e4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0004e8  9f000fe3  addli r1, r30, -3712
0004ec  c2140fa3  vload_mask16.mz vr9{mr1}, 1408(r30)
0004f0  86b30400  vfp162float_l.rn vr7, vr9
0004f4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0004f8  06300400  vfp162float_l.rn vr0, vr8
0004fc  9f008feb  addli r1, r30, -2624
000500  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000504  86f30400  vfp162float_h.rn vr7, vr9
000508  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00050c  06700400  vfp162float_h.rn vr0, vr8
000510  9f008ff3  addli r1, r30, -1600
000514  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000518  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
00051c  9f008fe3  addli r1, r30, -3648
000520  c2148fa3  vload_mask16.mz vr9{mr1}, 1472(r30)
000524  86b30400  vfp162float_l.rn vr7, vr9
000528  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00052c  06300400  vfp162float_l.rn vr0, vr8
000530  9f000fe4  addli r1, r30, -3584
000534  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000538  86f30400  vfp162float_h.rn vr7, vr9
00053c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000540  06700400  vfp162float_h.rn vr0, vr8
000544  9f000ff4  addli r1, r30, -1536
000548  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
00054c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000550  9f000feb  addli r1, r30, -2688
000554  c2140fc2  vload_mask16.mz vr9{mr1}, 1536(r30)
000558  86b30400  vfp162float_l.rn vr7, vr9
00055c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000560  06300400  vfp162float_l.rn vr0, vr8
000564  9f008fea  addli r1, r30, -2752
000568  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
00056c  86f30400  vfp162float_h.rn vr7, vr9
000570  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000574  06700400  vfp162float_h.rn vr0, vr8
000578  9f008ff4  addli r1, r30, -1472
00057c  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000580  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000584  9f008fe5  addli r1, r30, -3392
000588  c2148fc2  vload_mask16.mz vr9{mr1}, 1600(r30)
00058c  86b30400  vfp162float_l.rn vr7, vr9
000590  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000594  06300400  vfp162float_l.rn vr0, vr8
000598  9f008fe4  addli r1, r30, -3520
00059c  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0005a0  86f30400  vfp162float_h.rn vr7, vr9
0005a4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005a8  06700400  vfp162float_h.rn vr0, vr8
0005ac  9f000ff5  addli r1, r30, -1408
0005b0  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0005b4  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0005b8  9f000fea  addli r1, r30, -2816
0005bc  c2140fc3  vload_mask16.mz vr9{mr1}, 1664(r30)
0005c0  86b30400  vfp162float_l.rn vr7, vr9
0005c4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005c8  06300400  vfp162float_l.rn vr0, vr8
0005cc  9f008fe9  addli r1, r30, -2880
0005d0  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0005d4  86f30400  vfp162float_h.rn vr7, vr9
0005d8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0005dc  06700400  vfp162float_h.rn vr0, vr8
0005e0  9f008ff5  addli r1, r30, -1344
0005e4  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0005e8  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0005ec  9f008fe6  addli r1, r30, -3264
0005f0  c2148fc3  vload_mask16.mz vr9{mr1}, 1728(r30)
0005f4  86b30400  vfp162float_l.rn vr7, vr9
0005f8  e3017fdd  loadli.w r3,  -4424(r30)
0005fc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000600  06300400  vfp162float_l.rn vr0, vr8
000604  9f000fe6  addli r1, r30, -3328
000608  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
00060c  86f30400  vfp162float_h.rn vr7, vr9
000610  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000614  9f008fec  addli r1, r30, -2496
000618  06700400  vfp162float_h.rn vr0, vr8
00061c  96137002  vadd.f.mz.rn vr7{mr1}, vr0, vr7
000620  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000624  9f000fec  addli r1, r30, -2560
000628  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00062c  9f000fde  addli r1, r30, -4352
000630  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000634  9f000fe5  addli r1, r30, -3456
000638  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00063c  9f000fe9  addli r1, r30, -2944
000640  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000644  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000648  9f008fe7  addli r1, r30, -3136
00064c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000650  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000654  9f000fe7  addli r1, r30, -3200
000658  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00065c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000660  9f008fe8  addli r1, r30, -3008
000664  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000668  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00066c  9f000fe8  addli r1, r30, -3072
000670  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000674  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000678  9f008fe1  addli r1, r30, -3904
00067c  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000680  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
000684  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000688  9f008fe2  addli r1, r30, -3776
00068c  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
000690  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
000694  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000698  9f000fe2  addli r1, r30, -3840
00069c  3610b002  vmax.f.mz vr0{mr1}, vr0, vr11
0006a0  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
0006a4  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
0006a8  9f000fdf  addli r1, r30, -4224
0006ac  36105002  vmax.f.mz vr0{mr1}, vr0, vr5
0006b0  3610a002  vmax.f.mz vr0{mr1}, vr0, vr10
0006b4  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0006b8  9f008fdf  addli r1, r30, -4160
0006bc  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
0006c0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0006c4  9f000fe0  addli r1, r30, -4096
0006c8  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
0006cc  9f000fe4  addli r1, r30, -3584
0006d0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0006d4  9f008fe0  addli r1, r30, -4032
0006d8  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
0006dc  9f008fed  addli r1, r30, -2368
0006e0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0006e4  9f000fe1  addli r1, r30, -3968
0006e8  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0006ec  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
0006f0  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0006f4  9f000fe3  addli r1, r30, -3712
0006f8  36106002  vmax.f.mz vr0{mr1}, vr0, vr6
0006fc  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000700  9f000fed  addli r1, r30, -2432
000704  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000708  9f008fe3  addli r1, r30, -3648
00070c  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
000710  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
000714  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000718  9f008feb  addli r1, r30, -2624
00071c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000720  9f008fe5  addli r1, r30, -3392
000724  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
000728  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
00072c  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000730  9f000feb  addli r1, r30, -2688
000734  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000738  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
00073c  9f008fe4  addli r1, r30, -3520
000740  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000744  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000748  9f008fea  addli r1, r30, -2752
00074c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000750  9f008fe6  addli r1, r30, -3264
000754  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
000758  36105002  vmax.f.mz vr0{mr1}, vr0, vr5
00075c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000760  9f000fea  addli r1, r30, -2816
000764  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
000768  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00076c  9f000fe6  addli r1, r30, -3328
000770  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
000774  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
000778  9f008fe9  addli r1, r30, -2880
00077c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000780  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
000784  9f008fde  addli r1, r30, -4288
000788  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
00078c  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
000790  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000794  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
000798  eaf305c0  vsrl.p vr7, r11, vr0
00079c  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
0007a0  eaf303c0  vsrl.p vr7, r7, vr0
0007a4  9f030002  addli r7, zero, 256
0007a8  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
0007ac  ea7305c0  vsrl.p vr7, r10, vr0
0007b0  1f050001  addli r10, zero, 128
0007b4  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
0007b8  ea7306c0  vsrl.p vr7, r12, vr0
0007bc  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
0007c0  fa100040  vextracti.f r1, 0(vr0)
0007c4  73e01100  stores.w r1, 0(r3)
0007c8  00a00300  mfence { lm, sm, gm }
0007cc  80210204  csr_set csr3, r4
0007d0  00d00100  sync_group
0007d4  bb900700  bneq r15, zero, 36
0007d8  efc00d00  loads.w r1, 0(r27)
0007dc  efc84d00  loads.w r17, 4(r27)
0007e0  6fcb8d00  loads.w r22, 8(r27)
0007e4  efcbcd00  loads.w r23, 12(r27)
0007e8  8be01049  max.f r1, r1, r17
0007ec  8be06049  max.f r1, r1, r22
0007f0  8be07049  max.f r1, r1, r23
0007f4  73e01d00  stores.w r1, 0(r27)
0007f8  00a00300  mfence { lm, sm, gm }
0007fc  80210204  csr_set csr3, r4
000800  00d00100  sync_group
000804  efc00d00  loads.w r1, 0(r27)
000808  ab010080  lui r3, 524288
00080c  97a83000  xor r17, r1, r3
000810  9f000fe5  addli r1, r30, -3456
000814  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000818  9f000fde  addli r1, r30, -4352
00081c  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
000820  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
000824  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000828  9f000fe9  addli r1, r30, -2944
00082c  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
000830  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
000834  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000838  9f008fe7  addli r1, r30, -3136
00083c  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
000840  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
000844  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000848  9f000fe7  addli r1, r30, -3200
00084c  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
000850  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
000854  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000858  00a00000  mfence { lm }
00085c  e3000900  loadli.w r1,  0(r18)
000860  634b0900  loadli.w r22,  4(r18)
000864  e30b1900  loadli.w r23,  8(r18)
000868  634c1900  loadli.w r24,  12(r18)
00086c  e30c2900  loadli.w r25,  16(r18)
000870  e3412900  loadli.w r3,  20(r18)
000874  e3053900  loadli.w r11,  24(r18)
000878  63463900  loadli.w r12,  28(r18)
00087c  e3064900  loadli.w r13,  32(r18)
000880  63474900  loadli.w r14,  36(r18)
000884  63045900  loadli.w r8,  40(r18)
000888  e3445900  loadli.w r9,  44(r18)
00088c  630d6900  loadli.w r26,  48(r18)
000890  63486900  loadli.w r16,  52(r18)
000894  e3027900  loadli.w r5,  56(r18)
000898  e34a7900  loadli.w r21,  60(r18)
00089c  8f800000  exp.f.rn r1, r1
0008a0  0f0b0b00  exp.f.rn r22, r22
0008a4  8f8b0b00  exp.f.rn r23, r23
0008a8  0f0c0c00  exp.f.rn r24, r24
0008ac  8f8c0c00  exp.f.rn r25, r25
0008b0  8f810100  exp.f.rn r3, r3
0008b4  8f850500  exp.f.rn r11, r11
0008b8  0f060600  exp.f.rn r12, r12
0008bc  8f860600  exp.f.rn r13, r13
0008c0  0f070700  exp.f.rn r14, r14
0008c4  0f040400  exp.f.rn r8, r8
0008c8  8f840400  exp.f.rn r9, r9
0008cc  0f0d0d00  exp.f.rn r26, r26
0008d0  0f080800  exp.f.rn r16, r16
0008d4  8f820200  exp.f.rn r5, r5
0008d8  8f8a0a00  exp.f.rn r21, r21
0008dc  67001900  storeli.w r1, 0(r18)
0008e0  67406901  storeli.w r22, 4(r18)
0008e4  e7007901  storeli.w r23, 8(r18)
0008e8  e7408901  storeli.w r24, 12(r18)
0008ec  67019901  storeli.w r25, 16(r18)
0008f0  67413900  storeli.w r3, 20(r18)
0008f4  e701b900  storeli.w r11, 24(r18)
0008f8  e741c900  storeli.w r12, 28(r18)
0008fc  6702d900  storeli.w r13, 32(r18)
000900  6742e900  storeli.w r14, 36(r18)
000904  e7028900  storeli.w r8, 40(r18)
000908  e7429900  storeli.w r9, 44(r18)
00090c  6703a901  storeli.w r26, 48(r18)
000910  67430901  storeli.w r16, 52(r18)
000914  e7035900  storeli.w r5, 56(r18)
000918  e7435901  storeli.w r21, 60(r18)
00091c  e3008900  loadli.w r1,  64(r18)
000920  634b8900  loadli.w r22,  68(r18)
000924  e30b9900  loadli.w r23,  72(r18)
000928  634c9900  loadli.w r24,  76(r18)
00092c  e30ca900  loadli.w r25,  80(r18)
000930  e341a900  loadli.w r3,  84(r18)
000934  e305b900  loadli.w r11,  88(r18)
000938  6346b900  loadli.w r12,  92(r18)
00093c  e306c900  loadli.w r13,  96(r18)
000940  6347c900  loadli.w r14,  100(r18)
000944  6304d900  loadli.w r8,  104(r18)
000948  e344d900  loadli.w r9,  108(r18)
00094c  630de900  loadli.w r26,  112(r18)
000950  6348e900  loadli.w r16,  116(r18)
000954  e302f900  loadli.w r5,  120(r18)
000958  e34af900  loadli.w r21,  124(r18)
00095c  8f800000  exp.f.rn r1, r1
000960  0f0b0b00  exp.f.rn r22, r22
000964  8f8b0b00  exp.f.rn r23, r23
000968  0f0c0c00  exp.f.rn r24, r24
00096c  8f8c0c00  exp.f.rn r25, r25
000970  8f810100  exp.f.rn r3, r3
000974  8f850500  exp.f.rn r11, r11
000978  0f060600  exp.f.rn r12, r12
00097c  8f860600  exp.f.rn r13, r13
000980  0f070700  exp.f.rn r14, r14
000984  0f040400  exp.f.rn r8, r8
000988  8f840400  exp.f.rn r9, r9
00098c  0f0d0d00  exp.f.rn r26, r26
000990  0f080800  exp.f.rn r16, r16
000994  8f820200  exp.f.rn r5, r5
000998  8f8a0a00  exp.f.rn r21, r21
00099c  67041900  storeli.w r1, 64(r18)
0009a0  67446901  storeli.w r22, 68(r18)
0009a4  e7047901  storeli.w r23, 72(r18)
0009a8  e7448901  storeli.w r24, 76(r18)
0009ac  67059901  storeli.w r25, 80(r18)
0009b0  67453900  storeli.w r3, 84(r18)
0009b4  e705b900  storeli.w r11, 88(r18)
0009b8  e745c900  storeli.w r12, 92(r18)
0009bc  6706d900  storeli.w r13, 96(r18)
0009c0  6746e900  storeli.w r14, 100(r18)
0009c4  e7068900  storeli.w r8, 104(r18)
0009c8  e7469900  storeli.w r9, 108(r18)
0009cc  6707a901  storeli.w r26, 112(r18)
0009d0  67470901  storeli.w r16, 116(r18)
0009d4  e7075900  storeli.w r5, 120(r18)
0009d8  e7475901  storeli.w r21, 124(r18)
0009dc  e3000901  loadli.w r1,  128(r18)
0009e0  634b0901  loadli.w r22,  132(r18)
0009e4  e30b1901  loadli.w r23,  136(r18)
0009e8  634c1901  loadli.w r24,  140(r18)
0009ec  e30c2901  loadli.w r25,  144(r18)
0009f0  e3412901  loadli.w r3,  148(r18)
0009f4  e3053901  loadli.w r11,  152(r18)
0009f8  63463901  loadli.w r12,  156(r18)
0009fc  e3064901  loadli.w r13,  160(r18)
000a00  63474901  loadli.w r14,  164(r18)
000a04  63045901  loadli.w r8,  168(r18)
000a08  e3445901  loadli.w r9,  172(r18)
000a0c  630d6901  loadli.w r26,  176(r18)
000a10  63486901  loadli.w r16,  180(r18)
000a14  e3027901  loadli.w r5,  184(r18)
000a18  e34a7901  loadli.w r21,  188(r18)
000a1c  8f800000  exp.f.rn r1, r1
000a20  0f0b0b00  exp.f.rn r22, r22
000a24  8f8b0b00  exp.f.rn r23, r23
000a28  0f0c0c00  exp.f.rn r24, r24
000a2c  8f8c0c00  exp.f.rn r25, r25
000a30  8f810100  exp.f.rn r3, r3
000a34  8f850500  exp.f.rn r11, r11
000a38  0f060600  exp.f.rn r12, r12
000a3c  8f860600  exp.f.rn r13, r13
000a40  0f070700  exp.f.rn r14, r14
000a44  0f040400  exp.f.rn r8, r8
000a48  8f840400  exp.f.rn r9, r9
000a4c  0f0d0d00  exp.f.rn r26, r26
000a50  0f080800  exp.f.rn r16, r16
000a54  8f820200  exp.f.rn r5, r5
000a58  8f8a0a00  exp.f.rn r21, r21
000a5c  67081900  storeli.w r1, 128(r18)
000a60  67486901  storeli.w r22, 132(r18)
000a64  e7087901  storeli.w r23, 136(r18)
000a68  e7488901  storeli.w r24, 140(r18)
000a6c  67099901  storeli.w r25, 144(r18)
000a70  67493900  storeli.w r3, 148(r18)
000a74  e709b900  storeli.w r11, 152(r18)
000a78  e749c900  storeli.w r12, 156(r18)
000a7c  670ad900  storeli.w r13, 160(r18)
000a80  674ae900  storeli.w r14, 164(r18)
000a84  e70a8900  storeli.w r8, 168(r18)
000a88  e74a9900  storeli.w r9, 172(r18)
000a8c  670ba901  storeli.w r26, 176(r18)
000a90  674b0901  storeli.w r16, 180(r18)
000a94  e70b5900  storeli.w r5, 184(r18)
000a98  e74b5901  storeli.w r21, 188(r18)
000a9c  e3008901  loadli.w r1,  192(r18)
000aa0  634b8901  loadli.w r22,  196(r18)
000aa4  e30b9901  loadli.w r23,  200(r18)
000aa8  634c9901  loadli.w r24,  204(r18)
000aac  e30ca901  loadli.w r25,  208(r18)
000ab0  e341a901  loadli.w r3,  212(r18)
000ab4  e305b901  loadli.w r11,  216(r18)
000ab8  6346b901  loadli.w r12,  220(r18)
000abc  e306c901  loadli.w r13,  224(r18)
000ac0  6347c901  loadli.w r14,  228(r18)
000ac4  6304d901  loadli.w r8,  232(r18)
000ac8  e344d901  loadli.w r9,  236(r18)
000acc  630de901  loadli.w r26,  240(r18)
000ad0  6348e901  loadli.w r16,  244(r18)
000ad4  e302f901  loadli.w r5,  248(r18)
000ad8  e34af901  loadli.w r21,  252(r18)
000adc  8f800000  exp.f.rn r1, r1
000ae0  0f0b0b00  exp.f.rn r22, r22
000ae4  8f8b0b00  exp.f.rn r23, r23
000ae8  0f0c0c00  exp.f.rn r24, r24
000aec  8f8c0c00  exp.f.rn r25, r25
000af0  8f810100  exp.f.rn r3, r3
000af4  8f850500  exp.f.rn r11, r11
000af8  0f060600  exp.f.rn r12, r12
000afc  8f860600  exp.f.rn r13, r13
000b00  0f070700  exp.f.rn r14, r14
000b04  0f040400  exp.f.rn r8, r8
000b08  8f840400  exp.f.rn r9, r9
000b0c  0f0d0d00  exp.f.rn r26, r26
000b10  0f080800  exp.f.rn r16, r16
000b14  8f820200  exp.f.rn r5, r5
000b18  8f8a0a00  exp.f.rn r21, r21
000b1c  670c1900  storeli.w r1, 192(r18)
000b20  674c6901  storeli.w r22, 196(r18)
000b24  e70c7901  storeli.w r23, 200(r18)
000b28  e74c8901  storeli.w r24, 204(r18)
000b2c  670d9901  storeli.w r25, 208(r18)
000b30  674d3900  storeli.w r3, 212(r18)
000b34  e70db900  storeli.w r11, 216(r18)
000b38  e74dc900  storeli.w r12, 220(r18)
000b3c  670ed900  storeli.w r13, 224(r18)
000b40  674ee900  storeli.w r14, 228(r18)
000b44  e70e8900  storeli.w r8, 232(r18)
000b48  e74e9900  storeli.w r9, 236(r18)
000b4c  670fa901  storeli.w r26, 240(r18)
000b50  674f0901  storeli.w r16, 244(r18)
000b54  e70f5900  storeli.w r5, 248(r18)
000b58  e74f5901  storeli.w r21, 252(r18)
000b5c  00a00000  mfence { lm }
000b60  42110fe2  vload_mask16.mz vr2{mr1}, 1792(r30)
000b64  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
000b68  9f008fe8  addli r1, r30, -3008
000b6c  42140fe3  vload_mask16.mz vr8{mr1}, 1920(r30)
000b70  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
000b74  c2138fe3  vload_mask16.mz vr7{mr1}, 1984(r30)
000b78  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
000b7c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000b80  9f000fe8  addli r1, r30, -3072
000b84  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
000b88  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
000b8c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000b90  9f000fde  addli r1, r30, -4352
000b94  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
000b98  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000b9c  9f008fdd  addli r1, r30, -4416
000ba0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000ba4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
000ba8  9f008fe1  addli r1, r30, -3904
000bac  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
000bb0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000bb4  9f000fe9  addli r1, r30, -2944
000bb8  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
000bbc  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
000bc0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
000bc4  9f000fec  addli r1, r30, -2560
000bc8  16908002  vadd.f.mz.rn vr0{mr1}, vr1, vr8
000bcc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000bd0  00a00000  mfence { lm }
000bd4  e3000900  loadli.w r1,  0(r18)
000bd8  e3410900  loadli.w r3,  4(r18)
000bdc  e3021900  loadli.w r5,  8(r18)
000be0  63441900  loadli.w r8,  12(r18)
000be4  e3042900  loadli.w r9,  16(r18)
000be8  e3452900  loadli.w r11,  20(r18)
000bec  63063900  loadli.w r12,  24(r18)
000bf0  e3463900  loadli.w r13,  28(r18)
000bf4  63074900  loadli.w r14,  32(r18)
000bf8  63484900  loadli.w r16,  36(r18)
000bfc  e30a5900  loadli.w r21,  40(r18)
000c00  634b5900  loadli.w r22,  44(r18)
000c04  e30b6900  loadli.w r23,  48(r18)
000c08  634c6900  loadli.w r24,  52(r18)
000c0c  e30c7900  loadli.w r25,  56(r18)
000c10  634d7900  loadli.w r26,  60(r18)
000c14  8f800000  exp.f.rn r1, r1
000c18  8f810100  exp.f.rn r3, r3
000c1c  8f820200  exp.f.rn r5, r5
000c20  0f040400  exp.f.rn r8, r8
000c24  8f840400  exp.f.rn r9, r9
000c28  8f850500  exp.f.rn r11, r11
000c2c  0f060600  exp.f.rn r12, r12
000c30  8f860600  exp.f.rn r13, r13
000c34  0f070700  exp.f.rn r14, r14
000c38  0f080800  exp.f.rn r16, r16
000c3c  8f8a0a00  exp.f.rn r21, r21
000c40  0f0b0b00  exp.f.rn r22, r22
000c44  8f8b0b00  exp.f.rn r23, r23
000c48  0f0c0c00  exp.f.rn r24, r24
000c4c  8f8c0c00  exp.f.rn r25, r25
000c50  0f0d0d00  exp.f.rn r26, r26
000c54  67001900  storeli.w r1, 0(r18)
000c58  67403900  storeli.w r3, 4(r18)
000c5c  e7005900  storeli.w r5, 8(r18)
000c60  e7408900  storeli.w r8, 12(r18)
000c64  67019900  storeli.w r9, 16(r18)
000c68  6741b900  storeli.w r11, 20(r18)
000c6c  e701c900  storeli.w r12, 24(r18)
000c70  e741d900  storeli.w r13, 28(r18)
000c74  6702e900  storeli.w r14, 32(r18)
000c78  67420901  storeli.w r16, 36(r18)
000c7c  e7025901  storeli.w r21, 40(r18)
000c80  e7426901  storeli.w r22, 44(r18)
000c84  67037901  storeli.w r23, 48(r18)
000c88  67438901  storeli.w r24, 52(r18)
000c8c  e7039901  storeli.w r25, 56(r18)
000c90  e743a901  storeli.w r26, 60(r18)
000c94  e3008900  loadli.w r1,  64(r18)
000c98  e3418900  loadli.w r3,  68(r18)
000c9c  e3029900  loadli.w r5,  72(r18)
000ca0  63449900  loadli.w r8,  76(r18)
000ca4  e304a900  loadli.w r9,  80(r18)
000ca8  e345a900  loadli.w r11,  84(r18)
000cac  6306b900  loadli.w r12,  88(r18)
000cb0  e346b900  loadli.w r13,  92(r18)
000cb4  6307c900  loadli.w r14,  96(r18)
000cb8  6348c900  loadli.w r16,  100(r18)
000cbc  e30ad900  loadli.w r21,  104(r18)
000cc0  634bd900  loadli.w r22,  108(r18)
000cc4  e30be900  loadli.w r23,  112(r18)
000cc8  634ce900  loadli.w r24,  116(r18)
000ccc  e30cf900  loadli.w r25,  120(r18)
000cd0  634df900  loadli.w r26,  124(r18)
000cd4  8f800000  exp.f.rn r1, r1
000cd8  8f810100  exp.f.rn r3, r3
000cdc  8f820200  exp.f.rn r5, r5
000ce0  0f040400  exp.f.rn r8, r8
000ce4  8f840400  exp.f.rn r9, r9
000ce8  8f850500  exp.f.rn r11, r11
000cec  0f060600  exp.f.rn r12, r12
000cf0  8f860600  exp.f.rn r13, r13
000cf4  0f070700  exp.f.rn r14, r14
000cf8  0f080800  exp.f.rn r16, r16
000cfc  8f8a0a00  exp.f.rn r21, r21
000d00  0f0b0b00  exp.f.rn r22, r22
000d04  8f8b0b00  exp.f.rn r23, r23
000d08  0f0c0c00  exp.f.rn r24, r24
000d0c  8f8c0c00  exp.f.rn r25, r25
000d10  0f0d0d00  exp.f.rn r26, r26
000d14  67041900  storeli.w r1, 64(r18)
000d18  67443900  storeli.w r3, 68(r18)
000d1c  e7045900  storeli.w r5, 72(r18)
000d20  e7448900  storeli.w r8, 76(r18)
000d24  67059900  storeli.w r9, 80(r18)
000d28  6745b900  storeli.w r11, 84(r18)
000d2c  e705c900  storeli.w r12, 88(r18)
000d30  e745d900  storeli.w r13, 92(r18)
000d34  6706e900  storeli.w r14, 96(r18)
000d38  67460901  storeli.w r16, 100(r18)
000d3c  e7065901  storeli.w r21, 104(r18)
000d40  e7466901  storeli.w r22, 108(r18)
000d44  67077901  storeli.w r23, 112(r18)
000d48  67478901  storeli.w r24, 116(r18)
000d4c  e7079901  storeli.w r25, 120(r18)
000d50  e747a901  storeli.w r26, 124(r18)
000d54  e3000901  loadli.w r1,  128(r18)
000d58  e3410901  loadli.w r3,  132(r18)
000d5c  e3021901  loadli.w r5,  136(r18)
000d60  63441901  loadli.w r8,  140(r18)
000d64  e3042901  loadli.w r9,  144(r18)
000d68  e3452901  loadli.w r11,  148(r18)
000d6c  63063901  loadli.w r12,  152(r18)
000d70  e3463901  loadli.w r13,  156(r18)
000d74  63074901  loadli.w r14,  160(r18)
000d78  63484901  loadli.w r16,  164(r18)
000d7c  e30a5901  loadli.w r21,  168(r18)
000d80  634b5901  loadli.w r22,  172(r18)
000d84  e30b6901  loadli.w r23,  176(r18)
000d88  634c6901  loadli.w r24,  180(r18)
000d8c  e30c7901  loadli.w r25,  184(r18)
000d90  634d7901  loadli.w r26,  188(r18)
000d94  8f800000  exp.f.rn r1, r1
000d98  8f810100  exp.f.rn r3, r3
000d9c  8f820200  exp.f.rn r5, r5
000da0  0f040400  exp.f.rn r8, r8
000da4  8f840400  exp.f.rn r9, r9
000da8  8f850500  exp.f.rn r11, r11
000dac  0f060600  exp.f.rn r12, r12
000db0  8f860600  exp.f.rn r13, r13
000db4  0f070700  exp.f.rn r14, r14
000db8  0f080800  exp.f.rn r16, r16
000dbc  8f8a0a00  exp.f.rn r21, r21
000dc0  0f0b0b00  exp.f.rn r22, r22
000dc4  8f8b0b00  exp.f.rn r23, r23
000dc8  0f0c0c00  exp.f.rn r24, r24
000dcc  8f8c0c00  exp.f.rn r25, r25
000dd0  0f0d0d00  exp.f.rn r26, r26
000dd4  67081900  storeli.w r1, 128(r18)
000dd8  67483900  storeli.w r3, 132(r18)
000ddc  e7085900  storeli.w r5, 136(r18)
000de0  e7488900  storeli.w r8, 140(r18)
000de4  67099900  storeli.w r9, 144(r18)
000de8  6749b900  storeli.w r11, 148(r18)
000dec  e709c900  storeli.w r12, 152(r18)
000df0  e749d900  storeli.w r13, 156(r18)
000df4  670ae900  storeli.w r14, 160(r18)
000df8  674a0901  storeli.w r16, 164(r18)
000dfc  e70a5901  storeli.w r21, 168(r18)
000e00  e74a6901  storeli.w r22, 172(r18)
000e04  670b7901  storeli.w r23, 176(r18)
000e08  674b8901  storeli.w r24, 180(r18)
000e0c  e70b9901  storeli.w r25, 184(r18)
000e10  e74ba901  storeli.w r26, 188(r18)
000e14  e3008901  loadli.w r1,  192(r18)
000e18  e3418901  loadli.w r3,  196(r18)
000e1c  e3029901  loadli.w r5,  200(r18)
000e20  63449901  loadli.w r8,  204(r18)
000e24  e304a901  loadli.w r9,  208(r18)
000e28  e345a901  loadli.w r11,  212(r18)
000e2c  6306b901  loadli.w r12,  216(r18)
000e30  e346b901  loadli.w r13,  220(r18)
000e34  6307c901  loadli.w r14,  224(r18)
000e38  6348c901  loadli.w r16,  228(r18)
000e3c  e30ad901  loadli.w r21,  232(r18)
000e40  634bd901  loadli.w r22,  236(r18)
000e44  e30be901  loadli.w r23,  240(r18)
000e48  634ce901  loadli.w r24,  244(r18)
000e4c  e30cf901  loadli.w r25,  248(r18)
000e50  634df901  loadli.w r26,  252(r18)
000e54  8f800000  exp.f.rn r1, r1
000e58  8f810100  exp.f.rn r3, r3
000e5c  8f820200  exp.f.rn r5, r5
000e60  0f040400  exp.f.rn r8, r8
000e64  8f840400  exp.f.rn r9, r9
000e68  8f850500  exp.f.rn r11, r11
000e6c  0f060600  exp.f.rn r12, r12
000e70  8f860600  exp.f.rn r13, r13
000e74  0f070700  exp.f.rn r14, r14
000e78  0f080800  exp.f.rn r16, r16
000e7c  8f8a0a00  exp.f.rn r21, r21
000e80  0f0b0b00  exp.f.rn r22, r22
000e84  8f8b0b00  exp.f.rn r23, r23
000e88  0f0c0c00  exp.f.rn r24, r24
000e8c  8f8c0c00  exp.f.rn r25, r25
000e90  0f0d0d00  exp.f.rn r26, r26
000e94  670c1900  storeli.w r1, 192(r18)
000e98  674c3900  storeli.w r3, 196(r18)
000e9c  e70c5900  storeli.w r5, 200(r18)
000ea0  e74c8900  storeli.w r8, 204(r18)
000ea4  670d9900  storeli.w r9, 208(r18)
000ea8  674db900  storeli.w r11, 212(r18)
000eac  e70dc900  storeli.w r12, 216(r18)
000eb0  e74dd900  storeli.w r13, 220(r18)
000eb4  670ee900  storeli.w r14, 224(r18)
000eb8  674e0901  storeli.w r16, 228(r18)
000ebc  e70e5901  storeli.w r21, 232(r18)
000ec0  e74e6901  storeli.w r22, 236(r18)
000ec4  670f7901  storeli.w r23, 240(r18)
000ec8  674f8901  storeli.w r24, 244(r18)
000ecc  e70f9901  storeli.w r25, 248(r18)
000ed0  e74fa901  storeli.w r26, 252(r18)
000ed4  00a00000  mfence { lm }
000ed8  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
000edc  9f000fec  addli r1, r30, -2560
000ee0  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
000ee4  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000ee8  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000eec  9f000fe8  addli r1, r30, -3072
000ef0  c2118fe2  vload_mask16.mz vr3{mr1}, 1856(r30)
000ef4  c2120fe3  vload_mask16.mz vr5{mr1}, 1920(r30)
000ef8  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
000efc  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000f00  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
000f04  9f008fec  addli r1, r30, -2496
000f08  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
000f0c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f10  9f000fe2  addli r1, r30, -3840
000f14  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
000f18  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
000f1c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f20  9f008fe7  addli r1, r30, -3136
000f24  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000f28  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
000f2c  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000f30  9f000fdf  addli r1, r30, -4224
000f34  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
000f38  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f3c  9f008fe8  addli r1, r30, -3008
000f40  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000f44  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
000f48  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000f4c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000f50  9f008fdf  addli r1, r30, -4160
000f54  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f58  00a00000  mfence { lm }
000f5c  e3000900  loadli.w r1,  0(r18)
000f60  e3410900  loadli.w r3,  4(r18)
000f64  e3021900  loadli.w r5,  8(r18)
000f68  63441900  loadli.w r8,  12(r18)
000f6c  e3042900  loadli.w r9,  16(r18)
000f70  e3452900  loadli.w r11,  20(r18)
000f74  63063900  loadli.w r12,  24(r18)
000f78  e3463900  loadli.w r13,  28(r18)
000f7c  63074900  loadli.w r14,  32(r18)
000f80  63484900  loadli.w r16,  36(r18)
000f84  e30a5900  loadli.w r21,  40(r18)
000f88  634b5900  loadli.w r22,  44(r18)
000f8c  e30b6900  loadli.w r23,  48(r18)
000f90  634c6900  loadli.w r24,  52(r18)
000f94  e30c7900  loadli.w r25,  56(r18)
000f98  634d7900  loadli.w r26,  60(r18)
000f9c  8f800000  exp.f.rn r1, r1
000fa0  8f810100  exp.f.rn r3, r3
000fa4  8f820200  exp.f.rn r5, r5
000fa8  0f040400  exp.f.rn r8, r8
000fac  8f840400  exp.f.rn r9, r9
000fb0  8f850500  exp.f.rn r11, r11
000fb4  0f060600  exp.f.rn r12, r12
000fb8  8f860600  exp.f.rn r13, r13
000fbc  0f070700  exp.f.rn r14, r14
000fc0  0f080800  exp.f.rn r16, r16
000fc4  8f8a0a00  exp.f.rn r21, r21
000fc8  0f0b0b00  exp.f.rn r22, r22
000fcc  8f8b0b00  exp.f.rn r23, r23
000fd0  0f0c0c00  exp.f.rn r24, r24
000fd4  8f8c0c00  exp.f.rn r25, r25
000fd8  0f0d0d00  exp.f.rn r26, r26
000fdc  67001900  storeli.w r1, 0(r18)
000fe0  67403900  storeli.w r3, 4(r18)
000fe4  e7005900  storeli.w r5, 8(r18)
000fe8  e7408900  storeli.w r8, 12(r18)
000fec  67019900  storeli.w r9, 16(r18)
000ff0  6741b900  storeli.w r11, 20(r18)
000ff4  e701c900  storeli.w r12, 24(r18)
000ff8  e741d900  storeli.w r13, 28(r18)
000ffc  6702e900  storeli.w r14, 32(r18)
001000  67420901  storeli.w r16, 36(r18)
001004  e7025901  storeli.w r21, 40(r18)
001008  e7426901  storeli.w r22, 44(r18)
00100c  67037901  storeli.w r23, 48(r18)
001010  67438901  storeli.w r24, 52(r18)
001014  e7039901  storeli.w r25, 56(r18)
001018  e743a901  storeli.w r26, 60(r18)
00101c  e3008900  loadli.w r1,  64(r18)
001020  e3418900  loadli.w r3,  68(r18)
001024  e3029900  loadli.w r5,  72(r18)
001028  63449900  loadli.w r8,  76(r18)
00102c  e304a900  loadli.w r9,  80(r18)
001030  e345a900  loadli.w r11,  84(r18)
001034  6306b900  loadli.w r12,  88(r18)
001038  e346b900  loadli.w r13,  92(r18)
00103c  6307c900  loadli.w r14,  96(r18)
001040  6348c900  loadli.w r16,  100(r18)
001044  e30ad900  loadli.w r21,  104(r18)
001048  634bd900  loadli.w r22,  108(r18)
00104c  e30be900  loadli.w r23,  112(r18)
001050  634ce900  loadli.w r24,  116(r18)
001054  e30cf900  loadli.w r25,  120(r18)
001058  634df900  loadli.w r26,  124(r18)
00105c  8f800000  exp.f.rn r1, r1
001060  8f810100  exp.f.rn r3, r3
001064  8f820200  exp.f.rn r5, r5
001068  0f040400  exp.f.rn r8, r8
00106c  8f840400  exp.f.rn r9, r9
001070  8f850500  exp.f.rn r11, r11
001074  0f060600  exp.f.rn r12, r12
001078  8f860600  exp.f.rn r13, r13
00107c  0f070700  exp.f.rn r14, r14
001080  0f080800  exp.f.rn r16, r16
001084  8f8a0a00  exp.f.rn r21, r21
001088  0f0b0b00  exp.f.rn r22, r22
00108c  8f8b0b00  exp.f.rn r23, r23
001090  0f0c0c00  exp.f.rn r24, r24
001094  8f8c0c00  exp.f.rn r25, r25
001098  0f0d0d00  exp.f.rn r26, r26
00109c  67041900  storeli.w r1, 64(r18)
0010a0  67443900  storeli.w r3, 68(r18)
0010a4  e7045900  storeli.w r5, 72(r18)
0010a8  e7448900  storeli.w r8, 76(r18)
0010ac  67059900  storeli.w r9, 80(r18)
0010b0  6745b900  storeli.w r11, 84(r18)
0010b4  e705c900  storeli.w r12, 88(r18)
0010b8  e745d900  storeli.w r13, 92(r18)
0010bc  6706e900  storeli.w r14, 96(r18)
0010c0  67460901  storeli.w r16, 100(r18)
0010c4  e7065901  storeli.w r21, 104(r18)
0010c8  e7466901  storeli.w r22, 108(r18)
0010cc  67077901  storeli.w r23, 112(r18)
0010d0  67478901  storeli.w r24, 116(r18)
0010d4  e7079901  storeli.w r25, 120(r18)
0010d8  e747a901  storeli.w r26, 124(r18)
0010dc  e3000901  loadli.w r1,  128(r18)
0010e0  e3410901  loadli.w r3,  132(r18)
0010e4  e3021901  loadli.w r5,  136(r18)
0010e8  63441901  loadli.w r8,  140(r18)
0010ec  e3042901  loadli.w r9,  144(r18)
0010f0  e3452901  loadli.w r11,  148(r18)
0010f4  63063901  loadli.w r12,  152(r18)
0010f8  e3463901  loadli.w r13,  156(r18)
0010fc  63074901  loadli.w r14,  160(r18)
001100  63484901  loadli.w r16,  164(r18)
001104  e30a5901  loadli.w r21,  168(r18)
001108  634b5901  loadli.w r22,  172(r18)
00110c  e30b6901  loadli.w r23,  176(r18)
001110  634c6901  loadli.w r24,  180(r18)
001114  e30c7901  loadli.w r25,  184(r18)
001118  634d7901  loadli.w r26,  188(r18)
00111c  8f800000  exp.f.rn r1, r1
001120  8f810100  exp.f.rn r3, r3
001124  8f820200  exp.f.rn r5, r5
001128  0f040400  exp.f.rn r8, r8
00112c  8f840400  exp.f.rn r9, r9
001130  8f850500  exp.f.rn r11, r11
001134  0f060600  exp.f.rn r12, r12
001138  8f860600  exp.f.rn r13, r13
00113c  0f070700  exp.f.rn r14, r14
001140  0f080800  exp.f.rn r16, r16
001144  8f8a0a00  exp.f.rn r21, r21
001148  0f0b0b00  exp.f.rn r22, r22
00114c  8f8b0b00  exp.f.rn r23, r23
001150  0f0c0c00  exp.f.rn r24, r24
001154  8f8c0c00  exp.f.rn r25, r25
001158  0f0d0d00  exp.f.rn r26, r26
00115c  67081900  storeli.w r1, 128(r18)
001160  67483900  storeli.w r3, 132(r18)
001164  e7085900  storeli.w r5, 136(r18)
001168  e7488900  storeli.w r8, 140(r18)
00116c  67099900  storeli.w r9, 144(r18)
001170  6749b900  storeli.w r11, 148(r18)
001174  e709c900  storeli.w r12, 152(r18)
001178  e749d900  storeli.w r13, 156(r18)
00117c  670ae900  storeli.w r14, 160(r18)
001180  674a0901  storeli.w r16, 164(r18)
001184  e70a5901  storeli.w r21, 168(r18)
001188  e74a6901  storeli.w r22, 172(r18)
00118c  670b7901  storeli.w r23, 176(r18)
001190  674b8901  storeli.w r24, 180(r18)
001194  e70b9901  storeli.w r25, 184(r18)
001198  e74ba901  storeli.w r26, 188(r18)
00119c  e3008901  loadli.w r1,  192(r18)
0011a0  e3418901  loadli.w r3,  196(r18)
0011a4  e3029901  loadli.w r5,  200(r18)
0011a8  63449901  loadli.w r8,  204(r18)
0011ac  e304a901  loadli.w r9,  208(r18)
0011b0  e345a901  loadli.w r11,  212(r18)
0011b4  6306b901  loadli.w r12,  216(r18)
0011b8  e346b901  loadli.w r13,  220(r18)
0011bc  6307c901  loadli.w r14,  224(r18)
0011c0  6348c901  loadli.w r16,  228(r18)
0011c4  e30ad901  loadli.w r21,  232(r18)
0011c8  634bd901  loadli.w r22,  236(r18)
0011cc  e30be901  loadli.w r23,  240(r18)
0011d0  634ce901  loadli.w r24,  244(r18)
0011d4  e30cf901  loadli.w r25,  248(r18)
0011d8  634df901  loadli.w r26,  252(r18)
0011dc  8f800000  exp.f.rn r1, r1
0011e0  8f810100  exp.f.rn r3, r3
0011e4  8f820200  exp.f.rn r5, r5
0011e8  0f040400  exp.f.rn r8, r8
0011ec  8f840400  exp.f.rn r9, r9
0011f0  8f850500  exp.f.rn r11, r11
0011f4  0f060600  exp.f.rn r12, r12
0011f8  8f860600  exp.f.rn r13, r13
0011fc  0f070700  exp.f.rn r14, r14
001200  0f080800  exp.f.rn r16, r16
001204  8f8a0a00  exp.f.rn r21, r21
001208  0f0b0b00  exp.f.rn r22, r22
00120c  8f8b0b00  exp.f.rn r23, r23
001210  0f0c0c00  exp.f.rn r24, r24
001214  8f8c0c00  exp.f.rn r25, r25
001218  0f0d0d00  exp.f.rn r26, r26
00121c  670c1900  storeli.w r1, 192(r18)
001220  674c3900  storeli.w r3, 196(r18)
001224  e70c5900  storeli.w r5, 200(r18)
001228  e74c8900  storeli.w r8, 204(r18)
00122c  670d9900  storeli.w r9, 208(r18)
001230  674db900  storeli.w r11, 212(r18)
001234  e70dc900  storeli.w r12, 216(r18)
001238  e74dd900  storeli.w r13, 220(r18)
00123c  670ee900  storeli.w r14, 224(r18)
001240  674e0901  storeli.w r16, 228(r18)
001244  e70e5901  storeli.w r21, 232(r18)
001248  e74e6901  storeli.w r22, 236(r18)
00124c  670f7901  storeli.w r23, 240(r18)
001250  674f8901  storeli.w r24, 244(r18)
001254  e70f9901  storeli.w r25, 248(r18)
001258  e74fa901  storeli.w r26, 252(r18)
00125c  00a00000  mfence { lm }
001260  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001264  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
001268  9f008fec  addli r1, r30, -2496
00126c  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001270  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
001274  9f000fe7  addli r1, r30, -3200
001278  c2118fe2  vload_mask16.mz vr3{mr1}, 1856(r30)
00127c  42110fe3  vload_mask16.mz vr2{mr1}, 1920(r30)
001280  42138fe3  vload_mask16.mz vr6{mr1}, 1984(r30)
001284  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001288  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00128c  9f000fe0  addli r1, r30, -4096
001290  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
001294  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001298  9f008fe0  addli r1, r30, -4032
00129c  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0012a0  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
0012a4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0012a8  9f008fe1  addli r1, r30, -3904
0012ac  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0012b0  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0012b4  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0012b8  9f008fed  addli r1, r30, -2368
0012bc  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
0012c0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0012c4  9f000fe2  addli r1, r30, -3840
0012c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0012cc  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0012d0  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0012d4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0012d8  9f008fe2  addli r1, r30, -3776
0012dc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0012e0  00a00000  mfence { lm }
0012e4  e3000900  loadli.w r1,  0(r18)
0012e8  e3410900  loadli.w r3,  4(r18)
0012ec  e3021900  loadli.w r5,  8(r18)
0012f0  63441900  loadli.w r8,  12(r18)
0012f4  e3042900  loadli.w r9,  16(r18)
0012f8  e3452900  loadli.w r11,  20(r18)
0012fc  63063900  loadli.w r12,  24(r18)
001300  e3463900  loadli.w r13,  28(r18)
001304  63074900  loadli.w r14,  32(r18)
001308  63484900  loadli.w r16,  36(r18)
00130c  e30a5900  loadli.w r21,  40(r18)
001310  634b5900  loadli.w r22,  44(r18)
001314  e30b6900  loadli.w r23,  48(r18)
001318  634c6900  loadli.w r24,  52(r18)
00131c  e30c7900  loadli.w r25,  56(r18)
001320  634d7900  loadli.w r26,  60(r18)
001324  8f800000  exp.f.rn r1, r1
001328  8f810100  exp.f.rn r3, r3
00132c  8f820200  exp.f.rn r5, r5
001330  0f040400  exp.f.rn r8, r8
001334  8f840400  exp.f.rn r9, r9
001338  8f850500  exp.f.rn r11, r11
00133c  0f060600  exp.f.rn r12, r12
001340  8f860600  exp.f.rn r13, r13
001344  0f070700  exp.f.rn r14, r14
001348  0f080800  exp.f.rn r16, r16
00134c  8f8a0a00  exp.f.rn r21, r21
001350  0f0b0b00  exp.f.rn r22, r22
001354  8f8b0b00  exp.f.rn r23, r23
001358  0f0c0c00  exp.f.rn r24, r24
00135c  8f8c0c00  exp.f.rn r25, r25
001360  0f0d0d00  exp.f.rn r26, r26
001364  67001900  storeli.w r1, 0(r18)
001368  67403900  storeli.w r3, 4(r18)
00136c  e7005900  storeli.w r5, 8(r18)
001370  e7408900  storeli.w r8, 12(r18)
001374  67019900  storeli.w r9, 16(r18)
001378  6741b900  storeli.w r11, 20(r18)
00137c  e701c900  storeli.w r12, 24(r18)
001380  e741d900  storeli.w r13, 28(r18)
001384  6702e900  storeli.w r14, 32(r18)
001388  67420901  storeli.w r16, 36(r18)
00138c  e7025901  storeli.w r21, 40(r18)
001390  e7426901  storeli.w r22, 44(r18)
001394  67037901  storeli.w r23, 48(r18)
001398  67438901  storeli.w r24, 52(r18)
00139c  e7039901  storeli.w r25, 56(r18)
0013a0  e743a901  storeli.w r26, 60(r18)
0013a4  e3008900  loadli.w r1,  64(r18)
0013a8  e3418900  loadli.w r3,  68(r18)
0013ac  e3029900  loadli.w r5,  72(r18)
0013b0  63449900  loadli.w r8,  76(r18)
0013b4  e304a900  loadli.w r9,  80(r18)
0013b8  e345a900  loadli.w r11,  84(r18)
0013bc  6306b900  loadli.w r12,  88(r18)
0013c0  e346b900  loadli.w r13,  92(r18)
0013c4  6307c900  loadli.w r14,  96(r18)
0013c8  6348c900  loadli.w r16,  100(r18)
0013cc  e30ad900  loadli.w r21,  104(r18)
0013d0  634bd900  loadli.w r22,  108(r18)
0013d4  e30be900  loadli.w r23,  112(r18)
0013d8  634ce900  loadli.w r24,  116(r18)
0013dc  e30cf900  loadli.w r25,  120(r18)
0013e0  634df900  loadli.w r26,  124(r18)
0013e4  8f800000  exp.f.rn r1, r1
0013e8  8f810100  exp.f.rn r3, r3
0013ec  8f820200  exp.f.rn r5, r5
0013f0  0f040400  exp.f.rn r8, r8
0013f4  8f840400  exp.f.rn r9, r9
0013f8  8f850500  exp.f.rn r11, r11
0013fc  0f060600  exp.f.rn r12, r12
001400  8f860600  exp.f.rn r13, r13
001404  0f070700  exp.f.rn r14, r14
001408  0f080800  exp.f.rn r16, r16
00140c  8f8a0a00  exp.f.rn r21, r21
001410  0f0b0b00  exp.f.rn r22, r22
001414  8f8b0b00  exp.f.rn r23, r23
001418  0f0c0c00  exp.f.rn r24, r24
00141c  8f8c0c00  exp.f.rn r25, r25
001420  0f0d0d00  exp.f.rn r26, r26
001424  67041900  storeli.w r1, 64(r18)
001428  67443900  storeli.w r3, 68(r18)
00142c  e7045900  storeli.w r5, 72(r18)
001430  e7448900  storeli.w r8, 76(r18)
001434  67059900  storeli.w r9, 80(r18)
001438  6745b900  storeli.w r11, 84(r18)
00143c  e705c900  storeli.w r12, 88(r18)
001440  e745d900  storeli.w r13, 92(r18)
001444  6706e900  storeli.w r14, 96(r18)
001448  67460901  storeli.w r16, 100(r18)
00144c  e7065901  storeli.w r21, 104(r18)
001450  e7466901  storeli.w r22, 108(r18)
001454  67077901  storeli.w r23, 112(r18)
001458  67478901  storeli.w r24, 116(r18)
00145c  e7079901  storeli.w r25, 120(r18)
001460  e747a901  storeli.w r26, 124(r18)
001464  e3000901  loadli.w r1,  128(r18)
001468  e3410901  loadli.w r3,  132(r18)
00146c  e3021901  loadli.w r5,  136(r18)
001470  63441901  loadli.w r8,  140(r18)
001474  e3042901  loadli.w r9,  144(r18)
001478  e3452901  loadli.w r11,  148(r18)
00147c  63063901  loadli.w r12,  152(r18)
001480  e3463901  loadli.w r13,  156(r18)
001484  63074901  loadli.w r14,  160(r18)
001488  63484901  loadli.w r16,  164(r18)
00148c  e30a5901  loadli.w r21,  168(r18)
001490  634b5901  loadli.w r22,  172(r18)
001494  e30b6901  loadli.w r23,  176(r18)
001498  634c6901  loadli.w r24,  180(r18)
00149c  e30c7901  loadli.w r25,  184(r18)
0014a0  634d7901  loadli.w r26,  188(r18)
0014a4  8f800000  exp.f.rn r1, r1
0014a8  8f810100  exp.f.rn r3, r3
0014ac  8f820200  exp.f.rn r5, r5
0014b0  0f040400  exp.f.rn r8, r8
0014b4  8f840400  exp.f.rn r9, r9
0014b8  8f850500  exp.f.rn r11, r11
0014bc  0f060600  exp.f.rn r12, r12
0014c0  8f860600  exp.f.rn r13, r13
0014c4  0f070700  exp.f.rn r14, r14
0014c8  0f080800  exp.f.rn r16, r16
0014cc  8f8a0a00  exp.f.rn r21, r21
0014d0  0f0b0b00  exp.f.rn r22, r22
0014d4  8f8b0b00  exp.f.rn r23, r23
0014d8  0f0c0c00  exp.f.rn r24, r24
0014dc  8f8c0c00  exp.f.rn r25, r25
0014e0  0f0d0d00  exp.f.rn r26, r26
0014e4  67081900  storeli.w r1, 128(r18)
0014e8  67483900  storeli.w r3, 132(r18)
0014ec  e7085900  storeli.w r5, 136(r18)
0014f0  e7488900  storeli.w r8, 140(r18)
0014f4  67099900  storeli.w r9, 144(r18)
0014f8  6749b900  storeli.w r11, 148(r18)
0014fc  e709c900  storeli.w r12, 152(r18)
001500  e749d900  storeli.w r13, 156(r18)
001504  670ae900  storeli.w r14, 160(r18)
001508  674a0901  storeli.w r16, 164(r18)
00150c  e70a5901  storeli.w r21, 168(r18)
001510  e74a6901  storeli.w r22, 172(r18)
001514  670b7901  storeli.w r23, 176(r18)
001518  674b8901  storeli.w r24, 180(r18)
00151c  e70b9901  storeli.w r25, 184(r18)
001520  e74ba901  storeli.w r26, 188(r18)
001524  e3008901  loadli.w r1,  192(r18)
001528  e3418901  loadli.w r3,  196(r18)
00152c  e3029901  loadli.w r5,  200(r18)
001530  63449901  loadli.w r8,  204(r18)
001534  e304a901  loadli.w r9,  208(r18)
001538  e345a901  loadli.w r11,  212(r18)
00153c  6306b901  loadli.w r12,  216(r18)
001540  e346b901  loadli.w r13,  220(r18)
001544  6307c901  loadli.w r14,  224(r18)
001548  6348c901  loadli.w r16,  228(r18)
00154c  e30ad901  loadli.w r21,  232(r18)
001550  634bd901  loadli.w r22,  236(r18)
001554  e30be901  loadli.w r23,  240(r18)
001558  634ce901  loadli.w r24,  244(r18)
00155c  e30cf901  loadli.w r25,  248(r18)
001560  634df901  loadli.w r26,  252(r18)
001564  8f800000  exp.f.rn r1, r1
001568  8f810100  exp.f.rn r3, r3
00156c  8f820200  exp.f.rn r5, r5
001570  0f040400  exp.f.rn r8, r8
001574  8f840400  exp.f.rn r9, r9
001578  8f850500  exp.f.rn r11, r11
00157c  0f060600  exp.f.rn r12, r12
001580  8f860600  exp.f.rn r13, r13
001584  0f070700  exp.f.rn r14, r14
001588  0f080800  exp.f.rn r16, r16
00158c  8f8a0a00  exp.f.rn r21, r21
001590  0f0b0b00  exp.f.rn r22, r22
001594  8f8b0b00  exp.f.rn r23, r23
001598  0f0c0c00  exp.f.rn r24, r24
00159c  8f8c0c00  exp.f.rn r25, r25
0015a0  0f0d0d00  exp.f.rn r26, r26
0015a4  670c1900  storeli.w r1, 192(r18)
0015a8  674c3900  storeli.w r3, 196(r18)
0015ac  e70c5900  storeli.w r5, 200(r18)
0015b0  e74c8900  storeli.w r8, 204(r18)
0015b4  670d9900  storeli.w r9, 208(r18)
0015b8  674db900  storeli.w r11, 212(r18)
0015bc  e70dc900  storeli.w r12, 216(r18)
0015c0  e74dd900  storeli.w r13, 220(r18)
0015c4  670ee900  storeli.w r14, 224(r18)
0015c8  674e0901  storeli.w r16, 228(r18)
0015cc  e70e5901  storeli.w r21, 232(r18)
0015d0  e74e6901  storeli.w r22, 236(r18)
0015d4  670f7901  storeli.w r23, 240(r18)
0015d8  674f8901  storeli.w r24, 244(r18)
0015dc  e70f9901  storeli.w r25, 248(r18)
0015e0  e74fa901  storeli.w r26, 252(r18)
0015e4  00a00000  mfence { lm }
0015e8  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
0015ec  42140fe2  vload_mask16.mz vr8{mr1}, 1792(r30)
0015f0  9f008fed  addli r1, r30, -2368
0015f4  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0015f8  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0015fc  9f008fe2  addli r1, r30, -3776
001600  c2158fe2  vload_mask16.mz vr11{mr1}, 1856(r30)
001604  c2130fe3  vload_mask16.mz vr7{mr1}, 1920(r30)
001608  c2128fe3  vload_mask16.mz vr5{mr1}, 1984(r30)
00160c  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001610  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
001614  9f000fe1  addli r1, r30, -3968
001618  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
00161c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001620  9f000fed  addli r1, r30, -2432
001624  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001628  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
00162c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001630  9f000fe3  addli r1, r30, -3712
001634  1610b002  vadd.f.mz.rn vr0{mr1}, vr0, vr11
001638  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
00163c  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001640  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001644  9f000fe5  addli r1, r30, -3456
001648  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
00164c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001650  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
001654  9f008feb  addli r1, r30, -2624
001658  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
00165c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001660  00a00000  mfence { lm }
001664  e3000900  loadli.w r1,  0(r18)
001668  e3410900  loadli.w r3,  4(r18)
00166c  e3021900  loadli.w r5,  8(r18)
001670  63441900  loadli.w r8,  12(r18)
001674  e3042900  loadli.w r9,  16(r18)
001678  e3452900  loadli.w r11,  20(r18)
00167c  63063900  loadli.w r12,  24(r18)
001680  e3463900  loadli.w r13,  28(r18)
001684  63074900  loadli.w r14,  32(r18)
001688  63484900  loadli.w r16,  36(r18)
00168c  e30a5900  loadli.w r21,  40(r18)
001690  634b5900  loadli.w r22,  44(r18)
001694  e30b6900  loadli.w r23,  48(r18)
001698  634c6900  loadli.w r24,  52(r18)
00169c  e30c7900  loadli.w r25,  56(r18)
0016a0  634d7900  loadli.w r26,  60(r18)
0016a4  8f800000  exp.f.rn r1, r1
0016a8  8f810100  exp.f.rn r3, r3
0016ac  8f820200  exp.f.rn r5, r5
0016b0  0f040400  exp.f.rn r8, r8
0016b4  8f840400  exp.f.rn r9, r9
0016b8  8f850500  exp.f.rn r11, r11
0016bc  0f060600  exp.f.rn r12, r12
0016c0  8f860600  exp.f.rn r13, r13
0016c4  0f070700  exp.f.rn r14, r14
0016c8  0f080800  exp.f.rn r16, r16
0016cc  8f8a0a00  exp.f.rn r21, r21
0016d0  0f0b0b00  exp.f.rn r22, r22
0016d4  8f8b0b00  exp.f.rn r23, r23
0016d8  0f0c0c00  exp.f.rn r24, r24
0016dc  8f8c0c00  exp.f.rn r25, r25
0016e0  0f0d0d00  exp.f.rn r26, r26
0016e4  67001900  storeli.w r1, 0(r18)
0016e8  67403900  storeli.w r3, 4(r18)
0016ec  e7005900  storeli.w r5, 8(r18)
0016f0  e7408900  storeli.w r8, 12(r18)
0016f4  67019900  storeli.w r9, 16(r18)
0016f8  6741b900  storeli.w r11, 20(r18)
0016fc  e701c900  storeli.w r12, 24(r18)
001700  e741d900  storeli.w r13, 28(r18)
001704  6702e900  storeli.w r14, 32(r18)
001708  67420901  storeli.w r16, 36(r18)
00170c  e7025901  storeli.w r21, 40(r18)
001710  e7426901  storeli.w r22, 44(r18)
001714  67037901  storeli.w r23, 48(r18)
001718  67438901  storeli.w r24, 52(r18)
00171c  e7039901  storeli.w r25, 56(r18)
001720  e743a901  storeli.w r26, 60(r18)
001724  e3008900  loadli.w r1,  64(r18)
001728  e3418900  loadli.w r3,  68(r18)
00172c  e3029900  loadli.w r5,  72(r18)
001730  63449900  loadli.w r8,  76(r18)
001734  e304a900  loadli.w r9,  80(r18)
001738  e345a900  loadli.w r11,  84(r18)
00173c  6306b900  loadli.w r12,  88(r18)
001740  e346b900  loadli.w r13,  92(r18)
001744  6307c900  loadli.w r14,  96(r18)
001748  6348c900  loadli.w r16,  100(r18)
00174c  e30ad900  loadli.w r21,  104(r18)
001750  634bd900  loadli.w r22,  108(r18)
001754  e30be900  loadli.w r23,  112(r18)
001758  634ce900  loadli.w r24,  116(r18)
00175c  e30cf900  loadli.w r25,  120(r18)
001760  634df900  loadli.w r26,  124(r18)
001764  8f800000  exp.f.rn r1, r1
001768  8f810100  exp.f.rn r3, r3
00176c  8f820200  exp.f.rn r5, r5
001770  0f040400  exp.f.rn r8, r8
001774  8f840400  exp.f.rn r9, r9
001778  8f850500  exp.f.rn r11, r11
00177c  0f060600  exp.f.rn r12, r12
001780  8f860600  exp.f.rn r13, r13
001784  0f070700  exp.f.rn r14, r14
001788  0f080800  exp.f.rn r16, r16
00178c  8f8a0a00  exp.f.rn r21, r21
001790  0f0b0b00  exp.f.rn r22, r22
001794  8f8b0b00  exp.f.rn r23, r23
001798  0f0c0c00  exp.f.rn r24, r24
00179c  8f8c0c00  exp.f.rn r25, r25
0017a0  0f0d0d00  exp.f.rn r26, r26
0017a4  67041900  storeli.w r1, 64(r18)
0017a8  67443900  storeli.w r3, 68(r18)
0017ac  e7045900  storeli.w r5, 72(r18)
0017b0  e7448900  storeli.w r8, 76(r18)
0017b4  67059900  storeli.w r9, 80(r18)
0017b8  6745b900  storeli.w r11, 84(r18)
0017bc  e705c900  storeli.w r12, 88(r18)
0017c0  e745d900  storeli.w r13, 92(r18)
0017c4  6706e900  storeli.w r14, 96(r18)
0017c8  67460901  storeli.w r16, 100(r18)
0017cc  e7065901  storeli.w r21, 104(r18)
0017d0  e7466901  storeli.w r22, 108(r18)
0017d4  67077901  storeli.w r23, 112(r18)
0017d8  67478901  storeli.w r24, 116(r18)
0017dc  e7079901  storeli.w r25, 120(r18)
0017e0  e747a901  storeli.w r26, 124(r18)
0017e4  e3000901  loadli.w r1,  128(r18)
0017e8  e3410901  loadli.w r3,  132(r18)
0017ec  e3021901  loadli.w r5,  136(r18)
0017f0  63441901  loadli.w r8,  140(r18)
0017f4  e3042901  loadli.w r9,  144(r18)
0017f8  e3452901  loadli.w r11,  148(r18)
0017fc  63063901  loadli.w r12,  152(r18)
001800  e3463901  loadli.w r13,  156(r18)
001804  63074901  loadli.w r14,  160(r18)
001808  63484901  loadli.w r16,  164(r18)
00180c  e30a5901  loadli.w r21,  168(r18)
001810  634b5901  loadli.w r22,  172(r18)
001814  e30b6901  loadli.w r23,  176(r18)
001818  634c6901  loadli.w r24,  180(r18)
00181c  e30c7901  loadli.w r25,  184(r18)
001820  634d7901  loadli.w r26,  188(r18)
001824  8f800000  exp.f.rn r1, r1
001828  8f810100  exp.f.rn r3, r3
00182c  8f820200  exp.f.rn r5, r5
001830  0f040400  exp.f.rn r8, r8
001834  8f840400  exp.f.rn r9, r9
001838  8f850500  exp.f.rn r11, r11
00183c  0f060600  exp.f.rn r12, r12
001840  8f860600  exp.f.rn r13, r13
001844  0f070700  exp.f.rn r14, r14
001848  0f080800  exp.f.rn r16, r16
00184c  8f8a0a00  exp.f.rn r21, r21
001850  0f0b0b00  exp.f.rn r22, r22
001854  8f8b0b00  exp.f.rn r23, r23
001858  0f0c0c00  exp.f.rn r24, r24
00185c  8f8c0c00  exp.f.rn r25, r25
001860  0f0d0d00  exp.f.rn r26, r26
001864  67081900  storeli.w r1, 128(r18)
001868  67483900  storeli.w r3, 132(r18)
00186c  e7085900  storeli.w r5, 136(r18)
001870  e7488900  storeli.w r8, 140(r18)
001874  67099900  storeli.w r9, 144(r18)
001878  6749b900  storeli.w r11, 148(r18)
00187c  e709c900  storeli.w r12, 152(r18)
001880  e749d900  storeli.w r13, 156(r18)
001884  670ae900  storeli.w r14, 160(r18)
001888  674a0901  storeli.w r16, 164(r18)
00188c  e70a5901  storeli.w r21, 168(r18)
001890  e74a6901  storeli.w r22, 172(r18)
001894  670b7901  storeli.w r23, 176(r18)
001898  674b8901  storeli.w r24, 180(r18)
00189c  e70b9901  storeli.w r25, 184(r18)
0018a0  e74ba901  storeli.w r26, 188(r18)
0018a4  e3008901  loadli.w r1,  192(r18)
0018a8  e3418901  loadli.w r3,  196(r18)
0018ac  e3029901  loadli.w r5,  200(r18)
0018b0  63449901  loadli.w r8,  204(r18)
0018b4  e304a901  loadli.w r9,  208(r18)
0018b8  e345a901  loadli.w r11,  212(r18)
0018bc  6306b901  loadli.w r12,  216(r18)
0018c0  e346b901  loadli.w r13,  220(r18)
0018c4  6307c901  loadli.w r14,  224(r18)
0018c8  6348c901  loadli.w r16,  228(r18)
0018cc  e30ad901  loadli.w r21,  232(r18)
0018d0  634bd901  loadli.w r22,  236(r18)
0018d4  e30be901  loadli.w r23,  240(r18)
0018d8  634ce901  loadli.w r24,  244(r18)
0018dc  e30cf901  loadli.w r25,  248(r18)
0018e0  634df901  loadli.w r26,  252(r18)
0018e4  8f800000  exp.f.rn r1, r1
0018e8  8f810100  exp.f.rn r3, r3
0018ec  8f820200  exp.f.rn r5, r5
0018f0  0f040400  exp.f.rn r8, r8
0018f4  8f840400  exp.f.rn r9, r9
0018f8  8f850500  exp.f.rn r11, r11
0018fc  0f060600  exp.f.rn r12, r12
001900  8f860600  exp.f.rn r13, r13
001904  0f070700  exp.f.rn r14, r14
001908  0f080800  exp.f.rn r16, r16
00190c  8f8a0a00  exp.f.rn r21, r21
001910  0f0b0b00  exp.f.rn r22, r22
001914  8f8b0b00  exp.f.rn r23, r23
001918  0f0c0c00  exp.f.rn r24, r24
00191c  8f8c0c00  exp.f.rn r25, r25
001920  0f0d0d00  exp.f.rn r26, r26
001924  670c1900  storeli.w r1, 192(r18)
001928  674c3900  storeli.w r3, 196(r18)
00192c  e70c5900  storeli.w r5, 200(r18)
001930  e74c8900  storeli.w r8, 204(r18)
001934  670d9900  storeli.w r9, 208(r18)
001938  674db900  storeli.w r11, 212(r18)
00193c  e70dc900  storeli.w r12, 216(r18)
001940  e74dd900  storeli.w r13, 220(r18)
001944  670ee900  storeli.w r14, 224(r18)
001948  674e0901  storeli.w r16, 228(r18)
00194c  e70e5901  storeli.w r21, 232(r18)
001950  e74e6901  storeli.w r22, 236(r18)
001954  670f7901  storeli.w r23, 240(r18)
001958  674f8901  storeli.w r24, 244(r18)
00195c  e70f9901  storeli.w r25, 248(r18)
001960  e74fa901  storeli.w r26, 252(r18)
001964  00a00000  mfence { lm }
001968  42130fe2  vload_mask16.mz vr6{mr1}, 1792(r30)
00196c  9f000fed  addli r1, r30, -2432
001970  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001974  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
001978  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00197c  9f008fe3  addli r1, r30, -3648
001980  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
001984  c2120fe3  vload_mask16.mz vr5{mr1}, 1920(r30)
001988  42148fe3  vload_mask16.mz vr8{mr1}, 1984(r30)
00198c  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001990  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001994  9f000fe4  addli r1, r30, -3584
001998  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
00199c  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
0019a0  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
0019a4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0019a8  9f000feb  addli r1, r30, -2688
0019ac  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0019b0  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
0019b4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0019b8  9f008fea  addli r1, r30, -2752
0019bc  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0019c0  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0019c4  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0019c8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0019cc  00a00000  mfence { lm }
0019d0  e3000900  loadli.w r1,  0(r18)
0019d4  e3410900  loadli.w r3,  4(r18)
0019d8  e3021900  loadli.w r5,  8(r18)
0019dc  63441900  loadli.w r8,  12(r18)
0019e0  e3042900  loadli.w r9,  16(r18)
0019e4  e3452900  loadli.w r11,  20(r18)
0019e8  63063900  loadli.w r12,  24(r18)
0019ec  e3463900  loadli.w r13,  28(r18)
0019f0  63074900  loadli.w r14,  32(r18)
0019f4  63484900  loadli.w r16,  36(r18)
0019f8  e30a5900  loadli.w r21,  40(r18)
0019fc  634b5900  loadli.w r22,  44(r18)
001a00  e30b6900  loadli.w r23,  48(r18)
001a04  634c6900  loadli.w r24,  52(r18)
001a08  e30c7900  loadli.w r25,  56(r18)
001a0c  634d7900  loadli.w r26,  60(r18)
001a10  8f800000  exp.f.rn r1, r1
001a14  8f810100  exp.f.rn r3, r3
001a18  8f820200  exp.f.rn r5, r5
001a1c  0f040400  exp.f.rn r8, r8
001a20  8f840400  exp.f.rn r9, r9
001a24  8f850500  exp.f.rn r11, r11
001a28  0f060600  exp.f.rn r12, r12
001a2c  8f860600  exp.f.rn r13, r13
001a30  0f070700  exp.f.rn r14, r14
001a34  0f080800  exp.f.rn r16, r16
001a38  8f8a0a00  exp.f.rn r21, r21
001a3c  0f0b0b00  exp.f.rn r22, r22
001a40  8f8b0b00  exp.f.rn r23, r23
001a44  0f0c0c00  exp.f.rn r24, r24
001a48  8f8c0c00  exp.f.rn r25, r25
001a4c  0f0d0d00  exp.f.rn r26, r26
001a50  67001900  storeli.w r1, 0(r18)
001a54  67403900  storeli.w r3, 4(r18)
001a58  e7005900  storeli.w r5, 8(r18)
001a5c  e7408900  storeli.w r8, 12(r18)
001a60  67019900  storeli.w r9, 16(r18)
001a64  6741b900  storeli.w r11, 20(r18)
001a68  e701c900  storeli.w r12, 24(r18)
001a6c  e741d900  storeli.w r13, 28(r18)
001a70  6702e900  storeli.w r14, 32(r18)
001a74  67420901  storeli.w r16, 36(r18)
001a78  e7025901  storeli.w r21, 40(r18)
001a7c  e7426901  storeli.w r22, 44(r18)
001a80  67037901  storeli.w r23, 48(r18)
001a84  67438901  storeli.w r24, 52(r18)
001a88  e7039901  storeli.w r25, 56(r18)
001a8c  e743a901  storeli.w r26, 60(r18)
001a90  e3008900  loadli.w r1,  64(r18)
001a94  e3418900  loadli.w r3,  68(r18)
001a98  e3029900  loadli.w r5,  72(r18)
001a9c  63449900  loadli.w r8,  76(r18)
001aa0  e304a900  loadli.w r9,  80(r18)
001aa4  e345a900  loadli.w r11,  84(r18)
001aa8  6306b900  loadli.w r12,  88(r18)
001aac  e346b900  loadli.w r13,  92(r18)
001ab0  6307c900  loadli.w r14,  96(r18)
001ab4  6348c900  loadli.w r16,  100(r18)
001ab8  e30ad900  loadli.w r21,  104(r18)
001abc  634bd900  loadli.w r22,  108(r18)
001ac0  e30be900  loadli.w r23,  112(r18)
001ac4  634ce900  loadli.w r24,  116(r18)
001ac8  e30cf900  loadli.w r25,  120(r18)
001acc  634df900  loadli.w r26,  124(r18)
001ad0  8f800000  exp.f.rn r1, r1
001ad4  8f810100  exp.f.rn r3, r3
001ad8  8f820200  exp.f.rn r5, r5
001adc  0f040400  exp.f.rn r8, r8
001ae0  8f840400  exp.f.rn r9, r9
001ae4  8f850500  exp.f.rn r11, r11
001ae8  0f060600  exp.f.rn r12, r12
001aec  8f860600  exp.f.rn r13, r13
001af0  0f070700  exp.f.rn r14, r14
001af4  0f080800  exp.f.rn r16, r16
001af8  8f8a0a00  exp.f.rn r21, r21
001afc  0f0b0b00  exp.f.rn r22, r22
001b00  8f8b0b00  exp.f.rn r23, r23
001b04  0f0c0c00  exp.f.rn r24, r24
001b08  8f8c0c00  exp.f.rn r25, r25
001b0c  0f0d0d00  exp.f.rn r26, r26
001b10  67041900  storeli.w r1, 64(r18)
001b14  67443900  storeli.w r3, 68(r18)
001b18  e7045900  storeli.w r5, 72(r18)
001b1c  e7448900  storeli.w r8, 76(r18)
001b20  67059900  storeli.w r9, 80(r18)
001b24  6745b900  storeli.w r11, 84(r18)
001b28  e705c900  storeli.w r12, 88(r18)
001b2c  e745d900  storeli.w r13, 92(r18)
001b30  6706e900  storeli.w r14, 96(r18)
001b34  67460901  storeli.w r16, 100(r18)
001b38  e7065901  storeli.w r21, 104(r18)
001b3c  e7466901  storeli.w r22, 108(r18)
001b40  67077901  storeli.w r23, 112(r18)
001b44  67478901  storeli.w r24, 116(r18)
001b48  e7079901  storeli.w r25, 120(r18)
001b4c  e747a901  storeli.w r26, 124(r18)
001b50  e3000901  loadli.w r1,  128(r18)
001b54  e3410901  loadli.w r3,  132(r18)
001b58  e3021901  loadli.w r5,  136(r18)
001b5c  63441901  loadli.w r8,  140(r18)
001b60  e3042901  loadli.w r9,  144(r18)
001b64  e3452901  loadli.w r11,  148(r18)
001b68  63063901  loadli.w r12,  152(r18)
001b6c  e3463901  loadli.w r13,  156(r18)
001b70  63074901  loadli.w r14,  160(r18)
001b74  63484901  loadli.w r16,  164(r18)
001b78  e30a5901  loadli.w r21,  168(r18)
001b7c  634b5901  loadli.w r22,  172(r18)
001b80  e30b6901  loadli.w r23,  176(r18)
001b84  634c6901  loadli.w r24,  180(r18)
001b88  e30c7901  loadli.w r25,  184(r18)
001b8c  634d7901  loadli.w r26,  188(r18)
001b90  8f800000  exp.f.rn r1, r1
001b94  8f810100  exp.f.rn r3, r3
001b98  8f820200  exp.f.rn r5, r5
001b9c  0f040400  exp.f.rn r8, r8
001ba0  8f840400  exp.f.rn r9, r9
001ba4  8f850500  exp.f.rn r11, r11
001ba8  0f060600  exp.f.rn r12, r12
001bac  8f860600  exp.f.rn r13, r13
001bb0  0f070700  exp.f.rn r14, r14
001bb4  0f080800  exp.f.rn r16, r16
001bb8  8f8a0a00  exp.f.rn r21, r21
001bbc  0f0b0b00  exp.f.rn r22, r22
001bc0  8f8b0b00  exp.f.rn r23, r23
001bc4  0f0c0c00  exp.f.rn r24, r24
001bc8  8f8c0c00  exp.f.rn r25, r25
001bcc  0f0d0d00  exp.f.rn r26, r26
001bd0  67081900  storeli.w r1, 128(r18)
001bd4  67483900  storeli.w r3, 132(r18)
001bd8  e7085900  storeli.w r5, 136(r18)
001bdc  e7488900  storeli.w r8, 140(r18)
001be0  67099900  storeli.w r9, 144(r18)
001be4  6749b900  storeli.w r11, 148(r18)
001be8  e709c900  storeli.w r12, 152(r18)
001bec  e749d900  storeli.w r13, 156(r18)
001bf0  670ae900  storeli.w r14, 160(r18)
001bf4  674a0901  storeli.w r16, 164(r18)
001bf8  e70a5901  storeli.w r21, 168(r18)
001bfc  e74a6901  storeli.w r22, 172(r18)
001c00  670b7901  storeli.w r23, 176(r18)
001c04  674b8901  storeli.w r24, 180(r18)
001c08  e70b9901  storeli.w r25, 184(r18)
001c0c  e74ba901  storeli.w r26, 188(r18)
001c10  e3008901  loadli.w r1,  192(r18)
001c14  e3418901  loadli.w r3,  196(r18)
001c18  e3029901  loadli.w r5,  200(r18)
001c1c  63449901  loadli.w r8,  204(r18)
001c20  e304a901  loadli.w r9,  208(r18)
001c24  e345a901  loadli.w r11,  212(r18)
001c28  6306b901  loadli.w r12,  216(r18)
001c2c  e346b901  loadli.w r13,  220(r18)
001c30  6307c901  loadli.w r14,  224(r18)
001c34  6348c901  loadli.w r16,  228(r18)
001c38  e30ad901  loadli.w r21,  232(r18)
001c3c  634bd901  loadli.w r22,  236(r18)
001c40  e30be901  loadli.w r23,  240(r18)
001c44  634ce901  loadli.w r24,  244(r18)
001c48  e30cf901  loadli.w r25,  248(r18)
001c4c  634df901  loadli.w r26,  252(r18)
001c50  8f800000  exp.f.rn r1, r1
001c54  8f810100  exp.f.rn r3, r3
001c58  8f820200  exp.f.rn r5, r5
001c5c  0f040400  exp.f.rn r8, r8
001c60  8f840400  exp.f.rn r9, r9
001c64  8f850500  exp.f.rn r11, r11
001c68  0f060600  exp.f.rn r12, r12
001c6c  8f860600  exp.f.rn r13, r13
001c70  0f070700  exp.f.rn r14, r14
001c74  0f080800  exp.f.rn r16, r16
001c78  8f8a0a00  exp.f.rn r21, r21
001c7c  0f0b0b00  exp.f.rn r22, r22
001c80  8f8b0b00  exp.f.rn r23, r23
001c84  0f0c0c00  exp.f.rn r24, r24
001c88  8f8c0c00  exp.f.rn r25, r25
001c8c  0f0d0d00  exp.f.rn r26, r26
001c90  670c1900  storeli.w r1, 192(r18)
001c94  674c3900  storeli.w r3, 196(r18)
001c98  e70c5900  storeli.w r5, 200(r18)
001c9c  e74c8900  storeli.w r8, 204(r18)
001ca0  670d9900  storeli.w r9, 208(r18)
001ca4  674db900  storeli.w r11, 212(r18)
001ca8  e70dc900  storeli.w r12, 216(r18)
001cac  e74dd900  storeli.w r13, 220(r18)
001cb0  670ee900  storeli.w r14, 224(r18)
001cb4  674e0901  storeli.w r16, 228(r18)
001cb8  e70e5901  storeli.w r21, 232(r18)
001cbc  e74e6901  storeli.w r22, 236(r18)
001cc0  670f7901  storeli.w r23, 240(r18)
001cc4  674f8901  storeli.w r24, 244(r18)
001cc8  e70f9901  storeli.w r25, 248(r18)
001ccc  e74fa901  storeli.w r26, 252(r18)
001cd0  00a00000  mfence { lm }
001cd4  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
001cd8  9f008fea  addli r1, r30, -2752
001cdc  42158fe2  vload_mask16.mz vr10{mr1}, 1856(r30)
001ce0  42110fe3  vload_mask16.mz vr2{mr1}, 1920(r30)
001ce4  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001ce8  c2148fe3  vload_mask16.mz vr9{mr1}, 1984(r30)
001cec  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001cf0  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
001cf4  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
001cf8  9f008fe5  addli r1, r30, -3392
001cfc  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001d00  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001d04  9f008fe4  addli r1, r30, -3520
001d08  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001d0c  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001d10  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001d14  9f000fea  addli r1, r30, -2816
001d18  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
001d1c  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001d20  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
001d24  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001d28  9f008feb  addli r1, r30, -2624
001d2c  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
001d30  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001d34  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
001d38  9f008fe9  addli r1, r30, -2880
001d3c  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
001d40  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001d44  00a00000  mfence { lm }
001d48  e3000900  loadli.w r1,  0(r18)
001d4c  e3410900  loadli.w r3,  4(r18)
001d50  e3021900  loadli.w r5,  8(r18)
001d54  63441900  loadli.w r8,  12(r18)
001d58  e3042900  loadli.w r9,  16(r18)
001d5c  e3452900  loadli.w r11,  20(r18)
001d60  63063900  loadli.w r12,  24(r18)
001d64  e3463900  loadli.w r13,  28(r18)
001d68  63074900  loadli.w r14,  32(r18)
001d6c  63484900  loadli.w r16,  36(r18)
001d70  e30a5900  loadli.w r21,  40(r18)
001d74  634b5900  loadli.w r22,  44(r18)
001d78  e30b6900  loadli.w r23,  48(r18)
001d7c  634c6900  loadli.w r24,  52(r18)
001d80  e30c7900  loadli.w r25,  56(r18)
001d84  634d7900  loadli.w r26,  60(r18)
001d88  8f800000  exp.f.rn r1, r1
001d8c  8f810100  exp.f.rn r3, r3
001d90  8f820200  exp.f.rn r5, r5
001d94  0f040400  exp.f.rn r8, r8
001d98  8f840400  exp.f.rn r9, r9
001d9c  8f850500  exp.f.rn r11, r11
001da0  0f060600  exp.f.rn r12, r12
001da4  8f860600  exp.f.rn r13, r13
001da8  0f070700  exp.f.rn r14, r14
001dac  0f080800  exp.f.rn r16, r16
001db0  8f8a0a00  exp.f.rn r21, r21
001db4  0f0b0b00  exp.f.rn r22, r22
001db8  8f8b0b00  exp.f.rn r23, r23
001dbc  0f0c0c00  exp.f.rn r24, r24
001dc0  8f8c0c00  exp.f.rn r25, r25
001dc4  0f0d0d00  exp.f.rn r26, r26
001dc8  67001900  storeli.w r1, 0(r18)
001dcc  67403900  storeli.w r3, 4(r18)
001dd0  e7005900  storeli.w r5, 8(r18)
001dd4  e7408900  storeli.w r8, 12(r18)
001dd8  67019900  storeli.w r9, 16(r18)
001ddc  6741b900  storeli.w r11, 20(r18)
001de0  e701c900  storeli.w r12, 24(r18)
001de4  e741d900  storeli.w r13, 28(r18)
001de8  6702e900  storeli.w r14, 32(r18)
001dec  67420901  storeli.w r16, 36(r18)
001df0  e7025901  storeli.w r21, 40(r18)
001df4  e7426901  storeli.w r22, 44(r18)
001df8  67037901  storeli.w r23, 48(r18)
001dfc  67438901  storeli.w r24, 52(r18)
001e00  e7039901  storeli.w r25, 56(r18)
001e04  e743a901  storeli.w r26, 60(r18)
001e08  e3008900  loadli.w r1,  64(r18)
001e0c  e3418900  loadli.w r3,  68(r18)
001e10  e3029900  loadli.w r5,  72(r18)
001e14  63449900  loadli.w r8,  76(r18)
001e18  e304a900  loadli.w r9,  80(r18)
001e1c  e345a900  loadli.w r11,  84(r18)
001e20  6306b900  loadli.w r12,  88(r18)
001e24  e346b900  loadli.w r13,  92(r18)
001e28  6307c900  loadli.w r14,  96(r18)
001e2c  6348c900  loadli.w r16,  100(r18)
001e30  e30ad900  loadli.w r21,  104(r18)
001e34  634bd900  loadli.w r22,  108(r18)
001e38  e30be900  loadli.w r23,  112(r18)
001e3c  634ce900  loadli.w r24,  116(r18)
001e40  e30cf900  loadli.w r25,  120(r18)
001e44  634df900  loadli.w r26,  124(r18)
001e48  8f800000  exp.f.rn r1, r1
001e4c  8f810100  exp.f.rn r3, r3
001e50  8f820200  exp.f.rn r5, r5
001e54  0f040400  exp.f.rn r8, r8
001e58  8f840400  exp.f.rn r9, r9
001e5c  8f850500  exp.f.rn r11, r11
001e60  0f060600  exp.f.rn r12, r12
001e64  8f860600  exp.f.rn r13, r13
001e68  0f070700  exp.f.rn r14, r14
001e6c  0f080800  exp.f.rn r16, r16
001e70  8f8a0a00  exp.f.rn r21, r21
001e74  0f0b0b00  exp.f.rn r22, r22
001e78  8f8b0b00  exp.f.rn r23, r23
001e7c  0f0c0c00  exp.f.rn r24, r24
001e80  8f8c0c00  exp.f.rn r25, r25
001e84  0f0d0d00  exp.f.rn r26, r26
001e88  67041900  storeli.w r1, 64(r18)
001e8c  67443900  storeli.w r3, 68(r18)
001e90  e7045900  storeli.w r5, 72(r18)
001e94  e7448900  storeli.w r8, 76(r18)
001e98  67059900  storeli.w r9, 80(r18)
001e9c  6745b900  storeli.w r11, 84(r18)
001ea0  e705c900  storeli.w r12, 88(r18)
001ea4  e745d900  storeli.w r13, 92(r18)
001ea8  6706e900  storeli.w r14, 96(r18)
001eac  67460901  storeli.w r16, 100(r18)
001eb0  e7065901  storeli.w r21, 104(r18)
001eb4  e7466901  storeli.w r22, 108(r18)
001eb8  67077901  storeli.w r23, 112(r18)
001ebc  67478901  storeli.w r24, 116(r18)
001ec0  e7079901  storeli.w r25, 120(r18)
001ec4  e747a901  storeli.w r26, 124(r18)
001ec8  e3000901  loadli.w r1,  128(r18)
001ecc  e3410901  loadli.w r3,  132(r18)
001ed0  e3021901  loadli.w r5,  136(r18)
001ed4  63441901  loadli.w r8,  140(r18)
001ed8  e3042901  loadli.w r9,  144(r18)
001edc  e3452901  loadli.w r11,  148(r18)
001ee0  63063901  loadli.w r12,  152(r18)
001ee4  e3463901  loadli.w r13,  156(r18)
001ee8  63074901  loadli.w r14,  160(r18)
001eec  63484901  loadli.w r16,  164(r18)
001ef0  e30a5901  loadli.w r21,  168(r18)
001ef4  634b5901  loadli.w r22,  172(r18)
001ef8  e30b6901  loadli.w r23,  176(r18)
001efc  634c6901  loadli.w r24,  180(r18)
001f00  e30c7901  loadli.w r25,  184(r18)
001f04  634d7901  loadli.w r26,  188(r18)
001f08  8f800000  exp.f.rn r1, r1
001f0c  8f810100  exp.f.rn r3, r3
001f10  8f820200  exp.f.rn r5, r5
001f14  0f040400  exp.f.rn r8, r8
001f18  8f840400  exp.f.rn r9, r9
001f1c  8f850500  exp.f.rn r11, r11
001f20  0f060600  exp.f.rn r12, r12
001f24  8f860600  exp.f.rn r13, r13
001f28  0f070700  exp.f.rn r14, r14
001f2c  0f080800  exp.f.rn r16, r16
001f30  8f8a0a00  exp.f.rn r21, r21
001f34  0f0b0b00  exp.f.rn r22, r22
001f38  8f8b0b00  exp.f.rn r23, r23
001f3c  0f0c0c00  exp.f.rn r24, r24
001f40  8f8c0c00  exp.f.rn r25, r25
001f44  0f0d0d00  exp.f.rn r26, r26
001f48  67081900  storeli.w r1, 128(r18)
001f4c  67483900  storeli.w r3, 132(r18)
001f50  e7085900  storeli.w r5, 136(r18)
001f54  e7488900  storeli.w r8, 140(r18)
001f58  67099900  storeli.w r9, 144(r18)
001f5c  6749b900  storeli.w r11, 148(r18)
001f60  e709c900  storeli.w r12, 152(r18)
001f64  e749d900  storeli.w r13, 156(r18)
001f68  670ae900  storeli.w r14, 160(r18)
001f6c  674a0901  storeli.w r16, 164(r18)
001f70  e70a5901  storeli.w r21, 168(r18)
001f74  e74a6901  storeli.w r22, 172(r18)
001f78  670b7901  storeli.w r23, 176(r18)
001f7c  674b8901  storeli.w r24, 180(r18)
001f80  e70b9901  storeli.w r25, 184(r18)
001f84  e74ba901  storeli.w r26, 188(r18)
001f88  e3008901  loadli.w r1,  192(r18)
001f8c  e3418901  loadli.w r3,  196(r18)
001f90  e3029901  loadli.w r5,  200(r18)
001f94  63449901  loadli.w r8,  204(r18)
001f98  e304a901  loadli.w r9,  208(r18)
001f9c  e345a901  loadli.w r11,  212(r18)
001fa0  6306b901  loadli.w r12,  216(r18)
001fa4  e346b901  loadli.w r13,  220(r18)
001fa8  6307c901  loadli.w r14,  224(r18)
001fac  6348c901  loadli.w r16,  228(r18)
001fb0  e30ad901  loadli.w r21,  232(r18)
001fb4  634bd901  loadli.w r22,  236(r18)
001fb8  e30be901  loadli.w r23,  240(r18)
001fbc  634ce901  loadli.w r24,  244(r18)
001fc0  e30cf901  loadli.w r25,  248(r18)
001fc4  634df901  loadli.w r26,  252(r18)
001fc8  8f800000  exp.f.rn r1, r1
001fcc  8f810100  exp.f.rn r3, r3
001fd0  8f820200  exp.f.rn r5, r5
001fd4  0f040400  exp.f.rn r8, r8
001fd8  8f840400  exp.f.rn r9, r9
001fdc  8f850500  exp.f.rn r11, r11
001fe0  0f060600  exp.f.rn r12, r12
001fe4  8f860600  exp.f.rn r13, r13
001fe8  0f070700  exp.f.rn r14, r14
001fec  0f080800  exp.f.rn r16, r16
001ff0  8f8a0a00  exp.f.rn r21, r21
001ff4  0f0b0b00  exp.f.rn r22, r22
001ff8  8f8b0b00  exp.f.rn r23, r23
001ffc  0f0c0c00  exp.f.rn r24, r24
002000  8f8c0c00  exp.f.rn r25, r25
002004  0f0d0d00  exp.f.rn r26, r26
002008  670c1900  storeli.w r1, 192(r18)
00200c  674c3900  storeli.w r3, 196(r18)
002010  e70c5900  storeli.w r5, 200(r18)
002014  e74c8900  storeli.w r8, 204(r18)
002018  670d9900  storeli.w r9, 208(r18)
00201c  674db900  storeli.w r11, 212(r18)
002020  e70dc900  storeli.w r12, 216(r18)
002024  e74dd900  storeli.w r13, 220(r18)
002028  670ee900  storeli.w r14, 224(r18)
00202c  674e0901  storeli.w r16, 228(r18)
002030  e70e5901  storeli.w r21, 232(r18)
002034  e74e6901  storeli.w r22, 236(r18)
002038  670f7901  storeli.w r23, 240(r18)
00203c  674f8901  storeli.w r24, 244(r18)
002040  e70f9901  storeli.w r25, 248(r18)
002044  e74fa901  storeli.w r26, 252(r18)
002048  00a00000  mfence { lm }
00204c  9f000feb  addli r1, r30, -2688
002050  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002054  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002058  42110fe2  vload_mask16.mz vr2{mr1}, 1792(r30)
00205c  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
002060  9f000fea  addli r1, r30, -2816
002064  c2118fe2  vload_mask16.mz vr3{mr1}, 1856(r30)
002068  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
00206c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
002070  c2148fe3  vload_mask16.mz vr9{mr1}, 1984(r30)
002074  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
002078  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00207c  9f008fe6  addli r1, r30, -3264
002080  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002084  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002088  9f000fe6  addli r1, r30, -3328
00208c  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002090  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
002094  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002098  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00209c  9f008fde  addli r1, r30, -4288
0020a0  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0020a4  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
0020a8  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0020ac  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0020b0  9f008fe9  addli r1, r30, -2880
0020b4  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0020b8  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0020bc  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
0020c0  00a00000  mfence { lm }
0020c4  e3000900  loadli.w r1,  0(r18)
0020c8  e3410900  loadli.w r3,  4(r18)
0020cc  e3021900  loadli.w r5,  8(r18)
0020d0  63441900  loadli.w r8,  12(r18)
0020d4  e3042900  loadli.w r9,  16(r18)
0020d8  e3452900  loadli.w r11,  20(r18)
0020dc  63063900  loadli.w r12,  24(r18)
0020e0  e3463900  loadli.w r13,  28(r18)
0020e4  63074900  loadli.w r14,  32(r18)
0020e8  63484900  loadli.w r16,  36(r18)
0020ec  e3085900  loadli.w r17,  40(r18)
0020f0  e34a5900  loadli.w r21,  44(r18)
0020f4  630b6900  loadli.w r22,  48(r18)
0020f8  e34b6900  loadli.w r23,  52(r18)
0020fc  630c7900  loadli.w r24,  56(r18)
002100  e34c7900  loadli.w r25,  60(r18)
002104  8f800000  exp.f.rn r1, r1
002108  8f810100  exp.f.rn r3, r3
00210c  8f820200  exp.f.rn r5, r5
002110  0f040400  exp.f.rn r8, r8
002114  8f840400  exp.f.rn r9, r9
002118  8f850500  exp.f.rn r11, r11
00211c  0f060600  exp.f.rn r12, r12
002120  8f860600  exp.f.rn r13, r13
002124  0f070700  exp.f.rn r14, r14
002128  0f080800  exp.f.rn r16, r16
00212c  8f880800  exp.f.rn r17, r17
002130  8f8a0a00  exp.f.rn r21, r21
002134  0f0b0b00  exp.f.rn r22, r22
002138  8f8b0b00  exp.f.rn r23, r23
00213c  0f0c0c00  exp.f.rn r24, r24
002140  8f8c0c00  exp.f.rn r25, r25
002144  67001900  storeli.w r1, 0(r18)
002148  67403900  storeli.w r3, 4(r18)
00214c  e7005900  storeli.w r5, 8(r18)
002150  e7408900  storeli.w r8, 12(r18)
002154  67019900  storeli.w r9, 16(r18)
002158  6741b900  storeli.w r11, 20(r18)
00215c  e701c900  storeli.w r12, 24(r18)
002160  e741d900  storeli.w r13, 28(r18)
002164  6702e900  storeli.w r14, 32(r18)
002168  67420901  storeli.w r16, 36(r18)
00216c  e7021901  storeli.w r17, 40(r18)
002170  e7425901  storeli.w r21, 44(r18)
002174  67036901  storeli.w r22, 48(r18)
002178  67437901  storeli.w r23, 52(r18)
00217c  e7038901  storeli.w r24, 56(r18)
002180  e7439901  storeli.w r25, 60(r18)
002184  e3008900  loadli.w r1,  64(r18)
002188  e3418900  loadli.w r3,  68(r18)
00218c  e3029900  loadli.w r5,  72(r18)
002190  63449900  loadli.w r8,  76(r18)
002194  e304a900  loadli.w r9,  80(r18)
002198  e345a900  loadli.w r11,  84(r18)
00219c  6306b900  loadli.w r12,  88(r18)
0021a0  e346b900  loadli.w r13,  92(r18)
0021a4  6307c900  loadli.w r14,  96(r18)
0021a8  6348c900  loadli.w r16,  100(r18)
0021ac  e308d900  loadli.w r17,  104(r18)
0021b0  e34ad900  loadli.w r21,  108(r18)
0021b4  630be900  loadli.w r22,  112(r18)
0021b8  e34be900  loadli.w r23,  116(r18)
0021bc  630cf900  loadli.w r24,  120(r18)
0021c0  e34cf900  loadli.w r25,  124(r18)
0021c4  8f800000  exp.f.rn r1, r1
0021c8  8f810100  exp.f.rn r3, r3
0021cc  8f820200  exp.f.rn r5, r5
0021d0  0f040400  exp.f.rn r8, r8
0021d4  8f840400  exp.f.rn r9, r9
0021d8  8f850500  exp.f.rn r11, r11
0021dc  0f060600  exp.f.rn r12, r12
0021e0  8f860600  exp.f.rn r13, r13
0021e4  0f070700  exp.f.rn r14, r14
0021e8  0f080800  exp.f.rn r16, r16
0021ec  8f880800  exp.f.rn r17, r17
0021f0  8f8a0a00  exp.f.rn r21, r21
0021f4  0f0b0b00  exp.f.rn r22, r22
0021f8  8f8b0b00  exp.f.rn r23, r23
0021fc  0f0c0c00  exp.f.rn r24, r24
002200  8f8c0c00  exp.f.rn r25, r25
002204  67041900  storeli.w r1, 64(r18)
002208  67443900  storeli.w r3, 68(r18)
00220c  e7045900  storeli.w r5, 72(r18)
002210  e7448900  storeli.w r8, 76(r18)
002214  67059900  storeli.w r9, 80(r18)
002218  6745b900  storeli.w r11, 84(r18)
00221c  e705c900  storeli.w r12, 88(r18)
002220  e745d900  storeli.w r13, 92(r18)
002224  6706e900  storeli.w r14, 96(r18)
002228  67460901  storeli.w r16, 100(r18)
00222c  e7061901  storeli.w r17, 104(r18)
002230  e7465901  storeli.w r21, 108(r18)
002234  67076901  storeli.w r22, 112(r18)
002238  67477901  storeli.w r23, 116(r18)
00223c  e7078901  storeli.w r24, 120(r18)
002240  e7479901  storeli.w r25, 124(r18)
002244  e3000901  loadli.w r1,  128(r18)
002248  e3410901  loadli.w r3,  132(r18)
00224c  e3021901  loadli.w r5,  136(r18)
002250  63441901  loadli.w r8,  140(r18)
002254  e3042901  loadli.w r9,  144(r18)
002258  e3452901  loadli.w r11,  148(r18)
00225c  63063901  loadli.w r12,  152(r18)
002260  e3463901  loadli.w r13,  156(r18)
002264  63074901  loadli.w r14,  160(r18)
002268  63484901  loadli.w r16,  164(r18)
00226c  e3085901  loadli.w r17,  168(r18)
002270  e34a5901  loadli.w r21,  172(r18)
002274  630b6901  loadli.w r22,  176(r18)
002278  e34b6901  loadli.w r23,  180(r18)
00227c  630c7901  loadli.w r24,  184(r18)
002280  e34c7901  loadli.w r25,  188(r18)
002284  8f800000  exp.f.rn r1, r1
002288  8f810100  exp.f.rn r3, r3
00228c  8f820200  exp.f.rn r5, r5
002290  0f040400  exp.f.rn r8, r8
002294  8f840400  exp.f.rn r9, r9
002298  8f850500  exp.f.rn r11, r11
00229c  0f060600  exp.f.rn r12, r12
0022a0  8f860600  exp.f.rn r13, r13
0022a4  0f070700  exp.f.rn r14, r14
0022a8  0f080800  exp.f.rn r16, r16
0022ac  8f880800  exp.f.rn r17, r17
0022b0  8f8a0a00  exp.f.rn r21, r21
0022b4  0f0b0b00  exp.f.rn r22, r22
0022b8  8f8b0b00  exp.f.rn r23, r23
0022bc  0f0c0c00  exp.f.rn r24, r24
0022c0  8f8c0c00  exp.f.rn r25, r25
0022c4  67081900  storeli.w r1, 128(r18)
0022c8  67483900  storeli.w r3, 132(r18)
0022cc  e7085900  storeli.w r5, 136(r18)
0022d0  e7488900  storeli.w r8, 140(r18)
0022d4  67099900  storeli.w r9, 144(r18)
0022d8  6749b900  storeli.w r11, 148(r18)
0022dc  e709c900  storeli.w r12, 152(r18)
0022e0  e749d900  storeli.w r13, 156(r18)
0022e4  670ae900  storeli.w r14, 160(r18)
0022e8  674a0901  storeli.w r16, 164(r18)
0022ec  e70a1901  storeli.w r17, 168(r18)
0022f0  e74a5901  storeli.w r21, 172(r18)
0022f4  670b6901  storeli.w r22, 176(r18)
0022f8  674b7901  storeli.w r23, 180(r18)
0022fc  e70b8901  storeli.w r24, 184(r18)
002300  e74b9901  storeli.w r25, 188(r18)
002304  e3008901  loadli.w r1,  192(r18)
002308  e3418901  loadli.w r3,  196(r18)
00230c  e3029901  loadli.w r5,  200(r18)
002310  63449901  loadli.w r8,  204(r18)
002314  e304a901  loadli.w r9,  208(r18)
002318  e345a901  loadli.w r11,  212(r18)
00231c  6306b901  loadli.w r12,  216(r18)
002320  e346b901  loadli.w r13,  220(r18)
002324  6307c901  loadli.w r14,  224(r18)
002328  6348c901  loadli.w r16,  228(r18)
00232c  e308d901  loadli.w r17,  232(r18)
002330  e34ad901  loadli.w r21,  236(r18)
002334  630be901  loadli.w r22,  240(r18)
002338  e34be901  loadli.w r23,  244(r18)
00233c  630cf901  loadli.w r24,  248(r18)
002340  e34cf901  loadli.w r25,  252(r18)
002344  8f800000  exp.f.rn r1, r1
002348  8f810100  exp.f.rn r3, r3
00234c  8f820200  exp.f.rn r5, r5
002350  0f040400  exp.f.rn r8, r8
002354  8f840400  exp.f.rn r9, r9
002358  8f850500  exp.f.rn r11, r11
00235c  0f060600  exp.f.rn r12, r12
002360  8f860600  exp.f.rn r13, r13
002364  0f070700  exp.f.rn r14, r14
002368  0f080800  exp.f.rn r16, r16
00236c  8f880800  exp.f.rn r17, r17
002370  8f8a0a00  exp.f.rn r21, r21
002374  0f0b0b00  exp.f.rn r22, r22
002378  8f8b0b00  exp.f.rn r23, r23
00237c  0f0c0c00  exp.f.rn r24, r24
002380  8f8c0c00  exp.f.rn r25, r25
002384  670c1900  storeli.w r1, 192(r18)
002388  674c3900  storeli.w r3, 196(r18)
00238c  e70c5900  storeli.w r5, 200(r18)
002390  e74c8900  storeli.w r8, 204(r18)
002394  670d9900  storeli.w r9, 208(r18)
002398  674db900  storeli.w r11, 212(r18)
00239c  e70dc900  storeli.w r12, 216(r18)
0023a0  e74dd900  storeli.w r13, 220(r18)
0023a4  670ee900  storeli.w r14, 224(r18)
0023a8  674e0901  storeli.w r16, 228(r18)
0023ac  e70e1901  storeli.w r17, 232(r18)
0023b0  e74e5901  storeli.w r21, 236(r18)
0023b4  670f6901  storeli.w r22, 240(r18)
0023b8  674f7901  storeli.w r23, 244(r18)
0023bc  e70f8901  storeli.w r24, 248(r18)
0023c0  e74f9901  storeli.w r25, 252(r18)
0023c4  00a00000  mfence { lm }
0023c8  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0023cc  c2100fe2  vload_mask16.mz vr1{mr1}, 1792(r30)
0023d0  9f008fe6  addli r1, r30, -3264
0023d4  9f050002  addli r11, zero, 256
0023d8  1f064000  addli r12, zero, 32
0023dc  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0023e0  9f008fe5  addli r1, r30, -3392
0023e4  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0023e8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0023ec  9f008fe4  addli r1, r30, -3520
0023f0  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0023f4  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
0023f8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0023fc  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
002400  9f000fe4  addli r1, r30, -3584
002404  c2100fe3  vload_mask16.mz vr1{mr1}, 1920(r30)
002408  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00240c  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
002410  9f008fe3  addli r1, r30, -3648
002414  c2108fe3  vload_mask16.mz vr1{mr1}, 1984(r30)
002418  e3417fdd  loadli.w r3,  -4420(r30)
00241c  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
002420  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002424  eaf003c0  vsrl.p vr1, r7, vr0
002428  9f008000  addli r1, zero, 64
00242c  9f030001  addli r7, zero, 128
002430  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
002434  ea7005c0  vsrl.p vr1, r10, vr0
002438  1f058000  addli r10, zero, 64
00243c  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
002440  eaf000c0  vsrl.p vr1, r1, vr0
002444  9f004000  addli r1, zero, 32
002448  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
00244c  eaf000c0  vsrl.p vr1, r1, vr0
002450  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
002454  fa100040  vextracti.f r1, 0(vr0)
002458  73e01100  stores.w r1, 0(r3)
00245c  00a00300  mfence { lm, sm, gm }
002460  80210204  csr_set csr3, r4
002464  00d00100  sync_group
002468  bb900700  bneq r15, zero, 36
00246c  ef400e00  loads.w r1, 0(r28)
002470  ef414e00  loads.w r3, 4(r28)
002474  ef428e00  loads.w r5, 8(r28)
002478  8be03010  add.f.rn r1, r1, r3
00247c  ef41ce00  loads.w r3, 12(r28)
002480  8be05010  add.f.rn r1, r1, r5
002484  8be03010  add.f.rn r1, r1, r3
002488  73601e00  stores.w r1, 0(r28)
00248c  00a00300  mfence { lm, sm, gm }
002490  80210204  csr_set csr3, r4
002494  00d00100  sync_group
002498  ef400e00  loads.w r1, 0(r28)
00249c  ab01803f  lui r3, 260096
0024a0  9f120000  addli r5, zero, 1
0024a4  8f881118  div.f.rn r17, r3, r1
0024a8  9f008fdd  addli r1, r30, -4416
0024ac  8a937802  vmul.f.mz.rn vr7{mr1}, r17, vr7
0024b0  0a948802  vmul.f.mz.rn vr8{mr1}, r17, vr8
0024b4  0a95a802  vmul.f.mz.rn vr10{mr1}, r17, vr10
0024b8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0024bc  9f000fde  addli r1, r30, -4352
0024c0  0a900802  vmul.f.mz.rn vr0{mr1}, r17, vr0
0024c4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0024c8  9f000fe3  addli r1, r30, -3712
0024cc  8a941802  vmul.f.mz.rn vr9{mr1}, r17, vr1
0024d0  86100000  vfloat2fp16_l.rn vr1, vr0
0024d4  86d00400  vfloat2fp16_h.rn vr1, vr9
0024d8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0024dc  9f000fe9  addli r1, r30, -2944
0024e0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0024e4  9f000fec  addli r1, r30, -2560
0024e8  8a900802  vmul.f.mz.rn vr1{mr1}, r17, vr0
0024ec  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0024f0  0a910802  vmul.f.mz.rn vr2{mr1}, r17, vr0
0024f4  06900000  vfloat2fp16_l.rn vr0, vr1
0024f8  06500100  vfloat2fp16_h.rn vr0, vr2
0024fc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002500  9f000fe8  addli r1, r30, -3072
002504  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002508  9f008fe7  addli r1, r30, -3136
00250c  8a900802  vmul.f.mz.rn vr1{mr1}, r17, vr0
002510  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002514  9f000fe9  addli r1, r30, -2944
002518  0a910802  vmul.f.mz.rn vr2{mr1}, r17, vr0
00251c  06900000  vfloat2fp16_l.rn vr0, vr1
002520  06500100  vfloat2fp16_h.rn vr0, vr2
002524  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002528  9f008fe8  addli r1, r30, -3008
00252c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002530  9f008fec  addli r1, r30, -2496
002534  8a900802  vmul.f.mz.rn vr1{mr1}, r17, vr0
002538  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00253c  0a910802  vmul.f.mz.rn vr2{mr1}, r17, vr0
002540  06900000  vfloat2fp16_l.rn vr0, vr1
002544  06500100  vfloat2fp16_h.rn vr0, vr2
002548  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00254c  9f000fe7  addli r1, r30, -3200
002550  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002554  9f008fe1  addli r1, r30, -3904
002558  0a910802  vmul.f.mz.rn vr2{mr1}, r17, vr0
00255c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002560  9f008fe8  addli r1, r30, -3008
002564  8a910802  vmul.f.mz.rn vr3{mr1}, r17, vr0
002568  06100100  vfloat2fp16_l.rn vr0, vr2
00256c  06d00100  vfloat2fp16_h.rn vr0, vr3
002570  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002574  9f000fe2  addli r1, r30, -3840
002578  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00257c  9f008fed  addli r1, r30, -2368
002580  8a910802  vmul.f.mz.rn vr3{mr1}, r17, vr0
002584  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002588  0a920802  vmul.f.mz.rn vr4{mr1}, r17, vr0
00258c  06900100  vfloat2fp16_l.rn vr0, vr3
002590  06500200  vfloat2fp16_h.rn vr0, vr4
002594  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002598  9f008fe2  addli r1, r30, -3776
00259c  0a92b802  vmul.f.mz.rn vr4{mr1}, r17, vr11
0025a0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0025a4  9f000fe5  addli r1, r30, -3456
0025a8  8a910802  vmul.f.mz.rn vr3{mr1}, r17, vr0
0025ac  86950100  vfloat2fp16_l.rn vr11, vr3
0025b0  86550200  vfloat2fp16_h.rn vr11, vr4
0025b4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0025b8  9f000fed  addli r1, r30, -2432
0025bc  8a910802  vmul.f.mz.rn vr3{mr1}, r17, vr0
0025c0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0025c4  9f008fea  addli r1, r30, -2752
0025c8  0a920802  vmul.f.mz.rn vr4{mr1}, r17, vr0
0025cc  86940100  vfloat2fp16_l.rn vr9, vr3
0025d0  86540200  vfloat2fp16_h.rn vr9, vr4
0025d4  0a926802  vmul.f.mz.rn vr4{mr1}, r17, vr6
0025d8  06130200  vfloat2fp16_l.rn vr6, vr4
0025dc  06d30300  vfloat2fp16_h.rn vr6, vr7
0025e0  8a935802  vmul.f.mz.rn vr7{mr1}, r17, vr5
0025e4  86920300  vfloat2fp16_l.rn vr5, vr7
0025e8  86520400  vfloat2fp16_h.rn vr5, vr8
0025ec  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0025f0  9f008feb  addli r1, r30, -2624
0025f4  0a940802  vmul.f.mz.rn vr8{mr1}, r17, vr0
0025f8  86130400  vfloat2fp16_l.rn vr7, vr8
0025fc  86530500  vfloat2fp16_h.rn vr7, vr10
002600  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002604  9f000feb  addli r1, r30, -2688
002608  0a940802  vmul.f.mz.rn vr8{mr1}, r17, vr0
00260c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002610  9f000fea  addli r1, r30, -2816
002614  0a950802  vmul.f.mz.rn vr10{mr1}, r17, vr0
002618  06120400  vfloat2fp16_l.rn vr4, vr8
00261c  06520500  vfloat2fp16_h.rn vr4, vr10
002620  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002624  9f000fe6  addli r1, r30, -3328
002628  0a940802  vmul.f.mz.rn vr8{mr1}, r17, vr0
00262c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002630  9f008fe9  addli r1, r30, -2880
002634  0a950802  vmul.f.mz.rn vr10{mr1}, r17, vr0
002638  86110400  vfloat2fp16_l.rn vr3, vr8
00263c  86510500  vfloat2fp16_h.rn vr3, vr10
002640  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002644  9f008fe6  addli r1, r30, -3264
002648  0a940802  vmul.f.mz.rn vr8{mr1}, r17, vr0
00264c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002650  9f008fe5  addli r1, r30, -3392
002654  0a950802  vmul.f.mz.rn vr10{mr1}, r17, vr0
002658  06110400  vfloat2fp16_l.rn vr2, vr8
00265c  06510500  vfloat2fp16_h.rn vr2, vr10
002660  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002664  9f008fe4  addli r1, r30, -3520
002668  0a940802  vmul.f.mz.rn vr8{mr1}, r17, vr0
00266c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002670  9f000fe4  addli r1, r30, -3584
002674  0a950802  vmul.f.mz.rn vr10{mr1}, r17, vr0
002678  86100400  vfloat2fp16_l.rn vr1, vr8
00267c  86500500  vfloat2fp16_h.rn vr1, vr10
002680  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002684  9f008fe3  addli r1, r30, -3648
002688  0a940802  vmul.f.mz.rn vr8{mr1}, r17, vr0
00268c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002690  9f000fe3  addli r1, r30, -3712
002694  0a950802  vmul.f.mz.rn vr10{mr1}, r17, vr0
002698  06100400  vfloat2fp16_l.rn vr0, vr8
00269c  06500500  vfloat2fp16_h.rn vr0, vr10
0026a0  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0026a4  9f000fee  addli r1, r30, -2304
0026a8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0026ac  9f000fec  addli r1, r30, -2560
0026b0  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0026b4  9f008fee  addli r1, r30, -2240
0026b8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0026bc  9f000fe9  addli r1, r30, -2944
0026c0  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0026c4  9f000fef  addli r1, r30, -2176
0026c8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0026cc  9f008fec  addli r1, r30, -2496
0026d0  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0026d4  9f008fef  addli r1, r30, -2112
0026d8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0026dc  9f008fe8  addli r1, r30, -3008
0026e0  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0026e4  9f000ff0  addli r1, r30, -2048
0026e8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0026ec  9f008fed  addli r1, r30, -2368
0026f0  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0026f4  9f008ff0  addli r1, r30, -1984
0026f8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0026fc  9f000ff1  addli r1, r30, -1920
002700  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
002704  9f008ff1  addli r1, r30, -1856
002708  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
00270c  9f000ff2  addli r1, r30, -1792
002710  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002714  9f008ff2  addli r1, r30, -1728
002718  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00271c  9f000ff3  addli r1, r30, -1664
002720  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
002724  9f008ff3  addli r1, r30, -1600
002728  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00272c  9f000ff4  addli r1, r30, -1536
002730  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002734  9f008ff4  addli r1, r30, -1472
002738  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00273c  9f000ff5  addli r1, r30, -1408
002740  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002744  9f008ff5  addli r1, r30, -1344
002748  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00274c  00a00000  mfence { lm }
002750  e3008f00  loadli.w r1,  64(r30)
002754  e3480fdd  loadli.w r17,  -4476(r30)
002758  bf7b11ec  blt.s r2, r1, -9476
00275c  9f080000  addli r17, zero, 0
002760  db5efbff  j -9484
002764  9f0e0fdd  addli sp, r30, -4480
002768  9f8e0e23  addli sp, sp, 4480
00276c  00a00300  mfence { lm, sm, gm }
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
002964  00100000  exit
002968  00100000  exit
00296c  00100000  exit
002970  00100000  exit
002974  00100000  exit
002978  00100000  exit
00297c  00100000  exit
002980  00100000  exit
002984  00100000  exit
002988  00100000  exit
00298c  00100000  exit
002990  00100000  exit
002994  00100000  exit
002998  00100000  exit
00299c  00100000  exit
0029a0  00100000  exit
0029a4  00100000  exit
0029a8  00100000  exit
0029ac  00100000  exit
0029b0  00100000  exit
