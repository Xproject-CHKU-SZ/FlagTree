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
00012c  9f8e0edf  addli sp, sp, -4224
000130  67c5ee21  storeli.w r30, 4180(sp)
000134  1f8f0e21  addli r30, sp, 4224
000138  e7c73e21  storeli.w r19, 4220(sp)
00013c  e7874e21  storeli.w r20, 4216(sp)
000140  67c75e21  storeli.w r21, 4212(sp)
000144  67876e21  storeli.w r22, 4208(sp)
000148  e7c67e21  storeli.w r23, 4204(sp)
00014c  e7868e21  storeli.w r24, 4200(sp)
000150  67c69e21  storeli.w r25, 4196(sp)
000154  6786ae21  storeli.w r26, 4192(sp)
000158  e7c5be21  storeli.w r27, 4188(sp)
00015c  e785ce21  storeli.w r28, 4184(sp)
000160  6785fe21  storeli.w r31, 4176(sp)
000164  9f005fdf  addli r1, r30, -4184
000168  73b06000  store.d r[7:8], 0(r1)
00016c  00530102  load_param_i r6, 2
000170  80330002  core_id r7
000174  8b138350  fmac.s r7, r6, r8
000178  00340002  core_id r8
00017c  9bb09300  slli r1, r7, 9
000180  3b700400  bneq r8, zero, 28
000184  1f040020  addli r8, zero, 4096
000188  ab0400f0  lui r9, 983040
00018c  17149400  or r8, r8, r9
000190  ab040000  lui r9, 0
000194  9f840400  addli r9, r9, 0
000198  7f049200  l_gm2sm r8, r9, 0(r[5:6])
00019c  33920028  sext_int2long r[5:6], r1
0001a0  1f140000  addli r8, zero, 1
0001a4  9f041fdf  addli r9, r30, -4216
0001a8  17328202  sll.d r[5:6], r[5:6], r8
0001ac  73b02400  store.d r[3:4], 0(r9)
0001b0  1f040008  addli r8, zero, 1024
0001b4  0b214110  add.ul r[3:4], r[3:4], r[5:6]
0001b8  2b0200f0  lui r4, 983040
0001bc  9f028fef  addli r5, r30, -2112
0001c0  17124400  or r4, r8, r4
0001c4  7f225100  l_gm2lm r4, r5, 0(r[3:4])
0001c8  2bf10000  lui r2, 15
0001cc  9f71f03f  addli r3, zero, 8191
0001d0  00a00200  mfence { lm, gm }
0001d4  1b11f1ff  ori r2, r2, 4095
0001d8  00200300  mfence { sm, gm }
0001dc  80210104  csr_set csr3, r2
0001e0  00d00100  sync_group
0001e4  3f8f7102  blt.s r3, r7, 1984
0001e8  1f010030  addli r2, zero, 6144
0001ec  9f018fdf  addli r3, r30, -4160
0001f0  2b0b0000  lui r22, 0
0001f4  9f030000  addli r7, zero, 0
0001f8  1f040010  addli r8, zero, 2048
0001fc  1f08c003  addli r16, zero, 480
000200  2b090080  lui r18, 524288
000204  ab09803f  lui r19, 260096
000208  0b112320  mul.s r2, r6, r2
00020c  1f0b0b00  addli r22, r22, 0
000210  674a2fde  storeli.w r2, -4188(r30)
000214  1f810101  addli r2, r3, 128
000218  abf1ffff  lui r3, 1048575
00021c  670a2fde  storeli.w r2, -4192(r30)
000220  2bf13f00  lui r2, 1023
000224  1b11f1ff  ori r2, r2, 4095
000228  e7492fde  storeli.w r2, -4196(r30)
00022c  1b9101fe  ori r2, r3, 4064
000230  e7092fde  storeli.w r2, -4200(r30)
000234  1b9101fc  ori r2, r3, 4032
000238  67492fde  storeli.w r2, -4204(r30)
00023c  63414fdf  loadli.w r2,  -4188(r30)
000240  8b942010  add.s r9, r1, r2
000244  63413fdf  loadli.w r2,  -4196(r30)
000248  bf709100  blt.s r2, r9, 60
00024c  33910428  sext_int2long r[3:4], r9
000250  9f120000  addli r5, zero, 1
000254  1f051fdf  addli r10, r30, -4216
000258  1ba21300  xori r4, r7, 1
00025c  17315102  sll.d r[3:4], r[3:4], r5
000260  eb520500  load.d r[6:7], 0(r10)
000264  1b32a200  slli r4, r4, 10
000268  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
00026c  1f038fef  addli r6, r30, -2112
000270  ab0200f0  lui r5, 983040
000274  0b124310  add.s r4, r6, r4
000278  1f030008  addli r6, zero, 1024
00027c  97125300  or r5, r6, r5
000280  ff224100  l_gm2lm r5, r4, 0(r[3:4])
000284  1bb1a300  slli r2, r7, 10
000288  9f018fef  addli r3, r30, -2112
00028c  63023fdf  loadli.w r4,  -4200(r30)
000290  e70b9fde  storeli.w r9, -4168(r30)
000294  e74b7fde  storeli.w r7, -4164(r30)
000298  8b912110  add.s r3, r3, r2
00029c  1f018fdf  addli r2, r30, -4160
0002a0  674b3fde  storeli.w r3, -4172(r30)
0002a4  1f024200  addli r4, r4, 32
0002a8  c2800102  vload.mz vr1{mr1}, 0(r3)
0002ac  1f038100  addli r6, r2, 64
0002b0  9f818100  addli r3, r3, 64
0002b4  8b121210  add.s r5, r4, r1
0002b8  8b928238  mod.s r5, r5, r8
0002bc  06b10000  vfp162float_l.rn vr2, vr1
0002c0  86f00000  vfp162float_h.rn vr1, vr1
0002c4  9bb21200  slli r5, r5, 1
0002c8  8b926211  add.s r5, r5, r22
0002cc  4a800202  vloads.mz vr0{mr1}, 0(r5)
0002d0  93020205  setlt.u r5, r4, r16
0002d4  86310000  vfp162float_l.rn vr3, vr0
0002d8  06700000  vfp162float_h.rn vr0, vr0
0002dc  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0002e0  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
0002e4  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
0002e8  1f010101  addli r2, r2, 128
0002ec  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
0002f0  bbde02fe  bneq r5, zero, -76
0002f4  00a00000  mfence { lm }
0002f8  e30c4fdf  loadli.w r25,  -4192(r30)
0002fc  634d2fdf  loadli.w r26,  -4204(r30)
000300  63810cff  loadli.w r2,  -128(r25)
000304  e3c10cff  loadli.w r3,  -124(r25)
000308  e3831cff  loadli.w r7,  -120(r25)
00030c  63ce1cff  loadli.w r28,  -116(r25)
000310  e3ca2cff  loadli.w r21,  -108(r25)
000314  63863cff  loadli.w r12,  -104(r25)
000318  e3c63cff  loadli.w r13,  -100(r25)
00031c  e3c54cff  loadli.w r11,  -92(r25)
000320  63c75cff  loadli.w r14,  -84(r25)
000324  e3c86cff  loadli.w r17,  -76(r25)
000328  63cc7cff  loadli.w r24,  -68(r25)
00032c  63848cff  loadli.w r8,  -64(r25)
000330  63c58cff  loadli.w r10,  -60(r25)
000334  1f0d8d00  addli r26, r26, 64
000338  17222101  xor r4, r2, r18
00033c  97a22101  xor r5, r3, r18
000340  17a32301  xor r6, r7, r18
000344  0f020200  exp.f.rn r4, r4
000348  8f820200  exp.f.rn r5, r5
00034c  0b623211  add.f.rn r4, r4, r19
000350  8be23211  add.f.rn r5, r5, r19
000354  8f0d4118  div.f.rn r27, r2, r4
000358  8f8b5118  div.f.rn r23, r3, r5
00035c  0f010300  exp.f.rn r2, r6
000360  8b643111  add.f.rn r9, r2, r19
000364  97212e01  xor r3, r28, r18
000368  63832cff  loadli.w r6,  -112(r25)
00036c  63824cff  loadli.w r4,  -96(r25)
000370  e3827cff  loadli.w r5,  -72(r25)
000374  0f810100  exp.f.rn r2, r3
000378  8b673111  add.f.rn r15, r2, r19
00037c  e3815cff  loadli.w r3,  -88(r25)
000380  63816cff  loadli.w r2,  -80(r25)
000384  8f849318  div.f.rn r9, r7, r9
000388  97232301  xor r7, r6, r18
00038c  8f07fe18  div.f.rn r15, r28, r15
000390  67c87cff  storeli.w r23, -124(r25)
000394  8f830300  exp.f.rn r7, r7
000398  97ab2a01  xor r23, r21, r18
00039c  0bea3311  add.f.rn r20, r7, r19
0003a0  6788bcff  storeli.w r27, -128(r25)
0003a4  e38d9cff  loadli.w r27,  -56(r25)
0003a8  638eacff  loadli.w r28,  -48(r25)
0003ac  8f830b00  exp.f.rn r7, r23
0003b0  8beb3311  add.f.rn r23, r7, r19
0003b4  e3c39cff  loadli.w r7,  -52(r25)
0003b8  e7889cfe  storeli.w r9, -120(r25)
0003bc  8f044319  div.f.rn r9, r6, r20
0003c0  17232601  xor r6, r12, r18
0003c4  17aa2601  xor r20, r13, r18
0003c8  e7c8fcfe  storeli.w r15, -116(r25)
0003cc  8f877a19  div.f.rn r15, r21, r23
0003d0  0f030300  exp.f.rn r6, r6
0003d4  8b6b3311  add.f.rn r23, r6, r19
0003d8  e38abcff  loadli.w r21,  -40(r25)
0003dc  0f030a00  exp.f.rn r6, r20
0003e0  0b6a3311  add.f.rn r20, r6, r19
0003e4  63c3acff  loadli.w r6,  -44(r25)
0003e8  67899cfe  storeli.w r9, -112(r25)
0003ec  8f047619  div.f.rn r9, r12, r23
0003f0  17262201  xor r12, r4, r18
0003f4  67c9fcfe  storeli.w r15, -108(r25)
0003f8  8f874619  div.f.rn r15, r13, r20
0003fc  0f060600  exp.f.rn r12, r12
000400  0b6a3611  add.f.rn r20, r12, r19
000404  97a62501  xor r13, r11, r18
000408  0f860600  exp.f.rn r12, r13
00040c  8b6b3611  add.f.rn r23, r12, r19
000410  e3c6bcff  loadli.w r13,  -36(r25)
000414  6386ccff  loadli.w r12,  -32(r25)
000418  e7899cfe  storeli.w r9, -104(r25)
00041c  97a42101  xor r9, r3, r18
000420  0f024219  div.f.rn r4, r4, r20
000424  8f840400  exp.f.rn r9, r9
000428  e7c9fcfe  storeli.w r15, -100(r25)
00042c  8f877519  div.f.rn r15, r11, r23
000430  97252701  xor r11, r14, r18
000434  8be43411  add.f.rn r9, r9, r19
000438  8f850500  exp.f.rn r11, r11
00043c  0bea3511  add.f.rn r20, r11, r19
000440  e3c5ccff  loadli.w r11,  -28(r25)
000444  678a4cfe  storeli.w r4, -96(r25)
000448  6382dcff  loadli.w r4,  -24(r25)
00044c  8f819118  div.f.rn r3, r3, r9
000450  97242101  xor r9, r2, r18
000454  67cafcfe  storeli.w r15, -92(r25)
000458  8f074719  div.f.rn r15, r14, r20
00045c  17a72801  xor r14, r17, r18
000460  8f840400  exp.f.rn r9, r9
000464  0f070700  exp.f.rn r14, r14
000468  0b6a3711  add.f.rn r20, r14, r19
00046c  8be43411  add.f.rn r9, r9, r19
000470  63c7dcff  loadli.w r14,  -20(r25)
000474  e7cafcfe  storeli.w r15, -84(r25)
000478  8f874819  div.f.rn r15, r17, r20
00047c  97282c01  xor r17, r24, r18
000480  e78a3cfe  storeli.w r3, -88(r25)
000484  e381ecff  loadli.w r3,  -16(r25)
000488  0f019118  div.f.rn r2, r2, r9
00048c  97a42201  xor r9, r5, r18
000490  8f880800  exp.f.rn r17, r17
000494  0bea3811  add.f.rn r20, r17, r19
000498  8f840400  exp.f.rn r9, r9
00049c  e3c8ecff  loadli.w r17,  -12(r25)
0004a0  8be43411  add.f.rn r9, r9, r19
0004a4  67cbfcfe  storeli.w r15, -76(r25)
0004a8  8f074c19  div.f.rn r15, r24, r20
0004ac  172a2501  xor r20, r10, r18
0004b0  63ccfcff  loadli.w r24,  -4(r25)
0004b4  0f0a0a00  exp.f.rn r20, r20
0004b8  678b2cfe  storeli.w r2, -80(r25)
0004bc  6381fcff  loadli.w r2,  -8(r25)
0004c0  8f829218  div.f.rn r5, r5, r9
0004c4  97242401  xor r9, r8, r18
0004c8  0b6a3a11  add.f.rn r20, r20, r19
0004cc  8f840400  exp.f.rn r9, r9
0004d0  8be43411  add.f.rn r9, r9, r19
0004d4  e7cbfcfe  storeli.w r15, -68(r25)
0004d8  8f074519  div.f.rn r15, r10, r20
0004dc  17a52301  xor r10, r7, r18
0004e0  0f050500  exp.f.rn r10, r10
0004e4  0b6a3511  add.f.rn r20, r10, r19
0004e8  e78b5cfe  storeli.w r5, -72(r25)
0004ec  e3820c00  loadli.w r5,  0(r25)
0004f0  0f049418  div.f.rn r8, r8, r9
0004f4  97a42d01  xor r9, r27, r18
0004f8  63c50c00  loadli.w r10,  4(r25)
0004fc  8f840400  exp.f.rn r9, r9
000500  8be43411  add.f.rn r9, r9, r19
000504  67ccfcfe  storeli.w r15, -60(r25)
000508  0f8a4319  div.f.rn r20, r7, r20
00050c  97272e01  xor r15, r28, r18
000510  8f830700  exp.f.rn r7, r15
000514  8beb3311  add.f.rn r23, r7, r19
000518  97272301  xor r15, r6, r18
00051c  8f830700  exp.f.rn r7, r15
000520  8be73311  add.f.rn r15, r7, r19
000524  678c8cfe  storeli.w r8, -64(r25)
000528  63841c00  loadli.w r8,  8(r25)
00052c  e3c31c00  loadli.w r7,  12(r25)
000530  8f849d18  div.f.rn r9, r27, r9
000534  e38d2c00  loadli.w r27,  16(r25)
000538  e7cc4cff  storeli.w r20, -52(r25)
00053c  17aa2a01  xor r20, r21, r18
000540  8f07f318  div.f.rn r15, r6, r15
000544  0f030a00  exp.f.rn r6, r20
000548  17aa2601  xor r20, r13, r18
00054c  e78c9cfe  storeli.w r9, -56(r25)
000550  8f047e19  div.f.rn r9, r28, r23
000554  8b6b3311  add.f.rn r23, r6, r19
000558  0f030a00  exp.f.rn r6, r20
00055c  0b6a3311  add.f.rn r20, r6, r19
000560  638e3c00  loadli.w r28,  24(r25)
000564  63c32c00  loadli.w r6,  20(r25)
000568  67cdfcfe  storeli.w r15, -44(r25)
00056c  97272601  xor r15, r12, r18
000570  0f8a4619  div.f.rn r20, r13, r20
000574  8f860700  exp.f.rn r13, r15
000578  97a72501  xor r15, r11, r18
00057c  678d9cfe  storeli.w r9, -48(r25)
000580  8f847a19  div.f.rn r9, r21, r23
000584  8beb3611  add.f.rn r23, r13, r19
000588  8f860700  exp.f.rn r13, r15
00058c  8be73611  add.f.rn r15, r13, r19
000590  e38a4c00  loadli.w r21,  32(r25)
000594  e3c63c00  loadli.w r13,  28(r25)
000598  8f87f518  div.f.rn r15, r11, r15
00059c  e7cd4cff  storeli.w r20, -36(r25)
0005a0  e78d9cfe  storeli.w r9, -40(r25)
0005a4  8f047619  div.f.rn r9, r12, r23
0005a8  17262201  xor r12, r4, r18
0005ac  8f050600  exp.f.rn r11, r12
0005b0  0bea3511  add.f.rn r20, r11, r19
0005b4  17262701  xor r12, r14, r18
0005b8  8f050600  exp.f.rn r11, r12
0005bc  8beb3511  add.f.rn r23, r11, r19
0005c0  e3c54c00  loadli.w r11,  36(r25)
0005c4  63865c00  loadli.w r12,  40(r25)
0005c8  67cefcfe  storeli.w r15, -28(r25)
0005cc  0f024219  div.f.rn r4, r4, r20
0005d0  678e9cfe  storeli.w r9, -32(r25)
0005d4  97a42101  xor r9, r3, r18
0005d8  8f077719  div.f.rn r15, r14, r23
0005dc  17a72801  xor r14, r17, r18
0005e0  8f840400  exp.f.rn r9, r9
0005e4  0f070700  exp.f.rn r14, r14
0005e8  0b6a3711  add.f.rn r20, r14, r19
0005ec  8be43411  add.f.rn r9, r9, r19
0005f0  63c75c00  loadli.w r14,  44(r25)
0005f4  e78e4cfe  storeli.w r4, -24(r25)
0005f8  63826c00  loadli.w r4,  48(r25)
0005fc  e7cefcfe  storeli.w r15, -20(r25)
000600  8f874819  div.f.rn r15, r17, r20
000604  97282c01  xor r17, r24, r18
000608  8f819118  div.f.rn r3, r3, r9
00060c  97242101  xor r9, r2, r18
000610  8f880800  exp.f.rn r17, r17
000614  0bea3811  add.f.rn r20, r17, r19
000618  8f840400  exp.f.rn r9, r9
00061c  e3c86c00  loadli.w r17,  52(r25)
000620  8be43411  add.f.rn r9, r9, r19
000624  67cffcfe  storeli.w r15, -12(r25)
000628  8f074c19  div.f.rn r15, r24, r20
00062c  172a2501  xor r20, r10, r18
000630  63cc7c00  loadli.w r24,  60(r25)
000634  0f0a0a00  exp.f.rn r20, r20
000638  678f3cfe  storeli.w r3, -16(r25)
00063c  e3817c00  loadli.w r3,  56(r25)
000640  0f019118  div.f.rn r2, r2, r9
000644  97a42201  xor r9, r5, r18
000648  0b6a3a11  add.f.rn r20, r20, r19
00064c  8f840400  exp.f.rn r9, r9
000650  8be43411  add.f.rn r9, r9, r19
000654  e7cffcfe  storeli.w r15, -4(r25)
000658  8f074519  div.f.rn r15, r10, r20
00065c  17a52301  xor r10, r7, r18
000660  e78f2cfe  storeli.w r2, -8(r25)
000664  63818c00  loadli.w r2,  64(r25)
000668  8f849218  div.f.rn r9, r5, r9
00066c  97222401  xor r5, r8, r18
000670  8f820200  exp.f.rn r5, r5
000674  0bea3211  add.f.rn r20, r5, r19
000678  8f020500  exp.f.rn r5, r10
00067c  8beb3211  add.f.rn r23, r5, r19
000680  63859c00  loadli.w r10,  72(r25)
000684  e3c28c00  loadli.w r5,  68(r25)
000688  67c0fc00  storeli.w r15, 4(r25)
00068c  67809c00  storeli.w r9, 0(r25)
000690  97a42d01  xor r9, r27, r18
000694  0f044419  div.f.rn r8, r8, r20
000698  8f877319  div.f.rn r15, r7, r23
00069c  8f830400  exp.f.rn r7, r9
0006a0  97242301  xor r9, r6, r18
0006a4  0bea3311  add.f.rn r20, r7, r19
0006a8  8f830400  exp.f.rn r7, r9
0006ac  8be43311  add.f.rn r9, r7, r19
0006b0  e3c39c00  loadli.w r7,  76(r25)
0006b4  e7808c00  storeli.w r8, 8(r25)
0006b8  6384ac00  loadli.w r8,  80(r25)
0006bc  e7c0fc00  storeli.w r15, 12(r25)
0006c0  8f874d19  div.f.rn r15, r27, r20
0006c4  172a2e01  xor r20, r28, r18
0006c8  8f049318  div.f.rn r9, r6, r9
0006cc  0f030a00  exp.f.rn r6, r20
0006d0  8b6b3311  add.f.rn r23, r6, r19
0006d4  e38dbc00  loadli.w r27,  88(r25)
0006d8  17aa2601  xor r20, r13, r18
0006dc  0f030a00  exp.f.rn r6, r20
0006e0  0b6a3311  add.f.rn r20, r6, r19
0006e4  63c3ac00  loadli.w r6,  84(r25)
0006e8  6781fc00  storeli.w r15, 16(r25)
0006ec  67c19c00  storeli.w r9, 20(r25)
0006f0  8f047e19  div.f.rn r9, r28, r23
0006f4  97a72a01  xor r15, r21, r18
0006f8  638ecc00  loadli.w r28,  96(r25)
0006fc  0f8a4619  div.f.rn r20, r13, r20
000700  8f860700  exp.f.rn r13, r15
000704  97a72501  xor r15, r11, r18
000708  8beb3611  add.f.rn r23, r13, r19
00070c  8f860700  exp.f.rn r13, r15
000710  8be73611  add.f.rn r15, r13, r19
000714  e3c6bc00  loadli.w r13,  92(r25)
000718  e7819c00  storeli.w r9, 24(r25)
00071c  8f847a19  div.f.rn r9, r21, r23
000720  e3cacc00  loadli.w r21,  100(r25)
000724  e7c14c01  storeli.w r20, 28(r25)
000728  172a2601  xor r20, r12, r18
00072c  8f87f518  div.f.rn r15, r11, r15
000730  8f050a00  exp.f.rn r11, r20
000734  8beb3511  add.f.rn r23, r11, r19
000738  172a2701  xor r20, r14, r18
00073c  8f050a00  exp.f.rn r11, r20
000740  0bea3511  add.f.rn r20, r11, r19
000744  e385dc00  loadli.w r11,  104(r25)
000748  67829c00  storeli.w r9, 32(r25)
00074c  8f047619  div.f.rn r9, r12, r23
000750  17262201  xor r12, r4, r18
000754  67c2fc00  storeli.w r15, 36(r25)
000758  0f060600  exp.f.rn r12, r12
00075c  8f074719  div.f.rn r15, r14, r20
000760  0b6a3611  add.f.rn r20, r12, r19
000764  17a72801  xor r14, r17, r18
000768  0f060700  exp.f.rn r12, r14
00076c  8b6b3611  add.f.rn r23, r12, r19
000770  63c6dc00  loadli.w r12,  108(r25)
000774  6387ec00  loadli.w r14,  112(r25)
000778  e7829c00  storeli.w r9, 40(r25)
00077c  8f044219  div.f.rn r9, r4, r20
000780  17a22101  xor r4, r3, r18
000784  e7c2fc00  storeli.w r15, 44(r25)
000788  8f877819  div.f.rn r15, r17, r23
00078c  0f020200  exp.f.rn r4, r4
000790  97282c01  xor r17, r24, r18
000794  0b6a3211  add.f.rn r20, r4, r19
000798  0f820800  exp.f.rn r4, r17
00079c  8b683211  add.f.rn r17, r4, r19
0007a0  63c2ec00  loadli.w r4,  116(r25)
0007a4  67839c00  storeli.w r9, 48(r25)
0007a8  e384fc00  loadli.w r9,  120(r25)
0007ac  67c3fc00  storeli.w r15, 52(r25)
0007b0  8f874119  div.f.rn r15, r3, r20
0007b4  97212101  xor r3, r2, r18
0007b8  8f081c19  div.f.rn r17, r24, r17
0007bc  17aa2201  xor r20, r5, r18
0007c0  8f810100  exp.f.rn r3, r3
0007c4  8beb3111  add.f.rn r23, r3, r19
0007c8  8f010a00  exp.f.rn r3, r20
0007cc  0bec3111  add.f.rn r24, r3, r19
0007d0  172a2501  xor r20, r10, r18
0007d4  8f010a00  exp.f.rn r3, r20
0007d8  0bea3111  add.f.rn r20, r3, r19
0007dc  e3c1fc00  loadli.w r3,  124(r25)
0007e0  e783fc00  storeli.w r15, 56(r25)
0007e4  97a72301  xor r15, r7, r18
0007e8  e7c31c01  storeli.w r17, 60(r25)
0007ec  97282401  xor r17, r8, r18
0007f0  0f017119  div.f.rn r2, r2, r23
0007f4  8f870700  exp.f.rn r15, r15
0007f8  8f880800  exp.f.rn r17, r17
0007fc  8f828219  div.f.rn r5, r5, r24
000800  8be73711  add.f.rn r15, r15, r19
000804  8be83811  add.f.rn r17, r17, r19
000808  0f054519  div.f.rn r10, r10, r20
00080c  67842c00  storeli.w r2, 64(r25)
000810  0f81f318  div.f.rn r2, r7, r15
000814  8f031419  div.f.rn r7, r8, r17
000818  97a82a01  xor r17, r21, r18
00081c  67c45c00  storeli.w r5, 68(r25)
000820  97222301  xor r5, r6, r18
000824  17a42d01  xor r8, r27, r18
000828  97272e01  xor r15, r28, r18
00082c  8f820200  exp.f.rn r5, r5
000830  8f880800  exp.f.rn r17, r17
000834  e784ac00  storeli.w r10, 72(r25)
000838  17a52601  xor r10, r13, r18
00083c  0f040400  exp.f.rn r8, r8
000840  8f870700  exp.f.rn r15, r15
000844  8be23211  add.f.rn r5, r5, r19
000848  8be83811  add.f.rn r17, r17, r19
00084c  0f050500  exp.f.rn r10, r10
000850  0b643411  add.f.rn r8, r8, r19
000854  8be73711  add.f.rn r15, r15, r19
000858  0b653511  add.f.rn r10, r10, r19
00085c  e7c42c00  storeli.w r2, 76(r25)
000860  67857c00  storeli.w r7, 80(r25)
000864  97232201  xor r7, r4, r18
000868  8f025318  div.f.rn r5, r6, r5
00086c  0f811a19  div.f.rn r2, r21, r17
000870  0f838d18  div.f.rn r6, r27, r8
000874  8f830300  exp.f.rn r7, r7
000878  0f84a618  div.f.rn r8, r13, r10
00087c  0f05fe18  div.f.rn r10, r28, r15
000880  8be33311  add.f.rn r7, r7, r19
000884  67c55c00  storeli.w r5, 84(r25)
000888  97a22501  xor r5, r11, r18
00088c  67c62c00  storeli.w r2, 100(r25)
000890  0f810200  exp.f.rn r2, r5
000894  e7856c00  storeli.w r6, 88(r25)
000898  17232701  xor r6, r14, r18
00089c  0f027218  div.f.rn r4, r4, r7
0008a0  0b613111  add.f.rn r2, r2, r19
0008a4  97222601  xor r5, r12, r18
0008a8  e7c58c00  storeli.w r8, 92(r25)
0008ac  17a42401  xor r8, r9, r18
0008b0  6786ac00  storeli.w r10, 96(r25)
0008b4  17a52101  xor r10, r3, r18
0008b8  0f030300  exp.f.rn r6, r6
0008bc  8f820200  exp.f.rn r5, r5
0008c0  0f040400  exp.f.rn r8, r8
0008c4  0f050500  exp.f.rn r10, r10
0008c8  0b633311  add.f.rn r6, r6, r19
0008cc  8be23211  add.f.rn r5, r5, r19
0008d0  0b643411  add.f.rn r8, r8, r19
0008d4  0b653511  add.f.rn r10, r10, r19
0008d8  0f812518  div.f.rn r2, r11, r2
0008dc  67c74c00  storeli.w r4, 116(r25)
0008e0  0f036718  div.f.rn r6, r14, r6
0008e4  8f838418  div.f.rn r7, r9, r8
0008e8  8f025618  div.f.rn r5, r12, r5
0008ec  8f81a118  div.f.rn r3, r3, r10
0008f0  1f048003  addli r8, zero, 448
0008f4  e7862c00  storeli.w r2, 104(r25)
0008f8  13018d04  setlt.u r2, r26, r8
0008fc  67876c00  storeli.w r6, 112(r25)
000900  e7c65c00  storeli.w r5, 108(r25)
000904  e7877c00  storeli.w r7, 120(r25)
000908  e7c73c00  storeli.w r3, 124(r25)
00090c  9f8c0c02  addli r25, r25, 256
000910  bb4701fc  bneq r2, zero, -1552
000914  00a00000  mfence { lm }
000918  abf1ffff  lui r3, 1048575
00091c  1f018fdf  addli r2, r30, -4160
000920  63436fdf  loadli.w r6,  -4172(r30)
000924  9b9101fe  ori r3, r3, 4064
000928  1f020300  addli r4, r6, 0
00092c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000930  9f028100  addli r5, r2, 64
000934  9f814100  addli r3, r3, 32
000938  1f010101  addli r2, r2, 128
00093c  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
000940  93820105  setlt.u r5, r3, r16
000944  06100000  vfloat2fp16_l.rn vr0, vr0
000948  06d00000  vfloat2fp16_h.rn vr0, vr1
00094c  46000202  vstore.mz vr0{mr1}, 0(r4)
000950  1f028200  addli r4, r4, 64
000954  3bef02fe  bneq r5, zero, -40
000958  9f035fdf  addli r7, r30, -4184
00095c  b3900028  sext_int2long r[2:3], r1
000960  9f110000  addli r3, zero, 1
000964  1f040010  addli r8, zero, 2048
000968  6bd20300  load.d r[5:6], 0(r7)
00096c  97b03002  sll.d r[2:3], r[2:3], r3
000970  ab0100f0  lui r3, 983040
000974  00a00000  mfence { lm }
000978  8b201210  add.ul r[2:3], r[5:6], r[2:3]
00097c  1f020008  addli r4, zero, 1024
000980  97113200  or r3, r4, r3
000984  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000988  2b014000  lui r2, 1024
00098c  00a00200  mfence { lm, gm }
000990  e3437fdf  loadli.w r7,  -4164(r30)
000994  e3017fdf  loadli.w r3,  -4168(r30)
000998  9ba31300  xori r7, r7, 1
00099c  9f800100  addli r1, r3, 0
0009a0  3ff221fc  blt.s r3, r2, -1892
0009a4  9f0e0fdf  addli sp, r30, -4224
0009a8  e38fae20  loadli.w r31,  4176(sp)
0009ac  63cfae20  loadli.w r30,  4180(sp)
0009b0  638ebe20  loadli.w r28,  4184(sp)
0009b4  e3cdbe20  loadli.w r27,  4188(sp)
0009b8  638dce20  loadli.w r26,  4192(sp)
0009bc  e3ccce20  loadli.w r25,  4196(sp)
0009c0  638cde20  loadli.w r24,  4200(sp)
0009c4  e3cbde20  loadli.w r23,  4204(sp)
0009c8  638bee20  loadli.w r22,  4208(sp)
0009cc  e3caee20  loadli.w r21,  4212(sp)
0009d0  638afe20  loadli.w r20,  4216(sp)
0009d4  e3c9fe20  loadli.w r19,  4220(sp)
0009d8  9f8e0e21  addli sp, sp, 4224
0009dc  5f800f00  jr r31, 0
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
