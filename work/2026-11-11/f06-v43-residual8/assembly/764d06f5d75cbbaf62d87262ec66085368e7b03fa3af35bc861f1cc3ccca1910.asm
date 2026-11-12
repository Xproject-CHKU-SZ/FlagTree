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
0000f0  805d0002  load_param_i r27, 0
0000f4  1bb32000  slli r6, r1, 2
0000f8  1f010100  addli r2, r2, 0
0000fc  63445f00  loadli.w r8,  44(r30)
000100  e3025f00  loadli.w r5,  40(r30)
000104  e3046f00  loadli.w r9,  48(r30)
000108  9b93f3ff  ori r7, r7, 4095
00010c  8b112310  add.s r3, r6, r2
000110  0b145420  mul.s r8, r8, r5
000114  1f822110  addli r4, r3, 2064
000118  8b129420  mul.s r5, r8, r9
00011c  73600200  stores.w zero, 0(r4)
000120  00a00300  mfence { lm, sm, gm }
000124  80a10304  csr_set csr3, r7
000128  00d00100  sync_group
00012c  73e00100  stores.w zero, 0(r3)
000130  00a00300  mfence { lm, sm, gm }
000134  80a10304  csr_set csr3, r7
000138  00d00100  sync_group
00013c  4bf2b201  ble.s r5, r27, 156
000140  9f034000  addli r7, zero, 32
000144  1f041000  addli r8, zero, 8
000148  80d50002  load_param_i r11, 1
00014c  8b937030  div.s r7, r1, r7
000150  e74f7ff6  storeli.w r7, -1028(r30)
000154  9bb35300  slli r7, r7, 5
000158  8b937018  sub.s r7, r1, r7
00015c  3fa08300  blt.s r7, r8, 8
000160  5b0e0000  j 112
000164  1bb88300  slli r16, r7, 8
000168  1f040010  addli r8, zero, 2048
00016c  93830300  seteq r7, r7, zero
000170  9f040002  addli r9, zero, 256
000174  2bf5ffff  lui r10, 1048575
000178  1b8af001  andi r20, r1, 31
00017c  9bf00004  setlti r1, r1, 64
000180  1f7cf00f  addli r24, zero, 2047
000184  9f0c8ffb  addli r25, r30, -576
000188  1f0d0004  addli r26, zero, 512
00018c  e70f5ff6  storeli.w r5, -1032(r30)
000190  674fbff6  storeli.w r11, -1036(r30)
000194  0b140419  sub.s r8, r8, r16
000198  0b049440  min.u r8, r8, r9
00019c  9b1405f8  ori r9, r10, 3968
0001a0  17039300  and r6, r6, r9
0001a4  9b391400  slli r19, r8, 1
0001a8  2b040080  lui r8, 524288
0001ac  9f040001  addli r9, zero, 128
0001b0  978b7000  and r23, r1, r7
0001b4  abf00000  lui r1, 15
0001b8  ab03803f  lui r7, 260096
0001bc  8b1a2310  add.s r21, r6, r2
0001c0  1b9ef0ff  ori r28, r1, 4095
0001c4  ab00003a  lui r1, 237568
0001c8  1f8b2a10  addli r22, r21, 2064
0001cc  5b060000  j 48
0001d0  8b9dbd10  add.s r27, r27, r11
0001d4  bfff5dfe  blt.s r27, r5, -4
0001d8  9f0e8ff7  addli sp, r30, -1088
0001dc  9f8e8e08  addli sp, sp, 1088
0001e0  00a00300  mfence { lm, sm, gm }
0001e4  00100000  exit
0001e8  e345eff7  loadli.w r11,  -1036(r30)
0001ec  e302fff7  loadli.w r5,  -1032(r30)
0001f0  8b9dbd10  add.s r27, r27, r11
0001f4  3fa05d00  blt.s r27, r5, 8
0001f8  5bfcffff  j -32
0001fc  63016f00  loadli.w r2,  48(r30)
000200  9f050000  addli r11, zero, 0
000204  0b952d30  div.s r10, r27, r2
000208  63415f00  loadli.w r2,  44(r30)
00020c  0b152530  div.s r10, r10, r2
000210  6341fff7  loadli.w r2,  -1028(r30)
000214  1b358500  slli r10, r10, 8
000218  0b152510  add.s r10, r10, r2
00021c  db350000  j 428
000220  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
000224  06740000  vfp162float_h.rn vr8, vr0
000228  c2100fc2  vload_mask16.mz vr1{mr1}, 1536(r30)
00022c  17a78800  xor r14, r17, r8
000230  86f20000  vfp162float_h.rn vr5, vr1
000234  86330000  vfp162float_l.rn vr7, vr0
000238  42138fc2  vload_mask16.mz vr6{mr1}, 1600(r30)
00023c  06b20000  vfp162float_l.rn vr4, vr1
000240  c2140fc3  vload_mask16.mz vr9{mr1}, 1664(r30)
000244  86710300  vfp162float_h.rn vr3, vr6
000248  06310300  vfp162float_l.rn vr2, vr6
00024c  eb528f00  load.d r[6:7], 8(r30)
000250  2b0100f0  lui r2, 983040
000254  12148702  vadd.f.mz.rn vr8{mr1}, r14, vr8
000258  86f00400  vfp162float_h.rn vr1, vr9
00025c  92137702  vadd.f.mz.rn vr7{mr1}, r14, vr7
000260  92125702  vadd.f.mz.rn vr5{mr1}, r14, vr5
000264  06b00400  vfp162float_l.rn vr0, vr9
000268  12124702  vadd.f.mz.rn vr4{mr1}, r14, vr4
00026c  92113702  vadd.f.mz.rn vr3{mr1}, r14, vr3
000270  42138fc3  vload_mask16.mz vr6{mr1}, 1728(r30)
000274  12112702  vadd.f.mz.rn vr2{mr1}, r14, vr2
000278  0a948702  vmul.f.mz.rn vr8{mr1}, r15, vr8
00027c  8a925702  vmul.f.mz.rn vr5{mr1}, r15, vr5
000280  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
000284  8a937702  vmul.f.mz.rn vr7{mr1}, r15, vr7
000288  92147002  vadd.f.mz.rn vr9{mr1}, zero, vr7
00028c  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
000290  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
000294  0a924702  vmul.f.mz.rn vr4{mr1}, r15, vr4
000298  0a912702  vmul.f.mz.rn vr2{mr1}, r15, vr2
00029c  17912900  or r2, r19, r2
0002a0  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
0002a4  86930400  vfloat2fp16_l.rn vr7, vr9
0002a8  86530400  vfloat2fp16_h.rn vr7, vr8
0002ac  8a901702  vmul.f.mz.rn vr1{mr1}, r15, vr1
0002b0  86740300  vfp162float_h.rn vr9, vr6
0002b4  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
0002b8  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
0002bc  0a900702  vmul.f.mz.rn vr0{mr1}, r15, vr0
0002c0  8ba2c210  add.ul r[6:7], r[6:7], r[13:14]
0002c4  06340300  vfp162float_l.rn vr8, vr6
0002c8  12134002  vadd.f.mz.rn vr6{mr1}, zero, vr4
0002cc  06120300  vfloat2fp16_l.rn vr4, vr6
0002d0  06d20200  vfloat2fp16_h.rn vr4, vr5
0002d4  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
0002d8  92101002  vadd.f.mz.rn vr1{mr1}, zero, vr1
0002dc  12132002  vadd.f.mz.rn vr6{mr1}, zero, vr2
0002e0  06110300  vfloat2fp16_l.rn vr2, vr6
0002e4  06d10100  vfloat2fp16_h.rn vr2, vr3
0002e8  86b10200  vfp162float_l.rn vr3, vr5
0002ec  06f30200  vfp162float_h.rn vr6, vr5
0002f0  92120002  vadd.f.mz.rn vr5{mr1}, zero, vr0
0002f4  06900200  vfloat2fp16_l.rn vr0, vr5
0002f8  06d00000  vfloat2fp16_h.rn vr0, vr1
0002fc  92108702  vadd.f.mz.rn vr1{mr1}, r14, vr8
000300  12149702  vadd.f.mz.rn vr8{mr1}, r14, vr9
000304  92113702  vadd.f.mz.rn vr3{mr1}, r14, vr3
000308  0a948702  vmul.f.mz.rn vr8{mr1}, r15, vr8
00030c  8a901702  vmul.f.mz.rn vr1{mr1}, r15, vr1
000310  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
000314  92141002  vadd.f.mz.rn vr9{mr1}, zero, vr1
000318  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
00031c  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
000320  86900400  vfloat2fp16_l.rn vr1, vr9
000324  86500400  vfloat2fp16_h.rn vr1, vr8
000328  86f40200  vfp162float_h.rn vr9, vr5
00032c  06b40200  vfp162float_l.rn vr8, vr5
000330  92126702  vadd.f.mz.rn vr5{mr1}, r14, vr6
000334  12133002  vadd.f.mz.rn vr6{mr1}, zero, vr3
000338  8a925702  vmul.f.mz.rn vr5{mr1}, r15, vr5
00033c  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
000340  86110300  vfloat2fp16_l.rn vr3, vr6
000344  86d10200  vfloat2fp16_h.rn vr3, vr5
000348  12138702  vadd.f.mz.rn vr6{mr1}, r14, vr8
00034c  12149702  vadd.f.mz.rn vr8{mr1}, r14, vr9
000350  0a936702  vmul.f.mz.rn vr6{mr1}, r15, vr6
000354  0a948702  vmul.f.mz.rn vr8{mr1}, r15, vr8
000358  c2120fe3  vload_mask16.mz vr5{mr1}, 1920(r30)
00035c  461c7fa2  vstore_mask16.mz vr7{mr1}, 1472(r30)
000360  46104fc2  vstore_mask16.mz vr4{mr1}, 1536(r30)
000364  46142fc2  vstore_mask16.mz vr2{mr1}, 1600(r30)
000368  46180fc2  vstore_mask16.mz vr0{mr1}, 1664(r30)
00036c  461c1fc2  vstore_mask16.mz vr1{mr1}, 1728(r30)
000370  46103fe2  vstore_mask16.mz vr3{mr1}, 1792(r30)
000374  12136002  vadd.f.mz.rn vr6{mr1}, zero, vr6
000378  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
00037c  86140300  vfloat2fp16_l.rn vr9, vr6
000380  86540400  vfloat2fp16_h.rn vr9, vr8
000384  46149fe2  vstore_mask16.mz vr9{mr1}, 1856(r30)
000388  06b30200  vfp162float_l.rn vr6, vr5
00038c  06f40200  vfp162float_h.rn vr8, vr5
000390  92126702  vadd.f.mz.rn vr5{mr1}, r14, vr6
000394  12138702  vadd.f.mz.rn vr6{mr1}, r14, vr8
000398  8a925702  vmul.f.mz.rn vr5{mr1}, r15, vr5
00039c  0a936702  vmul.f.mz.rn vr6{mr1}, r15, vr6
0003a0  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
0003a4  12136002  vadd.f.mz.rn vr6{mr1}, zero, vr6
0003a8  06940200  vfloat2fp16_l.rn vr8, vr5
0003ac  06540300  vfloat2fp16_h.rn vr8, vr6
0003b0  46188fe2  vstore_mask16.mz vr8{mr1}, 1920(r30)
0003b4  00a00000  mfence { lm }
0003b8  7fb19201  s_lm2gm r2, r25, 0(r[6:7])
0003bc  00a00000  mfence { lm }
0003c0  9f950500  addli r11, r11, 1
0003c4  b79895fe  beq r11, r9, -476
0003c8  1bb61500  slli r12, r11, 1
0003cc  0b17c510  add.s r14, r10, r12
0003d0  bf4fecfe  blt.s r24, r14, -16
0003d4  1f060000  addli r12, zero, 0
0003d8  0b91cc10  add.s r2, r25, r12
0003dc  1f460600  addli r12, r12, 4
0003e0  73100100  store.h zero, 0(r2)
0003e4  73110100  store.h zero, 2(r2)
0003e8  00a00000  mfence { lm }
0003ec  bb3fa6ff  bneq r12, r26, -20
0003f0  1b36b700  slli r12, r14, 11
0003f4  1f110000  addli r2, zero, 1
0003f8  eb520f00  load.d r[6:7], 0(r30)
0003fc  ab0700f0  lui r15, 983040
000400  0b160611  add.s r12, r12, r16
000404  9797f900  or r15, r19, r15
000408  33160628  sext_int2long r[13:14], r12
00040c  17362602  sll.d r[13:14], r[13:14], r2
000410  8ba8c210  add.ul r[18:19], r[6:7], r[13:14]
000414  ffa79801  l_gm2lm r15, r25, 0(r[18:19])
000418  00a00000  mfence { lm }
00041c  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
000420  06310000  vfp162float_l.rn vr2, vr0
000424  86710000  vfp162float_h.rn vr3, vr0
000428  c2100fc2  vload_mask16.mz vr1{mr1}, 1536(r30)
00042c  06f20000  vfp162float_h.rn vr4, vr1
000430  12112002  vadd.f.mz.rn vr2{mr1}, zero, vr2
000434  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
000438  12124002  vadd.f.mz.rn vr4{mr1}, zero, vr4
00043c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000440  86b10000  vfp162float_l.rn vr3, vr1
000444  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
000448  96113102  vadd.f.mz.rn vr3{mr1}, vr2, vr3
00044c  42118fc2  vload_mask16.mz vr2{mr1}, 1600(r30)
000450  86720100  vfp162float_h.rn vr5, vr2
000454  0e450002  vmul.hf.mz.rn vr10{mr1}, vr0, vr0
000458  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
00045c  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
000460  06320100  vfp162float_l.rn vr4, vr2
000464  12124002  vadd.f.mz.rn vr4{mr1}, zero, vr4
000468  0e412102  vmul.hf.mz.rn vr2{mr1}, vr2, vr2
00046c  16924102  vadd.f.mz.rn vr4{mr1}, vr3, vr4
000470  c2110fc3  vload_mask16.mz vr3{mr1}, 1664(r30)
000474  06f30100  vfp162float_h.rn vr6, vr3
000478  12136002  vadd.f.mz.rn vr6{mr1}, zero, vr6
00047c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000480  86b20100  vfp162float_l.rn vr5, vr3
000484  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
000488  8ec13102  vmul.hf.mz.rn vr3{mr1}, vr3, vr3
00048c  86b50100  vfp162float_l.rn vr11, vr3
000490  96125202  vadd.f.mz.rn vr5{mr1}, vr4, vr5
000494  42128fc3  vload_mask16.mz vr4{mr1}, 1728(r30)
000498  86730200  vfp162float_h.rn vr7, vr4
00049c  92137002  vadd.f.mz.rn vr7{mr1}, zero, vr7
0004a0  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
0004a4  06330200  vfp162float_l.rn vr6, vr4
0004a8  12136002  vadd.f.mz.rn vr6{mr1}, zero, vr6
0004ac  0e424202  vmul.hf.mz.rn vr4{mr1}, vr4, vr4
0004b0  16936202  vadd.f.mz.rn vr6{mr1}, vr5, vr6
0004b4  c2120fe2  vload_mask16.mz vr5{mr1}, 1792(r30)
0004b8  06f40200  vfp162float_h.rn vr8, vr5
0004bc  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
0004c0  16137302  vadd.f.mz.rn vr6{mr1}, vr6, vr7
0004c4  86b30200  vfp162float_l.rn vr7, vr5
0004c8  92137002  vadd.f.mz.rn vr7{mr1}, zero, vr7
0004cc  8ec25202  vmul.hf.mz.rn vr5{mr1}, vr5, vr5
0004d0  96137302  vadd.f.mz.rn vr7{mr1}, vr6, vr7
0004d4  42138fe2  vload_mask16.mz vr6{mr1}, 1856(r30)
0004d8  86740300  vfp162float_h.rn vr9, vr6
0004dc  92149002  vadd.f.mz.rn vr9{mr1}, zero, vr9
0004e0  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
0004e4  06340300  vfp162float_l.rn vr8, vr6
0004e8  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
0004ec  0e436302  vmul.hf.mz.rn vr6{mr1}, vr6, vr6
0004f0  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
0004f4  42140fe3  vload_mask16.mz vr8{mr1}, 1920(r30)
0004f8  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
0004fc  86340400  vfp162float_l.rn vr9, vr8
000500  92149002  vadd.f.mz.rn vr9{mr1}, zero, vr9
000504  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
000508  86740400  vfp162float_h.rn vr9, vr8
00050c  0e448402  vmul.hf.mz.rn vr8{mr1}, vr8, vr8
000510  92149002  vadd.f.mz.rn vr9{mr1}, zero, vr9
000514  96939302  vadd.f.mz.rn vr7{mr1}, vr7, vr9
000518  8ec41002  vmul.hf.mz.rn vr9{mr1}, vr1, vr1
00051c  06b00400  vfp162float_l.rn vr0, vr9
000520  46180fa2  vstore_mask16.mz vr0{mr1}, 1408(r30)
000524  86700300  vfp162float_h.rn vr1, vr6
000528  06f00400  vfp162float_h.rn vr0, vr9
00052c  46140fa2  vstore_mask16.mz vr0{mr1}, 1344(r30)
000530  86f40100  vfp162float_h.rn vr9, vr3
000534  86710200  vfp162float_h.rn vr3, vr4
000538  06300100  vfp162float_l.rn vr0, vr2
00053c  46100fa2  vstore_mask16.mz vr0{mr1}, 1280(r30)
000540  06700100  vfp162float_h.rn vr0, vr2
000544  461c0f82  vstore_mask16.mz vr0{mr1}, 1216(r30)
000548  06710400  vfp162float_h.rn vr2, vr8
00054c  fa970340  vextracti.f r15, 0(vr7)
000550  fa981340  vextracti.f r17, 1(vr7)
000554  06f00200  vfp162float_h.rn vr0, vr5
000558  8be71711  add.f.rn r15, r15, r17
00055c  fa982340  vextracti.f r17, 2(vr7)
000560  8be7f810  add.f.rn r15, r17, r15
000564  fa983340  vextracti.f r17, 3(vr7)
000568  8be7f810  add.f.rn r15, r17, r15
00056c  fa984340  vextracti.f r17, 4(vr7)
000570  8be7f810  add.f.rn r15, r17, r15
000574  fa985340  vextracti.f r17, 5(vr7)
000578  8be7f810  add.f.rn r15, r17, r15
00057c  fa986340  vextracti.f r17, 6(vr7)
000580  8be7f810  add.f.rn r15, r17, r15
000584  fa987340  vextracti.f r17, 7(vr7)
000588  8be7f810  add.f.rn r15, r17, r15
00058c  fa988340  vextracti.f r17, 8(vr7)
000590  8be7f810  add.f.rn r15, r17, r15
000594  fa989340  vextracti.f r17, 9(vr7)
000598  8be7f810  add.f.rn r15, r17, r15
00059c  fa98a340  vextracti.f r17, 10(vr7)
0005a0  8be7f810  add.f.rn r15, r17, r15
0005a4  fa98b340  vextracti.f r17, 11(vr7)
0005a8  8be7f810  add.f.rn r15, r17, r15
0005ac  fa98c340  vextracti.f r17, 12(vr7)
0005b0  8be7f810  add.f.rn r15, r17, r15
0005b4  fa98d340  vextracti.f r17, 13(vr7)
0005b8  8be7f810  add.f.rn r15, r17, r15
0005bc  fa98e340  vextracti.f r17, 14(vr7)
0005c0  8be7f810  add.f.rn r15, r17, r15
0005c4  fa98f340  vextracti.f r17, 15(vr7)
0005c8  86330200  vfp162float_l.rn vr7, vr4
0005cc  06b20200  vfp162float_l.rn vr4, vr5
0005d0  86320300  vfp162float_l.rn vr5, vr6
0005d4  06330400  vfp162float_l.rn vr6, vr8
0005d8  42140fa3  vload_mask16.mz vr8{mr1}, 1408(r30)
0005dc  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
0005e0  46188fa2  vstore_mask16.mz vr8{mr1}, 1408(r30)
0005e4  92137002  vadd.f.mz.rn vr7{mr1}, zero, vr7
0005e8  46107f82  vstore_mask16.mz vr7{mr1}, 1024(r30)
0005ec  42148fa2  vload_mask16.mz vr8{mr1}, 1344(r30)
0005f0  92133002  vadd.f.mz.rn vr7{mr1}, zero, vr3
0005f4  92115002  vadd.f.mz.rn vr3{mr1}, zero, vr5
0005f8  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
0005fc  46148fa2  vstore_mask16.mz vr8{mr1}, 1344(r30)
000600  42140fa2  vload_mask16.mz vr8{mr1}, 1280(r30)
000604  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
000608  46108fa2  vstore_mask16.mz vr8{mr1}, 1280(r30)
00060c  8be7f810  add.f.rn r15, r17, r15
000610  42148f83  vload_mask16.mz vr8{mr1}, 1216(r30)
000614  12148002  vadd.f.mz.rn vr8{mr1}, zero, vr8
000618  461c8f82  vstore_mask16.mz vr8{mr1}, 1216(r30)
00061c  1214b002  vadd.f.mz.rn vr8{mr1}, zero, vr11
000620  46188f82  vstore_mask16.mz vr8{mr1}, 1152(r30)
000624  92151002  vadd.f.mz.rn vr11{mr1}, zero, vr1
000628  86300500  vfp162float_l.rn vr1, vr10
00062c  12149002  vadd.f.mz.rn vr8{mr1}, zero, vr9
000630  46148f82  vstore_mask16.mz vr8{mr1}, 1088(r30)
000634  92140002  vadd.f.mz.rn vr9{mr1}, zero, vr0
000638  12102002  vadd.f.mz.rn vr0{mr1}, zero, vr2
00063c  06710500  vfp162float_h.rn vr2, vr10
000640  92101002  vadd.f.mz.rn vr1{mr1}, zero, vr1
000644  12144002  vadd.f.mz.rn vr8{mr1}, zero, vr4
000648  12126002  vadd.f.mz.rn vr4{mr1}, zero, vr6
00064c  12112002  vadd.f.mz.rn vr2{mr1}, zero, vr2
000650  73e0f100  stores.w r15, 0(r3)
000654  00a00300  mfence { lm, sm, gm }
000658  80210e04  csr_set csr3, r28
00065c  00d00100  sync_group
000660  3b140a00  bneq r20, zero, 260
000664  efc70a00  loads.w r15, 0(r21)
000668  efc84a00  loads.w r17, 4(r21)
00066c  6fc98a00  loads.w r18, 8(r21)
000670  8be71711  add.f.rn r15, r15, r17
000674  efc8ca00  loads.w r17, 12(r21)
000678  8be72711  add.f.rn r15, r15, r18
00067c  6fc90a01  loads.w r18, 16(r21)
000680  8be71711  add.f.rn r15, r15, r17
000684  efc84a01  loads.w r17, 20(r21)
000688  8be72711  add.f.rn r15, r15, r18
00068c  6fc98a01  loads.w r18, 24(r21)
000690  8be71711  add.f.rn r15, r15, r17
000694  efc8ca01  loads.w r17, 28(r21)
000698  8be72711  add.f.rn r15, r15, r18
00069c  6fc90a02  loads.w r18, 32(r21)
0006a0  8be71711  add.f.rn r15, r15, r17
0006a4  efc84a02  loads.w r17, 36(r21)
0006a8  8be72711  add.f.rn r15, r15, r18
0006ac  6fc98a02  loads.w r18, 40(r21)
0006b0  8be71711  add.f.rn r15, r15, r17
0006b4  efc8ca02  loads.w r17, 44(r21)
0006b8  8be72711  add.f.rn r15, r15, r18
0006bc  6fc90a03  loads.w r18, 48(r21)
0006c0  8be71711  add.f.rn r15, r15, r17
0006c4  efc84a03  loads.w r17, 52(r21)
0006c8  8be72711  add.f.rn r15, r15, r18
0006cc  6fc98a03  loads.w r18, 56(r21)
0006d0  8be71711  add.f.rn r15, r15, r17
0006d4  efc8ca03  loads.w r17, 60(r21)
0006d8  8be72711  add.f.rn r15, r15, r18
0006dc  6fc90a04  loads.w r18, 64(r21)
0006e0  8be71711  add.f.rn r15, r15, r17
0006e4  efc84a04  loads.w r17, 68(r21)
0006e8  8be72711  add.f.rn r15, r15, r18
0006ec  6fc98a04  loads.w r18, 72(r21)
0006f0  8be71711  add.f.rn r15, r15, r17
0006f4  efc8ca04  loads.w r17, 76(r21)
0006f8  8be72711  add.f.rn r15, r15, r18
0006fc  6fc90a05  loads.w r18, 80(r21)
000700  8be71711  add.f.rn r15, r15, r17
000704  efc84a05  loads.w r17, 84(r21)
000708  8be72711  add.f.rn r15, r15, r18
00070c  6fc98a05  loads.w r18, 88(r21)
000710  8be71711  add.f.rn r15, r15, r17
000714  efc8ca05  loads.w r17, 92(r21)
000718  8be72711  add.f.rn r15, r15, r18
00071c  6fc90a06  loads.w r18, 96(r21)
000720  8be71711  add.f.rn r15, r15, r17
000724  efc84a06  loads.w r17, 100(r21)
000728  8be72711  add.f.rn r15, r15, r18
00072c  6fc98a06  loads.w r18, 104(r21)
000730  8be71711  add.f.rn r15, r15, r17
000734  efc8ca06  loads.w r17, 108(r21)
000738  8be72711  add.f.rn r15, r15, r18
00073c  6fc90a07  loads.w r18, 112(r21)
000740  8be71711  add.f.rn r15, r15, r17
000744  efc84a07  loads.w r17, 116(r21)
000748  8be72711  add.f.rn r15, r15, r18
00074c  6fc98a07  loads.w r18, 120(r21)
000750  8be71711  add.f.rn r15, r15, r17
000754  efc8ca07  loads.w r17, 124(r21)
000758  8be72711  add.f.rn r15, r15, r18
00075c  8be71711  add.f.rn r15, r15, r17
000760  73e0fa00  stores.w r15, 0(r21)
000764  00a00300  mfence { lm, sm, gm }
000768  80210e04  csr_set csr3, r28
00076c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000770  42110fa3  vload_mask16.mz vr2{mr1}, 1408(r30)
000774  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000778  42118fa2  vload_mask16.mz vr2{mr1}, 1344(r30)
00077c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000780  42110fa2  vload_mask16.mz vr2{mr1}, 1280(r30)
000784  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000788  42118f83  vload_mask16.mz vr2{mr1}, 1216(r30)
00078c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000790  42110f83  vload_mask16.mz vr2{mr1}, 1152(r30)
000794  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000798  42118f82  vload_mask16.mz vr2{mr1}, 1088(r30)
00079c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0007a0  42110f82  vload_mask16.mz vr2{mr1}, 1024(r30)
0007a4  00d00100  sync_group
0007a8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0007ac  96907002  vadd.f.mz.rn vr1{mr1}, vr1, vr7
0007b0  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
0007b4  96909002  vadd.f.mz.rn vr1{mr1}, vr1, vr9
0007b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0007bc  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
0007c0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0007c4  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
0007c8  fa170040  vextracti.f r15, 0(vr0)
0007cc  fa181040  vextracti.f r17, 1(vr0)
0007d0  7a19f040  vextracti.f r18, 15(vr0)
0007d4  8be71711  add.f.rn r15, r15, r17
0007d8  fa182040  vextracti.f r17, 2(vr0)
0007dc  8be7f810  add.f.rn r15, r17, r15
0007e0  fa183040  vextracti.f r17, 3(vr0)
0007e4  8be7f810  add.f.rn r15, r17, r15
0007e8  fa184040  vextracti.f r17, 4(vr0)
0007ec  8be7f810  add.f.rn r15, r17, r15
0007f0  fa185040  vextracti.f r17, 5(vr0)
0007f4  8be7f810  add.f.rn r15, r17, r15
0007f8  fa186040  vextracti.f r17, 6(vr0)
0007fc  8be7f810  add.f.rn r15, r17, r15
000800  fa187040  vextracti.f r17, 7(vr0)
000804  8be7f810  add.f.rn r15, r17, r15
000808  fa188040  vextracti.f r17, 8(vr0)
00080c  8be7f810  add.f.rn r15, r17, r15
000810  fa189040  vextracti.f r17, 9(vr0)
000814  8be7f810  add.f.rn r15, r17, r15
000818  fa18a040  vextracti.f r17, 10(vr0)
00081c  8be7f810  add.f.rn r15, r17, r15
000820  fa18b040  vextracti.f r17, 11(vr0)
000824  8be7f810  add.f.rn r15, r17, r15
000828  fa18c040  vextracti.f r17, 12(vr0)
00082c  8be7f810  add.f.rn r15, r17, r15
000830  fa18d040  vextracti.f r17, 13(vr0)
000834  8be7f810  add.f.rn r15, r17, r15
000838  fa18e040  vextracti.f r17, 14(vr0)
00083c  8be8f810  add.f.rn r17, r17, r15
000840  efc70a00  loads.w r15, 0(r21)
000844  8b681911  add.f.rn r17, r18, r17
000848  73601201  stores.w r17, 0(r4)
00084c  00a00300  mfence { lm, sm, gm }
000850  80210e04  csr_set csr3, r28
000854  00d00100  sync_group
000858  3b140a00  bneq r20, zero, 260
00085c  ef480b00  loads.w r17, 0(r22)
000860  6f494b00  loads.w r18, 4(r22)
000864  6f418b00  loads.w r2, 8(r22)
000868  8be82811  add.f.rn r17, r17, r18
00086c  6f49cb00  loads.w r18, 12(r22)
000870  0be12810  add.f.rn r2, r17, r2
000874  ef480b01  loads.w r17, 16(r22)
000878  0b612111  add.f.rn r2, r2, r18
00087c  6f494b01  loads.w r18, 20(r22)
000880  0b611111  add.f.rn r2, r2, r17
000884  ef488b01  loads.w r17, 24(r22)
000888  0b612111  add.f.rn r2, r2, r18
00088c  6f49cb01  loads.w r18, 28(r22)
000890  0b611111  add.f.rn r2, r2, r17
000894  ef480b02  loads.w r17, 32(r22)
000898  0b612111  add.f.rn r2, r2, r18
00089c  6f494b02  loads.w r18, 36(r22)
0008a0  0b611111  add.f.rn r2, r2, r17
0008a4  ef488b02  loads.w r17, 40(r22)
0008a8  0b612111  add.f.rn r2, r2, r18
0008ac  6f49cb02  loads.w r18, 44(r22)
0008b0  0b611111  add.f.rn r2, r2, r17
0008b4  ef480b03  loads.w r17, 48(r22)
0008b8  0b612111  add.f.rn r2, r2, r18
0008bc  6f494b03  loads.w r18, 52(r22)
0008c0  0b611111  add.f.rn r2, r2, r17
0008c4  ef488b03  loads.w r17, 56(r22)
0008c8  0b612111  add.f.rn r2, r2, r18
0008cc  6f49cb03  loads.w r18, 60(r22)
0008d0  0b611111  add.f.rn r2, r2, r17
0008d4  ef480b04  loads.w r17, 64(r22)
0008d8  0b612111  add.f.rn r2, r2, r18
0008dc  6f494b04  loads.w r18, 68(r22)
0008e0  0b611111  add.f.rn r2, r2, r17
0008e4  ef488b04  loads.w r17, 72(r22)
0008e8  0b612111  add.f.rn r2, r2, r18
0008ec  6f49cb04  loads.w r18, 76(r22)
0008f0  0b611111  add.f.rn r2, r2, r17
0008f4  ef480b05  loads.w r17, 80(r22)
0008f8  0b612111  add.f.rn r2, r2, r18
0008fc  6f494b05  loads.w r18, 84(r22)
000900  0b611111  add.f.rn r2, r2, r17
000904  ef488b05  loads.w r17, 88(r22)
000908  0b612111  add.f.rn r2, r2, r18
00090c  6f49cb05  loads.w r18, 92(r22)
000910  0b611111  add.f.rn r2, r2, r17
000914  ef480b06  loads.w r17, 96(r22)
000918  0b612111  add.f.rn r2, r2, r18
00091c  6f494b06  loads.w r18, 100(r22)
000920  0b611111  add.f.rn r2, r2, r17
000924  ef488b06  loads.w r17, 104(r22)
000928  0b612111  add.f.rn r2, r2, r18
00092c  6f49cb06  loads.w r18, 108(r22)
000930  0b611111  add.f.rn r2, r2, r17
000934  ef480b07  loads.w r17, 112(r22)
000938  0b612111  add.f.rn r2, r2, r18
00093c  6f494b07  loads.w r18, 116(r22)
000940  0b611111  add.f.rn r2, r2, r17
000944  ef488b07  loads.w r17, 120(r22)
000948  0b612111  add.f.rn r2, r2, r18
00094c  6f49cb07  loads.w r18, 124(r22)
000950  0b611111  add.f.rn r2, r2, r17
000954  0b612111  add.f.rn r2, r2, r18
000958  73602b00  stores.w r2, 0(r22)
00095c  00a00300  mfence { lm, sm, gm }
000960  80210e04  csr_set csr3, r28
000964  00d00100  sync_group
000968  6f410b00  loads.w r2, 0(r22)
00096c  8be81720  mul.f.rn r17, r15, r1
000970  e3022f00  loadli.w r5,  16(r30)
000974  8be71821  mul.f.rn r15, r17, r17
000978  0b611120  mul.f.rn r2, r2, r1
00097c  0b61f118  sub.f.rn r2, r2, r15
000980  0be12210  add.f.rn r2, r5, r2
000984  0f010108  sqrt.f.rn r2, r2
000988  8f872318  div.f.rn r15, r7, r2
00098c  37d20bfc  beq r23, zero, -1900
000990  b3130728  sext_int2long r[8:9], r14
000994  9f120000  addli r5, zero, 1
000998  33a10800  float2hfloat.rn r2, r17
00099c  1f290000  addli r18, zero, 2
0009a0  1f078fff  addli r14, r30, -64
0009a4  97b35302  sll.d r[8:9], r[8:9], r5
0009a8  eb528f01  load.d r[6:7], 24(r30)
0009ac  73102ffc  store.h r2, -64(r30)
0009b0  2b0100f0  lui r2, 983040
0009b4  00a00000  mfence { lm }
0009b8  17112900  or r2, r18, r2
0009bc  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
0009c0  7fb1e200  s_lm2gm r2, r14, 0(r[6:7])
0009c4  33a10700  float2hfloat.rn r2, r15
0009c8  00a00000  mfence { lm }
0009cc  eb520f02  load.d r[6:7], 32(r30)
0009d0  73102ffc  store.h r2, -64(r30)
0009d4  00a00000  mfence { lm }
0009d8  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
0009dc  ab0300f0  lui r7, 983040
0009e0  2b040080  lui r8, 524288
0009e4  17117900  or r2, r18, r7
0009e8  ab03803f  lui r7, 260096
0009ec  7fb1e200  s_lm2gm r2, r14, 0(r[6:7])
0009f0  00a00000  mfence { lm }
0009f4  db05ffff  j -2004
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
000c30  00100000  exit
000c34  00100000  exit
