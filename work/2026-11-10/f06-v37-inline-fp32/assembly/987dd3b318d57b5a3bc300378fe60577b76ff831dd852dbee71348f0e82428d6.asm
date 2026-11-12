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
0000dc  9f8e0efb  addli sp, sp, -640
0000e0  1f8f8e04  addli r30, sp, 576
0000e4  80520002  load_param_i r5, 0
0000e8  e3413f00  loadli.w r3,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  63024f00  loadli.w r4,  32(r30)
0000f4  8b901120  mul.s r1, r3, r1
0000f8  0b934020  mul.s r6, r1, r4
0000fc  4b7c5300  ble.s r6, r5, 796
000100  80300002  core_id r1
000104  2bb1a73e  lui r2, 256635
000108  80d30002  load_param_i r7, 1
00010c  ab06f03f  lui r13, 261888
000110  1f050ffc  addli r10, r30, -512
000114  9f050002  addli r11, zero, 256
000118  670d6ffa  storeli.w r6, -560(r30)
00011c  1bb47000  slli r8, r1, 7
000120  abf03f00  lui r1, 1023
000124  733ccfde  store.d r[13:14], -520(r30)
000128  e74c7ffa  storeli.w r7, -564(r30)
00012c  9b94f0ff  ori r9, r1, 4095
000130  ab00353f  lui r1, 258896
000134  e70c8ffa  storeli.w r8, -568(r30)
000138  9b90304f  ori r1, r1, 1267
00013c  674c9ffa  storeli.w r9, -572(r30)
000140  674f1ffa  storeli.w r1, -524(r30)
000144  9b1051a0  ori r1, r2, 2565
000148  2bf1b53f  lui r2, 260959
00014c  670f1ffa  storeli.w r1, -528(r30)
000150  ab00babf  lui r1, 785312
000154  1b1b310e  ori r22, r2, 227
000158  2b71823e  lui r2, 256039
00015c  9b90300e  ori r1, r1, 227
000160  9b1c6190  ori r25, r2, 2310
000164  e74e1ffa  storeli.w r1, -532(r30)
000168  abd0873f  lui r1, 260221
00016c  9b9020c2  ori r1, r1, 3106
000170  e70e1ffa  storeli.w r1, -536(r30)
000174  aba091be  lui r1, 780570
000178  9b9ae098  ori r21, r1, 2446
00017c  5b0a0000  j 80
000180  6b510f01  load.d r[3:4], 16(r30)
000184  6b528fdd  load.d r[5:6], -552(r30)
000188  ab0000f0  lui r1, 983040
00018c  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000190  6342affb  loadli.w r4,  -556(r30)
000194  97101200  or r1, r4, r1
000198  1f020ffe  addli r4, r30, -256
00019c  ff304100  s_lm2gm r1, r4, 0(r[3:4])
0001a0  00a00000  mfence { lm }
0001a4  e3413f00  loadli.w r3,  28(r30)
0001a8  63024f00  loadli.w r4,  32(r30)
0001ac  e342cffb  loadli.w r5,  -540(r30)
0001b0  6303affb  loadli.w r6,  -560(r30)
0001b4  e3439ffb  loadli.w r7,  -564(r30)
0001b8  63049ffb  loadli.w r8,  -568(r30)
0001bc  e3448ffb  loadli.w r9,  -572(r30)
0001c0  8b927210  add.s r5, r5, r7
0001c4  3fa06200  blt.s r5, r6, 8
0001c8  5b4a0000  j 592
0001cc  8b904230  div.s r1, r5, r4
0001d0  8b903030  div.s r1, r1, r3
0001d4  9bb0d000  slli r1, r1, 13
0001d8  8b908010  add.s r1, r1, r8
0001dc  bf9f14fe  blt.s r9, r1, -28
0001e0  2b014000  lui r2, 1024
0001e4  9f010000  addli r3, zero, 0
0001e8  674e5ffa  storeli.w r5, -540(r30)
0001ec  0b111118  sub.s r2, r2, r1
0001f0  0b123510  add.s r4, r10, r3
0001f4  9fc10100  addli r3, r3, 4
0001f8  73100200  store.h zero, 0(r4)
0001fc  73110200  store.h zero, 2(r4)
000200  00a00000  mfence { lm }
000204  bbbfb1fe  bneq r3, r11, -20
000208  9f020010  addli r5, zero, 2048
00020c  b3910028  sext_int2long r[4:5], r1
000210  9f130000  addli r7, zero, 1
000214  0b110148  max.s r2, r2, zero
000218  1f0e0000  addli r28, zero, 0
00021c  8b905038  mod.s r1, r1, r5
000220  97b27102  sll.d r[6:7], r[4:5], r7
000224  9f010001  addli r3, zero, 128
000228  0b113140  min.s r2, r2, r3
00022c  eb510f00  load.d r[4:5], 0(r30)
000230  733c5fdc  store.d r[6:7], -552(r30)
000234  1b341100  slli r8, r2, 1
000238  2b0100f0  lui r2, 983040
00023c  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
000240  b3920028  sext_int2long r[6:7], r1
000244  97102400  or r1, r8, r2
000248  674d8ffa  storeli.w r8, -556(r30)
00024c  17912500  or r2, r11, r2
000250  97b27202  sll.d r[6:7], r[6:7], r7
000254  eb538f00  load.d r[8:9], 8(r30)
000258  ffa0a100  l_gm2lm r1, r10, 0(r[4:5])
00025c  9f000ffe  addli r1, r30, -256
000260  8ba25310  add.ul r[6:7], r[8:9], r[6:7]
000264  7fa11200  l_gm2lm r2, r1, 0(r[6:7])
000268  00a00000  mfence { lm }
00026c  5b090000  j 72
000270  ab02803f  lui r5, 260096
000274  ab01003f  lui r3, 258048
000278  1f050ffc  addli r10, r30, -512
00027c  9f050002  addli r11, zero, 256
000280  1f4e0e00  addli r28, r28, 4
000284  0be13d20  mul.f.rn r2, r27, r3
000288  0b625a10  add.f.rn r4, r20, r5
00028c  8be13b20  mul.f.rn r3, r23, r3
000290  8be05010  add.f.rn r1, r1, r5
000294  0b614120  mul.f.rn r2, r2, r4
000298  8be01120  mul.f.rn r1, r3, r1
00029c  1b410101  srli r2, r2, 16
0002a0  9bc00001  srli r1, r1, 16
0002a4  73902900  store.h r2, 0(r19)
0002a8  73911900  store.h r1, 2(r19)
0002ac  00a00000  mfence { lm }
0002b0  374bbefe  beq r28, r11, -304
0002b4  1f010ffe  addli r2, r30, -256
0002b8  8b10c511  add.s r1, r10, r28
0002bc  eb538fdf  load.d r[8:9], -520(r30)
0002c0  9f030000  addli r7, zero, 0
0002c4  8b19c111  add.s r19, r2, r28
0002c8  6bb10000  load.hu r2, 0(r1)
0002cc  ebbb2000  load.hu r23, 2(r1)
0002d0  733c7fde  store.d r[8:9], -520(r30)
0002d4  ebb10900  load.hu r3, 0(r19)
0002d8  6bbc2900  load.hu r24, 2(r19)
0002dc  1b310101  slli r2, r2, 16
0002e0  9bb10101  slli r3, r3, 16
0002e4  8b6d3110  add.f.rn r27, r2, r3
0002e8  6341effb  loadli.w r2,  -524(r30)
0002ec  e301effb  loadli.w r3,  -528(r30)
0002f0  0be12d20  mul.f.rn r2, r27, r2
0002f4  0b6a0160  abs.f r20, r2
0002f8  9b329100  slli r5, r2, 9
0002fc  8b613a20  mul.f.rn r3, r20, r3
000300  13830200  seteq r6, r5, zero
000304  8fa10108  .word 0x0801a18f
000308  0f927120  .word 0x2071920f
00030c  9b417101  srli r3, r2, 23
000310  13610104  setlt.f r2, r2, zero
000314  9b81f10f  andi r3, r3, 255
000318  9bf1f10f  setlti r3, r3, 255
00031c  97906100  or r1, r3, r6
000320  170d1100  and r26, r2, r1
000324  27810300  addli.d r[3:4], r[8:9], 0
000328  d7840000  jal 1060
00032c  8f300110  .word 0x1001308f
000330  6341dffb  loadli.w r2,  -532(r30)
000334  e301dffb  loadli.w r3,  -536(r30)
000338  0b620a58  neg.f r4, r20
00033c  0be13050  fmac.f.rn r2, r1, r3
000340  9f010b00  addli r3, r22, 0
000344  8b611150  fmac.f.rn r3, r2, r1
000348  1f810a00  addli r2, r21, 0
00034c  0be11150  fmac.f.rn r2, r3, r1
000350  9f810c00  addli r3, r25, 0
000354  8b611150  fmac.f.rn r3, r2, r1
000358  0b614a20  mul.f.rn r2, r20, r4
00035c  2b0a803f  lui r20, 260096
000360  8be10158  neg.f r3, r3
000364  0f010100  exp.f.rn r2, r2
000368  8be03020  mul.f.rn r1, r1, r3
00036c  0bea2050  fmac.f.rn r20, r1, r2
000370  37200d00  beq r26, zero, 8
000374  0b6a0a58  neg.f r20, r20
000378  9bb00b01  slli r1, r23, 16
00037c  1b310c01  slli r2, r24, 16
000380  8beb2010  add.f.rn r23, r1, r2
000384  e340effb  loadli.w r1,  -524(r30)
000388  6301effb  loadli.w r2,  -528(r30)
00038c  8be01b20  mul.f.rn r1, r23, r1
000390  0bec0060  abs.f r24, r1
000394  1bb29000  slli r4, r1, 9
000398  0b612c20  mul.f.rn r2, r24, r2
00039c  13030200  seteq r6, r4, zero
0003a0  8f230108  .word 0x0801238f
0003a4  6b518fdf  load.d r[3:4], -520(r30)
0003a8  0f922320  .word 0x2023920f
0003ac  9bc37001  srli r7, r1, 23
0003b0  93e00004  setlt.f r1, r1, zero
0003b4  9b83f30f  andi r7, r7, 255
0003b8  9bf3f30f  setlti r7, r7, 255
0003bc  17936300  or r6, r7, r6
0003c0  178d6000  and r26, r1, r6
0003c4  d7840000  jal 1060
0003c8  8f300110  .word 0x1001308f
0003cc  6341dffb  loadli.w r2,  -532(r30)
0003d0  e301dffb  loadli.w r3,  -536(r30)
0003d4  0b620c58  neg.f r4, r24
0003d8  0be13050  fmac.f.rn r2, r1, r3
0003dc  9f010b00  addli r3, r22, 0
0003e0  8b611150  fmac.f.rn r3, r2, r1
0003e4  1f810a00  addli r2, r21, 0
0003e8  0be11150  fmac.f.rn r2, r3, r1
0003ec  9f810c00  addli r3, r25, 0
0003f0  8b611150  fmac.f.rn r3, r2, r1
0003f4  0b614c20  mul.f.rn r2, r24, r4
0003f8  8be10158  neg.f r3, r3
0003fc  0f010100  exp.f.rn r2, r2
000400  8be13020  mul.f.rn r3, r1, r3
000404  ab00803f  lui r1, 260096
000408  8be02150  fmac.f.rn r1, r3, r2
00040c  b7190dfe  beq r26, zero, -412
000410  8be00058  neg.f r1, r1
000414  dbcbffff  j -420
000418  9f8e8e04  addli sp, sp, 576
00041c  00a00300  mfence { lm, sm, gm }
000420  00100000  exit
000424  9f8e7eff  addli sp, sp, -72
000428  9f406000  addli r1, zero, 52
00042c  2bf50f00  lui r10, 255
000430  abf7ffff  lui r15, 1048575
000434  ab040080  lui r9, 524288
000438  17232202  xor.d r[7:8], r[5:6], r[3:4]
00043c  e7c1ee01  storeli.w r30, 28(sp)
000440  67c43e01  storeli.w r19, 68(sp)
000444  67844e01  storeli.w r20, 64(sp)
000448  e7c35e01  storeli.w r21, 60(sp)
00044c  e7836e01  storeli.w r22, 56(sp)
000450  67c37e01  storeli.w r23, 52(sp)
000454  67838e01  storeli.w r24, 48(sp)
000458  e7c29e01  storeli.w r25, 44(sp)
00045c  e782ae01  storeli.w r26, 40(sp)
000460  67c2be01  storeli.w r27, 36(sp)
000464  6782ce01  storeli.w r28, 32(sp)
000468  e781fe01  storeli.w r31, 24(sp)
00046c  1f8f9e00  addli r30, sp, 72
000470  1f040000  addli r8, zero, 0
000474  97451102  srl.d r[12:13], r[3:4], r1
000478  17481202  srl.d r[17:18], r[5:6], r1
00047c  1b17f5ff  ori r14, r10, 4095
000480  9b96f7ff  ori r13, r15, 4095
000484  17038302  and.d r[7:8], r[7:8], r[9:10]
000488  9b80f57f  andi r1, r11, 2047
00048c  1b05f87f  andi r10, r16, 2047
000490  9b982780  ori r17, r15, 2050
000494  1704d102  and.d r[9:10], r[3:4], r[14:15]
000498  9705d202  and.d r[12:13], r[5:6], r[14:15]
00049c  1f9800f0  addli r16, r1, -2047
0004a0  13081805  setlt.u r16, r16, r17
0004a4  3b700800  bneq r16, zero, 28
0004a8  1f1805f0  addli r16, r10, -2047
0004ac  9b971780  ori r15, r15, 2049
0004b0  93870705  setlt.u r15, r15, r16
0004b4  37b00700  beq r15, zero, 12
0004b8  1f020000  addli r4, zero, 0
0004bc  5b0b0000  j 88
0004c0  abf7ff7f  lui r15, 524287
0004c4  2b09f07f  lui r18, 524032
0004c8  9f180000  addli r17, zero, 1
0004cc  1b97f7ff  ori r14, r15, 4095
0004d0  9707d102  and.d r[16:17], r[3:4], r[14:15]
0004d4  93a91705  setlt.ul r19, r[16:17], r[18:19]
0004d8  3be00900  bneq r19, zero, 24
0004dc  ab020800  lui r5, 128
0004e0  9f060000  addli r13, zero, 0
0004e4  1f020000  addli r4, zero, 0
0004e8  17114102  or.d r[3:4], r[3:4], r[5:6]
0004ec  5b040000  j 32
0004f0  1701d202  and.d r[3:4], r[5:6], r[14:15]
0004f4  93261105  setlt.ul r13, r[3:4], r[18:19]
0004f8  3bf80600  bneq r13, zero, 540
0004fc  ab010800  lui r3, 128
000500  9f060000  addli r13, zero, 0
000504  1f010000  addli r2, zero, 0
000508  17112202  or.d r[3:4], r[5:6], r[3:4]
00050c  1f020000  addli r4, zero, 0
000510  b7c90600  beq r13, zero, 624
000514  ab011000  lui r3, 256
000518  9f371000  addli r15, zero, 11
00051c  abf9ffff  lui r19, 1048575
000520  2bf90475  lui r18, 479311
000524  9f582000  addli r17, zero, 21
000528  73346ffc  store.d r[7:8], -56(r30)
00052c  9f723000  addli r5, zero, 31
000530  73308ffc  store.d r[9:10], -64(r30)
000534  8b90a018  sub.s r1, r1, r10
000538  1f010000  addli r2, zero, 0
00053c  97b7f502  sll.d r[16:17], r[12:13], r15
000540  9b1a3933  ori r21, r18, 819
000544  8b101210  add.s r1, r4, r1
000548  97162402  or.d r[14:15], r[9:10], r[3:4]
00054c  17912502  or.d r[3:4], r[12:13], r[3:4]
000550  9b950980  ori r11, r19, 2048
000554  733cdffa  store.d r[14:15], -72(r30)
000558  338c0528  zext_int2long r[25:26], r11
00055c  174b1103  srl.d r[23:24], r[3:4], r17
000560  9b95f9ff  ori r11, r19, 4095
000564  9b99e9ff  ori r19, r19, 4094
000568  b3880528  zext_int2long r[18:19], r11
00056c  8b9a6a19  sub.s r21, r21, r22
000570  97878703  and.d r[16:17], r[16:17], r[25:26]
000574  b3890928  zext_int2long r[20:21], r19
000578  170d1b03  and.d r[27:28], r[23:24], r[18:19]
00057c  b38a0a28  zext_int2long r[22:23], r21
000580  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
000584  0b930358  neg.s r6, r7
000588  33030328  zext_int2long r[7:8], r6
00058c  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
000590  17435302  srl.d r[7:8], r[7:8], r5
000594  17031303  and.d r[7:8], r[7:8], r[18:19]
000598  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
00059c  8b1a0b58  neg.s r21, r22
0005a0  b38a0a28  zext_int2long r[22:23], r21
0005a4  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
0005a8  17435302  srl.d r[7:8], r[7:8], r5
0005ac  17031303  and.d r[7:8], r[7:8], r[18:19]
0005b0  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0005b4  8b1a0b58  neg.s r21, r22
0005b8  1f0b4000  addli r22, zero, 32
0005bc  33840a28  zext_int2long r[9:10], r21
0005c0  9f1a0000  addli r21, zero, 1
0005c4  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
0005c8  33840a28  zext_int2long r[9:10], r21
0005cc  17435302  srl.d r[7:8], r[7:8], r5
0005d0  1f73f3ff  addli r6, r6, -1
0005d4  33030328  zext_int2long r[7:8], r6
0005d8  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0005dc  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
0005e0  97c76703  srl.d r[16:17], r[16:17], r22
0005e4  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
0005e8  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
0005ec  97071403  and.d r[16:17], r[9:10], r[18:19]
0005f0  17446403  srl.d r[9:10], r[9:10], r22
0005f4  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0005f8  97cb5702  srl.d r[24:25], r[16:17], r5
0005fc  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
000600  97b75603  sll.d r[16:17], r[14:15], r21
000604  abf41f00  lui r9, 511
000608  97b25203  sll.d r[6:7], r[6:7], r21
00060c  97cc6703  srl.d r[26:27], r[16:17], r22
000610  978d3703  and.d r[28:29], r[16:17], r[20:21]
000614  1b96f4ff  ori r12, r9, 4095
000618  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
00061c  a7f232fe  addli.d r[6:7], r[6:7], 32543
000620  97831203  and.d r[8:9], r[6:7], r[18:19]
000624  97c26203  srl.d r[6:7], r[6:7], r22
000628  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
00062c  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
000630  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
000634  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
000638  97881303  and.d r[18:19], r[8:9], r[18:19]
00063c  97cb6b03  srl.d r[24:25], r[24:25], r22
000640  97cc6d03  srl.d r[26:27], r[28:29], r22
000644  97893d03  and.d r[20:21], r[28:29], r[20:21]
000648  97c36303  srl.d r[8:9], r[8:9], r22
00064c  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
000650  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
000654  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
000658  0b227210  add.ul r[5:6], r[5:6], r[8:9]
00065c  17c36803  srl.d r[7:8], r[18:19], r22
000660  0b226210  add.ul r[5:6], r[5:6], r[7:8]
000664  13a34504  setlt.ul r6, r[12:13], r[5:6]
000668  3b710300  bneq r6, zero, 92
00066c  1f536000  addli r6, zero, 53
000670  eb540ffc  load.d r[10:11], -64(r30)
000674  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
000678  9fe0f007  addli r1, r1, 1022
00067c  97b46402  sll.d r[10:11], r[10:11], r6
000680  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
000684  1f73f00f  addli r6, zero, 2047
000688  3fa06000  blt.s r1, r6, 8
00068c  5b0c0000  j 96
000690  1f150000  addli r10, zero, 1
000694  bfb1a000  blt.s r1, r10, 108
000698  2bf30f00  lui r6, 255
00069c  abf3ffff  lui r7, 1048575
0006a0  b3850028  zext_int2long r[12:13], r1
0006a4  9f406000  addli r1, zero, 52
0006a8  1734a402  sll.d r[9:10], r[9:10], r10
0006ac  1b17f3ff  ori r14, r6, 4095
0006b0  97b51502  sll.d r[12:13], r[12:13], r1
0006b4  9b96f3ff  ori r13, r7, 4095
0006b8  1702d202  and.d r[5:6], r[5:6], r[14:15]
0006bc  17924502  or.d r[5:6], r[12:13], r[5:6]
0006c0  db140000  j 164
0006c4  17425203  srl.d r[5:6], r[5:6], r21
0006c8  1f436000  addli r6, zero, 52
0006cc  eb530ffc  load.d r[8:9], -64(r30)
0006d0  9ff0f007  addli r1, r1, 1023
0006d4  eb578ffb  load.d r[16:17], -72(r30)
0006d8  17b36302  sll.d r[7:8], r[8:9], r6
0006dc  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
0006e0  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
0006e4  1f73f00f  addli r6, zero, 2047
0006e8  bfae60fe  blt.s r1, r6, -88
0006ec  2b01f07f  lui r2, 524032
0006f0  eb518ffc  load.d r[4:5], -56(r30)
0006f4  9f000000  addli r1, zero, 0
0006f8  17911102  or.d r[3:4], r[4:5], r[2:3]
0006fc  db100000  j 132
000700  2bf3ffff  lui r6, 1048575
000704  1b13b3fc  ori r6, r6, 4043
000708  bf701300  blt.s r6, r1, 60
00070c  6b518ffc  load.d r[3:4], -56(r30)
000710  5b0e0000  j 112
000714  ab02f07f  lui r5, 524032
000718  1f020000  addli r4, zero, 0
00071c  93a64702  setneq.d r13, r[16:17], r[5:6]
000720  3be20600  bneq r13, zero, 152
000724  1f020000  addli r4, zero, 0
000728  13214100  seteq.d r2, r[3:4], r[5:6]
00072c  b7060100  beq r2, zero, 416
000730  ab01f87f  lui r3, 524160
000734  9f060000  addli r13, zero, 0
000738  1f020000  addli r4, zero, 0
00073c  1f010000  addli r2, zero, 0
000740  5bbaffff  j -560
000744  9f130000  addli r7, zero, 1
000748  1fc36000  addli r6, r1, 52
00074c  8b901318  sub.s r1, r7, r1
000750  17b46702  sll.d r[9:10], r[16:17], r6
000754  17421202  srl.d r[5:6], r[5:6], r1
000758  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
00075c  17337502  sll.d r[7:8], r[11:12], r7
000760  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
000764  23031200  andi.d r[7:8], r[5:6], 1
000768  0b238310  add.ul r[7:8], r[7:8], r[9:10]
00076c  93206104  setlt.ul r1, r[3:4], r[7:8]
000770  b3800028  zext_int2long r[2:3], r1
000774  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000778  eb518ffc  load.d r[4:5], -56(r30)
00077c  17913002  or.d r[3:4], r[2:3], r[4:5]
000780  e38f3e00  loadli.w r31,  24(sp)
000784  63cf3e00  loadli.w r30,  28(sp)
000788  638e4e00  loadli.w r28,  32(sp)
00078c  e3cd4e00  loadli.w r27,  36(sp)
000790  638d5e00  loadli.w r26,  40(sp)
000794  e3cc5e00  loadli.w r25,  44(sp)
000798  638c6e00  loadli.w r24,  48(sp)
00079c  e3cb6e00  loadli.w r23,  52(sp)
0007a0  638b7e00  loadli.w r22,  56(sp)
0007a4  e3ca7e00  loadli.w r21,  60(sp)
0007a8  638a8e00  loadli.w r20,  64(sp)
0007ac  e3c98e00  loadli.w r19,  68(sp)
0007b0  9f8e9e00  addli sp, sp, 72
0007b4  5f800f00  jr r31, 0
0007b8  1f020000  addli r4, zero, 0
0007bc  13224102  setneq.d r4, r[3:4], r[5:6]
0007c0  3b500200  bneq r4, zero, 20
0007c4  9f060000  addli r13, zero, 0
0007c8  1f020000  addli r4, zero, 0
0007cc  27010300  addli.d r[3:4], r[7:8], 0
0007d0  5ba8ffff  j -704
0007d4  33020028  zext_int2long r[5:6], zero
0007d8  13a24702  setneq.d r4, r[16:17], r[5:6]
0007dc  37240200  beq r4, zero, 264
0007e0  33020028  zext_int2long r[5:6], zero
0007e4  13224102  setneq.d r4, r[3:4], r[5:6]
0007e8  b7130200  beq r4, zero, 228
0007ec  2bf20f00  lui r4, 255
0007f0  abf2ffff  lui r5, 1048575
0007f4  1b17f2ff  ori r14, r4, 4095
0007f8  9b96f2ff  ori r13, r5, 4095
0007fc  13a2f604  setlt.ul r4, r[14:15], r[16:17]
000800  bb630200  bneq r4, zero, 248
000804  9f120000  addli r5, zero, 1
000808  9f270000  addli r15, zero, 2
00080c  1f420000  addli r4, zero, 4
000810  1f081000  addli r16, zero, 8
000814  97485402  srl.d r[18:19], r[9:10], r5
000818  97181403  or.d r[18:19], r[9:10], r[18:19]
00081c  97c9f802  srl.d r[20:21], r[18:19], r15
000820  97983803  or.d r[18:19], r[18:19], r[20:21]
000824  97c94802  srl.d r[20:21], r[18:19], r4
000828  97983803  or.d r[18:19], r[18:19], r[20:21]
00082c  9f092000  addli r19, zero, 16
000830  17ca0803  srl.d r[21:22], r[18:19], r16
000834  17984803  or.d r[17:18], r[18:19], r[21:22]
000838  1f094000  addli r18, zero, 32
00083c  97493803  srl.d r[20:21], r[17:18], r19
000840  17183803  or.d r[17:18], r[17:18], r[20:21]
000844  2b5a5555  lui r20, 349525
000848  17492803  srl.d r[19:20], r[17:18], r18
00084c  17182803  or.d r[17:18], r[17:18], r[19:20]
000850  33990628  sext_int2long r[19:20], r13
000854  17282803  xor.d r[17:18], r[17:18], r[19:20]
000858  1b195a55  ori r18, r20, 1365
00085c  174a5802  srl.d r[21:22], r[17:18], r5
000860  9f090900  addli r19, r18, 0
000864  ab323333  lui r5, 209715
000868  17092a03  and.d r[19:20], r[21:22], r[19:20]
00086c  1b9a3233  ori r20, r5, 819
000870  ab020f0f  lui r5, 61680
000874  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
000878  9f0a0a00  addli r21, r20, 0
00087c  1749f802  srl.d r[19:20], r[17:18], r15
000880  97074803  and.d r[16:17], r[17:18], r[21:22]
000884  97084903  and.d r[18:19], r[19:20], r[21:22]
000888  ab090101  lui r19, 4112
00088c  1f0a7000  addli r20, zero, 56
000890  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
000894  97c84702  srl.d r[18:19], r[16:17], r4
000898  1b92f2f0  ori r4, r5, 3855
00089c  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
0008a0  9f020200  addli r5, r4, 0
0008a4  9f481000  addli r17, zero, 12
0008a8  17824702  and.d r[5:6], r[16:17], r[5:6]
0008ac  9b971910  ori r15, r19, 257
0008b0  1f880700  addli r16, r15, 0
0008b4  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
0008b8  17424203  srl.d r[5:6], r[5:6], r20
0008bc  9f57e2ff  addli r15, r4, -11
0008c0  0b924818  sub.s r4, r17, r4
0008c4  1734f402  sll.d r[9:10], r[9:10], r15
0008c8  db060000  j 52
0008cc  ab01f07f  lui r3, 524032
0008d0  9f060000  addli r13, zero, 0
0008d4  1f020000  addli r4, zero, 0
0008d8  1f010000  addli r2, zero, 0
0008dc  17112302  or.d r[3:4], r[7:8], r[3:4]
0008e0  5b86ffff  j -976
0008e4  33020028  zext_int2long r[5:6], zero
0008e8  13214100  seteq.d r2, r[3:4], r[5:6]
0008ec  bb430100  bneq r2, zero, 240
0008f0  27010300  addli.d r[3:4], r[7:8], 0
0008f4  5b1e0000  j 240
0008f8  1f020000  addli r4, zero, 0
0008fc  13a12604  setlt.ul r2, r[14:15], r[3:4]
000900  3b530100  bneq r2, zero, 212
000904  9f160000  addli r13, zero, 1
000908  9f210000  addli r3, zero, 2
00090c  1f410000  addli r2, zero, 4
000910  9f021000  addli r5, zero, 8
000914  1f072000  addli r14, zero, 16
000918  97c7d502  srl.d r[16:17], r[12:13], r13
00091c  9797f502  or.d r[16:17], r[12:13], r[16:17]
000920  97c83702  srl.d r[18:19], r[16:17], r3
000924  97971703  or.d r[16:17], r[16:17], r[18:19]
000928  97c82702  srl.d r[18:19], r[16:17], r2
00092c  97971703  or.d r[16:17], r[16:17], r[18:19]
000930  97c85702  srl.d r[18:19], r[16:17], r5
000934  9f024000  addli r5, zero, 32
000938  97971703  or.d r[16:17], r[16:17], r[18:19]
00093c  97c8e702  srl.d r[18:19], r[16:17], r14
000940  2bf7ffff  lui r14, 1048575
000944  97971703  or.d r[16:17], r[16:17], r[18:19]
000948  1b17f7ff  ori r14, r14, 4095
00094c  97c85702  srl.d r[18:19], r[16:17], r5
000950  ab525555  lui r5, 349525
000954  97971703  or.d r[16:17], r[16:17], r[18:19]
000958  b3180728  sext_int2long r[18:19], r14
00095c  9b995255  ori r19, r5, 1365
000960  ab323333  lui r5, 209715
000964  17a71703  xor.d r[15:16], r[16:17], r[18:19]
000968  1f8a0900  addli r20, r19, 0
00096c  1748d702  srl.d r[17:18], r[15:16], r13
000970  17083803  and.d r[17:18], r[17:18], r[20:21]
000974  1b993233  ori r18, r5, 819
000978  ab020101  lui r5, 4112
00097c  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
000980  9f090900  addli r19, r18, 0
000984  17483702  srl.d r[17:18], r[15:16], r3
000988  17072703  and.d r[15:16], r[15:16], r[19:20]
00098c  ab010f0f  lui r3, 61680
000990  17082803  and.d r[17:18], r[17:18], r[19:20]
000994  1b99f1f0  ori r18, r3, 3855
000998  0b270711  add.ul r[15:16], r[15:16], r[17:18]
00099c  9f090900  addli r19, r18, 0
0009a0  17412702  srl.d r[3:4], r[15:16], r2
0009a4  0b212710  add.ul r[3:4], r[15:16], r[3:4]
0009a8  1b971210  ori r14, r5, 257
0009ac  9f027000  addli r5, zero, 56
0009b0  17012103  and.d r[3:4], r[3:4], r[19:20]
0009b4  9f070700  addli r15, r14, 0
0009b8  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
0009bc  17415102  srl.d r[3:4], r[3:4], r5
0009c0  9f52e1ff  addli r5, r2, -11
0009c4  0b114110  add.s r2, r2, r4
0009c8  97b55502  sll.d r[12:13], r[12:13], r5
0009cc  1f42e1ff  addli r4, r2, -12
0009d0  5b010000  j 8
0009d4  9f160000  addli r13, zero, 1
0009d8  5b67ffff  j -1224
0009dc  ab01f87f  lui r3, 524160
0009e0  1f010000  addli r2, zero, 0
0009e4  9f060000  addli r13, zero, 0
0009e8  db64ffff  j -1244
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
