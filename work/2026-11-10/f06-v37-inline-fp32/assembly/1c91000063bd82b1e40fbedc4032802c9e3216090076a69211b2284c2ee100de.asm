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
0000dc  9f8e0ef5  addli sp, sp, -1408
0000e0  1f8f8e0a  addli r30, sp, 1344
0000e4  00550002  load_param_i r10, 0
0000e8  63443f00  loadli.w r8,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  e3044f00  loadli.w r9,  32(r30)
0000f4  8b101420  mul.s r1, r8, r1
0000f8  8b959020  mul.s r11, r1, r9
0000fc  cb9ca500  ble.s r11, r10, 804
000100  80300002  core_id r1
000104  2bb1a73e  lui r2, 256635
000108  6b568f00  load.d r[13:14], 8(r30)
00010c  6b570f00  load.d r[15:16], 0(r30)
000110  00d80002  load_param_i r16, 1
000114  1f290000  addli r18, zero, 2
000118  1f0a0ff6  addli r20, r30, -1280
00011c  9f0a0004  addli r21, zero, 512
000120  1f0b0010  addli r22, zero, 2048
000124  9f0b0ffa  addli r23, r30, -768
000128  670dbff4  storeli.w r11, -1328(r30)
00012c  9bb87000  slli r17, r1, 7
000130  abf03f00  lui r1, 1023
000134  e74c0ff5  storeli.w r16, -1332(r30)
000138  9b9cf0ff  ori r25, r1, 4095
00013c  ab00353f  lui r1, 258896
000140  e70c1ff5  storeli.w r17, -1336(r30)
000144  9b90304f  ori r1, r1, 1267
000148  674c9ff5  storeli.w r25, -1340(r30)
00014c  674f1ff4  storeli.w r1, -1292(r30)
000150  9b1051a0  ori r1, r2, 2565
000154  ab01f03f  lui r3, 261888
000158  670f1ff4  storeli.w r1, -1296(r30)
00015c  ab00babf  lui r1, 785312
000160  733c2fae  store.d r[3:4], -1288(r30)
000164  2bf1b53f  lui r2, 260959
000168  9b90300e  ori r1, r1, 227
00016c  e74e1ff4  storeli.w r1, -1300(r30)
000170  abd0873f  lui r1, 260221
000174  9b9020c2  ori r1, r1, 3106
000178  e70e1ff4  storeli.w r1, -1304(r30)
00017c  9b10310e  ori r1, r2, 227
000180  2b71823e  lui r2, 256039
000184  674e1ff4  storeli.w r1, -1308(r30)
000188  aba091be  lui r1, 780570
00018c  9b196190  ori r19, r2, 2310
000190  1b9ce098  ori r24, r1, 2446
000194  db100000  j 132
000198  e340aff5  loadli.w r1,  -1324(r30)
00019c  1f010001  addli r2, zero, 128
0001a0  eb518fad  load.d r[4:5], -1320(r30)
0001a4  eb520f01  load.d r[6:7], 16(r30)
0001a8  1f290000  addli r18, zero, 2
0001ac  1f0a0ff6  addli r20, r30, -1280
0001b0  9f0a0004  addli r21, zero, 512
0001b4  1f0b0010  addli r22, zero, 2048
0001b8  9f0b0ffa  addli r23, r30, -768
0001bc  8b900048  max.s r1, r1, zero
0001c0  8b902040  min.s r1, r1, r2
0001c4  1f110000  addli r2, zero, 1
0001c8  17b12102  sll.d r[3:4], r[4:5], r2
0001cc  9bb01000  slli r1, r1, 1
0001d0  2b0200f0  lui r4, 983040
0001d4  97904000  or r1, r1, r4
0001d8  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
0001dc  1f020ffe  addli r4, r30, -256
0001e0  ff304100  s_lm2gm r1, r4, 0(r[3:4])
0001e4  00a00000  mfence { lm }
0001e8  63443f00  loadli.w r8,  28(r30)
0001ec  e3044f00  loadli.w r9,  32(r30)
0001f0  6b568f00  load.d r[13:14], 8(r30)
0001f4  6b570f00  load.d r[15:16], 0(r30)
0001f8  6305cff5  loadli.w r10,  -1312(r30)
0001fc  e305aff5  loadli.w r11,  -1328(r30)
000200  63489ff5  loadli.w r16,  -1332(r30)
000204  e3089ff5  loadli.w r17,  -1336(r30)
000208  e34c8ff5  loadli.w r25,  -1340(r30)
00020c  0b150511  add.s r10, r10, r16
000210  3f20b500  blt.s r10, r11, 8
000214  db410000  j 524
000218  8b109530  div.s r1, r10, r9
00021c  ab0100f0  lui r3, 983040
000220  97913a00  or r3, r21, r3
000224  8b908030  div.s r1, r1, r8
000228  9bb0d000  slli r1, r1, 13
00022c  8b901011  add.s r1, r1, r17
000230  0b916039  mod.s r2, r1, r22
000234  339d0028  sext_int2long r[27:28], r1
000238  17332d03  sll.d r[7:8], r[27:28], r18
00023c  0b236710  add.ul r[7:8], r[15:16], r[7:8]
000240  33120128  sext_int2long r[5:6], r2
000244  2b0100f0  lui r2, 983040
000248  ff214301  l_gm2lm r3, r20, 0(r[7:8])
00024c  17322203  sll.d r[5:6], r[5:6], r18
000250  17912a00  or r2, r21, r2
000254  0b224610  add.ul r[5:6], r[13:14], r[5:6]
000258  7f217201  l_gm2lm r2, r23, 0(r[5:6])
00025c  00a00000  mfence { lm }
000260  bfbe1cfe  blt.s r25, r1, -84
000264  2b014000  lui r2, 1024
000268  9f4a0a00  addli r21, r20, 4
00026c  1fca0b00  addli r20, r23, 4
000270  1f0b0000  addli r22, zero, 0
000274  733cafad  store.d r[27:28], -1320(r30)
000278  670eaff4  storeli.w r10, -1312(r30)
00027c  8b101118  sub.s r1, r2, r1
000280  674d1ff4  storeli.w r1, -1324(r30)
000284  db0a0000  j 84
000288  ab02803f  lui r5, 260096
00028c  ab01003f  lui r3, 258048
000290  9f8a1a00  addli r21, r21, 8
000294  1f0a1a00  addli r20, r20, 8
000298  0b613d20  mul.f.rn r2, r26, r3
00029c  0b625e10  add.f.rn r4, r28, r5
0002a0  8be13c20  mul.f.rn r3, r25, r3
0002a4  8be05010  add.f.rn r1, r1, r5
0002a8  8be01120  mul.f.rn r1, r3, r1
0002ac  0b614120  mul.f.rn r2, r2, r4
0002b0  9f010ffe  addli r3, r30, -256
0002b4  8b916111  add.s r3, r3, r22
0002b8  1f4b0b00  addli r22, r22, 4
0002bc  1b410101  srli r2, r2, 16
0002c0  9bc00001  srli r1, r1, 16
0002c4  73911100  store.h r1, 2(r3)
0002c8  73902100  store.h r2, 0(r3)
0002cc  9f000002  addli r1, zero, 256
0002d0  00a00000  mfence { lm }
0002d4  371b1bfe  beq r22, r1, -316
0002d8  e3c0faff  loadli.w r1,  -4(r21)
0002dc  6341faff  loadli.w r2,  -4(r20)
0002e0  eb538faf  load.d r[8:9], -1288(r30)
0002e4  e38c0a00  loadli.w r25,  0(r21)
0002e8  e30d0a00  loadli.w r27,  0(r20)
0002ec  9f030000  addli r7, zero, 0
0002f0  0bed2010  add.f.rn r26, r1, r2
0002f4  e340eff5  loadli.w r1,  -1292(r30)
0002f8  6301eff5  loadli.w r2,  -1296(r30)
0002fc  733c7fae  store.d r[8:9], -1288(r30)
000300  8b601d20  mul.f.rn r1, r26, r1
000304  0bee0060  abs.f r28, r1
000308  1bb29000  slli r4, r1, 9
00030c  0b612e20  mul.f.rn r2, r28, r2
000310  13030200  seteq r6, r4, zero
000314  0f210108  .word 0x0801210f
000318  0f127120  .word 0x2071120f
00031c  1bc17001  srli r2, r1, 23
000320  93e00004  setlt.f r1, r1, zero
000324  1b01f10f  andi r2, r2, 255
000328  1b71f10f  setlti r2, r2, 255
00032c  17116100  or r2, r2, r6
000330  978b2000  and r23, r1, r2
000334  27810300  addli.d r[3:4], r[8:9], 0
000338  d7850000  jal 1068
00033c  8f300110  .word 0x1001308f
000340  6341dff5  loadli.w r2,  -1300(r30)
000344  e301dff5  loadli.w r3,  -1304(r30)
000348  0b620e58  neg.f r4, r28
00034c  0be13050  fmac.f.rn r2, r1, r3
000350  e341cff5  loadli.w r3,  -1308(r30)
000354  8b611150  fmac.f.rn r3, r2, r1
000358  1f010c00  addli r2, r24, 0
00035c  0be11150  fmac.f.rn r2, r3, r1
000360  9f810900  addli r3, r19, 0
000364  8b611150  fmac.f.rn r3, r2, r1
000368  0b614e20  mul.f.rn r2, r28, r4
00036c  2b0e803f  lui r28, 260096
000370  8be10158  neg.f r3, r3
000374  0f010100  exp.f.rn r2, r2
000378  8be03020  mul.f.rn r1, r1, r3
00037c  0bee2050  fmac.f.rn r28, r1, r2
000380  37a00b00  beq r23, zero, 8
000384  0b6e0e58  neg.f r28, r28
000388  8becbc11  add.f.rn r25, r25, r27
00038c  e340eff5  loadli.w r1,  -1292(r30)
000390  6301eff5  loadli.w r2,  -1296(r30)
000394  8be01c20  mul.f.rn r1, r25, r1
000398  8beb0060  abs.f r23, r1
00039c  1bb29000  slli r4, r1, 9
0003a0  0be12b20  mul.f.rn r2, r23, r2
0003a4  13030200  seteq r6, r4, zero
0003a8  8f230108  .word 0x0801238f
0003ac  6b518faf  load.d r[3:4], -1288(r30)
0003b0  0f922320  .word 0x2023920f
0003b4  9bc37001  srli r7, r1, 23
0003b8  93e00004  setlt.f r1, r1, zero
0003bc  9b83f30f  andi r7, r7, 255
0003c0  9bf3f30f  setlti r7, r7, 255
0003c4  17936300  or r6, r7, r6
0003c8  978d6000  and r27, r1, r6
0003cc  d7850000  jal 1068
0003d0  8f300110  .word 0x1001308f
0003d4  6341dff5  loadli.w r2,  -1300(r30)
0003d8  e301dff5  loadli.w r3,  -1304(r30)
0003dc  0be20b58  neg.f r4, r23
0003e0  0be13050  fmac.f.rn r2, r1, r3
0003e4  e341cff5  loadli.w r3,  -1308(r30)
0003e8  8b611150  fmac.f.rn r3, r2, r1
0003ec  1f010c00  addli r2, r24, 0
0003f0  0be11150  fmac.f.rn r2, r3, r1
0003f4  9f810900  addli r3, r19, 0
0003f8  8b611150  fmac.f.rn r3, r2, r1
0003fc  0be14b20  mul.f.rn r2, r23, r4
000400  8be10158  neg.f r3, r3
000404  0f010100  exp.f.rn r2, r2
000408  8be13020  mul.f.rn r3, r1, r3
00040c  ab00803f  lui r1, 260096
000410  8be02150  fmac.f.rn r1, r3, r2
000414  b7d90dfe  beq r27, zero, -396
000418  8be00058  neg.f r1, r1
00041c  dbcdffff  j -404
000420  9f8e8e0a  addli sp, sp, 1344
000424  00a00300  mfence { lm, sm, gm }
000428  00100000  exit
00042c  9f8e7eff  addli sp, sp, -72
000430  9f406000  addli r1, zero, 52
000434  2bf50f00  lui r10, 255
000438  abf7ffff  lui r15, 1048575
00043c  ab040080  lui r9, 524288
000440  17232202  xor.d r[7:8], r[5:6], r[3:4]
000444  e7c1ee01  storeli.w r30, 28(sp)
000448  67c43e01  storeli.w r19, 68(sp)
00044c  67844e01  storeli.w r20, 64(sp)
000450  e7c35e01  storeli.w r21, 60(sp)
000454  e7836e01  storeli.w r22, 56(sp)
000458  67c37e01  storeli.w r23, 52(sp)
00045c  67838e01  storeli.w r24, 48(sp)
000460  e7c29e01  storeli.w r25, 44(sp)
000464  e782ae01  storeli.w r26, 40(sp)
000468  67c2be01  storeli.w r27, 36(sp)
00046c  6782ce01  storeli.w r28, 32(sp)
000470  e781fe01  storeli.w r31, 24(sp)
000474  1f8f9e00  addli r30, sp, 72
000478  1f040000  addli r8, zero, 0
00047c  97451102  srl.d r[12:13], r[3:4], r1
000480  17481202  srl.d r[17:18], r[5:6], r1
000484  1b17f5ff  ori r14, r10, 4095
000488  9b96f7ff  ori r13, r15, 4095
00048c  17038302  and.d r[7:8], r[7:8], r[9:10]
000490  9b80f57f  andi r1, r11, 2047
000494  1b05f87f  andi r10, r16, 2047
000498  9b982780  ori r17, r15, 2050
00049c  1704d102  and.d r[9:10], r[3:4], r[14:15]
0004a0  9705d202  and.d r[12:13], r[5:6], r[14:15]
0004a4  1f9800f0  addli r16, r1, -2047
0004a8  13081805  setlt.u r16, r16, r17
0004ac  3b700800  bneq r16, zero, 28
0004b0  1f1805f0  addli r16, r10, -2047
0004b4  9b971780  ori r15, r15, 2049
0004b8  93870705  setlt.u r15, r15, r16
0004bc  37b00700  beq r15, zero, 12
0004c0  1f020000  addli r4, zero, 0
0004c4  5b0b0000  j 88
0004c8  abf7ff7f  lui r15, 524287
0004cc  2b09f07f  lui r18, 524032
0004d0  9f180000  addli r17, zero, 1
0004d4  1b97f7ff  ori r14, r15, 4095
0004d8  9707d102  and.d r[16:17], r[3:4], r[14:15]
0004dc  93a91705  setlt.ul r19, r[16:17], r[18:19]
0004e0  3be00900  bneq r19, zero, 24
0004e4  ab020800  lui r5, 128
0004e8  9f060000  addli r13, zero, 0
0004ec  1f020000  addli r4, zero, 0
0004f0  17114102  or.d r[3:4], r[3:4], r[5:6]
0004f4  5b040000  j 32
0004f8  1701d202  and.d r[3:4], r[5:6], r[14:15]
0004fc  93261105  setlt.ul r13, r[3:4], r[18:19]
000500  3bf80600  bneq r13, zero, 540
000504  ab010800  lui r3, 128
000508  9f060000  addli r13, zero, 0
00050c  1f010000  addli r2, zero, 0
000510  17112202  or.d r[3:4], r[5:6], r[3:4]
000514  1f020000  addli r4, zero, 0
000518  b7c90600  beq r13, zero, 624
00051c  ab011000  lui r3, 256
000520  9f371000  addli r15, zero, 11
000524  abf9ffff  lui r19, 1048575
000528  2bf90475  lui r18, 479311
00052c  9f582000  addli r17, zero, 21
000530  73346ffc  store.d r[7:8], -56(r30)
000534  9f723000  addli r5, zero, 31
000538  73308ffc  store.d r[9:10], -64(r30)
00053c  8b90a018  sub.s r1, r1, r10
000540  1f010000  addli r2, zero, 0
000544  97b7f502  sll.d r[16:17], r[12:13], r15
000548  9b1a3933  ori r21, r18, 819
00054c  8b101210  add.s r1, r4, r1
000550  97162402  or.d r[14:15], r[9:10], r[3:4]
000554  17912502  or.d r[3:4], r[12:13], r[3:4]
000558  9b950980  ori r11, r19, 2048
00055c  733cdffa  store.d r[14:15], -72(r30)
000560  338c0528  zext_int2long r[25:26], r11
000564  174b1103  srl.d r[23:24], r[3:4], r17
000568  9b95f9ff  ori r11, r19, 4095
00056c  9b99e9ff  ori r19, r19, 4094
000570  b3880528  zext_int2long r[18:19], r11
000574  8b9a6a19  sub.s r21, r21, r22
000578  97878703  and.d r[16:17], r[16:17], r[25:26]
00057c  b3890928  zext_int2long r[20:21], r19
000580  170d1b03  and.d r[27:28], r[23:24], r[18:19]
000584  b38a0a28  zext_int2long r[22:23], r21
000588  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
00058c  0b930358  neg.s r6, r7
000590  33030328  zext_int2long r[7:8], r6
000594  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
000598  17435302  srl.d r[7:8], r[7:8], r5
00059c  17031303  and.d r[7:8], r[7:8], r[18:19]
0005a0  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0005a4  8b1a0b58  neg.s r21, r22
0005a8  b38a0a28  zext_int2long r[22:23], r21
0005ac  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
0005b0  17435302  srl.d r[7:8], r[7:8], r5
0005b4  17031303  and.d r[7:8], r[7:8], r[18:19]
0005b8  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0005bc  8b1a0b58  neg.s r21, r22
0005c0  1f0b4000  addli r22, zero, 32
0005c4  33840a28  zext_int2long r[9:10], r21
0005c8  9f1a0000  addli r21, zero, 1
0005cc  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
0005d0  33840a28  zext_int2long r[9:10], r21
0005d4  17435302  srl.d r[7:8], r[7:8], r5
0005d8  1f73f3ff  addli r6, r6, -1
0005dc  33030328  zext_int2long r[7:8], r6
0005e0  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0005e4  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
0005e8  97c76703  srl.d r[16:17], r[16:17], r22
0005ec  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
0005f0  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
0005f4  97071403  and.d r[16:17], r[9:10], r[18:19]
0005f8  17446403  srl.d r[9:10], r[9:10], r22
0005fc  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
000600  97cb5702  srl.d r[24:25], r[16:17], r5
000604  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
000608  97b75603  sll.d r[16:17], r[14:15], r21
00060c  abf41f00  lui r9, 511
000610  97b25203  sll.d r[6:7], r[6:7], r21
000614  97cc6703  srl.d r[26:27], r[16:17], r22
000618  978d3703  and.d r[28:29], r[16:17], r[20:21]
00061c  1b96f4ff  ori r12, r9, 4095
000620  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
000624  a7f232fe  addli.d r[6:7], r[6:7], 32543
000628  97831203  and.d r[8:9], r[6:7], r[18:19]
00062c  97c26203  srl.d r[6:7], r[6:7], r22
000630  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
000634  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
000638  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
00063c  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
000640  97881303  and.d r[18:19], r[8:9], r[18:19]
000644  97cb6b03  srl.d r[24:25], r[24:25], r22
000648  97cc6d03  srl.d r[26:27], r[28:29], r22
00064c  97893d03  and.d r[20:21], r[28:29], r[20:21]
000650  97c36303  srl.d r[8:9], r[8:9], r22
000654  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
000658  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
00065c  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
000660  0b227210  add.ul r[5:6], r[5:6], r[8:9]
000664  17c36803  srl.d r[7:8], r[18:19], r22
000668  0b226210  add.ul r[5:6], r[5:6], r[7:8]
00066c  13a34504  setlt.ul r6, r[12:13], r[5:6]
000670  3b710300  bneq r6, zero, 92
000674  1f536000  addli r6, zero, 53
000678  eb540ffc  load.d r[10:11], -64(r30)
00067c  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
000680  9fe0f007  addli r1, r1, 1022
000684  97b46402  sll.d r[10:11], r[10:11], r6
000688  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
00068c  1f73f00f  addli r6, zero, 2047
000690  3fa06000  blt.s r1, r6, 8
000694  5b0c0000  j 96
000698  1f150000  addli r10, zero, 1
00069c  bfb1a000  blt.s r1, r10, 108
0006a0  2bf30f00  lui r6, 255
0006a4  abf3ffff  lui r7, 1048575
0006a8  b3850028  zext_int2long r[12:13], r1
0006ac  9f406000  addli r1, zero, 52
0006b0  1734a402  sll.d r[9:10], r[9:10], r10
0006b4  1b17f3ff  ori r14, r6, 4095
0006b8  97b51502  sll.d r[12:13], r[12:13], r1
0006bc  9b96f3ff  ori r13, r7, 4095
0006c0  1702d202  and.d r[5:6], r[5:6], r[14:15]
0006c4  17924502  or.d r[5:6], r[12:13], r[5:6]
0006c8  db140000  j 164
0006cc  17425203  srl.d r[5:6], r[5:6], r21
0006d0  1f436000  addli r6, zero, 52
0006d4  eb530ffc  load.d r[8:9], -64(r30)
0006d8  9ff0f007  addli r1, r1, 1023
0006dc  eb578ffb  load.d r[16:17], -72(r30)
0006e0  17b36302  sll.d r[7:8], r[8:9], r6
0006e4  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
0006e8  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
0006ec  1f73f00f  addli r6, zero, 2047
0006f0  bfae60fe  blt.s r1, r6, -88
0006f4  2b01f07f  lui r2, 524032
0006f8  eb518ffc  load.d r[4:5], -56(r30)
0006fc  9f000000  addli r1, zero, 0
000700  17911102  or.d r[3:4], r[4:5], r[2:3]
000704  db100000  j 132
000708  2bf3ffff  lui r6, 1048575
00070c  1b13b3fc  ori r6, r6, 4043
000710  bf701300  blt.s r6, r1, 60
000714  6b518ffc  load.d r[3:4], -56(r30)
000718  5b0e0000  j 112
00071c  ab02f07f  lui r5, 524032
000720  1f020000  addli r4, zero, 0
000724  93a64702  setneq.d r13, r[16:17], r[5:6]
000728  3be20600  bneq r13, zero, 152
00072c  1f020000  addli r4, zero, 0
000730  13214100  seteq.d r2, r[3:4], r[5:6]
000734  b7060100  beq r2, zero, 416
000738  ab01f87f  lui r3, 524160
00073c  9f060000  addli r13, zero, 0
000740  1f020000  addli r4, zero, 0
000744  1f010000  addli r2, zero, 0
000748  5bbaffff  j -560
00074c  9f130000  addli r7, zero, 1
000750  1fc36000  addli r6, r1, 52
000754  8b901318  sub.s r1, r7, r1
000758  17b46702  sll.d r[9:10], r[16:17], r6
00075c  17421202  srl.d r[5:6], r[5:6], r1
000760  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
000764  17337502  sll.d r[7:8], r[11:12], r7
000768  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
00076c  23031200  andi.d r[7:8], r[5:6], 1
000770  0b238310  add.ul r[7:8], r[7:8], r[9:10]
000774  93206104  setlt.ul r1, r[3:4], r[7:8]
000778  b3800028  zext_int2long r[2:3], r1
00077c  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000780  eb518ffc  load.d r[4:5], -56(r30)
000784  17913002  or.d r[3:4], r[2:3], r[4:5]
000788  e38f3e00  loadli.w r31,  24(sp)
00078c  63cf3e00  loadli.w r30,  28(sp)
000790  638e4e00  loadli.w r28,  32(sp)
000794  e3cd4e00  loadli.w r27,  36(sp)
000798  638d5e00  loadli.w r26,  40(sp)
00079c  e3cc5e00  loadli.w r25,  44(sp)
0007a0  638c6e00  loadli.w r24,  48(sp)
0007a4  e3cb6e00  loadli.w r23,  52(sp)
0007a8  638b7e00  loadli.w r22,  56(sp)
0007ac  e3ca7e00  loadli.w r21,  60(sp)
0007b0  638a8e00  loadli.w r20,  64(sp)
0007b4  e3c98e00  loadli.w r19,  68(sp)
0007b8  9f8e9e00  addli sp, sp, 72
0007bc  5f800f00  jr r31, 0
0007c0  1f020000  addli r4, zero, 0
0007c4  13224102  setneq.d r4, r[3:4], r[5:6]
0007c8  3b500200  bneq r4, zero, 20
0007cc  9f060000  addli r13, zero, 0
0007d0  1f020000  addli r4, zero, 0
0007d4  27010300  addli.d r[3:4], r[7:8], 0
0007d8  5ba8ffff  j -704
0007dc  33020028  zext_int2long r[5:6], zero
0007e0  13a24702  setneq.d r4, r[16:17], r[5:6]
0007e4  37240200  beq r4, zero, 264
0007e8  33020028  zext_int2long r[5:6], zero
0007ec  13224102  setneq.d r4, r[3:4], r[5:6]
0007f0  b7130200  beq r4, zero, 228
0007f4  2bf20f00  lui r4, 255
0007f8  abf2ffff  lui r5, 1048575
0007fc  1b17f2ff  ori r14, r4, 4095
000800  9b96f2ff  ori r13, r5, 4095
000804  13a2f604  setlt.ul r4, r[14:15], r[16:17]
000808  bb630200  bneq r4, zero, 248
00080c  9f120000  addli r5, zero, 1
000810  9f270000  addli r15, zero, 2
000814  1f420000  addli r4, zero, 4
000818  1f081000  addli r16, zero, 8
00081c  97485402  srl.d r[18:19], r[9:10], r5
000820  97181403  or.d r[18:19], r[9:10], r[18:19]
000824  97c9f802  srl.d r[20:21], r[18:19], r15
000828  97983803  or.d r[18:19], r[18:19], r[20:21]
00082c  97c94802  srl.d r[20:21], r[18:19], r4
000830  97983803  or.d r[18:19], r[18:19], r[20:21]
000834  9f092000  addli r19, zero, 16
000838  17ca0803  srl.d r[21:22], r[18:19], r16
00083c  17984803  or.d r[17:18], r[18:19], r[21:22]
000840  1f094000  addli r18, zero, 32
000844  97493803  srl.d r[20:21], r[17:18], r19
000848  17183803  or.d r[17:18], r[17:18], r[20:21]
00084c  2b5a5555  lui r20, 349525
000850  17492803  srl.d r[19:20], r[17:18], r18
000854  17182803  or.d r[17:18], r[17:18], r[19:20]
000858  33990628  sext_int2long r[19:20], r13
00085c  17282803  xor.d r[17:18], r[17:18], r[19:20]
000860  1b195a55  ori r18, r20, 1365
000864  174a5802  srl.d r[21:22], r[17:18], r5
000868  9f090900  addli r19, r18, 0
00086c  ab323333  lui r5, 209715
000870  17092a03  and.d r[19:20], r[21:22], r[19:20]
000874  1b9a3233  ori r20, r5, 819
000878  ab020f0f  lui r5, 61680
00087c  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
000880  9f0a0a00  addli r21, r20, 0
000884  1749f802  srl.d r[19:20], r[17:18], r15
000888  97074803  and.d r[16:17], r[17:18], r[21:22]
00088c  97084903  and.d r[18:19], r[19:20], r[21:22]
000890  ab090101  lui r19, 4112
000894  1f0a7000  addli r20, zero, 56
000898  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
00089c  97c84702  srl.d r[18:19], r[16:17], r4
0008a0  1b92f2f0  ori r4, r5, 3855
0008a4  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
0008a8  9f020200  addli r5, r4, 0
0008ac  9f481000  addli r17, zero, 12
0008b0  17824702  and.d r[5:6], r[16:17], r[5:6]
0008b4  9b971910  ori r15, r19, 257
0008b8  1f880700  addli r16, r15, 0
0008bc  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
0008c0  17424203  srl.d r[5:6], r[5:6], r20
0008c4  9f57e2ff  addli r15, r4, -11
0008c8  0b924818  sub.s r4, r17, r4
0008cc  1734f402  sll.d r[9:10], r[9:10], r15
0008d0  db060000  j 52
0008d4  ab01f07f  lui r3, 524032
0008d8  9f060000  addli r13, zero, 0
0008dc  1f020000  addli r4, zero, 0
0008e0  1f010000  addli r2, zero, 0
0008e4  17112302  or.d r[3:4], r[7:8], r[3:4]
0008e8  5b86ffff  j -976
0008ec  33020028  zext_int2long r[5:6], zero
0008f0  13214100  seteq.d r2, r[3:4], r[5:6]
0008f4  bb430100  bneq r2, zero, 240
0008f8  27010300  addli.d r[3:4], r[7:8], 0
0008fc  5b1e0000  j 240
000900  1f020000  addli r4, zero, 0
000904  13a12604  setlt.ul r2, r[14:15], r[3:4]
000908  3b530100  bneq r2, zero, 212
00090c  9f160000  addli r13, zero, 1
000910  9f210000  addli r3, zero, 2
000914  1f410000  addli r2, zero, 4
000918  9f021000  addli r5, zero, 8
00091c  1f072000  addli r14, zero, 16
000920  97c7d502  srl.d r[16:17], r[12:13], r13
000924  9797f502  or.d r[16:17], r[12:13], r[16:17]
000928  97c83702  srl.d r[18:19], r[16:17], r3
00092c  97971703  or.d r[16:17], r[16:17], r[18:19]
000930  97c82702  srl.d r[18:19], r[16:17], r2
000934  97971703  or.d r[16:17], r[16:17], r[18:19]
000938  97c85702  srl.d r[18:19], r[16:17], r5
00093c  9f024000  addli r5, zero, 32
000940  97971703  or.d r[16:17], r[16:17], r[18:19]
000944  97c8e702  srl.d r[18:19], r[16:17], r14
000948  2bf7ffff  lui r14, 1048575
00094c  97971703  or.d r[16:17], r[16:17], r[18:19]
000950  1b17f7ff  ori r14, r14, 4095
000954  97c85702  srl.d r[18:19], r[16:17], r5
000958  ab525555  lui r5, 349525
00095c  97971703  or.d r[16:17], r[16:17], r[18:19]
000960  b3180728  sext_int2long r[18:19], r14
000964  9b995255  ori r19, r5, 1365
000968  ab323333  lui r5, 209715
00096c  17a71703  xor.d r[15:16], r[16:17], r[18:19]
000970  1f8a0900  addli r20, r19, 0
000974  1748d702  srl.d r[17:18], r[15:16], r13
000978  17083803  and.d r[17:18], r[17:18], r[20:21]
00097c  1b993233  ori r18, r5, 819
000980  ab020101  lui r5, 4112
000984  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
000988  9f090900  addli r19, r18, 0
00098c  17483702  srl.d r[17:18], r[15:16], r3
000990  17072703  and.d r[15:16], r[15:16], r[19:20]
000994  ab010f0f  lui r3, 61680
000998  17082803  and.d r[17:18], r[17:18], r[19:20]
00099c  1b99f1f0  ori r18, r3, 3855
0009a0  0b270711  add.ul r[15:16], r[15:16], r[17:18]
0009a4  9f090900  addli r19, r18, 0
0009a8  17412702  srl.d r[3:4], r[15:16], r2
0009ac  0b212710  add.ul r[3:4], r[15:16], r[3:4]
0009b0  1b971210  ori r14, r5, 257
0009b4  9f027000  addli r5, zero, 56
0009b8  17012103  and.d r[3:4], r[3:4], r[19:20]
0009bc  9f070700  addli r15, r14, 0
0009c0  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
0009c4  17415102  srl.d r[3:4], r[3:4], r5
0009c8  9f52e1ff  addli r5, r2, -11
0009cc  0b114110  add.s r2, r2, r4
0009d0  97b55502  sll.d r[12:13], r[12:13], r5
0009d4  1f42e1ff  addli r4, r2, -12
0009d8  5b010000  j 8
0009dc  9f160000  addli r13, zero, 1
0009e0  5b67ffff  j -1224
0009e4  ab01f87f  lui r3, 524160
0009e8  1f010000  addli r2, zero, 0
0009ec  9f060000  addli r13, zero, 0
0009f0  db64ffff  j -1244
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
