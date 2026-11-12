; SHA-256 d0c4bb6f4ee6b17802a8b25883b499e8d3d8dffeb0bbd7ea8d0e95a35cc7d1cc
; P800 Cluster · XTDK LLVM 19 · 777 / 783 words decoded
; bound names: triton_unk_fused_0
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
000100  cbac4000  ble.s r1, r4, 808
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
000134  1b9b304f  ori r22, r1, 1267
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
000184  1b1df1ff  ori r26, r2, 4095
000188  9b90f0ff  ori r1, r1, 4095
00018c  e7091ffe  storeli.w r1, -104(r30)
000190  abf0ff7f  lui r1, 524287
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
0001cc  db4b0000  j 604
0001d0  e3403f00  loadli.w r1,  28(r30)
0001d4  63013f00  loadli.w r2,  24(r30)
0001d8  9f110000  addli r3, zero, 1
0001dc  67494ffe  storeli.w r4, -108(r30)
0001e0  9f0d0000  addli r27, zero, 0
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
000220  b3900000  float2bfloat.rn r1, r1
000224  33110200  float2bfloat.rn r2, r4
000228  9fcd0d00  addli r27, r27, 4
00022c  9f028fff  addli r5, r30, -64
000230  1f034000  addli r6, zero, 32
000234  73901c00  store.h r1, 0(r25)
000238  73912c00  store.h r2, 2(r25)
00023c  00a00000  mfence { lm }
000240  37fd6dfe  beq r27, r6, -164
000244  8b9cb211  add.s r25, r5, r27
000248  63417fff  loadli.w r2,  -68(r30)
00024c  ebb00c00  load.hu r1, 0(r25)
000250  6bba2c00  load.hu r20, 2(r25)
000254  b3990018  bfloat2float.rn r19, r1
000258  8be06921  mul.f.rn r1, r19, r22
00025c  8beb0060  abs.f r23, r1
000260  1bb29000  slli r4, r1, 9
000264  0be12b20  mul.f.rn r2, r23, r2
000268  13030200  seteq r6, r4, zero
00026c  8f230108  .word 0x0801238f
000270  6b510ffb  load.d r[3:4], -80(r30)
000274  0f922320  .word 0x2023920f
000278  9bc37001  srli r7, r1, 23
00027c  93e00004  setlt.f r1, r1, zero
000280  9b83f30f  andi r7, r7, 255
000284  9bf3f30f  setlti r7, r7, 255
000288  17936300  or r6, r7, r6
00028c  178c6000  and r24, r1, r6
000290  d7860000  jal 1076
000294  8f300110  .word 0x1001308f
000298  63415fff  loadli.w r2,  -84(r30)
00029c  e3015fff  loadli.w r3,  -88(r30)
0002a0  0be20b58  neg.f r4, r23
0002a4  0be13050  fmac.f.rn r2, r1, r3
0002a8  e3414fff  loadli.w r3,  -92(r30)
0002ac  8b611150  fmac.f.rn r3, r2, r1
0002b0  63014fff  loadli.w r2,  -96(r30)
0002b4  0be11150  fmac.f.rn r2, r3, r1
0002b8  e3413fff  loadli.w r3,  -100(r30)
0002bc  8b611150  fmac.f.rn r3, r2, r1
0002c0  0be14b20  mul.f.rn r2, r23, r4
0002c4  ab0b803f  lui r23, 260096
0002c8  8be10158  neg.f r3, r3
0002cc  0f010100  exp.f.rn r2, r2
0002d0  8be03020  mul.f.rn r1, r1, r3
0002d4  8beb2050  fmac.f.rn r23, r1, r2
0002d8  37200c00  beq r24, zero, 8
0002dc  8beb0b58  neg.f r23, r23
0002e0  331a0a18  bfloat2float.rn r20, r20
0002e4  63417fff  loadli.w r2,  -68(r30)
0002e8  9f0a0b00  addli r21, r22, 0
0002ec  8b606a21  mul.f.rn r1, r20, r22
0002f0  0bec0060  abs.f r24, r1
0002f4  1bb29000  slli r4, r1, 9
0002f8  0b612c20  mul.f.rn r2, r24, r2
0002fc  13030200  seteq r6, r4, zero
000300  8f230108  .word 0x0801238f
000304  6b510ffb  load.d r[3:4], -80(r30)
000308  0f922320  .word 0x2023920f
00030c  9bc37001  srli r7, r1, 23
000310  93e00004  setlt.f r1, r1, zero
000314  9b83f30f  andi r7, r7, 255
000318  9bf3f30f  setlti r7, r7, 255
00031c  17936300  or r6, r7, r6
000320  178b6000  and r22, r1, r6
000324  d7860000  jal 1076
000328  8f300110  .word 0x1001308f
00032c  63415fff  loadli.w r2,  -84(r30)
000330  e3015fff  loadli.w r3,  -88(r30)
000334  0b620c58  neg.f r4, r24
000338  0be13050  fmac.f.rn r2, r1, r3
00033c  e3414fff  loadli.w r3,  -92(r30)
000340  8b611150  fmac.f.rn r3, r2, r1
000344  63014fff  loadli.w r2,  -96(r30)
000348  0be11150  fmac.f.rn r2, r3, r1
00034c  e3413fff  loadli.w r3,  -100(r30)
000350  8b611150  fmac.f.rn r3, r2, r1
000354  0b614c20  mul.f.rn r2, r24, r4
000358  8be10158  neg.f r3, r3
00035c  0f010100  exp.f.rn r2, r2
000360  8be03020  mul.f.rn r1, r1, r3
000364  ab01803f  lui r3, 260096
000368  8be12050  fmac.f.rn r3, r1, r2
00036c  37200b00  beq r22, zero, 8
000370  8be10158  neg.f r3, r3
000374  2b02003f  lui r4, 258048
000378  2b03803f  lui r6, 260096
00037c  ab03807f  lui r7, 522240
000380  1f8b0a00  addli r22, r21, 0
000384  8be04920  mul.f.rn r1, r19, r4
000388  0be16b10  add.f.rn r2, r23, r6
00038c  0be12020  mul.f.rn r2, r1, r2
000390  9702c101  and r5, r2, r28
000394  93805304  setlt.u r1, r7, r5
000398  3bb00000  bneq r1, zero, 12
00039c  9f000100  addli r1, r2, 0
0003a0  db010000  j 12
0003a4  ab004000  lui r1, 1024
0003a8  97101100  or r1, r2, r1
0003ac  0b624a20  mul.f.rn r4, r20, r4
0003b0  8be16110  add.f.rn r3, r3, r6
0003b4  8b613220  mul.f.rn r3, r4, r3
0003b8  1783c101  and r6, r3, r28
0003bc  13826304  setlt.u r4, r7, r6
0003c0  3b500200  bneq r4, zero, 20
0003c4  1f820100  addli r4, r3, 0
0003c8  93025d04  setlt.u r5, r26, r5
0003cc  37e00200  beq r5, zero, 24
0003d0  5b060000  j 48
0003d4  2b024000  lui r4, 1024
0003d8  17924100  or r4, r3, r4
0003dc  93025d04  setlt.u r5, r26, r5
0003e0  bb800200  bneq r5, zero, 32
0003e4  9b400101  srli r1, r2, 16
0003e8  9b801000  andi r1, r1, 1
0003ec  8b101110  add.s r1, r2, r1
0003f0  63013fff  loadli.w r2,  -104(r30)
0003f4  8b902010  add.s r1, r1, r2
0003f8  2b01ffff  lui r2, 1048560
0003fc  97802000  and r1, r1, r2
000400  13016d04  setlt.u r2, r26, r6
000404  3b7801fe  bneq r2, zero, -484
000408  1bc10101  srli r2, r3, 16
00040c  1b011100  andi r2, r2, 1
000410  0b912110  add.s r2, r3, r2
000414  e3013fff  loadli.w r3,  -104(r30)
000418  0b113110  add.s r2, r2, r3
00041c  ab01ffff  lui r3, 1048560
000420  17023100  and r4, r2, r3
000424  dbbfffff  j -516
000428  9f8e8e01  addli sp, sp, 192
00042c  00a00300  mfence { lm, sm, gm }
000430  00100000  exit
000434  9f8e7eff  addli sp, sp, -72
000438  9f406000  addli r1, zero, 52
00043c  2bf50f00  lui r10, 255
000440  abf7ffff  lui r15, 1048575
000444  ab040080  lui r9, 524288
000448  17232202  xor.d r[7:8], r[5:6], r[3:4]
00044c  e7c1ee01  storeli.w r30, 28(sp)
000450  67c43e01  storeli.w r19, 68(sp)
000454  67844e01  storeli.w r20, 64(sp)
000458  e7c35e01  storeli.w r21, 60(sp)
00045c  e7836e01  storeli.w r22, 56(sp)
000460  67c37e01  storeli.w r23, 52(sp)
000464  67838e01  storeli.w r24, 48(sp)
000468  e7c29e01  storeli.w r25, 44(sp)
00046c  e782ae01  storeli.w r26, 40(sp)
000470  67c2be01  storeli.w r27, 36(sp)
000474  6782ce01  storeli.w r28, 32(sp)
000478  e781fe01  storeli.w r31, 24(sp)
00047c  1f8f9e00  addli r30, sp, 72
000480  1f040000  addli r8, zero, 0
000484  97451102  srl.d r[12:13], r[3:4], r1
000488  17481202  srl.d r[17:18], r[5:6], r1
00048c  1b17f5ff  ori r14, r10, 4095
000490  9b96f7ff  ori r13, r15, 4095
000494  17038302  and.d r[7:8], r[7:8], r[9:10]
000498  9b80f57f  andi r1, r11, 2047
00049c  1b05f87f  andi r10, r16, 2047
0004a0  9b982780  ori r17, r15, 2050
0004a4  1704d102  and.d r[9:10], r[3:4], r[14:15]
0004a8  9705d202  and.d r[12:13], r[5:6], r[14:15]
0004ac  1f9800f0  addli r16, r1, -2047
0004b0  13081805  setlt.u r16, r16, r17
0004b4  3b700800  bneq r16, zero, 28
0004b8  1f1805f0  addli r16, r10, -2047
0004bc  9b971780  ori r15, r15, 2049
0004c0  93870705  setlt.u r15, r15, r16
0004c4  37b00700  beq r15, zero, 12
0004c8  1f020000  addli r4, zero, 0
0004cc  5b0b0000  j 88
0004d0  abf7ff7f  lui r15, 524287
0004d4  2b09f07f  lui r18, 524032
0004d8  9f180000  addli r17, zero, 1
0004dc  1b97f7ff  ori r14, r15, 4095
0004e0  9707d102  and.d r[16:17], r[3:4], r[14:15]
0004e4  93a91705  setlt.ul r19, r[16:17], r[18:19]
0004e8  3be00900  bneq r19, zero, 24
0004ec  ab020800  lui r5, 128
0004f0  9f060000  addli r13, zero, 0
0004f4  1f020000  addli r4, zero, 0
0004f8  17114102  or.d r[3:4], r[3:4], r[5:6]
0004fc  5b040000  j 32
000500  1701d202  and.d r[3:4], r[5:6], r[14:15]
000504  93261105  setlt.ul r13, r[3:4], r[18:19]
000508  3bf80600  bneq r13, zero, 540
00050c  ab010800  lui r3, 128
000510  9f060000  addli r13, zero, 0
000514  1f010000  addli r2, zero, 0
000518  17112202  or.d r[3:4], r[5:6], r[3:4]
00051c  1f020000  addli r4, zero, 0
000520  b7c90600  beq r13, zero, 624
000524  ab011000  lui r3, 256
000528  9f371000  addli r15, zero, 11
00052c  abf9ffff  lui r19, 1048575
000530  2bf90475  lui r18, 479311
000534  9f582000  addli r17, zero, 21
000538  73346ffc  store.d r[7:8], -56(r30)
00053c  9f723000  addli r5, zero, 31
000540  73308ffc  store.d r[9:10], -64(r30)
000544  8b90a018  sub.s r1, r1, r10
000548  1f010000  addli r2, zero, 0
00054c  97b7f502  sll.d r[16:17], r[12:13], r15
000550  9b1a3933  ori r21, r18, 819
000554  8b101210  add.s r1, r4, r1
000558  97162402  or.d r[14:15], r[9:10], r[3:4]
00055c  17912502  or.d r[3:4], r[12:13], r[3:4]
000560  9b950980  ori r11, r19, 2048
000564  733cdffa  store.d r[14:15], -72(r30)
000568  338c0528  zext_int2long r[25:26], r11
00056c  174b1103  srl.d r[23:24], r[3:4], r17
000570  9b95f9ff  ori r11, r19, 4095
000574  9b99e9ff  ori r19, r19, 4094
000578  b3880528  zext_int2long r[18:19], r11
00057c  8b9a6a19  sub.s r21, r21, r22
000580  97878703  and.d r[16:17], r[16:17], r[25:26]
000584  b3890928  zext_int2long r[20:21], r19
000588  170d1b03  and.d r[27:28], r[23:24], r[18:19]
00058c  b38a0a28  zext_int2long r[22:23], r21
000590  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
000594  0b930358  neg.s r6, r7
000598  33030328  zext_int2long r[7:8], r6
00059c  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
0005a0  17435302  srl.d r[7:8], r[7:8], r5
0005a4  17031303  and.d r[7:8], r[7:8], r[18:19]
0005a8  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0005ac  8b1a0b58  neg.s r21, r22
0005b0  b38a0a28  zext_int2long r[22:23], r21
0005b4  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
0005b8  17435302  srl.d r[7:8], r[7:8], r5
0005bc  17031303  and.d r[7:8], r[7:8], r[18:19]
0005c0  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0005c4  8b1a0b58  neg.s r21, r22
0005c8  1f0b4000  addli r22, zero, 32
0005cc  33840a28  zext_int2long r[9:10], r21
0005d0  9f1a0000  addli r21, zero, 1
0005d4  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
0005d8  33840a28  zext_int2long r[9:10], r21
0005dc  17435302  srl.d r[7:8], r[7:8], r5
0005e0  1f73f3ff  addli r6, r6, -1
0005e4  33030328  zext_int2long r[7:8], r6
0005e8  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0005ec  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
0005f0  97c76703  srl.d r[16:17], r[16:17], r22
0005f4  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
0005f8  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
0005fc  97071403  and.d r[16:17], r[9:10], r[18:19]
000600  17446403  srl.d r[9:10], r[9:10], r22
000604  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
000608  97cb5702  srl.d r[24:25], r[16:17], r5
00060c  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
000610  97b75603  sll.d r[16:17], r[14:15], r21
000614  abf41f00  lui r9, 511
000618  97b25203  sll.d r[6:7], r[6:7], r21
00061c  97cc6703  srl.d r[26:27], r[16:17], r22
000620  978d3703  and.d r[28:29], r[16:17], r[20:21]
000624  1b96f4ff  ori r12, r9, 4095
000628  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
00062c  a7f232fe  addli.d r[6:7], r[6:7], 32543
000630  97831203  and.d r[8:9], r[6:7], r[18:19]
000634  97c26203  srl.d r[6:7], r[6:7], r22
000638  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
00063c  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
000640  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
000644  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
000648  97881303  and.d r[18:19], r[8:9], r[18:19]
00064c  97cb6b03  srl.d r[24:25], r[24:25], r22
000650  97cc6d03  srl.d r[26:27], r[28:29], r22
000654  97893d03  and.d r[20:21], r[28:29], r[20:21]
000658  97c36303  srl.d r[8:9], r[8:9], r22
00065c  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
000660  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
000664  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
000668  0b227210  add.ul r[5:6], r[5:6], r[8:9]
00066c  17c36803  srl.d r[7:8], r[18:19], r22
000670  0b226210  add.ul r[5:6], r[5:6], r[7:8]
000674  13a34504  setlt.ul r6, r[12:13], r[5:6]
000678  3b710300  bneq r6, zero, 92
00067c  1f536000  addli r6, zero, 53
000680  eb540ffc  load.d r[10:11], -64(r30)
000684  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
000688  9fe0f007  addli r1, r1, 1022
00068c  97b46402  sll.d r[10:11], r[10:11], r6
000690  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
000694  1f73f00f  addli r6, zero, 2047
000698  3fa06000  blt.s r1, r6, 8
00069c  5b0c0000  j 96
0006a0  1f150000  addli r10, zero, 1
0006a4  bfb1a000  blt.s r1, r10, 108
0006a8  2bf30f00  lui r6, 255
0006ac  abf3ffff  lui r7, 1048575
0006b0  b3850028  zext_int2long r[12:13], r1
0006b4  9f406000  addli r1, zero, 52
0006b8  1734a402  sll.d r[9:10], r[9:10], r10
0006bc  1b17f3ff  ori r14, r6, 4095
0006c0  97b51502  sll.d r[12:13], r[12:13], r1
0006c4  9b96f3ff  ori r13, r7, 4095
0006c8  1702d202  and.d r[5:6], r[5:6], r[14:15]
0006cc  17924502  or.d r[5:6], r[12:13], r[5:6]
0006d0  db140000  j 164
0006d4  17425203  srl.d r[5:6], r[5:6], r21
0006d8  1f436000  addli r6, zero, 52
0006dc  eb530ffc  load.d r[8:9], -64(r30)
0006e0  9ff0f007  addli r1, r1, 1023
0006e4  eb578ffb  load.d r[16:17], -72(r30)
0006e8  17b36302  sll.d r[7:8], r[8:9], r6
0006ec  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
0006f0  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
0006f4  1f73f00f  addli r6, zero, 2047
0006f8  bfae60fe  blt.s r1, r6, -88
0006fc  2b01f07f  lui r2, 524032
000700  eb518ffc  load.d r[4:5], -56(r30)
000704  9f000000  addli r1, zero, 0
000708  17911102  or.d r[3:4], r[4:5], r[2:3]
00070c  db100000  j 132
000710  2bf3ffff  lui r6, 1048575
000714  1b13b3fc  ori r6, r6, 4043
000718  bf701300  blt.s r6, r1, 60
00071c  6b518ffc  load.d r[3:4], -56(r30)
000720  5b0e0000  j 112
000724  ab02f07f  lui r5, 524032
000728  1f020000  addli r4, zero, 0
00072c  93a64702  setneq.d r13, r[16:17], r[5:6]
000730  3be20600  bneq r13, zero, 152
000734  1f020000  addli r4, zero, 0
000738  13214100  seteq.d r2, r[3:4], r[5:6]
00073c  b7060100  beq r2, zero, 416
000740  ab01f87f  lui r3, 524160
000744  9f060000  addli r13, zero, 0
000748  1f020000  addli r4, zero, 0
00074c  1f010000  addli r2, zero, 0
000750  5bbaffff  j -560
000754  9f130000  addli r7, zero, 1
000758  1fc36000  addli r6, r1, 52
00075c  8b901318  sub.s r1, r7, r1
000760  17b46702  sll.d r[9:10], r[16:17], r6
000764  17421202  srl.d r[5:6], r[5:6], r1
000768  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
00076c  17337502  sll.d r[7:8], r[11:12], r7
000770  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
000774  23031200  andi.d r[7:8], r[5:6], 1
000778  0b238310  add.ul r[7:8], r[7:8], r[9:10]
00077c  93206104  setlt.ul r1, r[3:4], r[7:8]
000780  b3800028  zext_int2long r[2:3], r1
000784  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000788  eb518ffc  load.d r[4:5], -56(r30)
00078c  17913002  or.d r[3:4], r[2:3], r[4:5]
000790  e38f3e00  loadli.w r31,  24(sp)
000794  63cf3e00  loadli.w r30,  28(sp)
000798  638e4e00  loadli.w r28,  32(sp)
00079c  e3cd4e00  loadli.w r27,  36(sp)
0007a0  638d5e00  loadli.w r26,  40(sp)
0007a4  e3cc5e00  loadli.w r25,  44(sp)
0007a8  638c6e00  loadli.w r24,  48(sp)
0007ac  e3cb6e00  loadli.w r23,  52(sp)
0007b0  638b7e00  loadli.w r22,  56(sp)
0007b4  e3ca7e00  loadli.w r21,  60(sp)
0007b8  638a8e00  loadli.w r20,  64(sp)
0007bc  e3c98e00  loadli.w r19,  68(sp)
0007c0  9f8e9e00  addli sp, sp, 72
0007c4  5f800f00  jr r31, 0
0007c8  1f020000  addli r4, zero, 0
0007cc  13224102  setneq.d r4, r[3:4], r[5:6]
0007d0  3b500200  bneq r4, zero, 20
0007d4  9f060000  addli r13, zero, 0
0007d8  1f020000  addli r4, zero, 0
0007dc  27010300  addli.d r[3:4], r[7:8], 0
0007e0  5ba8ffff  j -704
0007e4  33020028  zext_int2long r[5:6], zero
0007e8  13a24702  setneq.d r4, r[16:17], r[5:6]
0007ec  37240200  beq r4, zero, 264
0007f0  33020028  zext_int2long r[5:6], zero
0007f4  13224102  setneq.d r4, r[3:4], r[5:6]
0007f8  b7130200  beq r4, zero, 228
0007fc  2bf20f00  lui r4, 255
000800  abf2ffff  lui r5, 1048575
000804  1b17f2ff  ori r14, r4, 4095
000808  9b96f2ff  ori r13, r5, 4095
00080c  13a2f604  setlt.ul r4, r[14:15], r[16:17]
000810  bb630200  bneq r4, zero, 248
000814  9f120000  addli r5, zero, 1
000818  9f270000  addli r15, zero, 2
00081c  1f420000  addli r4, zero, 4
000820  1f081000  addli r16, zero, 8
000824  97485402  srl.d r[18:19], r[9:10], r5
000828  97181403  or.d r[18:19], r[9:10], r[18:19]
00082c  97c9f802  srl.d r[20:21], r[18:19], r15
000830  97983803  or.d r[18:19], r[18:19], r[20:21]
000834  97c94802  srl.d r[20:21], r[18:19], r4
000838  97983803  or.d r[18:19], r[18:19], r[20:21]
00083c  9f092000  addli r19, zero, 16
000840  17ca0803  srl.d r[21:22], r[18:19], r16
000844  17984803  or.d r[17:18], r[18:19], r[21:22]
000848  1f094000  addli r18, zero, 32
00084c  97493803  srl.d r[20:21], r[17:18], r19
000850  17183803  or.d r[17:18], r[17:18], r[20:21]
000854  2b5a5555  lui r20, 349525
000858  17492803  srl.d r[19:20], r[17:18], r18
00085c  17182803  or.d r[17:18], r[17:18], r[19:20]
000860  33990628  sext_int2long r[19:20], r13
000864  17282803  xor.d r[17:18], r[17:18], r[19:20]
000868  1b195a55  ori r18, r20, 1365
00086c  174a5802  srl.d r[21:22], r[17:18], r5
000870  9f090900  addli r19, r18, 0
000874  ab323333  lui r5, 209715
000878  17092a03  and.d r[19:20], r[21:22], r[19:20]
00087c  1b9a3233  ori r20, r5, 819
000880  ab020f0f  lui r5, 61680
000884  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
000888  9f0a0a00  addli r21, r20, 0
00088c  1749f802  srl.d r[19:20], r[17:18], r15
000890  97074803  and.d r[16:17], r[17:18], r[21:22]
000894  97084903  and.d r[18:19], r[19:20], r[21:22]
000898  ab090101  lui r19, 4112
00089c  1f0a7000  addli r20, zero, 56
0008a0  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
0008a4  97c84702  srl.d r[18:19], r[16:17], r4
0008a8  1b92f2f0  ori r4, r5, 3855
0008ac  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
0008b0  9f020200  addli r5, r4, 0
0008b4  9f481000  addli r17, zero, 12
0008b8  17824702  and.d r[5:6], r[16:17], r[5:6]
0008bc  9b971910  ori r15, r19, 257
0008c0  1f880700  addli r16, r15, 0
0008c4  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
0008c8  17424203  srl.d r[5:6], r[5:6], r20
0008cc  9f57e2ff  addli r15, r4, -11
0008d0  0b924818  sub.s r4, r17, r4
0008d4  1734f402  sll.d r[9:10], r[9:10], r15
0008d8  db060000  j 52
0008dc  ab01f07f  lui r3, 524032
0008e0  9f060000  addli r13, zero, 0
0008e4  1f020000  addli r4, zero, 0
0008e8  1f010000  addli r2, zero, 0
0008ec  17112302  or.d r[3:4], r[7:8], r[3:4]
0008f0  5b86ffff  j -976
0008f4  33020028  zext_int2long r[5:6], zero
0008f8  13214100  seteq.d r2, r[3:4], r[5:6]
0008fc  bb430100  bneq r2, zero, 240
000900  27010300  addli.d r[3:4], r[7:8], 0
000904  5b1e0000  j 240
000908  1f020000  addli r4, zero, 0
00090c  13a12604  setlt.ul r2, r[14:15], r[3:4]
000910  3b530100  bneq r2, zero, 212
000914  9f160000  addli r13, zero, 1
000918  9f210000  addli r3, zero, 2
00091c  1f410000  addli r2, zero, 4
000920  9f021000  addli r5, zero, 8
000924  1f072000  addli r14, zero, 16
000928  97c7d502  srl.d r[16:17], r[12:13], r13
00092c  9797f502  or.d r[16:17], r[12:13], r[16:17]
000930  97c83702  srl.d r[18:19], r[16:17], r3
000934  97971703  or.d r[16:17], r[16:17], r[18:19]
000938  97c82702  srl.d r[18:19], r[16:17], r2
00093c  97971703  or.d r[16:17], r[16:17], r[18:19]
000940  97c85702  srl.d r[18:19], r[16:17], r5
000944  9f024000  addli r5, zero, 32
000948  97971703  or.d r[16:17], r[16:17], r[18:19]
00094c  97c8e702  srl.d r[18:19], r[16:17], r14
000950  2bf7ffff  lui r14, 1048575
000954  97971703  or.d r[16:17], r[16:17], r[18:19]
000958  1b17f7ff  ori r14, r14, 4095
00095c  97c85702  srl.d r[18:19], r[16:17], r5
000960  ab525555  lui r5, 349525
000964  97971703  or.d r[16:17], r[16:17], r[18:19]
000968  b3180728  sext_int2long r[18:19], r14
00096c  9b995255  ori r19, r5, 1365
000970  ab323333  lui r5, 209715
000974  17a71703  xor.d r[15:16], r[16:17], r[18:19]
000978  1f8a0900  addli r20, r19, 0
00097c  1748d702  srl.d r[17:18], r[15:16], r13
000980  17083803  and.d r[17:18], r[17:18], r[20:21]
000984  1b993233  ori r18, r5, 819
000988  ab020101  lui r5, 4112
00098c  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
000990  9f090900  addli r19, r18, 0
000994  17483702  srl.d r[17:18], r[15:16], r3
000998  17072703  and.d r[15:16], r[15:16], r[19:20]
00099c  ab010f0f  lui r3, 61680
0009a0  17082803  and.d r[17:18], r[17:18], r[19:20]
0009a4  1b99f1f0  ori r18, r3, 3855
0009a8  0b270711  add.ul r[15:16], r[15:16], r[17:18]
0009ac  9f090900  addli r19, r18, 0
0009b0  17412702  srl.d r[3:4], r[15:16], r2
0009b4  0b212710  add.ul r[3:4], r[15:16], r[3:4]
0009b8  1b971210  ori r14, r5, 257
0009bc  9f027000  addli r5, zero, 56
0009c0  17012103  and.d r[3:4], r[3:4], r[19:20]
0009c4  9f070700  addli r15, r14, 0
0009c8  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
0009cc  17415102  srl.d r[3:4], r[3:4], r5
0009d0  9f52e1ff  addli r5, r2, -11
0009d4  0b114110  add.s r2, r2, r4
0009d8  97b55502  sll.d r[12:13], r[12:13], r5
0009dc  1f42e1ff  addli r4, r2, -12
0009e0  5b010000  j 8
0009e4  9f160000  addli r13, zero, 1
0009e8  5b67ffff  j -1224
0009ec  ab01f87f  lui r3, 524160
0009f0  1f010000  addli r2, zero, 0
0009f4  9f060000  addli r13, zero, 0
0009f8  db64ffff  j -1244
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
000c34  00100000  exit
000c38  00100000  exit
