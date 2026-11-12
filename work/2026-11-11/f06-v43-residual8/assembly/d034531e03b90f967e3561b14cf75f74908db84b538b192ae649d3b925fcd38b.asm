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
0000dc  9f8e8eff  addli sp, sp, -64
0000e0  1f8f0e00  addli r30, sp, 0
0000e4  805a0002  load_param_i r21, 0
0000e8  e3493f00  loadli.w r19,  28(r30)
0000ec  e3003f00  loadli.w r1,  24(r30)
0000f0  630a4f00  loadli.w r20,  32(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  cb205b01  ble.s r22, r21, 40
000100  80db0002  load_param_i r23, 1
000104  8b904a31  div.s r1, r21, r20
000108  6b510f00  load.d r[3:4], 0(r30)
00010c  6b528f00  load.d r[5:6], 8(r30)
000110  6b530f01  load.d r[7:8], 16(r30)
000114  0b943031  div.s r8, r1, r19
000118  d7250000  jal 300
00011c  8b9a7a11  add.s r21, r21, r23
000120  bf9f6aff  blt.s r21, r22, -28
000124  00a00300  mfence { lm, sm, gm }
000128  00100000  exit
00012c  9f8e0ecf  addli sp, sp, -6272
000130  67c5ee31  storeli.w r30, 6228(sp)
000134  1f8f0e31  addli r30, sp, 6272
000138  e7c73e31  storeli.w r19, 6268(sp)
00013c  e7874e31  storeli.w r20, 6264(sp)
000140  67c75e31  storeli.w r21, 6260(sp)
000144  67876e31  storeli.w r22, 6256(sp)
000148  e7c67e31  storeli.w r23, 6252(sp)
00014c  e7868e31  storeli.w r24, 6248(sp)
000150  67c69e31  storeli.w r25, 6244(sp)
000154  6786ae31  storeli.w r26, 6240(sp)
000158  e7c5be31  storeli.w r27, 6236(sp)
00015c  e785ce31  storeli.w r28, 6232(sp)
000160  6785fe31  storeli.w r31, 6224(sp)
000164  9f003fcf  addli r1, r30, -6248
000168  73b06000  store.d r[7:8], 0(r1)
00016c  00330002  core_id r6
000170  3b700300  bneq r6, zero, 28
000174  9f000020  addli r1, zero, 4096
000178  ab0300f0  lui r7, 983040
00017c  97907000  or r1, r1, r7
000180  ab030000  lui r7, 0
000184  9f830300  addli r7, r7, 0
000188  ff007200  l_gm2sm r1, r7, 0(r[5:6])
00018c  00520102  load_param_i r4, 2
000190  9f140000  addli r9, zero, 1
000194  9f050010  addli r11, zero, 2048
000198  ab0200f0  lui r5, 983040
00019c  1f058fdf  addli r10, r30, -4160
0001a0  0b138250  fmac.s r6, r4, r8
0001a4  97925500  or r5, r11, r5
0001a8  9b30a300  slli r1, r6, 10
0001ac  b3930028  sext_int2long r[8:9], r1
0001b0  97b39302  sll.d r[8:9], r[8:9], r9
0001b4  8b237110  add.ul r[8:9], r[3:4], r[8:9]
0001b8  ffa2a300  l_gm2lm r5, r10, 0(r[8:9])
0001bc  abf20000  lui r5, 15
0001c0  9f73f01f  addli r7, zero, 4095
0001c4  00a00200  mfence { lm, gm }
0001c8  9b92f2ff  ori r5, r5, 4095
0001cc  00200300  mfence { sm, gm }
0001d0  80a10204  csr_set csr3, r5
0001d4  00d00100  sync_group
0001d8  bfdd6300  blt.s r7, r6, 884
0001dc  9f020060  addli r5, zero, 12288
0001e0  1f038fcf  addli r6, r30, -6208
0001e4  2bf5ffff  lui r10, 1048575
0001e8  9f040000  addli r9, zero, 0
0001ec  1f07c003  addli r14, zero, 480
0001f0  2b080080  lui r16, 524288
0001f4  ab08803f  lui r17, 260096
0001f8  1f09e003  addli r18, zero, 496
0001fc  8b125220  mul.s r5, r4, r5
000200  2bf23f00  lui r4, 1023
000204  67495fce  storeli.w r5, -6252(r30)
000208  b3830228  zext_int2long r[8:9], r5
00020c  9f120000  addli r5, zero, 1
000210  97b35302  sll.d r[8:9], r[8:9], r5
000214  9b120302  ori r5, r6, 32
000218  e74b5fce  storeli.w r5, -6212(r30)
00021c  0b217110  add.ul r[3:4], r[3:4], r[8:9]
000220  9f021fcf  addli r5, r30, -6264
000224  73b02200  store.d r[3:4], 0(r5)
000228  1b11f2ff  ori r2, r4, 4095
00022c  67092fce  storeli.w r2, -6256(r30)
000230  1b1105fe  ori r2, r10, 4064
000234  e70b2fce  storeli.w r2, -6216(r30)
000238  1b1105ff  ori r2, r10, 4080
00023c  674b2fce  storeli.w r2, -6220(r30)
000240  63412fcf  loadli.w r2,  -6252(r30)
000244  b3930028  sext_int2long r[8:9], r1
000248  8b912010  add.s r3, r1, r2
00024c  63012fcf  loadli.w r2,  -6256(r30)
000250  e74a3fce  storeli.w r3, -6228(r30)
000254  bf503100  blt.s r2, r3, 52
000258  1f051fcf  addli r10, r30, -6264
00025c  1f110000  addli r2, zero, 1
000260  1ba21400  xori r4, r9, 1
000264  eb520500  load.d r[6:7], 0(r10)
000268  17b12302  sll.d r[3:4], r[8:9], r2
00026c  1b32b200  slli r4, r4, 11
000270  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
000274  ab0200f0  lui r5, 983040
000278  1f038fdf  addli r6, r30, -4160
00027c  0b124310  add.s r4, r6, r4
000280  97925500  or r5, r11, r5
000284  ff224100  l_gm2lm r5, r4, 0(r[3:4])
000288  8b90b038  mod.s r1, r1, r11
00028c  1f014fcf  addli r2, r30, -6240
000290  9f018fdf  addli r3, r30, -4160
000294  1f1d0000  addli r26, zero, 1
000298  670b9fce  storeli.w r9, -6224(r30)
00029c  73307100  store.d r[8:9], 0(r2)
0002a0  1bb1b400  slli r2, r9, 11
0002a4  0b9c2110  add.s r24, r3, r2
0002a8  2b010000  lui r2, 0
0002ac  9bb01000  slli r1, r1, 1
0002b0  1f010100  addli r2, r2, 0
0002b4  8b9c2010  add.s r25, r1, r2
0002b8  9f000000  addli r1, zero, 0
0002bc  9bb01000  slli r1, r1, 1
0002c0  63027fcf  loadli.w r4,  -6216(r30)
0002c4  1f018fcf  addli r2, r30, -6208
0002c8  8b1d1c10  add.s r27, r24, r1
0002cc  8b901c10  add.s r1, r25, r1
0002d0  9f810d00  addli r3, r27, 0
0002d4  4a800002  vloads.mz vr0{mr1}, 0(r1)
0002d8  c2800102  vload.mz vr1{mr1}, 0(r3)
0002dc  1f024200  addli r4, r4, 32
0002e0  1f038100  addli r6, r2, 64
0002e4  9f808000  addli r1, r1, 64
0002e8  9f818100  addli r3, r3, 64
0002ec  9302e204  setlt.u r5, r4, r14
0002f0  06b10000  vfp162float_l.rn vr2, vr1
0002f4  86f00000  vfp162float_h.rn vr1, vr1
0002f8  86310000  vfp162float_l.rn vr3, vr0
0002fc  06700000  vfp162float_h.rn vr0, vr0
000300  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000304  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000308  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
00030c  1f010101  addli r2, r2, 128
000310  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
000314  3b8f02fe  bneq r5, zero, -64
000318  00a00000  mfence { lm }
00031c  634e7fcf  loadli.w r28,  -6212(r30)
000320  e3476fcf  loadli.w r15,  -6220(r30)
000324  e300ceff  loadli.w r1,  -32(r28)
000328  6341ceff  loadli.w r2,  -28(r28)
00032c  e301deff  loadli.w r3,  -24(r28)
000330  634adeff  loadli.w r20,  -20(r28)
000334  e3450e00  loadli.w r11,  4(r28)
000338  e304feff  loadli.w r9,  -8(r28)
00033c  63040e00  loadli.w r8,  0(r28)
000340  630b2e00  loadli.w r22,  16(r28)
000344  63452e00  loadli.w r10,  20(r28)
000348  e3063e00  loadli.w r13,  24(r28)
00034c  e3493e00  loadli.w r19,  28(r28)
000350  9f872700  addli r15, r15, 16
000354  17a20001  xor r4, r1, r16
000358  97220101  xor r5, r2, r16
00035c  17a30101  xor r6, r3, r16
000360  0f020200  exp.f.rn r4, r4
000364  8f820200  exp.f.rn r5, r5
000368  0f030300  exp.f.rn r6, r6
00036c  8b631311  add.f.rn r7, r6, r17
000370  0b621211  add.f.rn r4, r4, r17
000374  8be21211  add.f.rn r5, r5, r17
000378  6303eeff  loadli.w r6,  -16(r28)
00037c  0f867118  div.f.rn r12, r3, r7
000380  97210301  xor r3, r6, r16
000384  e3431e00  loadli.w r7,  12(r28)
000388  0f824018  div.f.rn r4, r1, r4
00038c  8f005118  div.f.rn r1, r2, r5
000390  17210a01  xor r2, r20, r16
000394  e342feff  loadli.w r5,  -4(r28)
000398  0f010100  exp.f.rn r2, r2
00039c  8b6b1111  add.f.rn r23, r2, r17
0003a0  0f810100  exp.f.rn r2, r3
0003a4  8b6a1111  add.f.rn r21, r2, r17
0003a8  e3011e00  loadli.w r3,  8(r28)
0003ac  6341eeff  loadli.w r2,  -12(r28)
0003b0  e70ecefe  storeli.w r12, -24(r28)
0003b4  17a60401  xor r12, r9, r16
0003b8  670e4efe  storeli.w r4, -32(r28)
0003bc  17220101  xor r4, r2, r16
0003c0  674e1efe  storeli.w r1, -28(r28)
0003c4  8f007a19  div.f.rn r1, r20, r23
0003c8  97ab0501  xor r23, r11, r16
0003cc  17aa0201  xor r20, r5, r16
0003d0  0f060600  exp.f.rn r12, r12
0003d4  0f020200  exp.f.rn r4, r4
0003d8  8f8b0b00  exp.f.rn r23, r23
0003dc  0f035319  div.f.rn r6, r6, r21
0003e0  972a0401  xor r21, r8, r16
0003e4  0f0a0a00  exp.f.rn r20, r20
0003e8  0b661611  add.f.rn r12, r12, r17
0003ec  0b621211  add.f.rn r4, r4, r17
0003f0  8beb1b11  add.f.rn r23, r23, r17
0003f4  8f8a0a00  exp.f.rn r21, r21
0003f8  0b6a1a11  add.f.rn r20, r20, r17
0003fc  8bea1a11  add.f.rn r21, r21, r17
000400  e74e1efe  storeli.w r1, -20(r28)
000404  0f014118  div.f.rn r2, r2, r4
000408  8f807519  div.f.rn r1, r11, r23
00040c  0f82c418  div.f.rn r4, r9, r12
000410  8f824219  div.f.rn r5, r5, r20
000414  670f6efe  storeli.w r6, -16(r28)
000418  17a30601  xor r6, r13, r16
00041c  0f045419  div.f.rn r8, r8, r21
000420  0f030300  exp.f.rn r6, r6
000424  0b631311  add.f.rn r6, r6, r17
000428  674f2efe  storeli.w r2, -12(r28)
00042c  17a10101  xor r2, r3, r16
000430  67401e00  storeli.w r1, 4(r28)
000434  8f000100  exp.f.rn r1, r2
000438  e70f4efe  storeli.w r4, -8(r28)
00043c  17220b01  xor r4, r22, r16
000440  e74f5efe  storeli.w r5, -4(r28)
000444  97220501  xor r5, r10, r16
000448  8be01011  add.f.rn r1, r1, r17
00044c  17a10301  xor r2, r7, r16
000450  67008e00  storeli.w r8, 0(r28)
000454  17a40901  xor r8, r19, r16
000458  0f020200  exp.f.rn r4, r4
00045c  8f820200  exp.f.rn r5, r5
000460  0f010100  exp.f.rn r2, r2
000464  0f040400  exp.f.rn r8, r8
000468  0b621211  add.f.rn r4, r4, r17
00046c  8be21211  add.f.rn r5, r5, r17
000470  0b611111  add.f.rn r2, r2, r17
000474  0b641411  add.f.rn r8, r8, r17
000478  8f801118  div.f.rn r1, r3, r1
00047c  8f014b18  div.f.rn r3, r22, r4
000480  0f025518  div.f.rn r4, r10, r5
000484  8f826618  div.f.rn r5, r13, r6
000488  0f812318  div.f.rn r2, r7, r2
00048c  0f838918  div.f.rn r6, r19, r8
000490  e7001e00  storeli.w r1, 8(r28)
000494  93802705  setlt.u r1, r15, r18
000498  67013e00  storeli.w r3, 16(r28)
00049c  67414e00  storeli.w r4, 20(r28)
0004a0  e7015e00  storeli.w r5, 24(r28)
0004a4  e7402e00  storeli.w r2, 12(r28)
0004a8  e7416e00  storeli.w r6, 28(r28)
0004ac  1f0e8e00  addli r28, r28, 64
0004b0  bbd900fe  bneq r1, zero, -396
0004b4  2bf1ffff  lui r2, 1048575
0004b8  9f008fcf  addli r1, r30, -6208
0004bc  00a00000  mfence { lm }
0004c0  1b1101fe  ori r2, r2, 4064
0004c4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0004c8  9f818000  addli r3, r1, 64
0004cc  1f014100  addli r2, r2, 32
0004d0  9f800001  addli r1, r1, 128
0004d4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0004d8  9301e104  setlt.u r3, r2, r14
0004dc  06100000  vfloat2fp16_l.rn vr0, vr0
0004e0  06d00000  vfloat2fp16_h.rn vr0, vr1
0004e4  46800d02  vstore.mz vr0{mr1}, 0(r27)
0004e8  9f8d8d00  addli r27, r27, 64
0004ec  3bef01fe  bneq r3, zero, -40
0004f0  1b011d00  andi r2, r26, 1
0004f4  9f000004  addli r1, zero, 512
0004f8  1f0d0000  addli r26, zero, 0
0004fc  3b0701fe  bneq r2, zero, -576
000500  1f024fcf  addli r4, r30, -6240
000504  1f033fcf  addli r6, r30, -6248
000508  9f100000  addli r1, zero, 1
00050c  9f050010  addli r11, zero, 2048
000510  6b510200  load.d r[3:4], 0(r4)
000514  6b520300  load.d r[5:6], 0(r6)
000518  00a00000  mfence { lm }
00051c  97301102  sll.d r[2:3], r[3:4], r1
000520  ab0100f0  lui r3, 983040
000524  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000528  97913500  or r3, r11, r3
00052c  ffb18001  s_lm2gm r3, r24, 0(r[2:3])
000530  2b014000  lui r2, 1024
000534  00a00200  mfence { lm, gm }
000538  e3046fcf  loadli.w r9,  -6224(r30)
00053c  e3415fcf  loadli.w r3,  -6228(r30)
000540  9ba41400  xori r9, r9, 1
000544  9f800100  addli r1, r3, 0
000548  bfe321fe  blt.s r3, r2, -776
00054c  9f0e0fcf  addli sp, r30, -6272
000550  e38fae30  loadli.w r31,  6224(sp)
000554  63cfae30  loadli.w r30,  6228(sp)
000558  638ebe30  loadli.w r28,  6232(sp)
00055c  e3cdbe30  loadli.w r27,  6236(sp)
000560  638dce30  loadli.w r26,  6240(sp)
000564  e3ccce30  loadli.w r25,  6244(sp)
000568  638cde30  loadli.w r24,  6248(sp)
00056c  e3cbde30  loadli.w r23,  6252(sp)
000570  638bee30  loadli.w r22,  6256(sp)
000574  e3caee30  loadli.w r21,  6260(sp)
000578  638afe30  loadli.w r20,  6264(sp)
00057c  e3c9fe30  loadli.w r19,  6268(sp)
000580  9f8e0e31  addli sp, sp, 6272
000584  5f800f00  jr r31, 0
000588  00100000  exit
00058c  00100000  exit
000590  00100000  exit
000594  00100000  exit
000598  00100000  exit
00059c  00100000  exit
0005a0  00100000  exit
0005a4  00100000  exit
0005a8  00100000  exit
0005ac  00100000  exit
0005b0  00100000  exit
0005b4  00100000  exit
0005b8  00100000  exit
0005bc  00100000  exit
0005c0  00100000  exit
0005c4  00100000  exit
0005c8  00100000  exit
0005cc  00100000  exit
0005d0  00100000  exit
0005d4  00100000  exit
0005d8  00100000  exit
0005dc  00100000  exit
0005e0  00100000  exit
0005e4  00100000  exit
0005e8  00100000  exit
0005ec  00100000  exit
0005f0  00100000  exit
0005f4  00100000  exit
0005f8  00100000  exit
0005fc  00100000  exit
000600  00100000  exit
000604  00100000  exit
000608  00100000  exit
00060c  00100000  exit
000610  00100000  exit
000614  00100000  exit
000618  00100000  exit
00061c  00100000  exit
000620  00100000  exit
000624  00100000  exit
000628  00100000  exit
00062c  00100000  exit
000630  00100000  exit
000634  00100000  exit
000638  00100000  exit
00063c  00100000  exit
000640  00100000  exit
000644  00100000  exit
000648  00100000  exit
00064c  00100000  exit
000650  00100000  exit
000654  00100000  exit
000658  00100000  exit
00065c  00100000  exit
000660  00100000  exit
000664  00100000  exit
000668  00100000  exit
00066c  00100000  exit
000670  00100000  exit
000674  00100000  exit
000678  00100000  exit
00067c  00100000  exit
000680  00100000  exit
000684  00100000  exit
000688  00100000  exit
00068c  00100000  exit
000690  00100000  exit
000694  00100000  exit
000698  00100000  exit
00069c  00100000  exit
0006a0  00100000  exit
0006a4  00100000  exit
0006a8  00100000  exit
0006ac  00100000  exit
0006b0  00100000  exit
0006b4  00100000  exit
0006b8  00100000  exit
0006bc  00100000  exit
0006c0  00100000  exit
0006c4  00100000  exit
0006c8  00100000  exit
0006cc  00100000  exit
0006d0  00100000  exit
0006d4  00100000  exit
0006d8  00100000  exit
0006dc  00100000  exit
0006e0  00100000  exit
0006e4  00100000  exit
0006e8  00100000  exit
0006ec  00100000  exit
0006f0  00100000  exit
0006f4  00100000  exit
0006f8  00100000  exit
0006fc  00100000  exit
000700  00100000  exit
000704  00100000  exit
000708  00100000  exit
00070c  00100000  exit
000710  00100000  exit
000714  00100000  exit
000718  00100000  exit
00071c  00100000  exit
000720  00100000  exit
000724  00100000  exit
000728  00100000  exit
00072c  00100000  exit
000730  00100000  exit
000734  00100000  exit
000738  00100000  exit
00073c  00100000  exit
000740  00100000  exit
000744  00100000  exit
000748  00100000  exit
00074c  00100000  exit
000750  00100000  exit
000754  00100000  exit
000758  00100000  exit
00075c  00100000  exit
000760  00100000  exit
000764  00100000  exit
000768  00100000  exit
00076c  00100000  exit
000770  00100000  exit
000774  00100000  exit
000778  00100000  exit
00077c  00100000  exit
000780  00100000  exit
000784  00100000  exit
000788  00100000  exit
00078c  00100000  exit
000790  00100000  exit
000794  00100000  exit
000798  00100000  exit
00079c  00100000  exit
0007a0  00100000  exit
0007a4  00100000  exit
0007a8  00100000  exit
0007ac  00100000  exit
0007b0  00100000  exit
0007b4  00100000  exit
0007b8  00100000  exit
0007bc  00100000  exit
0007c0  00100000  exit
0007c4  00100000  exit
