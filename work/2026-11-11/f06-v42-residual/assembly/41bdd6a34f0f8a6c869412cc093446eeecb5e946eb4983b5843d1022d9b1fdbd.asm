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
000078  9f496000  addli r19, zero, 52
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
0000dc  9f8e0ef7  addli sp, sp, -1152
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f8e08  addli r30, sp, 1088
0000ec  abf30000  lui r7, 15
0000f0  005e0002  load_param_i r28, 0
0000f4  1bb32000  slli r6, r1, 2
0000f8  1f010100  addli r2, r2, 0
0000fc  63445f00  loadli.w r8,  44(r30)
000100  e3025f00  loadli.w r5,  40(r30)
000104  63026f00  loadli.w r4,  48(r30)
000108  9b93f3ff  ori r7, r7, 4095
00010c  8b112310  add.s r3, r6, r2
000110  0b145420  mul.s r8, r8, r5
000114  1f852110  addli r10, r3, 2064
000118  8b124420  mul.s r5, r8, r4
00011c  73600500  stores.w zero, 0(r10)
000120  00a00300  mfence { lm, sm, gm }
000124  80a10304  csr_set csr3, r7
000128  00d00100  sync_group
00012c  73e00100  stores.w zero, 0(r3)
000130  00a00300  mfence { lm, sm, gm }
000134  80a10304  csr_set csr3, r7
000138  00d00100  sync_group
00013c  4bd2c201  ble.s r5, r28, 148
000140  1f044000  addli r8, zero, 32
000144  9f440000  addli r9, zero, 4
000148  00d60002  load_param_i r12, 1
00014c  0b928030  div.s r4, r1, r8
000150  9b335200  slli r7, r4, 5
000154  e74f4ff6  storeli.w r4, -1028(r30)
000158  8b937018  sub.s r7, r1, r7
00015c  3fa09300  blt.s r7, r9, 8
000160  5b0d0000  j 104
000164  9bb88300  slli r17, r7, 8
000168  9f040008  addli r9, zero, 1024
00016c  93830300  seteq r7, r7, zero
000170  1f020002  addli r4, zero, 256
000174  abf5ffff  lui r11, 1048575
000178  9b8af001  andi r21, r1, 31
00017c  9bf00004  setlti r1, r1, 64
000180  9f7cf003  addli r25, zero, 511
000184  1f0d8ffb  addli r26, r30, -576
000188  9f0d0004  addli r27, zero, 512
00018c  e70f5ff6  storeli.w r5, -1032(r30)
000190  674fcff6  storeli.w r12, -1036(r30)
000194  8b941419  sub.s r9, r9, r17
000198  8b844440  min.u r9, r9, r4
00019c  1b9205f8  ori r4, r11, 3968
0001a0  17034300  and r6, r6, r4
0001a4  1bba1400  slli r20, r9, 1
0001a8  178c7000  and r24, r1, r7
0001ac  abf00000  lui r1, 15
0001b0  ab03803f  lui r7, 260096
0001b4  0b1b2310  add.s r22, r6, r2
0001b8  2b01803a  lui r2, 239616
0001bc  9b90f0ff  ori r1, r1, 4095
0001c0  9f0b2b10  addli r23, r22, 2064
0001c4  5b060000  j 48
0001c8  0b1ece10  add.s r28, r28, r12
0001cc  bf7f5efe  blt.s r28, r5, -4
0001d0  9f0e8ff7  addli sp, r30, -1088
0001d4  9f8e8e08  addli sp, sp, 1088
0001d8  00a00300  mfence { lm, sm, gm }
0001dc  00100000  exit
0001e0  6346eff7  loadli.w r12,  -1036(r30)
0001e4  e302fff7  loadli.w r5,  -1032(r30)
0001e8  0b1ece10  add.s r28, r28, r12
0001ec  3f205e00  blt.s r28, r5, 8
0001f0  5bfcffff  j -32
0001f4  63026f00  loadli.w r4,  48(r30)
0001f8  1f060000  addli r12, zero, 0
0001fc  8b154e30  div.s r11, r28, r4
000200  63425f00  loadli.w r4,  44(r30)
000204  8b954530  div.s r11, r11, r4
000208  6342fff7  loadli.w r4,  -1028(r30)
00020c  9bb56500  slli r11, r11, 6
000210  8b954510  add.s r11, r11, r4
000214  5b360000  j 432
000218  2b020080  lui r4, 524288
00021c  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
000220  06740000  vfp162float_h.rn vr8, vr0
000224  c2100fc2  vload_mask16.mz vr1{mr1}, 1536(r30)
000228  86f20000  vfp162float_h.rn vr5, vr1
00022c  86330000  vfp162float_l.rn vr7, vr0
000230  42138fc2  vload_mask16.mz vr6{mr1}, 1600(r30)
000234  c2140fc3  vload_mask16.mz vr9{mr1}, 1664(r30)
000238  06b20000  vfp162float_l.rn vr4, vr1
00023c  86710300  vfp162float_h.rn vr3, vr6
000240  06310300  vfp162float_l.rn vr2, vr6
000244  eb528f00  load.d r[6:7], 8(r30)
000248  86f00400  vfp162float_h.rn vr1, vr9
00024c  06b00400  vfp162float_l.rn vr0, vr9
000250  42138fc3  vload_mask16.mz vr6{mr1}, 1728(r30)
000254  97274900  xor r15, r18, r4
000258  12948702  vadd.f.mz.rn vr8{mr1}, r15, vr8
00025c  92937702  vadd.f.mz.rn vr7{mr1}, r15, vr7
000260  92925702  vadd.f.mz.rn vr5{mr1}, r15, vr5
000264  12924702  vadd.f.mz.rn vr4{mr1}, r15, vr4
000268  92913702  vadd.f.mz.rn vr3{mr1}, r15, vr3
00026c  92901702  vadd.f.mz.rn vr1{mr1}, r15, vr1
000270  12912702  vadd.f.mz.rn vr2{mr1}, r15, vr2
000274  12900702  vadd.f.mz.rn vr0{mr1}, r15, vr0
000278  2b0200f0  lui r4, 983040
00027c  0a148802  vmul.f.mz.rn vr8{mr1}, r16, vr8
000280  8a125802  vmul.f.mz.rn vr5{mr1}, r16, vr5
000284  8a137802  vmul.f.mz.rn vr7{mr1}, r16, vr7
000288  92147002  vadd.f.mz.rn vr9{mr1}, zero, vr7
00028c  8a113802  vmul.f.mz.rn vr3{mr1}, r16, vr3
000290  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
000294  0a124802  vmul.f.mz.rn vr4{mr1}, r16, vr4
000298  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
00029c  0a100802  vmul.f.mz.rn vr0{mr1}, r16, vr0
0002a0  8ba2d210  add.ul r[6:7], r[6:7], r[14:15]
0002a4  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
0002a8  86930400  vfloat2fp16_l.rn vr7, vr9
0002ac  86530400  vfloat2fp16_h.rn vr7, vr8
0002b0  86740300  vfp162float_h.rn vr9, vr6
0002b4  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
0002b8  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
0002bc  92101002  vadd.f.mz.rn vr1{mr1}, zero, vr1
0002c0  17124a00  or r4, r20, r4
0002c4  06340300  vfp162float_l.rn vr8, vr6
0002c8  12134002  vadd.f.mz.rn vr6{mr1}, zero, vr4
0002cc  06120300  vfloat2fp16_l.rn vr4, vr6
0002d0  06d20200  vfloat2fp16_h.rn vr4, vr5
0002d4  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
0002d8  12132002  vadd.f.mz.rn vr6{mr1}, zero, vr2
0002dc  06110300  vfloat2fp16_l.rn vr2, vr6
0002e0  06d10100  vfloat2fp16_h.rn vr2, vr3
0002e4  86b10200  vfp162float_l.rn vr3, vr5
0002e8  06f30200  vfp162float_h.rn vr6, vr5
0002ec  92120002  vadd.f.mz.rn vr5{mr1}, zero, vr0
0002f0  06900200  vfloat2fp16_l.rn vr0, vr5
0002f4  06d00000  vfloat2fp16_h.rn vr0, vr1
0002f8  92908702  vadd.f.mz.rn vr1{mr1}, r15, vr8
0002fc  12949702  vadd.f.mz.rn vr8{mr1}, r15, vr9
000300  92913702  vadd.f.mz.rn vr3{mr1}, r15, vr3
000304  0a148802  vmul.f.mz.rn vr8{mr1}, r16, vr8
000308  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
00030c  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
000310  92141002  vadd.f.mz.rn vr9{mr1}, zero, vr1
000314  8a113802  vmul.f.mz.rn vr3{mr1}, r16, vr3
000318  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
00031c  86900400  vfloat2fp16_l.rn vr1, vr9
000320  86500400  vfloat2fp16_h.rn vr1, vr8
000324  86f40200  vfp162float_h.rn vr9, vr5
000328  06b40200  vfp162float_l.rn vr8, vr5
00032c  92926702  vadd.f.mz.rn vr5{mr1}, r15, vr6
000330  12133002  vadd.f.mz.rn vr6{mr1}, zero, vr3
000334  8a125802  vmul.f.mz.rn vr5{mr1}, r16, vr5
000338  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
00033c  86110300  vfloat2fp16_l.rn vr3, vr6
000340  86d10200  vfloat2fp16_h.rn vr3, vr5
000344  12938702  vadd.f.mz.rn vr6{mr1}, r15, vr8
000348  12949702  vadd.f.mz.rn vr8{mr1}, r15, vr9
00034c  0a136802  vmul.f.mz.rn vr6{mr1}, r16, vr6
000350  0a148802  vmul.f.mz.rn vr8{mr1}, r16, vr8
000354  c2120fe3  vload_mask16.mz vr5{mr1}, 1920(r30)
000358  461c7fa2  vstore_mask16.mz vr7{mr1}, 1472(r30)
00035c  46104fc2  vstore_mask16.mz vr4{mr1}, 1536(r30)
000360  46142fc2  vstore_mask16.mz vr2{mr1}, 1600(r30)
000364  46180fc2  vstore_mask16.mz vr0{mr1}, 1664(r30)
000368  461c1fc2  vstore_mask16.mz vr1{mr1}, 1728(r30)
00036c  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
000370  12136002  vadd.f.mz.rn vr6{mr1}, zero, vr6
000374  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
000378  86140300  vfloat2fp16_l.rn vr9, vr6
00037c  86540400  vfloat2fp16_h.rn vr9, vr8
000380  46149fe2  vstore_mask16.mz vr9{mr1}, 1856(r30)
000384  06b30200  vfp162float_l.rn vr6, vr5
000388  06f40200  vfp162float_h.rn vr8, vr5
00038c  92926702  vadd.f.mz.rn vr5{mr1}, r15, vr6
000390  12938702  vadd.f.mz.rn vr6{mr1}, r15, vr8
000394  8a125802  vmul.f.mz.rn vr5{mr1}, r16, vr5
000398  0a136802  vmul.f.mz.rn vr6{mr1}, r16, vr6
00039c  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
0003a0  12136002  vadd.f.mz.rn vr6{mr1}, zero, vr6
0003a4  06940200  vfloat2fp16_l.rn vr8, vr5
0003a8  06540300  vfloat2fp16_h.rn vr8, vr6
0003ac  46188fe2  vstore_mask16.mz vr8{mr1}, 1920(r30)
0003b0  00a00000  mfence { lm }
0003b4  7fb2a201  s_lm2gm r4, r26, 0(r[6:7])
0003b8  00a00000  mfence { lm }
0003bc  1f160600  addli r12, r12, 1
0003c0  b70886fe  beq r12, r8, -480
0003c4  9b361600  slli r13, r12, 1
0003c8  8b97d510  add.s r15, r11, r13
0003cc  bfcffcfe  blt.s r25, r15, -16
0003d0  9f060000  addli r13, zero, 0
0003d4  0b12dd10  add.s r4, r26, r13
0003d8  9fc60600  addli r13, r13, 4
0003dc  73100200  store.h zero, 0(r4)
0003e0  73110200  store.h zero, 2(r4)
0003e4  00a00000  mfence { lm }
0003e8  bbbfb6ff  bneq r13, r27, -20
0003ec  9bb6a700  slli r13, r15, 10
0003f0  1f120000  addli r4, zero, 1
0003f4  2b0800f0  lui r16, 983040
0003f8  8b961611  add.s r13, r13, r17
0003fc  17180a01  or r16, r20, r16
000400  b3960628  sext_int2long r[14:15], r13
000404  97b64602  sll.d r[14:15], r[14:15], r4
000408  6b520f00  load.d r[5:6], 0(r30)
00040c  0b29d210  add.ul r[19:20], r[5:6], r[14:15]
000410  7f28a901  l_gm2lm r16, r26, 0(r[19:20])
000414  00a00000  mfence { lm }
000418  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
00041c  06310000  vfp162float_l.rn vr2, vr0
000420  86710000  vfp162float_h.rn vr3, vr0
000424  c2100fc2  vload_mask16.mz vr1{mr1}, 1536(r30)
000428  06f20000  vfp162float_h.rn vr4, vr1
00042c  12112002  vadd.f.mz.rn vr2{mr1}, zero, vr2
000430  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
000434  12124002  vadd.f.mz.rn vr4{mr1}, zero, vr4
000438  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00043c  86b10000  vfp162float_l.rn vr3, vr1
000440  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
000444  96113102  vadd.f.mz.rn vr3{mr1}, vr2, vr3
000448  42118fc2  vload_mask16.mz vr2{mr1}, 1600(r30)
00044c  86720100  vfp162float_h.rn vr5, vr2
000450  0e450002  vmul.hf.mz.rn vr10{mr1}, vr0, vr0
000454  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
000458  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
00045c  06320100  vfp162float_l.rn vr4, vr2
000460  12124002  vadd.f.mz.rn vr4{mr1}, zero, vr4
000464  0e412102  vmul.hf.mz.rn vr2{mr1}, vr2, vr2
000468  16924102  vadd.f.mz.rn vr4{mr1}, vr3, vr4
00046c  c2110fc3  vload_mask16.mz vr3{mr1}, 1664(r30)
000470  06f30100  vfp162float_h.rn vr6, vr3
000474  12136002  vadd.f.mz.rn vr6{mr1}, zero, vr6
000478  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00047c  86b20100  vfp162float_l.rn vr5, vr3
000480  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
000484  8ec13102  vmul.hf.mz.rn vr3{mr1}, vr3, vr3
000488  86b50100  vfp162float_l.rn vr11, vr3
00048c  96125202  vadd.f.mz.rn vr5{mr1}, vr4, vr5
000490  42128fc3  vload_mask16.mz vr4{mr1}, 1728(r30)
000494  86730200  vfp162float_h.rn vr7, vr4
000498  92137002  vadd.f.mz.rn vr7{mr1}, zero, vr7
00049c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
0004a0  06330200  vfp162float_l.rn vr6, vr4
0004a4  12136002  vadd.f.mz.rn vr6{mr1}, zero, vr6
0004a8  0e424202  vmul.hf.mz.rn vr4{mr1}, vr4, vr4
0004ac  16936202  vadd.f.mz.rn vr6{mr1}, vr5, vr6
0004b0  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
0004b4  06f40200  vfp162float_h.rn vr8, vr5
0004b8  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
0004bc  16137302  vadd.f.mz.rn vr6{mr1}, vr6, vr7
0004c0  86b30200  vfp162float_l.rn vr7, vr5
0004c4  92137002  vadd.f.mz.rn vr7{mr1}, zero, vr7
0004c8  8ec25202  vmul.hf.mz.rn vr5{mr1}, vr5, vr5
0004cc  96137302  vadd.f.mz.rn vr7{mr1}, vr6, vr7
0004d0  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
0004d4  86740300  vfp162float_h.rn vr9, vr6
0004d8  92149002  vadd.f.mz.rn vr9{mr1}, zero, vr9
0004dc  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
0004e0  06340300  vfp162float_l.rn vr8, vr6
0004e4  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
0004e8  0e436302  vmul.hf.mz.rn vr6{mr1}, vr6, vr6
0004ec  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
0004f0  42140fe3  vload_mask16.mz vr8{mr1}, 1920(r30)
0004f4  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
0004f8  86340400  vfp162float_l.rn vr9, vr8
0004fc  92149002  vadd.f.mz.rn vr9{mr1}, zero, vr9
000500  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
000504  86740400  vfp162float_h.rn vr9, vr8
000508  0e448402  vmul.hf.mz.rn vr8{mr1}, vr8, vr8
00050c  92149002  vadd.f.mz.rn vr9{mr1}, zero, vr9
000510  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
000514  8ec41002  vmul.hf.mz.rn vr9{mr1}, vr1, vr1
000518  06b00400  vfp162float_l.rn vr0, vr9
00051c  46180fa2  vstore_mask16.mz vr0{mr1}, 1408(r30)
000520  86700300  vfp162float_h.rn vr1, vr6
000524  06f00400  vfp162float_h.rn vr0, vr9
000528  46140fa2  vstore_mask16.mz vr0{mr1}, 1344(r30)
00052c  86f40100  vfp162float_h.rn vr9, vr3
000530  86710200  vfp162float_h.rn vr3, vr4
000534  06300100  vfp162float_l.rn vr0, vr2
000538  46100fa2  vstore_mask16.mz vr0{mr1}, 1280(r30)
00053c  06700100  vfp162float_h.rn vr0, vr2
000540  461c0f82  vstore_mask16.mz vr0{mr1}, 1216(r30)
000544  06710400  vfp162float_h.rn vr2, vr8
000548  7a980340  vextracti.f r16, 0(vr7)
00054c  7a991340  vextracti.f r18, 1(vr7)
000550  06f00200  vfp162float_h.rn vr0, vr5
000554  0b682811  add.f.rn r16, r16, r18
000558  7a992340  vextracti.f r18, 2(vr7)
00055c  0b680911  add.f.rn r16, r18, r16
000560  7a993340  vextracti.f r18, 3(vr7)
000564  0b680911  add.f.rn r16, r18, r16
000568  7a994340  vextracti.f r18, 4(vr7)
00056c  0b680911  add.f.rn r16, r18, r16
000570  7a995340  vextracti.f r18, 5(vr7)
000574  0b680911  add.f.rn r16, r18, r16
000578  7a996340  vextracti.f r18, 6(vr7)
00057c  0b680911  add.f.rn r16, r18, r16
000580  7a997340  vextracti.f r18, 7(vr7)
000584  0b680911  add.f.rn r16, r18, r16
000588  7a998340  vextracti.f r18, 8(vr7)
00058c  0b680911  add.f.rn r16, r18, r16
000590  7a999340  vextracti.f r18, 9(vr7)
000594  0b680911  add.f.rn r16, r18, r16
000598  7a99a340  vextracti.f r18, 10(vr7)
00059c  0b680911  add.f.rn r16, r18, r16
0005a0  7a99b340  vextracti.f r18, 11(vr7)
0005a4  0b680911  add.f.rn r16, r18, r16
0005a8  7a99c340  vextracti.f r18, 12(vr7)
0005ac  0b680911  add.f.rn r16, r18, r16
0005b0  7a99d340  vextracti.f r18, 13(vr7)
0005b4  0b680911  add.f.rn r16, r18, r16
0005b8  7a99e340  vextracti.f r18, 14(vr7)
0005bc  0b680911  add.f.rn r16, r18, r16
0005c0  7a99f340  vextracti.f r18, 15(vr7)
0005c4  86330200  vfp162float_l.rn vr7, vr4
0005c8  06b20200  vfp162float_l.rn vr4, vr5
0005cc  86320300  vfp162float_l.rn vr5, vr6
0005d0  06330400  vfp162float_l.rn vr6, vr8
0005d4  42140fa3  vload_mask16.mz vr8{mr1}, 1408(r30)
0005d8  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
0005dc  46188fa2  vstore_mask16.mz vr8{mr1}, 1408(r30)
0005e0  92137002  vadd.f.mz.rn vr7{mr1}, zero, vr7
0005e4  46107f82  vstore_mask16.mz vr7{mr1}, 1024(r30)
0005e8  42148fa2  vload_mask16.mz vr8{mr1}, 1344(r30)
0005ec  92133002  vadd.f.mz.rn vr7{mr1}, zero, vr3
0005f0  92115002  vadd.f.mz.rn vr3{mr1}, zero, vr5
0005f4  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
0005f8  46148fa2  vstore_mask16.mz vr8{mr1}, 1344(r30)
0005fc  42140fa2  vload_mask16.mz vr8{mr1}, 1280(r30)
000600  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
000604  46108fa2  vstore_mask16.mz vr8{mr1}, 1280(r30)
000608  0b680911  add.f.rn r16, r18, r16
00060c  42148f83  vload_mask16.mz vr8{mr1}, 1216(r30)
000610  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
000614  461c8f82  vstore_mask16.mz vr8{mr1}, 1216(r30)
000618  1214b002  vadd.f.mz.rn vr8{mr1}, zero, vr11
00061c  46188f82  vstore_mask16.mz vr8{mr1}, 1152(r30)
000620  92151002  vadd.f.mz.rn vr11{mr1}, zero, vr1
000624  86300500  vfp162float_l.rn vr1, vr10
000628  12149002  vadd.f.mz.rn vr8{mr1}, zero, vr9
00062c  46148f82  vstore_mask16.mz vr8{mr1}, 1088(r30)
000630  92140002  vadd.f.mz.rn vr9{mr1}, zero, vr0
000634  12102002  vadd.f.mz.rn vr0{mr1}, zero, vr2
000638  06710500  vfp162float_h.rn vr2, vr10
00063c  92101002  vadd.f.mz.rn vr1{mr1}, zero, vr1
000640  12144002  vadd.f.mz.rn vr8{mr1}, zero, vr4
000644  12126002  vadd.f.mz.rn vr4{mr1}, zero, vr6
000648  12112002  vadd.f.mz.rn vr2{mr1}, zero, vr2
00064c  73e00101  stores.w r16, 0(r3)
000650  00a00300  mfence { lm, sm, gm }
000654  80a10004  csr_set csr3, r1
000658  00d00100  sync_group
00065c  3b940a00  bneq r21, zero, 260
000660  6f480b00  loads.w r16, 0(r22)
000664  6f494b00  loads.w r18, 4(r22)
000668  ef498b00  loads.w r19, 8(r22)
00066c  0b682811  add.f.rn r16, r16, r18
000670  6f49cb00  loads.w r18, 12(r22)
000674  0b683811  add.f.rn r16, r16, r19
000678  ef490b01  loads.w r19, 16(r22)
00067c  0b682811  add.f.rn r16, r16, r18
000680  6f494b01  loads.w r18, 20(r22)
000684  0b683811  add.f.rn r16, r16, r19
000688  ef498b01  loads.w r19, 24(r22)
00068c  0b682811  add.f.rn r16, r16, r18
000690  6f49cb01  loads.w r18, 28(r22)
000694  0b683811  add.f.rn r16, r16, r19
000698  ef490b02  loads.w r19, 32(r22)
00069c  0b682811  add.f.rn r16, r16, r18
0006a0  6f494b02  loads.w r18, 36(r22)
0006a4  0b683811  add.f.rn r16, r16, r19
0006a8  ef498b02  loads.w r19, 40(r22)
0006ac  0b682811  add.f.rn r16, r16, r18
0006b0  6f49cb02  loads.w r18, 44(r22)
0006b4  0b683811  add.f.rn r16, r16, r19
0006b8  ef490b03  loads.w r19, 48(r22)
0006bc  0b682811  add.f.rn r16, r16, r18
0006c0  6f494b03  loads.w r18, 52(r22)
0006c4  0b683811  add.f.rn r16, r16, r19
0006c8  ef498b03  loads.w r19, 56(r22)
0006cc  0b682811  add.f.rn r16, r16, r18
0006d0  6f49cb03  loads.w r18, 60(r22)
0006d4  0b683811  add.f.rn r16, r16, r19
0006d8  ef490b04  loads.w r19, 64(r22)
0006dc  0b682811  add.f.rn r16, r16, r18
0006e0  6f494b04  loads.w r18, 68(r22)
0006e4  0b683811  add.f.rn r16, r16, r19
0006e8  ef498b04  loads.w r19, 72(r22)
0006ec  0b682811  add.f.rn r16, r16, r18
0006f0  6f49cb04  loads.w r18, 76(r22)
0006f4  0b683811  add.f.rn r16, r16, r19
0006f8  ef490b05  loads.w r19, 80(r22)
0006fc  0b682811  add.f.rn r16, r16, r18
000700  6f494b05  loads.w r18, 84(r22)
000704  0b683811  add.f.rn r16, r16, r19
000708  ef498b05  loads.w r19, 88(r22)
00070c  0b682811  add.f.rn r16, r16, r18
000710  6f49cb05  loads.w r18, 92(r22)
000714  0b683811  add.f.rn r16, r16, r19
000718  ef490b06  loads.w r19, 96(r22)
00071c  0b682811  add.f.rn r16, r16, r18
000720  6f494b06  loads.w r18, 100(r22)
000724  0b683811  add.f.rn r16, r16, r19
000728  ef498b06  loads.w r19, 104(r22)
00072c  0b682811  add.f.rn r16, r16, r18
000730  6f49cb06  loads.w r18, 108(r22)
000734  0b683811  add.f.rn r16, r16, r19
000738  ef490b07  loads.w r19, 112(r22)
00073c  0b682811  add.f.rn r16, r16, r18
000740  6f494b07  loads.w r18, 116(r22)
000744  0b683811  add.f.rn r16, r16, r19
000748  ef498b07  loads.w r19, 120(r22)
00074c  0b682811  add.f.rn r16, r16, r18
000750  6f49cb07  loads.w r18, 124(r22)
000754  0b683811  add.f.rn r16, r16, r19
000758  0b682811  add.f.rn r16, r16, r18
00075c  73600b01  stores.w r16, 0(r22)
000760  00a00300  mfence { lm, sm, gm }
000764  80a10004  csr_set csr3, r1
000768  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00076c  42110fa3  vload_mask16.mz vr2{mr1}, 1408(r30)
000770  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000774  42118fa2  vload_mask16.mz vr2{mr1}, 1344(r30)
000778  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00077c  42110fa2  vload_mask16.mz vr2{mr1}, 1280(r30)
000780  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000784  42118f83  vload_mask16.mz vr2{mr1}, 1216(r30)
000788  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00078c  42110f83  vload_mask16.mz vr2{mr1}, 1152(r30)
000790  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000794  42118f82  vload_mask16.mz vr2{mr1}, 1088(r30)
000798  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
00079c  42110f82  vload_mask16.mz vr2{mr1}, 1024(r30)
0007a0  00d00100  sync_group
0007a4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0007a8  96907002  vadd.f.mz.rn vr1{mr1}, vr1, vr7
0007ac  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
0007b0  96909002  vadd.f.mz.rn vr1{mr1}, vr1, vr9
0007b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0007b8  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
0007bc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0007c0  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
0007c4  7a180040  vextracti.f r16, 0(vr0)
0007c8  7a191040  vextracti.f r18, 1(vr0)
0007cc  fa19f040  vextracti.f r19, 15(vr0)
0007d0  0b682811  add.f.rn r16, r16, r18
0007d4  7a192040  vextracti.f r18, 2(vr0)
0007d8  0b680911  add.f.rn r16, r18, r16
0007dc  7a193040  vextracti.f r18, 3(vr0)
0007e0  0b680911  add.f.rn r16, r18, r16
0007e4  7a194040  vextracti.f r18, 4(vr0)
0007e8  0b680911  add.f.rn r16, r18, r16
0007ec  7a195040  vextracti.f r18, 5(vr0)
0007f0  0b680911  add.f.rn r16, r18, r16
0007f4  7a196040  vextracti.f r18, 6(vr0)
0007f8  0b680911  add.f.rn r16, r18, r16
0007fc  7a197040  vextracti.f r18, 7(vr0)
000800  0b680911  add.f.rn r16, r18, r16
000804  7a198040  vextracti.f r18, 8(vr0)
000808  0b680911  add.f.rn r16, r18, r16
00080c  7a199040  vextracti.f r18, 9(vr0)
000810  0b680911  add.f.rn r16, r18, r16
000814  7a19a040  vextracti.f r18, 10(vr0)
000818  0b680911  add.f.rn r16, r18, r16
00081c  7a19b040  vextracti.f r18, 11(vr0)
000820  0b680911  add.f.rn r16, r18, r16
000824  7a19c040  vextracti.f r18, 12(vr0)
000828  0b680911  add.f.rn r16, r18, r16
00082c  7a19d040  vextracti.f r18, 13(vr0)
000830  0b680911  add.f.rn r16, r18, r16
000834  7a19e040  vextracti.f r18, 14(vr0)
000838  0b690911  add.f.rn r18, r18, r16
00083c  6f480b00  loads.w r16, 0(r22)
000840  0be92911  add.f.rn r18, r19, r18
000844  73602501  stores.w r18, 0(r10)
000848  00a00300  mfence { lm, sm, gm }
00084c  80a10004  csr_set csr3, r1
000850  00d00100  sync_group
000854  3b940a00  bneq r21, zero, 260
000858  6fc90b00  loads.w r18, 0(r23)
00085c  efc94b00  loads.w r19, 4(r23)
000860  efc48b00  loads.w r9, 8(r23)
000864  0b693911  add.f.rn r18, r18, r19
000868  efc9cb00  loads.w r19, 12(r23)
00086c  8b649910  add.f.rn r9, r18, r9
000870  6fc90b01  loads.w r18, 16(r23)
000874  8be43411  add.f.rn r9, r9, r19
000878  efc94b01  loads.w r19, 20(r23)
00087c  8be42411  add.f.rn r9, r9, r18
000880  6fc98b01  loads.w r18, 24(r23)
000884  8be43411  add.f.rn r9, r9, r19
000888  efc9cb01  loads.w r19, 28(r23)
00088c  8be42411  add.f.rn r9, r9, r18
000890  6fc90b02  loads.w r18, 32(r23)
000894  8be43411  add.f.rn r9, r9, r19
000898  efc94b02  loads.w r19, 36(r23)
00089c  8be42411  add.f.rn r9, r9, r18
0008a0  6fc98b02  loads.w r18, 40(r23)
0008a4  8be43411  add.f.rn r9, r9, r19
0008a8  efc9cb02  loads.w r19, 44(r23)
0008ac  8be42411  add.f.rn r9, r9, r18
0008b0  6fc90b03  loads.w r18, 48(r23)
0008b4  8be43411  add.f.rn r9, r9, r19
0008b8  efc94b03  loads.w r19, 52(r23)
0008bc  8be42411  add.f.rn r9, r9, r18
0008c0  6fc98b03  loads.w r18, 56(r23)
0008c4  8be43411  add.f.rn r9, r9, r19
0008c8  efc9cb03  loads.w r19, 60(r23)
0008cc  8be42411  add.f.rn r9, r9, r18
0008d0  6fc90b04  loads.w r18, 64(r23)
0008d4  8be43411  add.f.rn r9, r9, r19
0008d8  efc94b04  loads.w r19, 68(r23)
0008dc  8be42411  add.f.rn r9, r9, r18
0008e0  6fc98b04  loads.w r18, 72(r23)
0008e4  8be43411  add.f.rn r9, r9, r19
0008e8  efc9cb04  loads.w r19, 76(r23)
0008ec  8be42411  add.f.rn r9, r9, r18
0008f0  6fc90b05  loads.w r18, 80(r23)
0008f4  8be43411  add.f.rn r9, r9, r19
0008f8  efc94b05  loads.w r19, 84(r23)
0008fc  8be42411  add.f.rn r9, r9, r18
000900  6fc98b05  loads.w r18, 88(r23)
000904  8be43411  add.f.rn r9, r9, r19
000908  efc9cb05  loads.w r19, 92(r23)
00090c  8be42411  add.f.rn r9, r9, r18
000910  6fc90b06  loads.w r18, 96(r23)
000914  8be43411  add.f.rn r9, r9, r19
000918  efc94b06  loads.w r19, 100(r23)
00091c  8be42411  add.f.rn r9, r9, r18
000920  6fc98b06  loads.w r18, 104(r23)
000924  8be43411  add.f.rn r9, r9, r19
000928  efc9cb06  loads.w r19, 108(r23)
00092c  8be42411  add.f.rn r9, r9, r18
000930  6fc90b07  loads.w r18, 112(r23)
000934  8be43411  add.f.rn r9, r9, r19
000938  efc94b07  loads.w r19, 116(r23)
00093c  8be42411  add.f.rn r9, r9, r18
000940  6fc98b07  loads.w r18, 120(r23)
000944  8be43411  add.f.rn r9, r9, r19
000948  efc9cb07  loads.w r19, 124(r23)
00094c  8be42411  add.f.rn r9, r9, r18
000950  8be43411  add.f.rn r9, r9, r19
000954  73e09b00  stores.w r9, 0(r23)
000958  00a00300  mfence { lm, sm, gm }
00095c  80a10004  csr_set csr3, r1
000960  00d00100  sync_group
000964  efc40b00  loads.w r9, 0(r23)
000968  0b692820  mul.f.rn r18, r16, r2
00096c  63022f00  loadli.w r4,  16(r30)
000970  0b682921  mul.f.rn r16, r18, r18
000974  8be42420  mul.f.rn r9, r9, r2
000978  8be40419  sub.f.rn r9, r9, r16
00097c  8b649210  add.f.rn r9, r4, r9
000980  8f840408  sqrt.f.rn r9, r9
000984  0f889318  div.f.rn r16, r7, r9
000988  37420cfc  beq r24, zero, -1904
00098c  33930728  sext_int2long r[7:8], r15
000990  1f120000  addli r4, zero, 1
000994  b3240900  float2hfloat.rn r9, r18
000998  9f290000  addli r19, zero, 2
00099c  9f078fff  addli r15, r30, -64
0009a0  17334302  sll.d r[7:8], r[7:8], r4
0009a4  6b528f01  load.d r[5:6], 24(r30)
0009a8  73109ffc  store.h r9, -64(r30)
0009ac  ab0400f0  lui r9, 983040
0009b0  00a00000  mfence { lm }
0009b4  97949900  or r9, r19, r9
0009b8  0b226210  add.ul r[5:6], r[5:6], r[7:8]
0009bc  ff34f200  s_lm2gm r9, r15, 0(r[5:6])
0009c0  00a00000  mfence { lm }
0009c4  6b520f02  load.d r[5:6], 32(r30)
0009c8  0b226210  add.ul r[5:6], r[5:6], r[7:8]
0009cc  33230800  float2hfloat.rn r6, r16
0009d0  ab0300f0  lui r7, 983040
0009d4  73106ffc  store.h r6, -64(r30)
0009d8  17937900  or r6, r19, r7
0009dc  ab03803f  lui r7, 260096
0009e0  00a00000  mfence { lm }
0009e4  7f33f200  s_lm2gm r6, r15, 0(r[5:6])
0009e8  00a00000  mfence { lm }
0009ec  db05ffff  j -2004
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
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
000b50  00100000  exit
000b54  00100000  exit
000b58  00100000  exit
000b5c  00100000  exit
000b60  00100000  exit
000b64  00100000  exit
000b68  00100000  exit
000b6c  00100000  exit
000b70  00100000  exit
000b74  00100000  exit
000b78  00100000  exit
000b7c  00100000  exit
000b80  00100000  exit
000b84  00100000  exit
000b88  00100000  exit
000b8c  00100000  exit
000b90  00100000  exit
000b94  00100000  exit
000b98  00100000  exit
000b9c  00100000  exit
000ba0  00100000  exit
000ba4  00100000  exit
000ba8  00100000  exit
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
