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
000078  9f495000  addli r19, zero, 44
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
0000dc  9f8ecef7  addli sp, sp, -1056
0000e0  1f8fce07  addli r30, sp, 992
0000e4  805c0002  load_param_i r25, 0
0000e8  e3484f00  loadli.w r17,  36(r30)
0000ec  e3004f00  loadli.w r1,  32(r30)
0000f0  630a5f00  loadli.w r20,  40(r30)
0000f4  8b901820  mul.s r1, r17, r1
0000f8  0b9e4021  mul.s r28, r1, r20
0000fc  4b7f9e0b  ble.s r28, r25, 6108
000100  6b5d8f00  load.d r[27:28], 8(r30)
000104  80d00002  load_param_i r1, 1
000108  1f070ffb  addli r14, r30, -640
00010c  ab0780ff  lui r15, 1046528
000110  1f050002  addli r10, zero, 256
000114  1f090ffd  addli r18, r30, -384
000118  9f090001  addli r19, zero, 128
00011c  9f0a0ffe  addli r21, r30, -256
000120  6742cff9  storeli.w r28, -988(r30)
000124  e7431ff8  storeli.w r1, -964(r30)
000128  db020000  j 20
00012c  e3407ff8  loadli.w r1,  -964(r30)
000130  8b9c1c10  add.s r25, r25, r1
000134  3fa0cc01  blt.s r25, r28, 8
000138  5bf40200  j 6048
00013c  8b904c31  div.s r1, r25, r20
000140  00310002  core_id r2
000144  8b901031  div.s r1, r1, r17
000148  9bb06000  slli r1, r1, 6
00014c  8b902010  add.s r1, r1, r2
000150  1f71f00f  addli r2, zero, 2047
000154  3f6f11fe  blt.s r2, r1, -40
000158  1f010000  addli r2, zero, 0
00015c  8b112710  add.s r3, r14, r2
000160  1f011100  addli r2, r2, 8
000164  6780f100  storeli.w r15, 0(r3)
000168  67c0f100  storeli.w r15, 4(r3)
00016c  00a00000  mfence { lm }
000170  bb3fa1fe  bneq r2, r10, -20
000174  1f010000  addli r2, zero, 0
000178  9f030ff9  addli r7, r30, -896
00017c  8b912310  add.s r3, r7, r2
000180  1f011100  addli r2, r2, 8
000184  67800100  storeli.w zero, 0(r3)
000188  67c00100  storeli.w zero, 4(r3)
00018c  00a00000  mfence { lm }
000190  bb3fa1fe  bneq r2, r10, -20
000194  9bb0b000  slli r1, r1, 11
000198  e7039ff9  storeli.w r25, -968(r30)
00019c  e7461ff8  storeli.w r1, -916(r30)
0001a0  9f000000  addli r1, zero, 0
0001a4  db020000  j 20
0001a8  1f01800f  addli r2, zero, 1984
0001ac  13812004  setlt.u r2, r1, r2
0001b0  9f808000  addli r1, r1, 64
0001b4  375b0100  beq r2, zero, 724
0001b8  1f010000  addli r2, zero, 0
0001bc  8b112910  add.s r3, r18, r2
0001c0  1f410100  addli r2, r2, 4
0001c4  73900100  store.h zero, 0(r3)
0001c8  73910100  store.h zero, 2(r3)
0001cc  00a00000  mfence { lm }
0001d0  bb3f31ff  bneq r2, r19, -20
0001d4  6341dff8  loadli.w r2,  -916(r30)
0001d8  1f120000  addli r4, zero, 1
0001dc  eb520f00  load.d r[6:7], 0(r30)
0001e0  17912000  or r2, r1, r2
0001e4  33110128  sext_int2long r[3:4], r2
0001e8  17314102  sll.d r[3:4], r[3:4], r4
0001ec  2b0200f0  lui r4, 983040
0001f0  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
0001f4  17924900  or r4, r19, r4
0001f8  7f222101  l_gm2lm r4, r18, 0(r[3:4])
0001fc  1f010000  addli r2, zero, 0
000200  8b912a10  add.s r3, r21, r2
000204  1f410100  addli r2, r2, 4
000208  73900100  store.h zero, 0(r3)
00020c  73910100  store.h zero, 2(r3)
000210  00a00000  mfence { lm }
000214  bb3f31ff  bneq r2, r19, -20
000218  33810028  zext_int2long r[3:4], r1
00021c  1f120000  addli r4, zero, 1
000220  17314102  sll.d r[3:4], r[3:4], r4
000224  2b0200f0  lui r4, 983040
000228  0b212d10  add.ul r[3:4], r[27:28], r[3:4]
00022c  17924900  or r4, r19, r4
000230  7f225101  l_gm2lm r4, r21, 0(r[3:4])
000234  1f410000  addli r2, zero, 4
000238  9f010000  addli r3, zero, 0
00023c  5b080000  j 64
000240  0b631321  mul.f.rn r6, r6, r17
000244  8be3a320  mul.f.rn r7, r7, r10
000248  e7cfb2fe  storeli.w r11, -4(r5)
00024c  6780d200  storeli.w r13, 0(r5)
000250  1f011100  addli r2, r2, 8
000254  9fc10100  addli r3, r3, 4
000258  00a00000  mfence { lm }
00025c  0b636410  add.f.rn r6, r8, r6
000260  8b637810  add.f.rn r7, r16, r7
000264  67007200  storeli.w r7, 0(r4)
000268  e74f62fe  storeli.w r6, -4(r4)
00026c  9f030ff9  addli r7, r30, -896
000270  1f420002  addli r4, zero, 260
000274  00a00000  mfence { lm }
000278  b74c41fe  beq r2, r4, -208
00027c  0b922310  add.s r4, r7, r2
000280  8b122710  add.s r5, r14, r2
000284  8b143910  add.s r9, r18, r3
000288  8b963a10  add.s r13, r21, r3
00028c  63c5f2ff  loadli.w r10,  -4(r5)
000290  6343f2ff  loadli.w r6,  -4(r4)
000294  e3030200  loadli.w r7,  0(r4)
000298  63840200  loadli.w r8,  0(r5)
00029c  00a00000  mfence { lm }
0002a0  ebb50400  load.hu r11, 0(r9)
0002a4  6bb62400  load.hu r12, 2(r9)
0002a8  00a00000  mfence { lm }
0002ac  ebb40600  load.hu r9, 0(r13)
0002b0  ebb62600  load.hu r13, 2(r13)
0002b4  9f080500  addli r17, r10, 0
0002b8  b3950518  bfloat2float.rn r11, r11
0002bc  b3940418  bfloat2float.rn r9, r9
0002c0  8be49510  add.f.rn r9, r11, r9
0002c4  93e5a404  setlt.f r11, r9, r10
0002c8  3ba00500  bneq r11, zero, 8
0002cc  9f880400  addli r17, r9, 0
0002d0  9b359500  slli r11, r10, 9
0002d4  1bb89400  slli r16, r9, 9
0002d8  1b4a7501  srli r20, r10, 23
0002dc  1bcb7401  srli r22, r9, 23
0002e0  93850500  seteq r11, r11, zero
0002e4  13080800  seteq r16, r16, zero
0002e8  1b0afa0f  andi r20, r20, 255
0002ec  1b0bfb0f  andi r22, r22, 255
0002f0  1b7afa0f  setlti r20, r20, 255
0002f4  1b7bfb0f  setlti r22, r22, 255
0002f8  9715ba00  or r11, r20, r11
0002fc  17180b01  or r16, r22, r16
000300  97850501  and r11, r11, r16
000304  b7940500  beq r11, zero, 292
000308  1f080500  addli r16, r10, 0
00030c  bb240500  bneq r10, zero, 296
000310  9f850400  addli r11, r9, 0
000314  37a00400  beq r9, zero, 8
000318  9f050800  addli r11, r16, 0
00031c  13681007  setle.f r16, zero, r17
000320  13ea0806  setle.f r20, r17, zero
000324  17080a01  and r16, r20, r16
000328  3b200800  bneq r16, zero, 8
00032c  9f850800  addli r11, r17, 0
000330  33160618  bfloat2float.rn r12, r12
000334  b3960618  bfloat2float.rn r13, r13
000338  1f080400  addli r16, r8, 0
00033c  0b66d610  add.f.rn r12, r12, r13
000340  93668604  setlt.f r13, r12, r8
000344  3ba00600  bneq r13, zero, 8
000348  1f080600  addli r16, r12, 0
00034c  9b369400  slli r13, r8, 9
000350  9b389600  slli r17, r12, 9
000354  1b4a7401  srli r20, r8, 23
000358  1b4b7601  srli r22, r12, 23
00035c  93860600  seteq r13, r13, zero
000360  93880800  seteq r17, r17, zero
000364  1b0afa0f  andi r20, r20, 255
000368  1b0bfb0f  andi r22, r22, 255
00036c  1b7afa0f  setlti r20, r20, 255
000370  1b7bfb0f  setlti r22, r22, 255
000374  9716da00  or r13, r20, r13
000378  97181b01  or r17, r22, r17
00037c  97861601  and r13, r13, r17
000380  37930600  beq r13, zero, 196
000384  9f080400  addli r17, r8, 0
000388  3b230400  bneq r8, zero, 200
00038c  9f060600  addli r13, r12, 0
000390  37200600  beq r12, zero, 8
000394  9f860800  addli r13, r17, 0
000398  93680007  setle.f r17, zero, r16
00039c  136a0806  setle.f r20, r16, zero
0003a0  97081a01  and r17, r20, r17
0003a4  3ba00800  bneq r17, zero, 8
0003a8  9f060800  addli r13, r16, 0
0003ac  1bb89500  slli r16, r11, 9
0003b0  93e8b706  setle.f r17, r15, r11
0003b4  13eaf506  setle.f r20, r11, r15
0003b8  1bcb7501  srli r22, r11, 23
0003bc  13080800  seteq r16, r16, zero
0003c0  1b0bfb0f  andi r22, r22, 255
0003c4  1b7bfb0f  setlti r22, r22, 255
0003c8  97081a01  and r17, r20, r17
0003cc  17180b01  or r16, r22, r16
0003d0  178a0801  and r20, r17, r16
0003d4  2b08803f  lui r16, 260096
0003d8  ab08803f  lui r17, 260096
0003dc  3b300a00  bneq r20, zero, 12
0003e0  0b65b518  sub.f.rn r10, r10, r11
0003e4  8f080500  exp.f.rn r17, r10
0003e8  1bb59600  slli r10, r13, 9
0003ec  93ebd706  setle.f r23, r15, r13
0003f0  13ecf606  setle.f r24, r13, r15
0003f4  1bcb7601  srli r22, r13, 23
0003f8  13050500  seteq r10, r10, zero
0003fc  1b0bfb0f  andi r22, r22, 255
000400  1b7bfb0f  setlti r22, r22, 255
000404  1715ab00  or r10, r22, r10
000408  170b7c01  and r22, r24, r23
00040c  170bab00  and r22, r22, r10
000410  2b05803f  lui r10, 260096
000414  37310b00  beq r22, zero, 76
000418  2b04803f  lui r8, 260096
00041c  37510a00  beq r20, zero, 84
000420  bb080bfe  bneq r22, zero, -480
000424  5b0b0000  j 88
000428  ab08c07f  lui r17, 523264
00042c  1f080500  addli r16, r10, 0
000430  b70b05fe  beq r10, zero, -288
000434  1f880800  addli r16, r17, 0
000438  9f850400  addli r11, r9, 0
00043c  3bfb04fe  bneq r9, zero, -292
000440  dbdbffff  j -292
000444  2b08c07f  lui r16, 523264
000448  9f080400  addli r17, r8, 0
00044c  370d04fe  beq r8, zero, -192
000450  9f080800  addli r17, r16, 0
000454  9f060600  addli r13, r12, 0
000458  bb7c06fe  bneq r12, zero, -196
00045c  dbe7ffff  j -196
000460  0b64d418  sub.f.rn r8, r8, r13
000464  0f050400  exp.f.rn r10, r8
000468  2b04803f  lui r8, 260096
00046c  bb5e0afe  bneq r20, zero, -76
000470  0be4b418  sub.f.rn r8, r9, r11
000474  0f040400  exp.f.rn r8, r8
000478  3b270bfe  bneq r22, zero, -568
00047c  8b64d618  sub.f.rn r9, r12, r13
000480  0f880400  exp.f.rn r16, r9
000484  dbb7ffff  j -580
000488  e3000ff9  loadli.w r1,  -896(r30)
00048c  e3040ffb  loadli.w r9,  -640(r30)
000490  e3460ffb  loadli.w r13,  -636(r30)
000494  1f010000  addli r2, zero, 0
000498  67431ff8  storeli.w r1, -972(r30)
00049c  e3400ff9  loadli.w r1,  -892(r30)
0004a0  1f850600  addli r10, r13, 0
0004a4  9f880600  addli r17, r13, 0
0004a8  1f840600  addli r8, r13, 0
0004ac  1f880600  addli r16, r13, 0
0004b0  1f860600  addli r12, r13, 0
0004b4  1f830600  addli r6, r13, 0
0004b8  1f8e0600  addli r28, r13, 0
0004bc  9f8b0400  addli r23, r9, 0
0004c0  1f8a0400  addli r20, r9, 0
0004c4  1f8b0400  addli r22, r9, 0
0004c8  9f850400  addli r11, r9, 0
0004cc  e742dff8  storeli.w r13, -980(r30)
0004d0  67479ff8  storeli.w r9, -908(r30)
0004d4  67079ff8  storeli.w r9, -912(r30)
0004d8  e7479ff8  storeli.w r9, -900(r30)
0004dc  e7079ff8  storeli.w r9, -904(r30)
0004e0  e7029ff8  storeli.w r9, -984(r30)
0004e4  67031ff8  storeli.w r1, -976(r30)
0004e8  5b030000  j 24
0004ec  63019ff8  loadli.w r2,  -952(r30)
0004f0  9f008001  addli r1, zero, 192
0004f4  e7079ff8  storeli.w r9, -904(r30)
0004f8  1f018100  addli r2, r2, 64
0004fc  b7131104  beq r2, r1, 2276
000500  67450ff9  storeli.w r16, -940(r30)
000504  0b182710  add.s r16, r14, r2
000508  e744bff8  storeli.w r11, -948(r30)
00050c  9f850b00  addli r11, r23, 0
000510  67054ff9  storeli.w r20, -944(r30)
000514  9f8b0800  addli r23, r17, 0
000518  634afff8  loadli.w r20,  -900(r30)
00051c  e706cff9  storeli.w r28, -920(r30)
000520  9f040b00  addli r9, r22, 0
000524  e705aff8  storeli.w r10, -936(r30)
000528  e7458ff8  storeli.w r8, -932(r30)
00052c  6706cff8  storeli.w r12, -928(r30)
000530  67466ff8  storeli.w r6, -924(r30)
000534  e7042ff8  storeli.w r2, -952(r30)
000538  e3083800  loadli.w r17,  24(r16)
00053c  e3418800  loadli.w r3,  68(r16)
000540  634c4800  loadli.w r24,  36(r16)
000544  63431800  loadli.w r6,  12(r16)
000548  63412800  loadli.w r2,  20(r16)
00054c  e3423800  loadli.w r5,  28(r16)
000550  e3004800  loadli.w r1,  32(r16)
000554  63041800  loadli.w r8,  8(r16)
000558  63052800  loadli.w r10,  16(r16)
00055c  e34c6800  loadli.w r25,  52(r16)
000560  63467800  loadli.w r12,  60(r16)
000564  63028800  loadli.w r4,  64(r16)
000568  630d5800  loadli.w r26,  40(r16)
00056c  e30d6800  loadli.w r27,  48(r16)
000570  630b7800  loadli.w r22,  56(r16)
000574  13ee4805  setlt.f r28, r17, r20
000578  67443ff8  storeli.w r3, -956(r30)
00057c  e3415800  loadli.w r3,  44(r16)
000580  1f080a00  addli r16, r20, 0
000584  67043ff8  storeli.w r3, -960(r30)
000588  3b200e00  bneq r28, zero, 8
00058c  1f880800  addli r16, r17, 0
000590  9b339a00  slli r7, r20, 9
000594  1bbe9800  slli r28, r17, 9
000598  9bc17801  srli r3, r17, 23
00059c  1b4a7a01  srli r20, r20, 23
0005a0  130e0e00  seteq r28, r28, zero
0005a4  93830300  seteq r7, r7, zero
0005a8  9b81f10f  andi r3, r3, 255
0005ac  1b0afa0f  andi r20, r20, 255
0005b0  9bf1f10f  setlti r3, r3, 255
0005b4  1b7afa0f  setlti r20, r20, 255
0005b8  9791c101  or r3, r3, r28
0005bc  97137a00  or r7, r20, r7
0005c0  97813300  and r3, r7, r3
0005c4  3ba00100  bneq r3, zero, 8
0005c8  2b08c07f  lui r16, 523264
0005cc  e341fff8  loadli.w r3,  -900(r30)
0005d0  630eeff8  loadli.w r28,  -912(r30)
0005d4  37a00100  beq r3, zero, 8
0005d8  9f010800  addli r3, r16, 0
0005dc  37a00800  beq r17, zero, 8
0005e0  9f880100  addli r17, r3, 0
0005e4  93610007  setle.f r3, zero, r16
0005e8  93630806  setle.f r7, r16, zero
0005ec  97813300  and r3, r7, r3
0005f0  3ba00100  bneq r3, zero, 8
0005f4  9f080800  addli r17, r16, 0
0005f8  9361c505  setlt.f r3, r10, r28
0005fc  1f080e00  addli r16, r28, 0
000600  e7471ff9  storeli.w r17, -900(r30)
000604  3ba00100  bneq r3, zero, 8
000608  1f080500  addli r16, r10, 0
00060c  9b319500  slli r3, r10, 9
000610  9b339e00  slli r7, r28, 9
000614  9b487501  srli r17, r10, 23
000618  1b4a7e01  srli r20, r28, 23
00061c  93810100  seteq r3, r3, zero
000620  93830300  seteq r7, r7, zero
000624  9b88f80f  andi r17, r17, 255
000628  1b0afa0f  andi r20, r20, 255
00062c  9bf8f80f  setlti r17, r17, 255
000630  1b7afa0f  setlti r20, r20, 255
000634  97913800  or r3, r17, r3
000638  97137a00  or r7, r20, r7
00063c  97813300  and r3, r7, r3
000640  37d90102  beq r3, zero, 1620
000644  1f8a0400  addli r20, r9, 0
000648  3b690e02  bneq r28, zero, 1624
00064c  e344eff8  loadli.w r9,  -908(r30)
000650  37200500  beq r10, zero, 8
000654  1f050e00  addli r10, r28, 0
000658  93610007  setle.f r3, zero, r16
00065c  93630806  setle.f r7, r16, zero
000660  1f0e0500  addli r28, r10, 0
000664  97813300  and r3, r7, r3
000668  3ba00100  bneq r3, zero, 8
00066c  1f0e0800  addli r28, r16, 0
000670  93619404  setlt.f r3, r8, r9
000674  1f850400  addli r10, r9, 0
000678  3ba00100  bneq r3, zero, 8
00067c  1f050400  addli r10, r8, 0
000680  9b319400  slli r3, r8, 9
000684  9bb39400  slli r7, r9, 9
000688  1b487401  srli r16, r8, 23
00068c  9bc87401  srli r17, r9, 23
000690  93810100  seteq r3, r3, zero
000694  93830300  seteq r7, r7, zero
000698  1b08f80f  andi r16, r16, 255
00069c  9b88f80f  andi r17, r17, 255
0006a0  1b78f80f  setlti r16, r16, 255
0006a4  9bf8f80f  setlti r17, r17, 255
0006a8  97113800  or r3, r16, r3
0006ac  97937800  or r7, r17, r7
0006b0  97813300  and r3, r7, r3
0006b4  b7f70102  beq r3, zero, 1532
0006b8  9f880b00  addli r17, r23, 0
0006bc  3b880402  bneq r9, zero, 1536
0006c0  9f8b0500  addli r23, r11, 0
0006c4  37200400  beq r8, zero, 8
0006c8  1f840400  addli r8, r9, 0
0006cc  9361a006  setle.f r3, zero, r10
0006d0  93630506  setle.f r7, r10, zero
0006d4  e3459ff8  loadli.w r11,  -948(r30)
0006d8  9f040400  addli r9, r8, 0
0006dc  97813300  and r3, r7, r3
0006e0  3ba00100  bneq r3, zero, 8
0006e4  9f040500  addli r9, r10, 0
0006e8  93e17005  setlt.f r3, r1, r23
0006ec  1f840b00  addli r8, r23, 0
0006f0  3ba00100  bneq r3, zero, 8
0006f4  1f840000  addli r8, r1, 0
0006f8  9bb19000  slli r3, r1, 9
0006fc  9bb39b00  slli r7, r23, 9
000700  1bc57001  srli r10, r1, 23
000704  1bc87b01  srli r16, r23, 23
000708  93810100  seteq r3, r3, zero
00070c  93830300  seteq r7, r7, zero
000710  1b05f50f  andi r10, r10, 255
000714  1b08f80f  andi r16, r16, 255
000718  1b75f50f  setlti r10, r10, 255
00071c  1b78f80f  setlti r16, r16, 255
000720  97113500  or r3, r10, r3
000724  97137800  or r7, r16, r7
000728  97813300  and r3, r7, r3
00072c  b7860102  beq r3, zero, 1440
000730  6348aff8  loadli.w r16,  -940(r30)
000734  bb960b02  bneq r23, zero, 1444
000738  37a00000  beq r1, zero, 8
00073c  9f800b00  addli r1, r23, 0
000740  93618006  setle.f r3, zero, r8
000744  93630406  setle.f r7, r8, zero
000748  9f8b0000  addli r23, r1, 0
00074c  97813300  and r3, r7, r3
000750  3ba00100  bneq r3, zero, 8
000754  9f0b0400  addli r23, r8, 0
000758  93614b05  setlt.f r3, r22, r20
00075c  9f000a00  addli r1, r20, 0
000760  3ba00100  bneq r3, zero, 8
000764  9f000b00  addli r1, r22, 0
000768  9b319b00  slli r3, r22, 9
00076c  9b339a00  slli r7, r20, 9
000770  1b447b01  srli r8, r22, 23
000774  1b457a01  srli r10, r20, 23
000778  93810100  seteq r3, r3, zero
00077c  93830300  seteq r7, r7, zero
000780  1b04f40f  andi r8, r8, 255
000784  1b05f50f  andi r10, r10, 255
000788  1b74f40f  setlti r8, r8, 255
00078c  1b75f50f  setlti r10, r10, 255
000790  97113400  or r3, r8, r3
000794  97137500  or r7, r10, r7
000798  97813300  and r3, r7, r3
00079c  37a50102  beq r3, zero, 1352
0007a0  3b350a02  bneq r20, zero, 1356
0007a4  37200b00  beq r22, zero, 8
0007a8  1f0b0a00  addli r22, r20, 0
0007ac  93611006  setle.f r3, zero, r1
0007b0  93e30006  setle.f r7, r1, zero
0007b4  67479ff8  storeli.w r9, -908(r30)
0007b8  97813300  and r3, r7, r3
0007bc  3ba00100  bneq r3, zero, 8
0007c0  1f8b0000  addli r22, r1, 0
0007c4  e304aff8  loadli.w r9,  -944(r30)
0007c8  93e19d04  setlt.f r3, r27, r9
0007cc  9f800400  addli r1, r9, 0
0007d0  3ba00100  bneq r3, zero, 8
0007d4  9f800d00  addli r1, r27, 0
0007d8  9bb19d00  slli r3, r27, 9
0007dc  9bb39400  slli r7, r9, 9
0007e0  1bc47d01  srli r8, r27, 23
0007e4  1bc57401  srli r10, r9, 23
0007e8  93810100  seteq r3, r3, zero
0007ec  93830300  seteq r7, r7, zero
0007f0  1b04f40f  andi r8, r8, 255
0007f4  1b05f50f  andi r10, r10, 255
0007f8  1b74f40f  setlti r8, r8, 255
0007fc  1b75f50f  setlti r10, r10, 255
000800  97113400  or r3, r8, r3
000804  97137500  or r7, r10, r7
000808  97813300  and r3, r7, r3
00080c  b7b30102  beq r3, zero, 1260
000810  bbc30402  bneq r9, zero, 1264
000814  37a00d00  beq r27, zero, 8
000818  9f8d0400  addli r27, r9, 0
00081c  93611006  setle.f r3, zero, r1
000820  93e30006  setle.f r7, r1, zero
000824  1f8a0d00  addli r20, r27, 0
000828  97813300  and r3, r7, r3
00082c  3ba00100  bneq r3, zero, 8
000830  1f8a0000  addli r20, r1, 0
000834  e304fff8  loadli.w r9,  -904(r30)
000838  93619d04  setlt.f r3, r26, r9
00083c  9f800400  addli r1, r9, 0
000840  3ba00100  bneq r3, zero, 8
000844  9f000d00  addli r1, r26, 0
000848  9b319d00  slli r3, r26, 9
00084c  9bb39400  slli r7, r9, 9
000850  1b447d01  srli r8, r26, 23
000854  1bc57401  srli r10, r9, 23
000858  93810100  seteq r3, r3, zero
00085c  93830300  seteq r7, r7, zero
000860  1b04f40f  andi r8, r8, 255
000864  1b05f50f  andi r10, r10, 255
000868  1b74f40f  setlti r8, r8, 255
00086c  1b75f50f  setlti r10, r10, 255
000870  97113400  or r3, r8, r3
000874  97137500  or r7, r10, r7
000878  97813300  and r3, r7, r3
00087c  37c20102  beq r3, zero, 1168
000880  3bd20402  bneq r9, zero, 1172
000884  37200d00  beq r26, zero, 8
000888  1f8d0400  addli r26, r9, 0
00088c  93611006  setle.f r3, zero, r1
000890  93e30006  setle.f r7, r1, zero
000894  9f040d00  addli r9, r26, 0
000898  97813300  and r3, r7, r3
00089c  3ba00100  bneq r3, zero, 8
0008a0  9f840000  addli r9, r1, 0
0008a4  9361b204  setlt.f r3, r4, r11
0008a8  6b5d8f00  load.d r[27:28], 8(r30)
0008ac  9f800500  addli r1, r11, 0
0008b0  3ba00100  bneq r3, zero, 8
0008b4  9f000200  addli r1, r4, 0
0008b8  9b319200  slli r3, r4, 9
0008bc  9bb39500  slli r7, r11, 9
0008c0  1b447201  srli r8, r4, 23
0008c4  1bc57501  srli r10, r11, 23
0008c8  93810100  seteq r3, r3, zero
0008cc  93830300  seteq r7, r7, zero
0008d0  1b04f40f  andi r8, r8, 255
0008d4  1b05f50f  andi r10, r10, 255
0008d8  1b74f40f  setlti r8, r8, 255
0008dc  1b75f50f  setlti r10, r10, 255
0008e0  97113400  or r3, r8, r3
0008e4  97137500  or r7, r10, r7
0008e8  97813300  and r3, r7, r3
0008ec  b7d00102  beq r3, zero, 1076
0008f0  6345bff8  loadli.w r10,  -932(r30)
0008f4  bbe00502  bneq r11, zero, 1080
0008f8  37200200  beq r4, zero, 8
0008fc  1f820500  addli r4, r11, 0
000900  93611006  setle.f r3, zero, r1
000904  93e30006  setle.f r7, r1, zero
000908  9f050200  addli r11, r4, 0
00090c  97813300  and r3, r7, r3
000910  3ba00100  bneq r3, zero, 8
000914  9f850000  addli r11, r1, 0
000918  93e1a204  setlt.f r3, r5, r10
00091c  9f000500  addli r1, r10, 0
000920  3ba00100  bneq r3, zero, 8
000924  9f800200  addli r1, r5, 0
000928  9bb19200  slli r3, r5, 9
00092c  1b329500  slli r4, r10, 9
000930  9bc37201  srli r7, r5, 23
000934  1b447501  srli r8, r10, 23
000938  93810100  seteq r3, r3, zero
00093c  13020200  seteq r4, r4, zero
000940  9b83f30f  andi r7, r7, 255
000944  1b04f40f  andi r8, r8, 255
000948  9bf3f30f  setlti r7, r7, 255
00094c  1b74f40f  setlti r8, r8, 255
000950  97913300  or r3, r7, r3
000954  17124400  or r4, r8, r4
000958  97013200  and r3, r4, r3
00095c  37ff0100  beq r3, zero, 988
000960  bb0f0500  bneq r10, zero, 992
000964  37a00200  beq r5, zero, 8
000968  9f020500  addli r5, r10, 0
00096c  93611006  setle.f r3, zero, r1
000970  13e20006  setle.f r4, r1, zero
000974  1f840200  addli r8, r5, 0
000978  97013200  and r3, r4, r3
00097c  3ba00100  bneq r3, zero, 8
000980  1f840000  addli r8, r1, 0
000984  93611105  setlt.f r3, r2, r17
000988  6305bff8  loadli.w r10,  -936(r30)
00098c  9f800800  addli r1, r17, 0
000990  3ba00100  bneq r3, zero, 8
000994  9f000100  addli r1, r2, 0
000998  9b319100  slli r3, r2, 9
00099c  1bb29800  slli r4, r17, 9
0009a0  9b427101  srli r5, r2, 23
0009a4  9bc37801  srli r7, r17, 23
0009a8  93810100  seteq r3, r3, zero
0009ac  13020200  seteq r4, r4, zero
0009b0  9b82f20f  andi r5, r5, 255
0009b4  9b83f30f  andi r7, r7, 255
0009b8  9bf2f20f  setlti r5, r5, 255
0009bc  9bf3f30f  setlti r7, r7, 255
0009c0  97913200  or r3, r5, r3
0009c4  17924300  or r4, r7, r4
0009c8  97013200  and r3, r4, r3
0009cc  378e0100  beq r3, zero, 896
0009d0  e303cff8  loadli.w r7,  -928(r30)
0009d4  3b9e0800  bneq r17, zero, 900
0009d8  37200100  beq r2, zero, 8
0009dc  1f810800  addli r2, r17, 0
0009e0  93611006  setle.f r3, zero, r1
0009e4  13e20006  setle.f r4, r1, zero
0009e8  9f080100  addli r17, r2, 0
0009ec  97013200  and r3, r4, r3
0009f0  3ba00100  bneq r3, zero, 8
0009f4  9f880000  addli r17, r1, 0
0009f8  1361a304  setlt.f r2, r6, r10
0009fc  9f000500  addli r1, r10, 0
000a00  3b200100  bneq r2, zero, 8
000a04  9f000300  addli r1, r6, 0
000a08  1b319300  slli r2, r6, 9
000a0c  9b319500  slli r3, r10, 9
000a10  1b427301  srli r4, r6, 23
000a14  9b427501  srli r5, r10, 23
000a18  13010100  seteq r2, r2, zero
000a1c  93810100  seteq r3, r3, zero
000a20  1b02f20f  andi r4, r4, 255
000a24  9b82f20f  andi r5, r5, 255
000a28  1b72f20f  setlti r4, r4, 255
000a2c  9bf2f20f  setlti r5, r5, 255
000a30  17112200  or r2, r4, r2
000a34  97913200  or r3, r5, r3
000a38  17812100  and r2, r3, r2
000a3c  b72c0100  beq r2, zero, 808
000a40  bb3c0500  bneq r10, zero, 812
000a44  37200300  beq r6, zero, 8
000a48  1f030500  addli r6, r10, 0
000a4c  13611006  setle.f r2, zero, r1
000a50  93e10006  setle.f r3, r1, zero
000a54  1f050300  addli r10, r6, 0
000a58  17812100  and r2, r3, r2
000a5c  3b200100  bneq r2, zero, 8
000a60  1f850000  addli r10, r1, 0
000a64  13610c05  setlt.f r2, r24, r16
000a68  6303dff8  loadli.w r6,  -920(r30)
000a6c  9f000800  addli r1, r16, 0
000a70  3b200100  bneq r2, zero, 8
000a74  9f000c00  addli r1, r24, 0
000a78  1b319c00  slli r2, r24, 9
000a7c  9b319800  slli r3, r16, 9
000a80  1b427c01  srli r4, r24, 23
000a84  9b427801  srli r5, r16, 23
000a88  13010100  seteq r2, r2, zero
000a8c  93810100  seteq r3, r3, zero
000a90  1b02f20f  andi r4, r4, 255
000a94  9b82f20f  andi r5, r5, 255
000a98  1b72f20f  setlti r4, r4, 255
000a9c  9bf2f20f  setlti r5, r5, 255
000aa0  17112200  or r2, r4, r2
000aa4  97913200  or r3, r5, r3
000aa8  17812100  and r2, r3, r2
000aac  373b0100  beq r2, zero, 716
000ab0  3b4b0800  bneq r16, zero, 720
000ab4  37200c00  beq r24, zero, 8
000ab8  1f0c0800  addli r24, r16, 0
000abc  13611006  setle.f r2, zero, r1
000ac0  93e10006  setle.f r3, r1, zero
000ac4  1f080c00  addli r16, r24, 0
000ac8  17812100  and r2, r3, r2
000acc  3b200100  bneq r2, zero, 8
000ad0  1f880000  addli r16, r1, 0
000ad4  13616604  setlt.f r2, r12, r6
000ad8  9f000300  addli r1, r6, 0
000adc  3b200100  bneq r2, zero, 8
000ae0  9f000600  addli r1, r12, 0
000ae4  1b319600  slli r2, r12, 9
000ae8  9b319300  slli r3, r6, 9
000aec  1b427601  srli r4, r12, 23
000af0  9b427301  srli r5, r6, 23
000af4  13010100  seteq r2, r2, zero
000af8  93810100  seteq r3, r3, zero
000afc  1b02f20f  andi r4, r4, 255
000b00  9b82f20f  andi r5, r5, 255
000b04  1b72f20f  setlti r4, r4, 255
000b08  9bf2f20f  setlti r5, r5, 255
000b0c  17112200  or r2, r4, r2
000b10  97913200  or r3, r5, r3
000b14  17812100  and r2, r3, r2
000b18  b7590100  beq r2, zero, 628
000b1c  bb690300  bneq r6, zero, 632
000b20  6707cff9  storeli.w r28, -912(r30)
000b24  37200600  beq r12, zero, 8
000b28  1f060300  addli r12, r6, 0
000b2c  13611006  setle.f r2, zero, r1
000b30  93e10006  setle.f r3, r1, zero
000b34  1f0e0600  addli r28, r12, 0
000b38  17812100  and r2, r3, r2
000b3c  3b200100  bneq r2, zero, 8
000b40  1f8e0000  addli r28, r1, 0
000b44  6343cff8  loadli.w r6,  -924(r30)
000b48  63068ff8  loadli.w r12,  -960(r30)
000b4c  13e16c04  setlt.f r2, r25, r6
000b50  9f000300  addli r1, r6, 0
000b54  3b200100  bneq r2, zero, 8
000b58  9f800c00  addli r1, r25, 0
000b5c  1bb19c00  slli r2, r25, 9
000b60  9b319300  slli r3, r6, 9
000b64  1bc27c01  srli r4, r25, 23
000b68  9b427301  srli r5, r6, 23
000b6c  13010100  seteq r2, r2, zero
000b70  93810100  seteq r3, r3, zero
000b74  1b02f20f  andi r4, r4, 255
000b78  9b82f20f  andi r5, r5, 255
000b7c  1b72f20f  setlti r4, r4, 255
000b80  9bf2f20f  setlti r5, r5, 255
000b84  17112200  or r2, r4, r2
000b88  97913200  or r3, r5, r3
000b8c  17812100  and r2, r3, r2
000b90  37580100  beq r2, zero, 532
000b94  3b680300  bneq r6, zero, 536
000b98  37a00c00  beq r25, zero, 8
000b9c  9f0c0300  addli r25, r6, 0
000ba0  13611006  setle.f r2, zero, r1
000ba4  93e10006  setle.f r3, r1, zero
000ba8  1f830c00  addli r6, r25, 0
000bac  17812100  and r2, r3, r2
000bb0  3b200100  bneq r2, zero, 8
000bb4  1f830000  addli r6, r1, 0
000bb8  13617604  setlt.f r2, r12, r7
000bbc  9f800300  addli r1, r7, 0
000bc0  3b200100  bneq r2, zero, 8
000bc4  9f000600  addli r1, r12, 0
000bc8  1b319600  slli r2, r12, 9
000bcc  9bb19300  slli r3, r7, 9
000bd0  1b427601  srli r4, r12, 23
000bd4  9bc27301  srli r5, r7, 23
000bd8  13010100  seteq r2, r2, zero
000bdc  93810100  seteq r3, r3, zero
000be0  1b02f20f  andi r4, r4, 255
000be4  9b82f20f  andi r5, r5, 255
000be8  1b72f20f  setlti r4, r4, 255
000bec  9bf2f20f  setlti r5, r5, 255
000bf0  17112200  or r2, r4, r2
000bf4  97913200  or r3, r5, r3
000bf8  17812100  and r2, r3, r2
000bfc  b7760100  beq r2, zero, 444
000c00  3b870300  bneq r7, zero, 448
000c04  37200600  beq r12, zero, 8
000c08  1f860300  addli r12, r7, 0
000c0c  13611006  setle.f r2, zero, r1
000c10  93e10006  setle.f r3, r1, zero
000c14  17812100  and r2, r3, r2
000c18  3b200100  bneq r2, zero, 8
000c1c  1f860000  addli r12, r1, 0
000c20  e3438ff8  loadli.w r7,  -956(r30)
000c24  9f800600  addli r1, r13, 0
000c28  13e1d304  setlt.f r2, r7, r13
000c2c  3b200100  bneq r2, zero, 8
000c30  9f800300  addli r1, r7, 0
000c34  1bb19300  slli r2, r7, 9
000c38  9bb19600  slli r3, r13, 9
000c3c  1bc27301  srli r4, r7, 23
000c40  9bc27601  srli r5, r13, 23
000c44  13010100  seteq r2, r2, zero
000c48  93810100  seteq r3, r3, zero
000c4c  1b02f20f  andi r4, r4, 255
000c50  9b82f20f  andi r5, r5, 255
000c54  1b72f20f  setlti r4, r4, 255
000c58  9bf2f20f  setlti r5, r5, 255
000c5c  17112200  or r2, r4, r2
000c60  97913200  or r3, r5, r3
000c64  17812100  and r2, r3, r2
000c68  b7150100  beq r2, zero, 356
000c6c  bba50600  bneq r13, zero, 360
000c70  37a00300  beq r7, zero, 8
000c74  9f830600  addli r7, r13, 0
000c78  13611006  setle.f r2, zero, r1
000c7c  93e10006  setle.f r3, r1, zero
000c80  9f860300  addli r13, r7, 0
000c84  17812100  and r2, r3, r2
000c88  bb1101fc  bneq r2, zero, -1948
000c8c  9f860000  addli r13, r1, 0
000c90  db0bffff  j -1956
000c94  2b08c07f  lui r16, 523264
000c98  1f8a0400  addli r20, r9, 0
000c9c  b7460efc  beq r28, zero, -1616
000ca0  1f0e0800  addli r28, r16, 0
000ca4  e344eff8  loadli.w r9,  -908(r30)
000ca8  bb3605fc  bneq r10, zero, -1620
000cac  db35ffff  j -1620
000cb0  2b05c07f  lui r10, 523264
000cb4  9f880b00  addli r17, r23, 0
000cb8  37a804fc  beq r9, zero, -1528
000cbc  9f040500  addli r9, r10, 0
000cc0  9f8b0500  addli r23, r11, 0
000cc4  3b1804fc  bneq r8, zero, -1532
000cc8  db40ffff  j -1532
000ccc  2b04c07f  lui r8, 523264
000cd0  6348aff8  loadli.w r16,  -940(r30)
000cd4  b7990bfc  beq r23, zero, -1436
000cd8  9f0b0400  addli r23, r8, 0
000cdc  bb8900fc  bneq r1, zero, -1440
000ce0  5b4cffff  j -1440
000ce4  ab00c07f  lui r1, 523264
000ce8  b77a0afc  beq r20, zero, -1348
000cec  1f8a0000  addli r20, r1, 0
000cf0  bb6a0bfc  bneq r22, zero, -1352
000cf4  5b57ffff  j -1352
000cf8  ab00c07f  lui r1, 523264
000cfc  37ec04fc  beq r9, zero, -1256
000d00  9f840000  addli r9, r1, 0
000d04  3bdc0dfc  bneq r27, zero, -1260
000d08  db62ffff  j -1260
000d0c  ab00c07f  lui r1, 523264
000d10  b7dd04fc  beq r9, zero, -1164
000d14  9f840000  addli r9, r1, 0
000d18  bb4d0dfc  bneq r26, zero, -1168
000d1c  5b6effff  j -1168
000d20  ab00c07f  lui r1, 523264
000d24  6345bff8  loadli.w r10,  -932(r30)
000d28  37cf05fc  beq r11, zero, -1072
000d2c  9f850000  addli r11, r1, 0
000d30  3b3f02fc  bneq r4, zero, -1076
000d34  db79ffff  j -1076
000d38  ab00c07f  lui r1, 523264
000d3c  b72005fe  beq r10, zero, -984
000d40  1f850000  addli r10, r1, 0
000d44  bb9002fe  bneq r5, zero, -988
000d48  db84ffff  j -988
000d4c  ab00c07f  lui r1, 523264
000d50  e303cff8  loadli.w r7,  -928(r30)
000d54  379208fe  beq r17, zero, -892
000d58  9f880000  addli r17, r1, 0
000d5c  3b0201fe  bneq r2, zero, -896
000d60  5b90ffff  j -896
000d64  ab00c07f  lui r1, 523264
000d68  377305fe  beq r10, zero, -804
000d6c  1f850000  addli r10, r1, 0
000d70  3b6303fe  bneq r6, zero, -808
000d74  5b9bffff  j -808
000d78  ab00c07f  lui r1, 523264
000d7c  b76408fe  beq r16, zero, -712
000d80  1f880000  addli r16, r1, 0
000d84  bb540cfe  bneq r24, zero, -716
000d88  dba6ffff  j -716
000d8c  ab00c07f  lui r1, 523264
000d90  374603fe  beq r6, zero, -624
000d94  1f830000  addli r6, r1, 0
000d98  6707cff9  storeli.w r28, -912(r30)
000d9c  3b3606fe  bneq r12, zero, -628
000da0  dbb1ffff  j -628
000da4  ab00c07f  lui r1, 523264
000da8  b74703fe  beq r6, zero, -528
000dac  1f830000  addli r6, r1, 0
000db0  bbb70cfe  bneq r25, zero, -532
000db4  dbbdffff  j -532
000db8  ab00c07f  lui r1, 523264
000dbc  37a903fe  beq r7, zero, -440
000dc0  9f830000  addli r7, r1, 0
000dc4  3b1906fe  bneq r12, zero, -444
000dc8  dbc8ffff  j -444
000dcc  ab00c07f  lui r1, 523264
000dd0  b78a06fe  beq r13, zero, -352
000dd4  9f860000  addli r13, r1, 0
000dd8  3bfa03fe  bneq r7, zero, -356
000ddc  dbd3ffff  j -356
000de0  e300eff8  loadli.w r1,  -912(r30)
000de4  13611a04  setlt.f r2, r20, r1
000de8  3b200100  bneq r2, zero, 8
000dec  9f000a00  addli r1, r20, 0
000df0  e302eff8  loadli.w r5,  -912(r30)
000df4  1b319a00  slli r2, r20, 9
000df8  1b427a01  srli r4, r20, 23
000dfc  9f830500  addli r7, r11, 0
000e00  13010100  seteq r2, r2, zero
000e04  1b02f20f  andi r4, r4, 255
000e08  9bb19200  slli r3, r5, 9
000e0c  9bc27201  srli r5, r5, 23
000e10  1b72f20f  setlti r4, r4, 255
000e14  93810100  seteq r3, r3, zero
000e18  9b82f20f  andi r5, r5, 255
000e1c  9bf2f20f  setlti r5, r5, 255
000e20  17112200  or r2, r4, r2
000e24  97913200  or r3, r5, r3
000e28  17812100  and r2, r3, r2
000e2c  3b200100  bneq r2, zero, 8
000e30  ab00c07f  lui r1, 523264
000e34  6301eff8  loadli.w r2,  -912(r30)
000e38  9f850b00  addli r11, r23, 0
000e3c  9f040a00  addli r9, r20, 0
000e40  e7061ff9  storeli.w r17, -920(r30)
000e44  37200100  beq r2, zero, 8
000e48  67071ff8  storeli.w r1, -912(r30)
000e4c  e3484f00  loadli.w r17,  36(r30)
000e50  630a5f00  loadli.w r20,  40(r30)
000e54  e30c7ff8  loadli.w r25,  -968(r30)
000e58  eb5b0f01  load.d r[24:25], 16(r30)
000e5c  37a00400  beq r9, zero, 8
000e60  e304eff8  loadli.w r9,  -912(r30)
000e64  13611006  setle.f r2, zero, r1
000e68  93e10006  setle.f r3, r1, zero
000e6c  17812100  and r2, r3, r2
000e70  3b200100  bneq r2, zero, 8
000e74  9f840000  addli r9, r1, 0
000e78  9f800500  addli r1, r11, 0
000e7c  1f820300  addli r4, r7, 0
000e80  13611204  setlt.f r2, r4, r1
000e84  3b200100  bneq r2, zero, 8
000e88  9f000200  addli r1, r4, 0
000e8c  9f820500  addli r5, r11, 0
000e90  1b319200  slli r2, r4, 9
000e94  1b427201  srli r4, r4, 23
000e98  9bb19200  slli r3, r5, 9
000e9c  13010100  seteq r2, r2, zero
000ea0  9bc27201  srli r5, r5, 23
000ea4  1b02f20f  andi r4, r4, 255
000ea8  93810100  seteq r3, r3, zero
000eac  9b82f20f  andi r5, r5, 255
000eb0  1b72f20f  setlti r4, r4, 255
000eb4  9bf2f20f  setlti r5, r5, 255
000eb8  17112200  or r2, r4, r2
000ebc  97913200  or r3, r5, r3
000ec0  17812100  and r2, r3, r2
000ec4  b7230104  beq r2, zero, 2280
000ec8  bbb30504  bneq r11, zero, 2284
000ecc  37a00300  beq r7, zero, 8
000ed0  9f830500  addli r7, r11, 0
000ed4  13611006  setle.f r2, zero, r1
000ed8  93e10006  setle.f r3, r1, zero
000edc  9f850300  addli r11, r7, 0
000ee0  17812100  and r2, r3, r2
000ee4  3b200100  bneq r2, zero, 8
000ee8  9f850000  addli r11, r1, 0
000eec  6302fff8  loadli.w r4,  -904(r30)
000ef0  e340eff8  loadli.w r1,  -908(r30)
000ef4  13611204  setlt.f r2, r4, r1
000ef8  3b200100  bneq r2, zero, 8
000efc  9f000200  addli r1, r4, 0
000f00  e342eff8  loadli.w r5,  -908(r30)
000f04  1b319200  slli r2, r4, 9
000f08  1b427201  srli r4, r4, 23
000f0c  13010100  seteq r2, r2, zero
000f10  1b02f20f  andi r4, r4, 255
000f14  9bb19200  slli r3, r5, 9
000f18  9bc27201  srli r5, r5, 23
000f1c  1b72f20f  setlti r4, r4, 255
000f20  93810100  seteq r3, r3, zero
000f24  9b82f20f  andi r5, r5, 255
000f28  9bf2f20f  setlti r5, r5, 255
000f2c  17112200  or r2, r4, r2
000f30  97913200  or r3, r5, r3
000f34  17812100  and r2, r3, r2
000f38  37220104  beq r2, zero, 2184
000f3c  6341eff8  loadli.w r2,  -908(r30)
000f40  3b320104  bneq r2, zero, 2188
000f44  6301fff8  loadli.w r2,  -904(r30)
000f48  37300100  beq r2, zero, 12
000f4c  6341eff8  loadli.w r2,  -908(r30)
000f50  e7072ff8  storeli.w r2, -904(r30)
000f54  13611006  setle.f r2, zero, r1
000f58  93e10006  setle.f r3, r1, zero
000f5c  17812100  and r2, r3, r2
000f60  3b200100  bneq r2, zero, 8
000f64  e7071ff8  storeli.w r1, -904(r30)
000f68  e340fff8  loadli.w r1,  -900(r30)
000f6c  1f020b00  addli r4, r22, 0
000f70  13611204  setlt.f r2, r4, r1
000f74  3b200100  bneq r2, zero, 8
000f78  9f000200  addli r1, r4, 0
000f7c  e342fff8  loadli.w r5,  -900(r30)
000f80  1b319200  slli r2, r4, 9
000f84  1b427201  srli r4, r4, 23
000f88  13010100  seteq r2, r2, zero
000f8c  1b02f20f  andi r4, r4, 255
000f90  9bb19200  slli r3, r5, 9
000f94  9bc27201  srli r5, r5, 23
000f98  1b72f20f  setlti r4, r4, 255
000f9c  93810100  seteq r3, r3, zero
000fa0  9b82f20f  andi r5, r5, 255
000fa4  9bf2f20f  setlti r5, r5, 255
000fa8  17112200  or r2, r4, r2
000fac  97913200  or r3, r5, r3
000fb0  17812100  and r2, r3, r2
000fb4  b7200104  beq r2, zero, 2088
000fb8  6341fff8  loadli.w r2,  -900(r30)
000fbc  bb300104  bneq r2, zero, 2092
000fc0  37200b00  beq r22, zero, 8
000fc4  634bfff8  loadli.w r22,  -900(r30)
000fc8  13611006  setle.f r2, zero, r1
000fcc  93e10006  setle.f r3, r1, zero
000fd0  17812100  and r2, r3, r2
000fd4  3b200100  bneq r2, zero, 8
000fd8  1f8b0000  addli r22, r1, 0
000fdc  e300fff8  loadli.w r1,  -904(r30)
000fe0  9f020b00  addli r5, r22, 0
000fe4  13e11204  setlt.f r2, r5, r1
000fe8  3b200100  bneq r2, zero, 8
000fec  9f800200  addli r1, r5, 0
000ff0  6302fff8  loadli.w r4,  -904(r30)
000ff4  9bb19200  slli r3, r5, 9
000ff8  9bc27201  srli r5, r5, 23
000ffc  93810100  seteq r3, r3, zero
001000  9b82f20f  andi r5, r5, 255
001004  1b319200  slli r2, r4, 9
001008  1b427201  srli r4, r4, 23
00100c  9bf2f20f  setlti r5, r5, 255
001010  13010100  seteq r2, r2, zero
001014  1b02f20f  andi r4, r4, 255
001018  1b72f20f  setlti r4, r4, 255
00101c  97913200  or r3, r5, r3
001020  17112200  or r2, r4, r2
001024  17013100  and r2, r2, r3
001028  373f0102  beq r2, zero, 1996
00102c  6301fff8  loadli.w r2,  -904(r30)
001030  3b4f0102  bneq r2, zero, 2000
001034  37200b00  beq r22, zero, 8
001038  630bfff8  loadli.w r22,  -904(r30)
00103c  13611006  setle.f r2, zero, r1
001040  93e10006  setle.f r3, r1, zero
001044  17812100  and r2, r3, r2
001048  3b200100  bneq r2, zero, 8
00104c  1f8b0000  addli r22, r1, 0
001050  9f800400  addli r1, r9, 0
001054  13e11504  setlt.f r2, r11, r1
001058  3b200100  bneq r2, zero, 8
00105c  9f800500  addli r1, r11, 0
001060  1f820400  addli r4, r9, 0
001064  9bb19500  slli r3, r11, 9
001068  9bc27501  srli r5, r11, 23
00106c  1b319200  slli r2, r4, 9
001070  93810100  seteq r3, r3, zero
001074  1b427201  srli r4, r4, 23
001078  9b82f20f  andi r5, r5, 255
00107c  13010100  seteq r2, r2, zero
001080  1b02f20f  andi r4, r4, 255
001084  9bf2f20f  setlti r5, r5, 255
001088  1b72f20f  setlti r4, r4, 255
00108c  97913200  or r3, r5, r3
001090  17112200  or r2, r4, r2
001094  17013100  and r2, r2, r3
001098  b75d0102  beq r2, zero, 1908
00109c  bbed0402  bneq r9, zero, 1912
0010a0  37a00500  beq r11, zero, 8
0010a4  9f850400  addli r11, r9, 0
0010a8  13611006  setle.f r2, zero, r1
0010ac  93e10006  setle.f r3, r1, zero
0010b0  17812100  and r2, r3, r2
0010b4  3b200100  bneq r2, zero, 8
0010b8  9f850000  addli r11, r1, 0
0010bc  9f000b00  addli r1, r22, 0
0010c0  13e11504  setlt.f r2, r11, r1
0010c4  3b200100  bneq r2, zero, 8
0010c8  9f800500  addli r1, r11, 0
0010cc  1f020b00  addli r4, r22, 0
0010d0  9bb19500  slli r3, r11, 9
0010d4  9bc27501  srli r5, r11, 23
0010d8  1b319200  slli r2, r4, 9
0010dc  93810100  seteq r3, r3, zero
0010e0  1b427201  srli r4, r4, 23
0010e4  9b82f20f  andi r5, r5, 255
0010e8  13010100  seteq r2, r2, zero
0010ec  1b02f20f  andi r4, r4, 255
0010f0  9bf2f20f  setlti r5, r5, 255
0010f4  1b72f20f  setlti r4, r4, 255
0010f8  97913200  or r3, r5, r3
0010fc  17112200  or r2, r4, r2
001100  17013100  and r2, r2, r3
001104  377c0102  beq r2, zero, 1820
001108  bb0c0b02  bneq r22, zero, 1824
00110c  37a00500  beq r11, zero, 8
001110  9f050b00  addli r11, r22, 0
001114  13611006  setle.f r2, zero, r1
001118  93e10006  setle.f r3, r1, zero
00111c  17812100  and r2, r3, r2
001120  3b200100  bneq r2, zero, 8
001124  9f850000  addli r11, r1, 0
001128  e300dff8  loadli.w r1,  -920(r30)
00112c  13611304  setlt.f r2, r6, r1
001130  3b200100  bneq r2, zero, 8
001134  9f000300  addli r1, r6, 0
001138  e302dff8  loadli.w r5,  -920(r30)
00113c  1b319300  slli r2, r6, 9
001140  1b427301  srli r4, r6, 23
001144  13010100  seteq r2, r2, zero
001148  1b02f20f  andi r4, r4, 255
00114c  9bb19200  slli r3, r5, 9
001150  9bc27201  srli r5, r5, 23
001154  1b72f20f  setlti r4, r4, 255
001158  93810100  seteq r3, r3, zero
00115c  9b82f20f  andi r5, r5, 255
001160  9bf2f20f  setlti r5, r5, 255
001164  17112200  or r2, r4, r2
001168  97913200  or r3, r5, r3
00116c  17812100  and r2, r3, r2
001170  371b0102  beq r2, zero, 1732
001174  6301dff8  loadli.w r2,  -920(r30)
001178  3b2b0102  bneq r2, zero, 1736
00117c  37200300  beq r6, zero, 8
001180  6303dff8  loadli.w r6,  -920(r30)
001184  13611006  setle.f r2, zero, r1
001188  93e10006  setle.f r3, r1, zero
00118c  17812100  and r2, r3, r2
001190  3b200100  bneq r2, zero, 8
001194  1f830000  addli r6, r1, 0
001198  13e10605  setlt.f r2, r13, r16
00119c  9f000800  addli r1, r16, 0
0011a0  3b200100  bneq r2, zero, 8
0011a4  9f800600  addli r1, r13, 0
0011a8  1bb19600  slli r2, r13, 9
0011ac  9b319800  slli r3, r16, 9
0011b0  1bc27601  srli r4, r13, 23
0011b4  9b427801  srli r5, r16, 23
0011b8  13010100  seteq r2, r2, zero
0011bc  93810100  seteq r3, r3, zero
0011c0  1b02f20f  andi r4, r4, 255
0011c4  9b82f20f  andi r5, r5, 255
0011c8  1b72f20f  setlti r4, r4, 255
0011cc  9bf2f20f  setlti r5, r5, 255
0011d0  17112200  or r2, r4, r2
0011d4  97913200  or r3, r5, r3
0011d8  17812100  and r2, r3, r2
0011dc  b7490102  beq r2, zero, 1648
0011e0  bb590802  bneq r16, zero, 1652
0011e4  37a00600  beq r13, zero, 8
0011e8  9f060800  addli r13, r16, 0
0011ec  13611006  setle.f r2, zero, r1
0011f0  93e10006  setle.f r3, r1, zero
0011f4  17812100  and r2, r3, r2
0011f8  3b200100  bneq r2, zero, 8
0011fc  9f860000  addli r13, r1, 0
001200  1361a604  setlt.f r2, r12, r10
001204  9f000500  addli r1, r10, 0
001208  3b200100  bneq r2, zero, 8
00120c  9f000600  addli r1, r12, 0
001210  1b319600  slli r2, r12, 9
001214  9b319500  slli r3, r10, 9
001218  1b427601  srli r4, r12, 23
00121c  9b427501  srli r5, r10, 23
001220  13010100  seteq r2, r2, zero
001224  93810100  seteq r3, r3, zero
001228  1b02f20f  andi r4, r4, 255
00122c  9b82f20f  andi r5, r5, 255
001230  1b72f20f  setlti r4, r4, 255
001234  9bf2f20f  setlti r5, r5, 255
001238  17112200  or r2, r4, r2
00123c  97913200  or r3, r5, r3
001240  17812100  and r2, r3, r2
001244  37780102  beq r2, zero, 1564
001248  bb080502  bneq r10, zero, 1568
00124c  37200600  beq r12, zero, 8
001250  1f060500  addli r12, r10, 0
001254  13611006  setle.f r2, zero, r1
001258  93e10006  setle.f r3, r1, zero
00125c  17812100  and r2, r3, r2
001260  3b200100  bneq r2, zero, 8
001264  1f860000  addli r12, r1, 0
001268  13618e04  setlt.f r2, r28, r8
00126c  9f000400  addli r1, r8, 0
001270  3b200100  bneq r2, zero, 8
001274  9f000e00  addli r1, r28, 0
001278  1b319e00  slli r2, r28, 9
00127c  9b319400  slli r3, r8, 9
001280  1b427e01  srli r4, r28, 23
001284  9b427401  srli r5, r8, 23
001288  13010100  seteq r2, r2, zero
00128c  93810100  seteq r3, r3, zero
001290  1b02f20f  andi r4, r4, 255
001294  9b82f20f  andi r5, r5, 255
001298  1b72f20f  setlti r4, r4, 255
00129c  9bf2f20f  setlti r5, r5, 255
0012a0  17112200  or r2, r4, r2
0012a4  97913200  or r3, r5, r3
0012a8  17812100  and r2, r3, r2
0012ac  37270102  beq r2, zero, 1480
0012b0  3b370402  bneq r8, zero, 1484
0012b4  37200e00  beq r28, zero, 8
0012b8  1f0e0400  addli r28, r8, 0
0012bc  13611006  setle.f r2, zero, r1
0012c0  93e10006  setle.f r3, r1, zero
0012c4  17812100  and r2, r3, r2
0012c8  3b200100  bneq r2, zero, 8
0012cc  1f8e0000  addli r28, r1, 0
0012d0  1361ce04  setlt.f r2, r28, r12
0012d4  9f000600  addli r1, r12, 0
0012d8  3b200100  bneq r2, zero, 8
0012dc  9f000e00  addli r1, r28, 0
0012e0  1b319600  slli r2, r12, 9
0012e4  9b319e00  slli r3, r28, 9
0012e8  1b427601  srli r4, r12, 23
0012ec  9b427e01  srli r5, r28, 23
0012f0  13010100  seteq r2, r2, zero
0012f4  93810100  seteq r3, r3, zero
0012f8  1b02f20f  andi r4, r4, 255
0012fc  9b82f20f  andi r5, r5, 255
001300  1b72f20f  setlti r4, r4, 255
001304  9bf2f20f  setlti r5, r5, 255
001308  17112200  or r2, r4, r2
00130c  97913200  or r3, r5, r3
001310  17013100  and r2, r2, r3
001314  b7550102  beq r2, zero, 1396
001318  bb650602  bneq r12, zero, 1400
00131c  37200e00  beq r28, zero, 8
001320  1f0e0600  addli r28, r12, 0
001324  13611006  setle.f r2, zero, r1
001328  93e10006  setle.f r3, r1, zero
00132c  17812100  and r2, r3, r2
001330  3b200100  bneq r2, zero, 8
001334  1f8e0000  addli r28, r1, 0
001338  13e16604  setlt.f r2, r13, r6
00133c  9f000300  addli r1, r6, 0
001340  3b200100  bneq r2, zero, 8
001344  9f800600  addli r1, r13, 0
001348  1b319300  slli r2, r6, 9
00134c  9bb19600  slli r3, r13, 9
001350  1b427301  srli r4, r6, 23
001354  9bc27601  srli r5, r13, 23
001358  13010100  seteq r2, r2, zero
00135c  93810100  seteq r3, r3, zero
001360  1b02f20f  andi r4, r4, 255
001364  9b82f20f  andi r5, r5, 255
001368  1b72f20f  setlti r4, r4, 255
00136c  9bf2f20f  setlti r5, r5, 255
001370  17112200  or r2, r4, r2
001374  97913200  or r3, r5, r3
001378  17013100  and r2, r2, r3
00137c  b7040102  beq r2, zero, 1312
001380  bb140302  bneq r6, zero, 1316
001384  37a00600  beq r13, zero, 8
001388  9f060300  addli r13, r6, 0
00138c  13611006  setle.f r2, zero, r1
001390  93e10006  setle.f r3, r1, zero
001394  17812100  and r2, r3, r2
001398  3b200100  bneq r2, zero, 8
00139c  9f860000  addli r13, r1, 0
0013a0  13e1c605  setlt.f r2, r13, r28
0013a4  9f000e00  addli r1, r28, 0
0013a8  3b200100  bneq r2, zero, 8
0013ac  9f800600  addli r1, r13, 0
0013b0  1b319e00  slli r2, r28, 9
0013b4  9bb19600  slli r3, r13, 9
0013b8  1b427e01  srli r4, r28, 23
0013bc  9bc27601  srli r5, r13, 23
0013c0  13010100  seteq r2, r2, zero
0013c4  93810100  seteq r3, r3, zero
0013c8  1b02f20f  andi r4, r4, 255
0013cc  9b82f20f  andi r5, r5, 255
0013d0  1b72f20f  setlti r4, r4, 255
0013d4  9bf2f20f  setlti r5, r5, 255
0013d8  17112200  or r2, r4, r2
0013dc  97913200  or r3, r5, r3
0013e0  17013100  and r2, r2, r3
0013e4  37330102  beq r2, zero, 1228
0013e8  3b430e02  bneq r28, zero, 1232
0013ec  37a00600  beq r13, zero, 8
0013f0  9f060e00  addli r13, r28, 0
0013f4  13611006  setle.f r2, zero, r1
0013f8  93e10006  setle.f r3, r1, zero
0013fc  17812100  and r2, r3, r2
001400  3b200100  bneq r2, zero, 8
001404  9f860000  addli r13, r1, 0
001408  634e4ff8  loadli.w r28,  -988(r30)
00140c  9f000000  addli r1, zero, 0
001410  5b020000  j 16
001414  9f801000  addli r1, r1, 8
001418  1f017000  addli r2, zero, 56
00141c  37d42000  beq r1, r2, 276
001420  0b111710  add.s r2, r14, r1
001424  1f820500  addli r4, r11, 0
001428  e3019101  loadli.w r3,  200(r2)
00142c  63419101  loadli.w r2,  204(r2)
001430  93e2b104  setlt.f r5, r3, r11
001434  3ba00200  bneq r5, zero, 8
001438  1f820100  addli r4, r3, 0
00143c  9bb29100  slli r5, r3, 9
001440  1bb39500  slli r6, r11, 9
001444  9bc37101  srli r7, r3, 23
001448  1bc47501  srli r8, r11, 23
00144c  93820200  seteq r5, r5, zero
001450  13030300  seteq r6, r6, zero
001454  9b83f30f  andi r7, r7, 255
001458  1b04f40f  andi r8, r8, 255
00145c  9bf3f30f  setlti r7, r7, 255
001460  1b74f40f  setlti r8, r8, 255
001464  97925300  or r5, r7, r5
001468  17136400  or r6, r8, r6
00146c  97025300  and r5, r6, r5
001470  37e20200  beq r5, zero, 152
001474  3bf20500  bneq r11, zero, 156
001478  37a00100  beq r3, zero, 8
00147c  9f810500  addli r3, r11, 0
001480  93624006  setle.f r5, zero, r4
001484  13630206  setle.f r6, r4, zero
001488  9f850100  addli r11, r3, 0
00148c  97025300  and r5, r6, r5
001490  3ba00200  bneq r5, zero, 8
001494  9f050200  addli r11, r4, 0
001498  1362d104  setlt.f r4, r2, r13
00149c  9f810600  addli r3, r13, 0
0014a0  3b200200  bneq r4, zero, 8
0014a4  9f010100  addli r3, r2, 0
0014a8  1b329100  slli r4, r2, 9
0014ac  9bb29600  slli r5, r13, 9
0014b0  1b437101  srli r6, r2, 23
0014b4  9bc37601  srli r7, r13, 23
0014b8  13020200  seteq r4, r4, zero
0014bc  93820200  seteq r5, r5, zero
0014c0  1b03f30f  andi r6, r6, 255
0014c4  9b83f30f  andi r7, r7, 255
0014c8  1b73f30f  setlti r6, r6, 255
0014cc  9bf3f30f  setlti r7, r7, 255
0014d0  17124300  or r4, r6, r4
0014d4  97925300  or r5, r7, r5
0014d8  17824200  and r4, r5, r4
0014dc  37010200  beq r4, zero, 64
0014e0  3b910600  bneq r13, zero, 68
0014e4  37200100  beq r2, zero, 8
0014e8  1f810600  addli r2, r13, 0
0014ec  13623006  setle.f r4, zero, r3
0014f0  93e20106  setle.f r5, r3, zero
0014f4  9f060100  addli r13, r2, 0
0014f8  17824200  and r4, r5, r4
0014fc  3b6c02fe  bneq r4, zero, -232
001500  9f860100  addli r13, r3, 0
001504  5be2ffff  j -240
001508  2b02c07f  lui r4, 523264
00150c  b7bd05fe  beq r11, zero, -148
001510  9f050200  addli r11, r4, 0
001514  bbad01fe  bneq r3, zero, -152
001518  5bedffff  j -152
00151c  ab01c07f  lui r3, 523264
001520  379f06fe  beq r13, zero, -60
001524  9f860100  addli r13, r3, 0
001528  3b0f01fe  bneq r2, zero, -64
00152c  5bf8ffff  j -64
001530  13e1b604  setlt.f r2, r13, r11
001534  9f800500  addli r1, r11, 0
001538  3b200100  bneq r2, zero, 8
00153c  9f800600  addli r1, r13, 0
001540  1bb19600  slli r2, r13, 9
001544  9bb19500  slli r3, r11, 9
001548  1bc27601  srli r4, r13, 23
00154c  9bc27501  srli r5, r11, 23
001550  13010100  seteq r2, r2, zero
001554  93810100  seteq r3, r3, zero
001558  1b02f20f  andi r4, r4, 255
00155c  9b82f20f  andi r5, r5, 255
001560  1b72f20f  setlti r4, r4, 255
001564  9bf2f20f  setlti r5, r5, 255
001568  17112200  or r2, r4, r2
00156c  97913200  or r3, r5, r3
001570  17812100  and r2, r3, r2
001574  374d0100  beq r2, zero, 848
001578  3bdd0500  bneq r11, zero, 852
00157c  37a00600  beq r13, zero, 8
001580  9f860500  addli r13, r11, 0
001584  13611006  setle.f r2, zero, r1
001588  93e10006  setle.f r3, r1, zero
00158c  17812100  and r2, r3, r2
001590  3b200100  bneq r2, zero, 8
001594  9f860000  addli r13, r1, 0
001598  9bb09600  slli r1, r13, 9
00159c  93e1d706  setle.f r3, r15, r13
0015a0  13e2f606  setle.f r4, r13, r15
0015a4  1bc17601  srli r2, r13, 23
0015a8  93820000  seteq r5, r1, zero
0015ac  1b01f10f  andi r2, r2, 255
0015b0  1b71f10f  setlti r2, r2, 255
0015b4  97013200  and r3, r4, r3
0015b8  17125100  or r4, r2, r5
0015bc  ab02803f  lui r5, 260096
0015c0  17834100  and r6, r3, r4
0015c4  2b02803f  lui r4, 260096
0015c8  3b400300  bneq r6, zero, 16
0015cc  63025ff8  loadli.w r4,  -984(r30)
0015d0  0b62d218  sub.f.rn r4, r4, r13
0015d4  0f020200  exp.f.rn r4, r4
0015d8  3b400300  bneq r6, zero, 16
0015dc  e3425ff8  loadli.w r5,  -980(r30)
0015e0  8be2d218  sub.f.rn r5, r5, r13
0015e4  8f820200  exp.f.rn r5, r5
0015e8  63436ff8  loadli.w r6,  -972(r30)
0015ec  0b624320  mul.f.rn r4, r6, r4
0015f0  63036ff8  loadli.w r6,  -976(r30)
0015f4  8b625320  mul.f.rn r5, r6, r5
0015f8  1f030000  addli r6, zero, 0
0015fc  5b040000  j 32
001600  8be3b320  mul.f.rn r7, r7, r11
001604  0b649420  mul.f.rn r8, r8, r9
001608  1f031300  addli r6, r6, 8
00160c  0b627210  add.f.rn r4, r4, r7
001610  8be28210  add.f.rn r5, r5, r8
001614  9f03f001  addli r7, zero, 248
001618  37417300  beq r6, r7, 80
00161c  93840000  seteq r9, r1, zero
001620  9f030ff9  addli r7, r30, -896
001624  0b186710  add.s r16, r14, r6
001628  ab05803f  lui r11, 260096
00162c  0b946310  add.s r8, r7, r6
001630  63451800  loadli.w r10,  12(r16)
001634  e3031400  loadli.w r7,  8(r8)
001638  63441400  loadli.w r8,  12(r8)
00163c  97149100  or r9, r2, r9
001640  17869100  and r12, r3, r9
001644  ab04803f  lui r9, 260096
001648  3b400600  bneq r12, zero, 16
00164c  e3051800  loadli.w r11,  8(r16)
001650  8be5d518  sub.f.rn r11, r11, r13
001654  8f850500  exp.f.rn r11, r11
001658  bb2e06fe  bneq r12, zero, -88
00165c  8b64d518  sub.f.rn r9, r10, r13
001660  8f840400  exp.f.rn r9, r9
001664  dbf3ffff  j -100
001668  8b605210  add.f.rn r1, r4, r5
00166c  2b01803f  lui r2, 260096
001670  9f010fff  addli r3, r30, -128
001674  1f020000  addli r4, zero, 0
001678  9fa10100  addli r3, r3, 2
00167c  8f001118  div.f.rn r1, r2, r1
001680  1f210900  addli r2, r18, 2
001684  9f020000  addli r5, zero, 0
001688  0b135910  add.s r6, r18, r5
00168c  9fc20200  addli r5, r5, 4
001690  73100300  store.h zero, 0(r6)
001694  73110300  store.h zero, 2(r6)
001698  00a00000  mfence { lm }
00169c  bbbf32ff  bneq r5, r19, -20
0016a0  e342dff8  loadli.w r5,  -916(r30)
0016a4  9f130000  addli r7, zero, 1
0016a8  6b550f00  load.d r[11:12], 0(r30)
0016ac  ab0400f0  lui r9, 983040
0016b0  97949900  or r9, r19, r9
0016b4  97125200  or r5, r4, r5
0016b8  b3920228  sext_int2long r[6:7], r5
0016bc  97b37202  sll.d r[8:9], r[6:7], r7
0016c0  8b237510  add.ul r[8:9], r[11:12], r[8:9]
0016c4  9f050fff  addli r11, r30, -128
0016c8  ffa42301  l_gm2lm r9, r18, 0(r[8:9])
0016cc  9f030000  addli r7, zero, 0
0016d0  0b947510  add.s r8, r11, r7
0016d4  9fc30300  addli r7, r7, 4
0016d8  73100400  store.h zero, 0(r8)
0016dc  73110400  store.h zero, 2(r8)
0016e0  00a00000  mfence { lm }
0016e4  bbbf33ff  bneq r7, r19, -20
0016e8  33040228  zext_int2long r[9:10], r4
0016ec  1f150000  addli r10, zero, 1
0016f0  9f030000  addli r7, zero, 0
0016f4  1734a402  sll.d r[9:10], r[9:10], r10
0016f8  2b0500f0  lui r10, 983040
0016fc  0b248d10  add.ul r[9:10], r[27:28], r[9:10]
001700  1795a900  or r10, r19, r10
001704  7f25b400  l_gm2lm r10, r11, 0(r[9:10])
001708  1f840100  addli r8, r3, 0
00170c  9f040100  addli r9, r2, 0
001710  00a00000  mfence { lm }
001714  6bb5e4ff  load.hu r10, -2(r9)
001718  ebb50400  load.hu r11, 0(r9)
00171c  00a00000  mfence { lm }
001720  9fc40400  addli r9, r9, 4
001724  6b36e4ff  load.hu r12, -2(r8)
001728  6b380400  load.hu r16, 0(r8)
00172c  1f440400  addli r8, r8, 4
001730  33150518  bfloat2float.rn r10, r10
001734  b3950518  bfloat2float.rn r11, r11
001738  33160618  bfloat2float.rn r12, r12
00173c  33180818  bfloat2float.rn r16, r16
001740  0b65c510  add.f.rn r10, r10, r12
001744  8be50511  add.f.rn r11, r11, r16
001748  0b167710  add.s r12, r14, r7
00174c  9f831300  addli r7, r7, 8
001750  0b65d518  sub.f.rn r10, r10, r13
001754  8be5d518  sub.f.rn r11, r11, r13
001758  0f050500  exp.f.rn r10, r10
00175c  8f850500  exp.f.rn r11, r11
001760  0be5a020  mul.f.rn r10, r1, r10
001764  8be5b020  mul.f.rn r11, r1, r11
001768  6700a600  storeli.w r10, 0(r12)
00176c  6740b600  storeli.w r11, 4(r12)
001770  1f050002  addli r10, zero, 256
001774  00a00000  mfence { lm }
001778  3bfea3fe  bneq r7, r10, -100
00177c  1f04800f  addli r8, zero, 1984
001780  9f230000  addli r7, zero, 2
001784  97b27202  sll.d r[6:7], r[6:7], r7
001788  ab0300f0  lui r7, 983040
00178c  13048204  setlt.u r8, r4, r8
001790  1f028200  addli r4, r4, 64
001794  8ba25b10  add.ul r[6:7], r[24:25], r[6:7]
001798  97137500  or r7, r10, r7
00179c  ffb3e200  s_lm2gm r7, r14, 0(r[6:7])
0017a0  00a00000  mfence { lm }
0017a4  bb0b04fe  bneq r8, zero, -288
0017a8  db30fdff  j -5756
0017ac  ab00c07f  lui r1, 523264
0017b0  37fc05fa  beq r11, zero, -2276
0017b4  9f850000  addli r11, r1, 0
0017b8  3bec03fa  bneq r7, zero, -2280
0017bc  5be3feff  j -2280
0017c0  ab00c07f  lui r1, 523264
0017c4  6341eff8  loadli.w r2,  -908(r30)
0017c8  b77d01fa  beq r2, zero, -2180
0017cc  67471ff8  storeli.w r1, -908(r30)
0017d0  6301fff8  loadli.w r2,  -904(r30)
0017d4  bb6d01fa  bneq r2, zero, -2184
0017d8  dbeffeff  j -2180
0017dc  ab00c07f  lui r1, 523264
0017e0  6341fff8  loadli.w r2,  -900(r30)
0017e4  377f01fa  beq r2, zero, -2084
0017e8  e7471ff8  storeli.w r1, -900(r30)
0017ec  3b6f0bfa  bneq r22, zero, -2088
0017f0  5bfbfeff  j -2088
0017f4  ab00c07f  lui r1, 523264
0017f8  6301fff8  loadli.w r2,  -904(r30)
0017fc  b76001fc  beq r2, zero, -1992
001800  e7071ff8  storeli.w r1, -904(r30)
001804  bb500bfc  bneq r22, zero, -1996
001808  db06ffff  j -1996
00180c  ab00c07f  lui r1, 523264
001810  37c204fc  beq r9, zero, -1904
001814  9f840000  addli r9, r1, 0
001818  3bb205fc  bneq r11, zero, -1908
00181c  db11ffff  j -1908
001820  ab00c07f  lui r1, 523264
001824  b7230bfc  beq r22, zero, -1816
001828  1f8b0000  addli r22, r1, 0
00182c  bb9305fc  bneq r11, zero, -1820
001830  db1cffff  j -1820
001834  ab00c07f  lui r1, 523264
001838  6301dff8  loadli.w r2,  -920(r30)
00183c  370501fc  beq r2, zero, -1728
001840  e7061ff8  storeli.w r1, -920(r30)
001844  bb7403fc  bneq r6, zero, -1732
001848  db27ffff  j -1732
00184c  ab00c07f  lui r1, 523264
001850  375608fc  beq r16, zero, -1644
001854  1f880000  addli r16, r1, 0
001858  3bc606fc  bneq r13, zero, -1648
00185c  5b32ffff  j -1648
001860  ab00c07f  lui r1, 523264
001864  b72705fc  beq r10, zero, -1560
001868  1f850000  addli r10, r1, 0
00186c  bb1706fc  bneq r12, zero, -1564
001870  db3cffff  j -1564
001874  ab00c07f  lui r1, 523264
001878  b77804fc  beq r8, zero, -1476
00187c  1f840000  addli r8, r1, 0
001880  bb680efc  bneq r28, zero, -1480
001884  5b47ffff  j -1480
001888  ab00c07f  lui r1, 523264
00188c  374a06fc  beq r12, zero, -1392
001890  1f860000  addli r12, r1, 0
001894  3b3a0efc  bneq r28, zero, -1396
001898  db51ffff  j -1396
00189c  ab00c07f  lui r1, 523264
0018a0  b71b03fc  beq r6, zero, -1308
0018a4  1f830000  addli r6, r1, 0
0018a8  bb8b06fc  bneq r13, zero, -1312
0018ac  5b5cffff  j -1312
0018b0  ab00c07f  lui r1, 523264
0018b4  b76c0efc  beq r28, zero, -1224
0018b8  1f8e0000  addli r28, r1, 0
0018bc  bbdc06fc  bneq r13, zero, -1228
0018c0  db66ffff  j -1228
0018c4  ab00c07f  lui r1, 523264
0018c8  b7d205fe  beq r11, zero, -844
0018cc  9f850000  addli r11, r1, 0
0018d0  bbc206fe  bneq r13, zero, -848
0018d4  5b96ffff  j -848
0018d8  9f8ece07  addli sp, sp, 992
0018dc  00a00300  mfence { lm, sm, gm }
0018e0  00100000  exit
0018e4  00100000  exit
0018e8  00100000  exit
0018ec  00100000  exit
0018f0  00100000  exit
0018f4  00100000  exit
0018f8  00100000  exit
0018fc  00100000  exit
001900  00100000  exit
001904  00100000  exit
001908  00100000  exit
00190c  00100000  exit
001910  00100000  exit
001914  00100000  exit
001918  00100000  exit
00191c  00100000  exit
001920  00100000  exit
001924  00100000  exit
001928  00100000  exit
00192c  00100000  exit
001930  00100000  exit
001934  00100000  exit
001938  00100000  exit
00193c  00100000  exit
001940  00100000  exit
001944  00100000  exit
001948  00100000  exit
00194c  00100000  exit
001950  00100000  exit
001954  00100000  exit
001958  00100000  exit
00195c  00100000  exit
001960  00100000  exit
001964  00100000  exit
001968  00100000  exit
00196c  00100000  exit
001970  00100000  exit
001974  00100000  exit
001978  00100000  exit
00197c  00100000  exit
001980  00100000  exit
001984  00100000  exit
001988  00100000  exit
00198c  00100000  exit
001990  00100000  exit
001994  00100000  exit
001998  00100000  exit
00199c  00100000  exit
0019a0  00100000  exit
0019a4  00100000  exit
0019a8  00100000  exit
0019ac  00100000  exit
0019b0  00100000  exit
0019b4  00100000  exit
0019b8  00100000  exit
0019bc  00100000  exit
0019c0  00100000  exit
0019c4  00100000  exit
0019c8  00100000  exit
0019cc  00100000  exit
0019d0  00100000  exit
0019d4  00100000  exit
0019d8  00100000  exit
0019dc  00100000  exit
0019e0  00100000  exit
0019e4  00100000  exit
0019e8  00100000  exit
0019ec  00100000  exit
0019f0  00100000  exit
0019f4  00100000  exit
0019f8  00100000  exit
0019fc  00100000  exit
001a00  00100000  exit
001a04  00100000  exit
001a08  00100000  exit
001a0c  00100000  exit
001a10  00100000  exit
001a14  00100000  exit
001a18  00100000  exit
001a1c  00100000  exit
001a20  00100000  exit
001a24  00100000  exit
001a28  00100000  exit
001a2c  00100000  exit
001a30  00100000  exit
001a34  00100000  exit
001a38  00100000  exit
001a3c  00100000  exit
001a40  00100000  exit
001a44  00100000  exit
001a48  00100000  exit
001a4c  00100000  exit
001a50  00100000  exit
001a54  00100000  exit
001a58  00100000  exit
001a5c  00100000  exit
001a60  00100000  exit
001a64  00100000  exit
001a68  00100000  exit
001a6c  00100000  exit
001a70  00100000  exit
001a74  00100000  exit
001a78  00100000  exit
001a7c  00100000  exit
001a80  00100000  exit
001a84  00100000  exit
001a88  00100000  exit
001a8c  00100000  exit
001a90  00100000  exit
001a94  00100000  exit
001a98  00100000  exit
001a9c  00100000  exit
001aa0  00100000  exit
001aa4  00100000  exit
001aa8  00100000  exit
001aac  00100000  exit
001ab0  00100000  exit
001ab4  00100000  exit
001ab8  00100000  exit
001abc  00100000  exit
001ac0  00100000  exit
001ac4  00100000  exit
001ac8  00100000  exit
001acc  00100000  exit
001ad0  00100000  exit
001ad4  00100000  exit
001ad8  00100000  exit
001adc  00100000  exit
001ae0  00100000  exit
001ae4  00100000  exit
001ae8  00100000  exit
001aec  00100000  exit
001af0  00100000  exit
001af4  00100000  exit
001af8  00100000  exit
001afc  00100000  exit
001b00  00100000  exit
001b04  00100000  exit
001b08  00100000  exit
001b0c  00100000  exit
001b10  00100000  exit
001b14  00100000  exit
001b18  00100000  exit
001b1c  00100000  exit
001b20  00100000  exit
