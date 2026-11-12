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
0000fc  67451ffe  storeli.w r1, -172(r30)
000100  cbda4000  ble.s r1, r4, 692
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  2b03f03f  lui r6, 261888
000110  9f040fff  addli r9, r30, -128
000114  9f038000  addli r7, zero, 64
000118  9f020000  addli r5, zero, 0
00011c  9bb04000  slli r1, r1, 4
000120  67052ffe  storeli.w r2, -176(r30)
000124  2bb1a73e  lui r2, 256635
000128  73385ff6  store.d r[6:7], -144(r30)
00012c  e7441ffe  storeli.w r1, -180(r30)
000130  ab00353f  lui r1, 258896
000134  9b90304f  ori r1, r1, 1267
000138  e7471ffe  storeli.w r1, -132(r30)
00013c  9b1051a0  ori r1, r2, 2565
000140  2bf1b53f  lui r2, 260959
000144  e7071ffe  storeli.w r1, -136(r30)
000148  ab00babf  lui r1, 785312
00014c  9b90300e  ori r1, r1, 227
000150  e7461ffe  storeli.w r1, -148(r30)
000154  abd0873f  lui r1, 260221
000158  9b9020c2  ori r1, r1, 3106
00015c  e7061ffe  storeli.w r1, -152(r30)
000160  9b10310e  ori r1, r2, 227
000164  2b71823e  lui r2, 256039
000168  67461ffe  storeli.w r1, -156(r30)
00016c  aba091be  lui r1, 780570
000170  9b1a6190  ori r21, r2, 2310
000174  1b9be098  ori r22, r1, 2446
000178  5b060000  j 48
00017c  ab0000f0  lui r1, 983040
000180  6b518ff5  load.d r[3:4], -168(r30)
000184  6302cffe  loadli.w r4,  -160(r30)
000188  97901300  or r1, r7, r1
00018c  ff309100  s_lm2gm r1, r9, 0(r[3:4])
000190  e300affe  loadli.w r1,  -176(r30)
000194  00a00000  mfence { lm }
000198  0b121210  add.s r4, r4, r1
00019c  e340affe  loadli.w r1,  -172(r30)
0001a0  3f201200  blt.s r4, r1, 8
0001a4  5b420000  j 528
0001a8  e3403f00  loadli.w r1,  28(r30)
0001ac  63013f00  loadli.w r2,  24(r30)
0001b0  67064ffe  storeli.w r4, -160(r30)
0001b4  9f090000  addli r19, zero, 0
0001b8  8b101230  div.s r1, r4, r1
0001bc  8b902030  div.s r1, r1, r2
0001c0  63419ffe  loadli.w r2,  -180(r30)
0001c4  9bb0a000  slli r1, r1, 10
0001c8  8b902010  add.s r1, r1, r2
0001cc  1f010010  addli r2, zero, 2048
0001d0  0b912038  mod.s r2, r1, r2
0001d4  b3910028  sext_int2long r[4:5], r1
0001d8  ab0000f0  lui r1, 983040
0001dc  97901300  or r1, r7, r1
0001e0  9f230000  addli r7, zero, 2
0001e4  97b17102  sll.d r[4:5], r[4:5], r7
0001e8  9f130000  addli r7, zero, 1
0001ec  b3120128  sext_int2long r[6:7], r2
0001f0  2b0100f0  lui r2, 983040
0001f4  97b27202  sll.d r[6:7], r[6:7], r7
0001f8  eb530f00  load.d r[8:9], 0(r30)
0001fc  8ba33310  add.ul r[8:9], r[8:9], r[4:5]
000200  eb518f00  load.d r[4:5], 8(r30)
000204  ffa09300  l_gm2lm r1, r9, 0(r[8:9])
000208  9f008fff  addli r1, r30, -64
00020c  733c7ff4  store.d r[8:9], -168(r30)
000210  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
000214  9f024000  addli r5, zero, 32
000218  1fae0000  addli r28, r1, 2
00021c  17912200  or r2, r5, r2
000220  7fa11100  l_gm2lm r2, r1, 0(r[4:5])
000224  00a00000  mfence { lm }
000228  db080000  j 68
00022c  ab02803f  lui r5, 260096
000230  ab01003f  lui r3, 258048
000234  9f040fff  addli r9, r30, -128
000238  9f038000  addli r7, zero, 64
00023c  9f891900  addli r19, r19, 8
000240  1f4e0e00  addli r28, r28, 4
000244  0be13c20  mul.f.rn r2, r25, r3
000248  0b625a10  add.f.rn r4, r20, r5
00024c  8be13b20  mul.f.rn r3, r23, r3
000250  8be05010  add.f.rn r1, r1, r5
000254  0b614120  mul.f.rn r2, r2, r4
000258  8be01120  mul.f.rn r1, r3, r1
00025c  67802d00  storeli.w r2, 0(r27)
000260  67c01d00  storeli.w r1, 4(r27)
000264  00a00000  mfence { lm }
000268  37dc79fe  beq r19, r7, -236
00026c  eb30eeff  load.hu r1, -2(r28)
000270  8b9d3411  add.s r27, r9, r19
000274  eb3b0e00  load.hu r23, 0(r28)
000278  63810d00  loadli.w r2,  0(r27)
00027c  63cc0d00  loadli.w r24,  4(r27)
000280  b3900020  hfloat2float.rn r1, r1
000284  8b6c1110  add.f.rn r25, r2, r1
000288  e340fffe  loadli.w r1,  -132(r30)
00028c  6301fffe  loadli.w r2,  -136(r30)
000290  8be01c20  mul.f.rn r1, r25, r1
000294  0bea0060  abs.f r20, r1
000298  1bb29000  slli r4, r1, 9
00029c  0b612a20  mul.f.rn r2, r20, r2
0002a0  13030200  seteq r6, r4, zero
0002a4  8f230108  .word 0x0801238f
0002a8  6b510ff7  load.d r[3:4], -144(r30)
0002ac  0f922320  .word 0x2023920f
0002b0  9bc37001  srli r7, r1, 23
0002b4  93e00004  setlt.f r1, r1, zero
0002b8  9b83f30f  andi r7, r7, 255
0002bc  9bf3f30f  setlti r7, r7, 255
0002c0  17936300  or r6, r7, r6
0002c4  178d6000  and r26, r1, r6
0002c8  57780000  jal 960
0002cc  8f300110  .word 0x1001308f
0002d0  6341dffe  loadli.w r2,  -148(r30)
0002d4  e301dffe  loadli.w r3,  -152(r30)
0002d8  0b620a58  neg.f r4, r20
0002dc  0be13050  fmac.f.rn r2, r1, r3
0002e0  e341cffe  loadli.w r3,  -156(r30)
0002e4  8b611150  fmac.f.rn r3, r2, r1
0002e8  1f010b00  addli r2, r22, 0
0002ec  0be11150  fmac.f.rn r2, r3, r1
0002f0  9f810a00  addli r3, r21, 0
0002f4  8b611150  fmac.f.rn r3, r2, r1
0002f8  0b614a20  mul.f.rn r2, r20, r4
0002fc  2b0a803f  lui r20, 260096
000300  8be10158  neg.f r3, r3
000304  0f010100  exp.f.rn r2, r2
000308  8be03020  mul.f.rn r1, r1, r3
00030c  0bea2050  fmac.f.rn r20, r1, r2
000310  37200d00  beq r26, zero, 8
000314  0b6a0a58  neg.f r20, r20
000318  b3900b20  hfloat2float.rn r1, r23
00031c  6301fffe  loadli.w r2,  -136(r30)
000320  8b6b1c10  add.f.rn r23, r24, r1
000324  e340fffe  loadli.w r1,  -132(r30)
000328  8be01b20  mul.f.rn r1, r23, r1
00032c  0bec0060  abs.f r24, r1
000330  1bb29000  slli r4, r1, 9
000334  0b612c20  mul.f.rn r2, r24, r2
000338  13030200  seteq r6, r4, zero
00033c  8f230108  .word 0x0801238f
000340  6b510ff7  load.d r[3:4], -144(r30)
000344  0f922320  .word 0x2023920f
000348  9bc37001  srli r7, r1, 23
00034c  93e00004  setlt.f r1, r1, zero
000350  9b83f30f  andi r7, r7, 255
000354  9bf3f30f  setlti r7, r7, 255
000358  17936300  or r6, r7, r6
00035c  178d6000  and r26, r1, r6
000360  57780000  jal 960
000364  8f300110  .word 0x1001308f
000368  6341dffe  loadli.w r2,  -148(r30)
00036c  e301dffe  loadli.w r3,  -152(r30)
000370  0b620c58  neg.f r4, r24
000374  0be13050  fmac.f.rn r2, r1, r3
000378  e341cffe  loadli.w r3,  -156(r30)
00037c  8b611150  fmac.f.rn r3, r2, r1
000380  1f010b00  addli r2, r22, 0
000384  0be11150  fmac.f.rn r2, r3, r1
000388  9f810a00  addli r3, r21, 0
00038c  8b611150  fmac.f.rn r3, r2, r1
000390  0b614c20  mul.f.rn r2, r24, r4
000394  8be10158  neg.f r3, r3
000398  0f010100  exp.f.rn r2, r2
00039c  8be13020  mul.f.rn r3, r1, r3
0003a0  ab00803f  lui r1, 260096
0003a4  8be02150  fmac.f.rn r1, r3, r2
0003a8  371a0dfe  beq r26, zero, -380
0003ac  8be00058  neg.f r1, r1
0003b0  dbcfffff  j -388
0003b4  9f8e8e01  addli sp, sp, 192
0003b8  00a00300  mfence { lm, sm, gm }
0003bc  00100000  exit
0003c0  9f8e7eff  addli sp, sp, -72
0003c4  9f406000  addli r1, zero, 52
0003c8  2bf50f00  lui r10, 255
0003cc  abf7ffff  lui r15, 1048575
0003d0  ab040080  lui r9, 524288
0003d4  17232202  xor.d r[7:8], r[5:6], r[3:4]
0003d8  e7c1ee01  storeli.w r30, 28(sp)
0003dc  67c43e01  storeli.w r19, 68(sp)
0003e0  67844e01  storeli.w r20, 64(sp)
0003e4  e7c35e01  storeli.w r21, 60(sp)
0003e8  e7836e01  storeli.w r22, 56(sp)
0003ec  67c37e01  storeli.w r23, 52(sp)
0003f0  67838e01  storeli.w r24, 48(sp)
0003f4  e7c29e01  storeli.w r25, 44(sp)
0003f8  e782ae01  storeli.w r26, 40(sp)
0003fc  67c2be01  storeli.w r27, 36(sp)
000400  6782ce01  storeli.w r28, 32(sp)
000404  e781fe01  storeli.w r31, 24(sp)
000408  1f8f9e00  addli r30, sp, 72
00040c  1f040000  addli r8, zero, 0
000410  97451102  srl.d r[12:13], r[3:4], r1
000414  17481202  srl.d r[17:18], r[5:6], r1
000418  1b17f5ff  ori r14, r10, 4095
00041c  9b96f7ff  ori r13, r15, 4095
000420  17038302  and.d r[7:8], r[7:8], r[9:10]
000424  9b80f57f  andi r1, r11, 2047
000428  1b05f87f  andi r10, r16, 2047
00042c  9b982780  ori r17, r15, 2050
000430  1704d102  and.d r[9:10], r[3:4], r[14:15]
000434  9705d202  and.d r[12:13], r[5:6], r[14:15]
000438  1f9800f0  addli r16, r1, -2047
00043c  13081805  setlt.u r16, r16, r17
000440  3b700800  bneq r16, zero, 28
000444  1f1805f0  addli r16, r10, -2047
000448  9b971780  ori r15, r15, 2049
00044c  93870705  setlt.u r15, r15, r16
000450  37b00700  beq r15, zero, 12
000454  1f020000  addli r4, zero, 0
000458  5b0b0000  j 88
00045c  abf7ff7f  lui r15, 524287
000460  2b09f07f  lui r18, 524032
000464  9f180000  addli r17, zero, 1
000468  1b97f7ff  ori r14, r15, 4095
00046c  9707d102  and.d r[16:17], r[3:4], r[14:15]
000470  93a91705  setlt.ul r19, r[16:17], r[18:19]
000474  3be00900  bneq r19, zero, 24
000478  ab020800  lui r5, 128
00047c  9f060000  addli r13, zero, 0
000480  1f020000  addli r4, zero, 0
000484  17114102  or.d r[3:4], r[3:4], r[5:6]
000488  5b040000  j 32
00048c  1701d202  and.d r[3:4], r[5:6], r[14:15]
000490  93261105  setlt.ul r13, r[3:4], r[18:19]
000494  3bf80600  bneq r13, zero, 540
000498  ab010800  lui r3, 128
00049c  9f060000  addli r13, zero, 0
0004a0  1f010000  addli r2, zero, 0
0004a4  17112202  or.d r[3:4], r[5:6], r[3:4]
0004a8  1f020000  addli r4, zero, 0
0004ac  b7c90600  beq r13, zero, 624
0004b0  ab011000  lui r3, 256
0004b4  9f371000  addli r15, zero, 11
0004b8  abf9ffff  lui r19, 1048575
0004bc  2bf90475  lui r18, 479311
0004c0  9f582000  addli r17, zero, 21
0004c4  73346ffc  store.d r[7:8], -56(r30)
0004c8  9f723000  addli r5, zero, 31
0004cc  73308ffc  store.d r[9:10], -64(r30)
0004d0  8b90a018  sub.s r1, r1, r10
0004d4  1f010000  addli r2, zero, 0
0004d8  97b7f502  sll.d r[16:17], r[12:13], r15
0004dc  9b1a3933  ori r21, r18, 819
0004e0  8b101210  add.s r1, r4, r1
0004e4  97162402  or.d r[14:15], r[9:10], r[3:4]
0004e8  17912502  or.d r[3:4], r[12:13], r[3:4]
0004ec  9b950980  ori r11, r19, 2048
0004f0  733cdffa  store.d r[14:15], -72(r30)
0004f4  338c0528  zext_int2long r[25:26], r11
0004f8  174b1103  srl.d r[23:24], r[3:4], r17
0004fc  9b95f9ff  ori r11, r19, 4095
000500  9b99e9ff  ori r19, r19, 4094
000504  b3880528  zext_int2long r[18:19], r11
000508  8b9a6a19  sub.s r21, r21, r22
00050c  97878703  and.d r[16:17], r[16:17], r[25:26]
000510  b3890928  zext_int2long r[20:21], r19
000514  170d1b03  and.d r[27:28], r[23:24], r[18:19]
000518  b38a0a28  zext_int2long r[22:23], r21
00051c  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
000520  0b930358  neg.s r6, r7
000524  33030328  zext_int2long r[7:8], r6
000528  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
00052c  17435302  srl.d r[7:8], r[7:8], r5
000530  17031303  and.d r[7:8], r[7:8], r[18:19]
000534  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
000538  8b1a0b58  neg.s r21, r22
00053c  b38a0a28  zext_int2long r[22:23], r21
000540  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
000544  17435302  srl.d r[7:8], r[7:8], r5
000548  17031303  and.d r[7:8], r[7:8], r[18:19]
00054c  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
000550  8b1a0b58  neg.s r21, r22
000554  1f0b4000  addli r22, zero, 32
000558  33840a28  zext_int2long r[9:10], r21
00055c  9f1a0000  addli r21, zero, 1
000560  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
000564  33840a28  zext_int2long r[9:10], r21
000568  17435302  srl.d r[7:8], r[7:8], r5
00056c  1f73f3ff  addli r6, r6, -1
000570  33030328  zext_int2long r[7:8], r6
000574  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
000578  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
00057c  97c76703  srl.d r[16:17], r[16:17], r22
000580  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
000584  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
000588  97071403  and.d r[16:17], r[9:10], r[18:19]
00058c  17446403  srl.d r[9:10], r[9:10], r22
000590  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
000594  97cb5702  srl.d r[24:25], r[16:17], r5
000598  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
00059c  97b75603  sll.d r[16:17], r[14:15], r21
0005a0  abf41f00  lui r9, 511
0005a4  97b25203  sll.d r[6:7], r[6:7], r21
0005a8  97cc6703  srl.d r[26:27], r[16:17], r22
0005ac  978d3703  and.d r[28:29], r[16:17], r[20:21]
0005b0  1b96f4ff  ori r12, r9, 4095
0005b4  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
0005b8  a7f232fe  addli.d r[6:7], r[6:7], 32543
0005bc  97831203  and.d r[8:9], r[6:7], r[18:19]
0005c0  97c26203  srl.d r[6:7], r[6:7], r22
0005c4  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
0005c8  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
0005cc  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
0005d0  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
0005d4  97881303  and.d r[18:19], r[8:9], r[18:19]
0005d8  97cb6b03  srl.d r[24:25], r[24:25], r22
0005dc  97cc6d03  srl.d r[26:27], r[28:29], r22
0005e0  97893d03  and.d r[20:21], r[28:29], r[20:21]
0005e4  97c36303  srl.d r[8:9], r[8:9], r22
0005e8  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
0005ec  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
0005f0  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
0005f4  0b227210  add.ul r[5:6], r[5:6], r[8:9]
0005f8  17c36803  srl.d r[7:8], r[18:19], r22
0005fc  0b226210  add.ul r[5:6], r[5:6], r[7:8]
000600  13a34504  setlt.ul r6, r[12:13], r[5:6]
000604  3b710300  bneq r6, zero, 92
000608  1f536000  addli r6, zero, 53
00060c  eb540ffc  load.d r[10:11], -64(r30)
000610  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
000614  9fe0f007  addli r1, r1, 1022
000618  97b46402  sll.d r[10:11], r[10:11], r6
00061c  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
000620  1f73f00f  addli r6, zero, 2047
000624  3fa06000  blt.s r1, r6, 8
000628  5b0c0000  j 96
00062c  1f150000  addli r10, zero, 1
000630  bfb1a000  blt.s r1, r10, 108
000634  2bf30f00  lui r6, 255
000638  abf3ffff  lui r7, 1048575
00063c  b3850028  zext_int2long r[12:13], r1
000640  9f406000  addli r1, zero, 52
000644  1734a402  sll.d r[9:10], r[9:10], r10
000648  1b17f3ff  ori r14, r6, 4095
00064c  97b51502  sll.d r[12:13], r[12:13], r1
000650  9b96f3ff  ori r13, r7, 4095
000654  1702d202  and.d r[5:6], r[5:6], r[14:15]
000658  17924502  or.d r[5:6], r[12:13], r[5:6]
00065c  db140000  j 164
000660  17425203  srl.d r[5:6], r[5:6], r21
000664  1f436000  addli r6, zero, 52
000668  eb530ffc  load.d r[8:9], -64(r30)
00066c  9ff0f007  addli r1, r1, 1023
000670  eb578ffb  load.d r[16:17], -72(r30)
000674  17b36302  sll.d r[7:8], r[8:9], r6
000678  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
00067c  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
000680  1f73f00f  addli r6, zero, 2047
000684  bfae60fe  blt.s r1, r6, -88
000688  2b01f07f  lui r2, 524032
00068c  eb518ffc  load.d r[4:5], -56(r30)
000690  9f000000  addli r1, zero, 0
000694  17911102  or.d r[3:4], r[4:5], r[2:3]
000698  db100000  j 132
00069c  2bf3ffff  lui r6, 1048575
0006a0  1b13b3fc  ori r6, r6, 4043
0006a4  bf701300  blt.s r6, r1, 60
0006a8  6b518ffc  load.d r[3:4], -56(r30)
0006ac  5b0e0000  j 112
0006b0  ab02f07f  lui r5, 524032
0006b4  1f020000  addli r4, zero, 0
0006b8  93a64702  setneq.d r13, r[16:17], r[5:6]
0006bc  3be20600  bneq r13, zero, 152
0006c0  1f020000  addli r4, zero, 0
0006c4  13214100  seteq.d r2, r[3:4], r[5:6]
0006c8  b7060100  beq r2, zero, 416
0006cc  ab01f87f  lui r3, 524160
0006d0  9f060000  addli r13, zero, 0
0006d4  1f020000  addli r4, zero, 0
0006d8  1f010000  addli r2, zero, 0
0006dc  5bbaffff  j -560
0006e0  9f130000  addli r7, zero, 1
0006e4  1fc36000  addli r6, r1, 52
0006e8  8b901318  sub.s r1, r7, r1
0006ec  17b46702  sll.d r[9:10], r[16:17], r6
0006f0  17421202  srl.d r[5:6], r[5:6], r1
0006f4  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
0006f8  17337502  sll.d r[7:8], r[11:12], r7
0006fc  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
000700  23031200  andi.d r[7:8], r[5:6], 1
000704  0b238310  add.ul r[7:8], r[7:8], r[9:10]
000708  93206104  setlt.ul r1, r[3:4], r[7:8]
00070c  b3800028  zext_int2long r[2:3], r1
000710  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000714  eb518ffc  load.d r[4:5], -56(r30)
000718  17913002  or.d r[3:4], r[2:3], r[4:5]
00071c  e38f3e00  loadli.w r31,  24(sp)
000720  63cf3e00  loadli.w r30,  28(sp)
000724  638e4e00  loadli.w r28,  32(sp)
000728  e3cd4e00  loadli.w r27,  36(sp)
00072c  638d5e00  loadli.w r26,  40(sp)
000730  e3cc5e00  loadli.w r25,  44(sp)
000734  638c6e00  loadli.w r24,  48(sp)
000738  e3cb6e00  loadli.w r23,  52(sp)
00073c  638b7e00  loadli.w r22,  56(sp)
000740  e3ca7e00  loadli.w r21,  60(sp)
000744  638a8e00  loadli.w r20,  64(sp)
000748  e3c98e00  loadli.w r19,  68(sp)
00074c  9f8e9e00  addli sp, sp, 72
000750  5f800f00  jr r31, 0
000754  1f020000  addli r4, zero, 0
000758  13224102  setneq.d r4, r[3:4], r[5:6]
00075c  3b500200  bneq r4, zero, 20
000760  9f060000  addli r13, zero, 0
000764  1f020000  addli r4, zero, 0
000768  27010300  addli.d r[3:4], r[7:8], 0
00076c  5ba8ffff  j -704
000770  33020028  zext_int2long r[5:6], zero
000774  13a24702  setneq.d r4, r[16:17], r[5:6]
000778  37240200  beq r4, zero, 264
00077c  33020028  zext_int2long r[5:6], zero
000780  13224102  setneq.d r4, r[3:4], r[5:6]
000784  b7130200  beq r4, zero, 228
000788  2bf20f00  lui r4, 255
00078c  abf2ffff  lui r5, 1048575
000790  1b17f2ff  ori r14, r4, 4095
000794  9b96f2ff  ori r13, r5, 4095
000798  13a2f604  setlt.ul r4, r[14:15], r[16:17]
00079c  bb630200  bneq r4, zero, 248
0007a0  9f120000  addli r5, zero, 1
0007a4  9f270000  addli r15, zero, 2
0007a8  1f420000  addli r4, zero, 4
0007ac  1f081000  addli r16, zero, 8
0007b0  97485402  srl.d r[18:19], r[9:10], r5
0007b4  97181403  or.d r[18:19], r[9:10], r[18:19]
0007b8  97c9f802  srl.d r[20:21], r[18:19], r15
0007bc  97983803  or.d r[18:19], r[18:19], r[20:21]
0007c0  97c94802  srl.d r[20:21], r[18:19], r4
0007c4  97983803  or.d r[18:19], r[18:19], r[20:21]
0007c8  9f092000  addli r19, zero, 16
0007cc  17ca0803  srl.d r[21:22], r[18:19], r16
0007d0  17984803  or.d r[17:18], r[18:19], r[21:22]
0007d4  1f094000  addli r18, zero, 32
0007d8  97493803  srl.d r[20:21], r[17:18], r19
0007dc  17183803  or.d r[17:18], r[17:18], r[20:21]
0007e0  2b5a5555  lui r20, 349525
0007e4  17492803  srl.d r[19:20], r[17:18], r18
0007e8  17182803  or.d r[17:18], r[17:18], r[19:20]
0007ec  33990628  sext_int2long r[19:20], r13
0007f0  17282803  xor.d r[17:18], r[17:18], r[19:20]
0007f4  1b195a55  ori r18, r20, 1365
0007f8  174a5802  srl.d r[21:22], r[17:18], r5
0007fc  9f090900  addli r19, r18, 0
000800  ab323333  lui r5, 209715
000804  17092a03  and.d r[19:20], r[21:22], r[19:20]
000808  1b9a3233  ori r20, r5, 819
00080c  ab020f0f  lui r5, 61680
000810  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
000814  9f0a0a00  addli r21, r20, 0
000818  1749f802  srl.d r[19:20], r[17:18], r15
00081c  97074803  and.d r[16:17], r[17:18], r[21:22]
000820  97084903  and.d r[18:19], r[19:20], r[21:22]
000824  ab090101  lui r19, 4112
000828  1f0a7000  addli r20, zero, 56
00082c  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
000830  97c84702  srl.d r[18:19], r[16:17], r4
000834  1b92f2f0  ori r4, r5, 3855
000838  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
00083c  9f020200  addli r5, r4, 0
000840  9f481000  addli r17, zero, 12
000844  17824702  and.d r[5:6], r[16:17], r[5:6]
000848  9b971910  ori r15, r19, 257
00084c  1f880700  addli r16, r15, 0
000850  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
000854  17424203  srl.d r[5:6], r[5:6], r20
000858  9f57e2ff  addli r15, r4, -11
00085c  0b924818  sub.s r4, r17, r4
000860  1734f402  sll.d r[9:10], r[9:10], r15
000864  db060000  j 52
000868  ab01f07f  lui r3, 524032
00086c  9f060000  addli r13, zero, 0
000870  1f020000  addli r4, zero, 0
000874  1f010000  addli r2, zero, 0
000878  17112302  or.d r[3:4], r[7:8], r[3:4]
00087c  5b86ffff  j -976
000880  33020028  zext_int2long r[5:6], zero
000884  13214100  seteq.d r2, r[3:4], r[5:6]
000888  bb430100  bneq r2, zero, 240
00088c  27010300  addli.d r[3:4], r[7:8], 0
000890  5b1e0000  j 240
000894  1f020000  addli r4, zero, 0
000898  13a12604  setlt.ul r2, r[14:15], r[3:4]
00089c  3b530100  bneq r2, zero, 212
0008a0  9f160000  addli r13, zero, 1
0008a4  9f210000  addli r3, zero, 2
0008a8  1f410000  addli r2, zero, 4
0008ac  9f021000  addli r5, zero, 8
0008b0  1f072000  addli r14, zero, 16
0008b4  97c7d502  srl.d r[16:17], r[12:13], r13
0008b8  9797f502  or.d r[16:17], r[12:13], r[16:17]
0008bc  97c83702  srl.d r[18:19], r[16:17], r3
0008c0  97971703  or.d r[16:17], r[16:17], r[18:19]
0008c4  97c82702  srl.d r[18:19], r[16:17], r2
0008c8  97971703  or.d r[16:17], r[16:17], r[18:19]
0008cc  97c85702  srl.d r[18:19], r[16:17], r5
0008d0  9f024000  addli r5, zero, 32
0008d4  97971703  or.d r[16:17], r[16:17], r[18:19]
0008d8  97c8e702  srl.d r[18:19], r[16:17], r14
0008dc  2bf7ffff  lui r14, 1048575
0008e0  97971703  or.d r[16:17], r[16:17], r[18:19]
0008e4  1b17f7ff  ori r14, r14, 4095
0008e8  97c85702  srl.d r[18:19], r[16:17], r5
0008ec  ab525555  lui r5, 349525
0008f0  97971703  or.d r[16:17], r[16:17], r[18:19]
0008f4  b3180728  sext_int2long r[18:19], r14
0008f8  9b995255  ori r19, r5, 1365
0008fc  ab323333  lui r5, 209715
000900  17a71703  xor.d r[15:16], r[16:17], r[18:19]
000904  1f8a0900  addli r20, r19, 0
000908  1748d702  srl.d r[17:18], r[15:16], r13
00090c  17083803  and.d r[17:18], r[17:18], r[20:21]
000910  1b993233  ori r18, r5, 819
000914  ab020101  lui r5, 4112
000918  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
00091c  9f090900  addli r19, r18, 0
000920  17483702  srl.d r[17:18], r[15:16], r3
000924  17072703  and.d r[15:16], r[15:16], r[19:20]
000928  ab010f0f  lui r3, 61680
00092c  17082803  and.d r[17:18], r[17:18], r[19:20]
000930  1b99f1f0  ori r18, r3, 3855
000934  0b270711  add.ul r[15:16], r[15:16], r[17:18]
000938  9f090900  addli r19, r18, 0
00093c  17412702  srl.d r[3:4], r[15:16], r2
000940  0b212710  add.ul r[3:4], r[15:16], r[3:4]
000944  1b971210  ori r14, r5, 257
000948  9f027000  addli r5, zero, 56
00094c  17012103  and.d r[3:4], r[3:4], r[19:20]
000950  9f070700  addli r15, r14, 0
000954  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
000958  17415102  srl.d r[3:4], r[3:4], r5
00095c  9f52e1ff  addli r5, r2, -11
000960  0b114110  add.s r2, r2, r4
000964  97b55502  sll.d r[12:13], r[12:13], r5
000968  1f42e1ff  addli r4, r2, -12
00096c  5b010000  j 8
000970  9f160000  addli r13, zero, 1
000974  5b67ffff  j -1224
000978  ab01f87f  lui r3, 524160
00097c  1f010000  addli r2, zero, 0
000980  9f060000  addli r13, zero, 0
000984  db64ffff  j -1244
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
