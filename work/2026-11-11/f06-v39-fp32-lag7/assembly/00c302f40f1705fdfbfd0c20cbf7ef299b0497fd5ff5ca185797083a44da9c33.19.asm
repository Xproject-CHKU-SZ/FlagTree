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
0000dc  9f8e0efe  addli sp, sp, -256
0000e0  1f8f8e01  addli r30, sp, 192
0000e4  80520002  load_param_i r5, 0
0000e8  e3413f00  loadli.w r3,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  63024f00  loadli.w r4,  32(r30)
0000f4  8b901120  mul.s r1, r3, r1
0000f8  0b934020  mul.s r6, r1, r4
0000fc  cb5d5300  ble.s r6, r5, 884
000100  80300002  core_id r1
000104  2bb1a73e  lui r2, 256635
000108  80d30002  load_param_i r7, 1
00010c  ab06f03f  lui r13, 261888
000110  1f050fff  addli r10, r30, -128
000114  9f058000  addli r11, zero, 64
000118  67056ffe  storeli.w r6, -176(r30)
00011c  1bb45000  slli r8, r1, 5
000120  abf00000  lui r1, 15
000124  733ccff6  store.d r[13:14], -136(r30)
000128  e7447ffe  storeli.w r7, -180(r30)
00012c  9b94f0ff  ori r9, r1, 4095
000130  ab00353f  lui r1, 258896
000134  e7048ffe  storeli.w r8, -184(r30)
000138  9b90304f  ori r1, r1, 1267
00013c  67449ffe  storeli.w r9, -188(r30)
000140  67471ffe  storeli.w r1, -140(r30)
000144  9b1051a0  ori r1, r2, 2565
000148  2bf1b53f  lui r2, 260959
00014c  67071ffe  storeli.w r1, -144(r30)
000150  ab00babf  lui r1, 785312
000154  9b90300e  ori r1, r1, 227
000158  e7461ffe  storeli.w r1, -148(r30)
00015c  abd0873f  lui r1, 260221
000160  9b9020c2  ori r1, r1, 3106
000164  e7061ffe  storeli.w r1, -152(r30)
000168  9b10310e  ori r1, r2, 227
00016c  2b71823e  lui r2, 256039
000170  67461ffe  storeli.w r1, -156(r30)
000174  aba091be  lui r1, 780570
000178  9b1c6190  ori r25, r2, 2310
00017c  9b9ae098  ori r21, r1, 2446
000180  abf0ff7f  lui r1, 524287
000184  9b99f0ff  ori r19, r1, 4095
000188  5b0a0000  j 80
00018c  6b510f01  load.d r[3:4], 16(r30)
000190  6b528ff5  load.d r[5:6], -168(r30)
000194  ab0000f0  lui r1, 983040
000198  0b214110  add.ul r[3:4], r[3:4], r[5:6]
00019c  6342affe  loadli.w r4,  -172(r30)
0001a0  97101200  or r1, r4, r1
0001a4  1f028fff  addli r4, r30, -64
0001a8  ff304100  s_lm2gm r1, r4, 0(r[3:4])
0001ac  00a00000  mfence { lm }
0001b0  e3413f00  loadli.w r3,  28(r30)
0001b4  63024f00  loadli.w r4,  32(r30)
0001b8  e302cffe  loadli.w r5,  -160(r30)
0001bc  6303affe  loadli.w r6,  -176(r30)
0001c0  e3439ffe  loadli.w r7,  -180(r30)
0001c4  63049ffe  loadli.w r8,  -184(r30)
0001c8  e3448ffe  loadli.w r9,  -188(r30)
0001cc  8b927210  add.s r5, r5, r7
0001d0  3fa06200  blt.s r5, r6, 8
0001d4  db530000  j 668
0001d8  8b904230  div.s r1, r5, r4
0001dc  8b903030  div.s r1, r1, r3
0001e0  9bb0b000  slli r1, r1, 11
0001e4  8b908010  add.s r1, r1, r8
0001e8  bf9f14fe  blt.s r9, r1, -28
0001ec  2b010100  lui r2, 16
0001f0  9f010000  addli r3, zero, 0
0001f4  67065ffe  storeli.w r5, -160(r30)
0001f8  0b111118  sub.s r2, r2, r1
0001fc  0b123510  add.s r4, r10, r3
000200  9fc10100  addli r3, r3, 4
000204  73100200  store.h zero, 0(r4)
000208  73110200  store.h zero, 2(r4)
00020c  00a00000  mfence { lm }
000210  bbbfb1fe  bneq r3, r11, -20
000214  9f020008  addli r5, zero, 1024
000218  b3910028  sext_int2long r[4:5], r1
00021c  9f130000  addli r7, zero, 1
000220  0b110148  max.s r2, r2, zero
000224  1f0e0000  addli r28, zero, 0
000228  8b905038  mod.s r1, r1, r5
00022c  97b27102  sll.d r[6:7], r[4:5], r7
000230  9f014000  addli r3, zero, 32
000234  0b113140  min.s r2, r2, r3
000238  eb510f00  load.d r[4:5], 0(r30)
00023c  733c5ff4  store.d r[6:7], -168(r30)
000240  1b341100  slli r8, r2, 1
000244  2b0100f0  lui r2, 983040
000248  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
00024c  b3920028  sext_int2long r[6:7], r1
000250  97102400  or r1, r8, r2
000254  67458ffe  storeli.w r8, -172(r30)
000258  17912500  or r2, r11, r2
00025c  97b27202  sll.d r[6:7], r[6:7], r7
000260  eb538f00  load.d r[8:9], 8(r30)
000264  ffa0a100  l_gm2lm r1, r10, 0(r[4:5])
000268  9f008fff  addli r1, r30, -64
00026c  8ba25310  add.ul r[6:7], r[8:9], r[6:7]
000270  7fa11200  l_gm2lm r2, r1, 0(r[6:7])
000274  00a00000  mfence { lm }
000278  5b030000  j 24
00027c  73904d00  store.h r4, 0(r27)
000280  73912d00  store.h r2, 2(r27)
000284  1f4e0e00  addli r28, r28, 4
000288  00a00000  mfence { lm }
00028c  370cbefe  beq r28, r11, -256
000290  1f018fff  addli r2, r30, -64
000294  8b10c511  add.s r1, r10, r28
000298  eb538ff7  load.d r[8:9], -136(r30)
00029c  9f030000  addli r7, zero, 0
0002a0  8b1dc111  add.s r27, r2, r28
0002a4  6bb10000  load.hu r2, 0(r1)
0002a8  ebbb2000  load.hu r23, 2(r1)
0002ac  733c7ff6  store.d r[8:9], -136(r30)
0002b0  ebb10d00  load.hu r3, 0(r27)
0002b4  6bbd2d00  load.hu r26, 2(r27)
0002b8  1b310101  slli r2, r2, 16
0002bc  9bb10101  slli r3, r3, 16
0002c0  0b6a3110  add.f.rn r20, r2, r3
0002c4  6341effe  loadli.w r2,  -140(r30)
0002c8  e301effe  loadli.w r3,  -144(r30)
0002cc  0b612a20  mul.f.rn r2, r20, r2
0002d0  0b6c0160  abs.f r24, r2
0002d4  9b329100  slli r5, r2, 9
0002d8  8b613c20  mul.f.rn r3, r24, r3
0002dc  13830200  seteq r6, r5, zero
0002e0  8fa10108  .word 0x0801a18f
0002e4  0f927120  .word 0x2071920f
0002e8  9b417101  srli r3, r2, 23
0002ec  13610104  setlt.f r2, r2, zero
0002f0  9b81f10f  andi r3, r3, 255
0002f4  9bf1f10f  setlti r3, r3, 255
0002f8  97906100  or r1, r3, r6
0002fc  170b1100  and r22, r2, r1
000300  27810300  addli.d r[3:4], r[8:9], 0
000304  d78f0000  jal 1148
000308  8f300110  .word 0x1001308f
00030c  6341dffe  loadli.w r2,  -148(r30)
000310  e301dffe  loadli.w r3,  -152(r30)
000314  0b620c58  neg.f r4, r24
000318  0be13050  fmac.f.rn r2, r1, r3
00031c  e341cffe  loadli.w r3,  -156(r30)
000320  8b611150  fmac.f.rn r3, r2, r1
000324  1f810a00  addli r2, r21, 0
000328  0be11150  fmac.f.rn r2, r3, r1
00032c  9f810c00  addli r3, r25, 0
000330  8b611150  fmac.f.rn r3, r2, r1
000334  0b614c20  mul.f.rn r2, r24, r4
000338  2b0c803f  lui r24, 260096
00033c  8be10158  neg.f r3, r3
000340  0f010100  exp.f.rn r2, r2
000344  8be03020  mul.f.rn r1, r1, r3
000348  0bec2050  fmac.f.rn r24, r1, r2
00034c  37200b00  beq r22, zero, 8
000350  0b6c0c58  neg.f r24, r24
000354  9bb00b01  slli r1, r23, 16
000358  1b310d01  slli r2, r26, 16
00035c  8beb2010  add.f.rn r23, r1, r2
000360  e340effe  loadli.w r1,  -140(r30)
000364  6301effe  loadli.w r2,  -144(r30)
000368  8be01b20  mul.f.rn r1, r23, r1
00036c  0beb0060  abs.f r22, r1
000370  1bb29000  slli r4, r1, 9
000374  0b612b20  mul.f.rn r2, r22, r2
000378  13030200  seteq r6, r4, zero
00037c  8f230108  .word 0x0801238f
000380  6b518ff7  load.d r[3:4], -136(r30)
000384  0f922320  .word 0x2023920f
000388  9bc37001  srli r7, r1, 23
00038c  93e00004  setlt.f r1, r1, zero
000390  9b83f30f  andi r7, r7, 255
000394  9bf3f30f  setlti r7, r7, 255
000398  17936300  or r6, r7, r6
00039c  178d6000  and r26, r1, r6
0003a0  d78f0000  jal 1148
0003a4  8f300110  .word 0x1001308f
0003a8  6341dffe  loadli.w r2,  -148(r30)
0003ac  e301dffe  loadli.w r3,  -152(r30)
0003b0  0b620b58  neg.f r4, r22
0003b4  0be13050  fmac.f.rn r2, r1, r3
0003b8  e341cffe  loadli.w r3,  -156(r30)
0003bc  8b611150  fmac.f.rn r3, r2, r1
0003c0  1f810a00  addli r2, r21, 0
0003c4  0be11150  fmac.f.rn r2, r3, r1
0003c8  9f810c00  addli r3, r25, 0
0003cc  8b611150  fmac.f.rn r3, r2, r1
0003d0  0b614b20  mul.f.rn r2, r22, r4
0003d4  8be10158  neg.f r3, r3
0003d8  0f010100  exp.f.rn r2, r2
0003dc  8be13020  mul.f.rn r3, r1, r3
0003e0  ab00803f  lui r1, 260096
0003e4  8be02150  fmac.f.rn r1, r3, r2
0003e8  37200d00  beq r26, zero, 8
0003ec  8be00058  neg.f r1, r1
0003f0  ab03003f  lui r7, 258048
0003f4  2b04803f  lui r8, 260096
0003f8  ab04807f  lui r9, 522240
0003fc  1f050fff  addli r10, r30, -128
000400  9f058000  addli r11, zero, 64
000404  0b617a20  mul.f.rn r2, r20, r7
000408  8b618c10  add.f.rn r3, r24, r8
00040c  8b623120  mul.f.rn r5, r2, r3
000410  ab710000  lui r3, 7
000414  17813201  and r2, r5, r19
000418  13832404  setlt.u r6, r9, r2
00041c  1b9101fc  ori r2, r3, 4032
000420  9b91f1ff  ori r3, r3, 4095
000424  1f020100  addli r4, r2, 0
000428  3b600300  bneq r6, zero, 24
00042c  1bc20201  srli r4, r5, 16
000430  1b021200  andi r4, r4, 1
000434  0b924210  add.s r4, r5, r4
000438  0b123210  add.s r4, r4, r3
00043c  1b420201  srli r4, r4, 16
000440  8be27b20  mul.f.rn r5, r23, r7
000444  8be08010  add.f.rn r1, r1, r8
000448  8be01220  mul.f.rn r1, r5, r1
00044c  97823001  and r5, r1, r19
000450  93825404  setlt.u r5, r9, r5
000454  bba802fe  bneq r5, zero, -472
000458  1bc10001  srli r2, r1, 16
00045c  1b011100  andi r2, r2, 1
000460  8b902010  add.s r1, r1, r2
000464  8b903010  add.s r1, r1, r3
000468  1bc10001  srli r2, r1, 16
00046c  5bc2ffff  j -496
000470  9f8e8e01  addli sp, sp, 192
000474  00a00300  mfence { lm, sm, gm }
000478  00100000  exit
00047c  9f8e7eff  addli sp, sp, -72
000480  9f406000  addli r1, zero, 52
000484  2bf50f00  lui r10, 255
000488  abf7ffff  lui r15, 1048575
00048c  ab040080  lui r9, 524288
000490  17232202  xor.d r[7:8], r[5:6], r[3:4]
000494  e7c1ee01  storeli.w r30, 28(sp)
000498  67c43e01  storeli.w r19, 68(sp)
00049c  67844e01  storeli.w r20, 64(sp)
0004a0  e7c35e01  storeli.w r21, 60(sp)
0004a4  e7836e01  storeli.w r22, 56(sp)
0004a8  67c37e01  storeli.w r23, 52(sp)
0004ac  67838e01  storeli.w r24, 48(sp)
0004b0  e7c29e01  storeli.w r25, 44(sp)
0004b4  e782ae01  storeli.w r26, 40(sp)
0004b8  67c2be01  storeli.w r27, 36(sp)
0004bc  6782ce01  storeli.w r28, 32(sp)
0004c0  e781fe01  storeli.w r31, 24(sp)
0004c4  1f8f9e00  addli r30, sp, 72
0004c8  1f040000  addli r8, zero, 0
0004cc  97451102  srl.d r[12:13], r[3:4], r1
0004d0  17481202  srl.d r[17:18], r[5:6], r1
0004d4  1b17f5ff  ori r14, r10, 4095
0004d8  9b96f7ff  ori r13, r15, 4095
0004dc  17038302  and.d r[7:8], r[7:8], r[9:10]
0004e0  9b80f57f  andi r1, r11, 2047
0004e4  1b05f87f  andi r10, r16, 2047
0004e8  9b982780  ori r17, r15, 2050
0004ec  1704d102  and.d r[9:10], r[3:4], r[14:15]
0004f0  9705d202  and.d r[12:13], r[5:6], r[14:15]
0004f4  1f9800f0  addli r16, r1, -2047
0004f8  13081805  setlt.u r16, r16, r17
0004fc  3b700800  bneq r16, zero, 28
000500  1f1805f0  addli r16, r10, -2047
000504  9b971780  ori r15, r15, 2049
000508  93870705  setlt.u r15, r15, r16
00050c  37b00700  beq r15, zero, 12
000510  1f020000  addli r4, zero, 0
000514  5b0b0000  j 88
000518  abf7ff7f  lui r15, 524287
00051c  2b09f07f  lui r18, 524032
000520  9f180000  addli r17, zero, 1
000524  1b97f7ff  ori r14, r15, 4095
000528  9707d102  and.d r[16:17], r[3:4], r[14:15]
00052c  93a91705  setlt.ul r19, r[16:17], r[18:19]
000530  3be00900  bneq r19, zero, 24
000534  ab020800  lui r5, 128
000538  9f060000  addli r13, zero, 0
00053c  1f020000  addli r4, zero, 0
000540  17114102  or.d r[3:4], r[3:4], r[5:6]
000544  5b040000  j 32
000548  1701d202  and.d r[3:4], r[5:6], r[14:15]
00054c  93261105  setlt.ul r13, r[3:4], r[18:19]
000550  3bf80600  bneq r13, zero, 540
000554  ab010800  lui r3, 128
000558  9f060000  addli r13, zero, 0
00055c  1f010000  addli r2, zero, 0
000560  17112202  or.d r[3:4], r[5:6], r[3:4]
000564  1f020000  addli r4, zero, 0
000568  b7c90600  beq r13, zero, 624
00056c  ab011000  lui r3, 256
000570  9f371000  addli r15, zero, 11
000574  abf9ffff  lui r19, 1048575
000578  2bf90475  lui r18, 479311
00057c  9f582000  addli r17, zero, 21
000580  73346ffc  store.d r[7:8], -56(r30)
000584  9f723000  addli r5, zero, 31
000588  73308ffc  store.d r[9:10], -64(r30)
00058c  8b90a018  sub.s r1, r1, r10
000590  1f010000  addli r2, zero, 0
000594  97b7f502  sll.d r[16:17], r[12:13], r15
000598  9b1a3933  ori r21, r18, 819
00059c  8b101210  add.s r1, r4, r1
0005a0  97162402  or.d r[14:15], r[9:10], r[3:4]
0005a4  17912502  or.d r[3:4], r[12:13], r[3:4]
0005a8  9b950980  ori r11, r19, 2048
0005ac  733cdffa  store.d r[14:15], -72(r30)
0005b0  338c0528  zext_int2long r[25:26], r11
0005b4  174b1103  srl.d r[23:24], r[3:4], r17
0005b8  9b95f9ff  ori r11, r19, 4095
0005bc  9b99e9ff  ori r19, r19, 4094
0005c0  b3880528  zext_int2long r[18:19], r11
0005c4  8b9a6a19  sub.s r21, r21, r22
0005c8  97878703  and.d r[16:17], r[16:17], r[25:26]
0005cc  b3890928  zext_int2long r[20:21], r19
0005d0  170d1b03  and.d r[27:28], r[23:24], r[18:19]
0005d4  b38a0a28  zext_int2long r[22:23], r21
0005d8  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
0005dc  0b930358  neg.s r6, r7
0005e0  33030328  zext_int2long r[7:8], r6
0005e4  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
0005e8  17435302  srl.d r[7:8], r[7:8], r5
0005ec  17031303  and.d r[7:8], r[7:8], r[18:19]
0005f0  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0005f4  8b1a0b58  neg.s r21, r22
0005f8  b38a0a28  zext_int2long r[22:23], r21
0005fc  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
000600  17435302  srl.d r[7:8], r[7:8], r5
000604  17031303  and.d r[7:8], r[7:8], r[18:19]
000608  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
00060c  8b1a0b58  neg.s r21, r22
000610  1f0b4000  addli r22, zero, 32
000614  33840a28  zext_int2long r[9:10], r21
000618  9f1a0000  addli r21, zero, 1
00061c  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
000620  33840a28  zext_int2long r[9:10], r21
000624  17435302  srl.d r[7:8], r[7:8], r5
000628  1f73f3ff  addli r6, r6, -1
00062c  33030328  zext_int2long r[7:8], r6
000630  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
000634  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
000638  97c76703  srl.d r[16:17], r[16:17], r22
00063c  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
000640  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
000644  97071403  and.d r[16:17], r[9:10], r[18:19]
000648  17446403  srl.d r[9:10], r[9:10], r22
00064c  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
000650  97cb5702  srl.d r[24:25], r[16:17], r5
000654  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
000658  97b75603  sll.d r[16:17], r[14:15], r21
00065c  abf41f00  lui r9, 511
000660  97b25203  sll.d r[6:7], r[6:7], r21
000664  97cc6703  srl.d r[26:27], r[16:17], r22
000668  978d3703  and.d r[28:29], r[16:17], r[20:21]
00066c  1b96f4ff  ori r12, r9, 4095
000670  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
000674  a7f232fe  addli.d r[6:7], r[6:7], 32543
000678  97831203  and.d r[8:9], r[6:7], r[18:19]
00067c  97c26203  srl.d r[6:7], r[6:7], r22
000680  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
000684  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
000688  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
00068c  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
000690  97881303  and.d r[18:19], r[8:9], r[18:19]
000694  97cb6b03  srl.d r[24:25], r[24:25], r22
000698  97cc6d03  srl.d r[26:27], r[28:29], r22
00069c  97893d03  and.d r[20:21], r[28:29], r[20:21]
0006a0  97c36303  srl.d r[8:9], r[8:9], r22
0006a4  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
0006a8  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
0006ac  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
0006b0  0b227210  add.ul r[5:6], r[5:6], r[8:9]
0006b4  17c36803  srl.d r[7:8], r[18:19], r22
0006b8  0b226210  add.ul r[5:6], r[5:6], r[7:8]
0006bc  13a34504  setlt.ul r6, r[12:13], r[5:6]
0006c0  3b710300  bneq r6, zero, 92
0006c4  1f536000  addli r6, zero, 53
0006c8  eb540ffc  load.d r[10:11], -64(r30)
0006cc  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
0006d0  9fe0f007  addli r1, r1, 1022
0006d4  97b46402  sll.d r[10:11], r[10:11], r6
0006d8  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
0006dc  1f73f00f  addli r6, zero, 2047
0006e0  3fa06000  blt.s r1, r6, 8
0006e4  5b0c0000  j 96
0006e8  1f150000  addli r10, zero, 1
0006ec  bfb1a000  blt.s r1, r10, 108
0006f0  2bf30f00  lui r6, 255
0006f4  abf3ffff  lui r7, 1048575
0006f8  b3850028  zext_int2long r[12:13], r1
0006fc  9f406000  addli r1, zero, 52
000700  1734a402  sll.d r[9:10], r[9:10], r10
000704  1b17f3ff  ori r14, r6, 4095
000708  97b51502  sll.d r[12:13], r[12:13], r1
00070c  9b96f3ff  ori r13, r7, 4095
000710  1702d202  and.d r[5:6], r[5:6], r[14:15]
000714  17924502  or.d r[5:6], r[12:13], r[5:6]
000718  db140000  j 164
00071c  17425203  srl.d r[5:6], r[5:6], r21
000720  1f436000  addli r6, zero, 52
000724  eb530ffc  load.d r[8:9], -64(r30)
000728  9ff0f007  addli r1, r1, 1023
00072c  eb578ffb  load.d r[16:17], -72(r30)
000730  17b36302  sll.d r[7:8], r[8:9], r6
000734  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
000738  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
00073c  1f73f00f  addli r6, zero, 2047
000740  bfae60fe  blt.s r1, r6, -88
000744  2b01f07f  lui r2, 524032
000748  eb518ffc  load.d r[4:5], -56(r30)
00074c  9f000000  addli r1, zero, 0
000750  17911102  or.d r[3:4], r[4:5], r[2:3]
000754  db100000  j 132
000758  2bf3ffff  lui r6, 1048575
00075c  1b13b3fc  ori r6, r6, 4043
000760  bf701300  blt.s r6, r1, 60
000764  6b518ffc  load.d r[3:4], -56(r30)
000768  5b0e0000  j 112
00076c  ab02f07f  lui r5, 524032
000770  1f020000  addli r4, zero, 0
000774  93a64702  setneq.d r13, r[16:17], r[5:6]
000778  3be20600  bneq r13, zero, 152
00077c  1f020000  addli r4, zero, 0
000780  13214100  seteq.d r2, r[3:4], r[5:6]
000784  b7060100  beq r2, zero, 416
000788  ab01f87f  lui r3, 524160
00078c  9f060000  addli r13, zero, 0
000790  1f020000  addli r4, zero, 0
000794  1f010000  addli r2, zero, 0
000798  5bbaffff  j -560
00079c  9f130000  addli r7, zero, 1
0007a0  1fc36000  addli r6, r1, 52
0007a4  8b901318  sub.s r1, r7, r1
0007a8  17b46702  sll.d r[9:10], r[16:17], r6
0007ac  17421202  srl.d r[5:6], r[5:6], r1
0007b0  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
0007b4  17337502  sll.d r[7:8], r[11:12], r7
0007b8  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
0007bc  23031200  andi.d r[7:8], r[5:6], 1
0007c0  0b238310  add.ul r[7:8], r[7:8], r[9:10]
0007c4  93206104  setlt.ul r1, r[3:4], r[7:8]
0007c8  b3800028  zext_int2long r[2:3], r1
0007cc  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0007d0  eb518ffc  load.d r[4:5], -56(r30)
0007d4  17913002  or.d r[3:4], r[2:3], r[4:5]
0007d8  e38f3e00  loadli.w r31,  24(sp)
0007dc  63cf3e00  loadli.w r30,  28(sp)
0007e0  638e4e00  loadli.w r28,  32(sp)
0007e4  e3cd4e00  loadli.w r27,  36(sp)
0007e8  638d5e00  loadli.w r26,  40(sp)
0007ec  e3cc5e00  loadli.w r25,  44(sp)
0007f0  638c6e00  loadli.w r24,  48(sp)
0007f4  e3cb6e00  loadli.w r23,  52(sp)
0007f8  638b7e00  loadli.w r22,  56(sp)
0007fc  e3ca7e00  loadli.w r21,  60(sp)
000800  638a8e00  loadli.w r20,  64(sp)
000804  e3c98e00  loadli.w r19,  68(sp)
000808  9f8e9e00  addli sp, sp, 72
00080c  5f800f00  jr r31, 0
000810  1f020000  addli r4, zero, 0
000814  13224102  setneq.d r4, r[3:4], r[5:6]
000818  3b500200  bneq r4, zero, 20
00081c  9f060000  addli r13, zero, 0
000820  1f020000  addli r4, zero, 0
000824  27010300  addli.d r[3:4], r[7:8], 0
000828  5ba8ffff  j -704
00082c  33020028  zext_int2long r[5:6], zero
000830  13a24702  setneq.d r4, r[16:17], r[5:6]
000834  37240200  beq r4, zero, 264
000838  33020028  zext_int2long r[5:6], zero
00083c  13224102  setneq.d r4, r[3:4], r[5:6]
000840  b7130200  beq r4, zero, 228
000844  2bf20f00  lui r4, 255
000848  abf2ffff  lui r5, 1048575
00084c  1b17f2ff  ori r14, r4, 4095
000850  9b96f2ff  ori r13, r5, 4095
000854  13a2f604  setlt.ul r4, r[14:15], r[16:17]
000858  bb630200  bneq r4, zero, 248
00085c  9f120000  addli r5, zero, 1
000860  9f270000  addli r15, zero, 2
000864  1f420000  addli r4, zero, 4
000868  1f081000  addli r16, zero, 8
00086c  97485402  srl.d r[18:19], r[9:10], r5
000870  97181403  or.d r[18:19], r[9:10], r[18:19]
000874  97c9f802  srl.d r[20:21], r[18:19], r15
000878  97983803  or.d r[18:19], r[18:19], r[20:21]
00087c  97c94802  srl.d r[20:21], r[18:19], r4
000880  97983803  or.d r[18:19], r[18:19], r[20:21]
000884  9f092000  addli r19, zero, 16
000888  17ca0803  srl.d r[21:22], r[18:19], r16
00088c  17984803  or.d r[17:18], r[18:19], r[21:22]
000890  1f094000  addli r18, zero, 32
000894  97493803  srl.d r[20:21], r[17:18], r19
000898  17183803  or.d r[17:18], r[17:18], r[20:21]
00089c  2b5a5555  lui r20, 349525
0008a0  17492803  srl.d r[19:20], r[17:18], r18
0008a4  17182803  or.d r[17:18], r[17:18], r[19:20]
0008a8  33990628  sext_int2long r[19:20], r13
0008ac  17282803  xor.d r[17:18], r[17:18], r[19:20]
0008b0  1b195a55  ori r18, r20, 1365
0008b4  174a5802  srl.d r[21:22], r[17:18], r5
0008b8  9f090900  addli r19, r18, 0
0008bc  ab323333  lui r5, 209715
0008c0  17092a03  and.d r[19:20], r[21:22], r[19:20]
0008c4  1b9a3233  ori r20, r5, 819
0008c8  ab020f0f  lui r5, 61680
0008cc  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
0008d0  9f0a0a00  addli r21, r20, 0
0008d4  1749f802  srl.d r[19:20], r[17:18], r15
0008d8  97074803  and.d r[16:17], r[17:18], r[21:22]
0008dc  97084903  and.d r[18:19], r[19:20], r[21:22]
0008e0  ab090101  lui r19, 4112
0008e4  1f0a7000  addli r20, zero, 56
0008e8  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
0008ec  97c84702  srl.d r[18:19], r[16:17], r4
0008f0  1b92f2f0  ori r4, r5, 3855
0008f4  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
0008f8  9f020200  addli r5, r4, 0
0008fc  9f481000  addli r17, zero, 12
000900  17824702  and.d r[5:6], r[16:17], r[5:6]
000904  9b971910  ori r15, r19, 257
000908  1f880700  addli r16, r15, 0
00090c  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
000910  17424203  srl.d r[5:6], r[5:6], r20
000914  9f57e2ff  addli r15, r4, -11
000918  0b924818  sub.s r4, r17, r4
00091c  1734f402  sll.d r[9:10], r[9:10], r15
000920  db060000  j 52
000924  ab01f07f  lui r3, 524032
000928  9f060000  addli r13, zero, 0
00092c  1f020000  addli r4, zero, 0
000930  1f010000  addli r2, zero, 0
000934  17112302  or.d r[3:4], r[7:8], r[3:4]
000938  5b86ffff  j -976
00093c  33020028  zext_int2long r[5:6], zero
000940  13214100  seteq.d r2, r[3:4], r[5:6]
000944  bb430100  bneq r2, zero, 240
000948  27010300  addli.d r[3:4], r[7:8], 0
00094c  5b1e0000  j 240
000950  1f020000  addli r4, zero, 0
000954  13a12604  setlt.ul r2, r[14:15], r[3:4]
000958  3b530100  bneq r2, zero, 212
00095c  9f160000  addli r13, zero, 1
000960  9f210000  addli r3, zero, 2
000964  1f410000  addli r2, zero, 4
000968  9f021000  addli r5, zero, 8
00096c  1f072000  addli r14, zero, 16
000970  97c7d502  srl.d r[16:17], r[12:13], r13
000974  9797f502  or.d r[16:17], r[12:13], r[16:17]
000978  97c83702  srl.d r[18:19], r[16:17], r3
00097c  97971703  or.d r[16:17], r[16:17], r[18:19]
000980  97c82702  srl.d r[18:19], r[16:17], r2
000984  97971703  or.d r[16:17], r[16:17], r[18:19]
000988  97c85702  srl.d r[18:19], r[16:17], r5
00098c  9f024000  addli r5, zero, 32
000990  97971703  or.d r[16:17], r[16:17], r[18:19]
000994  97c8e702  srl.d r[18:19], r[16:17], r14
000998  2bf7ffff  lui r14, 1048575
00099c  97971703  or.d r[16:17], r[16:17], r[18:19]
0009a0  1b17f7ff  ori r14, r14, 4095
0009a4  97c85702  srl.d r[18:19], r[16:17], r5
0009a8  ab525555  lui r5, 349525
0009ac  97971703  or.d r[16:17], r[16:17], r[18:19]
0009b0  b3180728  sext_int2long r[18:19], r14
0009b4  9b995255  ori r19, r5, 1365
0009b8  ab323333  lui r5, 209715
0009bc  17a71703  xor.d r[15:16], r[16:17], r[18:19]
0009c0  1f8a0900  addli r20, r19, 0
0009c4  1748d702  srl.d r[17:18], r[15:16], r13
0009c8  17083803  and.d r[17:18], r[17:18], r[20:21]
0009cc  1b993233  ori r18, r5, 819
0009d0  ab020101  lui r5, 4112
0009d4  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
0009d8  9f090900  addli r19, r18, 0
0009dc  17483702  srl.d r[17:18], r[15:16], r3
0009e0  17072703  and.d r[15:16], r[15:16], r[19:20]
0009e4  ab010f0f  lui r3, 61680
0009e8  17082803  and.d r[17:18], r[17:18], r[19:20]
0009ec  1b99f1f0  ori r18, r3, 3855
0009f0  0b270711  add.ul r[15:16], r[15:16], r[17:18]
0009f4  9f090900  addli r19, r18, 0
0009f8  17412702  srl.d r[3:4], r[15:16], r2
0009fc  0b212710  add.ul r[3:4], r[15:16], r[3:4]
000a00  1b971210  ori r14, r5, 257
000a04  9f027000  addli r5, zero, 56
000a08  17012103  and.d r[3:4], r[3:4], r[19:20]
000a0c  9f070700  addli r15, r14, 0
000a10  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
000a14  17415102  srl.d r[3:4], r[3:4], r5
000a18  9f52e1ff  addli r5, r2, -11
000a1c  0b114110  add.s r2, r2, r4
000a20  97b55502  sll.d r[12:13], r[12:13], r5
000a24  1f42e1ff  addli r4, r2, -12
000a28  5b010000  j 8
000a2c  9f160000  addli r13, zero, 1
000a30  5b67ffff  j -1224
000a34  ab01f87f  lui r3, 524160
000a38  1f010000  addli r2, zero, 0
000a3c  9f060000  addli r13, zero, 0
000a40  db64ffff  j -1244
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
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
