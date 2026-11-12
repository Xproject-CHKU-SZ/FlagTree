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
000078  9f095000  addli r19, zero, 40
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
0000dc  9f8e8efd  addli sp, sp, -320
0000e0  1f8f0e02  addli r30, sp, 256
0000e4  00520002  load_param_i r4, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  67411ffe  storeli.w r1, -236(r30)
000100  4bdb4000  ble.s r1, r4, 724
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  2b03f03f  lui r6, 261888
000110  9f020000  addli r5, zero, 0
000114  9bb04000  slli r1, r1, 4
000118  67012ffe  storeli.w r2, -240(r30)
00011c  2bb1a73e  lui r2, 256635
000120  73385ff2  store.d r[6:7], -208(r30)
000124  e7401ffe  storeli.w r1, -244(r30)
000128  ab00353f  lui r1, 258896
00012c  9b90304f  ori r1, r1, 1267
000130  e7431ffe  storeli.w r1, -196(r30)
000134  9b1051a0  ori r1, r2, 2565
000138  2bf1b53f  lui r2, 260959
00013c  e7031ffe  storeli.w r1, -200(r30)
000140  ab00babf  lui r1, 785312
000144  9b90300e  ori r1, r1, 227
000148  e7421ffe  storeli.w r1, -212(r30)
00014c  abd0873f  lui r1, 260221
000150  9b9020c2  ori r1, r1, 3106
000154  e7021ffe  storeli.w r1, -216(r30)
000158  9b10310e  ori r1, r2, 227
00015c  2b71823e  lui r2, 256039
000160  67421ffe  storeli.w r1, -220(r30)
000164  aba091be  lui r1, 780570
000168  9b1c6190  ori r25, r2, 2310
00016c  1b9ee098  ori r28, r1, 2446
000170  5b090000  j 72
000174  6b518ff1  load.d r[3:4], -232(r30)
000178  9f200000  addli r1, zero, 2
00017c  6b520f01  load.d r[5:6], 16(r30)
000180  97301102  sll.d r[2:3], r[3:4], r1
000184  ab0100f0  lui r3, 983040
000188  8b201210  add.ul r[2:3], r[5:6], r[2:3]
00018c  1f028000  addli r4, zero, 64
000190  97113200  or r3, r4, r3
000194  1f028fff  addli r4, r30, -64
000198  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00019c  63024ffe  loadli.w r4,  -224(r30)
0001a0  e3002ffe  loadli.w r1,  -240(r30)
0001a4  00a00000  mfence { lm }
0001a8  0b121210  add.s r4, r4, r1
0001ac  e3402ffe  loadli.w r1,  -236(r30)
0001b0  3f201200  blt.s r4, r1, 8
0001b4  5b440000  j 544
0001b8  e3404f00  loadli.w r1,  36(r30)
0001bc  63014f00  loadli.w r2,  32(r30)
0001c0  67024ffe  storeli.w r4, -224(r30)
0001c4  ab0100f0  lui r3, 983040
0001c8  6b540f00  load.d r[9:10], 0(r30)
0001cc  1f0b0000  addli r22, zero, 0
0001d0  8b101230  div.s r1, r4, r1
0001d4  1f024000  addli r4, zero, 32
0001d8  97113200  or r3, r4, r3
0001dc  8b902030  div.s r1, r1, r2
0001e0  63411ffe  loadli.w r2,  -244(r30)
0001e4  9bb0a000  slli r1, r1, 10
0001e8  8b902010  add.s r1, r1, r2
0001ec  1f010010  addli r2, zero, 2048
0001f0  0b912038  mod.s r2, r1, r2
0001f4  33930028  sext_int2long r[7:8], r1
0001f8  ab0000f0  lui r1, 983040
0001fc  97101200  or r1, r4, r1
000200  733c6ff0  store.d r[7:8], -232(r30)
000204  33120128  sext_int2long r[5:6], r2
000208  1f110000  addli r2, zero, 1
00020c  17332302  sll.d r[7:8], r[7:8], r2
000210  17322202  sll.d r[5:6], r[5:6], r2
000214  1f018ffe  addli r2, r30, -192
000218  0b236410  add.ul r[7:8], r[9:10], r[7:8]
00021c  6b548f00  load.d r[9:10], 8(r30)
000220  9f2a0100  addli r21, r2, 2
000224  ff212300  l_gm2lm r3, r2, 0(r[7:8])
000228  9f010fff  addli r3, r30, -128
00022c  0b224410  add.ul r[5:6], r[9:10], r[5:6]
000230  9fa90100  addli r19, r3, 2
000234  ff203200  l_gm2lm r1, r3, 0(r[5:6])
000238  00a00000  mfence { lm }
00023c  db090000  j 76
000240  ab02803f  lui r5, 260096
000244  ab01003f  lui r3, 258048
000248  9fca0a00  addli r21, r21, 4
00024c  9fc90900  addli r19, r19, 4
000250  0b613a20  mul.f.rn r2, r20, r3
000254  0b625d10  add.f.rn r4, r26, r5
000258  8be13b20  mul.f.rn r3, r23, r3
00025c  8be05010  add.f.rn r1, r1, r5
000260  8be01120  mul.f.rn r1, r3, r1
000264  0b614120  mul.f.rn r2, r2, r4
000268  9f018fff  addli r3, r30, -64
00026c  8b916111  add.s r3, r3, r22
000270  1f0b1b00  addli r22, r22, 8
000274  67c01100  storeli.w r1, 4(r3)
000278  67802100  storeli.w r2, 0(r3)
00027c  9f008000  addli r1, zero, 64
000280  00a00000  mfence { lm }
000284  b74b1bfe  beq r22, r1, -272
000288  ebb0eaff  load.hu r1, -2(r21)
00028c  6bb1e9ff  load.hu r2, -2(r19)
000290  ebbb0a00  load.hu r23, 0(r21)
000294  ebbd0900  load.hu r27, 0(r19)
000298  b3900020  hfloat2float.rn r1, r1
00029c  33110120  hfloat2float.rn r2, r2
0002a0  0bea2010  add.f.rn r20, r1, r2
0002a4  e3407ffe  loadli.w r1,  -196(r30)
0002a8  63017ffe  loadli.w r2,  -200(r30)
0002ac  8b601a20  mul.f.rn r1, r20, r1
0002b0  0bed0060  abs.f r26, r1
0002b4  1bb29000  slli r4, r1, 9
0002b8  0b612d20  mul.f.rn r2, r26, r2
0002bc  13030200  seteq r6, r4, zero
0002c0  8f230108  .word 0x0801238f
0002c4  6b510ff3  load.d r[3:4], -208(r30)
0002c8  0f922320  .word 0x2023920f
0002cc  9bc37001  srli r7, r1, 23
0002d0  93e00004  setlt.f r1, r1, zero
0002d4  9b83f30f  andi r7, r7, 255
0002d8  9bf3f30f  setlti r7, r7, 255
0002dc  17936300  or r6, r7, r6
0002e0  178c6000  and r24, r1, r6
0002e4  577c0000  jal 992
0002e8  8f300110  .word 0x1001308f
0002ec  63415ffe  loadli.w r2,  -212(r30)
0002f0  e3015ffe  loadli.w r3,  -216(r30)
0002f4  0b620d58  neg.f r4, r26
0002f8  0be13050  fmac.f.rn r2, r1, r3
0002fc  e3414ffe  loadli.w r3,  -220(r30)
000300  8b611150  fmac.f.rn r3, r2, r1
000304  1f010e00  addli r2, r28, 0
000308  0be11150  fmac.f.rn r2, r3, r1
00030c  9f810c00  addli r3, r25, 0
000310  8b611150  fmac.f.rn r3, r2, r1
000314  0b614d20  mul.f.rn r2, r26, r4
000318  2b0d803f  lui r26, 260096
00031c  8be10158  neg.f r3, r3
000320  0f010100  exp.f.rn r2, r2
000324  8be03020  mul.f.rn r1, r1, r3
000328  0bed2050  fmac.f.rn r26, r1, r2
00032c  37200c00  beq r24, zero, 8
000330  0b6d0d58  neg.f r26, r26
000334  b3900b20  hfloat2float.rn r1, r23
000338  33910d20  hfloat2float.rn r2, r27
00033c  8beb2010  add.f.rn r23, r1, r2
000340  e3407ffe  loadli.w r1,  -196(r30)
000344  63017ffe  loadli.w r2,  -200(r30)
000348  8be01b20  mul.f.rn r1, r23, r1
00034c  0bec0060  abs.f r24, r1
000350  1bb29000  slli r4, r1, 9
000354  0b612c20  mul.f.rn r2, r24, r2
000358  13030200  seteq r6, r4, zero
00035c  8f230108  .word 0x0801238f
000360  6b510ff3  load.d r[3:4], -208(r30)
000364  0f922320  .word 0x2023920f
000368  9bc37001  srli r7, r1, 23
00036c  93e00004  setlt.f r1, r1, zero
000370  9b83f30f  andi r7, r7, 255
000374  9bf3f30f  setlti r7, r7, 255
000378  17936300  or r6, r7, r6
00037c  978d6000  and r27, r1, r6
000380  577c0000  jal 992
000384  8f300110  .word 0x1001308f
000388  63415ffe  loadli.w r2,  -212(r30)
00038c  e3015ffe  loadli.w r3,  -216(r30)
000390  0b620c58  neg.f r4, r24
000394  0be13050  fmac.f.rn r2, r1, r3
000398  e3414ffe  loadli.w r3,  -220(r30)
00039c  8b611150  fmac.f.rn r3, r2, r1
0003a0  1f010e00  addli r2, r28, 0
0003a4  0be11150  fmac.f.rn r2, r3, r1
0003a8  9f810c00  addli r3, r25, 0
0003ac  8b611150  fmac.f.rn r3, r2, r1
0003b0  0b614c20  mul.f.rn r2, r24, r4
0003b4  8be10158  neg.f r3, r3
0003b8  0f010100  exp.f.rn r2, r2
0003bc  8be13020  mul.f.rn r3, r1, r3
0003c0  ab00803f  lui r1, 260096
0003c4  8be02150  fmac.f.rn r1, r3, r2
0003c8  b7e90dfe  beq r27, zero, -392
0003cc  8be00058  neg.f r1, r1
0003d0  5bceffff  j -400
0003d4  9f8e0e02  addli sp, sp, 256
0003d8  00a00300  mfence { lm, sm, gm }
0003dc  00100000  exit
0003e0  9f8e7eff  addli sp, sp, -72
0003e4  9f406000  addli r1, zero, 52
0003e8  2bf50f00  lui r10, 255
0003ec  abf7ffff  lui r15, 1048575
0003f0  ab040080  lui r9, 524288
0003f4  17232202  xor.d r[7:8], r[5:6], r[3:4]
0003f8  e7c1ee01  storeli.w r30, 28(sp)
0003fc  67c43e01  storeli.w r19, 68(sp)
000400  67844e01  storeli.w r20, 64(sp)
000404  e7c35e01  storeli.w r21, 60(sp)
000408  e7836e01  storeli.w r22, 56(sp)
00040c  67c37e01  storeli.w r23, 52(sp)
000410  67838e01  storeli.w r24, 48(sp)
000414  e7c29e01  storeli.w r25, 44(sp)
000418  e782ae01  storeli.w r26, 40(sp)
00041c  67c2be01  storeli.w r27, 36(sp)
000420  6782ce01  storeli.w r28, 32(sp)
000424  e781fe01  storeli.w r31, 24(sp)
000428  1f8f9e00  addli r30, sp, 72
00042c  1f040000  addli r8, zero, 0
000430  97451102  srl.d r[12:13], r[3:4], r1
000434  17481202  srl.d r[17:18], r[5:6], r1
000438  1b17f5ff  ori r14, r10, 4095
00043c  9b96f7ff  ori r13, r15, 4095
000440  17038302  and.d r[7:8], r[7:8], r[9:10]
000444  9b80f57f  andi r1, r11, 2047
000448  1b05f87f  andi r10, r16, 2047
00044c  9b982780  ori r17, r15, 2050
000450  1704d102  and.d r[9:10], r[3:4], r[14:15]
000454  9705d202  and.d r[12:13], r[5:6], r[14:15]
000458  1f9800f0  addli r16, r1, -2047
00045c  13081805  setlt.u r16, r16, r17
000460  3b700800  bneq r16, zero, 28
000464  1f1805f0  addli r16, r10, -2047
000468  9b971780  ori r15, r15, 2049
00046c  93870705  setlt.u r15, r15, r16
000470  37b00700  beq r15, zero, 12
000474  1f020000  addli r4, zero, 0
000478  5b0b0000  j 88
00047c  abf7ff7f  lui r15, 524287
000480  2b09f07f  lui r18, 524032
000484  9f180000  addli r17, zero, 1
000488  1b97f7ff  ori r14, r15, 4095
00048c  9707d102  and.d r[16:17], r[3:4], r[14:15]
000490  93a91705  setlt.ul r19, r[16:17], r[18:19]
000494  3be00900  bneq r19, zero, 24
000498  ab020800  lui r5, 128
00049c  9f060000  addli r13, zero, 0
0004a0  1f020000  addli r4, zero, 0
0004a4  17114102  or.d r[3:4], r[3:4], r[5:6]
0004a8  5b040000  j 32
0004ac  1701d202  and.d r[3:4], r[5:6], r[14:15]
0004b0  93261105  setlt.ul r13, r[3:4], r[18:19]
0004b4  3bf80600  bneq r13, zero, 540
0004b8  ab010800  lui r3, 128
0004bc  9f060000  addli r13, zero, 0
0004c0  1f010000  addli r2, zero, 0
0004c4  17112202  or.d r[3:4], r[5:6], r[3:4]
0004c8  1f020000  addli r4, zero, 0
0004cc  b7c90600  beq r13, zero, 624
0004d0  ab011000  lui r3, 256
0004d4  9f371000  addli r15, zero, 11
0004d8  abf9ffff  lui r19, 1048575
0004dc  2bf90475  lui r18, 479311
0004e0  9f582000  addli r17, zero, 21
0004e4  73346ffc  store.d r[7:8], -56(r30)
0004e8  9f723000  addli r5, zero, 31
0004ec  73308ffc  store.d r[9:10], -64(r30)
0004f0  8b90a018  sub.s r1, r1, r10
0004f4  1f010000  addli r2, zero, 0
0004f8  97b7f502  sll.d r[16:17], r[12:13], r15
0004fc  9b1a3933  ori r21, r18, 819
000500  8b101210  add.s r1, r4, r1
000504  97162402  or.d r[14:15], r[9:10], r[3:4]
000508  17912502  or.d r[3:4], r[12:13], r[3:4]
00050c  9b950980  ori r11, r19, 2048
000510  733cdffa  store.d r[14:15], -72(r30)
000514  338c0528  zext_int2long r[25:26], r11
000518  174b1103  srl.d r[23:24], r[3:4], r17
00051c  9b95f9ff  ori r11, r19, 4095
000520  9b99e9ff  ori r19, r19, 4094
000524  b3880528  zext_int2long r[18:19], r11
000528  8b9a6a19  sub.s r21, r21, r22
00052c  97878703  and.d r[16:17], r[16:17], r[25:26]
000530  b3890928  zext_int2long r[20:21], r19
000534  170d1b03  and.d r[27:28], r[23:24], r[18:19]
000538  b38a0a28  zext_int2long r[22:23], r21
00053c  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
000540  0b930358  neg.s r6, r7
000544  33030328  zext_int2long r[7:8], r6
000548  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
00054c  17435302  srl.d r[7:8], r[7:8], r5
000550  17031303  and.d r[7:8], r[7:8], r[18:19]
000554  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
000558  8b1a0b58  neg.s r21, r22
00055c  b38a0a28  zext_int2long r[22:23], r21
000560  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
000564  17435302  srl.d r[7:8], r[7:8], r5
000568  17031303  and.d r[7:8], r[7:8], r[18:19]
00056c  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
000570  8b1a0b58  neg.s r21, r22
000574  1f0b4000  addli r22, zero, 32
000578  33840a28  zext_int2long r[9:10], r21
00057c  9f1a0000  addli r21, zero, 1
000580  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
000584  33840a28  zext_int2long r[9:10], r21
000588  17435302  srl.d r[7:8], r[7:8], r5
00058c  1f73f3ff  addli r6, r6, -1
000590  33030328  zext_int2long r[7:8], r6
000594  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
000598  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
00059c  97c76703  srl.d r[16:17], r[16:17], r22
0005a0  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
0005a4  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
0005a8  97071403  and.d r[16:17], r[9:10], r[18:19]
0005ac  17446403  srl.d r[9:10], r[9:10], r22
0005b0  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0005b4  97cb5702  srl.d r[24:25], r[16:17], r5
0005b8  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
0005bc  97b75603  sll.d r[16:17], r[14:15], r21
0005c0  abf41f00  lui r9, 511
0005c4  97b25203  sll.d r[6:7], r[6:7], r21
0005c8  97cc6703  srl.d r[26:27], r[16:17], r22
0005cc  978d3703  and.d r[28:29], r[16:17], r[20:21]
0005d0  1b96f4ff  ori r12, r9, 4095
0005d4  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
0005d8  a7f232fe  addli.d r[6:7], r[6:7], 32543
0005dc  97831203  and.d r[8:9], r[6:7], r[18:19]
0005e0  97c26203  srl.d r[6:7], r[6:7], r22
0005e4  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
0005e8  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
0005ec  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
0005f0  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
0005f4  97881303  and.d r[18:19], r[8:9], r[18:19]
0005f8  97cb6b03  srl.d r[24:25], r[24:25], r22
0005fc  97cc6d03  srl.d r[26:27], r[28:29], r22
000600  97893d03  and.d r[20:21], r[28:29], r[20:21]
000604  97c36303  srl.d r[8:9], r[8:9], r22
000608  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
00060c  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
000610  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
000614  0b227210  add.ul r[5:6], r[5:6], r[8:9]
000618  17c36803  srl.d r[7:8], r[18:19], r22
00061c  0b226210  add.ul r[5:6], r[5:6], r[7:8]
000620  13a34504  setlt.ul r6, r[12:13], r[5:6]
000624  3b710300  bneq r6, zero, 92
000628  1f536000  addli r6, zero, 53
00062c  eb540ffc  load.d r[10:11], -64(r30)
000630  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
000634  9fe0f007  addli r1, r1, 1022
000638  97b46402  sll.d r[10:11], r[10:11], r6
00063c  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
000640  1f73f00f  addli r6, zero, 2047
000644  3fa06000  blt.s r1, r6, 8
000648  5b0c0000  j 96
00064c  1f150000  addli r10, zero, 1
000650  bfb1a000  blt.s r1, r10, 108
000654  2bf30f00  lui r6, 255
000658  abf3ffff  lui r7, 1048575
00065c  b3850028  zext_int2long r[12:13], r1
000660  9f406000  addli r1, zero, 52
000664  1734a402  sll.d r[9:10], r[9:10], r10
000668  1b17f3ff  ori r14, r6, 4095
00066c  97b51502  sll.d r[12:13], r[12:13], r1
000670  9b96f3ff  ori r13, r7, 4095
000674  1702d202  and.d r[5:6], r[5:6], r[14:15]
000678  17924502  or.d r[5:6], r[12:13], r[5:6]
00067c  db140000  j 164
000680  17425203  srl.d r[5:6], r[5:6], r21
000684  1f436000  addli r6, zero, 52
000688  eb530ffc  load.d r[8:9], -64(r30)
00068c  9ff0f007  addli r1, r1, 1023
000690  eb578ffb  load.d r[16:17], -72(r30)
000694  17b36302  sll.d r[7:8], r[8:9], r6
000698  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
00069c  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
0006a0  1f73f00f  addli r6, zero, 2047
0006a4  bfae60fe  blt.s r1, r6, -88
0006a8  2b01f07f  lui r2, 524032
0006ac  eb518ffc  load.d r[4:5], -56(r30)
0006b0  9f000000  addli r1, zero, 0
0006b4  17911102  or.d r[3:4], r[4:5], r[2:3]
0006b8  db100000  j 132
0006bc  2bf3ffff  lui r6, 1048575
0006c0  1b13b3fc  ori r6, r6, 4043
0006c4  bf701300  blt.s r6, r1, 60
0006c8  6b518ffc  load.d r[3:4], -56(r30)
0006cc  5b0e0000  j 112
0006d0  ab02f07f  lui r5, 524032
0006d4  1f020000  addli r4, zero, 0
0006d8  93a64702  setneq.d r13, r[16:17], r[5:6]
0006dc  3be20600  bneq r13, zero, 152
0006e0  1f020000  addli r4, zero, 0
0006e4  13214100  seteq.d r2, r[3:4], r[5:6]
0006e8  b7060100  beq r2, zero, 416
0006ec  ab01f87f  lui r3, 524160
0006f0  9f060000  addli r13, zero, 0
0006f4  1f020000  addli r4, zero, 0
0006f8  1f010000  addli r2, zero, 0
0006fc  5bbaffff  j -560
000700  9f130000  addli r7, zero, 1
000704  1fc36000  addli r6, r1, 52
000708  8b901318  sub.s r1, r7, r1
00070c  17b46702  sll.d r[9:10], r[16:17], r6
000710  17421202  srl.d r[5:6], r[5:6], r1
000714  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
000718  17337502  sll.d r[7:8], r[11:12], r7
00071c  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
000720  23031200  andi.d r[7:8], r[5:6], 1
000724  0b238310  add.ul r[7:8], r[7:8], r[9:10]
000728  93206104  setlt.ul r1, r[3:4], r[7:8]
00072c  b3800028  zext_int2long r[2:3], r1
000730  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000734  eb518ffc  load.d r[4:5], -56(r30)
000738  17913002  or.d r[3:4], r[2:3], r[4:5]
00073c  e38f3e00  loadli.w r31,  24(sp)
000740  63cf3e00  loadli.w r30,  28(sp)
000744  638e4e00  loadli.w r28,  32(sp)
000748  e3cd4e00  loadli.w r27,  36(sp)
00074c  638d5e00  loadli.w r26,  40(sp)
000750  e3cc5e00  loadli.w r25,  44(sp)
000754  638c6e00  loadli.w r24,  48(sp)
000758  e3cb6e00  loadli.w r23,  52(sp)
00075c  638b7e00  loadli.w r22,  56(sp)
000760  e3ca7e00  loadli.w r21,  60(sp)
000764  638a8e00  loadli.w r20,  64(sp)
000768  e3c98e00  loadli.w r19,  68(sp)
00076c  9f8e9e00  addli sp, sp, 72
000770  5f800f00  jr r31, 0
000774  1f020000  addli r4, zero, 0
000778  13224102  setneq.d r4, r[3:4], r[5:6]
00077c  3b500200  bneq r4, zero, 20
000780  9f060000  addli r13, zero, 0
000784  1f020000  addli r4, zero, 0
000788  27010300  addli.d r[3:4], r[7:8], 0
00078c  5ba8ffff  j -704
000790  33020028  zext_int2long r[5:6], zero
000794  13a24702  setneq.d r4, r[16:17], r[5:6]
000798  37240200  beq r4, zero, 264
00079c  33020028  zext_int2long r[5:6], zero
0007a0  13224102  setneq.d r4, r[3:4], r[5:6]
0007a4  b7130200  beq r4, zero, 228
0007a8  2bf20f00  lui r4, 255
0007ac  abf2ffff  lui r5, 1048575
0007b0  1b17f2ff  ori r14, r4, 4095
0007b4  9b96f2ff  ori r13, r5, 4095
0007b8  13a2f604  setlt.ul r4, r[14:15], r[16:17]
0007bc  bb630200  bneq r4, zero, 248
0007c0  9f120000  addli r5, zero, 1
0007c4  9f270000  addli r15, zero, 2
0007c8  1f420000  addli r4, zero, 4
0007cc  1f081000  addli r16, zero, 8
0007d0  97485402  srl.d r[18:19], r[9:10], r5
0007d4  97181403  or.d r[18:19], r[9:10], r[18:19]
0007d8  97c9f802  srl.d r[20:21], r[18:19], r15
0007dc  97983803  or.d r[18:19], r[18:19], r[20:21]
0007e0  97c94802  srl.d r[20:21], r[18:19], r4
0007e4  97983803  or.d r[18:19], r[18:19], r[20:21]
0007e8  9f092000  addli r19, zero, 16
0007ec  17ca0803  srl.d r[21:22], r[18:19], r16
0007f0  17984803  or.d r[17:18], r[18:19], r[21:22]
0007f4  1f094000  addli r18, zero, 32
0007f8  97493803  srl.d r[20:21], r[17:18], r19
0007fc  17183803  or.d r[17:18], r[17:18], r[20:21]
000800  2b5a5555  lui r20, 349525
000804  17492803  srl.d r[19:20], r[17:18], r18
000808  17182803  or.d r[17:18], r[17:18], r[19:20]
00080c  33990628  sext_int2long r[19:20], r13
000810  17282803  xor.d r[17:18], r[17:18], r[19:20]
000814  1b195a55  ori r18, r20, 1365
000818  174a5802  srl.d r[21:22], r[17:18], r5
00081c  9f090900  addli r19, r18, 0
000820  ab323333  lui r5, 209715
000824  17092a03  and.d r[19:20], r[21:22], r[19:20]
000828  1b9a3233  ori r20, r5, 819
00082c  ab020f0f  lui r5, 61680
000830  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
000834  9f0a0a00  addli r21, r20, 0
000838  1749f802  srl.d r[19:20], r[17:18], r15
00083c  97074803  and.d r[16:17], r[17:18], r[21:22]
000840  97084903  and.d r[18:19], r[19:20], r[21:22]
000844  ab090101  lui r19, 4112
000848  1f0a7000  addli r20, zero, 56
00084c  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
000850  97c84702  srl.d r[18:19], r[16:17], r4
000854  1b92f2f0  ori r4, r5, 3855
000858  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
00085c  9f020200  addli r5, r4, 0
000860  9f481000  addli r17, zero, 12
000864  17824702  and.d r[5:6], r[16:17], r[5:6]
000868  9b971910  ori r15, r19, 257
00086c  1f880700  addli r16, r15, 0
000870  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
000874  17424203  srl.d r[5:6], r[5:6], r20
000878  9f57e2ff  addli r15, r4, -11
00087c  0b924818  sub.s r4, r17, r4
000880  1734f402  sll.d r[9:10], r[9:10], r15
000884  db060000  j 52
000888  ab01f07f  lui r3, 524032
00088c  9f060000  addli r13, zero, 0
000890  1f020000  addli r4, zero, 0
000894  1f010000  addli r2, zero, 0
000898  17112302  or.d r[3:4], r[7:8], r[3:4]
00089c  5b86ffff  j -976
0008a0  33020028  zext_int2long r[5:6], zero
0008a4  13214100  seteq.d r2, r[3:4], r[5:6]
0008a8  bb430100  bneq r2, zero, 240
0008ac  27010300  addli.d r[3:4], r[7:8], 0
0008b0  5b1e0000  j 240
0008b4  1f020000  addli r4, zero, 0
0008b8  13a12604  setlt.ul r2, r[14:15], r[3:4]
0008bc  3b530100  bneq r2, zero, 212
0008c0  9f160000  addli r13, zero, 1
0008c4  9f210000  addli r3, zero, 2
0008c8  1f410000  addli r2, zero, 4
0008cc  9f021000  addli r5, zero, 8
0008d0  1f072000  addli r14, zero, 16
0008d4  97c7d502  srl.d r[16:17], r[12:13], r13
0008d8  9797f502  or.d r[16:17], r[12:13], r[16:17]
0008dc  97c83702  srl.d r[18:19], r[16:17], r3
0008e0  97971703  or.d r[16:17], r[16:17], r[18:19]
0008e4  97c82702  srl.d r[18:19], r[16:17], r2
0008e8  97971703  or.d r[16:17], r[16:17], r[18:19]
0008ec  97c85702  srl.d r[18:19], r[16:17], r5
0008f0  9f024000  addli r5, zero, 32
0008f4  97971703  or.d r[16:17], r[16:17], r[18:19]
0008f8  97c8e702  srl.d r[18:19], r[16:17], r14
0008fc  2bf7ffff  lui r14, 1048575
000900  97971703  or.d r[16:17], r[16:17], r[18:19]
000904  1b17f7ff  ori r14, r14, 4095
000908  97c85702  srl.d r[18:19], r[16:17], r5
00090c  ab525555  lui r5, 349525
000910  97971703  or.d r[16:17], r[16:17], r[18:19]
000914  b3180728  sext_int2long r[18:19], r14
000918  9b995255  ori r19, r5, 1365
00091c  ab323333  lui r5, 209715
000920  17a71703  xor.d r[15:16], r[16:17], r[18:19]
000924  1f8a0900  addli r20, r19, 0
000928  1748d702  srl.d r[17:18], r[15:16], r13
00092c  17083803  and.d r[17:18], r[17:18], r[20:21]
000930  1b993233  ori r18, r5, 819
000934  ab020101  lui r5, 4112
000938  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
00093c  9f090900  addli r19, r18, 0
000940  17483702  srl.d r[17:18], r[15:16], r3
000944  17072703  and.d r[15:16], r[15:16], r[19:20]
000948  ab010f0f  lui r3, 61680
00094c  17082803  and.d r[17:18], r[17:18], r[19:20]
000950  1b99f1f0  ori r18, r3, 3855
000954  0b270711  add.ul r[15:16], r[15:16], r[17:18]
000958  9f090900  addli r19, r18, 0
00095c  17412702  srl.d r[3:4], r[15:16], r2
000960  0b212710  add.ul r[3:4], r[15:16], r[3:4]
000964  1b971210  ori r14, r5, 257
000968  9f027000  addli r5, zero, 56
00096c  17012103  and.d r[3:4], r[3:4], r[19:20]
000970  9f070700  addli r15, r14, 0
000974  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
000978  17415102  srl.d r[3:4], r[3:4], r5
00097c  9f52e1ff  addli r5, r2, -11
000980  0b114110  add.s r2, r2, r4
000984  97b55502  sll.d r[12:13], r[12:13], r5
000988  1f42e1ff  addli r4, r2, -12
00098c  5b010000  j 8
000990  9f160000  addli r13, zero, 1
000994  5b67ffff  j -1224
000998  ab01f87f  lui r3, 524160
00099c  1f010000  addli r2, zero, 0
0009a0  9f060000  addli r13, zero, 0
0009a4  db64ffff  j -1244
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
