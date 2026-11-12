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
000078  9f494000  addli r19, zero, 36
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
0000dc  9f8e0efb  addli sp, sp, -640
0000e0  1f8f8e04  addli r30, sp, 576
0000e4  2b050000  lui r10, 0
0000e8  80300002  core_id r1
0000ec  2bf20000  lui r4, 15
0000f0  00560002  load_param_i r12, 0
0000f4  63433f00  loadli.w r6,  28(r30)
0000f8  e3013f00  loadli.w r3,  24(r30)
0000fc  1bb12000  slli r2, r1, 2
000100  1f050500  addli r10, r10, 0
000104  9b15f2ff  ori r11, r4, 4095
000108  2bf27fff  lui r4, 1046527
00010c  e3024f00  loadli.w r5,  32(r30)
000110  8b13a110  add.s r7, r2, r10
000114  1b12f2ff  ori r4, r4, 4095
000118  8b113320  mul.s r3, r6, r3
00011c  73e80340  stores.w zero, 1040(r7)
000120  00a00300  mfence { lm, sm, gm }
000124  80a10504  csr_set csr3, r11
000128  00d00100  sync_group
00012c  670f7ffc  storeli.w r7, -272(r30)
000130  73e04300  stores.w r4, 0(r7)
000134  8b965120  mul.s r13, r3, r5
000138  00a00300  mfence { lm, sm, gm }
00013c  80a10504  csr_set csr3, r11
000140  00d00100  sync_group
000144  cbc9c606  ble.s r13, r12, 3696
000148  e303effd  loadli.w r7,  -272(r30)
00014c  1bba4000  slli r20, r1, 4
000150  9f1a0000  addli r21, zero, 1
000154  eb520f00  load.d r[6:7], 0(r30)
000158  9f1b0004  addli r23, zero, 513
00015c  eb518f00  load.d r[4:5], 8(r30)
000160  00d70002  load_param_i r14, 1
000164  9f0d4000  addli r27, zero, 32
000168  1f0e8fff  addli r28, r30, -64
00016c  1f4b3000  addli r22, zero, 28
000170  674fbffc  storeli.w r11, -268(r30)
000174  e74edffc  storeli.w r13, -276(r30)
000178  8b944b19  sub.s r9, r23, r20
00017c  674e4ffd  storeli.w r20, -284(r30)
000180  670eeffc  storeli.w r14, -288(r30)
000184  9f832308  addli r7, r7, 1040
000188  e70e7ffc  storeli.w r7, -280(r30)
00018c  9b131a00  ori r7, r20, 1
000190  e74d7ffc  storeli.w r7, -292(r30)
000194  9b132a00  ori r7, r20, 2
000198  e70d7ffc  storeli.w r7, -296(r30)
00019c  9b133a00  ori r7, r20, 3
0001a0  674d7ffc  storeli.w r7, -300(r30)
0001a4  9b134a00  ori r7, r20, 4
0001a8  670d7ffc  storeli.w r7, -304(r30)
0001ac  9b135a00  ori r7, r20, 5
0001b0  e74c7ffc  storeli.w r7, -308(r30)
0001b4  9b136a00  ori r7, r20, 6
0001b8  e70c7ffc  storeli.w r7, -312(r30)
0001bc  9b137a00  ori r7, r20, 7
0001c0  674c7ffc  storeli.w r7, -316(r30)
0001c4  9b138a00  ori r7, r20, 8
0001c8  670c7ffc  storeli.w r7, -320(r30)
0001cc  9b139a00  ori r7, r20, 9
0001d0  e74b7ffc  storeli.w r7, -324(r30)
0001d4  9b13aa00  ori r7, r20, 10
0001d8  e70b7ffc  storeli.w r7, -328(r30)
0001dc  9b13ba00  ori r7, r20, 11
0001e0  674b7ffc  storeli.w r7, -332(r30)
0001e4  9b13ca00  ori r7, r20, 12
0001e8  670b7ffc  storeli.w r7, -336(r30)
0001ec  9b13da00  ori r7, r20, 13
0001f0  e74a7ffc  storeli.w r7, -340(r30)
0001f4  9b13ea00  ori r7, r20, 14
0001f8  e70a7ffc  storeli.w r7, -344(r30)
0001fc  9b13fa00  ori r7, r20, 15
000200  674a7ffc  storeli.w r7, -348(r30)
000204  b3130a28  sext_int2long r[8:9], r20
000208  97b35303  sll.d r[8:9], r[8:9], r21
00020c  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
000210  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
000214  733c5fe8  store.d r[6:7], -360(r30)
000218  8b920448  max.s r5, r9, zero
00021c  1f032000  addli r6, zero, 16
000220  9f048000  addli r9, zero, 64
000224  73343fe8  store.d r[4:5], -376(r30)
000228  8b926240  min.s r5, r5, r6
00022c  0b939038  mod.s r6, r1, r9
000230  abf4ffff  lui r9, 1048575
000234  9b80f003  andi r1, r1, 63
000238  9bb71200  slli r15, r5, 1
00023c  9b9204f0  ori r5, r9, 3840
000240  e7471ffe  storeli.w r1, -132(r30)
000244  17015100  and r2, r2, r5
000248  6749fffc  storeli.w r15, -364(r30)
00024c  0b11a110  add.s r2, r2, r10
000250  9b314300  slli r3, r6, 4
000254  1f030fff  addli r6, r30, -128
000258  9f002108  addli r1, r2, 1040
00025c  674d2ffa  storeli.w r2, -556(r30)
000260  670d1ffa  storeli.w r1, -560(r30)
000264  9b903100  ori r1, r3, 3
000268  e7071ffe  storeli.w r1, -136(r30)
00026c  9f000004  addli r1, zero, 512
000270  db3e0000  j 500
000274  0be26310  add.f.rn r4, r7, r6
000278  e302dffd  loadli.w r5,  -280(r30)
00027c  73e04200  stores.w r4, 0(r5)
000280  00a00300  mfence { lm, sm, gm }
000284  80210c04  csr_set csr3, r24
000288  00d00100  sync_group
00028c  6342fffe  loadli.w r4,  -132(r30)
000290  377c0204  beq r4, zero, 2844
000294  e342dffe  loadli.w r5,  -148(r30)
000298  6303dffe  loadli.w r6,  -152(r30)
00029c  e343cffe  loadli.w r7,  -156(r30)
0002a0  6304cffe  loadli.w r8,  -160(r30)
0002a4  e344bffe  loadli.w r9,  -164(r30)
0002a8  6305bffe  loadli.w r10,  -168(r30)
0002ac  e345affe  loadli.w r11,  -172(r30)
0002b0  6306affe  loadli.w r12,  -176(r30)
0002b4  e3469ffe  loadli.w r13,  -180(r30)
0002b8  63079ffe  loadli.w r14,  -184(r30)
0002bc  e3478ffe  loadli.w r15,  -188(r30)
0002c0  63088ffe  loadli.w r16,  -192(r30)
0002c4  00a00300  mfence { lm, sm, gm }
0002c8  80210c04  csr_set csr3, r24
0002cc  00d00100  sync_group
0002d0  ef480941  loads.w r17, 1040(r18)
0002d4  0be23c18  sub.f.rn r4, r25, r3
0002d8  6b5c0f01  load.d r[25:26], 16(r30)
0002dc  8be73718  sub.f.rn r15, r15, r3
0002e0  8be23218  sub.f.rn r5, r5, r3
0002e4  0b633318  sub.f.rn r6, r6, r3
0002e8  8be33318  sub.f.rn r7, r7, r3
0002ec  0b643418  sub.f.rn r8, r8, r3
0002f0  8be43418  sub.f.rn r9, r9, r3
0002f4  0b653518  sub.f.rn r10, r10, r3
0002f8  8be53518  sub.f.rn r11, r11, r3
0002fc  0b663618  sub.f.rn r12, r12, r3
000300  8be63618  sub.f.rn r13, r13, r3
000304  0b673718  sub.f.rn r14, r14, r3
000308  0b683818  sub.f.rn r16, r16, r3
00030c  8be13a18  sub.f.rn r3, r21, r3
000310  9f1a0000  addli r21, zero, 1
000314  0f020200  exp.f.rn r4, r4
000318  8f870700  exp.f.rn r15, r15
00031c  8f820200  exp.f.rn r5, r5
000320  0f030300  exp.f.rn r6, r6
000324  8f830300  exp.f.rn r7, r7
000328  0f040400  exp.f.rn r8, r8
00032c  8f840400  exp.f.rn r9, r9
000330  0f050500  exp.f.rn r10, r10
000334  8f850500  exp.f.rn r11, r11
000338  0f060600  exp.f.rn r12, r12
00033c  8f860600  exp.f.rn r13, r13
000340  0f070700  exp.f.rn r14, r14
000344  0f080800  exp.f.rn r16, r16
000348  8f810100  exp.f.rn r3, r3
00034c  73681951  stores.w r17, 1296(r18)
000350  2b09803f  lui r18, 260096
000354  8f081919  div.f.rn r17, r18, r17
000358  6309effe  loadli.w r18,  -144(r30)
00035c  0b194911  add.s r18, r18, r20
000360  33190928  sext_int2long r[19:20], r18
000364  8be71721  mul.f.rn r15, r15, r17
000368  8be01021  mul.f.rn r1, r1, r17
00036c  0b611121  mul.f.rn r2, r2, r17
000370  0b621221  mul.f.rn r4, r4, r17
000374  8be21221  mul.f.rn r5, r5, r17
000378  0b631321  mul.f.rn r6, r6, r17
00037c  8be31321  mul.f.rn r7, r7, r17
000380  0b641421  mul.f.rn r8, r8, r17
000384  8be41421  mul.f.rn r9, r9, r17
000388  0b651521  mul.f.rn r10, r10, r17
00038c  8be51521  mul.f.rn r11, r11, r17
000390  0b661621  mul.f.rn r12, r12, r17
000394  8be61621  mul.f.rn r13, r13, r17
000398  0b671721  mul.f.rn r14, r14, r17
00039c  0b681821  mul.f.rn r16, r16, r17
0003a0  8be11121  mul.f.rn r3, r3, r17
0003a4  17395903  sll.d r[19:20], r[19:20], r21
0003a8  8b282c11  add.ul r[18:19], r[25:26], r[19:20]
0003ac  b3a70700  float2hfloat.rn r15, r15
0003b0  b3a00000  float2hfloat.rn r1, r1
0003b4  33210100  float2hfloat.rn r2, r2
0003b8  33220200  float2hfloat.rn r4, r4
0003bc  b3a20200  float2hfloat.rn r5, r5
0003c0  33230300  float2hfloat.rn r6, r6
0003c4  b3a30300  float2hfloat.rn r7, r7
0003c8  33240400  float2hfloat.rn r8, r8
0003cc  b3a40400  float2hfloat.rn r9, r9
0003d0  33250500  float2hfloat.rn r10, r10
0003d4  b3a50500  float2hfloat.rn r11, r11
0003d8  33260600  float2hfloat.rn r12, r12
0003dc  b3a60600  float2hfloat.rn r13, r13
0003e0  33270700  float2hfloat.rn r14, r14
0003e4  33280800  float2hfloat.rn r16, r16
0003e8  b3a10100  float2hfloat.rn r3, r3
0003ec  731dfffc  store.h r15, -38(r30)
0003f0  e3472ffd  loadli.w r15,  -364(r30)
0003f4  73101ffc  store.h r1, -64(r30)
0003f8  ab0000f0  lui r1, 983040
0003fc  73146ffc  store.h r6, -56(r30)
000400  73112ffc  store.h r2, -62(r30)
000404  73124ffc  store.h r4, -60(r30)
000408  73135ffc  store.h r5, -58(r30)
00040c  73157ffc  store.h r7, -54(r30)
000410  73168ffc  store.h r8, -52(r30)
000414  73179ffc  store.h r9, -50(r30)
000418  7318affc  store.h r10, -48(r30)
00041c  7319bffc  store.h r11, -46(r30)
000420  731acffc  store.h r12, -44(r30)
000424  731bdffc  store.h r13, -42(r30)
000428  731ceffc  store.h r14, -40(r30)
00042c  731e0ffd  store.h r16, -36(r30)
000430  731f3ffc  store.h r3, -34(r30)
000434  1f030fff  addli r6, r30, -128
000438  00a00000  mfence { lm }
00043c  97901700  or r1, r15, r1
000440  ffb0c801  s_lm2gm r1, r28, 0(r[18:19])
000444  9f000004  addli r1, zero, 512
000448  00a00000  mfence { lm }
00044c  6346effe  loadli.w r12,  -140(r30)
000450  e346dffd  loadli.w r13,  -276(r30)
000454  6307cffd  loadli.w r14,  -288(r30)
000458  0b16e610  add.s r12, r12, r14
00045c  3f20d600  blt.s r12, r13, 8
000460  db6a0100  j 2900
000464  bfdf40ff  blt.s r1, r20, -12
000468  9f000000  addli r1, zero, 0
00046c  0b111310  add.s r2, r6, r1
000470  9fc00000  addli r1, r1, 4
000474  73100100  store.h zero, 0(r2)
000478  73110100  store.h zero, 2(r2)
00047c  00a00000  mfence { lm }
000480  bbbfb0ff  bneq r1, r27, -20
000484  e3004f00  loadli.w r1,  32(r30)
000488  63413f00  loadli.w r2,  28(r30)
00048c  6b528fe9  load.d r[5:6], -360(r30)
000490  ab0100f0  lui r3, 983040
000494  97913700  or r3, r15, r3
000498  8b101630  div.s r1, r12, r1
00049c  8b902030  div.s r1, r1, r2
0004a0  8b907021  mul.s r1, r1, r23
0004a4  67071ffe  storeli.w r1, -144(r30)
0004a8  b3900028  sext_int2long r[2:3], r1
0004ac  97b05003  sll.d r[2:3], r[2:3], r21
0004b0  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0004b4  ffa16000  l_gm2lm r3, r6, 0(r[2:3])
0004b8  9f000000  addli r1, zero, 0
0004bc  0b111e10  add.s r2, r28, r1
0004c0  9fc00000  addli r1, r1, 4
0004c4  73100100  store.h zero, 0(r2)
0004c8  73110100  store.h zero, 2(r2)
0004cc  00a00000  mfence { lm }
0004d0  bbbfb0ff  bneq r1, r27, -20
0004d4  ab0000f0  lui r1, 983040
0004d8  6b518fe8  load.d r[3:4], -376(r30)
0004dc  97901700  or r1, r15, r1
0004e0  ff20c101  l_gm2lm r1, r28, 0(r[3:4])
0004e4  00a00000  mfence { lm }
0004e8  6747cffe  storeli.w r12, -140(r30)
0004ec  6b314ff8  load.hu r2, -124(r30)
0004f0  eb314ffc  load.hu r3, -60(r30)
0004f4  eb300ff8  load.hu r1, -128(r30)
0004f8  67002ffe  storeli.w r2, -256(r30)
0004fc  6b316ff8  load.hu r2, -122(r30)
000500  e70f3ffc  storeli.w r3, -264(r30)
000504  eb316ffc  load.hu r3, -58(r30)
000508  e7462ffe  storeli.w r2, -148(r30)
00050c  6b318ff8  load.hu r2, -120(r30)
000510  e74f3ffc  storeli.w r3, -260(r30)
000514  eb318ffc  load.hu r3, -56(r30)
000518  e7062ffe  storeli.w r2, -152(r30)
00051c  6b31aff8  load.hu r2, -118(r30)
000520  67403ffe  storeli.w r3, -252(r30)
000524  eb31affc  load.hu r3, -54(r30)
000528  67462ffe  storeli.w r2, -156(r30)
00052c  6b31cff8  load.hu r2, -116(r30)
000530  e7003ffe  storeli.w r3, -248(r30)
000534  eb31cffc  load.hu r3, -52(r30)
000538  67062ffe  storeli.w r2, -160(r30)
00053c  6b31eff8  load.hu r2, -114(r30)
000540  e7403ffe  storeli.w r3, -244(r30)
000544  eb31effc  load.hu r3, -50(r30)
000548  e7452ffe  storeli.w r2, -164(r30)
00054c  6b310ff9  load.hu r2, -112(r30)
000550  67013ffe  storeli.w r3, -240(r30)
000554  eb310ffd  load.hu r3, -48(r30)
000558  e7052ffe  storeli.w r2, -168(r30)
00055c  6b312ff9  load.hu r2, -110(r30)
000560  67413ffe  storeli.w r3, -236(r30)
000564  eb312ffd  load.hu r3, -46(r30)
000568  67452ffe  storeli.w r2, -172(r30)
00056c  6b314ff9  load.hu r2, -108(r30)
000570  e7013ffe  storeli.w r3, -232(r30)
000574  eb314ffd  load.hu r3, -44(r30)
000578  67052ffe  storeli.w r2, -176(r30)
00057c  6b316ff9  load.hu r2, -106(r30)
000580  e7413ffe  storeli.w r3, -228(r30)
000584  eb316ffd  load.hu r3, -42(r30)
000588  e7442ffe  storeli.w r2, -180(r30)
00058c  6b318ff9  load.hu r2, -104(r30)
000590  67023ffe  storeli.w r3, -224(r30)
000594  eb318ffd  load.hu r3, -40(r30)
000598  e7042ffe  storeli.w r2, -184(r30)
00059c  6b31aff9  load.hu r2, -102(r30)
0005a0  67423ffe  storeli.w r3, -220(r30)
0005a4  eb31affd  load.hu r3, -38(r30)
0005a8  67442ffe  storeli.w r2, -188(r30)
0005ac  6b31cff9  load.hu r2, -100(r30)
0005b0  e7023ffe  storeli.w r3, -216(r30)
0005b4  eb31cffd  load.hu r3, -36(r30)
0005b8  67042ffe  storeli.w r2, -192(r30)
0005bc  6b31eff9  load.hu r2, -98(r30)
0005c0  e7423ffe  storeli.w r3, -212(r30)
0005c4  eb31effd  load.hu r3, -34(r30)
0005c8  67432ffe  storeli.w r2, -204(r30)
0005cc  67033ffe  storeli.w r3, -208(r30)
0005d0  6b310ffc  load.hu r2, -64(r30)
0005d4  e341bffd  loadli.w r3,  -292(r30)
0005d8  3fb07101  blt.s r3, r23, 12
0005dc  2b0a80ff  lui r20, 1046528
0005e0  5b030000  j 24
0005e4  eb312ff8  load.hu r3, -126(r30)
0005e8  6b322ffc  load.hu r4, -62(r30)
0005ec  b3910120  hfloat2float.rn r3, r3
0005f0  33120220  hfloat2float.rn r4, r4
0005f4  0bea4110  add.f.rn r20, r3, r4
0005f8  b3900020  hfloat2float.rn r1, r1
0005fc  33110120  hfloat2float.rn r2, r2
000600  630cfffe  loadli.w r24,  -136(r30)
000604  9f0c0000  addli r25, zero, 0
000608  1f4d0300  addli r26, r6, 4
00060c  e7434fff  storeli.w r20, -196(r30)
000610  8be92010  add.f.rn r19, r1, r2
000614  e7033fff  storeli.w r19, -200(r30)
000618  db050000  j 44
00061c  1f810900  addli r2, r19, 0
000620  57f80100  jal 4032
000624  9f090100  addli r19, r2, 0
000628  1f010a00  addli r2, r20, 0
00062c  9f810a00  addli r3, r21, 0
000630  57f80100  jal 4032
000634  9fcc0c00  addli r25, r25, 4
000638  1f2c0c00  addli r24, r24, 2
00063c  1f0a0100  addli r20, r2, 0
000640  37e16c01  beq r25, r22, 88
000644  8b119d11  add.s r3, r26, r25
000648  0b129e11  add.s r4, r28, r25
00064c  9f72fcff  addli r5, r24, -1
000650  ab0a80ff  lui r21, 1046528
000654  ebb02100  load.hu r1, 2(r3)
000658  6b316200  load.hu r2, 6(r4)
00065c  3fc07201  blt.s r5, r23, 16
000660  ab0180ff  lui r3, 1046528
000664  bf107c01  blt.s r24, r23, 36
000668  dbf6ffff  j -76
00066c  ebb10100  load.hu r3, 0(r3)
000670  6b324200  load.hu r4, 4(r4)
000674  b3910120  hfloat2float.rn r3, r3
000678  33120220  hfloat2float.rn r4, r4
00067c  8be14110  add.f.rn r3, r3, r4
000680  3f207c01  blt.s r24, r23, 8
000684  5bf3ffff  j -104
000688  b3900020  hfloat2float.rn r1, r1
00068c  33110120  hfloat2float.rn r2, r2
000690  8bea2010  add.f.rn r21, r1, r2
000694  5bf1ffff  j -120
000698  e300bffd  loadli.w r1,  -296(r30)
00069c  ab0a80ff  lui r21, 1046528
0006a0  3fb07001  blt.s r1, r23, 12
0006a4  ab0c80ff  lui r25, 1046528
0006a8  5b030000  j 24
0006ac  e3000ffe  loadli.w r1,  -256(r30)
0006b0  6301fffd  loadli.w r2,  -264(r30)
0006b4  b3900020  hfloat2float.rn r1, r1
0006b8  33110120  hfloat2float.rn r2, r2
0006bc  8bec2010  add.f.rn r25, r1, r2
0006c0  634ceffd  loadli.w r24,  -268(r30)
0006c4  e340affd  loadli.w r1,  -300(r30)
0006c8  3fb07001  blt.s r1, r23, 12
0006cc  ab0080ff  lui r1, 1046528
0006d0  5b030000  j 24
0006d4  e340dffe  loadli.w r1,  -148(r30)
0006d8  6341fffd  loadli.w r2,  -260(r30)
0006dc  b3900020  hfloat2float.rn r1, r1
0006e0  33110120  hfloat2float.rn r2, r2
0006e4  8be02010  add.f.rn r1, r1, r2
0006e8  e7461ffe  storeli.w r1, -148(r30)
0006ec  e300affd  loadli.w r1,  -304(r30)
0006f0  3fb07001  blt.s r1, r23, 12
0006f4  ab0080ff  lui r1, 1046528
0006f8  5b030000  j 24
0006fc  e300dffe  loadli.w r1,  -152(r30)
000700  63410ffe  loadli.w r2,  -252(r30)
000704  b3900020  hfloat2float.rn r1, r1
000708  33110120  hfloat2float.rn r2, r2
00070c  8be02010  add.f.rn r1, r1, r2
000710  e7061ffe  storeli.w r1, -152(r30)
000714  e3409ffd  loadli.w r1,  -308(r30)
000718  3fb07001  blt.s r1, r23, 12
00071c  ab0080ff  lui r1, 1046528
000720  5b030000  j 24
000724  e340cffe  loadli.w r1,  -156(r30)
000728  63011ffe  loadli.w r2,  -248(r30)
00072c  b3900020  hfloat2float.rn r1, r1
000730  33110120  hfloat2float.rn r2, r2
000734  8be02010  add.f.rn r1, r1, r2
000738  67461ffe  storeli.w r1, -156(r30)
00073c  e3009ffd  loadli.w r1,  -312(r30)
000740  3fb07001  blt.s r1, r23, 12
000744  ab0080ff  lui r1, 1046528
000748  5b030000  j 24
00074c  e300cffe  loadli.w r1,  -160(r30)
000750  63411ffe  loadli.w r2,  -244(r30)
000754  b3900020  hfloat2float.rn r1, r1
000758  33110120  hfloat2float.rn r2, r2
00075c  8be02010  add.f.rn r1, r1, r2
000760  67061ffe  storeli.w r1, -160(r30)
000764  e3408ffd  loadli.w r1,  -316(r30)
000768  3fb07001  blt.s r1, r23, 12
00076c  ab0080ff  lui r1, 1046528
000770  5b030000  j 24
000774  e340bffe  loadli.w r1,  -164(r30)
000778  63012ffe  loadli.w r2,  -240(r30)
00077c  b3900020  hfloat2float.rn r1, r1
000780  33110120  hfloat2float.rn r2, r2
000784  8be02010  add.f.rn r1, r1, r2
000788  e7451ffe  storeli.w r1, -164(r30)
00078c  e3008ffd  loadli.w r1,  -320(r30)
000790  3fb07001  blt.s r1, r23, 12
000794  ab0080ff  lui r1, 1046528
000798  5b030000  j 24
00079c  e300bffe  loadli.w r1,  -168(r30)
0007a0  63412ffe  loadli.w r2,  -236(r30)
0007a4  b3900020  hfloat2float.rn r1, r1
0007a8  33110120  hfloat2float.rn r2, r2
0007ac  8be02010  add.f.rn r1, r1, r2
0007b0  e7051ffe  storeli.w r1, -168(r30)
0007b4  e3407ffd  loadli.w r1,  -324(r30)
0007b8  3fb07001  blt.s r1, r23, 12
0007bc  ab0080ff  lui r1, 1046528
0007c0  5b030000  j 24
0007c4  e340affe  loadli.w r1,  -172(r30)
0007c8  63013ffe  loadli.w r2,  -232(r30)
0007cc  b3900020  hfloat2float.rn r1, r1
0007d0  33110120  hfloat2float.rn r2, r2
0007d4  8be02010  add.f.rn r1, r1, r2
0007d8  67451ffe  storeli.w r1, -172(r30)
0007dc  e3007ffd  loadli.w r1,  -328(r30)
0007e0  3fb07001  blt.s r1, r23, 12
0007e4  ab0080ff  lui r1, 1046528
0007e8  5b030000  j 24
0007ec  e300affe  loadli.w r1,  -176(r30)
0007f0  63413ffe  loadli.w r2,  -228(r30)
0007f4  b3900020  hfloat2float.rn r1, r1
0007f8  33110120  hfloat2float.rn r2, r2
0007fc  8be02010  add.f.rn r1, r1, r2
000800  67051ffe  storeli.w r1, -176(r30)
000804  e3406ffd  loadli.w r1,  -332(r30)
000808  3fb07001  blt.s r1, r23, 12
00080c  ab0080ff  lui r1, 1046528
000810  5b030000  j 24
000814  e3409ffe  loadli.w r1,  -180(r30)
000818  63014ffe  loadli.w r2,  -224(r30)
00081c  b3900020  hfloat2float.rn r1, r1
000820  33110120  hfloat2float.rn r2, r2
000824  8be02010  add.f.rn r1, r1, r2
000828  e7441ffe  storeli.w r1, -180(r30)
00082c  e3006ffd  loadli.w r1,  -336(r30)
000830  3fb07001  blt.s r1, r23, 12
000834  ab0080ff  lui r1, 1046528
000838  5b030000  j 24
00083c  e3009ffe  loadli.w r1,  -184(r30)
000840  63414ffe  loadli.w r2,  -220(r30)
000844  b3900020  hfloat2float.rn r1, r1
000848  33110120  hfloat2float.rn r2, r2
00084c  8be02010  add.f.rn r1, r1, r2
000850  e7041ffe  storeli.w r1, -184(r30)
000854  e3405ffd  loadli.w r1,  -340(r30)
000858  3fb07001  blt.s r1, r23, 12
00085c  ab0080ff  lui r1, 1046528
000860  5b030000  j 24
000864  e3408ffe  loadli.w r1,  -188(r30)
000868  63015ffe  loadli.w r2,  -216(r30)
00086c  b3900020  hfloat2float.rn r1, r1
000870  33110120  hfloat2float.rn r2, r2
000874  8be02010  add.f.rn r1, r1, r2
000878  67441ffe  storeli.w r1, -188(r30)
00087c  e3005ffd  loadli.w r1,  -344(r30)
000880  3fb07001  blt.s r1, r23, 12
000884  ab0080ff  lui r1, 1046528
000888  5b030000  j 24
00088c  e3008ffe  loadli.w r1,  -192(r30)
000890  63415ffe  loadli.w r2,  -212(r30)
000894  b3900020  hfloat2float.rn r1, r1
000898  33110120  hfloat2float.rn r2, r2
00089c  8be02010  add.f.rn r1, r1, r2
0008a0  67041ffe  storeli.w r1, -192(r30)
0008a4  e3404ffd  loadli.w r1,  -348(r30)
0008a8  3fa07001  blt.s r1, r23, 8
0008ac  5b030000  j 24
0008b0  e3406ffe  loadli.w r1,  -204(r30)
0008b4  63016ffe  loadli.w r2,  -208(r30)
0008b8  b3900020  hfloat2float.rn r1, r1
0008bc  33110120  hfloat2float.rn r2, r2
0008c0  8bea2010  add.f.rn r21, r1, r2
0008c4  1f810900  addli r2, r19, 0
0008c8  9f010a00  addli r3, r20, 0
0008cc  57f80100  jal 4032
0008d0  e300effd  loadli.w r1,  -272(r30)
0008d4  73e02000  stores.w r2, 0(r1)
0008d8  00a00300  mfence { lm, sm, gm }
0008dc  80210c04  csr_set csr3, r24
0008e0  00d00100  sync_group
0008e4  e340fffe  loadli.w r1,  -132(r30)
0008e8  3b800002  bneq r1, zero, 1024
0008ec  67439fff  storeli.w r25, -204(r30)
0008f0  e34caffb  loadli.w r25,  -556(r30)
0008f4  1f8c0a00  addli r24, r21, 0
0008f8  efc04c01  loads.w r1, 20(r25)
0008fc  6fc10c00  loads.w r2, 0(r25)
000900  efc14c00  loads.w r3, 4(r25)
000904  6fca8c00  loads.w r20, 8(r25)
000908  efc9cc00  loads.w r19, 12(r25)
00090c  efca0c01  loads.w r21, 16(r25)
000910  e70d1ffa  storeli.w r1, -552(r30)
000914  efc08c01  loads.w r1, 24(r25)
000918  e74d1ffa  storeli.w r1, -548(r30)
00091c  efc0cc01  loads.w r1, 28(r25)
000920  670e1ffa  storeli.w r1, -544(r30)
000924  efc00c02  loads.w r1, 32(r25)
000928  674e1ffa  storeli.w r1, -540(r30)
00092c  efc04c02  loads.w r1, 36(r25)
000930  e70e1ffa  storeli.w r1, -536(r30)
000934  efc08c02  loads.w r1, 40(r25)
000938  e74e1ffa  storeli.w r1, -532(r30)
00093c  efc0cc02  loads.w r1, 44(r25)
000940  670f1ffa  storeli.w r1, -528(r30)
000944  efc00c03  loads.w r1, 48(r25)
000948  674f1ffa  storeli.w r1, -524(r30)
00094c  efc04c03  loads.w r1, 52(r25)
000950  e70f1ffa  storeli.w r1, -520(r30)
000954  efc08c03  loads.w r1, 56(r25)
000958  e74f1ffa  storeli.w r1, -516(r30)
00095c  efc0cc03  loads.w r1, 60(r25)
000960  67001ffc  storeli.w r1, -512(r30)
000964  efc00c04  loads.w r1, 64(r25)
000968  67401ffc  storeli.w r1, -508(r30)
00096c  efc04c04  loads.w r1, 68(r25)
000970  e7001ffc  storeli.w r1, -504(r30)
000974  efc08c04  loads.w r1, 72(r25)
000978  e7401ffc  storeli.w r1, -500(r30)
00097c  efc0cc04  loads.w r1, 76(r25)
000980  67011ffc  storeli.w r1, -496(r30)
000984  efc00c05  loads.w r1, 80(r25)
000988  67411ffc  storeli.w r1, -492(r30)
00098c  efc04c05  loads.w r1, 84(r25)
000990  e7011ffc  storeli.w r1, -488(r30)
000994  efc08c05  loads.w r1, 88(r25)
000998  e7411ffc  storeli.w r1, -484(r30)
00099c  efc0cc05  loads.w r1, 92(r25)
0009a0  67021ffc  storeli.w r1, -480(r30)
0009a4  efc00c06  loads.w r1, 96(r25)
0009a8  67421ffc  storeli.w r1, -476(r30)
0009ac  efc04c06  loads.w r1, 100(r25)
0009b0  e7021ffc  storeli.w r1, -472(r30)
0009b4  efc08c06  loads.w r1, 104(r25)
0009b8  e7421ffc  storeli.w r1, -468(r30)
0009bc  efc0cc06  loads.w r1, 108(r25)
0009c0  67031ffc  storeli.w r1, -464(r30)
0009c4  efc00c07  loads.w r1, 112(r25)
0009c8  67431ffc  storeli.w r1, -460(r30)
0009cc  efc04c07  loads.w r1, 116(r25)
0009d0  e7031ffc  storeli.w r1, -456(r30)
0009d4  efc08c07  loads.w r1, 120(r25)
0009d8  e7431ffc  storeli.w r1, -452(r30)
0009dc  efc0cc07  loads.w r1, 124(r25)
0009e0  67041ffc  storeli.w r1, -448(r30)
0009e4  efc00c08  loads.w r1, 128(r25)
0009e8  67441ffc  storeli.w r1, -444(r30)
0009ec  efc04c08  loads.w r1, 132(r25)
0009f0  e7041ffc  storeli.w r1, -440(r30)
0009f4  efc08c08  loads.w r1, 136(r25)
0009f8  e7441ffc  storeli.w r1, -436(r30)
0009fc  efc0cc08  loads.w r1, 140(r25)
000a00  67051ffc  storeli.w r1, -432(r30)
000a04  efc00c09  loads.w r1, 144(r25)
000a08  67451ffc  storeli.w r1, -428(r30)
000a0c  efc04c09  loads.w r1, 148(r25)
000a10  e7051ffc  storeli.w r1, -424(r30)
000a14  efc08c09  loads.w r1, 152(r25)
000a18  e7451ffc  storeli.w r1, -420(r30)
000a1c  efc0cc09  loads.w r1, 156(r25)
000a20  67061ffc  storeli.w r1, -416(r30)
000a24  efc00c0a  loads.w r1, 160(r25)
000a28  67461ffc  storeli.w r1, -412(r30)
000a2c  efc04c0a  loads.w r1, 164(r25)
000a30  e7061ffc  storeli.w r1, -408(r30)
000a34  efc08c0a  loads.w r1, 168(r25)
000a38  e7461ffc  storeli.w r1, -404(r30)
000a3c  efc0cc0a  loads.w r1, 172(r25)
000a40  67071ffc  storeli.w r1, -400(r30)
000a44  efc00c0b  loads.w r1, 176(r25)
000a48  67471ffc  storeli.w r1, -396(r30)
000a4c  efc04c0b  loads.w r1, 180(r25)
000a50  e7071ffc  storeli.w r1, -392(r30)
000a54  efc08c0b  loads.w r1, 184(r25)
000a58  e7471ffc  storeli.w r1, -388(r30)
000a5c  efc0cc0b  loads.w r1, 188(r25)
000a60  67081ffc  storeli.w r1, -384(r30)
000a64  efc00c0c  loads.w r1, 192(r25)
000a68  67481ffc  storeli.w r1, -380(r30)
000a6c  efc04c0c  loads.w r1, 196(r25)
000a70  e70f1ffc  storeli.w r1, -264(r30)
000a74  efc08c0c  loads.w r1, 200(r25)
000a78  e74f1ffc  storeli.w r1, -260(r30)
000a7c  efc0cc0c  loads.w r1, 204(r25)
000a80  67001ffe  storeli.w r1, -256(r30)
000a84  efc00c0d  loads.w r1, 208(r25)
000a88  67401ffe  storeli.w r1, -252(r30)
000a8c  efc04c0d  loads.w r1, 212(r25)
000a90  e7001ffe  storeli.w r1, -248(r30)
000a94  efc08c0d  loads.w r1, 216(r25)
000a98  e7401ffe  storeli.w r1, -244(r30)
000a9c  efc0cc0d  loads.w r1, 220(r25)
000aa0  67011ffe  storeli.w r1, -240(r30)
000aa4  efc00c0e  loads.w r1, 224(r25)
000aa8  67411ffe  storeli.w r1, -236(r30)
000aac  efc04c0e  loads.w r1, 228(r25)
000ab0  e7011ffe  storeli.w r1, -232(r30)
000ab4  efc08c0e  loads.w r1, 232(r25)
000ab8  e7411ffe  storeli.w r1, -228(r30)
000abc  efc0cc0e  loads.w r1, 236(r25)
000ac0  67021ffe  storeli.w r1, -224(r30)
000ac4  efc00c0f  loads.w r1, 240(r25)
000ac8  67421ffe  storeli.w r1, -220(r30)
000acc  efc04c0f  loads.w r1, 244(r25)
000ad0  e7021ffe  storeli.w r1, -216(r30)
000ad4  efc08c0f  loads.w r1, 248(r25)
000ad8  e7421ffe  storeli.w r1, -212(r30)
000adc  efc0cc0f  loads.w r1, 252(r25)
000ae0  67031ffe  storeli.w r1, -208(r30)
000ae4  57f80100  jal 4032
000ae8  9f010a00  addli r3, r20, 0
000aec  57f80100  jal 4032
000af0  9f810900  addli r3, r19, 0
000af4  57f80100  jal 4032
000af8  9f810a00  addli r3, r21, 0
000afc  9f0a0c00  addli r21, r24, 0
000b00  634ceffd  loadli.w r24,  -268(r30)
000b04  57f80100  jal 4032
000b08  e301bffb  loadli.w r3,  -552(r30)
000b0c  57f80100  jal 4032
000b10  e341bffb  loadli.w r3,  -548(r30)
000b14  57f80100  jal 4032
000b18  e301cffb  loadli.w r3,  -544(r30)
000b1c  57f80100  jal 4032
000b20  e341cffb  loadli.w r3,  -540(r30)
000b24  57f80100  jal 4032
000b28  e301dffb  loadli.w r3,  -536(r30)
000b2c  57f80100  jal 4032
000b30  e341dffb  loadli.w r3,  -532(r30)
000b34  57f80100  jal 4032
000b38  e301effb  loadli.w r3,  -528(r30)
000b3c  57f80100  jal 4032
000b40  e341effb  loadli.w r3,  -524(r30)
000b44  57f80100  jal 4032
000b48  e301fffb  loadli.w r3,  -520(r30)
000b4c  57f80100  jal 4032
000b50  e341fffb  loadli.w r3,  -516(r30)
000b54  57f80100  jal 4032
000b58  e3010ffc  loadli.w r3,  -512(r30)
000b5c  57f80100  jal 4032
000b60  e3410ffc  loadli.w r3,  -508(r30)
000b64  57f80100  jal 4032
000b68  e3011ffc  loadli.w r3,  -504(r30)
000b6c  57f80100  jal 4032
000b70  e3411ffc  loadli.w r3,  -500(r30)
000b74  57f80100  jal 4032
000b78  e3012ffc  loadli.w r3,  -496(r30)
000b7c  57f80100  jal 4032
000b80  e3412ffc  loadli.w r3,  -492(r30)
000b84  57f80100  jal 4032
000b88  e3013ffc  loadli.w r3,  -488(r30)
000b8c  57f80100  jal 4032
000b90  e3413ffc  loadli.w r3,  -484(r30)
000b94  57f80100  jal 4032
000b98  e3014ffc  loadli.w r3,  -480(r30)
000b9c  57f80100  jal 4032
000ba0  e3414ffc  loadli.w r3,  -476(r30)
000ba4  57f80100  jal 4032
000ba8  e3015ffc  loadli.w r3,  -472(r30)
000bac  57f80100  jal 4032
000bb0  e3415ffc  loadli.w r3,  -468(r30)
000bb4  57f80100  jal 4032
000bb8  e3016ffc  loadli.w r3,  -464(r30)
000bbc  57f80100  jal 4032
000bc0  e3416ffc  loadli.w r3,  -460(r30)
000bc4  57f80100  jal 4032
000bc8  e3017ffc  loadli.w r3,  -456(r30)
000bcc  57f80100  jal 4032
000bd0  e3417ffc  loadli.w r3,  -452(r30)
000bd4  57f80100  jal 4032
000bd8  e3018ffc  loadli.w r3,  -448(r30)
000bdc  57f80100  jal 4032
000be0  e3418ffc  loadli.w r3,  -444(r30)
000be4  57f80100  jal 4032
000be8  e3019ffc  loadli.w r3,  -440(r30)
000bec  57f80100  jal 4032
000bf0  e3419ffc  loadli.w r3,  -436(r30)
000bf4  57f80100  jal 4032
000bf8  e301affc  loadli.w r3,  -432(r30)
000bfc  57f80100  jal 4032
000c00  e341affc  loadli.w r3,  -428(r30)
000c04  57f80100  jal 4032
000c08  e301bffc  loadli.w r3,  -424(r30)
000c0c  57f80100  jal 4032
000c10  e341bffc  loadli.w r3,  -420(r30)
000c14  57f80100  jal 4032
000c18  e301cffc  loadli.w r3,  -416(r30)
000c1c  57f80100  jal 4032
000c20  e341cffc  loadli.w r3,  -412(r30)
000c24  57f80100  jal 4032
000c28  e301dffc  loadli.w r3,  -408(r30)
000c2c  57f80100  jal 4032
000c30  e341dffc  loadli.w r3,  -404(r30)
000c34  57f80100  jal 4032
000c38  e301effc  loadli.w r3,  -400(r30)
000c3c  57f80100  jal 4032
000c40  e341effc  loadli.w r3,  -396(r30)
000c44  57f80100  jal 4032
000c48  e301fffc  loadli.w r3,  -392(r30)
000c4c  57f80100  jal 4032
000c50  e341fffc  loadli.w r3,  -388(r30)
000c54  57f80100  jal 4032
000c58  e3010ffd  loadli.w r3,  -384(r30)
000c5c  57f80100  jal 4032
000c60  e3410ffd  loadli.w r3,  -380(r30)
000c64  57f80100  jal 4032
000c68  e301fffd  loadli.w r3,  -264(r30)
000c6c  57f80100  jal 4032
000c70  e341fffd  loadli.w r3,  -260(r30)
000c74  57f80100  jal 4032
000c78  e3010ffe  loadli.w r3,  -256(r30)
000c7c  57f80100  jal 4032
000c80  e3410ffe  loadli.w r3,  -252(r30)
000c84  57f80100  jal 4032
000c88  e3011ffe  loadli.w r3,  -248(r30)
000c8c  57f80100  jal 4032
000c90  e3411ffe  loadli.w r3,  -244(r30)
000c94  57f80100  jal 4032
000c98  e3012ffe  loadli.w r3,  -240(r30)
000c9c  57f80100  jal 4032
000ca0  e3412ffe  loadli.w r3,  -236(r30)
000ca4  57f80100  jal 4032
000ca8  e3013ffe  loadli.w r3,  -232(r30)
000cac  57f80100  jal 4032
000cb0  e3413ffe  loadli.w r3,  -228(r30)
000cb4  57f80100  jal 4032
000cb8  e3014ffe  loadli.w r3,  -224(r30)
000cbc  57f80100  jal 4032
000cc0  e3414ffe  loadli.w r3,  -220(r30)
000cc4  57f80100  jal 4032
000cc8  e3015ffe  loadli.w r3,  -216(r30)
000ccc  57f80100  jal 4032
000cd0  e3415ffe  loadli.w r3,  -212(r30)
000cd4  57f80100  jal 4032
000cd8  e3016ffe  loadli.w r3,  -208(r30)
000cdc  57f80100  jal 4032
000ce0  73e02c00  stores.w r2, 0(r25)
000ce4  e34c6ffe  loadli.w r25,  -204(r30)
000ce8  2b090000  lui r18, 0
000cec  00a00300  mfence { lm, sm, gm }
000cf0  80210c04  csr_set csr3, r24
000cf4  00d00100  sync_group
000cf8  e3007ffe  loadli.w r1,  -200(r30)
000cfc  63417ffe  loadli.w r2,  -196(r30)
000d00  e302fffe  loadli.w r5,  -136(r30)
000d04  634acffd  loadli.w r20,  -284(r30)
000d08  1f020000  addli r4, zero, 0
000d0c  1f090900  addli r18, r18, 0
000d10  ef410900  loads.w r3, 0(r18)
000d14  8be03018  sub.f.rn r1, r1, r3
000d18  0b613118  sub.f.rn r2, r2, r3
000d1c  73603910  stores.w r3, 256(r18)
000d20  8f800000  exp.f.rn r1, r1
000d24  0f010100  exp.f.rn r2, r2
000d28  1f030100  addli r6, r2, 0
000d2c  9f830000  addli r7, r1, 0
000d30  5b050000  j 40
000d34  8be43518  sub.f.rn r9, r11, r3
000d38  0b643418  sub.f.rn r8, r8, r3
000d3c  1f420200  addli r4, r4, 4
000d40  9fa20200  addli r5, r5, 2
000d44  8f840400  exp.f.rn r9, r9
000d48  0f040400  exp.f.rn r8, r8
000d4c  8be39310  add.f.rn r7, r7, r9
000d50  0b638310  add.f.rn r6, r6, r8
000d54  b70462fb  beq r4, r22, -2784
000d58  8b154d10  add.s r11, r26, r4
000d5c  0b164e10  add.s r12, r28, r4
000d60  9ff6f2ff  addli r13, r5, -1
000d64  2b0480ff  lui r8, 1046528
000d68  ebb42500  load.hu r9, 2(r11)
000d6c  6b356600  load.hu r10, 6(r12)
000d70  3fc07601  blt.s r13, r23, 16
000d74  ab0580ff  lui r11, 1046528
000d78  bf907201  blt.s r5, r23, 36
000d7c  5bf7ffff  j -72
000d80  ebb50500  load.hu r11, 0(r11)
000d84  6b364600  load.hu r12, 4(r12)
000d88  b3950520  hfloat2float.rn r11, r11
000d8c  33160620  hfloat2float.rn r12, r12
000d90  8be5c510  add.f.rn r11, r11, r12
000d94  3fa07201  blt.s r5, r23, 8
000d98  dbf3ffff  j -100
000d9c  33940420  hfloat2float.rn r8, r9
000da0  b3140520  hfloat2float.rn r9, r10
000da4  0b649410  add.f.rn r8, r8, r9
000da8  dbf1ffff  j -116
000dac  e303affb  loadli.w r7,  -560(r30)
000db0  6fc20300  loads.w r4, 0(r7)
000db4  6fc34300  loads.w r6, 4(r7)
000db8  efc28300  loads.w r5, 8(r7)
000dbc  0b626210  add.f.rn r4, r4, r6
000dc0  6fc3c300  loads.w r6, 12(r7)
000dc4  0b625210  add.f.rn r4, r4, r5
000dc8  efc20301  loads.w r5, 16(r7)
000dcc  0b626210  add.f.rn r4, r4, r6
000dd0  6fc34301  loads.w r6, 20(r7)
000dd4  0b625210  add.f.rn r4, r4, r5
000dd8  efc28301  loads.w r5, 24(r7)
000ddc  0b626210  add.f.rn r4, r4, r6
000de0  6fc3c301  loads.w r6, 28(r7)
000de4  0b625210  add.f.rn r4, r4, r5
000de8  efc20302  loads.w r5, 32(r7)
000dec  0b626210  add.f.rn r4, r4, r6
000df0  6fc34302  loads.w r6, 36(r7)
000df4  0b625210  add.f.rn r4, r4, r5
000df8  efc28302  loads.w r5, 40(r7)
000dfc  0b626210  add.f.rn r4, r4, r6
000e00  6fc3c302  loads.w r6, 44(r7)
000e04  0b625210  add.f.rn r4, r4, r5
000e08  efc20303  loads.w r5, 48(r7)
000e0c  0b626210  add.f.rn r4, r4, r6
000e10  6fc34303  loads.w r6, 52(r7)
000e14  0b625210  add.f.rn r4, r4, r5
000e18  efc28303  loads.w r5, 56(r7)
000e1c  0b626210  add.f.rn r4, r4, r6
000e20  6fc3c303  loads.w r6, 60(r7)
000e24  0b625210  add.f.rn r4, r4, r5
000e28  efc20304  loads.w r5, 64(r7)
000e2c  0b626210  add.f.rn r4, r4, r6
000e30  6fc34304  loads.w r6, 68(r7)
000e34  0b625210  add.f.rn r4, r4, r5
000e38  efc28304  loads.w r5, 72(r7)
000e3c  0b626210  add.f.rn r4, r4, r6
000e40  6fc3c304  loads.w r6, 76(r7)
000e44  0b625210  add.f.rn r4, r4, r5
000e48  efc20305  loads.w r5, 80(r7)
000e4c  0b626210  add.f.rn r4, r4, r6
000e50  6fc34305  loads.w r6, 84(r7)
000e54  0b625210  add.f.rn r4, r4, r5
000e58  efc28305  loads.w r5, 88(r7)
000e5c  0b626210  add.f.rn r4, r4, r6
000e60  6fc3c305  loads.w r6, 92(r7)
000e64  0b625210  add.f.rn r4, r4, r5
000e68  efc20306  loads.w r5, 96(r7)
000e6c  0b626210  add.f.rn r4, r4, r6
000e70  6fc34306  loads.w r6, 100(r7)
000e74  0b625210  add.f.rn r4, r4, r5
000e78  efc28306  loads.w r5, 104(r7)
000e7c  0b626210  add.f.rn r4, r4, r6
000e80  6fc3c306  loads.w r6, 108(r7)
000e84  0b625210  add.f.rn r4, r4, r5
000e88  efc20307  loads.w r5, 112(r7)
000e8c  0b626210  add.f.rn r4, r4, r6
000e90  6fc34307  loads.w r6, 116(r7)
000e94  0b625210  add.f.rn r4, r4, r5
000e98  efc28307  loads.w r5, 120(r7)
000e9c  0b626210  add.f.rn r4, r4, r6
000ea0  6fc3c307  loads.w r6, 124(r7)
000ea4  0b625210  add.f.rn r4, r4, r5
000ea8  efc20308  loads.w r5, 128(r7)
000eac  0b626210  add.f.rn r4, r4, r6
000eb0  6fc34308  loads.w r6, 132(r7)
000eb4  0b625210  add.f.rn r4, r4, r5
000eb8  efc28308  loads.w r5, 136(r7)
000ebc  0b626210  add.f.rn r4, r4, r6
000ec0  6fc3c308  loads.w r6, 140(r7)
000ec4  0b625210  add.f.rn r4, r4, r5
000ec8  efc20309  loads.w r5, 144(r7)
000ecc  0b626210  add.f.rn r4, r4, r6
000ed0  6fc34309  loads.w r6, 148(r7)
000ed4  0b625210  add.f.rn r4, r4, r5
000ed8  efc28309  loads.w r5, 152(r7)
000edc  0b626210  add.f.rn r4, r4, r6
000ee0  6fc3c309  loads.w r6, 156(r7)
000ee4  0b625210  add.f.rn r4, r4, r5
000ee8  efc2030a  loads.w r5, 160(r7)
000eec  0b626210  add.f.rn r4, r4, r6
000ef0  6fc3430a  loads.w r6, 164(r7)
000ef4  0b625210  add.f.rn r4, r4, r5
000ef8  efc2830a  loads.w r5, 168(r7)
000efc  0b626210  add.f.rn r4, r4, r6
000f00  6fc3c30a  loads.w r6, 172(r7)
000f04  0b625210  add.f.rn r4, r4, r5
000f08  efc2030b  loads.w r5, 176(r7)
000f0c  0b626210  add.f.rn r4, r4, r6
000f10  6fc3430b  loads.w r6, 180(r7)
000f14  0b625210  add.f.rn r4, r4, r5
000f18  efc2830b  loads.w r5, 184(r7)
000f1c  0b626210  add.f.rn r4, r4, r6
000f20  6fc3c30b  loads.w r6, 188(r7)
000f24  0b625210  add.f.rn r4, r4, r5
000f28  efc2030c  loads.w r5, 192(r7)
000f2c  0b626210  add.f.rn r4, r4, r6
000f30  6fc3430c  loads.w r6, 196(r7)
000f34  0b625210  add.f.rn r4, r4, r5
000f38  efc2830c  loads.w r5, 200(r7)
000f3c  0b626210  add.f.rn r4, r4, r6
000f40  6fc3c30c  loads.w r6, 204(r7)
000f44  0b625210  add.f.rn r4, r4, r5
000f48  efc2030d  loads.w r5, 208(r7)
000f4c  0b626210  add.f.rn r4, r4, r6
000f50  6fc3430d  loads.w r6, 212(r7)
000f54  0b625210  add.f.rn r4, r4, r5
000f58  efc2830d  loads.w r5, 216(r7)
000f5c  0b626210  add.f.rn r4, r4, r6
000f60  6fc3c30d  loads.w r6, 220(r7)
000f64  0b625210  add.f.rn r4, r4, r5
000f68  efc2030e  loads.w r5, 224(r7)
000f6c  0b626210  add.f.rn r4, r4, r6
000f70  6fc3430e  loads.w r6, 228(r7)
000f74  0b625210  add.f.rn r4, r4, r5
000f78  efc2830e  loads.w r5, 232(r7)
000f7c  0b626210  add.f.rn r4, r4, r6
000f80  6fc3c30e  loads.w r6, 236(r7)
000f84  0b625210  add.f.rn r4, r4, r5
000f88  efc2030f  loads.w r5, 240(r7)
000f8c  0b626210  add.f.rn r4, r4, r6
000f90  6fc3430f  loads.w r6, 244(r7)
000f94  0b625210  add.f.rn r4, r4, r5
000f98  efc2830f  loads.w r5, 248(r7)
000f9c  0b626210  add.f.rn r4, r4, r6
000fa0  6fc3c30f  loads.w r6, 252(r7)
000fa4  0b625210  add.f.rn r4, r4, r5
000fa8  0b626210  add.f.rn r4, r4, r6
000fac  73e04300  stores.w r4, 0(r7)
000fb0  db5cfeff  j -3356
000fb4  9f8e8e04  addli sp, sp, 576
000fb8  00a00300  mfence { lm, sm, gm }
000fbc  00100000  exit
000fc0  9f8efeff  addli sp, sp, -8
000fc4  9f000100  addli r1, r2, 0
000fc8  2bf1ff7f  lui r2, 524287
000fcc  ab02807f  lui r5, 522240
000fd0  67c0ee01  storeli.w r30, 4(sp)
000fd4  6780fe01  storeli.w r31, 0(sp)
000fd8  1f8f1e00  addli r30, sp, 8
000fdc  1b12f1ff  ori r4, r2, 4095
000fe0  17814000  and r2, r1, r4
000fe4  13832204  setlt.u r6, r5, r2
000fe8  1f810100  addli r2, r3, 0
000fec  bb210300  bneq r6, zero, 104
000ff0  97014100  and r3, r2, r4
000ff4  93813204  setlt.u r3, r5, r3
000ff8  3be10100  bneq r3, zero, 88
000ffc  abf1ffff  lui r3, 1048575
001000  17221100  xor r4, r2, r1
001004  9b91f1ff  ori r3, r3, 4095
001008  3fa04100  blt.s r3, r4, 8
00100c  5b0b0000  j 88
001010  9b319100  slli r3, r2, 9
001014  9bb29000  slli r5, r1, 9
001018  1b427101  srli r4, r2, 23
00101c  1bc37001  srli r6, r1, 23
001020  93e32004  setlt.f r7, r1, r2
001024  93810100  seteq r3, r3, zero
001028  93820200  seteq r5, r5, zero
00102c  1b02f20f  andi r4, r4, 255
001030  1b03f30f  andi r6, r6, 255
001034  1b72f20f  setlti r4, r4, 255
001038  1b73f30f  setlti r6, r6, 255
00103c  97113200  or r3, r4, r3
001040  17125300  or r4, r6, r5
001044  97013200  and r3, r4, r3
001048  97813300  and r3, r7, r3
00104c  3ba00100  bneq r3, zero, 8
001050  1f810000  addli r2, r1, 0
001054  e38f0e00  loadli.w r31,  0(sp)
001058  63cf0e00  loadli.w r30,  4(sp)
00105c  9f8e1e00  addli sp, sp, 8
001060  5f800f00  jr r31, 0
001064  bfcf00fe  blt.s r1, zero, -16
001068  5bfdffff  j -24
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
0010b8  00100000  exit
0010bc  00100000  exit
0010c0  00100000  exit
0010c4  00100000  exit
0010c8  00100000  exit
0010cc  00100000  exit
0010d0  00100000  exit
0010d4  00100000  exit
0010d8  00100000  exit
0010dc  00100000  exit
0010e0  00100000  exit
0010e4  00100000  exit
0010e8  00100000  exit
0010ec  00100000  exit
0010f0  00100000  exit
0010f4  00100000  exit
0010f8  00100000  exit
0010fc  00100000  exit
001100  00100000  exit
001104  00100000  exit
001108  00100000  exit
00110c  00100000  exit
001110  00100000  exit
001114  00100000  exit
001118  00100000  exit
00111c  00100000  exit
001120  00100000  exit
001124  00100000  exit
001128  00100000  exit
00112c  00100000  exit
001130  00100000  exit
001134  00100000  exit
001138  00100000  exit
00113c  00100000  exit
001140  00100000  exit
001144  00100000  exit
001148  00100000  exit
00114c  00100000  exit
001150  00100000  exit
001154  00100000  exit
001158  00100000  exit
00115c  00100000  exit
001160  00100000  exit
001164  00100000  exit
001168  00100000  exit
00116c  00100000  exit
001170  00100000  exit
001174  00100000  exit
001178  00100000  exit
00117c  00100000  exit
001180  00100000  exit
001184  00100000  exit
001188  00100000  exit
00118c  00100000  exit
001190  00100000  exit
001194  00100000  exit
001198  00100000  exit
00119c  00100000  exit
0011a0  00100000  exit
0011a4  00100000  exit
0011a8  00100000  exit
0011ac  00100000  exit
0011b0  00100000  exit
0011b4  00100000  exit
0011b8  00100000  exit
0011bc  00100000  exit
0011c0  00100000  exit
0011c4  00100000  exit
0011c8  00100000  exit
0011cc  00100000  exit
0011d0  00100000  exit
0011d4  00100000  exit
0011d8  00100000  exit
0011dc  00100000  exit
0011e0  00100000  exit
0011e4  00100000  exit
0011e8  00100000  exit
0011ec  00100000  exit
0011f0  00100000  exit
0011f4  00100000  exit
0011f8  00100000  exit
0011fc  00100000  exit
001200  00100000  exit
001204  00100000  exit
001208  00100000  exit
00120c  00100000  exit
001210  00100000  exit
001214  00100000  exit
001218  00100000  exit
00121c  00100000  exit
001220  00100000  exit
001224  00100000  exit
001228  00100000  exit
00122c  00100000  exit
001230  00100000  exit
001234  00100000  exit
001238  00100000  exit
00123c  00100000  exit
001240  00100000  exit
001244  00100000  exit
001248  00100000  exit
00124c  00100000  exit
001250  00100000  exit
001254  00100000  exit
001258  00100000  exit
00125c  00100000  exit
001260  00100000  exit
001264  00100000  exit
001268  00100000  exit
00126c  00100000  exit
001270  00100000  exit
001274  00100000  exit
001278  00100000  exit
00127c  00100000  exit
001280  00100000  exit
001284  00100000  exit
001288  00100000  exit
00128c  00100000  exit
001290  00100000  exit
001294  00100000  exit
001298  00100000  exit
00129c  00100000  exit
0012a0  00100000  exit
0012a4  00100000  exit
0012a8  00100000  exit
