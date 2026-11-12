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
0000dc  9f8e8eee  addli sp, sp, -2240
0000e0  1f8f0e11  addli r30, sp, 2176
0000e4  63412f00  loadli.w r2,  20(r30)
0000e8  e3002f00  loadli.w r1,  16(r30)
0000ec  e3013f00  loadli.w r3,  24(r30)
0000f0  8b101120  mul.s r1, r2, r1
0000f4  00510002  load_param_i r2, 0
0000f8  8b903020  mul.s r1, r1, r3
0000fc  674c1fee  storeli.w r1, -2108(r30)
000100  4bb62004  ble.s r1, r2, 2444
000104  80300002  core_id r1
000108  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00010c  ab07807f  lui r15, 522240
000110  80d10002  load_param_i r3, 1
000114  eeb01062  vxor.s.mz vr1{mr1}, vr1, vr1
000118  9bb07000  slli r1, r1, 7
00011c  ea910722  vor.f.mz vr3{mr1}, r15, vr0
000120  670c3fee  storeli.w r3, -2112(r30)
000124  e74b1fee  storeli.w r1, -2116(r30)
000128  abf0ff7f  lui r1, 524287
00012c  9b98f0ff  ori r17, r1, 4095
000130  ab00c07f  lui r1, 523264
000134  6a910022  vor.f.mz vr2{mr1}, r1, vr0
000138  ab400000  lui r1, 4
00013c  fe8100e0  vmmov mr3, r1
000140  ab800000  lui r1, 8
000144  7e8000e0  vmmov mr0, r1
000148  db090000  j 76
00014c  1f029fef  addli r4, r30, -2104
000150  9f100000  addli r1, zero, 1
000154  6b510200  load.d r[3:4], 0(r4)
000158  6b528f00  load.d r[5:6], 8(r30)
00015c  97301102  sll.d r[2:3], r[3:4], r1
000160  ab0100f0  lui r3, 983040
000164  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000168  1f020002  addli r4, zero, 256
00016c  97113200  or r3, r4, r3
000170  1f020ffc  addli r4, r30, -512
000174  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000178  6341afef  loadli.w r2,  -2092(r30)
00017c  e3008fef  loadli.w r1,  -2112(r30)
000180  00a00000  mfence { lm }
000184  0b111110  add.s r2, r2, r1
000188  e3408fef  loadli.w r1,  -2108(r30)
00018c  3f201100  blt.s r2, r1, 8
000190  db1f0100  j 2300
000194  e3003f00  loadli.w r1,  24(r30)
000198  674d2fee  storeli.w r2, -2092(r30)
00019c  1f029fef  addli r4, r30, -2104
0001a0  1f030ff0  addli r6, r30, -2048
0001a4  9f0c0000  addli r25, zero, 0
0001a8  8b101130  div.s r1, r2, r1
0001ac  63412f00  loadli.w r2,  20(r30)
0001b0  8b902030  div.s r1, r1, r2
0001b4  63417fef  loadli.w r2,  -2116(r30)
0001b8  9bb0d000  slli r1, r1, 13
0001bc  8b902010  add.s r1, r1, r2
0001c0  33910028  sext_int2long r[3:4], r1
0001c4  9f200000  addli r1, zero, 2
0001c8  73302200  store.d r[3:4], 0(r4)
0001cc  6b520f00  load.d r[5:6], 0(r30)
0001d0  97301102  sll.d r[2:3], r[3:4], r1
0001d4  ab0100f0  lui r3, 983040
0001d8  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0001dc  1f020004  addli r4, zero, 512
0001e0  97113200  or r3, r4, r3
0001e4  ffa16000  l_gm2lm r3, r6, 0(r[2:3])
0001e8  00a00000  mfence { lm }
0001ec  db0c0000  j 100
0001f0  1f010ffc  addli r2, r30, -512
0001f4  0b119111  add.s r2, r2, r25
0001f8  9f8c4c00  addli r25, r25, 32
0001fc  731f1100  store.h r1, 30(r2)
000200  73104100  store.h r4, 0(r2)
000204  73117100  store.h r7, 2(r2)
000208  73128100  store.h r8, 4(r2)
00020c  7313a100  store.h r10, 6(r2)
000210  7314c100  store.h r12, 8(r2)
000214  7315e100  store.h r14, 10(r2)
000218  73163101  store.h r19, 12(r2)
00021c  73175101  store.h r21, 14(r2)
000220  73186101  store.h r22, 16(r2)
000224  73194101  store.h r20, 18(r2)
000228  731a2101  store.h r18, 20(r2)
00022c  731bd100  store.h r13, 22(r2)
000230  731cb100  store.h r11, 24(r2)
000234  731d9100  store.h r9, 26(r2)
000238  731e3100  store.h r3, 28(r2)
00023c  9f000002  addli r1, zero, 256
000240  00a00000  mfence { lm }
000244  6303bfef  loadli.w r6,  -2088(r30)
000248  1f038300  addli r6, r6, 64
00024c  378c1cfe  beq r25, r1, -256
000250  c2120302  vload_mask16.mz vr5{mr1}, 0(r6)
000254  9f000ff4  addli r1, r30, -1536
000258  e70d6fee  storeli.w r6, -2088(r30)
00025c  1f0e0ffe  addli r28, r30, -256
000260  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000264  00a00000  mfence { lm }
000268  1a125002  vsub.f.mz.rn vr4{mr1}, zero, vr5
00026c  63050ff4  loadli.w r10,  -1536(r30)
000270  634b0ff4  loadli.w r22,  -1532(r30)
000274  63021ff4  loadli.w r4,  -1528(r30)
000278  e3441ff4  loadli.w r9,  -1524(r30)
00027c  63012ff4  loadli.w r2,  -1520(r30)
000280  63482ff4  loadli.w r16,  -1516(r30)
000284  e3013ff4  loadli.w r3,  -1512(r30)
000288  e74f3fee  storeli.w r3, -2052(r30)
00028c  e3413ff4  loadli.w r3,  -1508(r30)
000290  e70f3fee  storeli.w r3, -2056(r30)
000294  e3014ff4  loadli.w r3,  -1504(r30)
000298  674f3fee  storeli.w r3, -2060(r30)
00029c  e3414ff4  loadli.w r3,  -1500(r30)
0002a0  670f3fee  storeli.w r3, -2064(r30)
0002a4  e3015ff4  loadli.w r3,  -1496(r30)
0002a8  e74e3fee  storeli.w r3, -2068(r30)
0002ac  e3415ff4  loadli.w r3,  -1492(r30)
0002b0  e70e3fee  storeli.w r3, -2072(r30)
0002b4  e3016ff4  loadli.w r3,  -1488(r30)
0002b8  674e3fee  storeli.w r3, -2076(r30)
0002bc  e3416ff4  loadli.w r3,  -1484(r30)
0002c0  670e3fee  storeli.w r3, -2080(r30)
0002c4  e3017ff4  loadli.w r3,  -1480(r30)
0002c8  e74d3fee  storeli.w r3, -2084(r30)
0002cc  e3407ff4  loadli.w r1,  -1476(r30)
0002d0  46104fe2  vstore_mask16.mz vr4{mr1}, 1792(r30)
0002d4  00a00000  mfence { lm }
0002d8  e3010e00  loadli.w r3,  0(r28)
0002dc  e3420e00  loadli.w r5,  4(r28)
0002e0  63031e00  loadli.w r6,  8(r28)
0002e4  e3431e00  loadli.w r7,  12(r28)
0002e8  63042e00  loadli.w r8,  16(r28)
0002ec  e3452e00  loadli.w r11,  20(r28)
0002f0  63063e00  loadli.w r12,  24(r28)
0002f4  e3463e00  loadli.w r13,  28(r28)
0002f8  63074e00  loadli.w r14,  32(r28)
0002fc  63494e00  loadli.w r18,  36(r28)
000300  e3095e00  loadli.w r19,  40(r28)
000304  634a5e00  loadli.w r20,  44(r28)
000308  e30a6e00  loadli.w r21,  48(r28)
00030c  e34b6e00  loadli.w r23,  52(r28)
000310  630d7e00  loadli.w r26,  56(r28)
000314  e34d7e00  loadli.w r27,  60(r28)
000318  8f810100  exp.f.rn r3, r3
00031c  8f820200  exp.f.rn r5, r5
000320  0f030300  exp.f.rn r6, r6
000324  8f830300  exp.f.rn r7, r7
000328  0f040400  exp.f.rn r8, r8
00032c  8f850500  exp.f.rn r11, r11
000330  0f060600  exp.f.rn r12, r12
000334  8f860600  exp.f.rn r13, r13
000338  0f070700  exp.f.rn r14, r14
00033c  0f090900  exp.f.rn r18, r18
000340  8f890900  exp.f.rn r19, r19
000344  0f0a0a00  exp.f.rn r20, r20
000348  8f8a0a00  exp.f.rn r21, r21
00034c  8f8b0b00  exp.f.rn r23, r23
000350  0f0d0d00  exp.f.rn r26, r26
000354  8f8d0d00  exp.f.rn r27, r27
000358  67003e00  storeli.w r3, 0(r28)
00035c  67405e00  storeli.w r5, 4(r28)
000360  e7006e00  storeli.w r6, 8(r28)
000364  e7407e00  storeli.w r7, 12(r28)
000368  67018e00  storeli.w r8, 16(r28)
00036c  6741be00  storeli.w r11, 20(r28)
000370  e701ce00  storeli.w r12, 24(r28)
000374  e741de00  storeli.w r13, 28(r28)
000378  6702ee00  storeli.w r14, 32(r28)
00037c  67422e01  storeli.w r18, 36(r28)
000380  e7023e01  storeli.w r19, 40(r28)
000384  e7424e01  storeli.w r20, 44(r28)
000388  67035e01  storeli.w r21, 48(r28)
00038c  67437e01  storeli.w r23, 52(r28)
000390  e703ae01  storeli.w r26, 56(r28)
000394  e743be01  storeli.w r27, 60(r28)
000398  00a00000  mfence { lm }
00039c  ab01803f  lui r3, 260096
0003a0  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
0003a4  12934102  vadd.f.mz.rn vr6{mr1}, r3, vr4
0003a8  fa920240  vextracti.f r5, 0(vr5)
0003ac  7a931240  vextracti.f r6, 1(vr5)
0003b0  1f140000  addli r8, zero, 1
0003b4  fa132340  vextracti.f r7, 2(vr6)
0003b8  9f2b0000  addli r23, zero, 2
0003bc  ab0d80ff  lui r27, 1046528
0003c0  fa110340  vextracti.f r3, 0(vr6)
0003c4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0003c8  7e0104e0  vmmov mr2, r8
0003cc  1f240000  addli r8, zero, 2
0003d0  8f813218  div.f.rn r3, r5, r3
0003d4  fa121340  vextracti.f r5, 1(vr6)
0003d8  8f025318  div.f.rn r5, r6, r5
0003dc  7a932240  vextracti.f r6, 2(vr5)
0003e0  0f037318  div.f.rn r6, r6, r7
0003e4  fa933240  vextracti.f r7, 3(vr5)
0003e8  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0003ec  fa113340  vextracti.f r3, 3(vr6)
0003f0  7e0104e0  vmmov mr2, r8
0003f4  1f440000  addli r8, zero, 4
0003f8  8f813318  div.f.rn r3, r7, r3
0003fc  fa934240  vextracti.f r7, 4(vr5)
000400  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
000404  fa124340  vextracti.f r5, 4(vr6)
000408  7e0104e0  vmmov mr2, r8
00040c  1f041000  addli r8, zero, 8
000410  8f825318  div.f.rn r5, r7, r5
000414  fa935240  vextracti.f r7, 5(vr5)
000418  6a224334  vor.u.mh vr4{mr2}, r6, vr4
00041c  7a135340  vextracti.f r6, 5(vr6)
000420  7e0104e0  vmmov mr2, r8
000424  1f042000  addli r8, zero, 16
000428  0f836318  div.f.rn r6, r7, r6
00042c  fa936240  vextracti.f r7, 6(vr5)
000430  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
000434  fa116340  vextracti.f r3, 6(vr6)
000438  7e0104e0  vmmov mr2, r8
00043c  1f044000  addli r8, zero, 32
000440  8f813318  div.f.rn r3, r7, r3
000444  fa937240  vextracti.f r7, 7(vr5)
000448  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
00044c  fa127340  vextracti.f r5, 7(vr6)
000450  7e0104e0  vmmov mr2, r8
000454  1f048000  addli r8, zero, 64
000458  8f825318  div.f.rn r5, r7, r5
00045c  fa938240  vextracti.f r7, 8(vr5)
000460  6a224334  vor.u.mh vr4{mr2}, r6, vr4
000464  7a138340  vextracti.f r6, 8(vr6)
000468  7e0104e0  vmmov mr2, r8
00046c  1f040001  addli r8, zero, 128
000470  0f836318  div.f.rn r6, r7, r6
000474  fa939240  vextracti.f r7, 9(vr5)
000478  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
00047c  fa119340  vextracti.f r3, 9(vr6)
000480  7e0104e0  vmmov mr2, r8
000484  1f040002  addli r8, zero, 256
000488  8f813318  div.f.rn r3, r7, r3
00048c  fa93a240  vextracti.f r7, 10(vr5)
000490  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
000494  fa12a340  vextracti.f r5, 10(vr6)
000498  7e0104e0  vmmov mr2, r8
00049c  1f040004  addli r8, zero, 512
0004a0  8f825318  div.f.rn r5, r7, r5
0004a4  fa93b240  vextracti.f r7, 11(vr5)
0004a8  6a224334  vor.u.mh vr4{mr2}, r6, vr4
0004ac  7a13b340  vextracti.f r6, 11(vr6)
0004b0  7e0104e0  vmmov mr2, r8
0004b4  1f040008  addli r8, zero, 1024
0004b8  0f836318  div.f.rn r6, r7, r6
0004bc  fa93c240  vextracti.f r7, 12(vr5)
0004c0  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0004c4  fa11c340  vextracti.f r3, 12(vr6)
0004c8  7e0104e0  vmmov mr2, r8
0004cc  1f040010  addli r8, zero, 2048
0004d0  8f813318  div.f.rn r3, r7, r3
0004d4  fa93d240  vextracti.f r7, 13(vr5)
0004d8  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
0004dc  fa12d340  vextracti.f r5, 13(vr6)
0004e0  7e0104e0  vmmov mr2, r8
0004e4  1f040020  addli r8, zero, 4096
0004e8  8f825318  div.f.rn r5, r7, r5
0004ec  fa93e240  vextracti.f r7, 14(vr5)
0004f0  6a224334  vor.u.mh vr4{mr2}, r6, vr4
0004f4  7a13e340  vextracti.f r6, 14(vr6)
0004f8  7e0104e0  vmmov mr2, r8
0004fc  1f040040  addli r8, zero, 8192
000500  0f836318  div.f.rn r6, r7, r6
000504  fa93f240  vextracti.f r7, 15(vr5)
000508  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
00050c  fa11f340  vextracti.f r3, 15(vr6)
000510  7e0104e0  vmmov mr2, r8
000514  8f813318  div.f.rn r3, r7, r3
000518  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
00051c  6a224336  vor.u.mh vr4{mr3}, r6, vr4
000520  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
000524  3b54bb03  bneq r22, r27, 1300
000528  9f410000  addli r3, zero, 4
00052c  bb04b203  bneq r4, r27, 1312
000530  9f061000  addli r13, zero, 8
000534  bbb4b403  bneq r9, r27, 1324
000538  1f072000  addli r14, zero, 16
00053c  bb64b103  bneq r2, r27, 1336
000540  9f094000  addli r19, zero, 32
000544  3740b801  beq r16, r27, 16
000548  97021801  and r5, r16, r17
00054c  93825704  setlt.u r5, r15, r5
000550  9bb95200  slli r19, r5, 5
000554  e342ffef  loadli.w r5,  -2052(r30)
000558  1f098000  addli r18, zero, 64
00055c  37d0b201  beq r5, r27, 20
000560  e342ffef  loadli.w r5,  -2052(r30)
000564  97821201  and r5, r5, r17
000568  93825704  setlt.u r5, r15, r5
00056c  1bb96200  slli r18, r5, 6
000570  6303ffef  loadli.w r6,  -2056(r30)
000574  9f020001  addli r5, zero, 128
000578  3750b301  beq r6, r27, 20
00057c  e302ffef  loadli.w r5,  -2056(r30)
000580  97821201  and r5, r5, r17
000584  93825704  setlt.u r5, r15, r5
000588  9bb27200  slli r5, r5, 7
00058c  6343efef  loadli.w r6,  -2060(r30)
000590  1f0d0002  addli r26, zero, 256
000594  3750b301  beq r6, r27, 20
000598  6343efef  loadli.w r6,  -2060(r30)
00059c  17031301  and r6, r6, r17
0005a0  13836704  setlt.u r6, r15, r6
0005a4  1b3d8300  slli r26, r6, 8
0005a8  e303efef  loadli.w r7,  -2064(r30)
0005ac  1f030004  addli r6, zero, 512
0005b0  37d0b301  beq r7, r27, 20
0005b4  6303efef  loadli.w r6,  -2064(r30)
0005b8  17031301  and r6, r6, r17
0005bc  13836704  setlt.u r6, r15, r6
0005c0  1b339300  slli r6, r6, 9
0005c4  6344dfef  loadli.w r8,  -2068(r30)
0005c8  9f030008  addli r7, zero, 1024
0005cc  3750b401  beq r8, r27, 20
0005d0  e343dfef  loadli.w r7,  -2068(r30)
0005d4  97831301  and r7, r7, r17
0005d8  93837704  setlt.u r7, r15, r7
0005dc  9bb3a300  slli r7, r7, 10
0005e0  e305dfef  loadli.w r11,  -2072(r30)
0005e4  1f040010  addli r8, zero, 2048
0005e8  37d0b501  beq r11, r27, 20
0005ec  6304dfef  loadli.w r8,  -2072(r30)
0005f0  17041401  and r8, r8, r17
0005f4  13848704  setlt.u r8, r15, r8
0005f8  1b34b400  slli r8, r8, 11
0005fc  6346cfef  loadli.w r12,  -2076(r30)
000600  9f050020  addli r11, zero, 4096
000604  3750b601  beq r12, r27, 20
000608  e345cfef  loadli.w r11,  -2076(r30)
00060c  97851501  and r11, r11, r17
000610  9385b704  setlt.u r11, r15, r11
000614  9bb5c500  slli r11, r11, 12
000618  630acfef  loadli.w r20,  -2080(r30)
00061c  1f060040  addli r12, zero, 8192
000620  3750ba01  beq r20, r27, 20
000624  6306cfef  loadli.w r12,  -2080(r30)
000628  17061601  and r12, r12, r17
00062c  1386c704  setlt.u r12, r15, r12
000630  1b36d600  slli r12, r12, 13
000634  e34abfef  loadli.w r21,  -2084(r30)
000638  2b4a0000  lui r20, 4
00063c  37d0ba01  beq r21, r27, 20
000640  634abfef  loadli.w r20,  -2084(r30)
000644  170a1a01  and r20, r20, r17
000648  138a4705  setlt.u r20, r15, r20
00064c  1b3aea00  slli r20, r20, 14
000650  ab8a0000  lui r21, 8
000654  37c0b001  beq r1, r27, 16
000658  978a1001  and r21, r1, r17
00065c  938a5705  setlt.u r21, r15, r21
000660  9bbafa00  slli r21, r21, 15
000664  970d1501  and r27, r10, r17
000668  1f8c0000  addli r24, r1, 0
00066c  ab0080ff  lui r1, 1046528
000670  130bfb00  seteq r22, r22, r15
000674  1302f200  seteq r4, r4, r15
000678  9384f400  seteq r9, r9, r15
00067c  1301f100  seteq r2, r2, r15
000680  130e1500  seteq r28, r10, r1
000684  938db705  setlt.u r27, r15, r27
000688  1305f500  seteq r10, r10, r15
00068c  9300f800  seteq r1, r16, r15
000690  1b3b1b00  slli r22, r22, 1
000694  1b322200  slli r4, r4, 2
000698  9bb43400  slli r9, r9, 3
00069c  1b314100  slli r2, r2, 4
0006a0  971dbe01  or r27, r28, r27
0006a4  1715ab00  or r10, r22, r10
0006a8  9bb05000  slli r1, r1, 5
0006ac  130bfc00  seteq r22, r24, r15
0006b0  979bbb01  or r23, r23, r27
0006b4  17124500  or r4, r10, r4
0006b8  6345dfef  loadli.w r10,  -2068(r30)
0006bc  97913b00  or r3, r23, r3
0006c0  17129200  or r4, r4, r9
0006c4  e304efef  loadli.w r9,  -2064(r30)
0006c8  1305f500  seteq r10, r10, r15
0006cc  9791d100  or r3, r3, r13
0006d0  17112200  or r2, r4, r2
0006d4  6302ffef  loadli.w r4,  -2056(r30)
0006d8  e306dfef  loadli.w r13,  -2072(r30)
0006dc  9384f400  seteq r9, r9, r15
0006e0  9791e100  or r3, r3, r14
0006e4  97101100  or r1, r2, r1
0006e8  6341ffef  loadli.w r2,  -2052(r30)
0006ec  6347cfef  loadli.w r14,  -2076(r30)
0006f0  1302f200  seteq r4, r4, r15
0006f4  9386f600  seteq r13, r13, r15
0006f8  97913101  or r3, r3, r19
0006fc  e349bfef  loadli.w r19,  -2084(r30)
000700  1301f100  seteq r2, r2, r15
000704  1307f700  seteq r14, r14, r15
000708  97912101  or r3, r3, r18
00070c  6309cfef  loadli.w r18,  -2080(r30)
000710  9389f900  seteq r19, r19, r15
000714  97915100  or r3, r3, r5
000718  e342efef  loadli.w r5,  -2060(r30)
00071c  1309f900  seteq r18, r18, r15
000720  9791a101  or r3, r3, r26
000724  9382f200  seteq r5, r5, r15
000728  1b316100  slli r2, r2, 6
00072c  97916100  or r3, r3, r6
000730  97902000  or r1, r1, r2
000734  1b317200  slli r2, r4, 7
000738  97917100  or r3, r3, r7
00073c  2b720000  lui r4, 7
000740  97902000  or r1, r1, r2
000744  97918100  or r3, r3, r8
000748  1bb18200  slli r2, r5, 8
00074c  9791b100  or r3, r3, r11
000750  9b12f2ff  ori r5, r4, 4095
000754  97902000  or r1, r1, r2
000758  1bb19400  slli r2, r9, 9
00075c  9791c100  or r3, r3, r12
000760  97902000  or r1, r1, r2
000764  1b31a500  slli r2, r10, 10
000768  97914101  or r3, r3, r20
00076c  97902000  or r1, r1, r2
000770  1bb1b600  slli r2, r13, 11
000774  97915101  or r3, r3, r21
000778  97902000  or r1, r1, r2
00077c  1b31c700  slli r2, r14, 12
000780  7e8101e0  vmmov mr2, r3
000784  6e922034  vor.f.mh vr4{mr2}, vr1, vr2
000788  97902000  or r1, r1, r2
00078c  1b31d900  slli r2, r18, 13
000790  97902000  or r1, r1, r2
000794  1bb1e900  slli r2, r19, 14
000798  97902000  or r1, r1, r2
00079c  1b31fb00  slli r2, r22, 15
0007a0  97902000  or r1, r1, r2
0007a4  7e8100e0  vmmov mr2, r1
0007a8  6e923034  vor.f.mh vr4{mr2}, vr1, vr3
0007ac  46104f82  vstore_mask16.mz vr4{mr1}, 1024(r30)
0007b0  00a00000  mfence { lm }
0007b4  e3030ff8  loadli.w r7,  -1024(r30)
0007b8  63440ff8  loadli.w r8,  -1020(r30)
0007bc  63051ff8  loadli.w r10,  -1016(r30)
0007c0  63461ff8  loadli.w r12,  -1012(r30)
0007c4  63072ff8  loadli.w r14,  -1008(r30)
0007c8  e3492ff8  loadli.w r19,  -1004(r30)
0007cc  e30a3ff8  loadli.w r21,  -1000(r30)
0007d0  634b3ff8  loadli.w r22,  -996(r30)
0007d4  630a4ff8  loadli.w r20,  -992(r30)
0007d8  63494ff8  loadli.w r18,  -988(r30)
0007dc  e3065ff8  loadli.w r13,  -984(r30)
0007e0  e3455ff8  loadli.w r11,  -980(r30)
0007e4  e3046ff8  loadli.w r9,  -976(r30)
0007e8  e3416ff8  loadli.w r3,  -972(r30)
0007ec  63037ff8  loadli.w r6,  -968(r30)
0007f0  63417ff8  loadli.w r2,  -964(r30)
0007f4  97801301  and r1, r7, r17
0007f8  938b1704  setlt.u r23, r15, r1
0007fc  9b1002fc  ori r1, r4, 4032
000800  1f820000  addli r4, r1, 0
000804  3be00b00  bneq r23, zero, 24
000808  1bc20301  srli r4, r7, 16
00080c  1b021200  andi r4, r4, 1
000810  0b924310  add.s r4, r7, r4
000814  0b125210  add.s r4, r4, r5
000818  1b420201  srli r4, r4, 16
00081c  97031401  and r7, r8, r17
000820  938b7704  setlt.u r23, r15, r7
000824  9f830000  addli r7, r1, 0
000828  3be00b00  bneq r23, zero, 24
00082c  9b430401  srli r7, r8, 16
000830  9b831300  andi r7, r7, 1
000834  8b137410  add.s r7, r8, r7
000838  8b935310  add.s r7, r7, r5
00083c  9bc30301  srli r7, r7, 16
000840  17041501  and r8, r10, r17
000844  938b8704  setlt.u r23, r15, r8
000848  1f840000  addli r8, r1, 0
00084c  3be00b00  bneq r23, zero, 24
000850  1b440501  srli r8, r10, 16
000854  1b041400  andi r8, r8, 1
000858  0b148510  add.s r8, r10, r8
00085c  0b145410  add.s r8, r8, r5
000860  1b440401  srli r8, r8, 16
000864  17051601  and r10, r12, r17
000868  938ba704  setlt.u r23, r15, r10
00086c  1f850000  addli r10, r1, 0
000870  3be00b00  bneq r23, zero, 24
000874  1b450601  srli r10, r12, 16
000878  1b051500  andi r10, r10, 1
00087c  0b15a610  add.s r10, r12, r10
000880  0b155510  add.s r10, r10, r5
000884  1b450501  srli r10, r10, 16
000888  17061701  and r12, r14, r17
00088c  938bc704  setlt.u r23, r15, r12
000890  1f860000  addli r12, r1, 0
000894  3be00b00  bneq r23, zero, 24
000898  1b460701  srli r12, r14, 16
00089c  1b061600  andi r12, r12, 1
0008a0  0b16c710  add.s r12, r14, r12
0008a4  0b165610  add.s r12, r12, r5
0008a8  1b460601  srli r12, r12, 16
0008ac  17871901  and r14, r19, r17
0008b0  938be704  setlt.u r23, r15, r14
0008b4  1f870000  addli r14, r1, 0
0008b8  3be00b00  bneq r23, zero, 24
0008bc  1bc70901  srli r14, r19, 16
0008c0  1b071700  andi r14, r14, 1
0008c4  0b97e910  add.s r14, r19, r14
0008c8  0b175710  add.s r14, r14, r5
0008cc  1b470701  srli r14, r14, 16
0008d0  97891a01  and r19, r21, r17
0008d4  938b3705  setlt.u r23, r15, r19
0008d8  9f890000  addli r19, r1, 0
0008dc  3be00b00  bneq r23, zero, 24
0008e0  9bc90a01  srli r19, r21, 16
0008e4  9b891900  andi r19, r19, 1
0008e8  8b993a11  add.s r19, r21, r19
0008ec  8b995910  add.s r19, r19, r5
0008f0  9bc90901  srli r19, r19, 16
0008f4  970a1b01  and r21, r22, r17
0008f8  938b5705  setlt.u r23, r15, r21
0008fc  9f8a0000  addli r21, r1, 0
000900  3be00b00  bneq r23, zero, 24
000904  9b4a0b01  srli r21, r22, 16
000908  9b8a1a00  andi r21, r21, 1
00090c  8b1a5b11  add.s r21, r22, r21
000910  8b9a5a10  add.s r21, r21, r5
000914  9bca0a01  srli r21, r21, 16
000918  170b1a01  and r22, r20, r17
00091c  938b6705  setlt.u r23, r15, r22
000920  1f8b0000  addli r22, r1, 0
000924  3be00b00  bneq r23, zero, 24
000928  1b4b0a01  srli r22, r20, 16
00092c  1b0b1b00  andi r22, r22, 1
000930  0b1a6a11  add.s r20, r20, r22
000934  0b1a5a10  add.s r20, r20, r5
000938  1b4b0a01  srli r22, r20, 16
00093c  170a1901  and r20, r18, r17
000940  938b4705  setlt.u r23, r15, r20
000944  1f8a0000  addli r20, r1, 0
000948  3be00b00  bneq r23, zero, 24
00094c  1b4a0901  srli r20, r18, 16
000950  1b0a1a00  andi r20, r20, 1
000954  0b194911  add.s r18, r18, r20
000958  0b195910  add.s r18, r18, r5
00095c  1b4a0901  srli r20, r18, 16
000960  17891601  and r18, r13, r17
000964  938b2705  setlt.u r23, r15, r18
000968  1f890000  addli r18, r1, 0
00096c  3be00b00  bneq r23, zero, 24
000970  1bc90601  srli r18, r13, 16
000974  1b091900  andi r18, r18, 1
000978  8b962611  add.s r13, r13, r18
00097c  8b965610  add.s r13, r13, r5
000980  1bc90601  srli r18, r13, 16
000984  97861501  and r13, r11, r17
000988  938bd704  setlt.u r23, r15, r13
00098c  9f860000  addli r13, r1, 0
000990  3be00b00  bneq r23, zero, 24
000994  9bc60501  srli r13, r11, 16
000998  9b861600  andi r13, r13, 1
00099c  8b95d510  add.s r11, r11, r13
0009a0  8b955510  add.s r11, r11, r5
0009a4  9bc60501  srli r13, r11, 16
0009a8  97851401  and r11, r9, r17
0009ac  938bb704  setlt.u r23, r15, r11
0009b0  9f850000  addli r11, r1, 0
0009b4  3be00b00  bneq r23, zero, 24
0009b8  9bc50401  srli r11, r9, 16
0009bc  9b851500  andi r11, r11, 1
0009c0  8b94b410  add.s r9, r9, r11
0009c4  8b945410  add.s r9, r9, r5
0009c8  9bc50401  srli r11, r9, 16
0009cc  97841101  and r9, r3, r17
0009d0  938b9704  setlt.u r23, r15, r9
0009d4  9f840000  addli r9, r1, 0
0009d8  3be00b00  bneq r23, zero, 24
0009dc  9bc40101  srli r9, r3, 16
0009e0  9b841400  andi r9, r9, 1
0009e4  8b919110  add.s r3, r3, r9
0009e8  8b915110  add.s r3, r3, r5
0009ec  9bc40101  srli r9, r3, 16
0009f0  97011301  and r3, r6, r17
0009f4  938b3704  setlt.u r23, r15, r3
0009f8  9f810000  addli r3, r1, 0
0009fc  3be00b00  bneq r23, zero, 24
000a00  9b410301  srli r3, r6, 16
000a04  9b811100  andi r3, r3, 1
000a08  8b113310  add.s r3, r6, r3
000a0c  8b915110  add.s r3, r3, r5
000a10  9bc10101  srli r3, r3, 16
000a14  17031101  and r6, r2, r17
000a18  13836704  setlt.u r6, r15, r6
000a1c  3b5f03fa  bneq r6, zero, -2092
000a20  9b400101  srli r1, r2, 16
000a24  9b801000  andi r1, r1, 1
000a28  8b101110  add.s r1, r2, r1
000a2c  8b905010  add.s r1, r1, r5
000a30  9bc00001  srli r1, r1, 16
000a34  dbf7feff  j -2116
000a38  97011b01  and r3, r22, r17
000a3c  93813704  setlt.u r3, r15, r3
000a40  9bbb1100  slli r23, r3, 1
000a44  9f410000  addli r3, zero, 4
000a48  b72bb2fd  beq r4, r27, -1304
000a4c  97011201  and r3, r4, r17
000a50  93813704  setlt.u r3, r15, r3
000a54  9bb12100  slli r3, r3, 2
000a58  9f061000  addli r13, zero, 8
000a5c  37fbb4fd  beq r9, r27, -1316
000a60  97821401  and r5, r9, r17
000a64  93825704  setlt.u r5, r15, r5
000a68  9bb63200  slli r13, r5, 3
000a6c  1f072000  addli r14, zero, 16
000a70  374bb1fd  beq r2, r27, -1328
000a74  97021101  and r5, r2, r17
000a78  93825704  setlt.u r5, r15, r5
000a7c  1bb74200  slli r14, r5, 4
000a80  9f094000  addli r19, zero, 32
000a84  3b1bb8fd  bneq r16, r27, -1340
000a88  db59ffff  j -1332
000a8c  9f0e0fef  addli sp, r30, -2176
000a90  9f8e0e11  addli sp, sp, 2176
000a94  00a00300  mfence { lm, sm, gm }
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
000cd4  00100000  exit
000cd8  00100000  exit
