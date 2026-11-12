; SHA-256 488930a98eca72e03ffcc5ba04d53713de497668c5cafb4e9bb512f58d123cab
; P800 Cluster · XTDK LLVM 15 · 968 / 968 words decoded
; bound names: _ZN14xpukernel_xpu316tensor_calc_k_nkILi2ELb0E8bfloat16fS1_S1_EEvPKT1_PKT4_PT3_T2_ll
000000  17200000  xor zero, zero, zero
000004  1f420000  addli r4, zero, 4
000008  1f041000  addli r8, zero, 8
00000c  9f77f0ff  addli r15, zero, -1
000010  80310002  core_id r3
000014  00510102  load_param_i r2, 2
000018  ab800000  lui r1, 8
00001c  ab020000  lui r5, 0
000020  9f82020a  addli r5, r5, 1280
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
000078  9f096000  addli r19, zero, 48
00007c  00200300  mfence { sm, gm }
000080  ff090200  l_gm2sm r19, zero, 0(r[4:5])
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
0000ac  d71b0000  jal 220
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a8eff  addli r20, sp, -64
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c4  00a00100  mfence { lm, sm }
0000c8  00d00100  sync_group
0000cc  97a01000  xor r1, r1, r1
0000d0  1f8f0e00  addli r30, sp, 0
0000d4  d71b0000  jal 220
0000d8  00400000  trap
0000dc  9f8e8ed6  addli sp, sp, -5312
0000e0  1f8f0e29  addli r30, sp, 5248
0000e4  9f01000a  addli r3, zero, 1280
0000e8  abf2ffff  lui r5, 1048575
0000ec  1f130000  addli r6, zero, 1
0000f0  eb508f02  load.d r[1:2], 40(r30)
0000f4  b381312e  zext_int2long r[3:4], r3
0000f8  9b92e2ff  ori r5, r5, 4094
0000fc  3303632c  zext_int2long r[6:7], r6
000100  eb5a0f02  load.d r[21:22], 32(r30)
000104  1f045fd7  addli r8, r30, -5208
000108  b384922a  zext_int2long r[9:10], r5
00010c  8f911166  div.sl r[3:4], r[3:4], r[1:2]
000110  0bb86148  max.sl r[16:17], r[3:4], r[6:7]
000114  b3025028  zext_int2long r[5:6], zero
000118  9f03bfd7  addli r7, r30, -5160
00011c  97019802  and.d r[3:4], r[16:17], r[9:10]
000120  93a15100  seteq.d r3, r[3:4], r[5:6]
000124  6b520f01  load.d r[4:5], 16(r30)
000128  1f03cfd7  addli r6, r30, -5152
00012c  73304300  store.d r[4:5], 0(r6)
000130  6b528f00  load.d r[4:5], 8(r30)
000134  73b04300  store.d r[4:5], 0(r7)
000138  6b520f00  load.d r[4:5], 0(r30)
00013c  73304400  store.d r[4:5], 0(r8)
000140  bbeb0102  bneq r3, zero, 1784
000144  80310002  core_id r3
000148  1f221000  addli r4, zero, 10
00014c  ab0c0000  lui r25, 0
000150  13023204  setlt.u r4, r4, r3
000154  9f8c0c00  addli r25, r25, 0
000158  bb300200  bneq r4, zero, 44
00015c  1f120000  addli r4, zero, 1
000160  17323200  sll r4, r4, r3
000164  1b021241  andi r4, r4, 1041
000168  37700200  beq r4, zero, 28
00016c  1bb21000  slli r4, r1, 1
000170  ab0200f0  lui r5, 983040
000174  9f035fd7  addli r7, r30, -5208
000178  17125200  or r4, r4, r5
00017c  ebd20300  load.d r[5:6], 0(r7)
000180  7fc29201  bl_gm2lm r4, r25, 0(r[5:6])
000184  00d20002  load_param_i r4, 1
000188  80520102  load_param_i r5, 2
00018c  80550002  load_param_i r11, 0
000190  00a00000  mfence { lm }
000194  8b924220  mul.s r5, r5, r4
000198  8b153250  fmac.s r11, r4, r3
00019c  b382522a  zext_int2long r[5:6], r5
0001a0  b381352e  zext_int2long r[3:4], r11
0001a4  8f945a72  mod.sl r[9:10], r[21:22], r[5:6]
0001a8  8f925a62  div.sl r[5:6], r[21:22], r[5:6]
0001ac  93b59104  setlt.sl r11, r[3:4], r[9:10]
0001b0  8bb49140  min.sl r[9:10], r[3:4], r[9:10]
0001b4  8bb43250  fmac.sl r[9:10], r[5:6], r[3:4]
0001b8  b385b52e  zext_int2long r[11:12], r11
0001bc  8ba1b210  add.ul r[3:4], r[5:6], r[11:12]
0001c0  8ba19110  add.ul r[3:4], r[3:4], r[9:10]
0001c4  0bb55441  min.sl r[10:11], r[9:10], r[21:22]
0001c8  8bba5141  min.sl r[21:22], r[3:4], r[21:22]
0001cc  2bf20000  lui r4, 15
0001d0  93b1aa06  setle.sl r3, r[21:22], r[10:11]
0001d4  1b12f2ff  ori r4, r4, 4095
0001d8  80210204  csr_set csr3, r4
0001dc  00d00100  sync_group
0001e0  bbcb0104  bneq r3, zero, 2800
0001e4  1f470000  addli r14, zero, 4
0001e8  1f020fd8  addli r4, r30, -5120
0001ec  a382f001  andi.d r[5:6], r[1:2], 31
0001f0  9f038fd7  addli r7, r30, -5184
0001f4  0bb9aa18  sub.sl r[18:19], r[21:22], r[10:11]
0001f8  1bba1000  slli r20, r1, 1
0001fc  9f1d0000  addli r27, zero, 1
000200  9f072000  addli r15, zero, 16
000204  8b91e030  div.s r3, r1, r14
000208  73b05300  store.d r[5:6], 0(r7)
00020c  1f0e0214  addli r28, r4, 2560
000210  9b124200  ori r5, r4, 4
000214  670b5fd6  storeli.w r5, -5200(r30)
000218  e70bcfd7  storeli.w r28, -5192(r30)
00021c  9bbb2100  slli r23, r3, 2
000220  9bb13100  slli r3, r3, 3
000224  0b123210  add.s r4, r4, r3
000228  0b9d9111  add.s r26, r3, r25
00022c  0b9c7019  sub.s r24, r1, r23
000230  9f01afd7  addli r3, r30, -5168
000234  e70a4fd6  storeli.w r4, -5208(r30)
000238  1f029fd7  addli r4, r30, -5176
00023c  73b00101  store.d r[16:17], 0(r3)
000240  73305201  store.d r[21:22], 0(r4)
000244  5b080000  j 64
000248  9f04cfd7  addli r9, r30, -5152
00024c  1f06efd7  addli r12, r30, -5136
000250  00a00300  mfence { lm, sm, gm }
000254  ab0100f0  lui r3, 983040
000258  0b250511  add.ul r[10:11], r[10:11], r[16:17]
00025c  0b390919  sub.sl r[18:19], r[18:19], r[16:17]
000260  ebd20400  load.d r[5:6], 0(r9)
000264  eb530600  load.d r[7:8], 0(r12)
000268  13325505  setlt.sl r4, r[10:11], r[21:22]
00026c  8ba27210  add.ul r[5:6], r[5:6], r[7:8]
000270  e343dfd7  loadli.w r7,  -5140(r30)
000274  97913300  or r3, r7, r3
000278  ffb1c201  s_lm2gm r3, r28, 0(r[5:6])
00027c  00a00200  mfence { lm, gm }
000280  37490204  beq r4, zero, 2640
000284  8bb1aa18  sub.sl r[3:4], r[21:22], r[10:11]
000288  1f0bbfd7  addli r22, r30, -5160
00028c  0b361520  mul.sl r[12:13], r[10:11], r[1:2]
000290  ab0400f0  lui r9, 983040
000294  8bb10141  min.sl r[3:4], r[3:4], r[16:17]
000298  eb530b00  load.d r[7:8], 0(r22)
00029c  1738b603  sll.d r[16:17], r[12:13], r27
0002a0  8bb21120  mul.sl r[5:6], r[3:4], r[1:2]
0002a4  0ba60311  add.ul r[12:13], r[7:8], r[16:17]
0002a8  1f04efd7  addli r8, r30, -5136
0002ac  9f230000  addli r7, zero, 2
0002b0  9bba1200  slli r21, r5, 1
0002b4  73300401  store.d r[16:17], 0(r8)
0002b8  97949a00  or r9, r21, r9
0002bc  e74e5fd7  storeli.w r21, -5140(r30)
0002c0  ff24c601  l_gm2lm r9, r28, 0(r[12:13])
0002c4  bf927100  blt.s r3, r7, 164
0002c8  1f088fd7  addli r16, r30, -5184
0002cc  3306c028  zext_int2long r[12:13], zero
0002d0  eb530800  load.d r[7:8], 0(r16)
0002d4  93a4c300  seteq.d r9, r[7:8], r[12:13]
0002d8  bb9a0400  bneq r9, zero, 676
0002dc  e30a5fd7  loadli.w r21,  -5208(r30)
0002e0  63086fd7  loadli.w r16,  -5200(r30)
0002e4  9f040000  addli r9, zero, 0
0002e8  db020000  j 20
0002ec  9f940400  addli r9, r9, 1
0002f0  0b184811  add.s r16, r16, r20
0002f4  8b9a4a11  add.s r21, r21, r20
0002f8  b7bc3400  beq r9, r3, 812
0002fc  3f81e000  blt.s r1, r14, 64
000300  9f060000  addli r13, zero, 0
000304  1fce0c00  addli r28, r25, 4
000308  1f060800  addli r12, r16, 0
00030c  eb38ceff  load.hu r17, -4(r28)
000310  6b3beeff  load.hu r22, -2(r28)
000314  eb330e00  load.hu r7, 0(r28)
000318  6b342e00  load.hu r8, 2(r28)
00031c  9fc60600  addli r13, r13, 4
000320  1f0e1e00  addli r28, r28, 8
000324  731e16ff  store.h r17, -4(r12)
000328  731f66ff  store.h r22, -2(r12)
00032c  73107600  store.h r7, 0(r12)
000330  73118600  store.h r8, 2(r12)
000334  1f061600  addli r12, r12, 8
000338  3fdf76ff  blt.s r13, r23, -44
00033c  1f060d00  addli r12, r26, 0
000340  9f860a00  addli r13, r21, 0
000344  9f080c00  addli r17, r24, 0
000348  cb9e70ff  ble.s r1, r23, -92
00034c  eb330600  load.hu r7, 0(r12)
000350  9ff8f8ff  addli r17, r17, -1
000354  1f260600  addli r12, r12, 2
000358  73907600  store.h r7, 0(r13)
00035c  9fa60600  addli r13, r13, 2
000360  bbbf08fe  bneq r17, zero, -20
000364  5bf1ffff  j -120
000368  00a00000  mfence { lm }
00036c  abf1ffff  lui r3, 1048575
000370  9b9101fc  ori r3, r3, 4032
000374  97813200  and r3, r5, r3
000378  bff4b101  blt.s r3, r27, 316
00037c  1f020000  addli r4, zero, 0
000380  9f840c00  addli r9, r25, 0
000384  9f0a0e00  addli r21, r28, 0
000388  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
00038c  ab03ffff  lui r7, 1048560
000390  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
000394  1f848400  addli r8, r9, 64
000398  1f868a00  addli r12, r21, 64
00039c  9f08ffd7  addli r17, r30, -5128
0003a0  1f028200  addli r4, r4, 64
0003a4  9f840401  addli r9, r9, 128
0003a8  c2120402  vload_mask16.mz vr5{mr1}, 0(r8)
0003ac  6ab217a2  vsll.s.mz vr4{mr1}, r15, vr1
0003b0  6ab10302  vand.s.mz vr2{mr1}, r7, vr0
0003b4  eab01302  vand.s.mz vr1{mr1}, r7, vr1
0003b8  eab107a2  vsll.s.mz vr3{mr1}, r15, vr0
0003bc  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
0003c0  2b040100  lui r8, 16
0003c4  ab860000  lui r13, 8
0003c8  6ab357a2  vsll.s.mz vr6{mr1}, r15, vr5
0003cc  0e912002  vmul.f.mz.rn vr2{mr1}, vr1, vr2
0003d0  8e103202  vmul.f.mz.rn vr1{mr1}, vr4, vr3
0003d4  ea212402  vand.u.mz vr3{mr1}, r8, vr2
0003d8  6a221402  vand.u.mz vr4{mr1}, r8, vr1
0003dc  72213002  veq.u.mz mr2{mr1}, zero, vr3
0003e0  72204002  veq.u.mz mr0{mr1}, zero, vr4
0003e4  6ab20302  vand.s.mz vr4{mr1}, r7, vr0
0003e8  eab15302  vand.s.mz vr3{mr1}, r7, vr5
0003ec  6ab007a2  vsll.s.mz vr0{mr1}, r15, vr0
0003f0  fe010140  vmnot mr3, mr2
0003f4  12a12616  vadd.u.mh vr2{mr3}, r13, vr2
0003f8  fe010040  vmnot mr3, mr0
0003fc  92a01616  vadd.u.mh vr1{mr3}, r13, vr1
000400  2b780000  lui r16, 7
000404  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000408  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
00040c  1b18f8ff  ori r16, r16, 4095
000410  12212814  vadd.u.mh vr2{mr2}, r16, vr2
000414  92201810  vadd.u.mh vr1{mr0}, r16, vr1
000418  aba3aaaa  lui r7, 699050
00041c  9b93a3aa  ori r7, r7, 2730
000420  7e8003e0  vmmov mr0, r7
000424  7e0000a0  vmmov zero, mr0
000428  46802a10  vstore.mh vr2{mr0}, 0(r21)
00042c  67800800  storeli.w zero, 0(r17)
000430  6af117c0  vsrl.p vr2, r15, vr1
000434  ab535555  lui r7, 349525
000438  17200000  xor zero, zero, zero
00043c  ea203402  vand.u.mz vr1{mr1}, r8, vr3
000440  9b935355  ori r7, r7, 1365
000444  7e8003e0  vmmov mr0, r7
000448  9f43ffd7  addli r7, r30, -5124
00044c  7e0000a0  vmmov zero, mr0
000450  46802a10  vstore.mh vr2{mr0}, 0(r21)
000454  6a210402  vand.u.mz vr2{mr1}, r8, vr0
000458  1f04ffd7  addli r8, r30, -5128
00045c  9f8a0a01  addli r21, r21, 128
000460  67800300  storeli.w zero, 0(r7)
000464  17200000  xor zero, zero, zero
000468  f2211002  veq.u.mz mr3{mr1}, zero, vr1
00046c  7e800140  vmnot mr0, mr3
000470  92a13610  vadd.u.mh vr3{mr0}, r13, vr3
000474  72202002  veq.u.mz mr0{mr1}, zero, vr2
000478  7e010040  vmnot mr2, mr0
00047c  12a00614  vadd.u.mh vr0{mr2}, r13, vr0
000480  9f46ffd7  addli r13, r30, -5124
000484  92213816  vadd.u.mh vr3{mr3}, r16, vr3
000488  12200810  vadd.u.mh vr0{mr0}, r16, vr0
00048c  63000400  loadli.w zero,  0(r8)
000490  7e0000e0  vmmov mr0, zero
000494  17200000  xor zero, zero, zero
000498  46003610  vstore.mh vr3{mr0}, 0(r12)
00049c  eaf007c0  vsrl.p vr1, r15, vr0
0004a0  63800600  loadli.w zero,  0(r13)
0004a4  7e0000e0  vmmov mr0, zero
0004a8  17200000  xor zero, zero, zero
0004ac  46001610  vstore.mh vr1{mr0}, 0(r12)
0004b0  3f6b32fe  blt.s r4, r3, -296
0004b4  1f02afd7  addli r4, r30, -5168
0004b8  9f039fd7  addli r7, r30, -5176
0004bc  6b580200  load.d r[16:17], 0(r4)
0004c0  ebda0300  load.d r[21:22], 0(r7)
0004c4  4b9632fe  ble.s r5, r3, -636
0004c8  8b332841  min.sl r[7:8], r[16:17], r[18:19]
0004cc  2bf2ffff  lui r4, 1048575
0004d0  8bb37020  mul.sl r[7:8], r[1:2], r[7:8]
0004d4  1b1202f8  ori r4, r4, 3968
0004d8  9bb31300  slli r7, r7, 1
0004dc  97834300  and r7, r7, r4
0004e0  0b127e10  add.s r4, r28, r7
0004e4  8b949311  add.s r9, r7, r25
0004e8  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
0004ec  ab03ffff  lui r7, 1048560
0004f0  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
0004f4  2b040100  lui r8, 16
0004f8  2b860000  lui r12, 8
0004fc  9f814100  addli r3, r3, 32
000500  9f848400  addli r9, r9, 64
000504  6ab10302  vand.s.mz vr2{mr1}, r7, vr0
000508  eab11302  vand.s.mz vr3{mr1}, r7, vr1
00050c  6ab007a2  vsll.s.mz vr0{mr1}, r15, vr0
000510  eab017a2  vsll.s.mz vr1{mr1}, r15, vr1
000514  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
000518  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
00051c  ea202402  vand.u.mz vr1{mr1}, r8, vr2
000520  ea210402  vand.u.mz vr3{mr1}, r8, vr0
000524  72211002  veq.u.mz mr2{mr1}, zero, vr1
000528  72203002  veq.u.mz mr0{mr1}, zero, vr3
00052c  fe010140  vmnot mr3, mr2
000530  12212616  vadd.u.mh vr2{mr3}, r12, vr2
000534  fe010040  vmnot mr3, mr0
000538  12200616  vadd.u.mh vr0{mr3}, r12, vr0
00053c  ab730000  lui r7, 7
000540  9b93f3ff  ori r7, r7, 4095
000544  12a12314  vadd.u.mh vr2{mr2}, r7, vr2
000548  12a00310  vadd.u.mh vr0{mr0}, r7, vr0
00054c  aba3aaaa  lui r7, 699050
000550  9b93a3aa  ori r7, r7, 2730
000554  7e8003e0  vmmov mr0, r7
000558  46002210  vstore.mh vr2{mr0}, 0(r4)
00055c  eaf007c0  vsrl.p vr1, r15, vr0
000560  ab535555  lui r7, 349525
000564  9b935355  ori r7, r7, 1365
000568  7e8003e0  vmmov mr0, r7
00056c  46001210  vstore.mh vr1{mr0}, 0(r4)
000570  1f028200  addli r4, r4, 64
000574  bfdd51fe  blt.s r3, r5, -140
000578  5b9affff  j -816
00057c  1f0e0fd8  addli r28, r30, -5120
000580  1f060000  addli r12, zero, 0
000584  5b020000  j 16
000588  1f160600  addli r12, r12, 1
00058c  0b1e4e11  add.s r28, r28, r20
000590  37523600  beq r12, r3, 148
000594  bfdfb0ff  blt.s r1, r27, -12
000598  9f060000  addli r13, zero, 0
00059c  9f8a0c00  addli r21, r25, 0
0005a0  9f040e00  addli r9, r28, 0
0005a4  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
0005a8  2b08ffff  lui r16, 1048560
0005ac  ab080100  lui r17, 16
0005b0  2b8b0000  lui r22, 8
0005b4  9f864600  addli r13, r13, 32
0005b8  9f8a8a00  addli r21, r21, 64
0005bc  ea300802  vand.s.mz vr1{mr1}, r16, vr0
0005c0  6ab007a2  vsll.s.mz vr0{mr1}, r15, vr0
0005c4  6aa11802  vand.u.mz vr2{mr1}, r17, vr1
0005c8  eaa10802  vand.u.mz vr3{mr1}, r17, vr0
0005cc  72212002  veq.u.mz mr2{mr1}, zero, vr2
0005d0  72203002  veq.u.mz mr0{mr1}, zero, vr3
0005d4  fe010140  vmnot mr3, mr2
0005d8  92201b16  vadd.u.mh vr1{mr3}, r22, vr1
0005dc  fe010040  vmnot mr3, mr0
0005e0  12200b16  vadd.u.mh vr0{mr3}, r22, vr0
0005e4  2b780000  lui r16, 7
0005e8  1b18f8ff  ori r16, r16, 4095
0005ec  92201814  vadd.u.mh vr1{mr2}, r16, vr1
0005f0  12200810  vadd.u.mh vr0{mr0}, r16, vr0
0005f4  2ba8aaaa  lui r16, 699050
0005f8  1b18a8aa  ori r16, r16, 2730
0005fc  7e0008e0  vmmov mr0, r16
000600  46801410  vstore.mh vr1{mr0}, 0(r9)
000604  eaf007c0  vsrl.p vr1, r15, vr0
000608  2b585555  lui r16, 349525
00060c  1b185855  ori r16, r16, 1365
000610  7e0008e0  vmmov mr0, r16
000614  46801410  vstore.mh vr1{mr0}, 0(r9)
000618  9f848400  addli r9, r9, 64
00061c  3fae16fe  blt.s r13, r1, -120
000620  5bedffff  j -152
000624  00a00000  mfence { lm }
000628  abf1ffff  lui r3, 1048575
00062c  1f029fd7  addli r4, r30, -5176
000630  630e7fd7  loadli.w r28,  -5192(r30)
000634  9b9101fc  ori r3, r3, 4032
000638  eb5a0200  load.d r[21:22], 0(r4)
00063c  97813200  and r3, r5, r3
000640  bfe4b101  blt.s r3, r27, 312
000644  1f020fd8  addli r4, r30, -5120
000648  9f040000  addli r9, zero, 0
00064c  9f030214  addli r7, r4, 2560
000650  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
000654  2b04ffff  lui r8, 1048560
000658  1f068200  addli r12, r4, 64
00065c  9f068214  addli r13, r4, 2624
000660  9f848400  addli r9, r9, 64
000664  1f020201  addli r4, r4, 128
000668  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
00066c  c2120602  vload_mask16.mz vr5{mr1}, 0(r12)
000670  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
000674  2b060100  lui r12, 16
000678  2b880000  lui r16, 8
00067c  6ab107a2  vsll.s.mz vr2{mr1}, r15, vr0
000680  6a300402  vand.s.mz vr0{mr1}, r8, vr0
000684  ea311402  vand.s.mz vr3{mr1}, r8, vr1
000688  6ab217a2  vsll.s.mz vr4{mr1}, r15, vr1
00068c  8e900102  vmul.f.mz.rn vr1{mr1}, vr3, vr0
000690  0e102202  vmul.f.mz.rn vr0{mr1}, vr4, vr2
000694  6ab257a2  vsll.s.mz vr4{mr1}, r15, vr5
000698  6a211602  vand.u.mz vr2{mr1}, r12, vr1
00069c  ea210602  vand.u.mz vr3{mr1}, r12, vr0
0006a0  72212002  veq.u.mz mr2{mr1}, zero, vr2
0006a4  72203002  veq.u.mz mr0{mr1}, zero, vr3
0006a8  6a315402  vand.s.mz vr2{mr1}, r8, vr5
0006ac  ea316402  vand.s.mz vr3{mr1}, r8, vr6
0006b0  eab267a2  vsll.s.mz vr5{mr1}, r15, vr6
0006b4  fe010140  vmnot mr3, mr2
0006b8  92201816  vadd.u.mh vr1{mr3}, r16, vr1
0006bc  fe010040  vmnot mr3, mr0
0006c0  12200816  vadd.u.mh vr0{mr3}, r16, vr0
0006c4  ab780000  lui r17, 7
0006c8  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
0006cc  9b98f8ff  ori r17, r17, 4095
0006d0  92a01814  vadd.u.mh vr1{mr2}, r17, vr1
0006d4  12a00810  vadd.u.mh vr0{mr0}, r17, vr0
0006d8  2ba4aaaa  lui r8, 699050
0006dc  ea212602  vand.u.mz vr3{mr1}, r12, vr2
0006e0  1b14a4aa  ori r8, r8, 2730
0006e4  7e0004e0  vmmov mr0, r8
0006e8  1f44ffd7  addli r8, r30, -5124
0006ec  7e0000a0  vmmov zero, mr0
0006f0  46801310  vstore.mh vr1{mr0}, 0(r7)
0006f4  67000400  storeli.w zero, 0(r8)
0006f8  eaf007c0  vsrl.p vr1, r15, vr0
0006fc  2b545555  lui r8, 349525
000700  0e904202  vmul.f.mz.rn vr0{mr1}, vr5, vr4
000704  17200000  xor zero, zero, zero
000708  1b145455  ori r8, r8, 1365
00070c  7e0004e0  vmmov mr0, r8
000710  1f04ffd7  addli r8, r30, -5128
000714  7e0000a0  vmmov zero, mr0
000718  46801310  vstore.mh vr1{mr0}, 0(r7)
00071c  ea200602  vand.u.mz vr1{mr1}, r12, vr0
000720  9f43ffd7  addli r7, r30, -5124
000724  1f06ffd7  addli r12, r30, -5128
000728  67000400  storeli.w zero, 0(r8)
00072c  17200000  xor zero, zero, zero
000730  f2213002  veq.u.mz mr3{mr1}, zero, vr3
000734  7e800140  vmnot mr0, mr3
000738  12212810  vadd.u.mh vr2{mr0}, r16, vr2
00073c  72201002  veq.u.mz mr0{mr1}, zero, vr1
000740  7e010040  vmnot mr2, mr0
000744  12200814  vadd.u.mh vr0{mr2}, r16, vr0
000748  12a12816  vadd.u.mh vr2{mr3}, r17, vr2
00074c  12a00810  vadd.u.mh vr0{mr0}, r17, vr0
000750  63800300  loadli.w zero,  0(r7)
000754  7e0000e0  vmmov mr0, zero
000758  17200000  xor zero, zero, zero
00075c  46802610  vstore.mh vr2{mr0}, 0(r13)
000760  eaf007c0  vsrl.p vr1, r15, vr0
000764  63000600  loadli.w zero,  0(r12)
000768  7e0000e0  vmmov mr0, zero
00076c  17200000  xor zero, zero, zero
000770  46801610  vstore.mh vr1{mr0}, 0(r13)
000774  3feb34fe  blt.s r9, r3, -296
000778  1f02afd7  addli r4, r30, -5168
00077c  6b580200  load.d r[16:17], 0(r4)
000780  4bab32fc  ble.s r5, r3, -1336
000784  8b332841  min.sl r[7:8], r[16:17], r[18:19]
000788  2bf2ffff  lui r4, 1048575
00078c  8bb37020  mul.sl r[7:8], r[1:2], r[7:8]
000790  1b1202f8  ori r4, r4, 3968
000794  9bb31300  slli r7, r7, 1
000798  17824300  and r4, r7, r4
00079c  9f030fd8  addli r7, r30, -5120
0007a0  0b924310  add.s r4, r7, r4
0007a4  9f030214  addli r7, r4, 2560
0007a8  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0007ac  2b04ffff  lui r8, 1048560
0007b0  9f814100  addli r3, r3, 32
0007b4  1f028200  addli r4, r4, 64
0007b8  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0007bc  6ab107a2  vsll.s.mz vr2{mr1}, r15, vr0
0007c0  6a300402  vand.s.mz vr0{mr1}, r8, vr0
0007c4  ea311402  vand.s.mz vr3{mr1}, r8, vr1
0007c8  eab017a2  vsll.s.mz vr1{mr1}, r15, vr1
0007cc  2b040100  lui r8, 16
0007d0  0e900102  vmul.f.mz.rn vr0{mr1}, vr3, vr0
0007d4  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
0007d8  6a210402  vand.u.mz vr2{mr1}, r8, vr0
0007dc  ea211402  vand.u.mz vr3{mr1}, r8, vr1
0007e0  2b840000  lui r8, 8
0007e4  72212002  veq.u.mz mr2{mr1}, zero, vr2
0007e8  72203002  veq.u.mz mr0{mr1}, zero, vr3
0007ec  fe010140  vmnot mr3, mr2
0007f0  12200416  vadd.u.mh vr0{mr3}, r8, vr0
0007f4  fe010040  vmnot mr3, mr0
0007f8  92201416  vadd.u.mh vr1{mr3}, r8, vr1
0007fc  2b740000  lui r8, 7
000800  1b14f4ff  ori r8, r8, 4095
000804  12200414  vadd.u.mh vr0{mr2}, r8, vr0
000808  92201410  vadd.u.mh vr1{mr0}, r8, vr1
00080c  2ba4aaaa  lui r8, 699050
000810  1b14a4aa  ori r8, r8, 2730
000814  7e0004e0  vmmov mr0, r8
000818  46800310  vstore.mh vr0{mr0}, 0(r7)
00081c  6af017c0  vsrl.p vr0, r15, vr1
000820  2b545555  lui r8, 349525
000824  1b145455  ori r8, r8, 1365
000828  7e0004e0  vmmov mr0, r8
00082c  46800310  vstore.mh vr0{mr0}, 0(r7)
000830  bfdd51fe  blt.s r3, r5, -140
000834  db42ffff  j -1516
000838  9f010004  addli r3, zero, 512
00083c  27f2f003  addli.d r[4:5], r[1:2], 511
000840  00530102  load_param_i r6, 2
000844  b384912e  zext_int2long r[9:10], r3
000848  8f119266  div.sl r[3:4], r[4:5], r[9:10]
00084c  80d20002  load_param_i r5, 1
000850  0b135320  mul.s r6, r6, r5
000854  3303632c  zext_int2long r[6:7], r6
000858  a3b10102  slli.d r[3:4], r[3:4], 32
00085c  a3d10102  srai.d r[3:4], r[3:4], 32
000860  8bb15121  mul.sl r[3:4], r[3:4], r[21:22]
000864  8f956176  mod.sl r[11:12], r[3:4], r[6:7]
000868  8f966162  div.sl r[13:14], r[3:4], r[6:7]
00086c  00330002  core_id r6
000870  80530002  load_param_i r7, 0
000874  8b936250  fmac.s r7, r5, r6
000878  b382532e  zext_int2long r[5:6], r7
00087c  8bb8b240  min.sl r[17:18], r[5:6], r[11:12]
000880  8bb85650  fmac.sl r[17:18], r[13:14], r[5:6]
000884  93b2b204  setlt.sl r5, r[5:6], r[11:12]
000888  9f058fd7  addli r11, r30, -5184
00088c  1f067fd7  addli r12, r30, -5192
000890  8bb33840  min.sl r[7:8], r[17:18], r[3:4]
000894  73b05501  store.d r[21:22], 0(r11)
000898  8f995367  div.sl r[19:20], r[7:8], r[21:22]
00089c  8f975377  mod.sl r[15:16], r[7:8], r[21:22]
0008a0  b382522a  zext_int2long r[5:6], r5
0008a4  8ba25610  add.ul r[5:6], r[13:14], r[5:6]
0008a8  8ba21211  add.ul r[5:6], r[5:6], r[17:18]
0008ac  8bb23240  min.sl r[5:6], r[5:6], r[3:4]
0008b0  1f121000  addli r4, zero, 9
0008b4  93b17206  setle.sl r3, r[5:6], r[7:8]
0008b8  73305600  store.d r[5:6], 0(r12)
0008bc  17bb4902  sll.d r[22:23], r[19:20], r4
0008c0  1f020fd8  addli r4, r30, -5120
0008c4  8bb26019  sub.sl r[5:6], r[1:2], r[22:23]
0008c8  9f080210  addli r17, r4, 2048
0008cc  8bbd9240  min.sl r[27:28], r[5:6], r[9:10]
0008d0  abf2ffff  lui r5, 1048575
0008d4  3bf10100  bneq r3, zero, 92
0008d8  1f075fd7  addli r14, r30, -5208
0008dc  9f120000  addli r5, zero, 1
0008e0  ab0500f0  lui r11, 983040
0008e4  1bb31d00  slli r6, r27, 1
0008e8  0bb91720  mul.sl r[18:19], r[15:16], r[1:2]
0008ec  6b560700  load.d r[12:13], 0(r14)
0008f0  97345b02  sll.d r[9:10], r[22:23], r5
0008f4  9715b300  or r11, r6, r11
0008f8  17395902  sll.d r[18:19], r[18:19], r5
0008fc  0b269610  add.ul r[12:13], r[12:13], r[9:10]
000900  ff254600  l_gm2lm r11, r4, 0(r[12:13])
000904  1f06bfd7  addli r12, r30, -5160
000908  6b520600  load.d r[4:5], 0(r12)
00090c  ab0500f0  lui r11, 983040
000910  1713b300  or r6, r6, r11
000914  0b222211  add.ul r[4:5], r[4:5], r[18:19]
000918  0b229210  add.ul r[4:5], r[4:5], r[9:10]
00091c  27050b00  addli.d r[10:11], r[22:23], 0
000920  7f231201  l_gm2lm r6, r17, 0(r[4:5])
000924  00a00200  mfence { lm, gm }
000928  37d00100  beq r3, zero, 20
00092c  db740000  j 932
000930  1b92f2ff  ori r4, r5, 4095
000934  3315a228  sext_int2long r[10:11], r4
000938  3bee0100  bneq r3, zero, 920
00093c  1f020fd8  addli r4, r30, -5120
000940  9f010004  addli r3, zero, 512
000944  9f026fd7  addli r5, r30, -5200
000948  1f1a0000  addli r20, zero, 1
00094c  1f0d2000  addli r26, zero, 16
000950  9f0a0000  addli r21, zero, 0
000954  e74e0fd6  storeli.w zero, -5140(r30)
000958  1f020210  addli r4, r4, 2048
00095c  670d4fd6  storeli.w r4, -5168(r30)
000960  b381312e  zext_int2long r[3:4], r3
000964  73b03200  store.d r[3:4], 0(r5)
000968  9f010fd8  addli r3, r30, -5120
00096c  e70c3fd6  storeli.w r3, -5176(r30)
000970  5b080000  j 64
000974  9f910a00  addli r3, r21, 1
000978  1f320000  addli r4, zero, 3
00097c  1f037fd7  addli r6, r30, -5192
000980  e302afd7  loadli.w r5,  -5168(r30)
000984  27050900  addli.d r[10:11], r[18:19], 0
000988  270b0900  addli.d r[22:23], r[18:19], 0
00098c  9f0d0600  addli r27, r12, 0
000990  8b9a4138  mod.s r21, r3, r4
000994  eb510300  load.d r[3:4], 0(r6)
000998  93b13304  setlt.sl r3, r[7:8], r[3:4]
00099c  1bb2aa00  slli r4, r21, 10
0009a0  8b984210  add.s r17, r5, r4
0009a4  1f02efd7  addli r4, r30, -5136
0009a8  eb570200  load.d r[15:16], 0(r4)
0009ac  b79c0100  beq r3, zero, 804
0009b0  9f048fd7  addli r9, r30, -5184
0009b4  a7930300  addli.d r[7:8], r[7:8], 1
0009b8  1f07efd7  addli r14, r30, -5136
0009bc  1f0c6fd7  addli r24, r30, -5200
0009c0  ebd10400  load.d r[3:4], 0(r9)
0009c4  8f923362  div.sl r[5:6], r[7:8], r[3:4]
0009c8  8f913376  mod.sl r[3:4], r[7:8], r[3:4]
0009cc  73303700  store.d r[3:4], 0(r14)
0009d0  9f111000  addli r3, zero, 9
0009d4  17b93202  sll.d r[18:19], r[5:6], r3
0009d8  eb510c00  load.d r[3:4], 0(r24)
0009dc  8bb22019  sub.sl r[5:6], r[1:2], r[18:19]
0009e0  0bb63240  min.sl r[12:13], r[5:6], r[3:4]
0009e4  3f624601  blt.s r12, r20, 152
0009e8  93242503  setneq.d r9, r[10:11], r[18:19]
0009ec  97324903  sll.d r[5:6], r[18:19], r20
0009f0  3bb00400  bneq r9, zero, 12
0009f4  9b341600  slli r9, r12, 1
0009f8  5b070000  j 56
0009fc  e341dfd7  loadli.w r3,  -5140(r30)
000a00  1f0c5fd7  addli r24, r30, -5208
000a04  2b0a00f0  lui r20, 983040
000a08  9b341600  slli r9, r12, 1
000a0c  179a4401  or r20, r9, r20
000a10  1bb7a100  slli r14, r3, 10
000a14  9f010fd8  addli r3, r30, -5120
000a18  1b270740  xori r14, r14, 1024
000a1c  0b97e110  add.s r14, r3, r14
000a20  eb510c00  load.d r[3:4], 0(r24)
000a24  0bac5110  add.ul r[24:25], r[3:4], r[5:6]
000a28  7f2aec00  l_gm2lm r20, r14, 0(r[24:25])
000a2c  1f1a0000  addli r20, zero, 1
000a30  9f310000  addli r3, zero, 3
000a34  1f970a00  addli r14, r21, 1
000a38  1f0cefd7  addli r24, r30, -5136
000a3c  1f00bfd7  addli zero, r30, -5160
000a40  0b173738  mod.s r14, r14, r3
000a44  eb510c00  load.d r[3:4], 0(r24)
000a48  0bbc1120  mul.sl r[24:25], r[3:4], r[1:2]
000a4c  173c4c03  sll.d r[24:25], r[24:25], r20
000a50  2b0a00f0  lui r20, 983040
000a54  eb510000  load.d r[3:4], 0(zero)
000a58  17200000  xor zero, zero, zero
000a5c  1b37a700  slli r14, r14, 10
000a60  97944401  or r9, r9, r20
000a64  1f1a0000  addli r20, zero, 1
000a68  0bac8111  add.ul r[24:25], r[3:4], r[24:25]
000a6c  e301afd7  loadli.w r3,  -5168(r30)
000a70  8b225c10  add.ul r[5:6], r[24:25], r[5:6]
000a74  0b97e110  add.s r14, r3, r14
000a78  ffa4e200  l_gm2lm r9, r14, 0(r[5:6])
000a7c  abf2ffff  lui r5, 1048575
000a80  9b9202fc  ori r5, r5, 4032
000a84  978c5d00  and r25, r27, r5
000a88  bff44c01  blt.s r25, r20, 316
000a8c  63079fd7  loadli.w r14,  -5176(r30)
000a90  1f0a0000  addli r20, zero, 0
000a94  9f840800  addli r9, r17, 0
000a98  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
000a9c  ab02ffff  lui r5, 1048560
000aa0  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
000aa4  1f038700  addli r6, r14, 64
000aa8  1f8c8400  addli r24, r9, 64
000aac  1f0a8a00  addli r20, r20, 64
000ab0  1f070701  addli r14, r14, 128
000ab4  c2120302  vload_mask16.mz vr5{mr1}, 0(r6)
000ab8  6a321da2  vsll.s.mz vr4{mr1}, r26, vr1
000abc  6ab10202  vand.s.mz vr2{mr1}, r5, vr0
000ac0  eab01202  vand.s.mz vr1{mr1}, r5, vr1
000ac4  ea310da2  vsll.s.mz vr3{mr1}, r26, vr0
000ac8  42100c02  vload_mask16.mz vr0{mr1}, 0(r24)
000acc  2b030100  lui r6, 16
000ad0  ab810000  lui r3, 8
000ad4  6a335da2  vsll.s.mz vr6{mr1}, r26, vr5
000ad8  0e912002  vmul.f.mz.rn vr2{mr1}, vr1, vr2
000adc  8e103202  vmul.f.mz.rn vr1{mr1}, vr4, vr3
000ae0  ea212302  vand.u.mz vr3{mr1}, r6, vr2
000ae4  6a221302  vand.u.mz vr4{mr1}, r6, vr1
000ae8  72213002  veq.u.mz mr2{mr1}, zero, vr3
000aec  72204002  veq.u.mz mr0{mr1}, zero, vr4
000af0  6ab20202  vand.s.mz vr4{mr1}, r5, vr0
000af4  eab15202  vand.s.mz vr3{mr1}, r5, vr5
000af8  6a300da2  vsll.s.mz vr0{mr1}, r26, vr0
000afc  fe010140  vmnot mr3, mr2
000b00  12a12116  vadd.u.mh vr2{mr3}, r3, vr2
000b04  fe010040  vmnot mr3, mr0
000b08  92a01116  vadd.u.mh vr1{mr3}, r3, vr1
000b0c  2b720000  lui r4, 7
000b10  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000b14  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
000b18  1b12f2ff  ori r4, r4, 4095
000b1c  12212214  vadd.u.mh vr2{mr2}, r4, vr2
000b20  92201210  vadd.u.mh vr1{mr0}, r4, vr1
000b24  aba2aaaa  lui r5, 699050
000b28  9b92a2aa  ori r5, r5, 2730
000b2c  7e8002e0  vmmov mr0, r5
000b30  9f02ffd7  addli r5, r30, -5128
000b34  7e0000a0  vmmov zero, mr0
000b38  46802410  vstore.mh vr2{mr0}, 0(r9)
000b3c  67800200  storeli.w zero, 0(r5)
000b40  6a711dc0  vsrl.p vr2, r26, vr1
000b44  ab525555  lui r5, 349525
000b48  17200000  xor zero, zero, zero
000b4c  ea203302  vand.u.mz vr1{mr1}, r6, vr3
000b50  9b925255  ori r5, r5, 1365
000b54  7e8002e0  vmmov mr0, r5
000b58  9f42ffd7  addli r5, r30, -5124
000b5c  7e0000a0  vmmov zero, mr0
000b60  46802410  vstore.mh vr2{mr0}, 0(r9)
000b64  6a210302  vand.u.mz vr2{mr1}, r6, vr0
000b68  9f840401  addli r9, r9, 128
000b6c  67800200  storeli.w zero, 0(r5)
000b70  17200000  xor zero, zero, zero
000b74  f2211002  veq.u.mz mr3{mr1}, zero, vr1
000b78  7e800140  vmnot mr0, mr3
000b7c  92a13110  vadd.u.mh vr3{mr0}, r3, vr3
000b80  72202002  veq.u.mz mr0{mr1}, zero, vr2
000b84  7e010040  vmnot mr2, mr0
000b88  12a00114  vadd.u.mh vr0{mr2}, r3, vr0
000b8c  9f01ffd7  addli r3, r30, -5128
000b90  92213216  vadd.u.mh vr3{mr3}, r4, vr3
000b94  12200210  vadd.u.mh vr0{mr0}, r4, vr0
000b98  63800100  loadli.w zero,  0(r3)
000b9c  1f42ffd7  addli r4, r30, -5124
000ba0  7e0000e0  vmmov mr0, zero
000ba4  17200000  xor zero, zero, zero
000ba8  46003c10  vstore.mh vr3{mr0}, 0(r24)
000bac  ea700dc0  vsrl.p vr1, r26, vr0
000bb0  63000200  loadli.w zero,  0(r4)
000bb4  7e0000e0  vmmov mr0, zero
000bb8  17200000  xor zero, zero, zero
000bbc  46001c10  vstore.mh vr1{mr0}, 0(r24)
000bc0  3f6b9aff  blt.s r20, r25, -296
000bc4  9bb41d00  slli r9, r27, 1
000bc8  cbb29d01  ble.s r27, r25, 172
000bcc  abf2ffff  lui r5, 1048575
000bd0  e3019fd7  loadli.w r3,  -5176(r30)
000bd4  9b9202f8  ori r5, r5, 3968
000bd8  97825400  and r5, r9, r5
000bdc  0b975810  add.s r14, r17, r5
000be0  0b9a5110  add.s r20, r3, r5
000be4  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
000be8  ab01ffff  lui r3, 1048560
000bec  c2100702  vload_mask16.mz vr1{mr1}, 0(r14)
000bf0  2b020100  lui r4, 16
000bf4  ab820000  lui r5, 8
000bf8  9f8c4c00  addli r25, r25, 32
000bfc  1f0a8a00  addli r20, r20, 64
000c00  6ab10102  vand.s.mz vr2{mr1}, r3, vr0
000c04  eab11102  vand.s.mz vr3{mr1}, r3, vr1
000c08  6a300da2  vsll.s.mz vr0{mr1}, r26, vr0
000c0c  ea301da2  vsll.s.mz vr1{mr1}, r26, vr1
000c10  0e912102  vmul.f.mz.rn vr2{mr1}, vr3, vr2
000c14  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
000c18  ea202202  vand.u.mz vr1{mr1}, r4, vr2
000c1c  ea210202  vand.u.mz vr3{mr1}, r4, vr0
000c20  72211002  veq.u.mz mr2{mr1}, zero, vr1
000c24  72203002  veq.u.mz mr0{mr1}, zero, vr3
000c28  fe010140  vmnot mr3, mr2
000c2c  12a12216  vadd.u.mh vr2{mr3}, r5, vr2
000c30  fe010040  vmnot mr3, mr0
000c34  12a00216  vadd.u.mh vr0{mr3}, r5, vr0
000c38  ab710000  lui r3, 7
000c3c  9b91f1ff  ori r3, r3, 4095
000c40  12a12114  vadd.u.mh vr2{mr2}, r3, vr2
000c44  12a00110  vadd.u.mh vr0{mr0}, r3, vr0
000c48  aba1aaaa  lui r3, 699050
000c4c  9b91a1aa  ori r3, r3, 2730
000c50  7e8001e0  vmmov mr0, r3
000c54  46002710  vstore.mh vr2{mr0}, 0(r14)
000c58  ea700dc0  vsrl.p vr1, r26, vr0
000c5c  ab515555  lui r3, 349525
000c60  9b915155  ori r3, r3, 1365
000c64  7e8001e0  vmmov mr0, r3
000c68  46001710  vstore.mh vr1{mr0}, 0(r14)
000c6c  1f078700  addli r14, r14, 64
000c70  bfddbcff  blt.s r25, r27, -140
000c74  8bb11720  mul.sl r[3:4], r[15:16], r[1:2]
000c78  1f08cfd7  addli r16, r30, -5152
000c7c  00a00300  mfence { lm, sm, gm }
000c80  1f1a0000  addli r20, zero, 1
000c84  eb520800  load.d r[5:6], 0(r16)
000c88  97b14103  sll.d r[3:4], r[3:4], r20
000c8c  17374b03  sll.d r[14:15], r[22:23], r20
000c90  8ba13210  add.ul r[3:4], r[5:6], r[3:4]
000c94  2b0300f0  lui r6, 983040
000c98  93222501  seteq.d r5, r[10:11], r[18:19]
000c9c  8ba1e110  add.ul r[3:4], r[3:4], r[14:15]
000ca0  17936400  or r6, r9, r6
000ca4  7fb31101  s_lm2gm r6, r17, 0(r[3:4])
000ca8  e341dfd7  loadli.w r3,  -5140(r30)
000cac  1ba31100  xori r6, r3, 1
000cb0  3bd00200  bneq r5, zero, 20
000cb4  9b31a300  slli r3, r6, 10
000cb8  1f020fd8  addli r4, r30, -5120
000cbc  8b113210  add.s r3, r4, r3
000cc0  e70c3fd6  storeli.w r3, -5176(r30)
000cc4  bbc202fe  bneq r5, zero, -848
000cc8  e74e6fd6  storeli.w r6, -5140(r30)
000ccc  5b95ffff  j -856
000cd0  9f0e0fd7  addli sp, r30, -5248
000cd4  9f8e0e29  addli sp, sp, 5248
000cd8  00a00300  mfence { lm, sm, gm }
000cdc  00100000  exit
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
000de4  00100000  exit
000de8  00100000  exit
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
000e7c  00100000  exit
000e80  00100000  exit
000e84  00100000  exit
000e88  00100000  exit
000e8c  00100000  exit
000e90  00100000  exit
000e94  00100000  exit
000e98  00100000  exit
000e9c  00100000  exit
000ea0  00100000  exit
000ea4  00100000  exit
000ea8  00100000  exit
000eac  00100000  exit
000eb0  00100000  exit
000eb4  00100000  exit
000eb8  00100000  exit
000ebc  00100000  exit
000ec0  00100000  exit
000ec4  00100000  exit
000ec8  00100000  exit
000ecc  00100000  exit
000ed0  00100000  exit
000ed4  00100000  exit
000ed8  00100000  exit
000edc  00100000  exit
000ee0  00100000  exit
000ee4  00100000  exit
000ee8  00100000  exit
000eec  00100000  exit
000ef0  00100000  exit
000ef4  00100000  exit
000ef8  00100000  exit
000efc  00100000  exit
000f00  00100000  exit
000f04  00100000  exit
000f08  00100000  exit
000f0c  00100000  exit
000f10  00100000  exit
000f14  00100000  exit
000f18  00100000  exit
000f1c  00100000  exit
