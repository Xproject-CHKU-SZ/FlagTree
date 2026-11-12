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
000078  9f094000  addli r19, zero, 32
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
0000dc  9f8e0efe  addli sp, sp, -256
0000e0  1f8f8e01  addli r30, sp, 192
0000e4  00520002  load_param_i r4, 0
0000e8  63013f00  loadli.w r2,  24(r30)
0000ec  e3402f00  loadli.w r1,  20(r30)
0000f0  e3413f00  loadli.w r3,  28(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  67481ffe  storeli.w r1, -124(r30)
000100  cb9d4000  ble.s r1, r4, 868
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  2b04f03f  lui r8, 261888
000110  9f028fff  addli r5, r30, -64
000114  1f034000  addli r6, zero, 32
000118  9f030000  addli r7, zero, 0
00011c  9bb04000  slli r1, r1, 4
000120  67082ffe  storeli.w r2, -128(r30)
000124  2bb1a73e  lui r2, 256635
000128  73387ffa  store.d r[8:9], -80(r30)
00012c  e7471ffe  storeli.w r1, -132(r30)
000130  ab00353f  lui r1, 258896
000134  9b9d304f  ori r27, r1, 1267
000138  9b1051a0  ori r1, r2, 2565
00013c  2bf1b53f  lui r2, 260959
000140  e74b1ffe  storeli.w r1, -68(r30)
000144  ab00babf  lui r1, 785312
000148  9b90300e  ori r1, r1, 227
00014c  e74a1ffe  storeli.w r1, -84(r30)
000150  abd0873f  lui r1, 260221
000154  9b9020c2  ori r1, r1, 3106
000158  e70a1ffe  storeli.w r1, -88(r30)
00015c  9b10310e  ori r1, r2, 227
000160  2b71823e  lui r2, 256039
000164  674a1ffe  storeli.w r1, -92(r30)
000168  aba091be  lui r1, 780570
00016c  9b90e098  ori r1, r1, 2446
000170  670a1ffe  storeli.w r1, -96(r30)
000174  9b106190  ori r1, r2, 2310
000178  2bf17f7f  lui r2, 522239
00017c  e7491ffe  storeli.w r1, -100(r30)
000180  ab700000  lui r1, 7
000184  1b15f1ff  ori r10, r2, 4095
000188  9b9cf0ff  ori r25, r1, 4095
00018c  abf0ff7f  lui r1, 524287
000190  e709affe  storeli.w r10, -104(r30)
000194  1b9ef0ff  ori r28, r1, 4095
000198  5b070000  j 56
00019c  6b518f00  load.d r[3:4], 8(r30)
0001a0  eb538ff8  load.d r[8:9], -120(r30)
0001a4  ab0000f0  lui r1, 983040
0001a8  63422fff  loadli.w r4,  -108(r30)
0001ac  97101300  or r1, r6, r1
0001b0  0b217110  add.ul r[3:4], r[3:4], r[8:9]
0001b4  ff305100  s_lm2gm r1, r5, 0(r[3:4])
0001b8  e3000fff  loadli.w r1,  -128(r30)
0001bc  00a00000  mfence { lm }
0001c0  0b121210  add.s r4, r4, r1
0001c4  e3400fff  loadli.w r1,  -124(r30)
0001c8  3f201200  blt.s r4, r1, 8
0001cc  5b530000  j 664
0001d0  e3403f00  loadli.w r1,  28(r30)
0001d4  63013f00  loadli.w r2,  24(r30)
0001d8  9f110000  addli r3, zero, 1
0001dc  67494ffe  storeli.w r4, -108(r30)
0001e0  9f090000  addli r19, zero, 0
0001e4  8b101230  div.s r1, r4, r1
0001e8  8b902030  div.s r1, r1, r2
0001ec  6341fffe  loadli.w r2,  -132(r30)
0001f0  9bb0a000  slli r1, r1, 10
0001f4  8b902010  add.s r1, r1, r2
0001f8  b3900028  sext_int2long r[2:3], r1
0001fc  97b33002  sll.d r[8:9], r[2:3], r3
000200  6b510f00  load.d r[3:4], 0(r30)
000204  ab0000f0  lui r1, 983040
000208  97101300  or r1, r6, r1
00020c  73347ff8  store.d r[8:9], -120(r30)
000210  0b217110  add.ul r[3:4], r[3:4], r[8:9]
000214  ff205100  l_gm2lm r1, r5, 0(r[3:4])
000218  00a00000  mfence { lm }
00021c  5b050000  j 40
000220  1bc10001  srli r2, r1, 16
000224  1b011100  andi r2, r2, 1
000228  8b902010  add.s r1, r1, r2
00022c  8b909011  add.s r1, r1, r25
000230  9bc00001  srli r1, r1, 16
000234  9fc90900  addli r19, r19, 4
000238  73111a00  store.h r1, 2(r20)
00023c  00a00000  mfence { lm }
000240  37fd69fe  beq r19, r6, -164
000244  0b9a3211  add.s r20, r5, r19
000248  63417fff  loadli.w r2,  -68(r30)
00024c  eb300a00  load.hu r1, 0(r20)
000250  6b3c2a00  load.hu r24, 2(r20)
000254  b39b0018  bfloat2float.rn r23, r1
000258  8be0bb21  mul.f.rn r1, r23, r27
00025c  0beb0060  abs.f r22, r1
000260  1bb29000  slli r4, r1, 9
000264  0b612b20  mul.f.rn r2, r22, r2
000268  13030200  seteq r6, r4, zero
00026c  8f230108  .word 0x0801238f
000270  6b510ffb  load.d r[3:4], -80(r30)
000274  0f922320  .word 0x2023920f
000278  9bc37001  srli r7, r1, 23
00027c  93e00004  setlt.f r1, r1, zero
000280  9b83f30f  andi r7, r7, 255
000284  9bf3f30f  setlti r7, r7, 255
000288  17936300  or r6, r7, r6
00028c  978a6000  and r21, r1, r6
000290  578e0000  jal 1136
000294  8f300110  .word 0x1001308f
000298  63415fff  loadli.w r2,  -84(r30)
00029c  e3015fff  loadli.w r3,  -88(r30)
0002a0  0b620b58  neg.f r4, r22
0002a4  0be13050  fmac.f.rn r2, r1, r3
0002a8  e3414fff  loadli.w r3,  -92(r30)
0002ac  8b611150  fmac.f.rn r3, r2, r1
0002b0  63014fff  loadli.w r2,  -96(r30)
0002b4  0be11150  fmac.f.rn r2, r3, r1
0002b8  e3413fff  loadli.w r3,  -100(r30)
0002bc  8b611150  fmac.f.rn r3, r2, r1
0002c0  0b614b20  mul.f.rn r2, r22, r4
0002c4  2b0b803f  lui r22, 260096
0002c8  8be10158  neg.f r3, r3
0002cc  0f010100  exp.f.rn r2, r2
0002d0  8be03020  mul.f.rn r1, r1, r3
0002d4  0beb2050  fmac.f.rn r22, r1, r2
0002d8  37a00a00  beq r21, zero, 8
0002dc  0b6b0b58  neg.f r22, r22
0002e0  331c0c18  bfloat2float.rn r24, r24
0002e4  63417fff  loadli.w r2,  -68(r30)
0002e8  1f8d0d00  addli r26, r27, 0
0002ec  8b60bc21  mul.f.rn r1, r24, r27
0002f0  8bea0060  abs.f r21, r1
0002f4  1bb29000  slli r4, r1, 9
0002f8  0be12a20  mul.f.rn r2, r21, r2
0002fc  13030200  seteq r6, r4, zero
000300  8f230108  .word 0x0801238f
000304  6b510ffb  load.d r[3:4], -80(r30)
000308  0f922320  .word 0x2023920f
00030c  9bc37001  srli r7, r1, 23
000310  93e00004  setlt.f r1, r1, zero
000314  9b83f30f  andi r7, r7, 255
000318  9bf3f30f  setlti r7, r7, 255
00031c  17936300  or r6, r7, r6
000320  978d6000  and r27, r1, r6
000324  578e0000  jal 1136
000328  8f300110  .word 0x1001308f
00032c  63415fff  loadli.w r2,  -84(r30)
000330  e3015fff  loadli.w r3,  -88(r30)
000334  0be20a58  neg.f r4, r21
000338  0be13050  fmac.f.rn r2, r1, r3
00033c  e3414fff  loadli.w r3,  -92(r30)
000340  8b611150  fmac.f.rn r3, r2, r1
000344  63014fff  loadli.w r2,  -96(r30)
000348  0be11150  fmac.f.rn r2, r3, r1
00034c  e3413fff  loadli.w r3,  -100(r30)
000350  8b611150  fmac.f.rn r3, r2, r1
000354  0be14a20  mul.f.rn r2, r21, r4
000358  8be10158  neg.f r3, r3
00035c  0f010100  exp.f.rn r2, r2
000360  8be13020  mul.f.rn r3, r1, r3
000364  ab00803f  lui r1, 260096
000368  8be02150  fmac.f.rn r1, r3, r2
00036c  37a00d00  beq r27, zero, 8
000370  8be00058  neg.f r1, r1
000374  2b02003f  lui r4, 258048
000378  2b03803f  lui r6, 260096
00037c  ab03807f  lui r7, 522240
000380  63053fff  loadli.w r10,  -104(r30)
000384  2b044000  lui r8, 1024
000388  9f0d0d00  addli r27, r26, 0
00038c  0be14b20  mul.f.rn r2, r23, r4
000390  8b616b10  add.f.rn r3, r22, r6
000394  8b613120  mul.f.rn r3, r2, r3
000398  9782c101  and r5, r3, r28
00039c  13815304  setlt.u r2, r7, r5
0003a0  3b300100  bneq r2, zero, 12
0003a4  1f810100  addli r2, r3, 0
0003a8  5b010000  j 8
0003ac  17918100  or r2, r3, r8
0003b0  0b624c20  mul.f.rn r4, r24, r4
0003b4  8be06010  add.f.rn r1, r1, r6
0003b8  0b621220  mul.f.rn r4, r4, r1
0003bc  1703c201  and r6, r4, r28
0003c0  93806304  setlt.u r1, r7, r6
0003c4  3bd00000  bneq r1, zero, 20
0003c8  9f000200  addli r1, r4, 0
0003cc  93025504  setlt.u r5, r10, r5
0003d0  37d00200  beq r5, zero, 20
0003d4  5b050000  j 40
0003d8  97108200  or r1, r4, r8
0003dc  93025504  setlt.u r5, r10, r5
0003e0  3bf00200  bneq r5, zero, 28
0003e4  1bc10101  srli r2, r3, 16
0003e8  1b011100  andi r2, r2, 1
0003ec  0b912110  add.s r2, r3, r2
0003f0  ab01ffff  lui r3, 1048560
0003f4  0b119111  add.s r2, r2, r25
0003f8  17013100  and r2, r2, r3
0003fc  93016504  setlt.u r3, r10, r6
000400  3bf00100  bneq r3, zero, 28
000404  9b400201  srli r1, r4, 16
000408  ab01ffff  lui r3, 1048560
00040c  9b801000  andi r1, r1, 1
000410  8b101210  add.s r1, r4, r1
000414  8b909011  add.s r1, r1, r25
000418  97803000  and r1, r1, r3
00041c  9701c101  and r3, r2, r28
000420  9f028fff  addli r5, r30, -64
000424  1f034000  addli r6, zero, 32
000428  93813304  setlt.u r3, r7, r3
00042c  3be00100  bneq r3, zero, 24
000430  9b410101  srli r3, r2, 16
000434  9b811100  andi r3, r3, 1
000438  0b113110  add.s r2, r2, r3
00043c  0b119111  add.s r2, r2, r25
000440  5b010000  j 8
000444  17118100  or r2, r2, r8
000448  9781c001  and r3, r1, r28
00044c  1b410101  srli r2, r2, 16
000450  93813304  setlt.u r3, r7, r3
000454  73102a00  store.h r2, 0(r20)
000458  37a701fe  beq r3, zero, -568
00045c  97908000  or r1, r1, r8
000460  5bbaffff  j -560
000464  9f8e8e01  addli sp, sp, 192
000468  00a00300  mfence { lm, sm, gm }
00046c  00100000  exit
000470  9f8e7eff  addli sp, sp, -72
000474  9f406000  addli r1, zero, 52
000478  2bf50f00  lui r10, 255
00047c  abf7ffff  lui r15, 1048575
000480  ab040080  lui r9, 524288
000484  17232202  xor.d r[7:8], r[5:6], r[3:4]
000488  e7c1ee01  storeli.w r30, 28(sp)
00048c  67c43e01  storeli.w r19, 68(sp)
000490  67844e01  storeli.w r20, 64(sp)
000494  e7c35e01  storeli.w r21, 60(sp)
000498  e7836e01  storeli.w r22, 56(sp)
00049c  67c37e01  storeli.w r23, 52(sp)
0004a0  67838e01  storeli.w r24, 48(sp)
0004a4  e7c29e01  storeli.w r25, 44(sp)
0004a8  e782ae01  storeli.w r26, 40(sp)
0004ac  67c2be01  storeli.w r27, 36(sp)
0004b0  6782ce01  storeli.w r28, 32(sp)
0004b4  e781fe01  storeli.w r31, 24(sp)
0004b8  1f8f9e00  addli r30, sp, 72
0004bc  1f040000  addli r8, zero, 0
0004c0  97451102  srl.d r[12:13], r[3:4], r1
0004c4  17481202  srl.d r[17:18], r[5:6], r1
0004c8  1b17f5ff  ori r14, r10, 4095
0004cc  9b96f7ff  ori r13, r15, 4095
0004d0  17038302  and.d r[7:8], r[7:8], r[9:10]
0004d4  9b80f57f  andi r1, r11, 2047
0004d8  1b05f87f  andi r10, r16, 2047
0004dc  9b982780  ori r17, r15, 2050
0004e0  1704d102  and.d r[9:10], r[3:4], r[14:15]
0004e4  9705d202  and.d r[12:13], r[5:6], r[14:15]
0004e8  1f9800f0  addli r16, r1, -2047
0004ec  13081805  setlt.u r16, r16, r17
0004f0  3b700800  bneq r16, zero, 28
0004f4  1f1805f0  addli r16, r10, -2047
0004f8  9b971780  ori r15, r15, 2049
0004fc  93870705  setlt.u r15, r15, r16
000500  37b00700  beq r15, zero, 12
000504  1f020000  addli r4, zero, 0
000508  5b0b0000  j 88
00050c  abf7ff7f  lui r15, 524287
000510  2b09f07f  lui r18, 524032
000514  9f180000  addli r17, zero, 1
000518  1b97f7ff  ori r14, r15, 4095
00051c  9707d102  and.d r[16:17], r[3:4], r[14:15]
000520  93a91705  setlt.ul r19, r[16:17], r[18:19]
000524  3be00900  bneq r19, zero, 24
000528  ab020800  lui r5, 128
00052c  9f060000  addli r13, zero, 0
000530  1f020000  addli r4, zero, 0
000534  17114102  or.d r[3:4], r[3:4], r[5:6]
000538  5b040000  j 32
00053c  1701d202  and.d r[3:4], r[5:6], r[14:15]
000540  93261105  setlt.ul r13, r[3:4], r[18:19]
000544  3bf80600  bneq r13, zero, 540
000548  ab010800  lui r3, 128
00054c  9f060000  addli r13, zero, 0
000550  1f010000  addli r2, zero, 0
000554  17112202  or.d r[3:4], r[5:6], r[3:4]
000558  1f020000  addli r4, zero, 0
00055c  b7c90600  beq r13, zero, 624
000560  ab011000  lui r3, 256
000564  9f371000  addli r15, zero, 11
000568  abf9ffff  lui r19, 1048575
00056c  2bf90475  lui r18, 479311
000570  9f582000  addli r17, zero, 21
000574  73346ffc  store.d r[7:8], -56(r30)
000578  9f723000  addli r5, zero, 31
00057c  73308ffc  store.d r[9:10], -64(r30)
000580  8b90a018  sub.s r1, r1, r10
000584  1f010000  addli r2, zero, 0
000588  97b7f502  sll.d r[16:17], r[12:13], r15
00058c  9b1a3933  ori r21, r18, 819
000590  8b101210  add.s r1, r4, r1
000594  97162402  or.d r[14:15], r[9:10], r[3:4]
000598  17912502  or.d r[3:4], r[12:13], r[3:4]
00059c  9b950980  ori r11, r19, 2048
0005a0  733cdffa  store.d r[14:15], -72(r30)
0005a4  338c0528  zext_int2long r[25:26], r11
0005a8  174b1103  srl.d r[23:24], r[3:4], r17
0005ac  9b95f9ff  ori r11, r19, 4095
0005b0  9b99e9ff  ori r19, r19, 4094
0005b4  b3880528  zext_int2long r[18:19], r11
0005b8  8b9a6a19  sub.s r21, r21, r22
0005bc  97878703  and.d r[16:17], r[16:17], r[25:26]
0005c0  b3890928  zext_int2long r[20:21], r19
0005c4  170d1b03  and.d r[27:28], r[23:24], r[18:19]
0005c8  b38a0a28  zext_int2long r[22:23], r21
0005cc  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
0005d0  0b930358  neg.s r6, r7
0005d4  33030328  zext_int2long r[7:8], r6
0005d8  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
0005dc  17435302  srl.d r[7:8], r[7:8], r5
0005e0  17031303  and.d r[7:8], r[7:8], r[18:19]
0005e4  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0005e8  8b1a0b58  neg.s r21, r22
0005ec  b38a0a28  zext_int2long r[22:23], r21
0005f0  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
0005f4  17435302  srl.d r[7:8], r[7:8], r5
0005f8  17031303  and.d r[7:8], r[7:8], r[18:19]
0005fc  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
000600  8b1a0b58  neg.s r21, r22
000604  1f0b4000  addli r22, zero, 32
000608  33840a28  zext_int2long r[9:10], r21
00060c  9f1a0000  addli r21, zero, 1
000610  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
000614  33840a28  zext_int2long r[9:10], r21
000618  17435302  srl.d r[7:8], r[7:8], r5
00061c  1f73f3ff  addli r6, r6, -1
000620  33030328  zext_int2long r[7:8], r6
000624  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
000628  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
00062c  97c76703  srl.d r[16:17], r[16:17], r22
000630  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
000634  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
000638  97071403  and.d r[16:17], r[9:10], r[18:19]
00063c  17446403  srl.d r[9:10], r[9:10], r22
000640  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
000644  97cb5702  srl.d r[24:25], r[16:17], r5
000648  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
00064c  97b75603  sll.d r[16:17], r[14:15], r21
000650  abf41f00  lui r9, 511
000654  97b25203  sll.d r[6:7], r[6:7], r21
000658  97cc6703  srl.d r[26:27], r[16:17], r22
00065c  978d3703  and.d r[28:29], r[16:17], r[20:21]
000660  1b96f4ff  ori r12, r9, 4095
000664  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
000668  a7f232fe  addli.d r[6:7], r[6:7], 32543
00066c  97831203  and.d r[8:9], r[6:7], r[18:19]
000670  97c26203  srl.d r[6:7], r[6:7], r22
000674  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
000678  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
00067c  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
000680  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
000684  97881303  and.d r[18:19], r[8:9], r[18:19]
000688  97cb6b03  srl.d r[24:25], r[24:25], r22
00068c  97cc6d03  srl.d r[26:27], r[28:29], r22
000690  97893d03  and.d r[20:21], r[28:29], r[20:21]
000694  97c36303  srl.d r[8:9], r[8:9], r22
000698  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
00069c  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
0006a0  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
0006a4  0b227210  add.ul r[5:6], r[5:6], r[8:9]
0006a8  17c36803  srl.d r[7:8], r[18:19], r22
0006ac  0b226210  add.ul r[5:6], r[5:6], r[7:8]
0006b0  13a34504  setlt.ul r6, r[12:13], r[5:6]
0006b4  3b710300  bneq r6, zero, 92
0006b8  1f536000  addli r6, zero, 53
0006bc  eb540ffc  load.d r[10:11], -64(r30)
0006c0  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
0006c4  9fe0f007  addli r1, r1, 1022
0006c8  97b46402  sll.d r[10:11], r[10:11], r6
0006cc  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
0006d0  1f73f00f  addli r6, zero, 2047
0006d4  3fa06000  blt.s r1, r6, 8
0006d8  5b0c0000  j 96
0006dc  1f150000  addli r10, zero, 1
0006e0  bfb1a000  blt.s r1, r10, 108
0006e4  2bf30f00  lui r6, 255
0006e8  abf3ffff  lui r7, 1048575
0006ec  b3850028  zext_int2long r[12:13], r1
0006f0  9f406000  addli r1, zero, 52
0006f4  1734a402  sll.d r[9:10], r[9:10], r10
0006f8  1b17f3ff  ori r14, r6, 4095
0006fc  97b51502  sll.d r[12:13], r[12:13], r1
000700  9b96f3ff  ori r13, r7, 4095
000704  1702d202  and.d r[5:6], r[5:6], r[14:15]
000708  17924502  or.d r[5:6], r[12:13], r[5:6]
00070c  db140000  j 164
000710  17425203  srl.d r[5:6], r[5:6], r21
000714  1f436000  addli r6, zero, 52
000718  eb530ffc  load.d r[8:9], -64(r30)
00071c  9ff0f007  addli r1, r1, 1023
000720  eb578ffb  load.d r[16:17], -72(r30)
000724  17b36302  sll.d r[7:8], r[8:9], r6
000728  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
00072c  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
000730  1f73f00f  addli r6, zero, 2047
000734  bfae60fe  blt.s r1, r6, -88
000738  2b01f07f  lui r2, 524032
00073c  eb518ffc  load.d r[4:5], -56(r30)
000740  9f000000  addli r1, zero, 0
000744  17911102  or.d r[3:4], r[4:5], r[2:3]
000748  db100000  j 132
00074c  2bf3ffff  lui r6, 1048575
000750  1b13b3fc  ori r6, r6, 4043
000754  bf701300  blt.s r6, r1, 60
000758  6b518ffc  load.d r[3:4], -56(r30)
00075c  5b0e0000  j 112
000760  ab02f07f  lui r5, 524032
000764  1f020000  addli r4, zero, 0
000768  93a64702  setneq.d r13, r[16:17], r[5:6]
00076c  3be20600  bneq r13, zero, 152
000770  1f020000  addli r4, zero, 0
000774  13214100  seteq.d r2, r[3:4], r[5:6]
000778  b7060100  beq r2, zero, 416
00077c  ab01f87f  lui r3, 524160
000780  9f060000  addli r13, zero, 0
000784  1f020000  addli r4, zero, 0
000788  1f010000  addli r2, zero, 0
00078c  5bbaffff  j -560
000790  9f130000  addli r7, zero, 1
000794  1fc36000  addli r6, r1, 52
000798  8b901318  sub.s r1, r7, r1
00079c  17b46702  sll.d r[9:10], r[16:17], r6
0007a0  17421202  srl.d r[5:6], r[5:6], r1
0007a4  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
0007a8  17337502  sll.d r[7:8], r[11:12], r7
0007ac  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
0007b0  23031200  andi.d r[7:8], r[5:6], 1
0007b4  0b238310  add.ul r[7:8], r[7:8], r[9:10]
0007b8  93206104  setlt.ul r1, r[3:4], r[7:8]
0007bc  b3800028  zext_int2long r[2:3], r1
0007c0  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0007c4  eb518ffc  load.d r[4:5], -56(r30)
0007c8  17913002  or.d r[3:4], r[2:3], r[4:5]
0007cc  e38f3e00  loadli.w r31,  24(sp)
0007d0  63cf3e00  loadli.w r30,  28(sp)
0007d4  638e4e00  loadli.w r28,  32(sp)
0007d8  e3cd4e00  loadli.w r27,  36(sp)
0007dc  638d5e00  loadli.w r26,  40(sp)
0007e0  e3cc5e00  loadli.w r25,  44(sp)
0007e4  638c6e00  loadli.w r24,  48(sp)
0007e8  e3cb6e00  loadli.w r23,  52(sp)
0007ec  638b7e00  loadli.w r22,  56(sp)
0007f0  e3ca7e00  loadli.w r21,  60(sp)
0007f4  638a8e00  loadli.w r20,  64(sp)
0007f8  e3c98e00  loadli.w r19,  68(sp)
0007fc  9f8e9e00  addli sp, sp, 72
000800  5f800f00  jr r31, 0
000804  1f020000  addli r4, zero, 0
000808  13224102  setneq.d r4, r[3:4], r[5:6]
00080c  3b500200  bneq r4, zero, 20
000810  9f060000  addli r13, zero, 0
000814  1f020000  addli r4, zero, 0
000818  27010300  addli.d r[3:4], r[7:8], 0
00081c  5ba8ffff  j -704
000820  33020028  zext_int2long r[5:6], zero
000824  13a24702  setneq.d r4, r[16:17], r[5:6]
000828  37240200  beq r4, zero, 264
00082c  33020028  zext_int2long r[5:6], zero
000830  13224102  setneq.d r4, r[3:4], r[5:6]
000834  b7130200  beq r4, zero, 228
000838  2bf20f00  lui r4, 255
00083c  abf2ffff  lui r5, 1048575
000840  1b17f2ff  ori r14, r4, 4095
000844  9b96f2ff  ori r13, r5, 4095
000848  13a2f604  setlt.ul r4, r[14:15], r[16:17]
00084c  bb630200  bneq r4, zero, 248
000850  9f120000  addli r5, zero, 1
000854  9f270000  addli r15, zero, 2
000858  1f420000  addli r4, zero, 4
00085c  1f081000  addli r16, zero, 8
000860  97485402  srl.d r[18:19], r[9:10], r5
000864  97181403  or.d r[18:19], r[9:10], r[18:19]
000868  97c9f802  srl.d r[20:21], r[18:19], r15
00086c  97983803  or.d r[18:19], r[18:19], r[20:21]
000870  97c94802  srl.d r[20:21], r[18:19], r4
000874  97983803  or.d r[18:19], r[18:19], r[20:21]
000878  9f092000  addli r19, zero, 16
00087c  17ca0803  srl.d r[21:22], r[18:19], r16
000880  17984803  or.d r[17:18], r[18:19], r[21:22]
000884  1f094000  addli r18, zero, 32
000888  97493803  srl.d r[20:21], r[17:18], r19
00088c  17183803  or.d r[17:18], r[17:18], r[20:21]
000890  2b5a5555  lui r20, 349525
000894  17492803  srl.d r[19:20], r[17:18], r18
000898  17182803  or.d r[17:18], r[17:18], r[19:20]
00089c  33990628  sext_int2long r[19:20], r13
0008a0  17282803  xor.d r[17:18], r[17:18], r[19:20]
0008a4  1b195a55  ori r18, r20, 1365
0008a8  174a5802  srl.d r[21:22], r[17:18], r5
0008ac  9f090900  addli r19, r18, 0
0008b0  ab323333  lui r5, 209715
0008b4  17092a03  and.d r[19:20], r[21:22], r[19:20]
0008b8  1b9a3233  ori r20, r5, 819
0008bc  ab020f0f  lui r5, 61680
0008c0  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
0008c4  9f0a0a00  addli r21, r20, 0
0008c8  1749f802  srl.d r[19:20], r[17:18], r15
0008cc  97074803  and.d r[16:17], r[17:18], r[21:22]
0008d0  97084903  and.d r[18:19], r[19:20], r[21:22]
0008d4  ab090101  lui r19, 4112
0008d8  1f0a7000  addli r20, zero, 56
0008dc  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
0008e0  97c84702  srl.d r[18:19], r[16:17], r4
0008e4  1b92f2f0  ori r4, r5, 3855
0008e8  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
0008ec  9f020200  addli r5, r4, 0
0008f0  9f481000  addli r17, zero, 12
0008f4  17824702  and.d r[5:6], r[16:17], r[5:6]
0008f8  9b971910  ori r15, r19, 257
0008fc  1f880700  addli r16, r15, 0
000900  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
000904  17424203  srl.d r[5:6], r[5:6], r20
000908  9f57e2ff  addli r15, r4, -11
00090c  0b924818  sub.s r4, r17, r4
000910  1734f402  sll.d r[9:10], r[9:10], r15
000914  db060000  j 52
000918  ab01f07f  lui r3, 524032
00091c  9f060000  addli r13, zero, 0
000920  1f020000  addli r4, zero, 0
000924  1f010000  addli r2, zero, 0
000928  17112302  or.d r[3:4], r[7:8], r[3:4]
00092c  5b86ffff  j -976
000930  33020028  zext_int2long r[5:6], zero
000934  13214100  seteq.d r2, r[3:4], r[5:6]
000938  bb430100  bneq r2, zero, 240
00093c  27010300  addli.d r[3:4], r[7:8], 0
000940  5b1e0000  j 240
000944  1f020000  addli r4, zero, 0
000948  13a12604  setlt.ul r2, r[14:15], r[3:4]
00094c  3b530100  bneq r2, zero, 212
000950  9f160000  addli r13, zero, 1
000954  9f210000  addli r3, zero, 2
000958  1f410000  addli r2, zero, 4
00095c  9f021000  addli r5, zero, 8
000960  1f072000  addli r14, zero, 16
000964  97c7d502  srl.d r[16:17], r[12:13], r13
000968  9797f502  or.d r[16:17], r[12:13], r[16:17]
00096c  97c83702  srl.d r[18:19], r[16:17], r3
000970  97971703  or.d r[16:17], r[16:17], r[18:19]
000974  97c82702  srl.d r[18:19], r[16:17], r2
000978  97971703  or.d r[16:17], r[16:17], r[18:19]
00097c  97c85702  srl.d r[18:19], r[16:17], r5
000980  9f024000  addli r5, zero, 32
000984  97971703  or.d r[16:17], r[16:17], r[18:19]
000988  97c8e702  srl.d r[18:19], r[16:17], r14
00098c  2bf7ffff  lui r14, 1048575
000990  97971703  or.d r[16:17], r[16:17], r[18:19]
000994  1b17f7ff  ori r14, r14, 4095
000998  97c85702  srl.d r[18:19], r[16:17], r5
00099c  ab525555  lui r5, 349525
0009a0  97971703  or.d r[16:17], r[16:17], r[18:19]
0009a4  b3180728  sext_int2long r[18:19], r14
0009a8  9b995255  ori r19, r5, 1365
0009ac  ab323333  lui r5, 209715
0009b0  17a71703  xor.d r[15:16], r[16:17], r[18:19]
0009b4  1f8a0900  addli r20, r19, 0
0009b8  1748d702  srl.d r[17:18], r[15:16], r13
0009bc  17083803  and.d r[17:18], r[17:18], r[20:21]
0009c0  1b993233  ori r18, r5, 819
0009c4  ab020101  lui r5, 4112
0009c8  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
0009cc  9f090900  addli r19, r18, 0
0009d0  17483702  srl.d r[17:18], r[15:16], r3
0009d4  17072703  and.d r[15:16], r[15:16], r[19:20]
0009d8  ab010f0f  lui r3, 61680
0009dc  17082803  and.d r[17:18], r[17:18], r[19:20]
0009e0  1b99f1f0  ori r18, r3, 3855
0009e4  0b270711  add.ul r[15:16], r[15:16], r[17:18]
0009e8  9f090900  addli r19, r18, 0
0009ec  17412702  srl.d r[3:4], r[15:16], r2
0009f0  0b212710  add.ul r[3:4], r[15:16], r[3:4]
0009f4  1b971210  ori r14, r5, 257
0009f8  9f027000  addli r5, zero, 56
0009fc  17012103  and.d r[3:4], r[3:4], r[19:20]
000a00  9f070700  addli r15, r14, 0
000a04  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
000a08  17415102  srl.d r[3:4], r[3:4], r5
000a0c  9f52e1ff  addli r5, r2, -11
000a10  0b114110  add.s r2, r2, r4
000a14  97b55502  sll.d r[12:13], r[12:13], r5
000a18  1f42e1ff  addli r4, r2, -12
000a1c  5b010000  j 8
000a20  9f160000  addli r13, zero, 1
000a24  5b67ffff  j -1224
000a28  ab01f87f  lui r3, 524160
000a2c  1f010000  addli r2, zero, 0
000a30  9f060000  addli r13, zero, 0
000a34  db64ffff  j -1244
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
