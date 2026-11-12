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
0000dc  9f8e0efe  addli sp, sp, -256
0000e0  1f8f8e01  addli r30, sp, 192
0000e4  00520002  load_param_i r4, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  67451ffe  storeli.w r1, -172(r30)
000100  cbaa4000  ble.s r1, r4, 680
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  2b03f03f  lui r6, 261888
000110  9f044000  addli r9, zero, 32
000114  1f058fff  addli r10, r30, -64
000118  9f020000  addli r5, zero, 0
00011c  9bb03000  slli r1, r1, 3
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
00014c  1b1b310e  ori r22, r2, 227
000150  2b71823e  lui r2, 256039
000154  9b90300e  ori r1, r1, 227
000158  9b1d6190  ori r27, r2, 2310
00015c  e7461ffe  storeli.w r1, -148(r30)
000160  abd0873f  lui r1, 260221
000164  9b9020c2  ori r1, r1, 3106
000168  e7061ffe  storeli.w r1, -152(r30)
00016c  aba091be  lui r1, 780570
000170  9b9ae098  ori r21, r1, 2446
000174  5b070000  j 56
000178  6b510f01  load.d r[3:4], 16(r30)
00017c  6b528ff5  load.d r[5:6], -168(r30)
000180  ab0000f0  lui r1, 983040
000184  97901400  or r1, r9, r1
000188  0b214110  add.ul r[3:4], r[3:4], r[5:6]
00018c  6342cffe  loadli.w r4,  -156(r30)
000190  ff30a100  s_lm2gm r1, r10, 0(r[3:4])
000194  e300affe  loadli.w r1,  -176(r30)
000198  00a00000  mfence { lm }
00019c  0b121210  add.s r4, r4, r1
0001a0  e340affe  loadli.w r1,  -172(r30)
0001a4  3f201200  blt.s r4, r1, 8
0001a8  5b400000  j 512
0001ac  e3404f00  loadli.w r1,  36(r30)
0001b0  63014f00  loadli.w r2,  32(r30)
0001b4  67464ffe  storeli.w r4, -156(r30)
0001b8  9f230000  addli r7, zero, 2
0001bc  1f0e0000  addli r28, zero, 0
0001c0  8b101230  div.s r1, r4, r1
0001c4  8b902030  div.s r1, r1, r2
0001c8  63419ffe  loadli.w r2,  -180(r30)
0001cc  9bb09000  slli r1, r1, 9
0001d0  8b902010  add.s r1, r1, r2
0001d4  1f010008  addli r2, zero, 1024
0001d8  0b912038  mod.s r2, r1, r2
0001dc  b3910028  sext_int2long r[4:5], r1
0001e0  ab0000f0  lui r1, 983040
0001e4  97b57102  sll.d r[12:13], r[4:5], r7
0001e8  97901400  or r1, r9, r1
0001ec  733cbff4  store.d r[12:13], -168(r30)
0001f0  b3120128  sext_int2long r[6:7], r2
0001f4  2b0100f0  lui r2, 983040
0001f8  97b17202  sll.d r[4:5], r[6:7], r7
0001fc  eb520f00  load.d r[6:7], 0(r30)
000200  eb538f00  load.d r[8:9], 8(r30)
000204  17912400  or r2, r9, r2
000208  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
00020c  8ba2b210  add.ul r[6:7], r[6:7], r[12:13]
000210  9f030fff  addli r7, r30, -128
000214  ffa07200  l_gm2lm r1, r7, 0(r[6:7])
000218  7fa1a100  l_gm2lm r2, r10, 0(r[4:5])
00021c  00a00000  mfence { lm }
000220  5b080000  j 64
000224  ab02803f  lui r5, 260096
000228  ab01003f  lui r3, 258048
00022c  9f044000  addli r9, zero, 32
000230  1f058fff  addli r10, r30, -64
000234  1f0e1e00  addli r28, r28, 8
000238  0be13c20  mul.f.rn r2, r25, r3
00023c  0b625a10  add.f.rn r4, r20, r5
000240  8b613d20  mul.f.rn r3, r26, r3
000244  8be05010  add.f.rn r1, r1, r5
000248  0b614120  mul.f.rn r2, r2, r4
00024c  8be01120  mul.f.rn r1, r3, r1
000250  67802900  storeli.w r2, 0(r19)
000254  67c01900  storeli.w r1, 4(r19)
000258  00a00000  mfence { lm }
00025c  377c9efe  beq r28, r9, -228
000260  9f000fff  addli r1, r30, -128
000264  8b19c511  add.s r19, r10, r28
000268  8b90c011  add.s r1, r1, r28
00026c  e3810900  loadli.w r3,  0(r19)
000270  e3cb0900  loadli.w r23,  4(r19)
000274  63810000  loadli.w r2,  0(r1)
000278  63cd0000  loadli.w r26,  4(r1)
00027c  8b6c3110  add.f.rn r25, r2, r3
000280  6341fffe  loadli.w r2,  -132(r30)
000284  e301fffe  loadli.w r3,  -136(r30)
000288  8be32c20  mul.f.rn r7, r25, r2
00028c  0bea0360  abs.f r20, r7
000290  9bb29300  slli r5, r7, 9
000294  8b613a20  mul.f.rn r3, r20, r3
000298  13830200  seteq r6, r5, zero
00029c  0fa40108  .word 0x0801a40f
0002a0  6b510ff7  load.d r[3:4], -144(r30)
0002a4  0f122420  .word 0x2024120f
0002a8  1bc47301  srli r8, r7, 23
0002ac  93e30304  setlt.f r7, r7, zero
0002b0  1b04f40f  andi r8, r8, 255
0002b4  1b74f40f  setlti r8, r8, 255
0002b8  97106400  or r1, r8, r6
0002bc  178c1300  and r24, r7, r1
0002c0  d7760000  jal 948
0002c4  8f300110  .word 0x1001308f
0002c8  6341dffe  loadli.w r2,  -148(r30)
0002cc  e301dffe  loadli.w r3,  -152(r30)
0002d0  0b620a58  neg.f r4, r20
0002d4  0be13050  fmac.f.rn r2, r1, r3
0002d8  9f010b00  addli r3, r22, 0
0002dc  8b611150  fmac.f.rn r3, r2, r1
0002e0  1f810a00  addli r2, r21, 0
0002e4  0be11150  fmac.f.rn r2, r3, r1
0002e8  9f810d00  addli r3, r27, 0
0002ec  8b611150  fmac.f.rn r3, r2, r1
0002f0  0b614a20  mul.f.rn r2, r20, r4
0002f4  2b0a803f  lui r20, 260096
0002f8  8be10158  neg.f r3, r3
0002fc  0f010100  exp.f.rn r2, r2
000300  8be03020  mul.f.rn r1, r1, r3
000304  0bea2050  fmac.f.rn r20, r1, r2
000308  37200c00  beq r24, zero, 8
00030c  0b6a0a58  neg.f r20, r20
000310  0b6d7d11  add.f.rn r26, r26, r23
000314  e340fffe  loadli.w r1,  -132(r30)
000318  6301fffe  loadli.w r2,  -136(r30)
00031c  8b601d20  mul.f.rn r1, r26, r1
000320  8beb0060  abs.f r23, r1
000324  1bb29000  slli r4, r1, 9
000328  0be12b20  mul.f.rn r2, r23, r2
00032c  13030200  seteq r6, r4, zero
000330  8f230108  .word 0x0801238f
000334  6b510ff7  load.d r[3:4], -144(r30)
000338  0f922320  .word 0x2023920f
00033c  9bc37001  srli r7, r1, 23
000340  93e00004  setlt.f r1, r1, zero
000344  9b83f30f  andi r7, r7, 255
000348  9bf3f30f  setlti r7, r7, 255
00034c  17936300  or r6, r7, r6
000350  178c6000  and r24, r1, r6
000354  d7760000  jal 948
000358  8f300110  .word 0x1001308f
00035c  6341dffe  loadli.w r2,  -148(r30)
000360  e301dffe  loadli.w r3,  -152(r30)
000364  0be20b58  neg.f r4, r23
000368  0be13050  fmac.f.rn r2, r1, r3
00036c  9f010b00  addli r3, r22, 0
000370  8b611150  fmac.f.rn r3, r2, r1
000374  1f810a00  addli r2, r21, 0
000378  0be11150  fmac.f.rn r2, r3, r1
00037c  9f810d00  addli r3, r27, 0
000380  8b611150  fmac.f.rn r3, r2, r1
000384  0be14b20  mul.f.rn r2, r23, r4
000388  8be10158  neg.f r3, r3
00038c  0f010100  exp.f.rn r2, r2
000390  8be13020  mul.f.rn r3, r1, r3
000394  ab00803f  lui r1, 260096
000398  8be02150  fmac.f.rn r1, r3, r2
00039c  372a0cfe  beq r24, zero, -376
0003a0  8be00058  neg.f r1, r1
0003a4  5bd0ffff  j -384
0003a8  9f8e8e01  addli sp, sp, 192
0003ac  00a00300  mfence { lm, sm, gm }
0003b0  00100000  exit
0003b4  9f8e7eff  addli sp, sp, -72
0003b8  9f406000  addli r1, zero, 52
0003bc  2bf50f00  lui r10, 255
0003c0  abf7ffff  lui r15, 1048575
0003c4  ab040080  lui r9, 524288
0003c8  17232202  xor.d r[7:8], r[5:6], r[3:4]
0003cc  e7c1ee01  storeli.w r30, 28(sp)
0003d0  67c43e01  storeli.w r19, 68(sp)
0003d4  67844e01  storeli.w r20, 64(sp)
0003d8  e7c35e01  storeli.w r21, 60(sp)
0003dc  e7836e01  storeli.w r22, 56(sp)
0003e0  67c37e01  storeli.w r23, 52(sp)
0003e4  67838e01  storeli.w r24, 48(sp)
0003e8  e7c29e01  storeli.w r25, 44(sp)
0003ec  e782ae01  storeli.w r26, 40(sp)
0003f0  67c2be01  storeli.w r27, 36(sp)
0003f4  6782ce01  storeli.w r28, 32(sp)
0003f8  e781fe01  storeli.w r31, 24(sp)
0003fc  1f8f9e00  addli r30, sp, 72
000400  1f040000  addli r8, zero, 0
000404  97451102  srl.d r[12:13], r[3:4], r1
000408  17481202  srl.d r[17:18], r[5:6], r1
00040c  1b17f5ff  ori r14, r10, 4095
000410  9b96f7ff  ori r13, r15, 4095
000414  17038302  and.d r[7:8], r[7:8], r[9:10]
000418  9b80f57f  andi r1, r11, 2047
00041c  1b05f87f  andi r10, r16, 2047
000420  9b982780  ori r17, r15, 2050
000424  1704d102  and.d r[9:10], r[3:4], r[14:15]
000428  9705d202  and.d r[12:13], r[5:6], r[14:15]
00042c  1f9800f0  addli r16, r1, -2047
000430  13081805  setlt.u r16, r16, r17
000434  3b700800  bneq r16, zero, 28
000438  1f1805f0  addli r16, r10, -2047
00043c  9b971780  ori r15, r15, 2049
000440  93870705  setlt.u r15, r15, r16
000444  37b00700  beq r15, zero, 12
000448  1f020000  addli r4, zero, 0
00044c  5b0b0000  j 88
000450  abf7ff7f  lui r15, 524287
000454  2b09f07f  lui r18, 524032
000458  9f180000  addli r17, zero, 1
00045c  1b97f7ff  ori r14, r15, 4095
000460  9707d102  and.d r[16:17], r[3:4], r[14:15]
000464  93a91705  setlt.ul r19, r[16:17], r[18:19]
000468  3be00900  bneq r19, zero, 24
00046c  ab020800  lui r5, 128
000470  9f060000  addli r13, zero, 0
000474  1f020000  addli r4, zero, 0
000478  17114102  or.d r[3:4], r[3:4], r[5:6]
00047c  5b040000  j 32
000480  1701d202  and.d r[3:4], r[5:6], r[14:15]
000484  93261105  setlt.ul r13, r[3:4], r[18:19]
000488  3bf80600  bneq r13, zero, 540
00048c  ab010800  lui r3, 128
000490  9f060000  addli r13, zero, 0
000494  1f010000  addli r2, zero, 0
000498  17112202  or.d r[3:4], r[5:6], r[3:4]
00049c  1f020000  addli r4, zero, 0
0004a0  b7c90600  beq r13, zero, 624
0004a4  ab011000  lui r3, 256
0004a8  9f371000  addli r15, zero, 11
0004ac  abf9ffff  lui r19, 1048575
0004b0  2bf90475  lui r18, 479311
0004b4  9f582000  addli r17, zero, 21
0004b8  73346ffc  store.d r[7:8], -56(r30)
0004bc  9f723000  addli r5, zero, 31
0004c0  73308ffc  store.d r[9:10], -64(r30)
0004c4  8b90a018  sub.s r1, r1, r10
0004c8  1f010000  addli r2, zero, 0
0004cc  97b7f502  sll.d r[16:17], r[12:13], r15
0004d0  9b1a3933  ori r21, r18, 819
0004d4  8b101210  add.s r1, r4, r1
0004d8  97162402  or.d r[14:15], r[9:10], r[3:4]
0004dc  17912502  or.d r[3:4], r[12:13], r[3:4]
0004e0  9b950980  ori r11, r19, 2048
0004e4  733cdffa  store.d r[14:15], -72(r30)
0004e8  338c0528  zext_int2long r[25:26], r11
0004ec  174b1103  srl.d r[23:24], r[3:4], r17
0004f0  9b95f9ff  ori r11, r19, 4095
0004f4  9b99e9ff  ori r19, r19, 4094
0004f8  b3880528  zext_int2long r[18:19], r11
0004fc  8b9a6a19  sub.s r21, r21, r22
000500  97878703  and.d r[16:17], r[16:17], r[25:26]
000504  b3890928  zext_int2long r[20:21], r19
000508  170d1b03  and.d r[27:28], r[23:24], r[18:19]
00050c  b38a0a28  zext_int2long r[22:23], r21
000510  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
000514  0b930358  neg.s r6, r7
000518  33030328  zext_int2long r[7:8], r6
00051c  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
000520  17435302  srl.d r[7:8], r[7:8], r5
000524  17031303  and.d r[7:8], r[7:8], r[18:19]
000528  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
00052c  8b1a0b58  neg.s r21, r22
000530  b38a0a28  zext_int2long r[22:23], r21
000534  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
000538  17435302  srl.d r[7:8], r[7:8], r5
00053c  17031303  and.d r[7:8], r[7:8], r[18:19]
000540  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
000544  8b1a0b58  neg.s r21, r22
000548  1f0b4000  addli r22, zero, 32
00054c  33840a28  zext_int2long r[9:10], r21
000550  9f1a0000  addli r21, zero, 1
000554  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
000558  33840a28  zext_int2long r[9:10], r21
00055c  17435302  srl.d r[7:8], r[7:8], r5
000560  1f73f3ff  addli r6, r6, -1
000564  33030328  zext_int2long r[7:8], r6
000568  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
00056c  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
000570  97c76703  srl.d r[16:17], r[16:17], r22
000574  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
000578  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
00057c  97071403  and.d r[16:17], r[9:10], r[18:19]
000580  17446403  srl.d r[9:10], r[9:10], r22
000584  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
000588  97cb5702  srl.d r[24:25], r[16:17], r5
00058c  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
000590  97b75603  sll.d r[16:17], r[14:15], r21
000594  abf41f00  lui r9, 511
000598  97b25203  sll.d r[6:7], r[6:7], r21
00059c  97cc6703  srl.d r[26:27], r[16:17], r22
0005a0  978d3703  and.d r[28:29], r[16:17], r[20:21]
0005a4  1b96f4ff  ori r12, r9, 4095
0005a8  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
0005ac  a7f232fe  addli.d r[6:7], r[6:7], 32543
0005b0  97831203  and.d r[8:9], r[6:7], r[18:19]
0005b4  97c26203  srl.d r[6:7], r[6:7], r22
0005b8  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
0005bc  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
0005c0  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
0005c4  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
0005c8  97881303  and.d r[18:19], r[8:9], r[18:19]
0005cc  97cb6b03  srl.d r[24:25], r[24:25], r22
0005d0  97cc6d03  srl.d r[26:27], r[28:29], r22
0005d4  97893d03  and.d r[20:21], r[28:29], r[20:21]
0005d8  97c36303  srl.d r[8:9], r[8:9], r22
0005dc  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
0005e0  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
0005e4  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
0005e8  0b227210  add.ul r[5:6], r[5:6], r[8:9]
0005ec  17c36803  srl.d r[7:8], r[18:19], r22
0005f0  0b226210  add.ul r[5:6], r[5:6], r[7:8]
0005f4  13a34504  setlt.ul r6, r[12:13], r[5:6]
0005f8  3b710300  bneq r6, zero, 92
0005fc  1f536000  addli r6, zero, 53
000600  eb540ffc  load.d r[10:11], -64(r30)
000604  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
000608  9fe0f007  addli r1, r1, 1022
00060c  97b46402  sll.d r[10:11], r[10:11], r6
000610  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
000614  1f73f00f  addli r6, zero, 2047
000618  3fa06000  blt.s r1, r6, 8
00061c  5b0c0000  j 96
000620  1f150000  addli r10, zero, 1
000624  bfb1a000  blt.s r1, r10, 108
000628  2bf30f00  lui r6, 255
00062c  abf3ffff  lui r7, 1048575
000630  b3850028  zext_int2long r[12:13], r1
000634  9f406000  addli r1, zero, 52
000638  1734a402  sll.d r[9:10], r[9:10], r10
00063c  1b17f3ff  ori r14, r6, 4095
000640  97b51502  sll.d r[12:13], r[12:13], r1
000644  9b96f3ff  ori r13, r7, 4095
000648  1702d202  and.d r[5:6], r[5:6], r[14:15]
00064c  17924502  or.d r[5:6], r[12:13], r[5:6]
000650  db140000  j 164
000654  17425203  srl.d r[5:6], r[5:6], r21
000658  1f436000  addli r6, zero, 52
00065c  eb530ffc  load.d r[8:9], -64(r30)
000660  9ff0f007  addli r1, r1, 1023
000664  eb578ffb  load.d r[16:17], -72(r30)
000668  17b36302  sll.d r[7:8], r[8:9], r6
00066c  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
000670  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
000674  1f73f00f  addli r6, zero, 2047
000678  bfae60fe  blt.s r1, r6, -88
00067c  2b01f07f  lui r2, 524032
000680  eb518ffc  load.d r[4:5], -56(r30)
000684  9f000000  addli r1, zero, 0
000688  17911102  or.d r[3:4], r[4:5], r[2:3]
00068c  db100000  j 132
000690  2bf3ffff  lui r6, 1048575
000694  1b13b3fc  ori r6, r6, 4043
000698  bf701300  blt.s r6, r1, 60
00069c  6b518ffc  load.d r[3:4], -56(r30)
0006a0  5b0e0000  j 112
0006a4  ab02f07f  lui r5, 524032
0006a8  1f020000  addli r4, zero, 0
0006ac  93a64702  setneq.d r13, r[16:17], r[5:6]
0006b0  3be20600  bneq r13, zero, 152
0006b4  1f020000  addli r4, zero, 0
0006b8  13214100  seteq.d r2, r[3:4], r[5:6]
0006bc  b7060100  beq r2, zero, 416
0006c0  ab01f87f  lui r3, 524160
0006c4  9f060000  addli r13, zero, 0
0006c8  1f020000  addli r4, zero, 0
0006cc  1f010000  addli r2, zero, 0
0006d0  5bbaffff  j -560
0006d4  9f130000  addli r7, zero, 1
0006d8  1fc36000  addli r6, r1, 52
0006dc  8b901318  sub.s r1, r7, r1
0006e0  17b46702  sll.d r[9:10], r[16:17], r6
0006e4  17421202  srl.d r[5:6], r[5:6], r1
0006e8  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
0006ec  17337502  sll.d r[7:8], r[11:12], r7
0006f0  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
0006f4  23031200  andi.d r[7:8], r[5:6], 1
0006f8  0b238310  add.ul r[7:8], r[7:8], r[9:10]
0006fc  93206104  setlt.ul r1, r[3:4], r[7:8]
000700  b3800028  zext_int2long r[2:3], r1
000704  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000708  eb518ffc  load.d r[4:5], -56(r30)
00070c  17913002  or.d r[3:4], r[2:3], r[4:5]
000710  e38f3e00  loadli.w r31,  24(sp)
000714  63cf3e00  loadli.w r30,  28(sp)
000718  638e4e00  loadli.w r28,  32(sp)
00071c  e3cd4e00  loadli.w r27,  36(sp)
000720  638d5e00  loadli.w r26,  40(sp)
000724  e3cc5e00  loadli.w r25,  44(sp)
000728  638c6e00  loadli.w r24,  48(sp)
00072c  e3cb6e00  loadli.w r23,  52(sp)
000730  638b7e00  loadli.w r22,  56(sp)
000734  e3ca7e00  loadli.w r21,  60(sp)
000738  638a8e00  loadli.w r20,  64(sp)
00073c  e3c98e00  loadli.w r19,  68(sp)
000740  9f8e9e00  addli sp, sp, 72
000744  5f800f00  jr r31, 0
000748  1f020000  addli r4, zero, 0
00074c  13224102  setneq.d r4, r[3:4], r[5:6]
000750  3b500200  bneq r4, zero, 20
000754  9f060000  addli r13, zero, 0
000758  1f020000  addli r4, zero, 0
00075c  27010300  addli.d r[3:4], r[7:8], 0
000760  5ba8ffff  j -704
000764  33020028  zext_int2long r[5:6], zero
000768  13a24702  setneq.d r4, r[16:17], r[5:6]
00076c  37240200  beq r4, zero, 264
000770  33020028  zext_int2long r[5:6], zero
000774  13224102  setneq.d r4, r[3:4], r[5:6]
000778  b7130200  beq r4, zero, 228
00077c  2bf20f00  lui r4, 255
000780  abf2ffff  lui r5, 1048575
000784  1b17f2ff  ori r14, r4, 4095
000788  9b96f2ff  ori r13, r5, 4095
00078c  13a2f604  setlt.ul r4, r[14:15], r[16:17]
000790  bb630200  bneq r4, zero, 248
000794  9f120000  addli r5, zero, 1
000798  9f270000  addli r15, zero, 2
00079c  1f420000  addli r4, zero, 4
0007a0  1f081000  addli r16, zero, 8
0007a4  97485402  srl.d r[18:19], r[9:10], r5
0007a8  97181403  or.d r[18:19], r[9:10], r[18:19]
0007ac  97c9f802  srl.d r[20:21], r[18:19], r15
0007b0  97983803  or.d r[18:19], r[18:19], r[20:21]
0007b4  97c94802  srl.d r[20:21], r[18:19], r4
0007b8  97983803  or.d r[18:19], r[18:19], r[20:21]
0007bc  9f092000  addli r19, zero, 16
0007c0  17ca0803  srl.d r[21:22], r[18:19], r16
0007c4  17984803  or.d r[17:18], r[18:19], r[21:22]
0007c8  1f094000  addli r18, zero, 32
0007cc  97493803  srl.d r[20:21], r[17:18], r19
0007d0  17183803  or.d r[17:18], r[17:18], r[20:21]
0007d4  2b5a5555  lui r20, 349525
0007d8  17492803  srl.d r[19:20], r[17:18], r18
0007dc  17182803  or.d r[17:18], r[17:18], r[19:20]
0007e0  33990628  sext_int2long r[19:20], r13
0007e4  17282803  xor.d r[17:18], r[17:18], r[19:20]
0007e8  1b195a55  ori r18, r20, 1365
0007ec  174a5802  srl.d r[21:22], r[17:18], r5
0007f0  9f090900  addli r19, r18, 0
0007f4  ab323333  lui r5, 209715
0007f8  17092a03  and.d r[19:20], r[21:22], r[19:20]
0007fc  1b9a3233  ori r20, r5, 819
000800  ab020f0f  lui r5, 61680
000804  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
000808  9f0a0a00  addli r21, r20, 0
00080c  1749f802  srl.d r[19:20], r[17:18], r15
000810  97074803  and.d r[16:17], r[17:18], r[21:22]
000814  97084903  and.d r[18:19], r[19:20], r[21:22]
000818  ab090101  lui r19, 4112
00081c  1f0a7000  addli r20, zero, 56
000820  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
000824  97c84702  srl.d r[18:19], r[16:17], r4
000828  1b92f2f0  ori r4, r5, 3855
00082c  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
000830  9f020200  addli r5, r4, 0
000834  9f481000  addli r17, zero, 12
000838  17824702  and.d r[5:6], r[16:17], r[5:6]
00083c  9b971910  ori r15, r19, 257
000840  1f880700  addli r16, r15, 0
000844  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
000848  17424203  srl.d r[5:6], r[5:6], r20
00084c  9f57e2ff  addli r15, r4, -11
000850  0b924818  sub.s r4, r17, r4
000854  1734f402  sll.d r[9:10], r[9:10], r15
000858  db060000  j 52
00085c  ab01f07f  lui r3, 524032
000860  9f060000  addli r13, zero, 0
000864  1f020000  addli r4, zero, 0
000868  1f010000  addli r2, zero, 0
00086c  17112302  or.d r[3:4], r[7:8], r[3:4]
000870  5b86ffff  j -976
000874  33020028  zext_int2long r[5:6], zero
000878  13214100  seteq.d r2, r[3:4], r[5:6]
00087c  bb430100  bneq r2, zero, 240
000880  27010300  addli.d r[3:4], r[7:8], 0
000884  5b1e0000  j 240
000888  1f020000  addli r4, zero, 0
00088c  13a12604  setlt.ul r2, r[14:15], r[3:4]
000890  3b530100  bneq r2, zero, 212
000894  9f160000  addli r13, zero, 1
000898  9f210000  addli r3, zero, 2
00089c  1f410000  addli r2, zero, 4
0008a0  9f021000  addli r5, zero, 8
0008a4  1f072000  addli r14, zero, 16
0008a8  97c7d502  srl.d r[16:17], r[12:13], r13
0008ac  9797f502  or.d r[16:17], r[12:13], r[16:17]
0008b0  97c83702  srl.d r[18:19], r[16:17], r3
0008b4  97971703  or.d r[16:17], r[16:17], r[18:19]
0008b8  97c82702  srl.d r[18:19], r[16:17], r2
0008bc  97971703  or.d r[16:17], r[16:17], r[18:19]
0008c0  97c85702  srl.d r[18:19], r[16:17], r5
0008c4  9f024000  addli r5, zero, 32
0008c8  97971703  or.d r[16:17], r[16:17], r[18:19]
0008cc  97c8e702  srl.d r[18:19], r[16:17], r14
0008d0  2bf7ffff  lui r14, 1048575
0008d4  97971703  or.d r[16:17], r[16:17], r[18:19]
0008d8  1b17f7ff  ori r14, r14, 4095
0008dc  97c85702  srl.d r[18:19], r[16:17], r5
0008e0  ab525555  lui r5, 349525
0008e4  97971703  or.d r[16:17], r[16:17], r[18:19]
0008e8  b3180728  sext_int2long r[18:19], r14
0008ec  9b995255  ori r19, r5, 1365
0008f0  ab323333  lui r5, 209715
0008f4  17a71703  xor.d r[15:16], r[16:17], r[18:19]
0008f8  1f8a0900  addli r20, r19, 0
0008fc  1748d702  srl.d r[17:18], r[15:16], r13
000900  17083803  and.d r[17:18], r[17:18], r[20:21]
000904  1b993233  ori r18, r5, 819
000908  ab020101  lui r5, 4112
00090c  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
000910  9f090900  addli r19, r18, 0
000914  17483702  srl.d r[17:18], r[15:16], r3
000918  17072703  and.d r[15:16], r[15:16], r[19:20]
00091c  ab010f0f  lui r3, 61680
000920  17082803  and.d r[17:18], r[17:18], r[19:20]
000924  1b99f1f0  ori r18, r3, 3855
000928  0b270711  add.ul r[15:16], r[15:16], r[17:18]
00092c  9f090900  addli r19, r18, 0
000930  17412702  srl.d r[3:4], r[15:16], r2
000934  0b212710  add.ul r[3:4], r[15:16], r[3:4]
000938  1b971210  ori r14, r5, 257
00093c  9f027000  addli r5, zero, 56
000940  17012103  and.d r[3:4], r[3:4], r[19:20]
000944  9f070700  addli r15, r14, 0
000948  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
00094c  17415102  srl.d r[3:4], r[3:4], r5
000950  9f52e1ff  addli r5, r2, -11
000954  0b114110  add.s r2, r2, r4
000958  97b55502  sll.d r[12:13], r[12:13], r5
00095c  1f42e1ff  addli r4, r2, -12
000960  5b010000  j 8
000964  9f160000  addli r13, zero, 1
000968  5b67ffff  j -1224
00096c  ab01f87f  lui r3, 524160
000970  1f010000  addli r2, zero, 0
000974  9f060000  addli r13, zero, 0
000978  db64ffff  j -1244
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
