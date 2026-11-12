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
000110  ab030800  lui r7, 128
000114  1f040002  addli r8, zero, 256
000118  9f040000  addli r9, zero, 0
00011c  0b933031  div.s r6, r1, r19
000120  d7260000  jal 308
000124  8b9a7a11  add.s r21, r21, r23
000128  3fff6aff  blt.s r21, r22, -36
00012c  00a00300  mfence { lm, sm, gm }
000130  00100000  exit
000134  9f8e0edc  addli sp, sp, -4608
000138  67cdee23  storeli.w r30, 4564(sp)
00013c  1f8f0e24  addli r30, sp, 4608
000140  00350002  core_id r10
000144  e7cf3e23  storeli.w r19, 4604(sp)
000148  e78f4e23  storeli.w r20, 4600(sp)
00014c  67cf5e23  storeli.w r21, 4596(sp)
000150  678f6e23  storeli.w r22, 4592(sp)
000154  e7ce7e23  storeli.w r23, 4588(sp)
000158  e78e8e23  storeli.w r24, 4584(sp)
00015c  67ce9e23  storeli.w r25, 4580(sp)
000160  678eae23  storeli.w r26, 4576(sp)
000164  e7cdbe23  storeli.w r27, 4572(sp)
000168  e78dce23  storeli.w r28, 4568(sp)
00016c  678dfe23  storeli.w r31, 4560(sp)
000170  9f00afdc  addli r1, r30, -4528
000174  73b04000  store.d r[5:6], 0(r1)
000178  80500102  load_param_i r1, 2
00017c  1f029fdc  addli r4, r30, -4536
000180  0b956050  fmac.s r10, r1, r6
000184  73302200  store.d r[3:4], 0(r4)
000188  0b158520  mul.s r10, r10, r8
00018c  cbeda302  ble.s r7, r10, 1912
000190  1b312400  slli r2, r8, 2
000194  8b101420  mul.s r1, r8, r1
000198  1f0b8fef  addli r22, r30, -2112
00019c  eea49462  vxor.u.mz vr9{mr1}, vr9, vr9
0001a0  1f230000  addli r6, zero, 2
0001a4  9f170000  addli r15, zero, 1
0001a8  2b080080  lui r16, 524288
0001ac  ab08803f  lui r17, 260096
0001b0  2b020041  lui r4, 266240
0001b4  2be97f00  lui r18, 2046
0001b8  2be70700  lui r14, 126
0001bc  e7437fdc  storeli.w r7, -4548(r30)
0001c0  67442fdc  storeli.w r2, -4540(r30)
0001c4  1b311400  slli r2, r8, 1
0001c8  67042fdc  storeli.w r2, -4544(r30)
0001cc  1f411000  addli r2, zero, 12
0001d0  0b9e2020  mul.s r28, r1, r2
0001d4  9b100b01  ori r1, r22, 16
0001d8  2b61803f  lui r2, 260102
0001dc  67431fdc  storeli.w r1, -4556(r30)
0001e0  ab00353f  lui r1, 258896
0001e4  1b1ae10f  ori r20, r2, 254
0001e8  2be1b138  lui r2, 232222
0001ec  e703cfdd  storeli.w r28, -4552(r30)
0001f0  9b92304f  ori r5, r1, 1267
0001f4  abc08937  lui r1, 227484
0001f8  9b90c0a3  ori r1, r1, 2620
0001fc  6aa09022  vor.u.mz vr0{mr1}, r1, vr9
000200  9f008fe6  addli r1, r30, -3264
000204  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000208  9b10a196  ori r1, r2, 2410
00020c  2b61f5b9  lui r2, 761686
000210  6aa09022  vor.u.mz vr0{mr1}, r1, vr9
000214  9f000fe6  addli r1, r30, -3328
000218  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00021c  9b10910b  ori r1, r2, 185
000220  2b4157ba  lui r2, 763252
000224  6aa09022  vor.u.mz vr0{mr1}, r1, vr9
000228  9f008fe5  addli r1, r30, -3392
00022c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000230  9b1001d2  ori r1, r2, 3360
000234  2b81ac3b  lui r2, 244424
000238  6aa09022  vor.u.mz vr0{mr1}, r1, vr9
00023c  9f000fe5  addli r1, r30, -3456
000240  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000244  9b10b140  ori r1, r2, 1035
000248  2bd1aa3b  lui r2, 244397
00024c  6aa09022  vor.u.mz vr0{mr1}, r1, vr9
000250  9f008fe4  addli r1, r30, -3520
000254  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000258  9b10a15e  ori r1, r2, 1514
00025c  2b810cbd  lui r2, 774344
000260  6aa09022  vor.u.mz vr0{mr1}, r1, vr9
000264  9f000fe4  addli r1, r30, -3584
000268  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00026c  9b102116  ori r1, r2, 354
000270  2b11dcbc  lui r2, 773569
000274  6aa09022  vor.u.mz vr0{mr1}, r1, vr9
000278  9f008fe3  addli r1, r30, -3648
00027c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000280  9b1071be  ori r1, r2, 3047
000284  2bf11c3e  lui r2, 254415
000288  6aa09022  vor.u.mz vr0{mr1}, r1, vr9
00028c  9f000fe3  addli r1, r30, -3712
000290  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000294  9b106190  ori r1, r2, 2310
000298  2b11e73d  lui r2, 253553
00029c  6aa09022  vor.u.mz vr0{mr1}, r1, vr9
0002a0  9f008fe2  addli r1, r30, -3776
0002a4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002a8  9b10f18a  ori r1, r2, 2223
0002ac  2b916a3f  lui r2, 259753
0002b0  6aa09022  vor.u.mz vr0{mr1}, r1, vr9
0002b4  9f000fe2  addli r1, r30, -3840
0002b8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002bc  9b10e137  ori r1, r2, 894
0002c0  2b91c0be  lui r2, 781321
0002c4  6aa09022  vor.u.mz vr0{mr1}, r1, vr9
0002c8  9f008fe1  addli r1, r30, -3904
0002cc  9b11c13a  ori r3, r2, 940
0002d0  2b71033e  lui r2, 254007
0002d4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002d8  abd0203f  lui r1, 258573
0002dc  6aa09122  vor.u.mz vr0{mr1}, r3, vr9
0002e0  9b902084  ori r1, r1, 2114
0002e4  e7471fdc  storeli.w r1, -4484(r30)
0002e8  9b10315d  ori r1, r2, 1491
0002ec  2be17f37  lui r2, 227326
0002f0  e7071fdc  storeli.w r1, -4488(r30)
0002f4  ab802139  lui r1, 234008
0002f8  9b1de15f  ori r27, r2, 1534
0002fc  2b911d3c  lui r2, 246233
000300  9b909048  ori r1, r1, 1161
000304  67471fdc  storeli.w r1, -4492(r30)
000308  abc0ae3a  lui r1, 240364
00030c  9b90f03f  ori r1, r1, 1023
000310  67071fdc  storeli.w r1, -4496(r30)
000314  9b10b155  ori r1, r2, 1371
000318  2bf1753e  lui r2, 255839
00031c  e7461fdc  storeli.w r1, -4500(r30)
000320  ab50633d  lui r1, 251445
000324  9b907084  ori r1, r1, 2119
000328  e7061fdc  storeli.w r1, -4504(r30)
00032c  9b1001df  ori r1, r2, 3568
000330  2b710000  lui r2, 7
000334  67461fdc  storeli.w r1, -4508(r30)
000338  ab70313f  lui r1, 258839
00033c  1b16f1ff  ori r12, r2, 4095
000340  2bf100fc  lui r2, 1032207
000344  9b908021  ori r1, r1, 536
000348  9b1901c0  ori r19, r2, 3072
00034c  1f010fe1  addli r2, r30, -3968
000350  67061fdc  storeli.w r1, -4512(r30)
000354  ab00ff03  lui r1, 16368
000358  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00035c  1f010fe7  addli r2, r30, -3200
000360  9b90f03f  ori r1, r1, 1023
000364  46109102  vstore_mask16.mz vr9{mr1}, 0(r2)
000368  5b090000  j 72
00036c  1f03bfdc  addli r6, r30, -4520
000370  9f05afdc  addli r11, r30, -4528
000374  0b15c511  add.s r10, r10, r28
000378  6b510300  load.d r[3:4], 0(r6)
00037c  ebdb0500  load.d r[24:25], 0(r11)
000380  e3058fdc  loadli.w r11,  -4544(r30)
000384  2b0300f0  lui r6, 983040
000388  00a00000  mfence { lm }
00038c  1731f102  sll.d r[3:4], r[3:4], r15
000390  17936500  or r6, r11, r6
000394  9f058fe7  addli r11, r30, -3136
000398  0ba12b10  add.ul r[3:4], r[24:25], r[3:4]
00039c  7f33b100  s_lm2gm r6, r11, 0(r[3:4])
0003a0  1f230000  addli r6, zero, 2
0003a4  00a00200  mfence { lm, gm }
0003a8  3f207500  blt.s r10, r7, 8
0003ac  5bab0000  j 1368
0003b0  33110528  sext_int2long r[3:4], r10
0003b4  9f05bfdc  addli r11, r30, -4520
0003b8  ab0c00f0  lui r25, 983040
0003bc  73b02500  store.d r[3:4], 0(r11)
0003c0  9f059fdc  addli r11, r30, -4536
0003c4  973b6102  sll.d r[24:25], r[3:4], r6
0003c8  6bd10500  load.d r[3:4], 0(r11)
0003cc  8b2b7111  add.ul r[24:25], r[3:4], r[24:25]
0003d0  63418fdc  loadli.w r2,  -4540(r30)
0003d4  971c9101  or r25, r2, r25
0003d8  ffac6b01  l_gm2lm r25, r22, 0(r[24:25])
0003dc  00a00200  mfence { lm, gm }
0003e0  3b84f400  bneq r9, r15, 256
0003e4  00a00000  mfence { lm }
0003e8  6704afe0  storeli.w r10, -4032(r30)
0003ec  3f63f400  blt.s r8, r15, 216
0003f0  634c6fdc  loadli.w r24,  -4556(r30)
0003f4  9f0b0000  addli r23, zero, 0
0003f8  630decff  loadli.w r26,  -16(r24)
0003fc  634eecff  loadli.w r28,  -12(r24)
000400  e30cfcff  loadli.w r25,  -8(r24)
000404  e345fcff  loadli.w r11,  -4(r24)
000408  e3411c00  loadli.w r3,  12(r24)
00040c  63030c00  loadli.w r6,  0(r24)
000410  63420c00  loadli.w r4,  4(r24)
000414  9f8b1b00  addli r23, r23, 8
000418  97260d01  xor r13, r26, r16
00041c  17250e01  xor r10, r28, r16
000420  17a10c01  xor r2, r25, r16
000424  97a30501  xor r7, r11, r16
000428  17ab0101  xor r22, r3, r16
00042c  8f860600  exp.f.rn r13, r13
000430  0f050500  exp.f.rn r10, r10
000434  0f010100  exp.f.rn r2, r2
000438  8f830300  exp.f.rn r7, r7
00043c  0f0b0b00  exp.f.rn r22, r22
000440  8be61611  add.f.rn r13, r13, r17
000444  0b651511  add.f.rn r10, r10, r17
000448  0b611111  add.f.rn r2, r2, r17
00044c  8be31311  add.f.rn r7, r7, r17
000450  0b6b1b11  add.f.rn r22, r22, r17
000454  8f06dd18  div.f.rn r13, r26, r13
000458  630d1c00  loadli.w r26,  8(r24)
00045c  0f05ae18  div.f.rn r10, r28, r10
000460  172e0201  xor r28, r4, r16
000464  0f812c18  div.f.rn r2, r25, r2
000468  8f837518  div.f.rn r7, r11, r7
00046c  8f816119  div.f.rn r3, r3, r22
000470  0f0e0e00  exp.f.rn r28, r28
000474  0b6e1e11  add.f.rn r28, r28, r17
000478  972a0d01  xor r21, r26, r16
00047c  8f8a0a00  exp.f.rn r21, r21
000480  8bea1a11  add.f.rn r21, r21, r17
000484  670fdcfe  storeli.w r13, -16(r24)
000488  97260301  xor r13, r6, r16
00048c  674facfe  storeli.w r10, -12(r24)
000490  e70f2cfe  storeli.w r2, -8(r24)
000494  e74f7cfe  storeli.w r7, -4(r24)
000498  e7403c00  storeli.w r3, 12(r24)
00049c  8f860600  exp.f.rn r13, r13
0004a0  0f02c219  div.f.rn r4, r4, r28
0004a4  8be61611  add.f.rn r13, r13, r17
0004a8  8f055d19  div.f.rn r11, r26, r21
0004ac  0f03d318  div.f.rn r6, r6, r13
0004b0  67404c00  storeli.w r4, 4(r24)
0004b4  e700bc00  storeli.w r11, 8(r24)
0004b8  67006c00  storeli.w r6, 0(r24)
0004bc  1f0c4c00  addli r24, r24, 32
0004c0  bfec8bfe  blt.s r23, r8, -200
0004c4  00a00000  mfence { lm }
0004c8  1f0b8fef  addli r22, r30, -2112
0004cc  1f230000  addli r6, zero, 2
0004d0  2b020041  lui r4, 266240
0004d4  e3437fdc  loadli.w r7,  -4548(r30)
0004d8  63058fe0  loadli.w r10,  -4032(r30)
0004dc  630e7fdc  loadli.w r28,  -4552(r30)
0004e0  9f410000  addli r3, zero, 4
0004e4  3f2af4fe  blt.s r8, r15, -376
0004e8  9f0b8fe7  addli r23, r30, -3136
0004ec  1f0c8fef  addli r24, r30, -2112
0004f0  9f0c0000  addli r25, zero, 0
0004f4  00a00000  mfence { lm }
0004f8  db190000  j 204
0004fc  1f010fe7  addli r2, r30, -3200
000500  1a104802  vsub.f.mz.rn vr0{mr1}, r16, vr4
000504  9a102802  vsub.f.mz.rn vr1{mr1}, r16, vr2
000508  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
00050c  72110042  vlt.f.mz mr2{mr1}, zero, vr0
000510  f2111042  vlt.f.mz mr3{mr1}, zero, vr1
000514  6a229034  vor.u.mh vr4{mr2}, zero, vr9
000518  6a219036  vor.u.mh vr2{mr3}, zero, vr9
00051c  1f012000  addli r2, zero, 16
000520  9f8c4c00  addli r25, r25, 32
000524  1f0c0c01  addli r24, r24, 128
000528  6a209122  vor.u.mz vr0{mr1}, r2, vr9
00052c  1f511000  addli r2, zero, 13
000530  ee3040c2  vsrl.s.mz vr1{mr1}, vr0, vr4
000534  6e3020c2  vsrl.s.mz vr0{mr1}, vr0, vr2
000538  eab01702  vand.s.mz vr1{mr1}, r15, vr1
00053c  6ab00702  vand.s.mz vr0{mr1}, r15, vr0
000540  16300102  vadd.s.mz vr0{mr1}, vr2, vr0
000544  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
000548  6a219122  vor.u.mz vr2{mr1}, r2, vr9
00054c  1f310000  addli r2, zero, 3
000550  ea219122  vor.u.mz vr3{mr1}, r2, vr9
000554  1f211000  addli r2, zero, 10
000558  92301602  vadd.s.mz vr1{mr1}, r12, vr1
00055c  12300602  vadd.s.mz vr0{mr1}, r12, vr0
000560  6e3211c2  vsrl.s.mz vr4{mr1}, vr2, vr1
000564  6e3101c2  vsrl.s.mz vr2{mr1}, vr2, vr0
000568  6eb001c2  vsrl.s.mz vr0{mr1}, vr3, vr0
00056c  eeb011c2  vsrl.s.mz vr1{mr1}, vr3, vr1
000570  6a312702  vand.s.mz vr2{mr1}, r14, vr2
000574  ea314702  vand.s.mz vr3{mr1}, r14, vr4
000578  6a300902  vand.s.mz vr0{mr1}, r18, vr0
00057c  ea301902  vand.s.mz vr1{mr1}, r18, vr1
000580  6a229122  vor.u.mz vr4{mr1}, r2, vr9
000584  6ab12822  vor.s.mz vr2{mr1}, r17, vr2
000588  6ab00822  vor.s.mz vr0{mr1}, r17, vr0
00058c  eab13822  vor.s.mz vr3{mr1}, r17, vr3
000590  eab01822  vor.s.mz vr1{mr1}, r17, vr1
000594  06510120  vfloat2fp16_h.rz vr2, vr2
000598  06500020  vfloat2fp16_h.rz vr0, vr0
00059c  06910120  vfloat2fp16_l.rz vr2, vr3
0005a0  06900020  vfloat2fp16_l.rz vr0, vr1
0005a4  6e3122a2  vsll.s.mz vr2{mr1}, vr4, vr2
0005a8  6ab00002  vand.s.mz vr0{mr1}, r1, vr0
0005ac  eab02902  vand.s.mz vr1{mr1}, r19, vr2
0005b0  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
0005b4  46800b02  vstore.mz vr0{mr1}, 0(r23)
0005b8  9f8b8b00  addli r23, r23, 64
0005bc  3fa08c00  blt.s r25, r8, 8
0005c0  dbb5ffff  j -596
0005c4  1f018c00  addli r2, r24, 64
0005c8  42120c02  vload_mask16.mz vr4{mr1}, 0(r24)
0005cc  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0005d0  bb9c3400  bneq r9, r3, 804
0005d4  1f810200  addli r2, r5, 0
0005d8  9f058fdf  addli r11, r30, -4160
0005dc  ab0a40cb  lui r21, 832512
0005e0  0a134102  vmul.f.mz.rn vr6{mr1}, r2, vr4
0005e4  46902502  vstore_mask16.mz vr2{mr1}, 0(r11)
0005e8  9f058fe6  addli r11, r30, -3264
0005ec  c2910502  vload_mask16.mz vr3{mr1}, 0(r11)
0005f0  9f058fe5  addli r11, r30, -3392
0005f4  661003c0  vabs.f vr0, vr6
0005f8  8e106302  vmul.f.mz.rn vr1{mr1}, vr6, vr6
0005fc  c2920502  vload_mask16.mz vr5{mr1}, 0(r11)
000600  9f050fe6  addli r11, r30, -3328
000604  2a110202  vmin.f.mz vr2{mr1}, r4, vr0
000608  72110a42  vlt.f.mz mr2{mr1}, r20, vr0
00060c  7e010140  vmnot mr2, mr2
000610  6a211034  vor.u.mh vr2{mr2}, zero, vr1
000614  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
000618  9f050fe5  addli r11, r30, -3456
00061c  ea210034  vor.u.mh vr3{mr2}, zero, vr0
000620  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
000624  9f058fe4  addli r11, r30, -3520
000628  ea220034  vor.u.mh vr5{mr2}, zero, vr0
00062c  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
000630  9f050fe4  addli r11, r30, -3584
000634  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
000638  9f058fe3  addli r11, r30, -3648
00063c  a6922102  vmac.f.mz.rn vr5{mr1}, vr3, vr2
000640  6a201034  vor.u.mh vr0{mr2}, zero, vr1
000644  c2900502  vload_mask16.mz vr1{mr1}, 0(r11)
000648  9f050fe3  addli r11, r30, -3712
00064c  c2910502  vload_mask16.mz vr3{mr1}, 0(r11)
000650  9f058fe2  addli r11, r30, -3776
000654  26902202  vmac.f.mz.rn vr0{mr1}, vr5, vr2
000658  ea203034  vor.u.mh vr1{mr2}, zero, vr3
00065c  c2920502  vload_mask16.mz vr5{mr1}, 0(r11)
000660  9f058fe1  addli r11, r30, -3904
000664  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
000668  9f050fe2  addli r11, r30, -3840
00066c  c2910502  vload_mask16.mz vr3{mr1}, 0(r11)
000670  a6102002  vmac.f.mz.rn vr1{mr1}, vr0, vr2
000674  9f058fe0  addli r11, r30, -4032
000678  ea223034  vor.u.mh vr5{mr2}, zero, vr3
00067c  634dffdc  loadli.w r26,  -4484(r30)
000680  ea219d22  vor.u.mz vr3{mr1}, r26, vr9
000684  630dffdc  loadli.w r26,  -4488(r30)
000688  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
00068c  6a209d22  vor.u.mz vr0{mr1}, r26, vr9
000690  2b0d00c2  lui r26, 794624
000694  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000698  46900502  vstore_mask16.mz vr0{mr1}, 0(r11)
00069c  9f050fe1  addli r11, r30, -3968
0006a0  42940502  vload_mask16.mz vr8{mr1}, 0(r11)
0006a4  ab05404b  lui r11, 308224
0006a8  ea238034  vor.u.mh vr7{mr2}, zero, vr8
0006ac  ea200034  vor.u.mh vr1{mr2}, zero, vr0
0006b0  1a102802  vsub.f.mz.rn vr0{mr1}, r16, vr2
0006b4  a6932202  vmac.f.mz.rn vr7{mr1}, vr5, vr2
0006b8  6a206034  vor.u.mh vr0{mr2}, zero, vr6
0006bc  e346efdc  loadli.w r13,  -4492(r30)
0006c0  ea929622  vor.f.mz vr5{mr1}, r13, vr9
0006c4  9f060fe0  addli r13, r30, -4096
0006c8  a6902302  vmac.f.mz.rn vr1{mr1}, vr7, vr2
0006cc  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
0006d0  e306efdc  loadli.w r13,  -4496(r30)
0006d4  26900002  vmac.f.mz.rn vr0{mr1}, vr1, vr0
0006d8  6a949622  vor.f.mz vr8{mr1}, r13, vr9
0006dc  9f060fdf  addli r13, r30, -4224
0006e0  b2100d02  vmax.f.mz vr1{mr1}, r26, vr0
0006e4  46908602  vstore_mask16.mz vr8{mr1}, 0(r13)
0006e8  e346dfdc  loadli.w r13,  -4500(r30)
0006ec  92931502  vadd.f.mz.rn vr7{mr1}, r11, vr1
0006f0  ea959622  vor.f.mz vr11{mr1}, r13, vr9
0006f4  9f060fde  addli r13, r30, -4352
0006f8  12917a02  vadd.f.mz.rn vr2{mr1}, r21, vr7
0006fc  4690b602  vstore_mask16.mz vr11{mr1}, 0(r13)
000700  e306dfdc  loadli.w r13,  -4504(r30)
000704  9e902002  vsub.f.mz.rn vr1{mr1}, vr1, vr2
000708  12315002  vadd.s.mz vr2{mr1}, zero, vr5
00070c  6a959622  vor.f.mz vr10{mr1}, r13, vr9
000710  9f068fdd  addli r13, r30, -4416
000714  92328002  vadd.s.mz vr5{mr1}, zero, vr8
000718  22911d02  vmac.f.mz.rn vr2{mr1}, r27, vr1
00071c  4690a602  vstore_mask16.mz vr10{mr1}, 0(r13)
000720  e346cfdc  loadli.w r13,  -4508(r30)
000724  a6121102  vmac.f.mz.rn vr5{mr1}, vr2, vr1
000728  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
00072c  1f008fde  addli zero, r30, -4288
000730  ea959622  vor.f.mz vr11{mr1}, r13, vr9
000734  9f060fdd  addli r13, r30, -4480
000738  46104002  vstore_mask16.mz vr4{mr1}, 0(zero)
00073c  17200000  xor zero, zero, zero
000740  26911202  vmac.f.mz.rn vr2{mr1}, vr5, vr1
000744  12349002  vadd.s.mz vr8{mr1}, zero, vr9
000748  4690b602  vstore_mask16.mz vr11{mr1}, 0(r13)
00074c  e306cfdc  loadli.w r13,  -4512(r30)
000750  26151102  vmac.f.mz.rn vr10{mr1}, vr2, vr1
000754  ea928622  vor.f.mz vr5{mr1}, r13, vr8
000758  9f762000  addli r13, zero, 23
00075c  6a918822  vor.f.mz vr2{mr1}, r17, vr8
000760  6aa28622  vor.u.mz vr4{mr1}, r13, vr8
000764  9f068fdf  addli r13, r30, -4160
000768  a6151502  vmac.f.mz.rn vr11{mr1}, vr10, vr1
00076c  92345002  vadd.s.mz vr9{mr1}, zero, vr5
000770  42950602  vload_mask16.mz vr10{mr1}, 0(r13)
000774  ee3372a2  vsll.s.mz vr7{mr1}, vr4, vr7
000778  a6941502  vmac.f.mz.rn vr9{mr1}, vr11, vr1
00077c  92352002  vadd.s.mz vr11{mr1}, zero, vr2
000780  a6951402  vmac.f.mz.rn vr11{mr1}, vr9, vr1
000784  92b07802  vadd.s.mz vr1{mr1}, r17, vr7
000788  ea336802  vand.s.mz vr7{mr1}, r16, vr6
00078c  0a13a102  vmul.f.mz.rn vr6{mr1}, r2, vr10
000790  1f018fe6  addli r2, r30, -3264
000794  8e901502  vmul.f.mz.rn vr1{mr1}, vr11, vr1
000798  e61403c0  vabs.f vr9, vr6
00079c  8e156302  vmul.f.mz.rn vr11{mr1}, vr6, vr6
0007a0  9a901802  vsub.f.mz.rn vr1{mr1}, r17, vr1
0007a4  eeb31322  vor.s.mz vr7{mr1}, vr7, vr1
0007a8  aa109202  vmin.f.mz vr1{mr1}, r4, vr9
0007ac  ea230034  vor.u.mh vr7{mr2}, zero, vr0
0007b0  72119a42  vlt.f.mz mr2{mr1}, r20, vr9
0007b4  7e010140  vmnot mr2, mr2
0007b8  ea20b034  vor.u.mh vr1{mr2}, zero, vr11
0007bc  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0007c0  1f010fe6  addli r2, r30, -3328
0007c4  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
0007c8  1f018fe5  addli r2, r30, -3392
0007cc  6a208034  vor.u.mh vr0{mr2}, zero, vr8
0007d0  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
0007d4  1f010fe5  addli r2, r30, -3456
0007d8  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
0007dc  1f018fe4  addli r2, r30, -3520
0007e0  ea248034  vor.u.mh vr9{mr2}, zero, vr8
0007e4  a6141002  vmac.f.mz.rn vr9{mr1}, vr0, vr1
0007e8  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0007ec  1f010fe4  addli r2, r30, -3584
0007f0  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
0007f4  1f018fe3  addli r2, r30, -3648
0007f8  6a208034  vor.u.mh vr0{mr2}, zero, vr8
0007fc  26901402  vmac.f.mz.rn vr0{mr1}, vr9, vr1
000800  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
000804  1f010fe3  addli r2, r30, -3712
000808  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
00080c  1f018fe2  addli r2, r30, -3776
000810  ea248034  vor.u.mh vr9{mr2}, zero, vr8
000814  a6141002  vmac.f.mz.rn vr9{mr1}, vr0, vr1
000818  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00081c  1f010fe2  addli r2, r30, -3840
000820  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
000824  1f018fe1  addli r2, r30, -3904
000828  6a208034  vor.u.mh vr0{mr2}, zero, vr8
00082c  26901402  vmac.f.mz.rn vr0{mr1}, vr9, vr1
000830  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
000834  1f010fe1  addli r2, r30, -3968
000838  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
00083c  1f018fe0  addli r2, r30, -4032
000840  ea248034  vor.u.mh vr9{mr2}, zero, vr8
000844  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
000848  1f010fe0  addli r2, r30, -4096
00084c  a6141002  vmac.f.mz.rn vr9{mr1}, vr0, vr1
000850  1a101802  vsub.f.mz.rn vr0{mr1}, r16, vr1
000854  ea218034  vor.u.mh vr3{mr2}, zero, vr8
000858  6a206034  vor.u.mh vr0{mr2}, zero, vr6
00085c  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
000860  1f010fdf  addli r2, r30, -4224
000864  a6911402  vmac.f.mz.rn vr3{mr1}, vr9, vr1
000868  26900102  vmac.f.mz.rn vr0{mr1}, vr3, vr0
00086c  b2100d02  vmax.f.mz vr1{mr1}, r26, vr0
000870  92911502  vadd.f.mz.rn vr3{mr1}, r11, vr1
000874  9f058fde  addli r11, r30, -4288
000878  92943a02  vadd.f.mz.rn vr9{mr1}, r21, vr3
00087c  ee3132a2  vsll.s.mz vr3{mr1}, vr4, vr3
000880  9e909002  vsub.f.mz.rn vr1{mr1}, vr1, vr9
000884  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
000888  1f010fde  addli r2, r30, -4352
00088c  22941d02  vmac.f.mz.rn vr8{mr1}, r27, vr1
000890  a6141402  vmac.f.mz.rn vr9{mr1}, vr8, vr1
000894  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
000898  1f018fdd  addli r2, r30, -4416
00089c  26941402  vmac.f.mz.rn vr8{mr1}, vr9, vr1
0008a0  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
0008a4  1f010fdd  addli r2, r30, -4480
0008a8  a6141402  vmac.f.mz.rn vr9{mr1}, vr8, vr1
0008ac  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
0008b0  2b01003f  lui r2, 258048
0008b4  26941402  vmac.f.mz.rn vr8{mr1}, vr9, vr1
0008b8  a6121402  vmac.f.mz.rn vr5{mr1}, vr8, vr1
0008bc  26911202  vmac.f.mz.rn vr2{mr1}, vr5, vr1
0008c0  92b03802  vadd.s.mz vr1{mr1}, r17, vr3
0008c4  8a11a102  vmul.f.mz.rn vr3{mr1}, r2, vr10
0008c8  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
0008cc  6a316802  vand.s.mz vr2{mr1}, r16, vr6
0008d0  9a901802  vsub.f.mz.rn vr1{mr1}, r17, vr1
0008d4  ee301122  vor.s.mz vr1{mr1}, vr2, vr1
0008d8  12917802  vadd.f.mz.rn vr2{mr1}, r17, vr7
0008dc  ea200034  vor.u.mh vr1{mr2}, zero, vr0
0008e0  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
0008e4  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0008e8  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
0008ec  0e122002  vmul.f.mz.rn vr4{mr1}, vr0, vr2
0008f0  0e911102  vmul.f.mz.rn vr2{mr1}, vr3, vr1
0008f4  37a064fe  beq r9, r6, -1016
0008f8  1f010fe7  addli r2, r30, -3200
0008fc  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
000900  db83ffff  j -996
000904  9f0e0fdc  addli sp, r30, -4608
000908  e38fae23  loadli.w r31,  4560(sp)
00090c  63cfae23  loadli.w r30,  4564(sp)
000910  638ebe23  loadli.w r28,  4568(sp)
000914  e3cdbe23  loadli.w r27,  4572(sp)
000918  638dce23  loadli.w r26,  4576(sp)
00091c  e3ccce23  loadli.w r25,  4580(sp)
000920  638cde23  loadli.w r24,  4584(sp)
000924  e3cbde23  loadli.w r23,  4588(sp)
000928  638bee23  loadli.w r22,  4592(sp)
00092c  e3caee23  loadli.w r21,  4596(sp)
000930  638afe23  loadli.w r20,  4600(sp)
000934  e3c9fe23  loadli.w r19,  4604(sp)
000938  9f8e0e24  addli sp, sp, 4608
00093c  5f800f00  jr r31, 0
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
