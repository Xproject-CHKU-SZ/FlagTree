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
0000dc  9f8e8efd  addli sp, sp, -320
0000e0  1f8f0e02  addli r30, sp, 256
0000e4  80520002  load_param_i r5, 0
0000e8  e3413f00  loadli.w r3,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  63024f00  loadli.w r4,  32(r30)
0000f4  8b901120  mul.s r1, r3, r1
0000f8  0b934020  mul.s r6, r1, r4
0000fc  4b4f5300  ble.s r6, r5, 976
000100  80300002  core_id r1
000104  2bb1a73e  lui r2, 256635
000108  80d30002  load_param_i r7, 1
00010c  ab07f03f  lui r15, 261888
000110  1f050fff  addli r10, r30, -128
000114  9f054000  addli r11, zero, 32
000118  ab06807f  lui r13, 522240
00011c  e7046ffe  storeli.w r6, -184(r30)
000120  1bb44000  slli r8, r1, 4
000124  abf03f00  lui r1, 1023
000128  733ceff6  store.d r[15:16], -136(r30)
00012c  67447ffe  storeli.w r7, -188(r30)
000130  9b94f0ff  ori r9, r1, 4095
000134  ab700000  lui r1, 7
000138  67048ffe  storeli.w r8, -192(r30)
00013c  1b9ef0ff  ori r28, r1, 4095
000140  abf0ff7f  lui r1, 524287
000144  e7439ffe  storeli.w r9, -196(r30)
000148  1b9cf0ff  ori r24, r1, 4095
00014c  ab00353f  lui r1, 258896
000150  9b9d304f  ori r27, r1, 1267
000154  9b1051a0  ori r1, r2, 2565
000158  2bf1b53f  lui r2, 260959
00015c  67471ffe  storeli.w r1, -140(r30)
000160  ab00babf  lui r1, 785312
000164  9b90300e  ori r1, r1, 227
000168  67071ffe  storeli.w r1, -144(r30)
00016c  abd0873f  lui r1, 260221
000170  9b9020c2  ori r1, r1, 3106
000174  e7461ffe  storeli.w r1, -148(r30)
000178  9b10310e  ori r1, r2, 227
00017c  2b71823e  lui r2, 256039
000180  e7061ffe  storeli.w r1, -152(r30)
000184  aba091be  lui r1, 780570
000188  9b90e098  ori r1, r1, 2446
00018c  67461ffe  storeli.w r1, -156(r30)
000190  9b106190  ori r1, r2, 2310
000194  67061ffe  storeli.w r1, -160(r30)
000198  5b0a0000  j 80
00019c  6b510f01  load.d r[3:4], 16(r30)
0001a0  6b520ff5  load.d r[5:6], -176(r30)
0001a4  ab0000f0  lui r1, 983040
0001a8  0b214110  add.ul r[3:4], r[3:4], r[5:6]
0001ac  63429ffe  loadli.w r4,  -180(r30)
0001b0  97101200  or r1, r4, r1
0001b4  1f028fff  addli r4, r30, -64
0001b8  ff304100  s_lm2gm r1, r4, 0(r[3:4])
0001bc  00a00000  mfence { lm }
0001c0  e3413f00  loadli.w r3,  28(r30)
0001c4  63024f00  loadli.w r4,  32(r30)
0001c8  e342bffe  loadli.w r5,  -164(r30)
0001cc  63039ffe  loadli.w r6,  -184(r30)
0001d0  e3438ffe  loadli.w r7,  -188(r30)
0001d4  63048ffe  loadli.w r8,  -192(r30)
0001d8  e3447ffe  loadli.w r9,  -196(r30)
0001dc  8b927210  add.s r5, r5, r7
0001e0  3fa06200  blt.s r5, r6, 8
0001e4  5b5d0000  j 744
0001e8  8b904230  div.s r1, r5, r4
0001ec  8b903030  div.s r1, r1, r3
0001f0  9bb0a000  slli r1, r1, 10
0001f4  8b908010  add.s r1, r1, r8
0001f8  bf9f14fe  blt.s r9, r1, -28
0001fc  2b014000  lui r2, 1024
000200  9f010000  addli r3, zero, 0
000204  e7455ffe  storeli.w r5, -164(r30)
000208  0b111118  sub.s r2, r2, r1
00020c  0b123510  add.s r4, r10, r3
000210  9fc10100  addli r3, r3, 4
000214  73100200  store.h zero, 0(r4)
000218  73110200  store.h zero, 2(r4)
00021c  00a00000  mfence { lm }
000220  bbbfb1fe  bneq r3, r11, -20
000224  9f020010  addli r5, zero, 2048
000228  b3910028  sext_int2long r[4:5], r1
00022c  9f130000  addli r7, zero, 1
000230  0b110148  max.s r2, r2, zero
000234  1f0a0000  addli r20, zero, 0
000238  8b905038  mod.s r1, r1, r5
00023c  97b27102  sll.d r[6:7], r[4:5], r7
000240  9f012000  addli r3, zero, 16
000244  0b113140  min.s r2, r2, r3
000248  eb510f00  load.d r[4:5], 0(r30)
00024c  73385ff4  store.d r[6:7], -176(r30)
000250  1b341100  slli r8, r2, 1
000254  2b0100f0  lui r2, 983040
000258  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
00025c  b3920028  sext_int2long r[6:7], r1
000260  97102400  or r1, r8, r2
000264  e7448ffe  storeli.w r8, -180(r30)
000268  17912500  or r2, r11, r2
00026c  97b27202  sll.d r[6:7], r[6:7], r7
000270  eb538f00  load.d r[8:9], 8(r30)
000274  ffa0a100  l_gm2lm r1, r10, 0(r[4:5])
000278  9f008fff  addli r1, r30, -64
00027c  8ba25310  add.ul r[6:7], r[8:9], r[6:7]
000280  7fa11200  l_gm2lm r2, r1, 0(r[6:7])
000284  00a00000  mfence { lm }
000288  5b030000  j 24
00028c  73103d00  store.h r3, 0(r26)
000290  73112d00  store.h r2, 2(r26)
000294  1f4a0a00  addli r20, r20, 4
000298  00a00000  mfence { lm }
00029c  370cbafe  beq r20, r11, -256
0002a0  1f018fff  addli r2, r30, -64
0002a4  8b104511  add.s r1, r10, r20
0002a8  ab0ac07f  lui r21, 523264
0002ac  ab0cc07f  lui r25, 523264
0002b0  0b1d4111  add.s r26, r2, r20
0002b4  6bb10000  load.hu r2, 0(r1)
0002b8  ebb02000  load.hu r1, 2(r1)
0002bc  eb310d00  load.hu r3, 0(r26)
0002c0  1b310101  slli r2, r2, 16
0002c4  9bb10101  slli r3, r3, 16
0002c8  8b613110  add.f.rn r3, r2, r3
0002cc  17818101  and r2, r3, r24
0002d0  13822604  setlt.u r4, r13, r2
0002d4  6b312d00  load.hu r2, 2(r26)
0002d8  3b700200  bneq r4, zero, 28
0002dc  1bc20101  srli r4, r3, 16
0002e0  1b021200  andi r4, r4, 1
0002e4  8b914110  add.s r3, r3, r4
0002e8  2b02ffff  lui r4, 1048560
0002ec  8b91c111  add.s r3, r3, r28
0002f0  978c4100  and r25, r3, r4
0002f4  9bb00001  slli r1, r1, 16
0002f8  1b310101  slli r2, r2, 16
0002fc  8be02010  add.f.rn r1, r1, r2
000300  17818001  and r2, r1, r24
000304  13812604  setlt.u r2, r13, r2
000308  3b700100  bneq r2, zero, 28
00030c  1bc10001  srli r2, r1, 16
000310  1b011100  andi r2, r2, 1
000314  8b902010  add.s r1, r1, r2
000318  2b01ffff  lui r2, 1048560
00031c  8b90c011  add.s r1, r1, r28
000320  978a2000  and r21, r1, r2
000324  8be0bc21  mul.f.rn r1, r25, r27
000328  6341effe  loadli.w r2,  -140(r30)
00032c  eb538ff7  load.d r[8:9], -136(r30)
000330  9f030000  addli r7, zero, 0
000334  733c7ff6  store.d r[8:9], -136(r30)
000338  8beb0060  abs.f r23, r1
00033c  1bb29000  slli r4, r1, 9
000340  0be12b20  mul.f.rn r2, r23, r2
000344  13030200  seteq r6, r4, zero
000348  0f210108  .word 0x0801210f
00034c  0f127120  .word 0x2071120f
000350  1bc17001  srli r2, r1, 23
000354  93e00004  setlt.f r1, r1, zero
000358  1b01f10f  andi r2, r2, 255
00035c  1b71f10f  setlti r2, r2, 255
000360  17116100  or r2, r2, r6
000364  97892000  and r19, r1, r2
000368  27810300  addli.d r[3:4], r[8:9], 0
00036c  579b0000  jal 1240
000370  8f300110  .word 0x1001308f
000374  6301effe  loadli.w r2,  -144(r30)
000378  e341dffe  loadli.w r3,  -148(r30)
00037c  0be20b58  neg.f r4, r23
000380  0be13050  fmac.f.rn r2, r1, r3
000384  e301dffe  loadli.w r3,  -152(r30)
000388  8b611150  fmac.f.rn r3, r2, r1
00038c  6341cffe  loadli.w r2,  -156(r30)
000390  0be11150  fmac.f.rn r2, r3, r1
000394  e301cffe  loadli.w r3,  -160(r30)
000398  8b611150  fmac.f.rn r3, r2, r1
00039c  0be14b20  mul.f.rn r2, r23, r4
0003a0  ab0b803f  lui r23, 260096
0003a4  8be10158  neg.f r3, r3
0003a8  0f010100  exp.f.rn r2, r2
0003ac  8be03020  mul.f.rn r1, r1, r3
0003b0  8beb2050  fmac.f.rn r23, r1, r2
0003b4  37a00900  beq r19, zero, 8
0003b8  8beb0b58  neg.f r23, r23
0003bc  8be0ba21  mul.f.rn r1, r21, r27
0003c0  6341effe  loadli.w r2,  -140(r30)
0003c4  1f8b0d00  addli r22, r27, 0
0003c8  8be90060  abs.f r19, r1
0003cc  1bb29000  slli r4, r1, 9
0003d0  0be12920  mul.f.rn r2, r19, r2
0003d4  13030200  seteq r6, r4, zero
0003d8  8f230108  .word 0x0801238f
0003dc  6b518ff7  load.d r[3:4], -136(r30)
0003e0  0f922320  .word 0x2023920f
0003e4  9bc37001  srli r7, r1, 23
0003e8  93e00004  setlt.f r1, r1, zero
0003ec  9b83f30f  andi r7, r7, 255
0003f0  9bf3f30f  setlti r7, r7, 255
0003f4  17936300  or r6, r7, r6
0003f8  978d6000  and r27, r1, r6
0003fc  579b0000  jal 1240
000400  8f300110  .word 0x1001308f
000404  6301effe  loadli.w r2,  -144(r30)
000408  e341dffe  loadli.w r3,  -148(r30)
00040c  0be20958  neg.f r4, r19
000410  0be13050  fmac.f.rn r2, r1, r3
000414  e301dffe  loadli.w r3,  -152(r30)
000418  8b611150  fmac.f.rn r3, r2, r1
00041c  6341cffe  loadli.w r2,  -156(r30)
000420  0be11150  fmac.f.rn r2, r3, r1
000424  e301cffe  loadli.w r3,  -160(r30)
000428  8b611150  fmac.f.rn r3, r2, r1
00042c  0be14920  mul.f.rn r2, r19, r4
000430  8be10158  neg.f r3, r3
000434  0f010100  exp.f.rn r2, r2
000438  8be13020  mul.f.rn r3, r1, r3
00043c  ab00803f  lui r1, 260096
000440  8be02150  fmac.f.rn r1, r3, r2
000444  37a00d00  beq r27, zero, 8
000448  8be00058  neg.f r1, r1
00044c  2b03003f  lui r6, 258048
000450  ab03803f  lui r7, 260096
000454  ab06807f  lui r13, 522240
000458  1f050fff  addli r10, r30, -128
00045c  9f054000  addli r11, zero, 32
000460  9f0d0b00  addli r27, r22, 0
000464  0be16c20  mul.f.rn r2, r25, r6
000468  8be17b10  add.f.rn r3, r23, r7
00046c  0b623120  mul.f.rn r4, r2, r3
000470  17018201  and r2, r4, r24
000474  93822604  setlt.u r5, r13, r2
000478  2b710000  lui r2, 7
00047c  1b1101fc  ori r2, r2, 4032
000480  9f010100  addli r3, r2, 0
000484  3be00200  bneq r5, zero, 24
000488  9b410201  srli r3, r4, 16
00048c  9b811100  andi r3, r3, 1
000490  8b113210  add.s r3, r4, r3
000494  8b91c111  add.s r3, r3, r28
000498  9bc10101  srli r3, r3, 16
00049c  0be26a20  mul.f.rn r4, r21, r6
0004a0  8be07010  add.f.rn r1, r1, r7
0004a4  8b601220  mul.f.rn r1, r4, r1
0004a8  17828001  and r4, r1, r24
0004ac  13824604  setlt.u r4, r13, r4
0004b0  3b7702fe  bneq r4, zero, -548
0004b4  1bc10001  srli r2, r1, 16
0004b8  1b011100  andi r2, r2, 1
0004bc  8b902010  add.s r1, r1, r2
0004c0  8b90c011  add.s r1, r1, r28
0004c4  1bc10001  srli r2, r1, 16
0004c8  dbb8ffff  j -572
0004cc  9f8e0e02  addli sp, sp, 256
0004d0  00a00300  mfence { lm, sm, gm }
0004d4  00100000  exit
0004d8  9f8e7eff  addli sp, sp, -72
0004dc  9f406000  addli r1, zero, 52
0004e0  2bf50f00  lui r10, 255
0004e4  abf7ffff  lui r15, 1048575
0004e8  ab040080  lui r9, 524288
0004ec  17232202  xor.d r[7:8], r[5:6], r[3:4]
0004f0  e7c1ee01  storeli.w r30, 28(sp)
0004f4  67c43e01  storeli.w r19, 68(sp)
0004f8  67844e01  storeli.w r20, 64(sp)
0004fc  e7c35e01  storeli.w r21, 60(sp)
000500  e7836e01  storeli.w r22, 56(sp)
000504  67c37e01  storeli.w r23, 52(sp)
000508  67838e01  storeli.w r24, 48(sp)
00050c  e7c29e01  storeli.w r25, 44(sp)
000510  e782ae01  storeli.w r26, 40(sp)
000514  67c2be01  storeli.w r27, 36(sp)
000518  6782ce01  storeli.w r28, 32(sp)
00051c  e781fe01  storeli.w r31, 24(sp)
000520  1f8f9e00  addli r30, sp, 72
000524  1f040000  addli r8, zero, 0
000528  97451102  srl.d r[12:13], r[3:4], r1
00052c  17481202  srl.d r[17:18], r[5:6], r1
000530  1b17f5ff  ori r14, r10, 4095
000534  9b96f7ff  ori r13, r15, 4095
000538  17038302  and.d r[7:8], r[7:8], r[9:10]
00053c  9b80f57f  andi r1, r11, 2047
000540  1b05f87f  andi r10, r16, 2047
000544  9b982780  ori r17, r15, 2050
000548  1704d102  and.d r[9:10], r[3:4], r[14:15]
00054c  9705d202  and.d r[12:13], r[5:6], r[14:15]
000550  1f9800f0  addli r16, r1, -2047
000554  13081805  setlt.u r16, r16, r17
000558  3b700800  bneq r16, zero, 28
00055c  1f1805f0  addli r16, r10, -2047
000560  9b971780  ori r15, r15, 2049
000564  93870705  setlt.u r15, r15, r16
000568  37b00700  beq r15, zero, 12
00056c  1f020000  addli r4, zero, 0
000570  5b0b0000  j 88
000574  abf7ff7f  lui r15, 524287
000578  2b09f07f  lui r18, 524032
00057c  9f180000  addli r17, zero, 1
000580  1b97f7ff  ori r14, r15, 4095
000584  9707d102  and.d r[16:17], r[3:4], r[14:15]
000588  93a91705  setlt.ul r19, r[16:17], r[18:19]
00058c  3be00900  bneq r19, zero, 24
000590  ab020800  lui r5, 128
000594  9f060000  addli r13, zero, 0
000598  1f020000  addli r4, zero, 0
00059c  17114102  or.d r[3:4], r[3:4], r[5:6]
0005a0  5b040000  j 32
0005a4  1701d202  and.d r[3:4], r[5:6], r[14:15]
0005a8  93261105  setlt.ul r13, r[3:4], r[18:19]
0005ac  3bf80600  bneq r13, zero, 540
0005b0  ab010800  lui r3, 128
0005b4  9f060000  addli r13, zero, 0
0005b8  1f010000  addli r2, zero, 0
0005bc  17112202  or.d r[3:4], r[5:6], r[3:4]
0005c0  1f020000  addli r4, zero, 0
0005c4  b7c90600  beq r13, zero, 624
0005c8  ab011000  lui r3, 256
0005cc  9f371000  addli r15, zero, 11
0005d0  abf9ffff  lui r19, 1048575
0005d4  2bf90475  lui r18, 479311
0005d8  9f582000  addli r17, zero, 21
0005dc  73346ffc  store.d r[7:8], -56(r30)
0005e0  9f723000  addli r5, zero, 31
0005e4  73308ffc  store.d r[9:10], -64(r30)
0005e8  8b90a018  sub.s r1, r1, r10
0005ec  1f010000  addli r2, zero, 0
0005f0  97b7f502  sll.d r[16:17], r[12:13], r15
0005f4  9b1a3933  ori r21, r18, 819
0005f8  8b101210  add.s r1, r4, r1
0005fc  97162402  or.d r[14:15], r[9:10], r[3:4]
000600  17912502  or.d r[3:4], r[12:13], r[3:4]
000604  9b950980  ori r11, r19, 2048
000608  733cdffa  store.d r[14:15], -72(r30)
00060c  338c0528  zext_int2long r[25:26], r11
000610  174b1103  srl.d r[23:24], r[3:4], r17
000614  9b95f9ff  ori r11, r19, 4095
000618  9b99e9ff  ori r19, r19, 4094
00061c  b3880528  zext_int2long r[18:19], r11
000620  8b9a6a19  sub.s r21, r21, r22
000624  97878703  and.d r[16:17], r[16:17], r[25:26]
000628  b3890928  zext_int2long r[20:21], r19
00062c  170d1b03  and.d r[27:28], r[23:24], r[18:19]
000630  b38a0a28  zext_int2long r[22:23], r21
000634  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
000638  0b930358  neg.s r6, r7
00063c  33030328  zext_int2long r[7:8], r6
000640  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
000644  17435302  srl.d r[7:8], r[7:8], r5
000648  17031303  and.d r[7:8], r[7:8], r[18:19]
00064c  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
000650  8b1a0b58  neg.s r21, r22
000654  b38a0a28  zext_int2long r[22:23], r21
000658  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
00065c  17435302  srl.d r[7:8], r[7:8], r5
000660  17031303  and.d r[7:8], r[7:8], r[18:19]
000664  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
000668  8b1a0b58  neg.s r21, r22
00066c  1f0b4000  addli r22, zero, 32
000670  33840a28  zext_int2long r[9:10], r21
000674  9f1a0000  addli r21, zero, 1
000678  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
00067c  33840a28  zext_int2long r[9:10], r21
000680  17435302  srl.d r[7:8], r[7:8], r5
000684  1f73f3ff  addli r6, r6, -1
000688  33030328  zext_int2long r[7:8], r6
00068c  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
000690  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
000694  97c76703  srl.d r[16:17], r[16:17], r22
000698  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
00069c  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
0006a0  97071403  and.d r[16:17], r[9:10], r[18:19]
0006a4  17446403  srl.d r[9:10], r[9:10], r22
0006a8  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0006ac  97cb5702  srl.d r[24:25], r[16:17], r5
0006b0  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
0006b4  97b75603  sll.d r[16:17], r[14:15], r21
0006b8  abf41f00  lui r9, 511
0006bc  97b25203  sll.d r[6:7], r[6:7], r21
0006c0  97cc6703  srl.d r[26:27], r[16:17], r22
0006c4  978d3703  and.d r[28:29], r[16:17], r[20:21]
0006c8  1b96f4ff  ori r12, r9, 4095
0006cc  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
0006d0  a7f232fe  addli.d r[6:7], r[6:7], 32543
0006d4  97831203  and.d r[8:9], r[6:7], r[18:19]
0006d8  97c26203  srl.d r[6:7], r[6:7], r22
0006dc  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
0006e0  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
0006e4  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
0006e8  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
0006ec  97881303  and.d r[18:19], r[8:9], r[18:19]
0006f0  97cb6b03  srl.d r[24:25], r[24:25], r22
0006f4  97cc6d03  srl.d r[26:27], r[28:29], r22
0006f8  97893d03  and.d r[20:21], r[28:29], r[20:21]
0006fc  97c36303  srl.d r[8:9], r[8:9], r22
000700  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
000704  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
000708  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
00070c  0b227210  add.ul r[5:6], r[5:6], r[8:9]
000710  17c36803  srl.d r[7:8], r[18:19], r22
000714  0b226210  add.ul r[5:6], r[5:6], r[7:8]
000718  13a34504  setlt.ul r6, r[12:13], r[5:6]
00071c  3b710300  bneq r6, zero, 92
000720  1f536000  addli r6, zero, 53
000724  eb540ffc  load.d r[10:11], -64(r30)
000728  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
00072c  9fe0f007  addli r1, r1, 1022
000730  97b46402  sll.d r[10:11], r[10:11], r6
000734  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
000738  1f73f00f  addli r6, zero, 2047
00073c  3fa06000  blt.s r1, r6, 8
000740  5b0c0000  j 96
000744  1f150000  addli r10, zero, 1
000748  bfb1a000  blt.s r1, r10, 108
00074c  2bf30f00  lui r6, 255
000750  abf3ffff  lui r7, 1048575
000754  b3850028  zext_int2long r[12:13], r1
000758  9f406000  addli r1, zero, 52
00075c  1734a402  sll.d r[9:10], r[9:10], r10
000760  1b17f3ff  ori r14, r6, 4095
000764  97b51502  sll.d r[12:13], r[12:13], r1
000768  9b96f3ff  ori r13, r7, 4095
00076c  1702d202  and.d r[5:6], r[5:6], r[14:15]
000770  17924502  or.d r[5:6], r[12:13], r[5:6]
000774  db140000  j 164
000778  17425203  srl.d r[5:6], r[5:6], r21
00077c  1f436000  addli r6, zero, 52
000780  eb530ffc  load.d r[8:9], -64(r30)
000784  9ff0f007  addli r1, r1, 1023
000788  eb578ffb  load.d r[16:17], -72(r30)
00078c  17b36302  sll.d r[7:8], r[8:9], r6
000790  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
000794  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
000798  1f73f00f  addli r6, zero, 2047
00079c  bfae60fe  blt.s r1, r6, -88
0007a0  2b01f07f  lui r2, 524032
0007a4  eb518ffc  load.d r[4:5], -56(r30)
0007a8  9f000000  addli r1, zero, 0
0007ac  17911102  or.d r[3:4], r[4:5], r[2:3]
0007b0  db100000  j 132
0007b4  2bf3ffff  lui r6, 1048575
0007b8  1b13b3fc  ori r6, r6, 4043
0007bc  bf701300  blt.s r6, r1, 60
0007c0  6b518ffc  load.d r[3:4], -56(r30)
0007c4  5b0e0000  j 112
0007c8  ab02f07f  lui r5, 524032
0007cc  1f020000  addli r4, zero, 0
0007d0  93a64702  setneq.d r13, r[16:17], r[5:6]
0007d4  3be20600  bneq r13, zero, 152
0007d8  1f020000  addli r4, zero, 0
0007dc  13214100  seteq.d r2, r[3:4], r[5:6]
0007e0  b7060100  beq r2, zero, 416
0007e4  ab01f87f  lui r3, 524160
0007e8  9f060000  addli r13, zero, 0
0007ec  1f020000  addli r4, zero, 0
0007f0  1f010000  addli r2, zero, 0
0007f4  5bbaffff  j -560
0007f8  9f130000  addli r7, zero, 1
0007fc  1fc36000  addli r6, r1, 52
000800  8b901318  sub.s r1, r7, r1
000804  17b46702  sll.d r[9:10], r[16:17], r6
000808  17421202  srl.d r[5:6], r[5:6], r1
00080c  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
000810  17337502  sll.d r[7:8], r[11:12], r7
000814  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
000818  23031200  andi.d r[7:8], r[5:6], 1
00081c  0b238310  add.ul r[7:8], r[7:8], r[9:10]
000820  93206104  setlt.ul r1, r[3:4], r[7:8]
000824  b3800028  zext_int2long r[2:3], r1
000828  8b201210  add.ul r[2:3], r[5:6], r[2:3]
00082c  eb518ffc  load.d r[4:5], -56(r30)
000830  17913002  or.d r[3:4], r[2:3], r[4:5]
000834  e38f3e00  loadli.w r31,  24(sp)
000838  63cf3e00  loadli.w r30,  28(sp)
00083c  638e4e00  loadli.w r28,  32(sp)
000840  e3cd4e00  loadli.w r27,  36(sp)
000844  638d5e00  loadli.w r26,  40(sp)
000848  e3cc5e00  loadli.w r25,  44(sp)
00084c  638c6e00  loadli.w r24,  48(sp)
000850  e3cb6e00  loadli.w r23,  52(sp)
000854  638b7e00  loadli.w r22,  56(sp)
000858  e3ca7e00  loadli.w r21,  60(sp)
00085c  638a8e00  loadli.w r20,  64(sp)
000860  e3c98e00  loadli.w r19,  68(sp)
000864  9f8e9e00  addli sp, sp, 72
000868  5f800f00  jr r31, 0
00086c  1f020000  addli r4, zero, 0
000870  13224102  setneq.d r4, r[3:4], r[5:6]
000874  3b500200  bneq r4, zero, 20
000878  9f060000  addli r13, zero, 0
00087c  1f020000  addli r4, zero, 0
000880  27010300  addli.d r[3:4], r[7:8], 0
000884  5ba8ffff  j -704
000888  33020028  zext_int2long r[5:6], zero
00088c  13a24702  setneq.d r4, r[16:17], r[5:6]
000890  37240200  beq r4, zero, 264
000894  33020028  zext_int2long r[5:6], zero
000898  13224102  setneq.d r4, r[3:4], r[5:6]
00089c  b7130200  beq r4, zero, 228
0008a0  2bf20f00  lui r4, 255
0008a4  abf2ffff  lui r5, 1048575
0008a8  1b17f2ff  ori r14, r4, 4095
0008ac  9b96f2ff  ori r13, r5, 4095
0008b0  13a2f604  setlt.ul r4, r[14:15], r[16:17]
0008b4  bb630200  bneq r4, zero, 248
0008b8  9f120000  addli r5, zero, 1
0008bc  9f270000  addli r15, zero, 2
0008c0  1f420000  addli r4, zero, 4
0008c4  1f081000  addli r16, zero, 8
0008c8  97485402  srl.d r[18:19], r[9:10], r5
0008cc  97181403  or.d r[18:19], r[9:10], r[18:19]
0008d0  97c9f802  srl.d r[20:21], r[18:19], r15
0008d4  97983803  or.d r[18:19], r[18:19], r[20:21]
0008d8  97c94802  srl.d r[20:21], r[18:19], r4
0008dc  97983803  or.d r[18:19], r[18:19], r[20:21]
0008e0  9f092000  addli r19, zero, 16
0008e4  17ca0803  srl.d r[21:22], r[18:19], r16
0008e8  17984803  or.d r[17:18], r[18:19], r[21:22]
0008ec  1f094000  addli r18, zero, 32
0008f0  97493803  srl.d r[20:21], r[17:18], r19
0008f4  17183803  or.d r[17:18], r[17:18], r[20:21]
0008f8  2b5a5555  lui r20, 349525
0008fc  17492803  srl.d r[19:20], r[17:18], r18
000900  17182803  or.d r[17:18], r[17:18], r[19:20]
000904  33990628  sext_int2long r[19:20], r13
000908  17282803  xor.d r[17:18], r[17:18], r[19:20]
00090c  1b195a55  ori r18, r20, 1365
000910  174a5802  srl.d r[21:22], r[17:18], r5
000914  9f090900  addli r19, r18, 0
000918  ab323333  lui r5, 209715
00091c  17092a03  and.d r[19:20], r[21:22], r[19:20]
000920  1b9a3233  ori r20, r5, 819
000924  ab020f0f  lui r5, 61680
000928  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
00092c  9f0a0a00  addli r21, r20, 0
000930  1749f802  srl.d r[19:20], r[17:18], r15
000934  97074803  and.d r[16:17], r[17:18], r[21:22]
000938  97084903  and.d r[18:19], r[19:20], r[21:22]
00093c  ab090101  lui r19, 4112
000940  1f0a7000  addli r20, zero, 56
000944  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
000948  97c84702  srl.d r[18:19], r[16:17], r4
00094c  1b92f2f0  ori r4, r5, 3855
000950  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
000954  9f020200  addli r5, r4, 0
000958  9f481000  addli r17, zero, 12
00095c  17824702  and.d r[5:6], r[16:17], r[5:6]
000960  9b971910  ori r15, r19, 257
000964  1f880700  addli r16, r15, 0
000968  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
00096c  17424203  srl.d r[5:6], r[5:6], r20
000970  9f57e2ff  addli r15, r4, -11
000974  0b924818  sub.s r4, r17, r4
000978  1734f402  sll.d r[9:10], r[9:10], r15
00097c  db060000  j 52
000980  ab01f07f  lui r3, 524032
000984  9f060000  addli r13, zero, 0
000988  1f020000  addli r4, zero, 0
00098c  1f010000  addli r2, zero, 0
000990  17112302  or.d r[3:4], r[7:8], r[3:4]
000994  5b86ffff  j -976
000998  33020028  zext_int2long r[5:6], zero
00099c  13214100  seteq.d r2, r[3:4], r[5:6]
0009a0  bb430100  bneq r2, zero, 240
0009a4  27010300  addli.d r[3:4], r[7:8], 0
0009a8  5b1e0000  j 240
0009ac  1f020000  addli r4, zero, 0
0009b0  13a12604  setlt.ul r2, r[14:15], r[3:4]
0009b4  3b530100  bneq r2, zero, 212
0009b8  9f160000  addli r13, zero, 1
0009bc  9f210000  addli r3, zero, 2
0009c0  1f410000  addli r2, zero, 4
0009c4  9f021000  addli r5, zero, 8
0009c8  1f072000  addli r14, zero, 16
0009cc  97c7d502  srl.d r[16:17], r[12:13], r13
0009d0  9797f502  or.d r[16:17], r[12:13], r[16:17]
0009d4  97c83702  srl.d r[18:19], r[16:17], r3
0009d8  97971703  or.d r[16:17], r[16:17], r[18:19]
0009dc  97c82702  srl.d r[18:19], r[16:17], r2
0009e0  97971703  or.d r[16:17], r[16:17], r[18:19]
0009e4  97c85702  srl.d r[18:19], r[16:17], r5
0009e8  9f024000  addli r5, zero, 32
0009ec  97971703  or.d r[16:17], r[16:17], r[18:19]
0009f0  97c8e702  srl.d r[18:19], r[16:17], r14
0009f4  2bf7ffff  lui r14, 1048575
0009f8  97971703  or.d r[16:17], r[16:17], r[18:19]
0009fc  1b17f7ff  ori r14, r14, 4095
000a00  97c85702  srl.d r[18:19], r[16:17], r5
000a04  ab525555  lui r5, 349525
000a08  97971703  or.d r[16:17], r[16:17], r[18:19]
000a0c  b3180728  sext_int2long r[18:19], r14
000a10  9b995255  ori r19, r5, 1365
000a14  ab323333  lui r5, 209715
000a18  17a71703  xor.d r[15:16], r[16:17], r[18:19]
000a1c  1f8a0900  addli r20, r19, 0
000a20  1748d702  srl.d r[17:18], r[15:16], r13
000a24  17083803  and.d r[17:18], r[17:18], r[20:21]
000a28  1b993233  ori r18, r5, 819
000a2c  ab020101  lui r5, 4112
000a30  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
000a34  9f090900  addli r19, r18, 0
000a38  17483702  srl.d r[17:18], r[15:16], r3
000a3c  17072703  and.d r[15:16], r[15:16], r[19:20]
000a40  ab010f0f  lui r3, 61680
000a44  17082803  and.d r[17:18], r[17:18], r[19:20]
000a48  1b99f1f0  ori r18, r3, 3855
000a4c  0b270711  add.ul r[15:16], r[15:16], r[17:18]
000a50  9f090900  addli r19, r18, 0
000a54  17412702  srl.d r[3:4], r[15:16], r2
000a58  0b212710  add.ul r[3:4], r[15:16], r[3:4]
000a5c  1b971210  ori r14, r5, 257
000a60  9f027000  addli r5, zero, 56
000a64  17012103  and.d r[3:4], r[3:4], r[19:20]
000a68  9f070700  addli r15, r14, 0
000a6c  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
000a70  17415102  srl.d r[3:4], r[3:4], r5
000a74  9f52e1ff  addli r5, r2, -11
000a78  0b114110  add.s r2, r2, r4
000a7c  97b55502  sll.d r[12:13], r[12:13], r5
000a80  1f42e1ff  addli r4, r2, -12
000a84  5b010000  j 8
000a88  9f160000  addli r13, zero, 1
000a8c  5b67ffff  j -1224
000a90  ab01f87f  lui r3, 524160
000a94  1f010000  addli r2, zero, 0
000a98  9f060000  addli r13, zero, 0
000a9c  db64ffff  j -1244
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
000cdc  00100000  exit
