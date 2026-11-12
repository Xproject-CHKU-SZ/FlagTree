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
0000e4  00520002  load_param_i r4, 0
0000e8  63412f00  loadli.w r2,  20(r30)
0000ec  e3002f00  loadli.w r1,  16(r30)
0000f0  e3013f00  loadli.w r3,  24(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e74c1ff8  storeli.w r1, -820(r30)
000100  cb8b4000  ble.s r1, r4, 736
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  2b03f03f  lui r6, 261888
000110  9f020000  addli r5, zero, 0
000114  9bb07000  slli r1, r1, 7
000118  e70c2ff8  storeli.w r2, -824(r30)
00011c  2bb1a73e  lui r2, 256635
000120  73385fce  store.d r[6:7], -784(r30)
000124  674c1ff8  storeli.w r1, -828(r30)
000128  ab00353f  lui r1, 258896
00012c  1b9d304f  ori r26, r1, 1267
000130  9b1051a0  ori r1, r2, 2565
000134  2bf1b53f  lui r2, 260959
000138  e74f1ff8  storeli.w r1, -772(r30)
00013c  ab00babf  lui r1, 785312
000140  9b90300e  ori r1, r1, 227
000144  e74e1ff8  storeli.w r1, -788(r30)
000148  abd0873f  lui r1, 260221
00014c  9b9020c2  ori r1, r1, 3106
000150  e70e1ff8  storeli.w r1, -792(r30)
000154  9b10310e  ori r1, r2, 227
000158  2b71823e  lui r2, 256039
00015c  674e1ff8  storeli.w r1, -796(r30)
000160  aba091be  lui r1, 780570
000164  1b1c6190  ori r24, r2, 2310
000168  9b90e098  ori r1, r1, 2446
00016c  670e1ff8  storeli.w r1, -800(r30)
000170  abf0ff7f  lui r1, 524287
000174  1b9ef0ff  ori r28, r1, 4095
000178  5b090000  j 72
00017c  6b510fcd  load.d r[3:4], -816(r30)
000180  9f100000  addli r1, zero, 1
000184  6b528f00  load.d r[5:6], 8(r30)
000188  97301102  sll.d r[2:3], r[3:4], r1
00018c  ab0100f0  lui r3, 983040
000190  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000194  1f020002  addli r4, zero, 256
000198  97113200  or r3, r4, r3
00019c  1f020ffe  addli r4, r30, -256
0001a0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0001a4  6342bff9  loadli.w r4,  -804(r30)
0001a8  e3009ff9  loadli.w r1,  -824(r30)
0001ac  00a00000  mfence { lm }
0001b0  0b121210  add.s r4, r4, r1
0001b4  e3409ff9  loadli.w r1,  -820(r30)
0001b8  3f201200  blt.s r4, r1, 8
0001bc  db440000  j 548
0001c0  e3003f00  loadli.w r1,  24(r30)
0001c4  63412f00  loadli.w r2,  20(r30)
0001c8  e74d4ff8  storeli.w r4, -804(r30)
0001cc  1f0b0000  addli r22, zero, 0
0001d0  8b101230  div.s r1, r4, r1
0001d4  6b520f00  load.d r[5:6], 0(r30)
0001d8  8b902030  div.s r1, r1, r2
0001dc  63418ff9  loadli.w r2,  -828(r30)
0001e0  9bb0d000  slli r1, r1, 13
0001e4  8b902010  add.s r1, r1, r2
0001e8  33910028  sext_int2long r[3:4], r1
0001ec  9f200000  addli r1, zero, 2
0001f0  73382fcc  store.d r[3:4], -816(r30)
0001f4  97301102  sll.d r[2:3], r[3:4], r1
0001f8  ab0100f0  lui r3, 983040
0001fc  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000200  1f020004  addli r4, zero, 512
000204  97113200  or r3, r4, r3
000208  1f020ffa  addli r4, r30, -768
00020c  ffa14000  l_gm2lm r3, r4, 0(r[2:3])
000210  9f4a0200  addli r21, r4, 4
000214  00a00000  mfence { lm }
000218  5b050000  j 40
00021c  9f000ffe  addli r1, r30, -256
000220  9f8a1a00  addli r21, r21, 8
000224  8b906011  add.s r1, r1, r22
000228  1f4b0b00  addli r22, r22, 4
00022c  73903000  store.h r3, 0(r1)
000230  73912000  store.h r2, 2(r1)
000234  9f000002  addli r1, zero, 256
000238  00a00000  mfence { lm }
00023c  370d1bfe  beq r22, r1, -192
000240  e3ccfaff  loadli.w r25,  -4(r21)
000244  6341fff9  loadli.w r2,  -772(r30)
000248  e38d0a00  loadli.w r27,  0(r21)
00024c  8be0ac21  mul.f.rn r1, r25, r26
000250  8be90060  abs.f r19, r1
000254  1bb29000  slli r4, r1, 9
000258  0be12920  mul.f.rn r2, r19, r2
00025c  13030200  seteq r6, r4, zero
000260  8f230108  .word 0x0801238f
000264  6b510fcf  load.d r[3:4], -784(r30)
000268  0f922320  .word 0x2023920f
00026c  9bc37001  srli r7, r1, 23
000270  93e00004  setlt.f r1, r1, zero
000274  9b83f30f  andi r7, r7, 255
000278  9bf3f30f  setlti r7, r7, 255
00027c  17936300  or r6, r7, r6
000280  178a6000  and r20, r1, r6
000284  d77d0000  jal 1004
000288  8f300110  .word 0x1001308f
00028c  6341dff9  loadli.w r2,  -788(r30)
000290  e301dff9  loadli.w r3,  -792(r30)
000294  0be20958  neg.f r4, r19
000298  0be13050  fmac.f.rn r2, r1, r3
00029c  e341cff9  loadli.w r3,  -796(r30)
0002a0  8b611150  fmac.f.rn r3, r2, r1
0002a4  6301cff9  loadli.w r2,  -800(r30)
0002a8  0be11150  fmac.f.rn r2, r3, r1
0002ac  9f010c00  addli r3, r24, 0
0002b0  8b611150  fmac.f.rn r3, r2, r1
0002b4  0be14920  mul.f.rn r2, r19, r4
0002b8  ab09803f  lui r19, 260096
0002bc  8be10158  neg.f r3, r3
0002c0  0f010100  exp.f.rn r2, r2
0002c4  8be03020  mul.f.rn r1, r1, r3
0002c8  8be92050  fmac.f.rn r19, r1, r2
0002cc  37200a00  beq r20, zero, 8
0002d0  8be90958  neg.f r19, r19
0002d4  8be0ad21  mul.f.rn r1, r27, r26
0002d8  6341fff9  loadli.w r2,  -772(r30)
0002dc  9f0b0d00  addli r23, r26, 0
0002e0  0bea0060  abs.f r20, r1
0002e4  1bb29000  slli r4, r1, 9
0002e8  0b612a20  mul.f.rn r2, r20, r2
0002ec  13030200  seteq r6, r4, zero
0002f0  8f230108  .word 0x0801238f
0002f4  6b510fcf  load.d r[3:4], -784(r30)
0002f8  0f922320  .word 0x2023920f
0002fc  9bc37001  srli r7, r1, 23
000300  93e00004  setlt.f r1, r1, zero
000304  9b83f30f  andi r7, r7, 255
000308  9bf3f30f  setlti r7, r7, 255
00030c  17936300  or r6, r7, r6
000310  178d6000  and r26, r1, r6
000314  d77d0000  jal 1004
000318  8f300110  .word 0x1001308f
00031c  6341dff9  loadli.w r2,  -788(r30)
000320  e301dff9  loadli.w r3,  -792(r30)
000324  0b620a58  neg.f r4, r20
000328  0be13050  fmac.f.rn r2, r1, r3
00032c  e341cff9  loadli.w r3,  -796(r30)
000330  8b611150  fmac.f.rn r3, r2, r1
000334  6301cff9  loadli.w r2,  -800(r30)
000338  0be11150  fmac.f.rn r2, r3, r1
00033c  9f010c00  addli r3, r24, 0
000340  8b611150  fmac.f.rn r3, r2, r1
000344  0b614a20  mul.f.rn r2, r20, r4
000348  8be10158  neg.f r3, r3
00034c  0f010100  exp.f.rn r2, r2
000350  8be13020  mul.f.rn r3, r1, r3
000354  ab00803f  lui r1, 260096
000358  8be02150  fmac.f.rn r1, r3, r2
00035c  37200d00  beq r26, zero, 8
000360  8be00058  neg.f r1, r1
000364  ab03003f  lui r7, 258048
000368  2b04803f  lui r8, 260096
00036c  ab04807f  lui r9, 522240
000370  1f8d0b00  addli r26, r23, 0
000374  0be17c20  mul.f.rn r2, r25, r7
000378  8be18910  add.f.rn r3, r19, r8
00037c  8b623120  mul.f.rn r5, r2, r3
000380  ab710000  lui r3, 7
000384  1b92f1ff  ori r4, r3, 4095
000388  1781c201  and r2, r5, r28
00038c  13832404  setlt.u r6, r9, r2
000390  1b9101fc  ori r2, r3, 4032
000394  9f010100  addli r3, r2, 0
000398  3b600300  bneq r6, zero, 24
00039c  9bc10201  srli r3, r5, 16
0003a0  9b811100  andi r3, r3, 1
0003a4  8b913210  add.s r3, r5, r3
0003a8  8b914110  add.s r3, r3, r4
0003ac  9bc10101  srli r3, r3, 16
0003b0  8be27d20  mul.f.rn r5, r27, r7
0003b4  8be08010  add.f.rn r1, r1, r8
0003b8  8be01220  mul.f.rn r1, r5, r1
0003bc  9782c001  and r5, r1, r28
0003c0  93825404  setlt.u r5, r9, r5
0003c4  3be902fe  bneq r5, zero, -424
0003c8  1bc10001  srli r2, r1, 16
0003cc  1b011100  andi r2, r2, 1
0003d0  8b902010  add.s r1, r1, r2
0003d4  8b904010  add.s r1, r1, r4
0003d8  1bc10001  srli r2, r1, 16
0003dc  5bc8ffff  j -448
0003e0  9f8e8e06  addli sp, sp, 832
0003e4  00a00300  mfence { lm, sm, gm }
0003e8  00100000  exit
0003ec  9f8e7eff  addli sp, sp, -72
0003f0  9f406000  addli r1, zero, 52
0003f4  2bf50f00  lui r10, 255
0003f8  abf7ffff  lui r15, 1048575
0003fc  ab040080  lui r9, 524288
000400  17232202  xor.d r[7:8], r[5:6], r[3:4]
000404  e7c1ee01  storeli.w r30, 28(sp)
000408  67c43e01  storeli.w r19, 68(sp)
00040c  67844e01  storeli.w r20, 64(sp)
000410  e7c35e01  storeli.w r21, 60(sp)
000414  e7836e01  storeli.w r22, 56(sp)
000418  67c37e01  storeli.w r23, 52(sp)
00041c  67838e01  storeli.w r24, 48(sp)
000420  e7c29e01  storeli.w r25, 44(sp)
000424  e782ae01  storeli.w r26, 40(sp)
000428  67c2be01  storeli.w r27, 36(sp)
00042c  6782ce01  storeli.w r28, 32(sp)
000430  e781fe01  storeli.w r31, 24(sp)
000434  1f8f9e00  addli r30, sp, 72
000438  1f040000  addli r8, zero, 0
00043c  97451102  srl.d r[12:13], r[3:4], r1
000440  17481202  srl.d r[17:18], r[5:6], r1
000444  1b17f5ff  ori r14, r10, 4095
000448  9b96f7ff  ori r13, r15, 4095
00044c  17038302  and.d r[7:8], r[7:8], r[9:10]
000450  9b80f57f  andi r1, r11, 2047
000454  1b05f87f  andi r10, r16, 2047
000458  9b982780  ori r17, r15, 2050
00045c  1704d102  and.d r[9:10], r[3:4], r[14:15]
000460  9705d202  and.d r[12:13], r[5:6], r[14:15]
000464  1f9800f0  addli r16, r1, -2047
000468  13081805  setlt.u r16, r16, r17
00046c  3b700800  bneq r16, zero, 28
000470  1f1805f0  addli r16, r10, -2047
000474  9b971780  ori r15, r15, 2049
000478  93870705  setlt.u r15, r15, r16
00047c  37b00700  beq r15, zero, 12
000480  1f020000  addli r4, zero, 0
000484  5b0b0000  j 88
000488  abf7ff7f  lui r15, 524287
00048c  2b09f07f  lui r18, 524032
000490  9f180000  addli r17, zero, 1
000494  1b97f7ff  ori r14, r15, 4095
000498  9707d102  and.d r[16:17], r[3:4], r[14:15]
00049c  93a91705  setlt.ul r19, r[16:17], r[18:19]
0004a0  3be00900  bneq r19, zero, 24
0004a4  ab020800  lui r5, 128
0004a8  9f060000  addli r13, zero, 0
0004ac  1f020000  addli r4, zero, 0
0004b0  17114102  or.d r[3:4], r[3:4], r[5:6]
0004b4  5b040000  j 32
0004b8  1701d202  and.d r[3:4], r[5:6], r[14:15]
0004bc  93261105  setlt.ul r13, r[3:4], r[18:19]
0004c0  3bf80600  bneq r13, zero, 540
0004c4  ab010800  lui r3, 128
0004c8  9f060000  addli r13, zero, 0
0004cc  1f010000  addli r2, zero, 0
0004d0  17112202  or.d r[3:4], r[5:6], r[3:4]
0004d4  1f020000  addli r4, zero, 0
0004d8  b7c90600  beq r13, zero, 624
0004dc  ab011000  lui r3, 256
0004e0  9f371000  addli r15, zero, 11
0004e4  abf9ffff  lui r19, 1048575
0004e8  2bf90475  lui r18, 479311
0004ec  9f582000  addli r17, zero, 21
0004f0  73346ffc  store.d r[7:8], -56(r30)
0004f4  9f723000  addli r5, zero, 31
0004f8  73308ffc  store.d r[9:10], -64(r30)
0004fc  8b90a018  sub.s r1, r1, r10
000500  1f010000  addli r2, zero, 0
000504  97b7f502  sll.d r[16:17], r[12:13], r15
000508  9b1a3933  ori r21, r18, 819
00050c  8b101210  add.s r1, r4, r1
000510  97162402  or.d r[14:15], r[9:10], r[3:4]
000514  17912502  or.d r[3:4], r[12:13], r[3:4]
000518  9b950980  ori r11, r19, 2048
00051c  733cdffa  store.d r[14:15], -72(r30)
000520  338c0528  zext_int2long r[25:26], r11
000524  174b1103  srl.d r[23:24], r[3:4], r17
000528  9b95f9ff  ori r11, r19, 4095
00052c  9b99e9ff  ori r19, r19, 4094
000530  b3880528  zext_int2long r[18:19], r11
000534  8b9a6a19  sub.s r21, r21, r22
000538  97878703  and.d r[16:17], r[16:17], r[25:26]
00053c  b3890928  zext_int2long r[20:21], r19
000540  170d1b03  and.d r[27:28], r[23:24], r[18:19]
000544  b38a0a28  zext_int2long r[22:23], r21
000548  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
00054c  0b930358  neg.s r6, r7
000550  33030328  zext_int2long r[7:8], r6
000554  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
000558  17435302  srl.d r[7:8], r[7:8], r5
00055c  17031303  and.d r[7:8], r[7:8], r[18:19]
000560  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
000564  8b1a0b58  neg.s r21, r22
000568  b38a0a28  zext_int2long r[22:23], r21
00056c  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
000570  17435302  srl.d r[7:8], r[7:8], r5
000574  17031303  and.d r[7:8], r[7:8], r[18:19]
000578  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
00057c  8b1a0b58  neg.s r21, r22
000580  1f0b4000  addli r22, zero, 32
000584  33840a28  zext_int2long r[9:10], r21
000588  9f1a0000  addli r21, zero, 1
00058c  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
000590  33840a28  zext_int2long r[9:10], r21
000594  17435302  srl.d r[7:8], r[7:8], r5
000598  1f73f3ff  addli r6, r6, -1
00059c  33030328  zext_int2long r[7:8], r6
0005a0  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0005a4  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
0005a8  97c76703  srl.d r[16:17], r[16:17], r22
0005ac  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
0005b0  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
0005b4  97071403  and.d r[16:17], r[9:10], r[18:19]
0005b8  17446403  srl.d r[9:10], r[9:10], r22
0005bc  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0005c0  97cb5702  srl.d r[24:25], r[16:17], r5
0005c4  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
0005c8  97b75603  sll.d r[16:17], r[14:15], r21
0005cc  abf41f00  lui r9, 511
0005d0  97b25203  sll.d r[6:7], r[6:7], r21
0005d4  97cc6703  srl.d r[26:27], r[16:17], r22
0005d8  978d3703  and.d r[28:29], r[16:17], r[20:21]
0005dc  1b96f4ff  ori r12, r9, 4095
0005e0  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
0005e4  a7f232fe  addli.d r[6:7], r[6:7], 32543
0005e8  97831203  and.d r[8:9], r[6:7], r[18:19]
0005ec  97c26203  srl.d r[6:7], r[6:7], r22
0005f0  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
0005f4  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
0005f8  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
0005fc  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
000600  97881303  and.d r[18:19], r[8:9], r[18:19]
000604  97cb6b03  srl.d r[24:25], r[24:25], r22
000608  97cc6d03  srl.d r[26:27], r[28:29], r22
00060c  97893d03  and.d r[20:21], r[28:29], r[20:21]
000610  97c36303  srl.d r[8:9], r[8:9], r22
000614  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
000618  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
00061c  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
000620  0b227210  add.ul r[5:6], r[5:6], r[8:9]
000624  17c36803  srl.d r[7:8], r[18:19], r22
000628  0b226210  add.ul r[5:6], r[5:6], r[7:8]
00062c  13a34504  setlt.ul r6, r[12:13], r[5:6]
000630  3b710300  bneq r6, zero, 92
000634  1f536000  addli r6, zero, 53
000638  eb540ffc  load.d r[10:11], -64(r30)
00063c  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
000640  9fe0f007  addli r1, r1, 1022
000644  97b46402  sll.d r[10:11], r[10:11], r6
000648  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
00064c  1f73f00f  addli r6, zero, 2047
000650  3fa06000  blt.s r1, r6, 8
000654  5b0c0000  j 96
000658  1f150000  addli r10, zero, 1
00065c  bfb1a000  blt.s r1, r10, 108
000660  2bf30f00  lui r6, 255
000664  abf3ffff  lui r7, 1048575
000668  b3850028  zext_int2long r[12:13], r1
00066c  9f406000  addli r1, zero, 52
000670  1734a402  sll.d r[9:10], r[9:10], r10
000674  1b17f3ff  ori r14, r6, 4095
000678  97b51502  sll.d r[12:13], r[12:13], r1
00067c  9b96f3ff  ori r13, r7, 4095
000680  1702d202  and.d r[5:6], r[5:6], r[14:15]
000684  17924502  or.d r[5:6], r[12:13], r[5:6]
000688  db140000  j 164
00068c  17425203  srl.d r[5:6], r[5:6], r21
000690  1f436000  addli r6, zero, 52
000694  eb530ffc  load.d r[8:9], -64(r30)
000698  9ff0f007  addli r1, r1, 1023
00069c  eb578ffb  load.d r[16:17], -72(r30)
0006a0  17b36302  sll.d r[7:8], r[8:9], r6
0006a4  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
0006a8  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
0006ac  1f73f00f  addli r6, zero, 2047
0006b0  bfae60fe  blt.s r1, r6, -88
0006b4  2b01f07f  lui r2, 524032
0006b8  eb518ffc  load.d r[4:5], -56(r30)
0006bc  9f000000  addli r1, zero, 0
0006c0  17911102  or.d r[3:4], r[4:5], r[2:3]
0006c4  db100000  j 132
0006c8  2bf3ffff  lui r6, 1048575
0006cc  1b13b3fc  ori r6, r6, 4043
0006d0  bf701300  blt.s r6, r1, 60
0006d4  6b518ffc  load.d r[3:4], -56(r30)
0006d8  5b0e0000  j 112
0006dc  ab02f07f  lui r5, 524032
0006e0  1f020000  addli r4, zero, 0
0006e4  93a64702  setneq.d r13, r[16:17], r[5:6]
0006e8  3be20600  bneq r13, zero, 152
0006ec  1f020000  addli r4, zero, 0
0006f0  13214100  seteq.d r2, r[3:4], r[5:6]
0006f4  b7060100  beq r2, zero, 416
0006f8  ab01f87f  lui r3, 524160
0006fc  9f060000  addli r13, zero, 0
000700  1f020000  addli r4, zero, 0
000704  1f010000  addli r2, zero, 0
000708  5bbaffff  j -560
00070c  9f130000  addli r7, zero, 1
000710  1fc36000  addli r6, r1, 52
000714  8b901318  sub.s r1, r7, r1
000718  17b46702  sll.d r[9:10], r[16:17], r6
00071c  17421202  srl.d r[5:6], r[5:6], r1
000720  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
000724  17337502  sll.d r[7:8], r[11:12], r7
000728  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
00072c  23031200  andi.d r[7:8], r[5:6], 1
000730  0b238310  add.ul r[7:8], r[7:8], r[9:10]
000734  93206104  setlt.ul r1, r[3:4], r[7:8]
000738  b3800028  zext_int2long r[2:3], r1
00073c  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000740  eb518ffc  load.d r[4:5], -56(r30)
000744  17913002  or.d r[3:4], r[2:3], r[4:5]
000748  e38f3e00  loadli.w r31,  24(sp)
00074c  63cf3e00  loadli.w r30,  28(sp)
000750  638e4e00  loadli.w r28,  32(sp)
000754  e3cd4e00  loadli.w r27,  36(sp)
000758  638d5e00  loadli.w r26,  40(sp)
00075c  e3cc5e00  loadli.w r25,  44(sp)
000760  638c6e00  loadli.w r24,  48(sp)
000764  e3cb6e00  loadli.w r23,  52(sp)
000768  638b7e00  loadli.w r22,  56(sp)
00076c  e3ca7e00  loadli.w r21,  60(sp)
000770  638a8e00  loadli.w r20,  64(sp)
000774  e3c98e00  loadli.w r19,  68(sp)
000778  9f8e9e00  addli sp, sp, 72
00077c  5f800f00  jr r31, 0
000780  1f020000  addli r4, zero, 0
000784  13224102  setneq.d r4, r[3:4], r[5:6]
000788  3b500200  bneq r4, zero, 20
00078c  9f060000  addli r13, zero, 0
000790  1f020000  addli r4, zero, 0
000794  27010300  addli.d r[3:4], r[7:8], 0
000798  5ba8ffff  j -704
00079c  33020028  zext_int2long r[5:6], zero
0007a0  13a24702  setneq.d r4, r[16:17], r[5:6]
0007a4  37240200  beq r4, zero, 264
0007a8  33020028  zext_int2long r[5:6], zero
0007ac  13224102  setneq.d r4, r[3:4], r[5:6]
0007b0  b7130200  beq r4, zero, 228
0007b4  2bf20f00  lui r4, 255
0007b8  abf2ffff  lui r5, 1048575
0007bc  1b17f2ff  ori r14, r4, 4095
0007c0  9b96f2ff  ori r13, r5, 4095
0007c4  13a2f604  setlt.ul r4, r[14:15], r[16:17]
0007c8  bb630200  bneq r4, zero, 248
0007cc  9f120000  addli r5, zero, 1
0007d0  9f270000  addli r15, zero, 2
0007d4  1f420000  addli r4, zero, 4
0007d8  1f081000  addli r16, zero, 8
0007dc  97485402  srl.d r[18:19], r[9:10], r5
0007e0  97181403  or.d r[18:19], r[9:10], r[18:19]
0007e4  97c9f802  srl.d r[20:21], r[18:19], r15
0007e8  97983803  or.d r[18:19], r[18:19], r[20:21]
0007ec  97c94802  srl.d r[20:21], r[18:19], r4
0007f0  97983803  or.d r[18:19], r[18:19], r[20:21]
0007f4  9f092000  addli r19, zero, 16
0007f8  17ca0803  srl.d r[21:22], r[18:19], r16
0007fc  17984803  or.d r[17:18], r[18:19], r[21:22]
000800  1f094000  addli r18, zero, 32
000804  97493803  srl.d r[20:21], r[17:18], r19
000808  17183803  or.d r[17:18], r[17:18], r[20:21]
00080c  2b5a5555  lui r20, 349525
000810  17492803  srl.d r[19:20], r[17:18], r18
000814  17182803  or.d r[17:18], r[17:18], r[19:20]
000818  33990628  sext_int2long r[19:20], r13
00081c  17282803  xor.d r[17:18], r[17:18], r[19:20]
000820  1b195a55  ori r18, r20, 1365
000824  174a5802  srl.d r[21:22], r[17:18], r5
000828  9f090900  addli r19, r18, 0
00082c  ab323333  lui r5, 209715
000830  17092a03  and.d r[19:20], r[21:22], r[19:20]
000834  1b9a3233  ori r20, r5, 819
000838  ab020f0f  lui r5, 61680
00083c  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
000840  9f0a0a00  addli r21, r20, 0
000844  1749f802  srl.d r[19:20], r[17:18], r15
000848  97074803  and.d r[16:17], r[17:18], r[21:22]
00084c  97084903  and.d r[18:19], r[19:20], r[21:22]
000850  ab090101  lui r19, 4112
000854  1f0a7000  addli r20, zero, 56
000858  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
00085c  97c84702  srl.d r[18:19], r[16:17], r4
000860  1b92f2f0  ori r4, r5, 3855
000864  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
000868  9f020200  addli r5, r4, 0
00086c  9f481000  addli r17, zero, 12
000870  17824702  and.d r[5:6], r[16:17], r[5:6]
000874  9b971910  ori r15, r19, 257
000878  1f880700  addli r16, r15, 0
00087c  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
000880  17424203  srl.d r[5:6], r[5:6], r20
000884  9f57e2ff  addli r15, r4, -11
000888  0b924818  sub.s r4, r17, r4
00088c  1734f402  sll.d r[9:10], r[9:10], r15
000890  db060000  j 52
000894  ab01f07f  lui r3, 524032
000898  9f060000  addli r13, zero, 0
00089c  1f020000  addli r4, zero, 0
0008a0  1f010000  addli r2, zero, 0
0008a4  17112302  or.d r[3:4], r[7:8], r[3:4]
0008a8  5b86ffff  j -976
0008ac  33020028  zext_int2long r[5:6], zero
0008b0  13214100  seteq.d r2, r[3:4], r[5:6]
0008b4  bb430100  bneq r2, zero, 240
0008b8  27010300  addli.d r[3:4], r[7:8], 0
0008bc  5b1e0000  j 240
0008c0  1f020000  addli r4, zero, 0
0008c4  13a12604  setlt.ul r2, r[14:15], r[3:4]
0008c8  3b530100  bneq r2, zero, 212
0008cc  9f160000  addli r13, zero, 1
0008d0  9f210000  addli r3, zero, 2
0008d4  1f410000  addli r2, zero, 4
0008d8  9f021000  addli r5, zero, 8
0008dc  1f072000  addli r14, zero, 16
0008e0  97c7d502  srl.d r[16:17], r[12:13], r13
0008e4  9797f502  or.d r[16:17], r[12:13], r[16:17]
0008e8  97c83702  srl.d r[18:19], r[16:17], r3
0008ec  97971703  or.d r[16:17], r[16:17], r[18:19]
0008f0  97c82702  srl.d r[18:19], r[16:17], r2
0008f4  97971703  or.d r[16:17], r[16:17], r[18:19]
0008f8  97c85702  srl.d r[18:19], r[16:17], r5
0008fc  9f024000  addli r5, zero, 32
000900  97971703  or.d r[16:17], r[16:17], r[18:19]
000904  97c8e702  srl.d r[18:19], r[16:17], r14
000908  2bf7ffff  lui r14, 1048575
00090c  97971703  or.d r[16:17], r[16:17], r[18:19]
000910  1b17f7ff  ori r14, r14, 4095
000914  97c85702  srl.d r[18:19], r[16:17], r5
000918  ab525555  lui r5, 349525
00091c  97971703  or.d r[16:17], r[16:17], r[18:19]
000920  b3180728  sext_int2long r[18:19], r14
000924  9b995255  ori r19, r5, 1365
000928  ab323333  lui r5, 209715
00092c  17a71703  xor.d r[15:16], r[16:17], r[18:19]
000930  1f8a0900  addli r20, r19, 0
000934  1748d702  srl.d r[17:18], r[15:16], r13
000938  17083803  and.d r[17:18], r[17:18], r[20:21]
00093c  1b993233  ori r18, r5, 819
000940  ab020101  lui r5, 4112
000944  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
000948  9f090900  addli r19, r18, 0
00094c  17483702  srl.d r[17:18], r[15:16], r3
000950  17072703  and.d r[15:16], r[15:16], r[19:20]
000954  ab010f0f  lui r3, 61680
000958  17082803  and.d r[17:18], r[17:18], r[19:20]
00095c  1b99f1f0  ori r18, r3, 3855
000960  0b270711  add.ul r[15:16], r[15:16], r[17:18]
000964  9f090900  addli r19, r18, 0
000968  17412702  srl.d r[3:4], r[15:16], r2
00096c  0b212710  add.ul r[3:4], r[15:16], r[3:4]
000970  1b971210  ori r14, r5, 257
000974  9f027000  addli r5, zero, 56
000978  17012103  and.d r[3:4], r[3:4], r[19:20]
00097c  9f070700  addli r15, r14, 0
000980  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
000984  17415102  srl.d r[3:4], r[3:4], r5
000988  9f52e1ff  addli r5, r2, -11
00098c  0b114110  add.s r2, r2, r4
000990  97b55502  sll.d r[12:13], r[12:13], r5
000994  1f42e1ff  addli r4, r2, -12
000998  5b010000  j 8
00099c  9f160000  addli r13, zero, 1
0009a0  5b67ffff  j -1224
0009a4  ab01f87f  lui r3, 524160
0009a8  1f010000  addli r2, zero, 0
0009ac  9f060000  addli r13, zero, 0
0009b0  db64ffff  j -1244
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
