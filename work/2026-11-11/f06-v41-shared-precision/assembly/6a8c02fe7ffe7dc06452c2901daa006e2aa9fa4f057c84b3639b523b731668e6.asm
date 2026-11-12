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
000078  9f493000  addli r19, zero, 28
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
0000dc  9f8e0ef9  addli sp, sp, -896
0000e0  1f8f8e06  addli r30, sp, 832
0000e4  63412f00  loadli.w r2,  20(r30)
0000e8  e3002f00  loadli.w r1,  16(r30)
0000ec  e3013f00  loadli.w r3,  24(r30)
0000f0  8b101120  mul.s r1, r2, r1
0000f4  00510002  load_param_i r2, 0
0000f8  8b903020  mul.s r1, r1, r3
0000fc  67401ffa  storeli.w r1, -764(r30)
000100  4b962004  ble.s r1, r2, 2436
000104  80300002  core_id r1
000108  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00010c  2b08807f  lui r16, 522240
000110  80d10002  load_param_i r3, 1
000114  ab0880ff  lui r17, 1046528
000118  eeb01062  vxor.s.mz vr1{mr1}, vr1, vr1
00011c  9bb05000  slli r1, r1, 5
000120  ea110822  vor.f.mz vr3{mr1}, r16, vr0
000124  67003ffa  storeli.w r3, -768(r30)
000128  e74f1ff8  storeli.w r1, -772(r30)
00012c  abf0ff7f  lui r1, 524287
000130  1b99f0ff  ori r18, r1, 4095
000134  ab00c07f  lui r1, 523264
000138  6a910022  vor.f.mz vr2{mr1}, r1, vr0
00013c  ab400000  lui r1, 4
000140  fe8100e0  vmmov mr3, r1
000144  ab800000  lui r1, 8
000148  7e8000e0  vmmov mr0, r1
00014c  5b090000  j 72
000150  6b518fd0  load.d r[3:4], -760(r30)
000154  9f100000  addli r1, zero, 1
000158  6b528f00  load.d r[5:6], 8(r30)
00015c  97301102  sll.d r[2:3], r[3:4], r1
000160  ab0100f0  lui r3, 983040
000164  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000168  1f028000  addli r4, zero, 64
00016c  97113200  or r3, r4, r3
000170  1f028ffd  addli r4, r30, -320
000174  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000178  63412ffa  loadli.w r2,  -748(r30)
00017c  e3000ffa  loadli.w r1,  -768(r30)
000180  00a00000  mfence { lm }
000184  0b111110  add.s r2, r2, r1
000188  e3400ffa  loadli.w r1,  -764(r30)
00018c  3f201100  blt.s r2, r1, 8
000190  db1e0100  j 2292
000194  e3003f00  loadli.w r1,  24(r30)
000198  67412ffa  storeli.w r2, -748(r30)
00019c  6b520f00  load.d r[5:6], 0(r30)
0001a0  8b101130  div.s r1, r2, r1
0001a4  63412f00  loadli.w r2,  20(r30)
0001a8  8b902030  div.s r1, r1, r2
0001ac  6341fff9  loadli.w r2,  -772(r30)
0001b0  9bb0b000  slli r1, r1, 11
0001b4  8b902010  add.s r1, r1, r2
0001b8  33910028  sext_int2long r[3:4], r1
0001bc  9f200000  addli r1, zero, 2
0001c0  73342fd0  store.d r[3:4], -760(r30)
0001c4  97301102  sll.d r[2:3], r[3:4], r1
0001c8  ab0100f0  lui r3, 983040
0001cc  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0001d0  1f020001  addli r4, zero, 128
0001d4  97113200  or r3, r4, r3
0001d8  1f028ffa  addli r4, r30, -704
0001dc  ffa14000  l_gm2lm r3, r4, 0(r[2:3])
0001e0  1f110000  addli r2, zero, 1
0001e4  9f010000  addli r3, zero, 0
0001e8  00a00000  mfence { lm }
0001ec  db0d0000  j 108
0001f0  63013ffa  loadli.w r2,  -744(r30)
0001f4  9f028ffd  addli r5, r30, -320
0001f8  1b315100  slli r2, r2, 5
0001fc  0b912210  add.s r2, r5, r2
000200  731e3100  store.h r3, 28(r2)
000204  73104100  store.h r4, 0(r2)
000208  73117100  store.h r7, 2(r2)
00020c  73128100  store.h r8, 4(r2)
000210  7313a100  store.h r10, 6(r2)
000214  7314c100  store.h r12, 8(r2)
000218  7315e100  store.h r14, 10(r2)
00021c  73163101  store.h r19, 12(r2)
000220  73175101  store.h r21, 14(r2)
000224  73186101  store.h r22, 16(r2)
000228  73194101  store.h r20, 18(r2)
00022c  731af100  store.h r15, 20(r2)
000230  731bd100  store.h r13, 22(r2)
000234  731cb100  store.h r11, 24(r2)
000238  731d9100  store.h r9, 26(r2)
00023c  731f1100  store.h r1, 30(r2)
000240  9f110000  addli r3, zero, 1
000244  1f010000  addli r2, zero, 0
000248  00a00000  mfence { lm }
00024c  e3403ffa  loadli.w r1,  -740(r30)
000250  9b801000  andi r1, r1, 1
000254  b7fb00fe  beq r1, zero, -260
000258  e7412ffa  storeli.w r2, -740(r30)
00025c  9bb06100  slli r1, r3, 6
000260  1f018ffa  addli r2, r30, -704
000264  e7013ffa  storeli.w r3, -744(r30)
000268  1f0b0ffe  addli r22, r30, -256
00026c  8b101110  add.s r1, r2, r1
000270  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000274  461c5fa2  vstore_mask16.mz vr5{mr1}, 1472(r30)
000278  00a00000  mfence { lm }
00027c  1a125002  vsub.f.mz.rn vr4{mr1}, zero, vr5
000280  63058ffb  loadli.w r10,  -576(r30)
000284  e34b8ffb  loadli.w r23,  -572(r30)
000288  63029ffb  loadli.w r4,  -568(r30)
00028c  e3449ffb  loadli.w r9,  -564(r30)
000290  6301affb  loadli.w r2,  -560(r30)
000294  e340affb  loadli.w r1,  -556(r30)
000298  e301bffb  loadli.w r3,  -552(r30)
00029c  67023ffa  storeli.w r3, -736(r30)
0002a0  634ebffb  loadli.w r28,  -548(r30)
0002a4  e301cffb  loadli.w r3,  -544(r30)
0002a8  e7433ffa  storeli.w r3, -708(r30)
0002ac  e341cffb  loadli.w r3,  -540(r30)
0002b0  e7033ffa  storeli.w r3, -712(r30)
0002b4  e301dffb  loadli.w r3,  -536(r30)
0002b8  67433ffa  storeli.w r3, -716(r30)
0002bc  e341dffb  loadli.w r3,  -532(r30)
0002c0  67033ffa  storeli.w r3, -720(r30)
0002c4  e301effb  loadli.w r3,  -528(r30)
0002c8  e7423ffa  storeli.w r3, -724(r30)
0002cc  e341effb  loadli.w r3,  -524(r30)
0002d0  e7023ffa  storeli.w r3, -728(r30)
0002d4  e301fffb  loadli.w r3,  -520(r30)
0002d8  67423ffa  storeli.w r3, -732(r30)
0002dc  e34dfffb  loadli.w r27,  -516(r30)
0002e0  46104fe2  vstore_mask16.mz vr4{mr1}, 1792(r30)
0002e4  00a00000  mfence { lm }
0002e8  e3010b00  loadli.w r3,  0(r22)
0002ec  e3420b00  loadli.w r5,  4(r22)
0002f0  63031b00  loadli.w r6,  8(r22)
0002f4  e3431b00  loadli.w r7,  12(r22)
0002f8  63042b00  loadli.w r8,  16(r22)
0002fc  e3452b00  loadli.w r11,  20(r22)
000300  63063b00  loadli.w r12,  24(r22)
000304  e3463b00  loadli.w r13,  28(r22)
000308  63074b00  loadli.w r14,  32(r22)
00030c  e3474b00  loadli.w r15,  36(r22)
000310  e3095b00  loadli.w r19,  40(r22)
000314  634a5b00  loadli.w r20,  44(r22)
000318  630c6b00  loadli.w r24,  48(r22)
00031c  e34c6b00  loadli.w r25,  52(r22)
000320  630d7b00  loadli.w r26,  56(r22)
000324  e34a7b00  loadli.w r21,  60(r22)
000328  8f810100  exp.f.rn r3, r3
00032c  8f820200  exp.f.rn r5, r5
000330  0f030300  exp.f.rn r6, r6
000334  8f830300  exp.f.rn r7, r7
000338  0f040400  exp.f.rn r8, r8
00033c  8f850500  exp.f.rn r11, r11
000340  0f060600  exp.f.rn r12, r12
000344  8f860600  exp.f.rn r13, r13
000348  0f070700  exp.f.rn r14, r14
00034c  8f870700  exp.f.rn r15, r15
000350  8f890900  exp.f.rn r19, r19
000354  0f0a0a00  exp.f.rn r20, r20
000358  0f0c0c00  exp.f.rn r24, r24
00035c  8f8c0c00  exp.f.rn r25, r25
000360  0f0d0d00  exp.f.rn r26, r26
000364  8f8a0a00  exp.f.rn r21, r21
000368  67003b00  storeli.w r3, 0(r22)
00036c  67405b00  storeli.w r5, 4(r22)
000370  e7006b00  storeli.w r6, 8(r22)
000374  e7407b00  storeli.w r7, 12(r22)
000378  67018b00  storeli.w r8, 16(r22)
00037c  6741bb00  storeli.w r11, 20(r22)
000380  e701cb00  storeli.w r12, 24(r22)
000384  e741db00  storeli.w r13, 28(r22)
000388  6702eb00  storeli.w r14, 32(r22)
00038c  6742fb00  storeli.w r15, 36(r22)
000390  e7023b01  storeli.w r19, 40(r22)
000394  e7424b01  storeli.w r20, 44(r22)
000398  67038b01  storeli.w r24, 48(r22)
00039c  67439b01  storeli.w r25, 52(r22)
0003a0  e703ab01  storeli.w r26, 56(r22)
0003a4  e7435b01  storeli.w r21, 60(r22)
0003a8  00a00000  mfence { lm }
0003ac  ab01803f  lui r3, 260096
0003b0  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
0003b4  12934102  vadd.f.mz.rn vr6{mr1}, r3, vr4
0003b8  fa120340  vextracti.f r5, 0(vr6)
0003bc  7a131340  vextracti.f r6, 1(vr6)
0003c0  1f140000  addli r8, zero, 1
0003c4  fa932240  vextracti.f r7, 2(vr5)
0003c8  1f2c0000  addli r24, zero, 2
0003cc  fa910240  vextracti.f r3, 0(vr5)
0003d0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0003d4  7e0104e0  vmmov mr2, r8
0003d8  1f240000  addli r8, zero, 2
0003dc  8f815118  div.f.rn r3, r3, r5
0003e0  fa921240  vextracti.f r5, 1(vr5)
0003e4  8f826218  div.f.rn r5, r5, r6
0003e8  7a132340  vextracti.f r6, 2(vr6)
0003ec  0f836318  div.f.rn r6, r7, r6
0003f0  fa133340  vextracti.f r7, 3(vr6)
0003f4  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0003f8  fa913240  vextracti.f r3, 3(vr5)
0003fc  7e0104e0  vmmov mr2, r8
000400  1f440000  addli r8, zero, 4
000404  8f817118  div.f.rn r3, r3, r7
000408  fa134340  vextracti.f r7, 4(vr6)
00040c  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
000410  fa924240  vextracti.f r5, 4(vr5)
000414  7e0104e0  vmmov mr2, r8
000418  1f041000  addli r8, zero, 8
00041c  8f827218  div.f.rn r5, r5, r7
000420  fa135340  vextracti.f r7, 5(vr6)
000424  6a224334  vor.u.mh vr4{mr2}, r6, vr4
000428  7a935240  vextracti.f r6, 5(vr5)
00042c  7e0104e0  vmmov mr2, r8
000430  1f042000  addli r8, zero, 16
000434  0f037318  div.f.rn r6, r6, r7
000438  fa136340  vextracti.f r7, 6(vr6)
00043c  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
000440  fa916240  vextracti.f r3, 6(vr5)
000444  7e0104e0  vmmov mr2, r8
000448  1f044000  addli r8, zero, 32
00044c  8f817118  div.f.rn r3, r3, r7
000450  fa137340  vextracti.f r7, 7(vr6)
000454  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
000458  fa927240  vextracti.f r5, 7(vr5)
00045c  7e0104e0  vmmov mr2, r8
000460  1f048000  addli r8, zero, 64
000464  8f827218  div.f.rn r5, r5, r7
000468  fa138340  vextracti.f r7, 8(vr6)
00046c  6a224334  vor.u.mh vr4{mr2}, r6, vr4
000470  7a938240  vextracti.f r6, 8(vr5)
000474  7e0104e0  vmmov mr2, r8
000478  1f040001  addli r8, zero, 128
00047c  0f037318  div.f.rn r6, r6, r7
000480  fa139340  vextracti.f r7, 9(vr6)
000484  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
000488  fa919240  vextracti.f r3, 9(vr5)
00048c  7e0104e0  vmmov mr2, r8
000490  1f040002  addli r8, zero, 256
000494  8f817118  div.f.rn r3, r3, r7
000498  fa13a340  vextracti.f r7, 10(vr6)
00049c  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
0004a0  fa92a240  vextracti.f r5, 10(vr5)
0004a4  7e0104e0  vmmov mr2, r8
0004a8  1f040004  addli r8, zero, 512
0004ac  8f827218  div.f.rn r5, r5, r7
0004b0  fa13b340  vextracti.f r7, 11(vr6)
0004b4  6a224334  vor.u.mh vr4{mr2}, r6, vr4
0004b8  7a93b240  vextracti.f r6, 11(vr5)
0004bc  7e0104e0  vmmov mr2, r8
0004c0  1f040008  addli r8, zero, 1024
0004c4  0f037318  div.f.rn r6, r6, r7
0004c8  fa13c340  vextracti.f r7, 12(vr6)
0004cc  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0004d0  fa91c240  vextracti.f r3, 12(vr5)
0004d4  7e0104e0  vmmov mr2, r8
0004d8  1f040010  addli r8, zero, 2048
0004dc  8f817118  div.f.rn r3, r3, r7
0004e0  fa13d340  vextracti.f r7, 13(vr6)
0004e4  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
0004e8  fa92d240  vextracti.f r5, 13(vr5)
0004ec  7e0104e0  vmmov mr2, r8
0004f0  1f040020  addli r8, zero, 4096
0004f4  8f827218  div.f.rn r5, r5, r7
0004f8  fa13e340  vextracti.f r7, 14(vr6)
0004fc  6a224334  vor.u.mh vr4{mr2}, r6, vr4
000500  7a93e240  vextracti.f r6, 14(vr5)
000504  7e0104e0  vmmov mr2, r8
000508  1f040040  addli r8, zero, 8192
00050c  0f037318  div.f.rn r6, r6, r7
000510  fa13f340  vextracti.f r7, 15(vr6)
000514  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
000518  fa91f240  vextracti.f r3, 15(vr5)
00051c  7e0104e0  vmmov mr2, r8
000520  8f817118  div.f.rn r3, r3, r7
000524  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
000528  6a224336  vor.u.mh vr4{mr3}, r6, vr4
00052c  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
000530  3b841b03  bneq r23, r17, 1280
000534  9f410000  addli r3, zero, 4
000538  3b341203  bneq r4, r17, 1292
00053c  1f071000  addli r14, zero, 8
000540  3be41403  bneq r9, r17, 1304
000544  9f072000  addli r15, zero, 16
000548  bb141103  bneq r2, r17, 1316
00054c  1f064000  addli r12, zero, 32
000550  37c01001  beq r1, r17, 16
000554  97822001  and r5, r1, r18
000558  93025804  setlt.u r5, r16, r5
00055c  1bb65200  slli r12, r5, 5
000560  e3024ffa  loadli.w r5,  -736(r30)
000564  1f0a8000  addli r20, zero, 64
000568  37d01201  beq r5, r17, 20
00056c  e3024ffa  loadli.w r5,  -736(r30)
000570  97822201  and r5, r5, r18
000574  93025804  setlt.u r5, r16, r5
000578  1bba6200  slli r20, r5, 6
00057c  9f0c0001  addli r25, zero, 128
000580  37401e01  beq r28, r17, 16
000584  97022e01  and r5, r28, r18
000588  93025804  setlt.u r5, r16, r5
00058c  9bbc7200  slli r25, r5, 7
000590  e3427ffa  loadli.w r5,  -708(r30)
000594  9f090002  addli r19, zero, 256
000598  37d01201  beq r5, r17, 20
00059c  e3427ffa  loadli.w r5,  -708(r30)
0005a0  97822201  and r5, r5, r18
0005a4  93025804  setlt.u r5, r16, r5
0005a8  9bb98200  slli r19, r5, 8
0005ac  e3027ffa  loadli.w r5,  -712(r30)
0005b0  1f0d0004  addli r26, zero, 512
0005b4  37d01201  beq r5, r17, 20
0005b8  e3027ffa  loadli.w r5,  -712(r30)
0005bc  97822201  and r5, r5, r18
0005c0  93025804  setlt.u r5, r16, r5
0005c4  1bbd9200  slli r26, r5, 9
0005c8  63436ffa  loadli.w r6,  -716(r30)
0005cc  9f020008  addli r5, zero, 1024
0005d0  37501301  beq r6, r17, 20
0005d4  e3426ffa  loadli.w r5,  -716(r30)
0005d8  97822201  and r5, r5, r18
0005dc  93025804  setlt.u r5, r16, r5
0005e0  9bb2a200  slli r5, r5, 10
0005e4  e3036ffa  loadli.w r7,  -720(r30)
0005e8  1f030010  addli r6, zero, 2048
0005ec  37d01301  beq r7, r17, 20
0005f0  63036ffa  loadli.w r6,  -720(r30)
0005f4  17032301  and r6, r6, r18
0005f8  13036804  setlt.u r6, r16, r6
0005fc  1b33b300  slli r6, r6, 11
000600  63445ffa  loadli.w r8,  -724(r30)
000604  9f030020  addli r7, zero, 4096
000608  37501401  beq r8, r17, 20
00060c  e3435ffa  loadli.w r7,  -724(r30)
000610  97832301  and r7, r7, r18
000614  93037804  setlt.u r7, r16, r7
000618  9bb3c300  slli r7, r7, 12
00061c  e3055ffa  loadli.w r11,  -728(r30)
000620  1f040040  addli r8, zero, 8192
000624  37d01501  beq r11, r17, 20
000628  63045ffa  loadli.w r8,  -728(r30)
00062c  17042401  and r8, r8, r18
000630  13048804  setlt.u r8, r16, r8
000634  1b34d400  slli r8, r8, 13
000638  e3464ffa  loadli.w r13,  -732(r30)
00063c  ab450000  lui r11, 4
000640  37d01601  beq r13, r17, 20
000644  e3454ffa  loadli.w r11,  -732(r30)
000648  97852501  and r11, r11, r18
00064c  9305b804  setlt.u r11, r16, r11
000650  9bb5e500  slli r11, r11, 14
000654  ab860000  lui r13, 8
000658  37c01d01  beq r27, r17, 16
00065c  97862d01  and r13, r27, r18
000660  9306d804  setlt.u r13, r16, r13
000664  9bb6f600  slli r13, r13, 15
000668  970a2501  and r21, r10, r18
00066c  130b1501  seteq r22, r10, r17
000670  938b0b01  seteq r23, r23, r16
000674  13020201  seteq r4, r4, r16
000678  13050501  seteq r10, r10, r16
00067c  93840401  seteq r9, r9, r16
000680  13010101  seteq r2, r2, r16
000684  93800001  seteq r1, r1, r16
000688  930a5805  setlt.u r21, r16, r21
00068c  1b322200  slli r4, r4, 2
000690  9bb43400  slli r9, r9, 3
000694  1b314100  slli r2, r2, 4
000698  9bb05000  slli r1, r1, 5
00069c  971a5b01  or r21, r22, r21
0006a0  1bbb1b00  slli r22, r23, 1
0006a4  1715ab00  or r10, r22, r10
0006a8  971a5c01  or r21, r24, r21
0006ac  138b0d01  seteq r22, r27, r16
0006b0  17124500  or r4, r10, r4
0006b4  97913a00  or r3, r21, r3
0006b8  63057ffa  loadli.w r10,  -712(r30)
0006bc  e34a4ffa  loadli.w r21,  -732(r30)
0006c0  17129200  or r4, r4, r9
0006c4  9791e100  or r3, r3, r14
0006c8  e3447ffa  loadli.w r9,  -708(r30)
0006cc  63076ffa  loadli.w r14,  -720(r30)
0006d0  13050501  seteq r10, r10, r16
0006d4  938a0a01  seteq r21, r21, r16
0006d8  17112200  or r2, r4, r2
0006dc  9791f100  or r3, r3, r15
0006e0  13020e01  seteq r4, r28, r16
0006e4  e3475ffa  loadli.w r15,  -724(r30)
0006e8  93840401  seteq r9, r9, r16
0006ec  13070701  seteq r14, r14, r16
0006f0  97101100  or r1, r2, r1
0006f4  63014ffa  loadli.w r2,  -736(r30)
0006f8  9791c100  or r3, r3, r12
0006fc  63466ffa  loadli.w r12,  -716(r30)
000700  93870701  seteq r15, r15, r16
000704  97914101  or r3, r3, r20
000708  630a5ffa  loadli.w r20,  -728(r30)
00070c  13010101  seteq r2, r2, r16
000710  13060601  seteq r12, r12, r16
000714  97919101  or r3, r3, r25
000718  130a0a01  seteq r20, r20, r16
00071c  97913101  or r3, r3, r19
000720  9791a101  or r3, r3, r26
000724  1b316100  slli r2, r2, 6
000728  97915100  or r3, r3, r5
00072c  97902000  or r1, r1, r2
000730  1b317200  slli r2, r4, 7
000734  97916100  or r3, r3, r6
000738  2b720000  lui r4, 7
00073c  97902000  or r1, r1, r2
000740  1bb18400  slli r2, r9, 8
000744  97917100  or r3, r3, r7
000748  9b12f2ff  ori r5, r4, 4095
00074c  97902000  or r1, r1, r2
000750  1b319500  slli r2, r10, 9
000754  97918100  or r3, r3, r8
000758  97902000  or r1, r1, r2
00075c  1b31a600  slli r2, r12, 10
000760  9791b100  or r3, r3, r11
000764  97902000  or r1, r1, r2
000768  1b31b700  slli r2, r14, 11
00076c  9791d100  or r3, r3, r13
000770  97902000  or r1, r1, r2
000774  1bb1c700  slli r2, r15, 12
000778  7e8101e0  vmmov mr2, r3
00077c  6e922034  vor.f.mh vr4{mr2}, vr1, vr2
000780  97902000  or r1, r1, r2
000784  1b31da00  slli r2, r20, 13
000788  97902000  or r1, r1, r2
00078c  1bb1ea00  slli r2, r21, 14
000790  97902000  or r1, r1, r2
000794  1b31fb00  slli r2, r22, 15
000798  97902000  or r1, r1, r2
00079c  7e8100e0  vmmov mr2, r1
0007a0  6e923034  vor.f.mh vr4{mr2}, vr1, vr3
0007a4  46144fc2  vstore_mask16.mz vr4{mr1}, 1600(r30)
0007a8  00a00000  mfence { lm }
0007ac  e3038ffc  loadli.w r7,  -448(r30)
0007b0  63448ffc  loadli.w r8,  -444(r30)
0007b4  63059ffc  loadli.w r10,  -440(r30)
0007b8  63469ffc  loadli.w r12,  -436(r30)
0007bc  6307affc  loadli.w r14,  -432(r30)
0007c0  e349affc  loadli.w r19,  -428(r30)
0007c4  e30abffc  loadli.w r21,  -424(r30)
0007c8  634bbffc  loadli.w r22,  -420(r30)
0007cc  630acffc  loadli.w r20,  -416(r30)
0007d0  e347cffc  loadli.w r15,  -412(r30)
0007d4  e306dffc  loadli.w r13,  -408(r30)
0007d8  e345dffc  loadli.w r11,  -404(r30)
0007dc  e304effc  loadli.w r9,  -400(r30)
0007e0  e341effc  loadli.w r3,  -396(r30)
0007e4  6303fffc  loadli.w r6,  -392(r30)
0007e8  6341fffc  loadli.w r2,  -388(r30)
0007ec  97802301  and r1, r7, r18
0007f0  930b1804  setlt.u r23, r16, r1
0007f4  9b1002fc  ori r1, r4, 4032
0007f8  1f820000  addli r4, r1, 0
0007fc  3be00b00  bneq r23, zero, 24
000800  1bc20301  srli r4, r7, 16
000804  1b021200  andi r4, r4, 1
000808  0b924310  add.s r4, r7, r4
00080c  0b125210  add.s r4, r4, r5
000810  1b420201  srli r4, r4, 16
000814  97032401  and r7, r8, r18
000818  930b7804  setlt.u r23, r16, r7
00081c  9f830000  addli r7, r1, 0
000820  3be00b00  bneq r23, zero, 24
000824  9b430401  srli r7, r8, 16
000828  9b831300  andi r7, r7, 1
00082c  8b137410  add.s r7, r8, r7
000830  8b935310  add.s r7, r7, r5
000834  9bc30301  srli r7, r7, 16
000838  17042501  and r8, r10, r18
00083c  930b8804  setlt.u r23, r16, r8
000840  1f840000  addli r8, r1, 0
000844  3be00b00  bneq r23, zero, 24
000848  1b440501  srli r8, r10, 16
00084c  1b041400  andi r8, r8, 1
000850  0b148510  add.s r8, r10, r8
000854  0b145410  add.s r8, r8, r5
000858  1b440401  srli r8, r8, 16
00085c  17052601  and r10, r12, r18
000860  930ba804  setlt.u r23, r16, r10
000864  1f850000  addli r10, r1, 0
000868  3be00b00  bneq r23, zero, 24
00086c  1b450601  srli r10, r12, 16
000870  1b051500  andi r10, r10, 1
000874  0b15a610  add.s r10, r12, r10
000878  0b155510  add.s r10, r10, r5
00087c  1b450501  srli r10, r10, 16
000880  17062701  and r12, r14, r18
000884  930bc804  setlt.u r23, r16, r12
000888  1f860000  addli r12, r1, 0
00088c  3be00b00  bneq r23, zero, 24
000890  1b460701  srli r12, r14, 16
000894  1b061600  andi r12, r12, 1
000898  0b16c710  add.s r12, r14, r12
00089c  0b165610  add.s r12, r12, r5
0008a0  1b460601  srli r12, r12, 16
0008a4  17872901  and r14, r19, r18
0008a8  930be804  setlt.u r23, r16, r14
0008ac  1f870000  addli r14, r1, 0
0008b0  3be00b00  bneq r23, zero, 24
0008b4  1bc70901  srli r14, r19, 16
0008b8  1b071700  andi r14, r14, 1
0008bc  0b97e910  add.s r14, r19, r14
0008c0  0b175710  add.s r14, r14, r5
0008c4  1b470701  srli r14, r14, 16
0008c8  97892a01  and r19, r21, r18
0008cc  930b3805  setlt.u r23, r16, r19
0008d0  9f890000  addli r19, r1, 0
0008d4  3be00b00  bneq r23, zero, 24
0008d8  9bc90a01  srli r19, r21, 16
0008dc  9b891900  andi r19, r19, 1
0008e0  8b993a11  add.s r19, r21, r19
0008e4  8b995910  add.s r19, r19, r5
0008e8  9bc90901  srli r19, r19, 16
0008ec  970a2b01  and r21, r22, r18
0008f0  930b5805  setlt.u r23, r16, r21
0008f4  9f8a0000  addli r21, r1, 0
0008f8  3be00b00  bneq r23, zero, 24
0008fc  9b4a0b01  srli r21, r22, 16
000900  9b8a1a00  andi r21, r21, 1
000904  8b1a5b11  add.s r21, r22, r21
000908  8b9a5a10  add.s r21, r21, r5
00090c  9bca0a01  srli r21, r21, 16
000910  170b2a01  and r22, r20, r18
000914  930b6805  setlt.u r23, r16, r22
000918  1f8b0000  addli r22, r1, 0
00091c  3be00b00  bneq r23, zero, 24
000920  1b4b0a01  srli r22, r20, 16
000924  1b0b1b00  andi r22, r22, 1
000928  0b1a6a11  add.s r20, r20, r22
00092c  0b1a5a10  add.s r20, r20, r5
000930  1b4b0a01  srli r22, r20, 16
000934  178a2701  and r20, r15, r18
000938  930b4805  setlt.u r23, r16, r20
00093c  1f8a0000  addli r20, r1, 0
000940  3be00b00  bneq r23, zero, 24
000944  1bca0701  srli r20, r15, 16
000948  1b0a1a00  andi r20, r20, 1
00094c  8b974711  add.s r15, r15, r20
000950  8b975710  add.s r15, r15, r5
000954  1bca0701  srli r20, r15, 16
000958  97872601  and r15, r13, r18
00095c  930bf804  setlt.u r23, r16, r15
000960  9f870000  addli r15, r1, 0
000964  3be00b00  bneq r23, zero, 24
000968  9bc70601  srli r15, r13, 16
00096c  9b871700  andi r15, r15, 1
000970  8b96f610  add.s r13, r13, r15
000974  8b965610  add.s r13, r13, r5
000978  9bc70601  srli r15, r13, 16
00097c  97862501  and r13, r11, r18
000980  930bd804  setlt.u r23, r16, r13
000984  9f860000  addli r13, r1, 0
000988  3be00b00  bneq r23, zero, 24
00098c  9bc60501  srli r13, r11, 16
000990  9b861600  andi r13, r13, 1
000994  8b95d510  add.s r11, r11, r13
000998  8b955510  add.s r11, r11, r5
00099c  9bc60501  srli r13, r11, 16
0009a0  97852401  and r11, r9, r18
0009a4  930bb804  setlt.u r23, r16, r11
0009a8  9f850000  addli r11, r1, 0
0009ac  3be00b00  bneq r23, zero, 24
0009b0  9bc50401  srli r11, r9, 16
0009b4  9b851500  andi r11, r11, 1
0009b8  8b94b410  add.s r9, r9, r11
0009bc  8b945410  add.s r9, r9, r5
0009c0  9bc50401  srli r11, r9, 16
0009c4  97842101  and r9, r3, r18
0009c8  930b9804  setlt.u r23, r16, r9
0009cc  9f840000  addli r9, r1, 0
0009d0  3be00b00  bneq r23, zero, 24
0009d4  9bc40101  srli r9, r3, 16
0009d8  9b841400  andi r9, r9, 1
0009dc  8b919110  add.s r3, r3, r9
0009e0  8b915110  add.s r3, r3, r5
0009e4  9bc40101  srli r9, r3, 16
0009e8  97012301  and r3, r6, r18
0009ec  930b3804  setlt.u r23, r16, r3
0009f0  9f810000  addli r3, r1, 0
0009f4  3be00b00  bneq r23, zero, 24
0009f8  9b410301  srli r3, r6, 16
0009fc  9b811100  andi r3, r3, 1
000a00  8b113310  add.s r3, r6, r3
000a04  8b915110  add.s r3, r3, r5
000a08  9bc10101  srli r3, r3, 16
000a0c  17032101  and r6, r2, r18
000a10  13036804  setlt.u r6, r16, r6
000a14  3b7f03fa  bneq r6, zero, -2084
000a18  9b400101  srli r1, r2, 16
000a1c  9b801000  andi r1, r1, 1
000a20  8b101110  add.s r1, r2, r1
000a24  8b905010  add.s r1, r1, r5
000a28  9bc00001  srli r1, r1, 16
000a2c  dbf8feff  j -2108
000a30  97812b01  and r3, r23, r18
000a34  93013804  setlt.u r3, r16, r3
000a38  1bbc1100  slli r24, r3, 1
000a3c  9f410000  addli r3, zero, 4
000a40  b77b12fd  beq r4, r17, -1284
000a44  97012201  and r3, r4, r18
000a48  93013804  setlt.u r3, r16, r3
000a4c  9bb12100  slli r3, r3, 2
000a50  1f071000  addli r14, zero, 8
000a54  b7cb14fd  beq r9, r17, -1296
000a58  97822401  and r5, r9, r18
000a5c  93025804  setlt.u r5, r16, r5
000a60  1bb73200  slli r14, r5, 3
000a64  9f072000  addli r15, zero, 16
000a68  b71b11fd  beq r2, r17, -1308
000a6c  97022101  and r5, r2, r18
000a70  93025804  setlt.u r5, r16, r5
000a74  9bb74200  slli r15, r5, 4
000a78  1f064000  addli r12, zero, 32
000a7c  3beb10fd  bneq r1, r17, -1320
000a80  5b5cffff  j -1312
000a84  9f0e8ff9  addli sp, r30, -832
000a88  9f8e8e06  addli sp, sp, 832
000a8c  00a00300  mfence { lm, sm, gm }
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
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
