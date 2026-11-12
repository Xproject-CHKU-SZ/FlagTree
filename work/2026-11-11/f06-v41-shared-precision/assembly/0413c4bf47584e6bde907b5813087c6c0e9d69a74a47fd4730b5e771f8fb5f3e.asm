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
000078  9f493000  addli r19, zero, 28
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
0000e8  e3492f00  loadli.w r19,  20(r30)
0000ec  e3002f00  loadli.w r1,  16(r30)
0000f0  630a3f00  loadli.w r20,  24(r30)
0000f4  8b901920  mul.s r1, r19, r1
0000f8  0b9b4021  mul.s r22, r1, r20
0000fc  cb405b01  ble.s r22, r21, 48
000100  80db0002  load_param_i r23, 1
000104  8b904a31  div.s r1, r21, r20
000108  6b510f00  load.d r[3:4], 0(r30)
00010c  6b528f00  load.d r[5:6], 8(r30)
000110  ab030100  lui r7, 16
000114  1f040001  addli r8, zero, 128
000118  9f140000  addli r9, zero, 1
00011c  0b933031  div.s r6, r1, r19
000120  d7260000  jal 308
000124  8b9a7a11  add.s r21, r21, r23
000128  3fff6aff  blt.s r21, r22, -36
00012c  00a00300  mfence { lm, sm, gm }
000130  00100000  exit
000134  9f8e0edd  addli sp, sp, -4480
000138  67c5ee23  storeli.w r30, 4436(sp)
00013c  1f8f0e23  addli r30, sp, 4480
000140  00550102  load_param_i r10, 2
000144  e7c67e23  storeli.w r23, 4460(sp)
000148  e7868e23  storeli.w r24, 4456(sp)
00014c  a70b0100  addli.d r[24:25], r[3:4], 0
000150  e7c73e23  storeli.w r19, 4476(sp)
000154  e7874e23  storeli.w r20, 4472(sp)
000158  67c75e23  storeli.w r21, 4468(sp)
00015c  67876e23  storeli.w r22, 4464(sp)
000160  67c69e23  storeli.w r25, 4452(sp)
000164  6786ae23  storeli.w r26, 4448(sp)
000168  e7c5be23  storeli.w r27, 4444(sp)
00016c  e785ce23  storeli.w r28, 4440(sp)
000170  6785fe23  storeli.w r31, 4432(sp)
000174  9f004fdd  addli r1, r30, -4448
000178  73b04000  store.d r[5:6], 0(r1)
00017c  80300002  core_id r1
000180  8b106550  fmac.s r1, r10, r6
000184  0b998020  mul.s r18, r1, r8
000188  cb9a2303  ble.s r7, r18, 1700
00018c  0b11a420  mul.s r2, r8, r10
000190  9f411000  addli r3, zero, 12
000194  9f008fef  addli r1, r30, -2112
000198  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00019c  1b322400  slli r4, r8, 2
0001a0  9b321400  slli r5, r8, 1
0001a4  9f2d0000  addli r27, zero, 2
0001a8  1f1e0000  addli r28, zero, 1
0001ac  2b080080  lui r16, 524288
0001b0  ab08803f  lui r17, 260096
0001b4  2b0b40cb  lui r22, 832512
0001b8  ab05003f  lui r11, 258048
0001bc  67497fdc  storeli.w r7, -4460(r30)
0001c0  0b1d3120  mul.s r26, r2, r3
0001c4  2b01353f  lui r2, 258896
0001c8  ab61803f  lui r3, 260102
0001cc  9b900001  ori r1, r1, 16
0001d0  67094fdc  storeli.w r4, -4464(r30)
0001d4  e7485fdc  storeli.w r5, -4468(r30)
0001d8  9b19314f  ori r19, r2, 1267
0001dc  2bc18937  lui r2, 227484
0001e0  1b9ae10f  ori r20, r3, 254
0001e4  abe1b138  lui r3, 232222
0001e8  67481fdc  storeli.w r1, -4476(r30)
0001ec  9f000fe6  addli r1, r30, -3328
0001f0  e708afdd  storeli.w r26, -4472(r30)
0001f4  1b11c1a3  ori r2, r2, 2620
0001f8  ea200122  vor.u.mz vr1{mr1}, r2, vr0
0001fc  1b91a196  ori r2, r3, 2410
000200  ab61f5b9  lui r3, 761686
000204  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000208  ea200122  vor.u.mz vr1{mr1}, r2, vr0
00020c  9f008fe5  addli r1, r30, -3392
000210  1b91910b  ori r2, r3, 185
000214  ab4157ba  lui r3, 763252
000218  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00021c  ea200122  vor.u.mz vr1{mr1}, r2, vr0
000220  9f000fe5  addli r1, r30, -3456
000224  1b9101d2  ori r2, r3, 3360
000228  ab81ac3b  lui r3, 244424
00022c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000230  ea200122  vor.u.mz vr1{mr1}, r2, vr0
000234  9f008fe4  addli r1, r30, -3520
000238  1b91b140  ori r2, r3, 1035
00023c  abd1aa3b  lui r3, 244397
000240  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000244  ea200122  vor.u.mz vr1{mr1}, r2, vr0
000248  9f000fe4  addli r1, r30, -3584
00024c  1b91a15e  ori r2, r3, 1514
000250  ab810cbd  lui r3, 774344
000254  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000258  ea200122  vor.u.mz vr1{mr1}, r2, vr0
00025c  9f008fe3  addli r1, r30, -3648
000260  1b912116  ori r2, r3, 354
000264  ab11dcbc  lui r3, 773569
000268  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00026c  ea200122  vor.u.mz vr1{mr1}, r2, vr0
000270  9f000fe3  addli r1, r30, -3712
000274  1b9171be  ori r2, r3, 3047
000278  abf11c3e  lui r3, 254415
00027c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000280  ea200122  vor.u.mz vr1{mr1}, r2, vr0
000284  9f008fe2  addli r1, r30, -3776
000288  1b916190  ori r2, r3, 2310
00028c  ab11e73d  lui r3, 253553
000290  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000294  ea200122  vor.u.mz vr1{mr1}, r2, vr0
000298  9f000fe2  addli r1, r30, -3840
00029c  1b91f18a  ori r2, r3, 2223
0002a0  ab916a3f  lui r3, 259753
0002a4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0002a8  ea200122  vor.u.mz vr1{mr1}, r2, vr0
0002ac  9f008fe1  addli r1, r30, -3904
0002b0  1b91e137  ori r2, r3, 894
0002b4  ab91c0be  lui r3, 781321
0002b8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0002bc  ea200122  vor.u.mz vr1{mr1}, r2, vr0
0002c0  9f000fe1  addli r1, r30, -3968
0002c4  1b91c13a  ori r2, r3, 940
0002c8  abd1203f  lui r3, 258573
0002cc  9b912184  ori r3, r3, 2114
0002d0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0002d4  ab70033e  lui r1, 254007
0002d8  e74b3fdc  storeli.w r3, -4420(r30)
0002dc  ab812139  lui r3, 234008
0002e0  9b90305d  ori r1, r1, 1491
0002e4  e70b1fdc  storeli.w r1, -4424(r30)
0002e8  9b909148  ori r1, r3, 1161
0002ec  abe17f37  lui r3, 227326
0002f0  674b1fdc  storeli.w r1, -4428(r30)
0002f4  abc0ae3a  lui r1, 240364
0002f8  9b96e15f  ori r13, r3, 1534
0002fc  ab911d3c  lui r3, 246233
000300  9b90f03f  ori r1, r1, 1023
000304  1b93b155  ori r6, r3, 1371
000308  abf1753e  lui r3, 255839
00030c  670b1fdc  storeli.w r1, -4432(r30)
000310  ab50633d  lui r1, 251445
000314  1b9601df  ori r12, r3, 3568
000318  1b957084  ori r10, r1, 2119
00031c  ab70313f  lui r1, 258839
000320  9b978021  ori r15, r1, 536
000324  9f008fe6  addli r1, r30, -3264
000328  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00032c  6a200122  vor.u.mz vr0{mr1}, r2, vr0
000330  9f008fe0  addli r1, r30, -4032
000334  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000338  9f003fdd  addli r1, r30, -4456
00033c  73b07001  store.d r[24:25], 0(r1)
000340  5b090000  j 72
000344  9f015fdd  addli r3, r30, -4440
000348  1f074fdd  addli r14, r30, -4448
00034c  0b19a911  add.s r18, r18, r26
000350  ebd00100  load.d r[2:3], 0(r3)
000354  eb5b0700  load.d r[24:25], 0(r14)
000358  ab0100f0  lui r3, 983040
00035c  1f078fe7  addli r14, r30, -3136
000360  00a00000  mfence { lm }
000364  97913200  or r3, r5, r3
000368  97b0c003  sll.d r[2:3], r[2:3], r28
00036c  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000370  ffb1e000  s_lm2gm r3, r14, 0(r[2:3])
000374  9f003fdd  addli r1, r30, -4456
000378  00a00200  mfence { lm, gm }
00037c  ebdb0000  load.d r[24:25], 0(r1)
000380  3f207900  blt.s r18, r7, 8
000384  5b950000  j 1192
000388  b3100928  sext_int2long r[2:3], r18
00038c  9f015fdd  addli r3, r30, -4440
000390  1f078fef  addli r14, r30, -2112
000394  73b01100  store.d r[2:3], 0(r3)
000398  17b1b003  sll.d r[3:4], r[2:3], r27
00039c  ab0000f0  lui r1, 983040
0003a0  0ba12b10  add.ul r[3:4], r[24:25], r[3:4]
0003a4  97101200  or r1, r4, r1
0003a8  ff20e100  l_gm2lm r1, r14, 0(r[3:4])
0003ac  00a00200  mfence { lm, gm }
0003b0  3b94c401  bneq r9, r28, 260
0003b4  9f020900  addli r5, r18, 0
0003b8  3f63c401  blt.s r8, r28, 216
0003bc  e3410fdd  loadli.w r3,  -4476(r30)
0003c0  1f010000  addli r2, zero, 0
0003c4  e383e1ff  loadli.w r7,  -16(r3)
0003c8  e3cde1ff  loadli.w r27,  -12(r3)
0003cc  6382f1ff  loadli.w r4,  -8(r3)
0003d0  63c9f1ff  loadli.w r18,  -4(r3)
0003d4  e3cb1100  loadli.w r23,  12(r3)
0003d8  e38a0100  loadli.w r21,  0(r3)
0003dc  63cb0100  loadli.w r22,  4(r3)
0003e0  1f011100  addli r2, r2, 8
0003e4  97a00301  xor r1, r7, r16
0003e8  17a70d01  xor r14, r27, r16
0003ec  172c0201  xor r24, r4, r16
0003f0  972c0901  xor r25, r18, r16
0003f4  17ae0b01  xor r28, r23, r16
0003f8  8f800000  exp.f.rn r1, r1
0003fc  0f070700  exp.f.rn r14, r14
000400  0f0c0c00  exp.f.rn r24, r24
000404  0f0e0e00  exp.f.rn r28, r28
000408  8be01011  add.f.rn r1, r1, r17
00040c  0b671711  add.f.rn r14, r14, r17
000410  0b6e1e11  add.f.rn r28, r28, r17
000414  8f801318  div.f.rn r1, r7, r1
000418  e3831100  loadli.w r7,  8(r3)
00041c  0f87ed18  div.f.rn r14, r27, r14
000420  972d0b01  xor r27, r22, r16
000424  8f8d0d00  exp.f.rn r27, r27
000428  8bed1d11  add.f.rn r27, r27, r17
00042c  17ad0301  xor r26, r7, r16
000430  0f0d0d00  exp.f.rn r26, r26
000434  0b6d1d11  add.f.rn r26, r26, r17
000438  678f11fe  storeli.w r1, -16(r3)
00043c  8b601c11  add.f.rn r1, r24, r17
000440  0f8c0c00  exp.f.rn r24, r25
000444  97ac0a01  xor r25, r21, r16
000448  67cfe1fe  storeli.w r14, -12(r3)
00044c  8f8c0c00  exp.f.rn r25, r25
000450  0b6c1c11  add.f.rn r24, r24, r17
000454  8bec1c11  add.f.rn r25, r25, r17
000458  8f83a319  div.f.rn r7, r7, r26
00045c  8f001218  div.f.rn r1, r4, r1
000460  0f028919  div.f.rn r4, r18, r24
000464  0f899a19  div.f.rn r18, r21, r25
000468  8f0abb19  div.f.rn r21, r22, r27
00046c  0f8bcb19  div.f.rn r22, r23, r28
000470  e7807100  storeli.w r7, 8(r3)
000474  e78f11fe  storeli.w r1, -8(r3)
000478  e7cf41fe  storeli.w r4, -4(r3)
00047c  67802101  storeli.w r18, 0(r3)
000480  67c05101  storeli.w r21, 4(r3)
000484  e7c06101  storeli.w r22, 12(r3)
000488  9f814100  addli r3, r3, 32
00048c  bf6c81fe  blt.s r2, r8, -200
000490  00a00000  mfence { lm }
000494  1f890200  addli r18, r5, 0
000498  9f2d0000  addli r27, zero, 2
00049c  1f1e0000  addli r28, zero, 1
0004a0  2b0b40cb  lui r22, 832512
0004a4  e3432fdd  loadli.w r7,  -4460(r30)
0004a8  63022fdd  loadli.w r4,  -4464(r30)
0004ac  e3421fdd  loadli.w r5,  -4468(r30)
0004b0  630d1fdd  loadli.w r26,  -4472(r30)
0004b4  3f4ac4ff  blt.s r8, r28, -368
0004b8  1f018fe7  addli r2, r30, -3136
0004bc  1f078fef  addli r14, r30, -2112
0004c0  9f010000  addli r3, zero, 0
0004c4  db040000  j 36
0004c8  06100100  vfloat2fp16_l.rn vr0, vr2
0004cc  9f814100  addli r3, r3, 32
0004d0  1f070701  addli r14, r14, 128
0004d4  06d00100  vfloat2fp16_h.rn vr0, vr3
0004d8  46000102  vstore.mz vr0{mr1}, 0(r2)
0004dc  1f018100  addli r2, r2, 64
0004e0  3fa08100  blt.s r3, r8, 8
0004e4  5bccffff  j -416
0004e8  9f008700  addli r1, r14, 64
0004ec  42110702  vload_mask16.mz vr2{mr1}, 0(r14)
0004f0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0004f4  9f400000  addli r1, zero, 4
0004f8  3bbc1400  bneq r9, r1, 780
0004fc  0a902902  vmul.f.mz.rn vr0{mr1}, r19, vr2
000500  9f000fe0  addli r1, r30, -4096
000504  9f0a0fe6  addli r21, r30, -3328
000508  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00050c  9f008fdd  addli r1, r30, -4416
000510  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000514  e61000c0  vabs.f vr1, vr0
000518  0e110002  vmul.f.mz.rn vr2{mr1}, vr0, vr0
00051c  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
000520  9f0a0fe7  addli r21, r30, -3200
000524  46903a02  vstore_mask16.mz vr3{mr1}, 0(r21)
000528  9f0a0fe5  addli r21, r30, -3456
00052c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
000530  ab000041  lui r1, 266240
000534  72111a42  vlt.f.mz mr2{mr1}, r20, vr1
000538  42920a02  vload_mask16.mz vr4{mr1}, 0(r21)
00053c  9f0a8fe5  addli r21, r30, -3392
000540  7e010140  vmnot mr2, mr2
000544  aa931002  vmin.f.mz vr7{mr1}, r1, vr1
000548  92310002  vadd.s.mz vr3{mr1}, zero, vr0
00054c  ea232034  vor.u.mh vr7{mr2}, zero, vr2
000550  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
000554  9f0a8fe4  addli r21, r30, -3520
000558  ea210034  vor.u.mh vr3{mr2}, zero, vr0
00055c  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
000560  9f0a0fe4  addli r21, r30, -3584
000564  6a220034  vor.u.mh vr4{mr2}, zero, vr0
000568  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
00056c  9f0a8fe3  addli r21, r30, -3648
000570  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
000574  9f0a0fe3  addli r21, r30, -3712
000578  26927102  vmac.f.mz.rn vr4{mr1}, vr3, vr7
00057c  ea200034  vor.u.mh vr1{mr2}, zero, vr0
000580  42910a02  vload_mask16.mz vr2{mr1}, 0(r21)
000584  9f0a8fe2  addli r21, r30, -3776
000588  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
00058c  9f0a0fe2  addli r21, r30, -3840
000590  a6107202  vmac.f.mz.rn vr1{mr1}, vr4, vr7
000594  6a210034  vor.u.mh vr2{mr2}, zero, vr0
000598  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
00059c  9f0a0fe1  addli r21, r30, -3968
0005a0  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
0005a4  9f0a8fe1  addli r21, r30, -3904
0005a8  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
0005ac  9f0a8fe6  addli r21, r30, -3264
0005b0  26917002  vmac.f.mz.rn vr2{mr1}, vr1, vr7
0005b4  6a230034  vor.u.mh vr6{mr2}, zero, vr0
0005b8  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
0005bc  e34c7fdd  loadli.w r25,  -4420(r30)
0005c0  9f0a8fdf  addli r21, r30, -4160
0005c4  26137102  vmac.f.mz.rn vr6{mr1}, vr2, vr7
0005c8  eaa10c22  vor.u.mz vr3{mr1}, r25, vr0
0005cc  e30c7fdd  loadli.w r25,  -4424(r30)
0005d0  6a150322  vor.f.mz vr10{mr1}, r6, vr0
0005d4  6a140622  vor.f.mz vr8{mr1}, r12, vr0
0005d8  6aa20c22  vor.u.mz vr4{mr1}, r25, vr0
0005dc  ab0c00c2  lui r25, 794624
0005e0  9235a002  vadd.s.mz vr11{mr1}, zero, vr10
0005e4  46904a02  vstore_mask16.mz vr4{mr1}, 0(r21)
0005e8  9f0a8fe0  addli r21, r30, -4032
0005ec  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
0005f0  ab0a404b  lui r21, 308224
0005f4  ea241034  vor.u.mh vr9{mr2}, zero, vr1
0005f8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0005fc  ea204034  vor.u.mh vr1{mr2}, zero, vr4
000600  1a127802  vsub.f.mz.rn vr4{mr1}, r16, vr7
000604  a6147302  vmac.f.mz.rn vr9{mr1}, vr6, vr7
000608  6a225034  vor.u.mh vr4{mr2}, zero, vr5
00060c  a6907402  vmac.f.mz.rn vr1{mr1}, vr9, vr7
000610  e34b6fdd  loadli.w r23,  -4428(r30)
000614  ea930b22  vor.f.mz vr7{mr1}, r23, vr0
000618  9f0b0fdf  addli r23, r30, -4224
00061c  26924002  vmac.f.mz.rn vr4{mr1}, vr1, vr4
000620  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
000624  e30b6fdd  loadli.w r23,  -4432(r30)
000628  32934c02  vmax.f.mz vr6{mr1}, r25, vr4
00062c  92926a02  vadd.f.mz.rn vr5{mr1}, r21, vr6
000630  12115b02  vadd.f.mz.rn vr2{mr1}, r22, vr5
000634  1e132302  vsub.f.mz.rn vr6{mr1}, vr6, vr2
000638  6a910b22  vor.f.mz vr2{mr1}, r23, vr0
00063c  9f0b8fde  addli r23, r30, -4288
000640  a2936602  vmac.f.mz.rn vr7{mr1}, r13, vr6
000644  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
000648  9f7b2000  addli r23, zero, 23
00064c  eaa00b22  vor.u.mz vr1{mr1}, r23, vr0
000650  9f0b0fde  addli r23, r30, -4352
000654  26916302  vmac.f.mz.rn vr2{mr1}, vr7, vr6
000658  ea130522  vor.f.mz vr7{mr1}, r10, vr0
00065c  eeb250a2  vsll.s.mz vr5{mr1}, vr1, vr5
000660  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
000664  9f0b8fdd  addli r23, r30, -4416
000668  a6156102  vmac.f.mz.rn vr11{mr1}, vr2, vr6
00066c  92347002  vadd.s.mz vr9{mr1}, zero, vr7
000670  6a910722  vor.f.mz vr2{mr1}, r15, vr0
000674  6a900822  vor.f.mz vr0{mr1}, r17, vr0
000678  92b05802  vadd.s.mz vr1{mr1}, r17, vr5
00067c  a6946502  vmac.f.mz.rn vr9{mr1}, vr11, vr6
000680  92358002  vadd.s.mz vr11{mr1}, zero, vr8
000684  a6956402  vmac.f.mz.rn vr11{mr1}, vr9, vr6
000688  92342002  vadd.s.mz vr9{mr1}, zero, vr2
00068c  a6946502  vmac.f.mz.rn vr9{mr1}, vr11, vr6
000690  92350002  vadd.s.mz vr11{mr1}, zero, vr0
000694  a6956402  vmac.f.mz.rn vr11{mr1}, vr9, vr6
000698  0e931502  vmul.f.mz.rn vr6{mr1}, vr11, vr1
00069c  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0006a0  9f0b0fe7  addli r23, r30, -3200
0006a4  1a936802  vsub.f.mz.rn vr6{mr1}, r17, vr6
0006a8  ea321802  vand.s.mz vr5{mr1}, r16, vr1
0006ac  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
0006b0  eeb26222  vor.s.mz vr5{mr1}, vr5, vr6
0006b4  8a901902  vmul.f.mz.rn vr1{mr1}, r19, vr1
0006b8  ea224034  vor.u.mh vr5{mr2}, zero, vr4
0006bc  e69400c0  vabs.f vr9, vr1
0006c0  8e951002  vmul.f.mz.rn vr11{mr1}, vr1, vr1
0006c4  2a939002  vmin.f.mz vr6{mr1}, r1, vr9
0006c8  72119a42  vlt.f.mz mr2{mr1}, r20, vr9
0006cc  9f000fe6  addli r1, r30, -3328
0006d0  7e010140  vmnot mr2, mr2
0006d4  6a23b034  vor.u.mh vr6{mr2}, zero, vr11
0006d8  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0006dc  9f008fe5  addli r1, r30, -3392
0006e0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0006e4  9f000fe5  addli r1, r30, -3456
0006e8  6a229034  vor.u.mh vr4{mr2}, zero, vr9
0006ec  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0006f0  9f008fe4  addli r1, r30, -3520
0006f4  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0006f8  9f000fe4  addli r1, r30, -3584
0006fc  ea24b034  vor.u.mh vr9{mr2}, zero, vr11
000700  a6146202  vmac.f.mz.rn vr9{mr1}, vr4, vr6
000704  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000708  9f008fe3  addli r1, r30, -3648
00070c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000710  9f000fe3  addli r1, r30, -3712
000714  6a22b034  vor.u.mh vr4{mr2}, zero, vr11
000718  26926402  vmac.f.mz.rn vr4{mr1}, vr9, vr6
00071c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000720  9f008fe2  addli r1, r30, -3776
000724  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000728  9f000fe2  addli r1, r30, -3840
00072c  ea24b034  vor.u.mh vr9{mr2}, zero, vr11
000730  a6146202  vmac.f.mz.rn vr9{mr1}, vr4, vr6
000734  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
000738  9f008fe1  addli r1, r30, -3904
00073c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000740  9f000fe1  addli r1, r30, -3968
000744  6a22b034  vor.u.mh vr4{mr2}, zero, vr11
000748  26926402  vmac.f.mz.rn vr4{mr1}, vr9, vr6
00074c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000750  9f008fe0  addli r1, r30, -4032
000754  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000758  9f008fdf  addli r1, r30, -4160
00075c  ea24b034  vor.u.mh vr9{mr2}, zero, vr11
000760  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
000764  9f000fdf  addli r1, r30, -4224
000768  a6146202  vmac.f.mz.rn vr9{mr1}, vr4, vr6
00076c  1a126802  vsub.f.mz.rn vr4{mr1}, r16, vr6
000770  ea21b034  vor.u.mh vr3{mr2}, zero, vr11
000774  6a221034  vor.u.mh vr4{mr2}, zero, vr1
000778  ea301802  vand.s.mz vr1{mr1}, r16, vr1
00077c  a6916402  vmac.f.mz.rn vr3{mr1}, vr9, vr6
000780  26924102  vmac.f.mz.rn vr4{mr1}, vr3, vr4
000784  b2914c02  vmax.f.mz vr3{mr1}, r25, vr4
000788  12933a02  vadd.f.mz.rn vr6{mr1}, r21, vr3
00078c  92146b02  vadd.f.mz.rn vr9{mr1}, r22, vr6
000790  9e919102  vsub.f.mz.rn vr3{mr1}, vr3, vr9
000794  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
000798  9f008fde  addli r1, r30, -4288
00079c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0007a0  9f000fde  addli r1, r30, -4352
0007a4  a2943602  vmac.f.mz.rn vr9{mr1}, r13, vr3
0007a8  a6953402  vmac.f.mz.rn vr11{mr1}, vr9, vr3
0007ac  26953502  vmac.f.mz.rn vr10{mr1}, vr11, vr3
0007b0  a6133502  vmac.f.mz.rn vr7{mr1}, vr10, vr3
0007b4  26943302  vmac.f.mz.rn vr8{mr1}, vr7, vr3
0007b8  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0007bc  9f000fe0  addli r1, r30, -4096
0007c0  26113402  vmac.f.mz.rn vr2{mr1}, vr8, vr3
0007c4  6eb363a2  vsll.s.mz vr6{mr1}, vr7, vr6
0007c8  26103102  vmac.f.mz.rn vr0{mr1}, vr2, vr3
0007cc  12b16802  vadd.s.mz vr2{mr1}, r17, vr6
0007d0  0e102002  vmul.f.mz.rn vr0{mr1}, vr0, vr2
0007d4  12915802  vadd.f.mz.rn vr2{mr1}, r17, vr5
0007d8  1a900802  vsub.f.mz.rn vr0{mr1}, r17, vr0
0007dc  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0007e0  6a204034  vor.u.mh vr0{mr2}, zero, vr4
0007e4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0007e8  9f000fe7  addli r1, r30, -3200
0007ec  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0007f0  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
0007f4  8a901502  vmul.f.mz.rn vr1{mr1}, r11, vr1
0007f8  8a913502  vmul.f.mz.rn vr3{mr1}, r11, vr3
0007fc  0e912002  vmul.f.mz.rn vr2{mr1}, vr1, vr2
000800  8e910102  vmul.f.mz.rn vr3{mr1}, vr3, vr0
000804  3b93b4ff  bneq r9, r27, -828
000808  1a102802  vsub.f.mz.rn vr0{mr1}, r16, vr2
00080c  9f008fe6  addli r1, r30, -3264
000810  9a103802  vsub.f.mz.rn vr1{mr1}, r16, vr3
000814  72110042  vlt.f.mz mr2{mr1}, zero, vr0
000818  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00081c  f2111042  vlt.f.mz mr3{mr1}, zero, vr1
000820  6a210034  vor.u.mh vr2{mr2}, zero, vr0
000824  ea210036  vor.u.mh vr3{mr3}, zero, vr0
000828  5b94ffff  j -864
00082c  9f0e0fdd  addli sp, r30, -4480
000830  e38fae22  loadli.w r31,  4432(sp)
000834  63cfae22  loadli.w r30,  4436(sp)
000838  638ebe22  loadli.w r28,  4440(sp)
00083c  e3cdbe22  loadli.w r27,  4444(sp)
000840  638dce22  loadli.w r26,  4448(sp)
000844  e3ccce22  loadli.w r25,  4452(sp)
000848  638cde22  loadli.w r24,  4456(sp)
00084c  e3cbde22  loadli.w r23,  4460(sp)
000850  638bee22  loadli.w r22,  4464(sp)
000854  e3caee22  loadli.w r21,  4468(sp)
000858  638afe22  loadli.w r20,  4472(sp)
00085c  e3c9fe22  loadli.w r19,  4476(sp)
000860  9f8e0e23  addli sp, sp, 4480
000864  5f800f00  jr r31, 0
000868  00100000  exit
00086c  00100000  exit
000870  00100000  exit
000874  00100000  exit
000878  00100000  exit
00087c  00100000  exit
000880  00100000  exit
000884  00100000  exit
000888  00100000  exit
00088c  00100000  exit
000890  00100000  exit
000894  00100000  exit
000898  00100000  exit
00089c  00100000  exit
0008a0  00100000  exit
0008a4  00100000  exit
0008a8  00100000  exit
0008ac  00100000  exit
0008b0  00100000  exit
0008b4  00100000  exit
0008b8  00100000  exit
0008bc  00100000  exit
0008c0  00100000  exit
0008c4  00100000  exit
0008c8  00100000  exit
0008cc  00100000  exit
0008d0  00100000  exit
0008d4  00100000  exit
0008d8  00100000  exit
0008dc  00100000  exit
0008e0  00100000  exit
0008e4  00100000  exit
0008e8  00100000  exit
0008ec  00100000  exit
0008f0  00100000  exit
0008f4  00100000  exit
0008f8  00100000  exit
0008fc  00100000  exit
000900  00100000  exit
000904  00100000  exit
000908  00100000  exit
00090c  00100000  exit
000910  00100000  exit
000914  00100000  exit
000918  00100000  exit
00091c  00100000  exit
000920  00100000  exit
000924  00100000  exit
000928  00100000  exit
00092c  00100000  exit
000930  00100000  exit
000934  00100000  exit
000938  00100000  exit
00093c  00100000  exit
000940  00100000  exit
000944  00100000  exit
000948  00100000  exit
00094c  00100000  exit
000950  00100000  exit
000954  00100000  exit
000958  00100000  exit
00095c  00100000  exit
000960  00100000  exit
000964  00100000  exit
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
000974  00100000  exit
000978  00100000  exit
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
