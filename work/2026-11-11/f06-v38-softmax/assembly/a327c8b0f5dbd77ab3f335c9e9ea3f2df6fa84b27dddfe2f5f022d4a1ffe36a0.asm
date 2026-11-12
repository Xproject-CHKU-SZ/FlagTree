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
000144  4be2c608  ble.s r13, r12, 4248
000148  e303effd  loadli.w r7,  -272(r30)
00014c  1bba4000  slli r20, r1, 4
000150  9f1a0000  addli r21, zero, 1
000154  eb520f00  load.d r[6:7], 0(r30)
000158  9f1b0004  addli r23, zero, 513
00015c  eb518f00  load.d r[4:5], 8(r30)
000160  00d70002  load_param_i r14, 1
000164  1f0e4000  addli r28, zero, 32
000168  1f0b8fff  addli r22, r30, -64
00016c  1f4d3000  addli r26, zero, 28
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
00025c  670d2ffa  storeli.w r2, -560(r30)
000260  1f010004  addli r2, zero, 512
000264  e74c1ffa  storeli.w r1, -564(r30)
000268  9b903100  ori r1, r3, 3
00026c  e7071ffe  storeli.w r1, -136(r30)
000270  abf0ff7f  lui r1, 524287
000274  9b90f0ff  ori r1, r1, 4095
000278  67481ffc  storeli.w r1, -380(r30)
00027c  5b140000  j 160
000280  634acffd  loadli.w r20,  -284(r30)
000284  e300effe  loadli.w r1,  -144(r30)
000288  73104ffc  store.h r4, -64(r30)
00028c  9f1a0000  addli r21, zero, 1
000290  731afffc  store.h r15, -44(r30)
000294  e3472ffd  loadli.w r15,  -364(r30)
000298  73127ffc  store.h r7, -60(r30)
00029c  73138ffc  store.h r8, -58(r30)
0002a0  73149ffc  store.h r9, -56(r30)
0002a4  7315affc  store.h r10, -54(r30)
0002a8  7316bffc  store.h r11, -52(r30)
0002ac  7317cffc  store.h r12, -50(r30)
0002b0  7318dffc  store.h r13, -48(r30)
0002b4  7319effc  store.h r14, -46(r30)
0002b8  731b0ffd  store.h r16, -42(r30)
0002bc  731c1ffd  store.h r17, -40(r30)
0002c0  731d2ffd  store.h r18, -38(r30)
0002c4  731e3ffd  store.h r19, -36(r30)
0002c8  731f3ffc  store.h r3, -34(r30)
0002cc  1f030fff  addli r6, r30, -128
0002d0  8b904011  add.s r1, r1, r20
0002d4  33920028  sext_int2long r[5:6], r1
0002d8  9b102b00  ori r1, r22, 2
0002dc  73902000  store.h r2, 0(r1)
0002e0  eb500f01  load.d r[2:3], 16(r30)
0002e4  17325203  sll.d r[5:6], r[5:6], r21
0002e8  00a00000  mfence { lm }
0002ec  8ba04010  add.ul r[2:3], r[2:3], r[5:6]
0002f0  2b0200f0  lui r4, 983040
0002f4  97914700  or r3, r15, r4
0002f8  ffb16001  s_lm2gm r3, r22, 0(r[2:3])
0002fc  1f010004  addli r2, zero, 512
000300  00a00000  mfence { lm }
000304  6346effe  loadli.w r12,  -140(r30)
000308  e346dffd  loadli.w r13,  -276(r30)
00030c  6307cffd  loadli.w r14,  -288(r30)
000310  0b16e610  add.s r12, r12, r14
000314  3f20d600  blt.s r12, r13, 8
000318  dbd80100  j 3780
00031c  bf5f41ff  blt.s r2, r20, -12
000320  9f000000  addli r1, zero, 0
000324  0b111310  add.s r2, r6, r1
000328  9fc00000  addli r1, r1, 4
00032c  73100100  store.h zero, 0(r2)
000330  73110100  store.h zero, 2(r2)
000334  00a00000  mfence { lm }
000338  bbbfc0ff  bneq r1, r28, -20
00033c  e3004f00  loadli.w r1,  32(r30)
000340  63413f00  loadli.w r2,  28(r30)
000344  6b528fe9  load.d r[5:6], -360(r30)
000348  ab0100f0  lui r3, 983040
00034c  97913700  or r3, r15, r3
000350  8b101630  div.s r1, r12, r1
000354  8b902030  div.s r1, r1, r2
000358  8b907021  mul.s r1, r1, r23
00035c  67071ffe  storeli.w r1, -144(r30)
000360  b3900028  sext_int2long r[2:3], r1
000364  97b05003  sll.d r[2:3], r[2:3], r21
000368  8b201210  add.ul r[2:3], r[5:6], r[2:3]
00036c  ffa16000  l_gm2lm r3, r6, 0(r[2:3])
000370  9f000000  addli r1, zero, 0
000374  0b111b10  add.s r2, r22, r1
000378  9fc00000  addli r1, r1, 4
00037c  67000100  storeli.w zero, 0(r2)
000380  00a00000  mfence { lm }
000384  bbcfc0ff  bneq r1, r28, -16
000388  ab0000f0  lui r1, 983040
00038c  6b518fe8  load.d r[3:4], -376(r30)
000390  97901700  or r1, r15, r1
000394  ff206101  l_gm2lm r1, r22, 0(r[3:4])
000398  00a00000  mfence { lm }
00039c  6747cffe  storeli.w r12, -140(r30)
0003a0  6b314ff8  load.hu r2, -124(r30)
0003a4  eb314ffc  load.hu r3, -60(r30)
0003a8  eb300ff8  load.hu r1, -128(r30)
0003ac  e7432ffe  storeli.w r2, -196(r30)
0003b0  6b316ff8  load.hu r2, -122(r30)
0003b4  e70f3ffc  storeli.w r3, -264(r30)
0003b8  eb316ffc  load.hu r3, -58(r30)
0003bc  67042ffe  storeli.w r2, -192(r30)
0003c0  6b318ff8  load.hu r2, -120(r30)
0003c4  e74f3ffc  storeli.w r3, -260(r30)
0003c8  eb318ffc  load.hu r3, -56(r30)
0003cc  67442ffe  storeli.w r2, -188(r30)
0003d0  6b31aff8  load.hu r2, -118(r30)
0003d4  67003ffe  storeli.w r3, -256(r30)
0003d8  eb31affc  load.hu r3, -54(r30)
0003dc  e7042ffe  storeli.w r2, -184(r30)
0003e0  6b31cff8  load.hu r2, -116(r30)
0003e4  67403ffe  storeli.w r3, -252(r30)
0003e8  eb31cffc  load.hu r3, -52(r30)
0003ec  e7442ffe  storeli.w r2, -180(r30)
0003f0  6b31eff8  load.hu r2, -114(r30)
0003f4  e7003ffe  storeli.w r3, -248(r30)
0003f8  eb31effc  load.hu r3, -50(r30)
0003fc  67052ffe  storeli.w r2, -176(r30)
000400  6b310ff9  load.hu r2, -112(r30)
000404  e7403ffe  storeli.w r3, -244(r30)
000408  eb310ffd  load.hu r3, -48(r30)
00040c  67452ffe  storeli.w r2, -172(r30)
000410  6b312ff9  load.hu r2, -110(r30)
000414  67013ffe  storeli.w r3, -240(r30)
000418  eb312ffd  load.hu r3, -46(r30)
00041c  e7052ffe  storeli.w r2, -168(r30)
000420  6b314ff9  load.hu r2, -108(r30)
000424  67413ffe  storeli.w r3, -236(r30)
000428  eb314ffd  load.hu r3, -44(r30)
00042c  e7452ffe  storeli.w r2, -164(r30)
000430  6b316ff9  load.hu r2, -106(r30)
000434  e7013ffe  storeli.w r3, -232(r30)
000438  eb316ffd  load.hu r3, -42(r30)
00043c  67062ffe  storeli.w r2, -160(r30)
000440  6b318ff9  load.hu r2, -104(r30)
000444  e7413ffe  storeli.w r3, -228(r30)
000448  eb318ffd  load.hu r3, -40(r30)
00044c  67462ffe  storeli.w r2, -156(r30)
000450  6b31aff9  load.hu r2, -102(r30)
000454  67023ffe  storeli.w r3, -224(r30)
000458  eb31affd  load.hu r3, -38(r30)
00045c  e7062ffe  storeli.w r2, -152(r30)
000460  6b31cff9  load.hu r2, -100(r30)
000464  67423ffe  storeli.w r3, -220(r30)
000468  eb31cffd  load.hu r3, -36(r30)
00046c  67032ffe  storeli.w r2, -208(r30)
000470  6b31eff9  load.hu r2, -98(r30)
000474  e7023ffe  storeli.w r3, -216(r30)
000478  eb31effd  load.hu r3, -34(r30)
00047c  e7462ffe  storeli.w r2, -148(r30)
000480  e7423ffe  storeli.w r3, -212(r30)
000484  6b310ffc  load.hu r2, -64(r30)
000488  e341bffd  loadli.w r3,  -292(r30)
00048c  3fb07101  blt.s r3, r23, 12
000490  2b0a80ff  lui r20, 1046528
000494  5b030000  j 24
000498  eb312ff8  load.hu r3, -126(r30)
00049c  6b322ffc  load.hu r4, -62(r30)
0004a0  b3910118  bfloat2float.rn r3, r3
0004a4  33120218  bfloat2float.rn r4, r4
0004a8  0bea4110  add.f.rn r20, r3, r4
0004ac  b3900018  bfloat2float.rn r1, r1
0004b0  33110118  bfloat2float.rn r2, r2
0004b4  630cfffe  loadli.w r24,  -136(r30)
0004b8  9f0c0000  addli r25, zero, 0
0004bc  9f4d0300  addli r27, r6, 4
0004c0  e7034fff  storeli.w r20, -200(r30)
0004c4  8be92010  add.f.rn r19, r1, r2
0004c8  67433fff  storeli.w r19, -204(r30)
0004cc  db050000  j 44
0004d0  1f810900  addli r2, r19, 0
0004d4  573d0200  jal 4584
0004d8  9f090100  addli r19, r2, 0
0004dc  1f010a00  addli r2, r20, 0
0004e0  9f810a00  addli r3, r21, 0
0004e4  573d0200  jal 4584
0004e8  9fcc0c00  addli r25, r25, 4
0004ec  1f2c0c00  addli r24, r24, 2
0004f0  1f0a0100  addli r20, r2, 0
0004f4  37e1ac01  beq r25, r26, 88
0004f8  8b919d11  add.s r3, r27, r25
0004fc  0b129b11  add.s r4, r22, r25
000500  9f72fcff  addli r5, r24, -1
000504  ab0a80ff  lui r21, 1046528
000508  ebb02100  load.hu r1, 2(r3)
00050c  6b316200  load.hu r2, 6(r4)
000510  3fc07201  blt.s r5, r23, 16
000514  ab0180ff  lui r3, 1046528
000518  bf107c01  blt.s r24, r23, 36
00051c  dbf6ffff  j -76
000520  ebb10100  load.hu r3, 0(r3)
000524  6b324200  load.hu r4, 4(r4)
000528  b3910118  bfloat2float.rn r3, r3
00052c  33120218  bfloat2float.rn r4, r4
000530  8be14110  add.f.rn r3, r3, r4
000534  3f207c01  blt.s r24, r23, 8
000538  5bf3ffff  j -104
00053c  b3900018  bfloat2float.rn r1, r1
000540  33110118  bfloat2float.rn r2, r2
000544  8bea2010  add.f.rn r21, r1, r2
000548  5bf1ffff  j -120
00054c  e300bffd  loadli.w r1,  -296(r30)
000550  3fb07001  blt.s r1, r23, 12
000554  ab0080ff  lui r1, 1046528
000558  5b030000  j 24
00055c  e3407ffe  loadli.w r1,  -196(r30)
000560  6301fffd  loadli.w r2,  -264(r30)
000564  b3900018  bfloat2float.rn r1, r1
000568  33110118  bfloat2float.rn r2, r2
00056c  8be02010  add.f.rn r1, r1, r2
000570  2b0c0000  lui r24, 0
000574  e7431ffe  storeli.w r1, -196(r30)
000578  e34ceffd  loadli.w r25,  -268(r30)
00057c  e340affd  loadli.w r1,  -300(r30)
000580  1f0c0c00  addli r24, r24, 0
000584  3fb07001  blt.s r1, r23, 12
000588  ab0080ff  lui r1, 1046528
00058c  5b030000  j 24
000590  e3008ffe  loadli.w r1,  -192(r30)
000594  6341fffd  loadli.w r2,  -260(r30)
000598  b3900018  bfloat2float.rn r1, r1
00059c  33110118  bfloat2float.rn r2, r2
0005a0  8be02010  add.f.rn r1, r1, r2
0005a4  67041ffe  storeli.w r1, -192(r30)
0005a8  e300affd  loadli.w r1,  -304(r30)
0005ac  3fb07001  blt.s r1, r23, 12
0005b0  ab0080ff  lui r1, 1046528
0005b4  5b030000  j 24
0005b8  e3408ffe  loadli.w r1,  -188(r30)
0005bc  63010ffe  loadli.w r2,  -256(r30)
0005c0  b3900018  bfloat2float.rn r1, r1
0005c4  33110118  bfloat2float.rn r2, r2
0005c8  8be02010  add.f.rn r1, r1, r2
0005cc  67441ffe  storeli.w r1, -188(r30)
0005d0  e3409ffd  loadli.w r1,  -308(r30)
0005d4  3fb07001  blt.s r1, r23, 12
0005d8  ab0080ff  lui r1, 1046528
0005dc  5b030000  j 24
0005e0  e3009ffe  loadli.w r1,  -184(r30)
0005e4  63410ffe  loadli.w r2,  -252(r30)
0005e8  b3900018  bfloat2float.rn r1, r1
0005ec  33110118  bfloat2float.rn r2, r2
0005f0  8be02010  add.f.rn r1, r1, r2
0005f4  e7041ffe  storeli.w r1, -184(r30)
0005f8  e3009ffd  loadli.w r1,  -312(r30)
0005fc  3fb07001  blt.s r1, r23, 12
000600  ab0080ff  lui r1, 1046528
000604  5b030000  j 24
000608  e3409ffe  loadli.w r1,  -180(r30)
00060c  63011ffe  loadli.w r2,  -248(r30)
000610  b3900018  bfloat2float.rn r1, r1
000614  33110118  bfloat2float.rn r2, r2
000618  8be02010  add.f.rn r1, r1, r2
00061c  e7441ffe  storeli.w r1, -180(r30)
000620  e3408ffd  loadli.w r1,  -316(r30)
000624  3fb07001  blt.s r1, r23, 12
000628  ab0080ff  lui r1, 1046528
00062c  5b030000  j 24
000630  e300affe  loadli.w r1,  -176(r30)
000634  63411ffe  loadli.w r2,  -244(r30)
000638  b3900018  bfloat2float.rn r1, r1
00063c  33110118  bfloat2float.rn r2, r2
000640  8be02010  add.f.rn r1, r1, r2
000644  67051ffe  storeli.w r1, -176(r30)
000648  e3008ffd  loadli.w r1,  -320(r30)
00064c  3fb07001  blt.s r1, r23, 12
000650  ab0080ff  lui r1, 1046528
000654  5b030000  j 24
000658  e340affe  loadli.w r1,  -172(r30)
00065c  63012ffe  loadli.w r2,  -240(r30)
000660  b3900018  bfloat2float.rn r1, r1
000664  33110118  bfloat2float.rn r2, r2
000668  8be02010  add.f.rn r1, r1, r2
00066c  67451ffe  storeli.w r1, -172(r30)
000670  e3407ffd  loadli.w r1,  -324(r30)
000674  3fb07001  blt.s r1, r23, 12
000678  ab0080ff  lui r1, 1046528
00067c  5b030000  j 24
000680  e300bffe  loadli.w r1,  -168(r30)
000684  63412ffe  loadli.w r2,  -236(r30)
000688  b3900018  bfloat2float.rn r1, r1
00068c  33110118  bfloat2float.rn r2, r2
000690  8be02010  add.f.rn r1, r1, r2
000694  e7051ffe  storeli.w r1, -168(r30)
000698  e3007ffd  loadli.w r1,  -328(r30)
00069c  3fb07001  blt.s r1, r23, 12
0006a0  ab0080ff  lui r1, 1046528
0006a4  5b030000  j 24
0006a8  e340bffe  loadli.w r1,  -164(r30)
0006ac  63013ffe  loadli.w r2,  -232(r30)
0006b0  b3900018  bfloat2float.rn r1, r1
0006b4  33110118  bfloat2float.rn r2, r2
0006b8  8be02010  add.f.rn r1, r1, r2
0006bc  e7451ffe  storeli.w r1, -164(r30)
0006c0  e3406ffd  loadli.w r1,  -332(r30)
0006c4  3fb07001  blt.s r1, r23, 12
0006c8  ab0080ff  lui r1, 1046528
0006cc  5b030000  j 24
0006d0  e300cffe  loadli.w r1,  -160(r30)
0006d4  63413ffe  loadli.w r2,  -228(r30)
0006d8  b3900018  bfloat2float.rn r1, r1
0006dc  33110118  bfloat2float.rn r2, r2
0006e0  8be02010  add.f.rn r1, r1, r2
0006e4  67061ffe  storeli.w r1, -160(r30)
0006e8  e3006ffd  loadli.w r1,  -336(r30)
0006ec  3fb07001  blt.s r1, r23, 12
0006f0  ab0080ff  lui r1, 1046528
0006f4  5b030000  j 24
0006f8  e340cffe  loadli.w r1,  -156(r30)
0006fc  63014ffe  loadli.w r2,  -224(r30)
000700  b3900018  bfloat2float.rn r1, r1
000704  33110118  bfloat2float.rn r2, r2
000708  8be02010  add.f.rn r1, r1, r2
00070c  67461ffe  storeli.w r1, -156(r30)
000710  e3405ffd  loadli.w r1,  -340(r30)
000714  3fb07001  blt.s r1, r23, 12
000718  ab0080ff  lui r1, 1046528
00071c  5b030000  j 24
000720  e300dffe  loadli.w r1,  -152(r30)
000724  63414ffe  loadli.w r2,  -220(r30)
000728  b3900018  bfloat2float.rn r1, r1
00072c  33110118  bfloat2float.rn r2, r2
000730  8be02010  add.f.rn r1, r1, r2
000734  e7061ffe  storeli.w r1, -152(r30)
000738  e3005ffd  loadli.w r1,  -344(r30)
00073c  3fb07001  blt.s r1, r23, 12
000740  ab0a80ff  lui r21, 1046528
000744  5b030000  j 24
000748  e3006ffe  loadli.w r1,  -208(r30)
00074c  63015ffe  loadli.w r2,  -216(r30)
000750  b3900018  bfloat2float.rn r1, r1
000754  33110118  bfloat2float.rn r2, r2
000758  8bea2010  add.f.rn r21, r1, r2
00075c  e3404ffd  loadli.w r1,  -348(r30)
000760  3fb07001  blt.s r1, r23, 12
000764  ab0080ff  lui r1, 1046528
000768  5b030000  j 24
00076c  e340dffe  loadli.w r1,  -148(r30)
000770  63415ffe  loadli.w r2,  -212(r30)
000774  b3900018  bfloat2float.rn r1, r1
000778  33110118  bfloat2float.rn r2, r2
00077c  8be02010  add.f.rn r1, r1, r2
000780  1f810900  addli r2, r19, 0
000784  9f010a00  addli r3, r20, 0
000788  e7461ffe  storeli.w r1, -148(r30)
00078c  573d0200  jal 4584
000790  e300effd  loadli.w r1,  -272(r30)
000794  73e02000  stores.w r2, 0(r1)
000798  00a00300  mfence { lm, sm, gm }
00079c  80a10c04  csr_set csr3, r25
0007a0  00d00100  sync_group
0007a4  e340fffe  loadli.w r1,  -132(r30)
0007a8  3b800002  bneq r1, zero, 1024
0007ac  630caffb  loadli.w r24,  -560(r30)
0007b0  9f8c0a00  addli r25, r21, 0
0007b4  ef404c01  loads.w r1, 20(r24)
0007b8  6f410c00  loads.w r2, 0(r24)
0007bc  ef414c00  loads.w r3, 4(r24)
0007c0  6f4a8c00  loads.w r20, 8(r24)
0007c4  ef49cc00  loads.w r19, 12(r24)
0007c8  ef4a0c01  loads.w r21, 16(r24)
0007cc  674d1ffa  storeli.w r1, -556(r30)
0007d0  ef408c01  loads.w r1, 24(r24)
0007d4  e70d1ffa  storeli.w r1, -552(r30)
0007d8  ef40cc01  loads.w r1, 28(r24)
0007dc  e74d1ffa  storeli.w r1, -548(r30)
0007e0  ef400c02  loads.w r1, 32(r24)
0007e4  670e1ffa  storeli.w r1, -544(r30)
0007e8  ef404c02  loads.w r1, 36(r24)
0007ec  674e1ffa  storeli.w r1, -540(r30)
0007f0  ef408c02  loads.w r1, 40(r24)
0007f4  e70e1ffa  storeli.w r1, -536(r30)
0007f8  ef40cc02  loads.w r1, 44(r24)
0007fc  e74e1ffa  storeli.w r1, -532(r30)
000800  ef400c03  loads.w r1, 48(r24)
000804  670f1ffa  storeli.w r1, -528(r30)
000808  ef404c03  loads.w r1, 52(r24)
00080c  674f1ffa  storeli.w r1, -524(r30)
000810  ef408c03  loads.w r1, 56(r24)
000814  e70f1ffa  storeli.w r1, -520(r30)
000818  ef40cc03  loads.w r1, 60(r24)
00081c  e74f1ffa  storeli.w r1, -516(r30)
000820  ef400c04  loads.w r1, 64(r24)
000824  67001ffc  storeli.w r1, -512(r30)
000828  ef404c04  loads.w r1, 68(r24)
00082c  67401ffc  storeli.w r1, -508(r30)
000830  ef408c04  loads.w r1, 72(r24)
000834  e7001ffc  storeli.w r1, -504(r30)
000838  ef40cc04  loads.w r1, 76(r24)
00083c  e7401ffc  storeli.w r1, -500(r30)
000840  ef400c05  loads.w r1, 80(r24)
000844  67011ffc  storeli.w r1, -496(r30)
000848  ef404c05  loads.w r1, 84(r24)
00084c  67411ffc  storeli.w r1, -492(r30)
000850  ef408c05  loads.w r1, 88(r24)
000854  e7011ffc  storeli.w r1, -488(r30)
000858  ef40cc05  loads.w r1, 92(r24)
00085c  e7411ffc  storeli.w r1, -484(r30)
000860  ef400c06  loads.w r1, 96(r24)
000864  67021ffc  storeli.w r1, -480(r30)
000868  ef404c06  loads.w r1, 100(r24)
00086c  67421ffc  storeli.w r1, -476(r30)
000870  ef408c06  loads.w r1, 104(r24)
000874  e7021ffc  storeli.w r1, -472(r30)
000878  ef40cc06  loads.w r1, 108(r24)
00087c  e7421ffc  storeli.w r1, -468(r30)
000880  ef400c07  loads.w r1, 112(r24)
000884  67031ffc  storeli.w r1, -464(r30)
000888  ef404c07  loads.w r1, 116(r24)
00088c  67431ffc  storeli.w r1, -460(r30)
000890  ef408c07  loads.w r1, 120(r24)
000894  e7031ffc  storeli.w r1, -456(r30)
000898  ef40cc07  loads.w r1, 124(r24)
00089c  e7431ffc  storeli.w r1, -452(r30)
0008a0  ef400c08  loads.w r1, 128(r24)
0008a4  67041ffc  storeli.w r1, -448(r30)
0008a8  ef404c08  loads.w r1, 132(r24)
0008ac  67441ffc  storeli.w r1, -444(r30)
0008b0  ef408c08  loads.w r1, 136(r24)
0008b4  e7041ffc  storeli.w r1, -440(r30)
0008b8  ef40cc08  loads.w r1, 140(r24)
0008bc  e7441ffc  storeli.w r1, -436(r30)
0008c0  ef400c09  loads.w r1, 144(r24)
0008c4  67051ffc  storeli.w r1, -432(r30)
0008c8  ef404c09  loads.w r1, 148(r24)
0008cc  67451ffc  storeli.w r1, -428(r30)
0008d0  ef408c09  loads.w r1, 152(r24)
0008d4  e7051ffc  storeli.w r1, -424(r30)
0008d8  ef40cc09  loads.w r1, 156(r24)
0008dc  e7451ffc  storeli.w r1, -420(r30)
0008e0  ef400c0a  loads.w r1, 160(r24)
0008e4  67061ffc  storeli.w r1, -416(r30)
0008e8  ef404c0a  loads.w r1, 164(r24)
0008ec  67461ffc  storeli.w r1, -412(r30)
0008f0  ef408c0a  loads.w r1, 168(r24)
0008f4  e7061ffc  storeli.w r1, -408(r30)
0008f8  ef40cc0a  loads.w r1, 172(r24)
0008fc  e7461ffc  storeli.w r1, -404(r30)
000900  ef400c0b  loads.w r1, 176(r24)
000904  67071ffc  storeli.w r1, -400(r30)
000908  ef404c0b  loads.w r1, 180(r24)
00090c  67471ffc  storeli.w r1, -396(r30)
000910  ef408c0b  loads.w r1, 184(r24)
000914  e7071ffc  storeli.w r1, -392(r30)
000918  ef40cc0b  loads.w r1, 188(r24)
00091c  e7471ffc  storeli.w r1, -388(r30)
000920  ef400c0c  loads.w r1, 192(r24)
000924  67081ffc  storeli.w r1, -384(r30)
000928  ef404c0c  loads.w r1, 196(r24)
00092c  e70f1ffc  storeli.w r1, -264(r30)
000930  ef408c0c  loads.w r1, 200(r24)
000934  e74f1ffc  storeli.w r1, -260(r30)
000938  ef40cc0c  loads.w r1, 204(r24)
00093c  67001ffe  storeli.w r1, -256(r30)
000940  ef400c0d  loads.w r1, 208(r24)
000944  67401ffe  storeli.w r1, -252(r30)
000948  ef404c0d  loads.w r1, 212(r24)
00094c  e7001ffe  storeli.w r1, -248(r30)
000950  ef408c0d  loads.w r1, 216(r24)
000954  e7401ffe  storeli.w r1, -244(r30)
000958  ef40cc0d  loads.w r1, 220(r24)
00095c  67011ffe  storeli.w r1, -240(r30)
000960  ef400c0e  loads.w r1, 224(r24)
000964  67411ffe  storeli.w r1, -236(r30)
000968  ef404c0e  loads.w r1, 228(r24)
00096c  e7011ffe  storeli.w r1, -232(r30)
000970  ef408c0e  loads.w r1, 232(r24)
000974  e7411ffe  storeli.w r1, -228(r30)
000978  ef40cc0e  loads.w r1, 236(r24)
00097c  67021ffe  storeli.w r1, -224(r30)
000980  ef400c0f  loads.w r1, 240(r24)
000984  67421ffe  storeli.w r1, -220(r30)
000988  ef404c0f  loads.w r1, 244(r24)
00098c  e7021ffe  storeli.w r1, -216(r30)
000990  ef408c0f  loads.w r1, 248(r24)
000994  e7421ffe  storeli.w r1, -212(r30)
000998  ef40cc0f  loads.w r1, 252(r24)
00099c  67031ffe  storeli.w r1, -208(r30)
0009a0  573d0200  jal 4584
0009a4  9f010a00  addli r3, r20, 0
0009a8  573d0200  jal 4584
0009ac  9f810900  addli r3, r19, 0
0009b0  573d0200  jal 4584
0009b4  9f810a00  addli r3, r21, 0
0009b8  9f8a0c00  addli r21, r25, 0
0009bc  e34ceffd  loadli.w r25,  -268(r30)
0009c0  573d0200  jal 4584
0009c4  e341affb  loadli.w r3,  -556(r30)
0009c8  573d0200  jal 4584
0009cc  e301bffb  loadli.w r3,  -552(r30)
0009d0  573d0200  jal 4584
0009d4  e341bffb  loadli.w r3,  -548(r30)
0009d8  573d0200  jal 4584
0009dc  e301cffb  loadli.w r3,  -544(r30)
0009e0  573d0200  jal 4584
0009e4  e341cffb  loadli.w r3,  -540(r30)
0009e8  573d0200  jal 4584
0009ec  e301dffb  loadli.w r3,  -536(r30)
0009f0  573d0200  jal 4584
0009f4  e341dffb  loadli.w r3,  -532(r30)
0009f8  573d0200  jal 4584
0009fc  e301effb  loadli.w r3,  -528(r30)
000a00  573d0200  jal 4584
000a04  e341effb  loadli.w r3,  -524(r30)
000a08  573d0200  jal 4584
000a0c  e301fffb  loadli.w r3,  -520(r30)
000a10  573d0200  jal 4584
000a14  e341fffb  loadli.w r3,  -516(r30)
000a18  573d0200  jal 4584
000a1c  e3010ffc  loadli.w r3,  -512(r30)
000a20  573d0200  jal 4584
000a24  e3410ffc  loadli.w r3,  -508(r30)
000a28  573d0200  jal 4584
000a2c  e3011ffc  loadli.w r3,  -504(r30)
000a30  573d0200  jal 4584
000a34  e3411ffc  loadli.w r3,  -500(r30)
000a38  573d0200  jal 4584
000a3c  e3012ffc  loadli.w r3,  -496(r30)
000a40  573d0200  jal 4584
000a44  e3412ffc  loadli.w r3,  -492(r30)
000a48  573d0200  jal 4584
000a4c  e3013ffc  loadli.w r3,  -488(r30)
000a50  573d0200  jal 4584
000a54  e3413ffc  loadli.w r3,  -484(r30)
000a58  573d0200  jal 4584
000a5c  e3014ffc  loadli.w r3,  -480(r30)
000a60  573d0200  jal 4584
000a64  e3414ffc  loadli.w r3,  -476(r30)
000a68  573d0200  jal 4584
000a6c  e3015ffc  loadli.w r3,  -472(r30)
000a70  573d0200  jal 4584
000a74  e3415ffc  loadli.w r3,  -468(r30)
000a78  573d0200  jal 4584
000a7c  e3016ffc  loadli.w r3,  -464(r30)
000a80  573d0200  jal 4584
000a84  e3416ffc  loadli.w r3,  -460(r30)
000a88  573d0200  jal 4584
000a8c  e3017ffc  loadli.w r3,  -456(r30)
000a90  573d0200  jal 4584
000a94  e3417ffc  loadli.w r3,  -452(r30)
000a98  573d0200  jal 4584
000a9c  e3018ffc  loadli.w r3,  -448(r30)
000aa0  573d0200  jal 4584
000aa4  e3418ffc  loadli.w r3,  -444(r30)
000aa8  573d0200  jal 4584
000aac  e3019ffc  loadli.w r3,  -440(r30)
000ab0  573d0200  jal 4584
000ab4  e3419ffc  loadli.w r3,  -436(r30)
000ab8  573d0200  jal 4584
000abc  e301affc  loadli.w r3,  -432(r30)
000ac0  573d0200  jal 4584
000ac4  e341affc  loadli.w r3,  -428(r30)
000ac8  573d0200  jal 4584
000acc  e301bffc  loadli.w r3,  -424(r30)
000ad0  573d0200  jal 4584
000ad4  e341bffc  loadli.w r3,  -420(r30)
000ad8  573d0200  jal 4584
000adc  e301cffc  loadli.w r3,  -416(r30)
000ae0  573d0200  jal 4584
000ae4  e341cffc  loadli.w r3,  -412(r30)
000ae8  573d0200  jal 4584
000aec  e301dffc  loadli.w r3,  -408(r30)
000af0  573d0200  jal 4584
000af4  e341dffc  loadli.w r3,  -404(r30)
000af8  573d0200  jal 4584
000afc  e301effc  loadli.w r3,  -400(r30)
000b00  573d0200  jal 4584
000b04  e341effc  loadli.w r3,  -396(r30)
000b08  573d0200  jal 4584
000b0c  e301fffc  loadli.w r3,  -392(r30)
000b10  573d0200  jal 4584
000b14  e341fffc  loadli.w r3,  -388(r30)
000b18  573d0200  jal 4584
000b1c  e3010ffd  loadli.w r3,  -384(r30)
000b20  573d0200  jal 4584
000b24  e301fffd  loadli.w r3,  -264(r30)
000b28  573d0200  jal 4584
000b2c  e341fffd  loadli.w r3,  -260(r30)
000b30  573d0200  jal 4584
000b34  e3010ffe  loadli.w r3,  -256(r30)
000b38  573d0200  jal 4584
000b3c  e3410ffe  loadli.w r3,  -252(r30)
000b40  573d0200  jal 4584
000b44  e3011ffe  loadli.w r3,  -248(r30)
000b48  573d0200  jal 4584
000b4c  e3411ffe  loadli.w r3,  -244(r30)
000b50  573d0200  jal 4584
000b54  e3012ffe  loadli.w r3,  -240(r30)
000b58  573d0200  jal 4584
000b5c  e3412ffe  loadli.w r3,  -236(r30)
000b60  573d0200  jal 4584
000b64  e3013ffe  loadli.w r3,  -232(r30)
000b68  573d0200  jal 4584
000b6c  e3413ffe  loadli.w r3,  -228(r30)
000b70  573d0200  jal 4584
000b74  e3014ffe  loadli.w r3,  -224(r30)
000b78  573d0200  jal 4584
000b7c  e3414ffe  loadli.w r3,  -220(r30)
000b80  573d0200  jal 4584
000b84  e3015ffe  loadli.w r3,  -216(r30)
000b88  573d0200  jal 4584
000b8c  e3415ffe  loadli.w r3,  -212(r30)
000b90  573d0200  jal 4584
000b94  e3016ffe  loadli.w r3,  -208(r30)
000b98  573d0200  jal 4584
000b9c  73602c00  stores.w r2, 0(r24)
000ba0  2b0c0000  lui r24, 0
000ba4  1f0c0c00  addli r24, r24, 0
000ba8  00a00300  mfence { lm, sm, gm }
000bac  80a10c04  csr_set csr3, r25
000bb0  00d00100  sync_group
000bb4  ef400c00  loads.w r1, 0(r24)
000bb8  63416ffe  loadli.w r2,  -204(r30)
000bbc  e3017ffe  loadli.w r3,  -200(r30)
000bc0  1f020000  addli r4, zero, 0
000bc4  0b611118  sub.f.rn r2, r2, r1
000bc8  8be21118  sub.f.rn r5, r3, r1
000bcc  73601c10  stores.w r1, 256(r24)
000bd0  8f010100  exp.f.rn r3, r2
000bd4  0f810200  exp.f.rn r2, r5
000bd8  e302fffe  loadli.w r5,  -136(r30)
000bdc  1f030100  addli r6, r2, 0
000be0  9f830100  addli r7, r3, 0
000be4  5b050000  j 40
000be8  8be41518  sub.f.rn r9, r11, r1
000bec  0b641418  sub.f.rn r8, r8, r1
000bf0  1f420200  addli r4, r4, 4
000bf4  9fa20200  addli r5, r5, 2
000bf8  8f840400  exp.f.rn r9, r9
000bfc  0f040400  exp.f.rn r8, r8
000c00  8be39310  add.f.rn r7, r7, r9
000c04  0b638310  add.f.rn r6, r6, r8
000c08  3761a201  beq r4, r26, 88
000c0c  8b954d10  add.s r11, r27, r4
000c10  0b164b10  add.s r12, r22, r4
000c14  9ff6f2ff  addli r13, r5, -1
000c18  2b0480ff  lui r8, 1046528
000c1c  ebb42500  load.hu r9, 2(r11)
000c20  6b356600  load.hu r10, 6(r12)
000c24  3fc07601  blt.s r13, r23, 16
000c28  ab0580ff  lui r11, 1046528
000c2c  bf907201  blt.s r5, r23, 36
000c30  5bf7ffff  j -72
000c34  ebb50500  load.hu r11, 0(r11)
000c38  6b364600  load.hu r12, 4(r12)
000c3c  b3950518  bfloat2float.rn r11, r11
000c40  33160618  bfloat2float.rn r12, r12
000c44  8be5c510  add.f.rn r11, r11, r12
000c48  3fa07201  blt.s r5, r23, 8
000c4c  dbf3ffff  j -100
000c50  33940418  bfloat2float.rn r8, r9
000c54  b3140518  bfloat2float.rn r9, r10
000c58  0b649410  add.f.rn r8, r8, r9
000c5c  dbf1ffff  j -116
000c60  0be26310  add.f.rn r4, r7, r6
000c64  e302dffd  loadli.w r5,  -280(r30)
000c68  73e04200  stores.w r4, 0(r5)
000c6c  00a00300  mfence { lm, sm, gm }
000c70  80a10c04  csr_set csr3, r25
000c74  00d00100  sync_group
000c78  6342fffe  loadli.w r4,  -132(r30)
000c7c  3b280200  bneq r4, zero, 520
000c80  e3439ffb  loadli.w r7,  -564(r30)
000c84  6fc20300  loads.w r4, 0(r7)
000c88  6fc34300  loads.w r6, 4(r7)
000c8c  efc28300  loads.w r5, 8(r7)
000c90  0b626210  add.f.rn r4, r4, r6
000c94  6fc3c300  loads.w r6, 12(r7)
000c98  0b625210  add.f.rn r4, r4, r5
000c9c  efc20301  loads.w r5, 16(r7)
000ca0  0b626210  add.f.rn r4, r4, r6
000ca4  6fc34301  loads.w r6, 20(r7)
000ca8  0b625210  add.f.rn r4, r4, r5
000cac  efc28301  loads.w r5, 24(r7)
000cb0  0b626210  add.f.rn r4, r4, r6
000cb4  6fc3c301  loads.w r6, 28(r7)
000cb8  0b625210  add.f.rn r4, r4, r5
000cbc  efc20302  loads.w r5, 32(r7)
000cc0  0b626210  add.f.rn r4, r4, r6
000cc4  6fc34302  loads.w r6, 36(r7)
000cc8  0b625210  add.f.rn r4, r4, r5
000ccc  efc28302  loads.w r5, 40(r7)
000cd0  0b626210  add.f.rn r4, r4, r6
000cd4  6fc3c302  loads.w r6, 44(r7)
000cd8  0b625210  add.f.rn r4, r4, r5
000cdc  efc20303  loads.w r5, 48(r7)
000ce0  0b626210  add.f.rn r4, r4, r6
000ce4  6fc34303  loads.w r6, 52(r7)
000ce8  0b625210  add.f.rn r4, r4, r5
000cec  efc28303  loads.w r5, 56(r7)
000cf0  0b626210  add.f.rn r4, r4, r6
000cf4  6fc3c303  loads.w r6, 60(r7)
000cf8  0b625210  add.f.rn r4, r4, r5
000cfc  efc20304  loads.w r5, 64(r7)
000d00  0b626210  add.f.rn r4, r4, r6
000d04  6fc34304  loads.w r6, 68(r7)
000d08  0b625210  add.f.rn r4, r4, r5
000d0c  efc28304  loads.w r5, 72(r7)
000d10  0b626210  add.f.rn r4, r4, r6
000d14  6fc3c304  loads.w r6, 76(r7)
000d18  0b625210  add.f.rn r4, r4, r5
000d1c  efc20305  loads.w r5, 80(r7)
000d20  0b626210  add.f.rn r4, r4, r6
000d24  6fc34305  loads.w r6, 84(r7)
000d28  0b625210  add.f.rn r4, r4, r5
000d2c  efc28305  loads.w r5, 88(r7)
000d30  0b626210  add.f.rn r4, r4, r6
000d34  6fc3c305  loads.w r6, 92(r7)
000d38  0b625210  add.f.rn r4, r4, r5
000d3c  efc20306  loads.w r5, 96(r7)
000d40  0b626210  add.f.rn r4, r4, r6
000d44  6fc34306  loads.w r6, 100(r7)
000d48  0b625210  add.f.rn r4, r4, r5
000d4c  efc28306  loads.w r5, 104(r7)
000d50  0b626210  add.f.rn r4, r4, r6
000d54  6fc3c306  loads.w r6, 108(r7)
000d58  0b625210  add.f.rn r4, r4, r5
000d5c  efc20307  loads.w r5, 112(r7)
000d60  0b626210  add.f.rn r4, r4, r6
000d64  6fc34307  loads.w r6, 116(r7)
000d68  0b625210  add.f.rn r4, r4, r5
000d6c  efc28307  loads.w r5, 120(r7)
000d70  0b626210  add.f.rn r4, r4, r6
000d74  6fc3c307  loads.w r6, 124(r7)
000d78  0b625210  add.f.rn r4, r4, r5
000d7c  efc20308  loads.w r5, 128(r7)
000d80  0b626210  add.f.rn r4, r4, r6
000d84  6fc34308  loads.w r6, 132(r7)
000d88  0b625210  add.f.rn r4, r4, r5
000d8c  efc28308  loads.w r5, 136(r7)
000d90  0b626210  add.f.rn r4, r4, r6
000d94  6fc3c308  loads.w r6, 140(r7)
000d98  0b625210  add.f.rn r4, r4, r5
000d9c  efc20309  loads.w r5, 144(r7)
000da0  0b626210  add.f.rn r4, r4, r6
000da4  6fc34309  loads.w r6, 148(r7)
000da8  0b625210  add.f.rn r4, r4, r5
000dac  efc28309  loads.w r5, 152(r7)
000db0  0b626210  add.f.rn r4, r4, r6
000db4  6fc3c309  loads.w r6, 156(r7)
000db8  0b625210  add.f.rn r4, r4, r5
000dbc  efc2030a  loads.w r5, 160(r7)
000dc0  0b626210  add.f.rn r4, r4, r6
000dc4  6fc3430a  loads.w r6, 164(r7)
000dc8  0b625210  add.f.rn r4, r4, r5
000dcc  efc2830a  loads.w r5, 168(r7)
000dd0  0b626210  add.f.rn r4, r4, r6
000dd4  6fc3c30a  loads.w r6, 172(r7)
000dd8  0b625210  add.f.rn r4, r4, r5
000ddc  efc2030b  loads.w r5, 176(r7)
000de0  0b626210  add.f.rn r4, r4, r6
000de4  6fc3430b  loads.w r6, 180(r7)
000de8  0b625210  add.f.rn r4, r4, r5
000dec  efc2830b  loads.w r5, 184(r7)
000df0  0b626210  add.f.rn r4, r4, r6
000df4  6fc3c30b  loads.w r6, 188(r7)
000df8  0b625210  add.f.rn r4, r4, r5
000dfc  efc2030c  loads.w r5, 192(r7)
000e00  0b626210  add.f.rn r4, r4, r6
000e04  6fc3430c  loads.w r6, 196(r7)
000e08  0b625210  add.f.rn r4, r4, r5
000e0c  efc2830c  loads.w r5, 200(r7)
000e10  0b626210  add.f.rn r4, r4, r6
000e14  6fc3c30c  loads.w r6, 204(r7)
000e18  0b625210  add.f.rn r4, r4, r5
000e1c  efc2030d  loads.w r5, 208(r7)
000e20  0b626210  add.f.rn r4, r4, r6
000e24  6fc3430d  loads.w r6, 212(r7)
000e28  0b625210  add.f.rn r4, r4, r5
000e2c  efc2830d  loads.w r5, 216(r7)
000e30  0b626210  add.f.rn r4, r4, r6
000e34  6fc3c30d  loads.w r6, 220(r7)
000e38  0b625210  add.f.rn r4, r4, r5
000e3c  efc2030e  loads.w r5, 224(r7)
000e40  0b626210  add.f.rn r4, r4, r6
000e44  6fc3430e  loads.w r6, 228(r7)
000e48  0b625210  add.f.rn r4, r4, r5
000e4c  efc2830e  loads.w r5, 232(r7)
000e50  0b626210  add.f.rn r4, r4, r6
000e54  6fc3c30e  loads.w r6, 236(r7)
000e58  0b625210  add.f.rn r4, r4, r5
000e5c  efc2030f  loads.w r5, 240(r7)
000e60  0b626210  add.f.rn r4, r4, r6
000e64  6fc3430f  loads.w r6, 244(r7)
000e68  0b625210  add.f.rn r4, r4, r5
000e6c  efc2830f  loads.w r5, 248(r7)
000e70  0b626210  add.f.rn r4, r4, r6
000e74  6fc3c30f  loads.w r6, 252(r7)
000e78  0b625210  add.f.rn r4, r4, r5
000e7c  0b626210  add.f.rn r4, r4, r6
000e80  73e04300  stores.w r4, 0(r7)
000e84  00a00300  mfence { lm, sm, gm }
000e88  80a10c04  csr_set csr3, r25
000e8c  00d00100  sync_group
000e90  6f420c41  loads.w r4, 1040(r24)
000e94  ab02803f  lui r5, 260096
000e98  9f040c00  addli r9, r24, 0
000e9c  634c0ffd  loadli.w r24,  -380(r30)
000ea0  ab0c807f  lui r25, 522240
000ea4  0f834218  div.f.rn r6, r5, r4
000ea8  ab720000  lui r5, 7
000eac  73e84450  stores.w r4, 1296(r9)
000eb0  8be36120  mul.f.rn r7, r3, r6
000eb4  97818301  and r3, r7, r24
000eb8  13843c04  setlt.u r8, r25, r3
000ebc  9b9102fc  ori r3, r5, 4032
000ec0  9b92f2ff  ori r5, r5, 4095
000ec4  1f820100  addli r4, r3, 0
000ec8  3b600400  bneq r8, zero, 24
000ecc  1bc20301  srli r4, r7, 16
000ed0  1b021200  andi r4, r4, 1
000ed4  0b924310  add.s r4, r7, r4
000ed8  0b125210  add.s r4, r4, r5
000edc  1b420201  srli r4, r4, 16
000ee0  8b636120  mul.f.rn r7, r2, r6
000ee4  17818301  and r2, r7, r24
000ee8  13842c04  setlt.u r8, r25, r2
000eec  1f810100  addli r2, r3, 0
000ef0  3b600400  bneq r8, zero, 24
000ef4  1bc10301  srli r2, r7, 16
000ef8  1b011100  andi r2, r2, 1
000efc  0b912310  add.s r2, r7, r2
000f00  0b115110  add.s r2, r2, r5
000f04  1b410101  srli r2, r2, 16
000f08  e3437ffe  loadli.w r7,  -196(r30)
000f0c  8be31318  sub.f.rn r7, r7, r1
000f10  8f830300  exp.f.rn r7, r7
000f14  0be46320  mul.f.rn r8, r7, r6
000f18  97038401  and r7, r8, r24
000f1c  93847c04  setlt.u r9, r25, r7
000f20  9f830100  addli r7, r3, 0
000f24  3be00400  bneq r9, zero, 24
000f28  9b430401  srli r7, r8, 16
000f2c  9b831300  andi r7, r7, 1
000f30  8b137410  add.s r7, r8, r7
000f34  8b935310  add.s r7, r7, r5
000f38  9bc30301  srli r7, r7, 16
000f3c  63048ffe  loadli.w r8,  -192(r30)
000f40  0b641418  sub.f.rn r8, r8, r1
000f44  0f040400  exp.f.rn r8, r8
000f48  8b646420  mul.f.rn r9, r8, r6
000f4c  17848401  and r8, r9, r24
000f50  13858c04  setlt.u r10, r25, r8
000f54  1f840100  addli r8, r3, 0
000f58  3b600500  bneq r10, zero, 24
000f5c  1bc40401  srli r8, r9, 16
000f60  1b041400  andi r8, r8, 1
000f64  0b948410  add.s r8, r9, r8
000f68  0b145410  add.s r8, r8, r5
000f6c  1b440401  srli r8, r8, 16
000f70  e3448ffe  loadli.w r9,  -188(r30)
000f74  8be41418  sub.f.rn r9, r9, r1
000f78  8f840400  exp.f.rn r9, r9
000f7c  0be56420  mul.f.rn r10, r9, r6
000f80  97048501  and r9, r10, r24
000f84  93859c04  setlt.u r11, r25, r9
000f88  9f840100  addli r9, r3, 0
000f8c  3be00500  bneq r11, zero, 24
000f90  9b440501  srli r9, r10, 16
000f94  9b841400  andi r9, r9, 1
000f98  8b149510  add.s r9, r10, r9
000f9c  8b945410  add.s r9, r9, r5
000fa0  9bc40401  srli r9, r9, 16
000fa4  63059ffe  loadli.w r10,  -184(r30)
000fa8  0b651518  sub.f.rn r10, r10, r1
000fac  0f050500  exp.f.rn r10, r10
000fb0  8b656520  mul.f.rn r11, r10, r6
000fb4  17858501  and r10, r11, r24
000fb8  1386ac04  setlt.u r12, r25, r10
000fbc  1f850100  addli r10, r3, 0
000fc0  3b600600  bneq r12, zero, 24
000fc4  1bc50501  srli r10, r11, 16
000fc8  1b051500  andi r10, r10, 1
000fcc  0b95a510  add.s r10, r11, r10
000fd0  0b155510  add.s r10, r10, r5
000fd4  1b450501  srli r10, r10, 16
000fd8  e3459ffe  loadli.w r11,  -180(r30)
000fdc  8be51518  sub.f.rn r11, r11, r1
000fe0  8f850500  exp.f.rn r11, r11
000fe4  0be66520  mul.f.rn r12, r11, r6
000fe8  97058601  and r11, r12, r24
000fec  9386bc04  setlt.u r13, r25, r11
000ff0  9f850100  addli r11, r3, 0
000ff4  3be00600  bneq r13, zero, 24
000ff8  9b450601  srli r11, r12, 16
000ffc  9b851500  andi r11, r11, 1
001000  8b15b610  add.s r11, r12, r11
001004  8b955510  add.s r11, r11, r5
001008  9bc50501  srli r11, r11, 16
00100c  6306affe  loadli.w r12,  -176(r30)
001010  0b661618  sub.f.rn r12, r12, r1
001014  0f060600  exp.f.rn r12, r12
001018  8b666620  mul.f.rn r13, r12, r6
00101c  17868601  and r12, r13, r24
001020  1387cc04  setlt.u r14, r25, r12
001024  1f860100  addli r12, r3, 0
001028  3b600700  bneq r14, zero, 24
00102c  1bc60601  srli r12, r13, 16
001030  1b061600  andi r12, r12, 1
001034  0b96c610  add.s r12, r13, r12
001038  0b165610  add.s r12, r12, r5
00103c  1b460601  srli r12, r12, 16
001040  e346affe  loadli.w r13,  -172(r30)
001044  8be61618  sub.f.rn r13, r13, r1
001048  8f860600  exp.f.rn r13, r13
00104c  0be76620  mul.f.rn r14, r13, r6
001050  97068701  and r13, r14, r24
001054  9387dc04  setlt.u r15, r25, r13
001058  9f860100  addli r13, r3, 0
00105c  3be00700  bneq r15, zero, 24
001060  9b460701  srli r13, r14, 16
001064  9b861600  andi r13, r13, 1
001068  8b16d710  add.s r13, r14, r13
00106c  8b965610  add.s r13, r13, r5
001070  9bc60601  srli r13, r13, 16
001074  6307bffe  loadli.w r14,  -168(r30)
001078  0b671718  sub.f.rn r14, r14, r1
00107c  0f070700  exp.f.rn r14, r14
001080  8b676720  mul.f.rn r15, r14, r6
001084  17878701  and r14, r15, r24
001088  1388ec04  setlt.u r16, r25, r14
00108c  1f870100  addli r14, r3, 0
001090  3b600800  bneq r16, zero, 24
001094  1bc70701  srli r14, r15, 16
001098  1b071700  andi r14, r14, 1
00109c  0b97e710  add.s r14, r15, r14
0010a0  0b175710  add.s r14, r14, r5
0010a4  1b470701  srli r14, r14, 16
0010a8  e347bffe  loadli.w r15,  -164(r30)
0010ac  8be71718  sub.f.rn r15, r15, r1
0010b0  8f870700  exp.f.rn r15, r15
0010b4  0be86720  mul.f.rn r16, r15, r6
0010b8  97078801  and r15, r16, r24
0010bc  9388fc04  setlt.u r17, r25, r15
0010c0  9f870100  addli r15, r3, 0
0010c4  3be00800  bneq r17, zero, 24
0010c8  9b470801  srli r15, r16, 16
0010cc  9b871700  andi r15, r15, 1
0010d0  8b17f810  add.s r15, r16, r15
0010d4  8b975710  add.s r15, r15, r5
0010d8  9bc70701  srli r15, r15, 16
0010dc  6308cffe  loadli.w r16,  -160(r30)
0010e0  0b681818  sub.f.rn r16, r16, r1
0010e4  0f080800  exp.f.rn r16, r16
0010e8  8b686820  mul.f.rn r17, r16, r6
0010ec  17888801  and r16, r17, r24
0010f0  13890c05  setlt.u r18, r25, r16
0010f4  1f880100  addli r16, r3, 0
0010f8  3b600900  bneq r18, zero, 24
0010fc  1bc80801  srli r16, r17, 16
001100  1b081800  andi r16, r16, 1
001104  0b980811  add.s r16, r17, r16
001108  0b185810  add.s r16, r16, r5
00110c  1b480801  srli r16, r16, 16
001110  e348cffe  loadli.w r17,  -156(r30)
001114  8be81818  sub.f.rn r17, r17, r1
001118  8f880800  exp.f.rn r17, r17
00111c  0be96820  mul.f.rn r18, r17, r6
001120  97088901  and r17, r18, r24
001124  93891c05  setlt.u r19, r25, r17
001128  9f880100  addli r17, r3, 0
00112c  3be00900  bneq r19, zero, 24
001130  9b480901  srli r17, r18, 16
001134  9b881800  andi r17, r17, 1
001138  8b181911  add.s r17, r18, r17
00113c  8b985810  add.s r17, r17, r5
001140  9bc80801  srli r17, r17, 16
001144  6309dffe  loadli.w r18,  -152(r30)
001148  0b691918  sub.f.rn r18, r18, r1
00114c  0f090900  exp.f.rn r18, r18
001150  8b696920  mul.f.rn r19, r18, r6
001154  17898901  and r18, r19, r24
001158  138a2c05  setlt.u r20, r25, r18
00115c  1f890100  addli r18, r3, 0
001160  3b600a00  bneq r20, zero, 24
001164  1bc90901  srli r18, r19, 16
001168  1b091900  andi r18, r18, 1
00116c  0b992911  add.s r18, r19, r18
001170  0b195910  add.s r18, r18, r5
001174  1b490901  srli r18, r18, 16
001178  8be91a18  sub.f.rn r19, r21, r1
00117c  8f890900  exp.f.rn r19, r19
001180  0bea6920  mul.f.rn r20, r19, r6
001184  97098a01  and r19, r20, r24
001188  938a3c05  setlt.u r21, r25, r19
00118c  9f890100  addli r19, r3, 0
001190  3be00a00  bneq r21, zero, 24
001194  9b490a01  srli r19, r20, 16
001198  9b891900  andi r19, r19, 1
00119c  8b193a11  add.s r19, r20, r19
0011a0  8b995910  add.s r19, r19, r5
0011a4  9bc90901  srli r19, r19, 16
0011a8  634adffe  loadli.w r20,  -148(r30)
0011ac  8b601a18  sub.f.rn r1, r20, r1
0011b0  8f800000  exp.f.rn r1, r1
0011b4  8be06020  mul.f.rn r1, r1, r6
0011b8  17838001  and r6, r1, r24
0011bc  13836c04  setlt.u r6, r25, r6
0011c0  3b0303f8  bneq r6, zero, -3904
0011c4  9bc10001  srli r3, r1, 16
0011c8  9b811100  andi r3, r3, 1
0011cc  8b903010  add.s r1, r1, r3
0011d0  8b905010  add.s r1, r1, r5
0011d4  9bc10001  srli r3, r1, 16
0011d8  5b15feff  j -3928
0011dc  9f8e8e04  addli sp, sp, 576
0011e0  00a00300  mfence { lm, sm, gm }
0011e4  00100000  exit
0011e8  9f8efeff  addli sp, sp, -8
0011ec  9f000100  addli r1, r2, 0
0011f0  2bf1ff7f  lui r2, 524287
0011f4  ab02807f  lui r5, 522240
0011f8  67c0ee01  storeli.w r30, 4(sp)
0011fc  6780fe01  storeli.w r31, 0(sp)
001200  1f8f1e00  addli r30, sp, 8
001204  1b12f1ff  ori r4, r2, 4095
001208  17814000  and r2, r1, r4
00120c  13832204  setlt.u r6, r5, r2
001210  1f810100  addli r2, r3, 0
001214  bb210300  bneq r6, zero, 104
001218  97014100  and r3, r2, r4
00121c  93813204  setlt.u r3, r5, r3
001220  3be10100  bneq r3, zero, 88
001224  abf1ffff  lui r3, 1048575
001228  17221100  xor r4, r2, r1
00122c  9b91f1ff  ori r3, r3, 4095
001230  3fa04100  blt.s r3, r4, 8
001234  5b0b0000  j 88
001238  9b319100  slli r3, r2, 9
00123c  9bb29000  slli r5, r1, 9
001240  1b427101  srli r4, r2, 23
001244  1bc37001  srli r6, r1, 23
001248  93e32004  setlt.f r7, r1, r2
00124c  93810100  seteq r3, r3, zero
001250  93820200  seteq r5, r5, zero
001254  1b02f20f  andi r4, r4, 255
001258  1b03f30f  andi r6, r6, 255
00125c  1b72f20f  setlti r4, r4, 255
001260  1b73f30f  setlti r6, r6, 255
001264  97113200  or r3, r4, r3
001268  17125300  or r4, r6, r5
00126c  97013200  and r3, r4, r3
001270  97813300  and r3, r7, r3
001274  3ba00100  bneq r3, zero, 8
001278  1f810000  addli r2, r1, 0
00127c  e38f0e00  loadli.w r31,  0(sp)
001280  63cf0e00  loadli.w r30,  4(sp)
001284  9f8e1e00  addli sp, sp, 8
001288  5f800f00  jr r31, 0
00128c  bfcf00fe  blt.s r1, zero, -16
001290  5bfdffff  j -24
001294  00100000  exit
001298  00100000  exit
00129c  00100000  exit
0012a0  00100000  exit
0012a4  00100000  exit
0012a8  00100000  exit
0012ac  00100000  exit
0012b0  00100000  exit
0012b4  00100000  exit
0012b8  00100000  exit
0012bc  00100000  exit
0012c0  00100000  exit
0012c4  00100000  exit
0012c8  00100000  exit
0012cc  00100000  exit
0012d0  00100000  exit
0012d4  00100000  exit
0012d8  00100000  exit
0012dc  00100000  exit
0012e0  00100000  exit
0012e4  00100000  exit
0012e8  00100000  exit
0012ec  00100000  exit
0012f0  00100000  exit
0012f4  00100000  exit
0012f8  00100000  exit
0012fc  00100000  exit
001300  00100000  exit
001304  00100000  exit
001308  00100000  exit
00130c  00100000  exit
001310  00100000  exit
001314  00100000  exit
001318  00100000  exit
00131c  00100000  exit
001320  00100000  exit
001324  00100000  exit
001328  00100000  exit
00132c  00100000  exit
001330  00100000  exit
001334  00100000  exit
001338  00100000  exit
00133c  00100000  exit
001340  00100000  exit
001344  00100000  exit
001348  00100000  exit
00134c  00100000  exit
001350  00100000  exit
001354  00100000  exit
001358  00100000  exit
00135c  00100000  exit
001360  00100000  exit
001364  00100000  exit
001368  00100000  exit
00136c  00100000  exit
001370  00100000  exit
001374  00100000  exit
001378  00100000  exit
00137c  00100000  exit
001380  00100000  exit
001384  00100000  exit
001388  00100000  exit
00138c  00100000  exit
001390  00100000  exit
001394  00100000  exit
001398  00100000  exit
00139c  00100000  exit
0013a0  00100000  exit
0013a4  00100000  exit
0013a8  00100000  exit
0013ac  00100000  exit
0013b0  00100000  exit
0013b4  00100000  exit
0013b8  00100000  exit
0013bc  00100000  exit
0013c0  00100000  exit
0013c4  00100000  exit
0013c8  00100000  exit
0013cc  00100000  exit
0013d0  00100000  exit
0013d4  00100000  exit
0013d8  00100000  exit
0013dc  00100000  exit
0013e0  00100000  exit
0013e4  00100000  exit
0013e8  00100000  exit
0013ec  00100000  exit
0013f0  00100000  exit
0013f4  00100000  exit
0013f8  00100000  exit
0013fc  00100000  exit
001400  00100000  exit
001404  00100000  exit
001408  00100000  exit
00140c  00100000  exit
001410  00100000  exit
001414  00100000  exit
001418  00100000  exit
00141c  00100000  exit
001420  00100000  exit
001424  00100000  exit
001428  00100000  exit
00142c  00100000  exit
001430  00100000  exit
001434  00100000  exit
001438  00100000  exit
00143c  00100000  exit
001440  00100000  exit
001444  00100000  exit
001448  00100000  exit
00144c  00100000  exit
001450  00100000  exit
001454  00100000  exit
001458  00100000  exit
00145c  00100000  exit
001460  00100000  exit
001464  00100000  exit
001468  00100000  exit
00146c  00100000  exit
001470  00100000  exit
001474  00100000  exit
001478  00100000  exit
00147c  00100000  exit
001480  00100000  exit
001484  00100000  exit
001488  00100000  exit
00148c  00100000  exit
001490  00100000  exit
001494  00100000  exit
001498  00100000  exit
00149c  00100000  exit
0014a0  00100000  exit
0014a4  00100000  exit
0014a8  00100000  exit
0014ac  00100000  exit
0014b0  00100000  exit
0014b4  00100000  exit
0014b8  00100000  exit
0014bc  00100000  exit
0014c0  00100000  exit
0014c4  00100000  exit
0014c8  00100000  exit
0014cc  00100000  exit
0014d0  00100000  exit
