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
0000dc  9f8e6ef9  addli sp, sp, -848
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f2e06  addli r30, sp, 784
0000ec  80550002  load_param_i r11, 0
0000f0  9bb12000  slli r3, r1, 2
0000f4  1f010100  addli r2, r2, 0
0000f8  63435f00  loadli.w r6,  44(r30)
0000fc  e3026f00  loadli.w r5,  48(r30)
000100  0b922110  add.s r4, r3, r2
000104  e3015f00  loadli.w r3,  40(r30)
000108  67014ffa  storeli.w r4, -752(r30)
00010c  73600200  stores.w zero, 0(r4)
000110  2bf20000  lui r4, 15
000114  8b113320  mul.s r3, r6, r3
000118  00a00300  mfence { lm, sm, gm }
00011c  1b15f2ff  ori r10, r4, 4095
000120  8b915120  mul.s r3, r3, r5
000124  80210504  csr_set csr3, r10
000128  00d00100  sync_group
00012c  e7403ffa  storeli.w r3, -756(r30)
000130  4b9fb102  ble.s r3, r11, 1988
000134  9f410000  addli r3, zero, 4
000138  80d20002  load_param_i r5, 1
00013c  2bf3ff3f  lui r6, 262143
000140  9f270000  addli r15, zero, 2
000144  eb560f00  load.d r[14:15], 0(r30)
000148  1f088ffd  addli r16, r30, -320
00014c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000150  e700affa  storeli.w r10, -760(r30)
000154  0b963030  div.s r12, r1, r3
000158  67005ffa  storeli.w r5, -768(r30)
00015c  9b823000  andi r5, r1, 3
000160  1b13c3ff  ori r6, r6, 4092
000164  eb518f00  load.d r[4:5], 8(r30)
000168  e74f5ff8  storeli.w r5, -772(r30)
00016c  17836000  and r6, r1, r6
000170  1b332300  slli r6, r6, 2
000174  9b322600  slli r5, r12, 2
000178  0b112310  add.s r2, r6, r2
00017c  6740cffa  storeli.w r12, -764(r30)
000180  8b925018  sub.s r5, r1, r5
000184  9bf00004  setlti r1, r1, 64
000188  670f2ff8  storeli.w r2, -784(r30)
00018c  1b31b600  slli r2, r12, 11
000190  1f060002  addli r12, zero, 256
000194  9bb36200  slli r7, r5, 6
000198  93820200  seteq r5, r5, zero
00019c  33940328  sext_int2long r[9:10], r7
0001a0  1734f402  sll.d r[9:10], r[9:10], r15
0001a4  0ba48110  add.ul r[9:10], r[4:5], r[9:10]
0001a8  97805000  and r1, r1, r5
0001ac  e70f1ff8  storeli.w r1, -776(r30)
0001b0  8b107110  add.s r1, r2, r7
0001b4  9f038ffb  addli r7, r30, -576
0001b8  674f1ff8  storeli.w r1, -780(r30)
0001bc  9f400000  addli r1, zero, 4
0001c0  7e8100e0  vmmov mr2, r1
0001c4  5b030000  j 24
0001c8  e3000ffa  loadli.w r1,  -768(r30)
0001cc  8b951510  add.s r11, r11, r1
0001d0  e3401ffa  loadli.w r1,  -756(r30)
0001d4  3fa01500  blt.s r11, r1, 8
0001d8  dbe30000  j 1820
0001dc  e3006f00  loadli.w r1,  48(r30)
0001e0  63415f00  loadli.w r2,  44(r30)
0001e4  e701bffa  storeli.w r11, -744(r30)
0001e8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0001ec  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0001f0  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0001f4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0001f8  9f0d0000  addli r27, zero, 0
0001fc  00a00000  mfence { lm }
000200  e3410ffa  loadli.w r3,  -764(r30)
000204  8b901530  div.s r1, r11, r1
000208  8b902030  div.s r1, r1, r2
00020c  1bb14000  slli r2, r1, 4
000210  9bb0f000  slli r1, r1, 15
000214  0b113110  add.s r2, r2, r3
000218  67412ffa  storeli.w r2, -748(r30)
00021c  6341eff9  loadli.w r2,  -780(r30)
000220  8b101110  add.s r1, r2, r1
000224  e7411ffa  storeli.w r1, -740(r30)
000228  e3403ffa  loadli.w r1,  -740(r30)
00022c  2b0100f0  lui r2, 983040
000230  b3820d28  zext_int2long r[6:7], r27
000234  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000238  12330002  vadd.s.mz vr6{mr1}, zero, vr0
00023c  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000240  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000244  8b90b011  add.s r1, r1, r27
000248  b3910028  sext_int2long r[4:5], r1
00024c  97102600  or r1, r12, r2
000250  97b1f102  sll.d r[4:5], r[4:5], r15
000254  0ba13610  add.ul r[3:4], r[14:15], r[4:5]
000258  17b2f202  sll.d r[5:6], r[6:7], r15
00025c  2b0300f0  lui r6, 983040
000260  17136600  or r6, r12, r6
000264  0b224410  add.ul r[5:6], r[9:10], r[5:6]
000268  ff207100  l_gm2lm r1, r7, 0(r[3:4])
00026c  a7050400  addli.d r[12:13], r[9:10], 0
000270  7f230201  l_gm2lm r6, r16, 0(r[5:6])
000274  00a00000  mfence { lm }
000278  630deffe  loadli.w r26,  -144(r30)
00027c  e340bffd  loadli.w r1,  -292(r30)
000280  e3078ffd  loadli.w r15,  -320(r30)
000284  e3488ffd  loadli.w r17,  -316(r30)
000288  e3099ffd  loadli.w r19,  -312(r30)
00028c  e34a9ffd  loadli.w r21,  -308(r30)
000290  e30baffd  loadli.w r23,  -304(r30)
000294  e34caffd  loadli.w r25,  -300(r30)
000298  630ebffd  loadli.w r28,  -296(r30)
00029c  63016ffe  loadli.w r2,  -208(r30)
0002a0  e3416ffe  loadli.w r3,  -204(r30)
0002a4  63027ffe  loadli.w r4,  -200(r30)
0002a8  e3427ffe  loadli.w r5,  -196(r30)
0002ac  63038ffe  loadli.w r6,  -192(r30)
0002b0  e3438ffe  loadli.w r7,  -188(r30)
0002b4  63049ffe  loadli.w r8,  -184(r30)
0002b8  e3449ffe  loadli.w r9,  -180(r30)
0002bc  6305affe  loadli.w r10,  -176(r30)
0002c0  e346affe  loadli.w r13,  -172(r30)
0002c4  6307bffe  loadli.w r14,  -168(r30)
0002c8  6348bffe  loadli.w r16,  -164(r30)
0002cc  6309cffe  loadli.w r18,  -160(r30)
0002d0  634acffe  loadli.w r20,  -156(r30)
0002d4  630bdffe  loadli.w r22,  -152(r30)
0002d8  634cdffe  loadli.w r24,  -148(r30)
0002dc  6702affb  storeli.w r26, -736(r30)
0002e0  634deffe  loadli.w r26,  -140(r30)
0002e4  e7021ffa  storeli.w r1, -728(r30)
0002e8  e300cffd  loadli.w r1,  -288(r30)
0002ec  6742affb  storeli.w r26, -732(r30)
0002f0  630dfffe  loadli.w r26,  -136(r30)
0002f4  67031ffa  storeli.w r1, -720(r30)
0002f8  e340cffd  loadli.w r1,  -284(r30)
0002fc  e742affb  storeli.w r26, -724(r30)
000300  634dfffe  loadli.w r26,  -132(r30)
000304  e7031ffa  storeli.w r1, -712(r30)
000308  e300dffd  loadli.w r1,  -280(r30)
00030c  6743affb  storeli.w r26, -716(r30)
000310  630d0fff  loadli.w r26,  -128(r30)
000314  67041ffa  storeli.w r1, -704(r30)
000318  e340dffd  loadli.w r1,  -276(r30)
00031c  e743affb  storeli.w r26, -708(r30)
000320  634d0fff  loadli.w r26,  -124(r30)
000324  e7041ffa  storeli.w r1, -696(r30)
000328  e300effd  loadli.w r1,  -272(r30)
00032c  6744affb  storeli.w r26, -700(r30)
000330  630d1fff  loadli.w r26,  -120(r30)
000334  67051ffa  storeli.w r1, -688(r30)
000338  e340effd  loadli.w r1,  -268(r30)
00033c  e744affb  storeli.w r26, -692(r30)
000340  634d1fff  loadli.w r26,  -116(r30)
000344  e7051ffa  storeli.w r1, -680(r30)
000348  e300fffd  loadli.w r1,  -264(r30)
00034c  6745affb  storeli.w r26, -684(r30)
000350  630d2fff  loadli.w r26,  -112(r30)
000354  67061ffa  storeli.w r1, -672(r30)
000358  e340fffd  loadli.w r1,  -260(r30)
00035c  e745affb  storeli.w r26, -676(r30)
000360  634d2fff  loadli.w r26,  -108(r30)
000364  e7061ffa  storeli.w r1, -664(r30)
000368  e3000ffe  loadli.w r1,  -256(r30)
00036c  6746affb  storeli.w r26, -668(r30)
000370  630d3fff  loadli.w r26,  -104(r30)
000374  67071ffa  storeli.w r1, -656(r30)
000378  e3400ffe  loadli.w r1,  -252(r30)
00037c  e746affb  storeli.w r26, -660(r30)
000380  634d3fff  loadli.w r26,  -100(r30)
000384  e7071ffa  storeli.w r1, -648(r30)
000388  e3001ffe  loadli.w r1,  -248(r30)
00038c  6747affb  storeli.w r26, -652(r30)
000390  630d4fff  loadli.w r26,  -96(r30)
000394  67081ffa  storeli.w r1, -640(r30)
000398  e3401ffe  loadli.w r1,  -244(r30)
00039c  e747affb  storeli.w r26, -644(r30)
0003a0  634d4fff  loadli.w r26,  -92(r30)
0003a4  e7081ffa  storeli.w r1, -632(r30)
0003a8  e3002ffe  loadli.w r1,  -240(r30)
0003ac  6748affb  storeli.w r26, -636(r30)
0003b0  630d5fff  loadli.w r26,  -88(r30)
0003b4  67091ffa  storeli.w r1, -624(r30)
0003b8  e3402ffe  loadli.w r1,  -236(r30)
0003bc  e748affb  storeli.w r26, -628(r30)
0003c0  634d5fff  loadli.w r26,  -84(r30)
0003c4  e7091ffa  storeli.w r1, -616(r30)
0003c8  e3003ffe  loadli.w r1,  -232(r30)
0003cc  6749affb  storeli.w r26, -620(r30)
0003d0  630d6fff  loadli.w r26,  -80(r30)
0003d4  670a1ffa  storeli.w r1, -608(r30)
0003d8  e3403ffe  loadli.w r1,  -228(r30)
0003dc  e749affb  storeli.w r26, -612(r30)
0003e0  634d6fff  loadli.w r26,  -76(r30)
0003e4  e70a1ffa  storeli.w r1, -600(r30)
0003e8  e3004ffe  loadli.w r1,  -224(r30)
0003ec  674aaffb  storeli.w r26, -604(r30)
0003f0  630d7fff  loadli.w r26,  -72(r30)
0003f4  670b1ffa  storeli.w r1, -592(r30)
0003f8  e3404ffe  loadli.w r1,  -220(r30)
0003fc  e74aaffb  storeli.w r26, -596(r30)
000400  634d7fff  loadli.w r26,  -68(r30)
000404  e70b1ffa  storeli.w r1, -584(r30)
000408  e3005ffe  loadli.w r1,  -216(r30)
00040c  674baffb  storeli.w r26, -588(r30)
000410  1f1d0000  addli r26, zero, 1
000414  e74b1ffa  storeli.w r1, -580(r30)
000418  e3405ffe  loadli.w r1,  -212(r30)
00041c  7e000de0  vmmov mr0, r26
000420  eaa25730  vor.u.mh vr5{mr0}, r15, vr5
000424  9f270000  addli r15, zero, 2
000428  fe8107e0  vmmov mr3, r15
00042c  9f270000  addli r15, zero, 2
000430  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
000434  9f08000e  addli r17, zero, 1792
000438  eaa25934  vor.u.mh vr5{mr2}, r19, vr5
00043c  9f091000  addli r19, zero, 8
000440  7e8009e0  vmmov mr0, r19
000444  9f092000  addli r19, zero, 16
000448  eaa25a30  vor.u.mh vr5{mr0}, r21, vr5
00044c  fe8109e0  vmmov mr3, r19
000450  9f094000  addli r19, zero, 32
000454  9f1a0000  addli r21, zero, 1
000458  eaa25b36  vor.u.mh vr5{mr3}, r23, vr5
00045c  fe8109e0  vmmov mr3, r19
000460  9f098000  addli r19, zero, 64
000464  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
000468  fe8109e0  vmmov mr3, r19
00046c  9f090001  addli r19, zero, 128
000470  ea225e36  vor.u.mh vr5{mr3}, r28, vr5
000474  fe8109e0  vmmov mr3, r19
000478  e3095ffa  loadli.w r19,  -728(r30)
00047c  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
000480  9f090002  addli r19, zero, 256
000484  fe8109e0  vmmov mr3, r19
000488  e3096ffa  loadli.w r19,  -720(r30)
00048c  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
000490  9f090004  addli r19, zero, 512
000494  fe8109e0  vmmov mr3, r19
000498  e3097ffa  loadli.w r19,  -712(r30)
00049c  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
0004a0  9f090008  addli r19, zero, 1024
0004a4  fe8109e0  vmmov mr3, r19
0004a8  e3098ffa  loadli.w r19,  -704(r30)
0004ac  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
0004b0  9f090010  addli r19, zero, 2048
0004b4  fe8109e0  vmmov mr3, r19
0004b8  e3099ffa  loadli.w r19,  -696(r30)
0004bc  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
0004c0  9f090020  addli r19, zero, 4096
0004c4  fe8109e0  vmmov mr3, r19
0004c8  e309affa  loadli.w r19,  -688(r30)
0004cc  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
0004d0  9f090040  addli r19, zero, 8192
0004d4  fe8109e0  vmmov mr3, r19
0004d8  e309bffa  loadli.w r19,  -680(r30)
0004dc  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
0004e0  ab490000  lui r19, 4
0004e4  fe8109e0  vmmov mr3, r19
0004e8  e309cffa  loadli.w r19,  -672(r30)
0004ec  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
0004f0  ab890000  lui r19, 8
0004f4  fe8109e0  vmmov mr3, r19
0004f8  e309dffa  loadli.w r19,  -664(r30)
0004fc  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
000500  e309effa  loadli.w r19,  -656(r30)
000504  fe810ae0  vmmov mr3, r21
000508  9f2a0000  addli r21, zero, 2
00050c  6aa36936  vor.u.mh vr6{mr3}, r19, vr6
000510  e309fffa  loadli.w r19,  -648(r30)
000514  fe810ae0  vmmov mr3, r21
000518  9f0a2000  addli r21, zero, 16
00051c  6aa36936  vor.u.mh vr6{mr3}, r19, vr6
000520  e3090ffb  loadli.w r19,  -640(r30)
000524  fe810ae0  vmmov mr3, r21
000528  9f0a4000  addli r21, zero, 32
00052c  6aa36934  vor.u.mh vr6{mr2}, r19, vr6
000530  e3091ffb  loadli.w r19,  -632(r30)
000534  6aa36930  vor.u.mh vr6{mr0}, r19, vr6
000538  e3092ffb  loadli.w r19,  -624(r30)
00053c  6aa36936  vor.u.mh vr6{mr3}, r19, vr6
000540  e3093ffb  loadli.w r19,  -616(r30)
000544  fe810ae0  vmmov mr3, r21
000548  9f0a8000  addli r21, zero, 64
00054c  6aa36936  vor.u.mh vr6{mr3}, r19, vr6
000550  e3094ffb  loadli.w r19,  -608(r30)
000554  fe810ae0  vmmov mr3, r21
000558  9f0a0001  addli r21, zero, 128
00055c  6aa36936  vor.u.mh vr6{mr3}, r19, vr6
000560  e3095ffb  loadli.w r19,  -600(r30)
000564  fe810ae0  vmmov mr3, r21
000568  9f0a0002  addli r21, zero, 256
00056c  6aa36936  vor.u.mh vr6{mr3}, r19, vr6
000570  e3096ffb  loadli.w r19,  -592(r30)
000574  fe810ae0  vmmov mr3, r21
000578  9f0a0004  addli r21, zero, 512
00057c  6aa36936  vor.u.mh vr6{mr3}, r19, vr6
000580  e3097ffb  loadli.w r19,  -584(r30)
000584  fe810ae0  vmmov mr3, r21
000588  9f0a0008  addli r21, zero, 1024
00058c  6aa36936  vor.u.mh vr6{mr3}, r19, vr6
000590  e3497ffb  loadli.w r19,  -580(r30)
000594  fe810ae0  vmmov mr3, r21
000598  6aa36936  vor.u.mh vr6{mr3}, r19, vr6
00059c  9f090010  addli r19, zero, 2048
0005a0  fe8109e0  vmmov mr3, r19
0005a4  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
0005a8  9f000020  addli r1, zero, 4096
0005ac  fe8100e0  vmmov mr3, r1
0005b0  9f000040  addli r1, zero, 8192
0005b4  6a236136  vor.u.mh vr6{mr3}, r2, vr6
0005b8  fe8100e0  vmmov mr3, r1
0005bc  ab400000  lui r1, 4
0005c0  1f010020  addli r2, zero, 4096
0005c4  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
0005c8  fe8100e0  vmmov mr3, r1
0005cc  ab800000  lui r1, 8
0005d0  6a236236  vor.u.mh vr6{mr3}, r4, vr6
0005d4  fe8100e0  vmmov mr3, r1
0005d8  9f100000  addli r1, zero, 1
0005dc  6aa36236  vor.u.mh vr6{mr3}, r5, vr6
0005e0  fe8100e0  vmmov mr3, r1
0005e4  9f200000  addli r1, zero, 2
0005e8  ea237336  vor.u.mh vr7{mr3}, r6, vr7
0005ec  fe8100e0  vmmov mr3, r1
0005f0  9f002000  addli r1, zero, 16
0005f4  eaa37336  vor.u.mh vr7{mr3}, r7, vr7
0005f8  fe8100e0  vmmov mr3, r1
0005fc  9f004000  addli r1, zero, 32
000600  9f038ffb  addli r7, r30, -576
000604  ea237434  vor.u.mh vr7{mr2}, r8, vr7
000608  eaa37430  vor.u.mh vr7{mr0}, r9, vr7
00060c  27840500  addli.d r[9:10], r[12:13], 0
000610  1f060002  addli r12, zero, 256
000614  ea237536  vor.u.mh vr7{mr3}, r10, vr7
000618  fe8100e0  vmmov mr3, r1
00061c  9f008000  addli r1, zero, 64
000620  eaa37636  vor.u.mh vr7{mr3}, r13, vr7
000624  fe8100e0  vmmov mr3, r1
000628  9f000001  addli r1, zero, 128
00062c  ea237736  vor.u.mh vr7{mr3}, r14, vr7
000630  fe8100e0  vmmov mr3, r1
000634  9f000002  addli r1, zero, 256
000638  eb560f00  load.d r[14:15], 0(r30)
00063c  ea237836  vor.u.mh vr7{mr3}, r16, vr7
000640  fe8100e0  vmmov mr3, r1
000644  9f000004  addli r1, zero, 512
000648  1f088ffd  addli r16, r30, -320
00064c  ea237936  vor.u.mh vr7{mr3}, r18, vr7
000650  fe8100e0  vmmov mr3, r1
000654  9f000008  addli r1, zero, 1024
000658  ea237a36  vor.u.mh vr7{mr3}, r20, vr7
00065c  fe8100e0  vmmov mr3, r1
000660  9f000010  addli r1, zero, 2048
000664  ea237b36  vor.u.mh vr7{mr3}, r22, vr7
000668  fe8100e0  vmmov mr3, r1
00066c  ea237c36  vor.u.mh vr7{mr3}, r24, vr7
000670  e3004ffa  loadli.w r1,  -736(r30)
000674  fe0101e0  vmmov mr3, r2
000678  1f010040  addli r2, zero, 8192
00067c  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
000680  e3404ffa  loadli.w r1,  -732(r30)
000684  fe0101e0  vmmov mr3, r2
000688  2b410000  lui r2, 4
00068c  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
000690  e3405ffa  loadli.w r1,  -724(r30)
000694  fe0101e0  vmmov mr3, r2
000698  2b810000  lui r2, 8
00069c  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
0006a0  e3406ffa  loadli.w r1,  -716(r30)
0006a4  fe0101e0  vmmov mr3, r2
0006a8  1f110000  addli r2, zero, 1
0006ac  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
0006b0  e3407ffa  loadli.w r1,  -708(r30)
0006b4  fe0101e0  vmmov mr3, r2
0006b8  1f210000  addli r2, zero, 2
0006bc  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0006c0  e3408ffa  loadli.w r1,  -700(r30)
0006c4  fe0101e0  vmmov mr3, r2
0006c8  1f012000  addli r2, zero, 16
0006cc  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0006d0  e3409ffa  loadli.w r1,  -692(r30)
0006d4  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0006d8  e340affa  loadli.w r1,  -684(r30)
0006dc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0006e0  e340bffa  loadli.w r1,  -676(r30)
0006e4  7e0001e0  vmmov mr0, r2
0006e8  1f014000  addli r2, zero, 32
0006ec  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0006f0  e340cffa  loadli.w r1,  -668(r30)
0006f4  7e0001e0  vmmov mr0, r2
0006f8  1f018000  addli r2, zero, 64
0006fc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000700  e340dffa  loadli.w r1,  -660(r30)
000704  7e0001e0  vmmov mr0, r2
000708  1f010001  addli r2, zero, 128
00070c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000710  e340effa  loadli.w r1,  -652(r30)
000714  7e0001e0  vmmov mr0, r2
000718  1f010002  addli r2, zero, 256
00071c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000720  e340fffa  loadli.w r1,  -644(r30)
000724  7e0001e0  vmmov mr0, r2
000728  1f010004  addli r2, zero, 512
00072c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000730  e3400ffb  loadli.w r1,  -636(r30)
000734  7e0001e0  vmmov mr0, r2
000738  1f010008  addli r2, zero, 1024
00073c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000740  e3401ffb  loadli.w r1,  -628(r30)
000744  7e0001e0  vmmov mr0, r2
000748  1f010010  addli r2, zero, 2048
00074c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000750  e3402ffb  loadli.w r1,  -620(r30)
000754  7e0001e0  vmmov mr0, r2
000758  1f010020  addli r2, zero, 4096
00075c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000760  e3403ffb  loadli.w r1,  -612(r30)
000764  7e0001e0  vmmov mr0, r2
000768  1f010040  addli r2, zero, 8192
00076c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000770  e3404ffb  loadli.w r1,  -604(r30)
000774  7e0001e0  vmmov mr0, r2
000778  2b410000  lui r2, 4
00077c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000780  e3405ffb  loadli.w r1,  -596(r30)
000784  7e0001e0  vmmov mr0, r2
000788  2b810000  lui r2, 8
00078c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000790  e3406ffb  loadli.w r1,  -588(r30)
000794  7e0001e0  vmmov mr0, r2
000798  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00079c  93801d05  setlt.u r1, r27, r17
0007a0  00a00000  mfence { lm }
0007a4  9f8d0d02  addli r27, r27, 256
0007a8  c2140fc2  vload_mask16.mz vr9{mr1}, 1536(r30)
0007ac  42158fa3  vload_mask16.mz vr10{mr1}, 1472(r30)
0007b0  26916402  vmac.f.mz.rn vr2{mr1}, vr9, vr6
0007b4  42138fc2  vload_mask16.mz vr6{mr1}, 1600(r30)
0007b8  a6117302  vmac.f.mz.rn vr3{mr1}, vr6, vr7
0007bc  a6105502  vmac.f.mz.rn vr1{mr1}, vr10, vr5
0007c0  c2140fc3  vload_mask16.mz vr9{mr1}, 1664(r30)
0007c4  26928402  vmac.f.mz.rn vr4{mr1}, vr9, vr8
0007c8  00a00000  mfence { lm }
0007cc  3bf900fc  bneq r1, zero, -1444
0007d0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0007d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0007d8  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0007dc  fa900040  vextracti.f r1, 0(vr1)
0007e0  7a911040  vextracti.f r2, 1(vr1)
0007e4  8be02010  add.f.rn r1, r1, r2
0007e8  7a912040  vextracti.f r2, 2(vr1)
0007ec  8b601110  add.f.rn r1, r2, r1
0007f0  7a913040  vextracti.f r2, 3(vr1)
0007f4  8b601110  add.f.rn r1, r2, r1
0007f8  7a914040  vextracti.f r2, 4(vr1)
0007fc  8b601110  add.f.rn r1, r2, r1
000800  7a915040  vextracti.f r2, 5(vr1)
000804  8b601110  add.f.rn r1, r2, r1
000808  7a916040  vextracti.f r2, 6(vr1)
00080c  8b601110  add.f.rn r1, r2, r1
000810  7a917040  vextracti.f r2, 7(vr1)
000814  8b601110  add.f.rn r1, r2, r1
000818  7a918040  vextracti.f r2, 8(vr1)
00081c  8b601110  add.f.rn r1, r2, r1
000820  7a919040  vextracti.f r2, 9(vr1)
000824  8b601110  add.f.rn r1, r2, r1
000828  7a91a040  vextracti.f r2, 10(vr1)
00082c  8b601110  add.f.rn r1, r2, r1
000830  7a91b040  vextracti.f r2, 11(vr1)
000834  8b601110  add.f.rn r1, r2, r1
000838  7a91c040  vextracti.f r2, 12(vr1)
00083c  8b601110  add.f.rn r1, r2, r1
000840  7a91d040  vextracti.f r2, 13(vr1)
000844  8b601110  add.f.rn r1, r2, r1
000848  7a91e040  vextracti.f r2, 14(vr1)
00084c  8b601110  add.f.rn r1, r2, r1
000850  7a91f040  vextracti.f r2, 15(vr1)
000854  8b601110  add.f.rn r1, r2, r1
000858  63012ffa  loadli.w r2,  -752(r30)
00085c  73601100  stores.w r1, 0(r2)
000860  00a00300  mfence { lm, sm, gm }
000864  63051ffa  loadli.w r10,  -760(r30)
000868  80210504  csr_set csr3, r10
00086c  00d00100  sync_group
000870  e340fff9  loadli.w r1,  -772(r30)
000874  bba00000  bneq r1, zero, 40
000878  6302eff9  loadli.w r4,  -784(r30)
00087c  ef400200  loads.w r1, 0(r4)
000880  6f414200  loads.w r2, 4(r4)
000884  ef418200  loads.w r3, 8(r4)
000888  8be02010  add.f.rn r1, r1, r2
00088c  6f41c200  loads.w r2, 12(r4)
000890  8be03010  add.f.rn r1, r1, r3
000894  8be02010  add.f.rn r1, r1, r2
000898  73601200  stores.w r1, 0(r4)
00089c  00a00300  mfence { lm, sm, gm }
0008a0  80210504  csr_set csr3, r10
0008a4  00d00100  sync_group
0008a8  e3053ffa  loadli.w r11,  -744(r30)
0008ac  e300fff9  loadli.w r1,  -776(r30)
0008b0  37e400fc  beq r1, zero, -1768
0008b4  e300eff9  loadli.w r1,  -784(r30)
0008b8  63412ffa  loadli.w r2,  -748(r30)
0008bc  eb520f01  load.d r[6:7], 16(r30)
0008c0  2b0200f0  lui r4, 983040
0008c4  efc00000  loads.w r1, 0(r1)
0008c8  33110128  sext_int2long r[3:4], r2
0008cc  1731f102  sll.d r[3:4], r[3:4], r15
0008d0  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
0008d4  670c1ffe  storeli.w r1, -64(r30)
0008d8  9f400000  addli r1, zero, 4
0008dc  00a00000  mfence { lm }
0008e0  97904000  or r1, r1, r4
0008e4  1f028fff  addli r4, r30, -64
0008e8  ff304100  s_lm2gm r1, r4, 0(r[3:4])
0008ec  00a00000  mfence { lm }
0008f0  5b1bffff  j -1832
0008f4  9f8e2e06  addli sp, sp, 784
0008f8  00a00300  mfence { lm, sm, gm }
0008fc  00100000  exit
000900  00100000  exit
000904  00100000  exit
000908  00100000  exit
00090c  00100000  exit
000910  00100000  exit
000914  00100000  exit
000918  00100000  exit
00091c  00100000  exit
000920  00100000  exit
000924  00100000  exit
000928  00100000  exit
00092c  00100000  exit
000930  00100000  exit
000934  00100000  exit
000938  00100000  exit
00093c  00100000  exit
000940  00100000  exit
000944  00100000  exit
000948  00100000  exit
00094c  00100000  exit
000950  00100000  exit
000954  00100000  exit
000958  00100000  exit
00095c  00100000  exit
000960  00100000  exit
000964  00100000  exit
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
000974  00100000  exit
000978  00100000  exit
00097c  00100000  exit
000980  00100000  exit
000984  00100000  exit
000988  00100000  exit
00098c  00100000  exit
000990  00100000  exit
000994  00100000  exit
000998  00100000  exit
00099c  00100000  exit
0009a0  00100000  exit
0009a4  00100000  exit
0009a8  00100000  exit
0009ac  00100000  exit
0009b0  00100000  exit
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
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
