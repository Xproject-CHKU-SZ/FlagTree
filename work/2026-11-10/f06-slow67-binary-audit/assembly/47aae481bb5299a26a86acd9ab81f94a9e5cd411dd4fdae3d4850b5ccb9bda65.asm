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
000080  ff090200  l_gm2sm r19, zero, 0(r[4:5])
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
0000dc  9f8e8ecb  addli sp, sp, -6720
0000e0  1f8f0e34  addli r30, sp, 6656
0000e4  9f711000  addli r3, zero, 15
0000e8  00d40002  load_param_i r8, 1
0000ec  80530002  load_param_i r7, 0
0000f0  80520102  load_param_i r5, 2
0000f4  eb568f01  load.d r[13:14], 24(r30)
0000f8  b381312e  zext_int2long r[3:4], r3
0000fc  eb508f00  load.d r[1:2], 8(r30)
000100  1f03bfcd  addli r6, r30, -6440
000104  eb540f01  load.d r[9:10], 16(r30)
000108  93b1d104  setlt.sl r3, r[3:4], r[13:14]
00010c  1f02afcd  addli r4, r30, -6448
000110  73301200  store.d r[1:2], 0(r4)
000114  eb500f00  load.d r[1:2], 0(r30)
000118  73301300  store.d r[1:2], 0(r6)
00011c  9f004fce  addli r1, r30, -6368
000120  73b0d000  store.d r[13:14], 0(r1)
000124  bbcf0100  bneq r3, zero, 1008
000128  8b918220  mul.s r3, r5, r8
00012c  80350002  core_id r11
000130  b381312e  zext_int2long r[3:4], r3
000134  8b13b450  fmac.s r7, r8, r11
000138  8f923472  mod.sl r[5:6], r[9:10], r[3:4]
00013c  8f913466  div.sl r[3:4], r[9:10], r[3:4]
000140  b383732e  zext_int2long r[7:8], r7
000144  93b55304  setlt.sl r11, r[7:8], r[5:6]
000148  8bb25340  min.sl r[5:6], r[7:8], r[5:6]
00014c  8bb27150  fmac.sl r[5:6], r[3:4], r[7:8]
000150  b385b52e  zext_int2long r[11:12], r11
000154  8ba1b110  add.ul r[3:4], r[3:4], r[11:12]
000158  8ba35110  add.ul r[7:8], r[3:4], r[5:6]
00015c  8bb19240  min.sl r[3:4], r[5:6], r[9:10]
000160  8bb29340  min.sl r[5:6], r[7:8], r[9:10]
000164  93b33206  setle.sl r7, r[5:6], r[3:4]
000168  3b9d031c  bneq r7, zero, 15172
00016c  9f074fce  addli r15, r30, -6368
000170  9f03000c  addli r7, zero, 1536
000174  1f160000  addli r12, zero, 1
000178  9f080fcf  addli r17, r30, -6272
00017c  ebd00700  load.d r[1:2], 0(r15)
000180  b383732e  zext_int2long r[7:8], r7
000184  8f961362  div.sl r[13:14], r[7:8], r[1:2]
000188  abf3ffff  lui r7, 1048575
00018c  9b93c3ff  ori r7, r7, 4092
000190  97847000  and r9, r1, r7
000194  9f00cfce  addli r1, r30, -6304
000198  1f01bfce  addli r2, r30, -6312
00019c  3395a42a  sext_int2long r[10:11], r9
0001a0  73b05000  store.d r[5:6], 0(r1)
0001a4  7330d100  store.d r[13:14], 0(r2)
0001a8  db0a0000  j 84
0001ac  1f09ffce  addli r18, r30, -6280
0001b0  9f09bfce  addli r19, r30, -6312
0001b4  00a00000  mfence { lm }
0001b8  9f0aafcd  addli r21, r30, -6448
0001bc  1f0befce  addli r22, r30, -6288
0001c0  1f0acfce  addli r20, r30, -6304
0001c4  eb510900  load.d r[3:4], 0(r18)
0001c8  ebd60900  load.d r[13:14], 0(r19)
0001cc  ab0300f0  lui r7, 983040
0001d0  ebd00a00  load.d r[1:2], 0(r21)
0001d4  eb570b00  load.d r[15:16], 0(r22)
0001d8  eb520a00  load.d r[5:6], 0(r20)
0001dc  8ba1d110  add.ul r[3:4], r[3:4], r[13:14]
0001e0  8ba7f010  add.ul r[15:16], r[1:2], r[15:16]
0001e4  e300dfce  loadli.w r1,  -6296(r30)
0001e8  13b45104  setlt.sl r8, r[3:4], r[5:6]
0001ec  97937000  or r7, r1, r7
0001f0  ffb31701  s_lm2gm r7, r17, 0(r[15:16])
0001f4  00a00200  mfence { lm, gm }
0001f8  b75a041c  beq r8, zero, 15028
0001fc  8bb33218  sub.sl r[7:8], r[5:6], r[3:4]
000200  1f034fce  addli r6, r30, -6368
000204  1f0cffce  addli r24, r30, -6280
000208  eb500300  load.d r[1:2], 0(r6)
00020c  0bbad340  min.sl r[20:21], r[7:8], r[13:14]
000210  1f04bfcd  addli r8, r30, -6440
000214  73303c00  store.d r[3:4], 0(r24)
000218  ab0300f0  lui r7, 983040
00021c  9f06efce  addli r13, r30, -6288
000220  8bb71120  mul.sl r[15:16], r[3:4], r[1:2]
000224  0b391a20  mul.sl r[18:19], r[20:21], r[1:2]
000228  eb500400  load.d r[1:2], 0(r8)
00022c  97b1c702  sll.d r[3:4], r[15:16], r12
000230  9b321900  slli r5, r18, 1
000234  0bab3010  add.ul r[22:23], r[1:2], r[3:4]
000238  97937200  or r7, r5, r7
00023c  73b03600  store.d r[3:4], 0(r13)
000240  e7065fce  storeli.w r5, -6296(r30)
000244  ff231b01  l_gm2lm r7, r17, 0(r[22:23])
000248  00a00200  mfence { lm, gm }
00024c  abf3ffff  lui r7, 1048575
000250  9b9323fe  ori r7, r7, 4066
000254  3f617900  blt.s r18, r7, 88
000258  9f73f9ff  addli r7, r18, -1
00025c  9f004000  addli r1, zero, 32
000260  2bf4ffff  lui r8, 1048575
000264  8b931330  div.s r7, r7, r1
000268  1b14f4ff  ori r8, r8, 4095
00026c  1bbb7300  slli r22, r7, 7
000270  9bbb6300  slli r23, r7, 6
000274  17ac8300  xor r24, r7, r8
000278  8b936811  add.s r7, r17, r22
00027c  0b947811  add.s r8, r17, r23
000280  1b3b5c00  slli r22, r24, 5
000284  42000402  vload.mz vr0{mr1}, 0(r8)
000288  86300000  vfp162float_l.rn vr1, vr0
00028c  9f8b8300  addli r23, r7, 64
000290  06710000  vfp162float_h.rn vr2, vr0
000294  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
000298  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
00029c  1f0484ff  addli r8, r8, -64
0002a0  1f0b4b00  addli r22, r22, 32
0002a4  9f8303ff  addli r7, r7, -128
0002a8  3b7f0bfe  bneq r22, zero, -36
0002ac  b3037628  zext_int2long r[7:8], r12
0002b0  9f014fce  addli r3, r30, -6368
0002b4  00a00000  mfence { lm }
0002b8  93337a04  setlt.sl r7, r[20:21], r[7:8]
0002bc  ebd00100  load.d r[1:2], 0(r3)
0002c0  3be80300  bneq r7, zero, 536
0002c4  330b6029  zext_int2long r[22:23], zero
0002c8  5b030000  j 24
0002cc  271b0b00  addli.d r[22:23], r[22:23], 1
0002d0  9f080fcf  addli r17, r30, -6272
0002d4  00a00000  mfence { lm }
0002d8  93314b05  setlt.sl r3, r[22:23], r[20:21]
0002dc  b7f70100  beq r3, zero, 508
0002e0  8b331b20  mul.sl r[7:8], r[22:23], r[1:2]
0002e4  2b0d80ff  lui r26, 1046528
0002e8  9bb32300  slli r7, r7, 2
0002ec  0b9c7810  add.s r24, r17, r7
0002f0  3fe1c400  blt.s r9, r12, 88
0002f4  2b0d80ff  lui r26, 1046528
0002f8  b3037028  zext_int2long r[7:8], zero
0002fc  9bbc2300  slli r25, r7, 2
000300  a7c30300  addli.d r[7:8], r[7:8], 4
000304  8b1d9c11  add.s r27, r24, r25
000308  1b9e4c00  ori r28, r25, 4
00030c  1b978c00  ori r14, r25, 8
000310  9b9ccc00  ori r25, r25, 12
000314  e38d0d00  loadli.w r27,  0(r27)
000318  0b1ecc11  add.s r28, r24, r28
00031c  0b17ec10  add.s r14, r24, r14
000320  8b1c9c11  add.s r25, r24, r25
000324  63070700  loadli.w r14,  0(r14)
000328  e38c0c00  loadli.w r25,  0(r25)
00032c  0b6dbd49  max.f r26, r26, r27
000330  e30d0e00  loadli.w r27,  0(r28)
000334  13bea304  setlt.sl r28, r[7:8], r[10:11]
000338  0b6dbd49  max.f r26, r26, r27
00033c  0b67ed48  max.f r14, r26, r14
000340  0b6d9749  max.f r26, r14, r25
000344  bb6e0efe  bneq r28, zero, -72
000348  93bca006  setle.sl r25, r[1:2], r[10:11]
00034c  a7030500  addli.d r[7:8], r[10:11], 0
000350  bb800c00  bneq r25, zero, 32
000354  1bb72300  slli r14, r7, 2
000358  a7930300  addli.d r[7:8], r[7:8], 1
00035c  0b17ec10  add.s r14, r24, r14
000360  93bd1304  setlt.sl r27, r[7:8], r[1:2]
000364  63070700  loadli.w r14,  0(r14)
000368  0b6ded48  max.f r26, r26, r14
00036c  bbaf0dfe  bneq r27, zero, -24
000370  3fb2c400  blt.s r9, r12, 140
000374  b3037028  zext_int2long r[7:8], zero
000378  9f0d0000  addli r27, zero, 0
00037c  1bb72300  slli r14, r7, 2
000380  a7c30300  addli.d r[7:8], r[7:8], 4
000384  0b1eec10  add.s r28, r24, r14
000388  9b124700  ori r5, r14, 4
00038c  1b188700  ori r16, r14, 8
000390  1b17c700  ori r14, r14, 12
000394  93b6a304  setlt.sl r13, r[7:8], r[10:11]
000398  63030e00  loadli.w r6,  0(r28)
00039c  8b125c10  add.s r5, r24, r5
0003a0  0b180c11  add.s r16, r24, r16
0003a4  0b17ec10  add.s r14, r24, r14
0003a8  e3870200  loadli.w r15,  0(r5)
0003ac  e3080800  loadli.w r17,  0(r16)
0003b0  e3010700  loadli.w r3,  0(r14)
0003b4  0b63a319  sub.f.rn r6, r6, r26
0003b8  8be7a719  sub.f.rn r15, r15, r26
0003bc  8be8a819  sub.f.rn r17, r17, r26
0003c0  8be1a119  sub.f.rn r3, r3, r26
0003c4  0f036300  exp.f.rn r6, r6
0003c8  8f87f700  exp.f.rn r15, r15
0003cc  0f824800  exp.f.rn r4, r17
0003d0  8f813100  exp.f.rn r3, r3
0003d4  8bed6d10  add.f.rn r27, r27, r6
0003d8  67006e00  storeli.w r6, 0(r28)
0003dc  6780f200  storeli.w r15, 0(r5)
0003e0  67004800  storeli.w r4, 0(r16)
0003e4  67003700  storeli.w r3, 0(r14)
0003e8  8be8fd10  add.f.rn r17, r27, r15
0003ec  8be84810  add.f.rn r17, r17, r4
0003f0  8bed3810  add.f.rn r27, r17, r3
0003f4  3bae06fe  bneq r13, zero, -120
0003f8  5b010000  j 8
0003fc  9f0d0000  addli r27, zero, 0
000400  9f014fce  addli r3, r30, -6368
000404  a7030500  addli.d r[7:8], r[10:11], 0
000408  ebd00100  load.d r[1:2], 0(r3)
00040c  bbb00c00  bneq r25, zero, 44
000410  9bb12300  slli r3, r7, 2
000414  a7930300  addli.d r[7:8], r[7:8], 1
000418  8b113c10  add.s r3, r24, r3
00041c  93b21304  setlt.sl r5, r[7:8], r[1:2]
000420  63820100  loadli.w r4,  0(r3)
000424  0b62a219  sub.f.rn r4, r4, r26
000428  0f024200  exp.f.rn r4, r4
00042c  8bed4d10  add.f.rn r27, r27, r4
000430  67804100  storeli.w r4, 0(r3)
000434  3bff02fe  bneq r5, zero, -36
000438  ab01803f  lui r3, 260096
00043c  0f8db119  div.f.rn r26, r3, r27
000440  bf91c400  blt.s r9, r12, 100
000444  b3037028  zext_int2long r[7:8], zero
000448  9bb12300  slli r3, r7, 2
00044c  a7c30300  addli.d r[7:8], r[7:8], 4
000450  9b924100  ori r5, r3, 4
000454  9b968100  ori r13, r3, 8
000458  0b123c10  add.s r4, r24, r3
00045c  9b91c100  ori r3, r3, 12
000460  93b8a304  setlt.sl r17, r[7:8], r[10:11]
000464  8b125c10  add.s r5, r24, r5
000468  8b16dc10  add.s r13, r24, r13
00046c  8b113c10  add.s r3, r24, r3
000470  63030200  loadli.w r6,  0(r4)
000474  63870200  loadli.w r14,  0(r5)
000478  e3870600  loadli.w r15,  0(r13)
00047c  63880100  loadli.w r16,  0(r3)
000480  0b636d20  mul.f.rn r6, r26, r6
000484  0b67ed20  mul.f.rn r14, r26, r14
000488  8b67fd20  mul.f.rn r15, r26, r15
00048c  0b680d21  mul.f.rn r16, r26, r16
000490  67006200  storeli.w r6, 0(r4)
000494  6780e200  storeli.w r14, 0(r5)
000498  6780f600  storeli.w r15, 0(r13)
00049c  67800101  storeli.w r16, 0(r3)
0004a0  bbae08fe  bneq r17, zero, -88
0004a4  9f014fce  addli r3, r30, -6368
0004a8  a7030500  addli.d r[7:8], r[10:11], 0
0004ac  ebd00100  load.d r[1:2], 0(r3)
0004b0  3bf80cfe  bneq r25, zero, -484
0004b4  9bb12300  slli r3, r7, 2
0004b8  a7930300  addli.d r[7:8], r[7:8], 1
0004bc  8b113c10  add.s r3, r24, r3
0004c0  93b21304  setlt.sl r5, r[7:8], r[1:2]
0004c4  63820100  loadli.w r4,  0(r3)
0004c8  0b624d20  mul.f.rn r4, r26, r4
0004cc  67804100  storeli.w r4, 0(r3)
0004d0  bb9f02fe  bneq r5, zero, -28
0004d4  5bbfffff  j -520
0004d8  3f53c9fe  blt.s r18, r12, -812
0004dc  9f030fcf  addli r7, r30, -6272
0004e0  1f040fcf  addli r8, r30, -6272
0004e4  1f0a0000  addli r20, zero, 0
0004e8  9f8a8300  addli r21, r7, 64
0004ec  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
0004f0  9f830301  addli r7, r7, 128
0004f4  1f0a4a00  addli r20, r20, 32
0004f8  42910a02  vload_mask16.mz vr2{mr1}, 0(r21)
0004fc  06900000  vfloat2fp16_l.rn vr0, vr1
000500  06500100  vfloat2fp16_h.rn vr0, vr2
000504  46000402  vstore.mz vr0{mr1}, 0(r8)
000508  1f048400  addli r8, r8, 64
00050c  3f7f2aff  blt.s r20, r18, -36
000510  db93ffff  j -868
000514  9f01000c  addli r3, zero, 1536
000518  b385b12e  zext_int2long r[11:12], r3
00051c  13a2d504  setlt.ul r4, r[11:12], r[13:14]
000520  3b570204  bneq r4, zero, 2516
000524  8b918220  mul.s r3, r5, r8
000528  80350002  core_id r11
00052c  b381312e  zext_int2long r[3:4], r3
000530  8b13b450  fmac.s r7, r8, r11
000534  8f923472  mod.sl r[5:6], r[9:10], r[3:4]
000538  8f913466  div.sl r[3:4], r[9:10], r[3:4]
00053c  b383732e  zext_int2long r[7:8], r7
000540  93b55304  setlt.sl r11, r[7:8], r[5:6]
000544  8bb25340  min.sl r[5:6], r[7:8], r[5:6]
000548  8bb27150  fmac.sl r[5:6], r[3:4], r[7:8]
00054c  8bb79240  min.sl r[15:16], r[5:6], r[9:10]
000550  b383752e  zext_int2long r[7:8], r11
000554  a385f600  andi.d r[11:12], r[13:14], 15
000558  8ba17110  add.ul r[3:4], r[3:4], r[7:8]
00055c  b3037028  zext_int2long r[7:8], zero
000560  8ba15110  add.ul r[3:4], r[3:4], r[5:6]
000564  9f028fcd  addli r5, r30, -6464
000568  8bb09140  min.sl r[1:2], r[3:4], r[9:10]
00056c  13a27502  setneq.d r4, r[11:12], r[7:8]
000570  93b1f006  setle.sl r3, r[1:2], r[15:16]
000574  73b01200  store.d r[1:2], 0(r5)
000578  b726020e  beq r4, zero, 7592
00057c  bbcc011a  bneq r3, zero, 14128
000580  1f064fce  addli r12, r30, -6368
000584  abf00000  lui r1, 15
000588  1f01000c  addli r2, zero, 1536
00058c  9f08ffce  addli r17, r30, -6280
000590  1f09cfce  addli r18, r30, -6304
000594  1f0adfce  addli r20, r30, -6296
000598  1f4c9fce  addli r24, r30, -6324
00059c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0005a0  6b550600  load.d r[10:11], 0(r12)
0005a4  9b90f0ff  ori r1, r1, 4095
0005a8  1f060fcf  addli r12, r30, -6272
0005ac  97001500  and r1, r10, r1
0005b0  a701e5ff  addli.d r[3:4], r[10:11], 32752
0005b4  9b392500  slli r19, r10, 2
0005b8  9b0a3500  andi r21, r10, 3
0005bc  73b03800  store.d r[3:4], 0(r17)
0005c0  abf1ffff  lui r3, 1048575
0005c4  8b001130  div.u r1, r2, r1
0005c8  1b01f501  andi r2, r10, 31
0005cc  9b93f1ff  ori r7, r3, 4095
0005d0  1b9201fe  ori r4, r3, 4064
0005d4  17b12300  sll r2, r7, r2
0005d8  33048228  zext_int2long r[8:9], r4
0005dc  97024500  and r5, r10, r4
0005e0  338b602b  zext_int2long r[22:23], r1
0005e4  97207100  xor r1, r2, r7
0005e8  1f733000  addli r6, zero, 31
0005ec  97068502  and.d r[13:14], r[10:11], r[8:9]
0005f0  17046502  and.d r[8:9], r[10:11], r[6:7]
0005f4  7e8000e0  vmmov mr0, r1
0005f8  9bc00001  srli r1, r1, 16
0005fc  7e0000a0  vmmov zero, mr0
000600  17b18300  sll r2, r7, r8
000604  7e8000e0  vmmov mr0, r1
000608  67000900  storeli.w zero, 0(r18)
00060c  17200000  xor zero, zero, zero
000610  73308a00  store.d r[8:9], 0(r20)
000614  9f04afce  addli r9, r30, -6320
000618  7e0000a0  vmmov zero, mr0
00061c  17227100  xor r4, r2, r7
000620  1b91c1ff  ori r2, r3, 4092
000624  67800400  storeli.w zero, 0(r9)
000628  17200000  xor zero, zero, zero
00062c  9b400201  srli r1, r4, 16
000630  97082500  and r17, r10, r2
000634  1b118600  ori r2, r12, 8
000638  e7054fce  storeli.w r4, -6312(r30)
00063c  7e8000e0  vmmov mr0, r1
000640  9b9001ff  ori r1, r3, 4080
000644  67412fce  storeli.w r2, -6380(r30)
000648  1f018fcd  addli r2, r30, -6464
00064c  9f013fce  addli r3, r30, -6376
000650  7e0000a0  vmmov zero, mr0
000654  7e0002e0  vmmov mr0, r4
000658  97801900  and r1, r19, r1
00065c  67000c00  storeli.w zero, 0(r24)
000660  17200000  xor zero, zero, zero
000664  eb530100  load.d r[7:8], 0(r2)
000668  73b06101  store.d r[22:23], 0(r3)
00066c  8b101610  add.s r1, r12, r1
000670  1f130000  addli r6, zero, 1
000674  9f0d4000  addli r27, zero, 32
000678  7e0000a0  vmmov zero, mr0
00067c  67011fce  storeli.w r1, -6384(r30)
000680  9f008fce  addli r1, r30, -6336
000684  7e0003e0  vmmov mr0, r6
000688  67800000  storeli.w zero, 0(r1)
00068c  17200000  xor zero, zero, zero
000690  db0a0000  j 84
000694  9f059fcd  addli r11, r30, -6456
000698  1f093fce  addli r18, r30, -6376
00069c  00a00000  mfence { lm }
0006a0  1f0cafcd  addli r24, r30, -6448
0006a4  9f0c7fce  addli r25, r30, -6344
0006a8  1f0a8fcd  addli r20, r30, -6464
0006ac  ebd70500  load.d r[15:16], 0(r11)
0006b0  6b5b0900  load.d r[22:23], 0(r18)
0006b4  ab0000f0  lui r1, 983040
0006b8  eb510c00  load.d r[3:4], 0(r24)
0006bc  ebd40c00  load.d r[9:10], 0(r25)
0006c0  eb530a00  load.d r[7:8], 0(r20)
0006c4  8ba76711  add.ul r[15:16], r[15:16], r[22:23]
0006c8  8ba19110  add.ul r[3:4], r[3:4], r[9:10]
0006cc  e3446fce  loadli.w r9,  -6348(r30)
0006d0  13b17704  setlt.sl r2, r[15:16], r[7:8]
0006d4  97901400  or r1, r9, r1
0006d8  ffb0c100  s_lm2gm r1, r12, 0(r[3:4])
0006dc  00a00200  mfence { lm, gm }
0006e0  3737011a  beq r2, zero, 13772
0006e4  9f044fce  addli r9, r30, -6368
0006e8  8bb0f318  sub.sl r[1:2], r[7:8], r[15:16]
0006ec  1f099fcd  addli r18, r30, -6456
0006f0  1f0aefce  addli r20, r30, -6288
0006f4  6bd50400  load.d r[10:11], 0(r9)
0006f8  8bb36041  min.sl r[7:8], r[1:2], r[22:23]
0006fc  1f0bbfcd  addli r22, r30, -6440
000700  7330f900  store.d r[15:16], 0(r18)
000704  ab0000f0  lui r1, 983040
000708  9f0b7fce  addli r23, r30, -6344
00070c  73307a00  store.d r[7:8], 0(r20)
000710  8bb1a720  mul.sl r[3:4], r[15:16], r[10:11]
000714  8bb7a320  mul.sl r[15:16], r[7:8], r[10:11]
000718  97b36102  sll.d r[7:8], r[3:4], r6
00071c  6b510b00  load.d r[2:3], 0(r22)
000720  1bb21700  slli r4, r15, 1
000724  97101200  or r1, r4, r1
000728  73b07b00  store.d r[7:8], 0(r23)
00072c  67434fce  storeli.w r4, -6348(r30)
000730  0b217110  add.ul r[2:3], r[2:3], r[7:8]
000734  ff20c100  l_gm2lm r1, r12, 0(r[2:3])
000738  00a00200  mfence { lm, gm }
00073c  abf0ffff  lui r1, 1048575
000740  9b9020fe  ori r1, r1, 4066
000744  3fd11700  blt.s r15, r1, 84
000748  9ff0f7ff  addli r1, r15, -1
00074c  2bf1ffff  lui r2, 1048575
000750  8b90b031  div.s r1, r1, r27
000754  1b11f1ff  ori r2, r2, 4095
000758  9bb17000  slli r3, r1, 7
00075c  1bb26000  slli r4, r1, 6
000760  97a02000  xor r1, r1, r2
000764  8b133610  add.s r7, r12, r3
000768  0b144610  add.s r8, r12, r4
00076c  9bb45000  slli r9, r1, 5
000770  42000402  vload.mz vr0{mr1}, 0(r8)
000774  06310000  vfp162float_l.rn vr2, vr0
000778  9f808300  addli r1, r7, 64
00077c  86710000  vfp162float_h.rn vr3, vr0
000780  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
000784  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
000788  1f0484ff  addli r8, r8, -64
00078c  9f844400  addli r9, r9, 32
000790  9f8303ff  addli r7, r7, -128
000794  3bff04fe  bneq r9, zero, -36
000798  1f04efce  addli r8, r30, -6288
00079c  b300132c  zext_int2long r[1:2], r6
0007a0  9f035fce  addli r7, r30, -6360
0007a4  eb510400  load.d r[3:4], 0(r8)
0007a8  73b0f300  store.d r[15:16], 0(r7)
0007ac  00a00000  mfence { lm }
0007b0  93b01104  setlt.sl r1, r[3:4], r[1:2]
0007b4  bbeb0002  bneq r1, zero, 1784
0007b8  630a2fce  loadli.w r20,  -6384(r30)
0007bc  634b2fce  loadli.w r22,  -6380(r30)
0007c0  b3037028  zext_int2long r[7:8], zero
0007c4  db080000  j 68
0007c8  0a100e02  vmul.f.mz.rn vr0{mr1}, r28, vr0
0007cc  9bc00401  srli r1, r9, 16
0007d0  1f818500  addli r2, r11, 64
0007d4  7e8100e0  vmmov mr2, r1
0007d8  46100114  vstore_mask16.mh vr0{mr2}, 0(r2)
0007dc  9f01efce  addli r3, r30, -6288
0007e0  a7930300  addli.d r[7:8], r[7:8], 1
0007e4  0b1b3b11  add.s r22, r22, r19
0007e8  0b1a3a11  add.s r20, r20, r19
0007ec  1f060fcf  addli r12, r30, -6272
0007f0  ebd00100  load.d r[1:2], 0(r3)
0007f4  00a00000  mfence { lm }
0007f8  93b01304  setlt.sl r1, r[7:8], r[1:2]
0007fc  1f014fce  addli r2, r30, -6368
000800  6b550100  load.d r[10:11], 0(r2)
000804  b7aa0002  beq r1, zero, 1704
000808  8bb4a320  mul.sl r[9:10], r[7:8], r[10:11]
00080c  b3013028  zext_int2long r[3:4], zero
000810  a380f400  andi.d r[1:2], r[9:10], 15
000814  93a03000  seteq.d r1, r[1:2], r[3:4]
000818  a7810400  addli.d r[3:4], r[9:10], 0
00081c  3be00000  bneq r1, zero, 24
000820  9f002000  addli r1, zero, 16
000824  9f410000  addli r3, zero, 4
000828  b380102a  zext_int2long r[1:2], r1
00082c  8f901462  div.sl r[1:2], r[9:10], r[1:2]
000830  97b13002  sll.d r[3:4], r[1:2], r3
000834  13a93402  setneq.d r18, r[9:10], r[3:4]
000838  9bb02400  slli r1, r9, 2
00083c  8bbc3418  sub.sl r[25:26], r[9:10], r[3:4]
000840  8b171610  add.s r15, r12, r1
000844  3b110900  bneq r18, zero, 68
000848  ab0180ff  lui r3, 1046528
00084c  b7c30200  beq r5, zero, 240
000850  ab0080ff  lui r1, 1046528
000854  b3049028  zext_int2long r[9:10], zero
000858  6a901022  vor.f.mz vr0{mr1}, r1, vr1
00085c  9bb02400  slli r1, r9, 2
000860  a7844400  addli.d r[9:10], r[9:10], 32
000864  8b901710  add.s r1, r15, r1
000868  13a1d404  setlt.ul r2, r[9:10], r[13:14]
00086c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000870  9f808000  addli r1, r1, 64
000874  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000878  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
00087c  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
000880  3b7f01fe  bneq r2, zero, -36
000884  db170000  j 188
000888  abf0ffff  lui r1, 1048575
00088c  9bb12c00  slli r3, r25, 2
000890  1b91f0ff  ori r2, r1, 4095
000894  8b913718  sub.s r3, r15, r3
000898  9b9000fe  ori r1, r1, 4064
00089c  17319101  sll r2, r2, r25
0008a0  1f8e8100  addli r28, r3, 64
0008a4  7e0101e0  vmmov mr2, r2
0008a8  42910104  vload_mask16.mz vr2{mr2}, 0(r3)
0008ac  2b0180ff  lui r2, 1046528
0008b0  6a101122  vor.f.mz vr0{mr1}, r2, vr1
0008b4  1f01ffce  addli r2, r30, -6280
0008b8  eb540100  load.d r[9:10], 0(r2)
0008bc  36102014  vmax.f.mh vr0{mr2}, vr0, vr2
0008c0  8bab9c10  add.ul r[23:24], r[25:26], r[9:10]
0008c4  17881b00  and r16, r23, r1
0008c8  b3149828  sext_int2long r[9:10], r16
0008cc  bf406800  blt.s r16, r6, 48
0008d0  b305b028  zext_int2long r[11:12], zero
0008d4  9bb02500  slli r1, r11, 2
0008d8  a7854500  addli.d r[11:12], r[11:12], 32
0008dc  8b101e10  add.s r1, r28, r1
0008e0  13b19504  setlt.sl r2, r[11:12], r[9:10]
0008e4  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0008e8  9f808000  addli r1, r1, 64
0008ec  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0008f0  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0008f4  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
0008f8  3b7f01fe  bneq r2, zero, -36
0008fc  93b07405  setlt.sl r1, r[9:10], r[23:24]
000900  37b20000  beq r1, zero, 140
000904  abf0ffff  lui r1, 1048575
000908  1b81fb01  andi r2, r23, 31
00090c  9b312800  slli r3, r16, 2
000910  9b90f0ff  ori r1, r1, 4095
000914  17b12000  sll r2, r1, r2
000918  97201100  xor r1, r2, r1
00091c  0b113e10  add.s r2, r28, r3
000920  7e8100e0  vmmov mr2, r1
000924  9bc00001  srli r1, r1, 16
000928  42110104  vload_mask16.mz vr2{mr2}, 0(r2)
00092c  1f018100  addli r2, r2, 64
000930  fe8100e0  vmmov mr3, r1
000934  c2110106  vload_mask16.mz vr3{mr3}, 0(r2)
000938  db090000  j 76
00093c  6a901122  vor.f.mz vr0{mr1}, r3, vr1
000940  9f014fce  addli r3, r30, -6368
000944  ebd00100  load.d r[1:2], 0(r3)
000948  93a01604  setlt.ul r1, r[13:14], r[1:2]
00094c  37810000  beq r1, zero, 64
000950  1f01cfce  addli r2, r30, -6304
000954  9bb02200  slli r1, r5, 2
000958  9f01afce  addli r3, r30, -6320
00095c  63000100  loadli.w zero,  0(r2)
000960  8b901710  add.s r1, r15, r1
000964  7e0100e0  vmmov mr2, zero
000968  17200000  xor zero, zero, zero
00096c  63800100  loadli.w zero,  0(r3)
000970  42910004  vload_mask16.mz vr2{mr2}, 0(r1)
000974  9f808000  addli r1, r1, 64
000978  fe0100e0  vmmov mr3, zero
00097c  17200000  xor zero, zero, zero
000980  c2910006  vload_mask16.mz vr3{mr3}, 0(r1)
000984  36102014  vmax.f.mh vr0{mr2}, vr0, vr2
000988  36103016  vmax.f.mh vr0{mr3}, vr0, vr3
00098c  9f000002  addli r1, zero, 256
000990  6af100c0  vsrl.p vr2, r1, vr0
000994  9f000001  addli r1, zero, 128
000998  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
00099c  6af100c0  vsrl.p vr2, r1, vr0
0009a0  9f008000  addli r1, zero, 64
0009a4  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0009a8  6af100c0  vsrl.p vr2, r1, vr0
0009ac  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0009b0  6af10dc0  vsrl.p vr2, r27, vr0
0009b4  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0009b8  fa100020  vextract.f r1, vr0{mr0}
0009bc  0bee0058  neg.f r28, r1
0009c0  bb220900  bneq r18, zero, 168
0009c4  b7e00200  beq r5, zero, 56
0009c8  b3049028  zext_int2long r[9:10], zero
0009cc  9bb02400  slli r1, r9, 2
0009d0  a7844400  addli.d r[9:10], r[9:10], 32
0009d4  8b901710  add.s r1, r15, r1
0009d8  13a1d404  setlt.ul r2, r[9:10], r[13:14]
0009dc  9f818000  addli r3, r1, 64
0009e0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0009e4  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0009e8  12100e02  vadd.f.mz.rn vr0{mr1}, r28, vr0
0009ec  12112e02  vadd.f.mz.rn vr2{mr1}, r28, vr2
0009f0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0009f4  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0009f8  3b5f01fe  bneq r2, zero, -44
0009fc  9f014fce  addli r3, r30, -6368
000a00  ebd00100  load.d r[1:2], 0(r3)
000a04  93a01604  setlt.ul r1, r[13:14], r[1:2]
000a08  37950000  beq r1, zero, 324
000a0c  9bb02200  slli r1, r5, 2
000a10  1f06dfce  addli r12, r30, -6296
000a14  1f058fce  addli r10, r30, -6336
000a18  e304bfce  loadli.w r9,  -6312(r30)
000a1c  8b951710  add.s r11, r15, r1
000a20  9f002000  addli r1, zero, 16
000a24  eb510600  load.d r[3:4], 0(r12)
000a28  63000500  loadli.w zero,  0(r10)
000a2c  b380102a  zext_int2long r[1:2], r1
000a30  fe0100e0  vmmov mr3, zero
000a34  17200000  xor zero, zero, zero
000a38  93b03004  setlt.sl r1, r[1:2], r[3:4]
000a3c  9f419fce  addli r3, r30, -6324
000a40  42910506  vload_mask16.mz vr2{mr3}, 0(r11)
000a44  1f818500  addli r2, r11, 64
000a48  63800100  loadli.w zero,  0(r3)
000a4c  7e0100e0  vmmov mr2, zero
000a50  17200000  xor zero, zero, zero
000a54  42100104  vload_mask16.mz vr0{mr2}, 0(r2)
000a58  12112e02  vadd.f.mz.rn vr2{mr1}, r28, vr2
000a5c  46902516  vstore_mask16.mh vr2{mr3}, 0(r11)
000a60  3be30000  bneq r1, zero, 216
000a64  5b1d0000  j 232
000a68  abf0ffff  lui r1, 1048575
000a6c  9bb12c00  slli r3, r25, 2
000a70  1b91f0ff  ori r2, r1, 4095
000a74  8b913718  sub.s r3, r15, r3
000a78  9b9000fe  ori r1, r1, 4064
000a7c  17319101  sll r2, r2, r25
000a80  1f888100  addli r16, r3, 64
000a84  7e0101e0  vmmov mr2, r2
000a88  1f01ffce  addli r2, r30, -6280
000a8c  42900104  vload_mask16.mz vr0{mr2}, 0(r3)
000a90  eb540100  load.d r[9:10], 0(r2)
000a94  8ba59c10  add.ul r[11:12], r[25:26], r[9:10]
000a98  12100e02  vadd.f.mz.rn vr0{mr1}, r28, vr0
000a9c  978b1500  and r23, r11, r1
000aa0  b3949b2e  sext_int2long r[9:10], r23
000aa4  46900114  vstore_mask16.mh vr0{mr2}, 0(r3)
000aa8  bfe06b00  blt.s r23, r6, 56
000aac  b3013028  zext_int2long r[3:4], zero
000ab0  9bb02100  slli r1, r3, 2
000ab4  a7814100  addli.d r[3:4], r[3:4], 32
000ab8  8b101810  add.s r1, r16, r1
000abc  13b19104  setlt.sl r2, r[3:4], r[9:10]
000ac0  1f8c8000  addli r24, r1, 64
000ac4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000ac8  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
000acc  12100e02  vadd.f.mz.rn vr0{mr1}, r28, vr0
000ad0  12112e02  vadd.f.mz.rn vr2{mr1}, r28, vr2
000ad4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000ad8  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
000adc  3b5f01fe  bneq r2, zero, -44
000ae0  93b0b404  setlt.sl r1, r[9:10], r[11:12]
000ae4  b7a10000  beq r1, zero, 104
000ae8  abf0ffff  lui r1, 1048575
000aec  0bb19518  sub.sl r[2:3], r[11:12], r[9:10]
000af0  1bb52b00  slli r10, r23, 2
000af4  9b90f0ff  ori r1, r1, 4095
000af8  8b15a810  add.s r11, r16, r10
000afc  17b22000  sll r4, r1, r2
000b00  97241200  xor r9, r4, r1
000b04  9f102000  addli r1, zero, 17
000b08  b38b702b  zext_int2long r[23:24], r1
000b0c  7e8104e0  vmmov mr2, r9
000b10  42910504  vload_mask16.mz vr2{mr2}, 0(r11)
000b14  93307105  setlt.sl r1, r[2:3], r[23:24]
000b18  1f012000  addli r2, zero, 16
000b1c  9f818500  addli r3, r11, 64
000b20  17d12400  sra r2, r9, r2
000b24  fe0101e0  vmmov mr3, r2
000b28  42900106  vload_mask16.mz vr0{mr3}, 0(r3)
000b2c  12112e02  vadd.f.mz.rn vr2{mr1}, r28, vr2
000b30  46902514  vstore_mask16.mh vr2{mr2}, 0(r11)
000b34  3be00000  bneq r1, zero, 24
000b38  12100e02  vadd.f.mz.rn vr0{mr1}, r28, vr0
000b3c  9bc00401  srli r1, r9, 16
000b40  1f818500  addli r2, r11, 64
000b44  7e8100e0  vmmov mr2, r1
000b48  46100114  vstore_mask16.mh vr0{mr2}, 0(r2)
000b4c  00a00000  mfence { lm }
000b50  37a10800  beq r17, zero, 72
000b54  9f040000  addli r9, zero, 0
000b58  1f050b00  addli r10, r22, 0
000b5c  e300f5ff  loadli.w r1,  -8(r10)
000b60  6341f5ff  loadli.w r2,  -4(r10)
000b64  e3010500  loadli.w r3,  0(r10)
000b68  63420500  loadli.w r4,  4(r10)
000b6c  9fc40400  addli r9, r9, 4
000b70  8f801000  exp.f.rn r1, r1
000b74  0f012100  exp.f.rn r2, r2
000b78  8f813100  exp.f.rn r3, r3
000b7c  0f024200  exp.f.rn r4, r4
000b80  e70f15fe  storeli.w r1, -8(r10)
000b84  e74f25fe  storeli.w r2, -4(r10)
000b88  67003500  storeli.w r3, 0(r10)
000b8c  67404500  storeli.w r4, 4(r10)
000b90  1f052500  addli r10, r10, 16
000b94  3faf14ff  blt.s r9, r17, -56
000b98  9f044fce  addli r9, r30, -6368
000b9c  9f010a00  addli r3, r20, 0
000ba0  1f820a00  addli r4, r21, 0
000ba4  ebd00400  load.d r[1:2], 0(r9)
000ba8  93801007  setle.u r1, r1, r17
000bac  3bf00000  bneq r1, zero, 28
000bb0  e3800100  loadli.w r1,  0(r3)
000bb4  1f72f2ff  addli r4, r4, -1
000bb8  8f801000  exp.f.rn r1, r1
000bbc  67801100  storeli.w r1, 0(r3)
000bc0  9fc10100  addli r3, r3, 4
000bc4  bb3f02fe  bneq r4, zero, -20
000bc8  00a00000  mfence { lm }
000bcc  bb710900  bneq r18, zero, 124
000bd0  12301002  vadd.s.mz vr0{mr1}, zero, vr1
000bd4  b7d00200  beq r5, zero, 52
000bd8  b3049028  zext_int2long r[9:10], zero
000bdc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000be0  9bb02400  slli r1, r9, 2
000be4  a7844400  addli.d r[9:10], r[9:10], 32
000be8  8b901710  add.s r1, r15, r1
000bec  13a1d404  setlt.ul r2, r[9:10], r[13:14]
000bf0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000bf4  9f808000  addli r1, r1, 64
000bf8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000bfc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000c00  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000c04  3b7f01fe  bneq r2, zero, -36
000c08  9f014fce  addli r3, r30, -6368
000c0c  ebd00100  load.d r[1:2], 0(r3)
000c10  93a01604  setlt.ul r1, r[13:14], r[1:2]
000c14  b7930000  beq r1, zero, 228
000c18  9bb02200  slli r1, r5, 2
000c1c  1f01afce  addli r2, r30, -6320
000c20  8b941710  add.s r9, r15, r1
000c24  9f00cfce  addli r1, r30, -6304
000c28  63800000  loadli.w zero,  0(r1)
000c2c  7e0100e0  vmmov mr2, zero
000c30  17200000  xor zero, zero, zero
000c34  42910404  vload_mask16.mz vr2{mr2}, 0(r9)
000c38  63000100  loadli.w zero,  0(r2)
000c3c  7e0100e0  vmmov mr2, zero
000c40  17200000  xor zero, zero, zero
000c44  db140000  j 164
000c48  abf0ffff  lui r1, 1048575
000c4c  9bb12c00  slli r3, r25, 2
000c50  1b91f0ff  ori r2, r1, 4095
000c54  8b913718  sub.s r3, r15, r3
000c58  9b9000fe  ori r1, r1, 4064
000c5c  17319101  sll r2, r2, r25
000c60  1f8e8100  addli r28, r3, 64
000c64  7e0101e0  vmmov mr2, r2
000c68  1f01ffce  addli r2, r30, -6280
000c6c  42900104  vload_mask16.mz vr0{mr2}, 0(r3)
000c70  eb540100  load.d r[9:10], 0(r2)
000c74  8bab9c10  add.ul r[23:24], r[25:26], r[9:10]
000c78  17881b00  and r16, r23, r1
000c7c  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000c80  b3149828  sext_int2long r[9:10], r16
000c84  bf406800  blt.s r16, r6, 48
000c88  b305b028  zext_int2long r[11:12], zero
000c8c  9bb02500  slli r1, r11, 2
000c90  a7854500  addli.d r[11:12], r[11:12], 32
000c94  8b101e10  add.s r1, r28, r1
000c98  13b19504  setlt.sl r2, r[11:12], r[9:10]
000c9c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000ca0  9f808000  addli r1, r1, 64
000ca4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000ca8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000cac  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000cb0  3b7f01fe  bneq r2, zero, -36
000cb4  93b07405  setlt.sl r1, r[9:10], r[23:24]
000cb8  37810000  beq r1, zero, 64
000cbc  abf0ffff  lui r1, 1048575
000cc0  1b81fb01  andi r2, r23, 31
000cc4  9b312800  slli r3, r16, 2
000cc8  9b90f0ff  ori r1, r1, 4095
000ccc  8b143e10  add.s r9, r28, r3
000cd0  17b12000  sll r2, r1, r2
000cd4  97201100  xor r1, r2, r1
000cd8  7e8100e0  vmmov mr2, r1
000cdc  9bc00001  srli r1, r1, 16
000ce0  42910404  vload_mask16.mz vr2{mr2}, 0(r9)
000ce4  7e8100e0  vmmov mr2, r1
000ce8  9f808400  addli r1, r9, 64
000cec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000cf0  c2910004  vload_mask16.mz vr3{mr2}, 0(r1)
000cf4  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000cf8  9f000002  addli r1, zero, 256
000cfc  6af100c0  vsrl.p vr2, r1, vr0
000d00  9f000001  addli r1, zero, 128
000d04  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000d08  6af100c0  vsrl.p vr2, r1, vr0
000d0c  9f008000  addli r1, zero, 64
000d10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000d14  6af100c0  vsrl.p vr2, r1, vr0
000d18  ab00803f  lui r1, 260096
000d1c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000d20  6af10dc0  vsrl.p vr2, r27, vr0
000d24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000d28  7a110020  vextract.f r2, vr0{mr0}
000d2c  0f8e2018  div.f.rn r28, r1, r2
000d30  bb220900  bneq r18, zero, 168
000d34  b7e00200  beq r5, zero, 56
000d38  b3013028  zext_int2long r[3:4], zero
000d3c  9bb02100  slli r1, r3, 2
000d40  a7814100  addli.d r[3:4], r[3:4], 32
000d44  8b901710  add.s r1, r15, r1
000d48  13a1d104  setlt.ul r2, r[3:4], r[13:14]
000d4c  9f848000  addli r9, r1, 64
000d50  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000d54  42910402  vload_mask16.mz vr2{mr1}, 0(r9)
000d58  0a100e02  vmul.f.mz.rn vr0{mr1}, r28, vr0
000d5c  0a112e02  vmul.f.mz.rn vr2{mr1}, r28, vr2
000d60  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000d64  46902402  vstore_mask16.mz vr2{mr1}, 0(r9)
000d68  3b5f01fe  bneq r2, zero, -44
000d6c  9f014fce  addli r3, r30, -6368
000d70  ebd00100  load.d r[1:2], 0(r3)
000d74  93a01604  setlt.ul r1, r[13:14], r[1:2]
000d78  b79900fc  beq r1, zero, -1436
000d7c  9bb02200  slli r1, r5, 2
000d80  1f06dfce  addli r12, r30, -6296
000d84  1f058fce  addli r10, r30, -6336
000d88  e304bfce  loadli.w r9,  -6312(r30)
000d8c  8b951710  add.s r11, r15, r1
000d90  9f002000  addli r1, zero, 16
000d94  eb510600  load.d r[3:4], 0(r12)
000d98  63000500  loadli.w zero,  0(r10)
000d9c  b380102a  zext_int2long r[1:2], r1
000da0  fe0100e0  vmmov mr3, zero
000da4  17200000  xor zero, zero, zero
000da8  93b03004  setlt.sl r1, r[1:2], r[3:4]
000dac  9f419fce  addli r3, r30, -6324
000db0  42910506  vload_mask16.mz vr2{mr3}, 0(r11)
000db4  1f818500  addli r2, r11, 64
000db8  63800100  loadli.w zero,  0(r3)
000dbc  7e0100e0  vmmov mr2, zero
000dc0  17200000  xor zero, zero, zero
000dc4  42100104  vload_mask16.mz vr0{mr2}, 0(r2)
000dc8  0a112e02  vmul.f.mz.rn vr2{mr1}, r28, vr2
000dcc  46902516  vstore_mask16.mh vr2{mr3}, 0(r11)
000dd0  bbe700fc  bneq r1, zero, -1544
000dd4  5b41ffff  j -1528
000dd8  abf0ffff  lui r1, 1048575
000ddc  9bb12c00  slli r3, r25, 2
000de0  1b91f0ff  ori r2, r1, 4095
000de4  8b913718  sub.s r3, r15, r3
000de8  9b9000fe  ori r1, r1, 4064
000dec  17319101  sll r2, r2, r25
000df0  9f878100  addli r15, r3, 64
000df4  7e0101e0  vmmov mr2, r2
000df8  1f01ffce  addli r2, r30, -6280
000dfc  42900104  vload_mask16.mz vr0{mr2}, 0(r3)
000e00  eb540100  load.d r[9:10], 0(r2)
000e04  8ba59c10  add.ul r[11:12], r[25:26], r[9:10]
000e08  0a100e02  vmul.f.mz.rn vr0{mr1}, r28, vr0
000e0c  17881500  and r16, r11, r1
000e10  b3149828  sext_int2long r[9:10], r16
000e14  46900114  vstore_mask16.mh vr0{mr2}, 0(r3)
000e18  bf606800  blt.s r16, r6, 56
000e1c  b3013028  zext_int2long r[3:4], zero
000e20  9bb02100  slli r1, r3, 2
000e24  a7814100  addli.d r[3:4], r[3:4], 32
000e28  8b901710  add.s r1, r15, r1
000e2c  13b19104  setlt.sl r2, r[3:4], r[9:10]
000e30  1f898000  addli r18, r1, 64
000e34  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000e38  42110902  vload_mask16.mz vr2{mr1}, 0(r18)
000e3c  0a100e02  vmul.f.mz.rn vr0{mr1}, r28, vr0
000e40  0a112e02  vmul.f.mz.rn vr2{mr1}, r28, vr2
000e44  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000e48  46102902  vstore_mask16.mz vr2{mr1}, 0(r18)
000e4c  3b5f01fe  bneq r2, zero, -44
000e50  93b0b404  setlt.sl r1, r[9:10], r[11:12]
000e54  37a600fc  beq r1, zero, -1656
000e58  abf0ffff  lui r1, 1048575
000e5c  0bb19518  sub.sl r[2:3], r[11:12], r[9:10]
000e60  1b352800  slli r10, r16, 2
000e64  9b90f0ff  ori r1, r1, 4095
000e68  8b95a710  add.s r11, r15, r10
000e6c  17b22000  sll r4, r1, r2
000e70  97241200  xor r9, r4, r1
000e74  9f102000  addli r1, zero, 17
000e78  b387f02a  zext_int2long r[15:16], r1
000e7c  7e8104e0  vmmov mr2, r9
000e80  42910504  vload_mask16.mz vr2{mr2}, 0(r11)
000e84  9330f104  setlt.sl r1, r[2:3], r[15:16]
000e88  1f012000  addli r2, zero, 16
000e8c  9f818500  addli r3, r11, 64
000e90  17d12400  sra r2, r9, r2
000e94  fe0101e0  vmmov mr3, r2
000e98  42900106  vload_mask16.mz vr0{mr3}, 0(r3)
000e9c  0a112e02  vmul.f.mz.rn vr2{mr1}, r28, vr2
000ea0  46902514  vstore_mask16.mh vr2{mr2}, 0(r11)
000ea4  b79400fc  beq r1, zero, -1756
000ea8  db26ffff  j -1740
000eac  9f005fce  addli r1, r30, -6360
000eb0  00a00000  mfence { lm }
000eb4  6bd40000  load.d r[8:9], 0(r1)
000eb8  3f7f64fa  blt.s r8, r6, -2084
000ebc  9f030fcf  addli r7, r30, -6272
000ec0  9f010fcf  addli r3, r30, -6272
000ec4  1f020000  addli r4, zero, 0
000ec8  9f808300  addli r1, r7, 64
000ecc  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
000ed0  9f830301  addli r7, r7, 128
000ed4  1f024200  addli r4, r4, 32
000ed8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000edc  06100100  vfloat2fp16_l.rn vr0, vr2
000ee0  06d00100  vfloat2fp16_h.rn vr0, vr3
000ee4  46800102  vstore.mz vr0{mr1}, 0(r3)
000ee8  9f818100  addli r3, r3, 64
000eec  3f7f82fe  blt.s r4, r8, -36
000ef0  dbf4feff  j -2140
000ef4  8b903220  mul.s r1, r5, r3
000ef8  ab010000  lui r3, 0
000efc  1bb32200  slli r6, r5, 2
000f00  00360002  core_id r12
000f04  b380102a  zext_int2long r[1:2], r1
000f08  9f810100  addli r3, r3, 0
000f0c  93a0d004  setlt.ul r1, r[1:2], r[13:14]
000f10  1b312600  slli r2, r12, 2
000f14  0b123310  add.s r4, r6, r3
000f18  8b173110  add.s r15, r2, r3
000f1c  ab0180ff  lui r3, 1046528
000f20  8b192210  add.s r19, r4, r2
000f24  e7444fce  storeli.w r4, -6324(r30)
000f28  73e03700  stores.w r3, 0(r15)
000f2c  73e00900  stores.w zero, 0(r19)
000f30  37c30000  beq r1, zero, 208
000f34  b3001428  zext_int2long r[1:2], r8
000f38  3383632e  zext_int2long r[6:7], r7
000f3c  8f911476  mod.sl r[3:4], r[9:10], r[1:2]
000f40  8f901462  div.sl r[1:2], r[9:10], r[1:2]
000f44  13343304  setlt.sl r8, r[6:7], r[3:4]
000f48  8b313340  min.sl r[3:4], r[6:7], r[3:4]
000f4c  8bb16050  fmac.sl r[3:4], r[1:2], r[6:7]
000f50  8bba9140  min.sl r[21:22], r[3:4], r[9:10]
000f54  b306d428  zext_int2long r[13:14], r8
000f58  8ba0d010  add.ul r[1:2], r[1:2], r[13:14]
000f5c  8ba03010  add.ul r[1:2], r[1:2], r[3:4]
000f60  9f018fce  addli r3, r30, -6336
000f64  8bb09040  min.sl r[1:2], r[1:2], r[9:10]
000f68  73b01100  store.d r[1:2], 0(r3)
000f6c  93b05007  setle.sl r1, r[1:2], r[21:22]
000f70  bbf40016  bneq r1, zero, 11580
000f74  9f054fce  addli r11, r30, -6368
000f78  9f0b4000  addli r23, zero, 32
000f7c  1f1a0000  addli r20, zero, 1
000f80  ebd40500  load.d r[9:10], 0(r11)
000f84  b3813b2e  zext_int2long r[3:4], r23
000f88  a7f03400  addli.d r[1:2], r[9:10], 31
000f8c  8f903062  div.sl r[1:2], r[1:2], r[3:4]
000f90  b381322a  zext_int2long r[3:4], r5
000f94  8f923072  mod.sl r[5:6], r[1:2], r[3:4]
000f98  8f903062  div.sl r[1:2], r[1:2], r[3:4]
000f9c  b3013628  zext_int2long r[3:4], r12
000fa0  93b35104  setlt.sl r7, r[3:4], r[5:6]
000fa4  8bb25140  min.sl r[5:6], r[3:4], r[5:6]
000fa8  8bb23050  fmac.sl r[5:6], r[1:2], r[3:4]
000fac  9f510000  addli r3, zero, 5
000fb0  b383732e  zext_int2long r[7:8], r7
000fb4  8ba07010  add.ul r[1:2], r[1:2], r[7:8]
000fb8  8ba05010  add.ul r[1:2], r[1:2], r[5:6]
000fbc  17b23202  sll.d r[4:5], r[5:6], r3
000fc0  97b03002  sll.d r[1:2], r[1:2], r3
000fc4  0b3d9240  min.sl r[26:27], r[4:5], r[9:10]
000fc8  9f01ffce  addli r3, r30, -6280
000fcc  8bb09040  min.sl r[1:2], r[1:2], r[9:10]
000fd0  73b01100  store.d r[1:2], 0(r3)
000fd4  8bb4a019  sub.sl r[9:10], r[1:2], r[26:27]
000fd8  b3001a28  zext_int2long r[1:2], r20
000fdc  93b01404  setlt.sl r1, r[9:10], r[1:2]
000fe0  3bbf000c  bneq r1, zero, 7116
000fe4  9f00000c  addli r1, zero, 1536
000fe8  b380102a  zext_int2long r[1:2], r1
000fec  8f91145e  div.ul r[3:4], r[9:10], r[1:2]
000ff0  a3b10102  slli.d r[3:4], r[3:4], 32
000ff4  a3d10102  srai.d r[3:4], r[3:4], 32
000ff8  8bb11120  mul.sl r[3:4], r[3:4], r[1:2]
000ffc  db760300  j 7092
001000  9f00000c  addli r1, zero, 1536
001004  27f1f60b  addli.d r[2:3], r[13:14], 1535
001008  b386d02a  zext_int2long r[13:14], r1
00100c  8f11d15e  div.ul r[3:4], r[2:3], r[13:14]
001010  9ff0f1ff  addli r1, r3, -1
001014  97801100  and r1, r3, r1
001018  37e20000  beq r1, zero, 152
00101c  9bc01100  srli r1, r3, 1
001020  97901100  or r1, r3, r1
001024  1bc12000  srli r2, r1, 2
001028  97902000  or r1, r1, r2
00102c  1bc14000  srli r2, r1, 4
001030  97902000  or r1, r1, r2
001034  1bc18000  srli r2, r1, 8
001038  97902000  or r1, r1, r2
00103c  2bf1ffff  lui r2, 1048575
001040  9bc10001  srli r3, r1, 16
001044  1b11f1ff  ori r2, r2, 4095
001048  97903000  or r1, r1, r3
00104c  ab515555  lui r3, 349525
001050  97a02000  xor r1, r1, r2
001054  1b915155  ori r2, r3, 1365
001058  9bc11000  srli r3, r1, 1
00105c  17812100  and r2, r3, r2
001060  ab313333  lui r3, 209715
001064  8b902018  sub.s r1, r1, r2
001068  1b913133  ori r2, r3, 819
00106c  9bc12000  srli r3, r1, 2
001070  97802000  and r1, r1, r2
001074  17812100  and r2, r3, r2
001078  ab010f0f  lui r3, 61680
00107c  8b902010  add.s r1, r1, r2
001080  9b91f1f0  ori r3, r3, 3855
001084  1bc14000  srli r2, r1, 4
001088  8b902010  add.s r1, r1, r2
00108c  2b010101  lui r2, 4112
001090  1b111110  ori r2, r2, 257
001094  97803000  and r1, r1, r3
001098  8b902020  mul.s r1, r1, r2
00109c  1f014000  addli r2, zero, 32
0010a0  9bc08001  srli r1, r1, 24
0010a4  8b101118  sub.s r1, r2, r1
0010a8  1f110000  addli r2, zero, 1
0010ac  97311100  sll r3, r2, r1
0010b0  8b923230  div.s r5, r5, r3
0010b4  8b105420  mul.s r1, r8, r5
0010b8  8b1c5638  mod.s r25, r12, r5
0010bc  b390102a  sext_int2long r[1:2], r1
0010c0  8f961472  mod.sl r[13:14], r[9:10], r[1:2]
0010c4  8f901462  div.sl r[1:2], r[9:10], r[1:2]
0010c8  8b139451  fmac.s r7, r8, r25
0010cc  b383732e  zext_int2long r[7:8], r7
0010d0  93b5d304  setlt.sl r11, r[7:8], r[13:14]
0010d4  8bb6d340  min.sl r[13:14], r[7:8], r[13:14]
0010d8  8bb67050  fmac.sl r[13:14], r[1:2], r[7:8]
0010dc  8bb39640  min.sl r[7:8], r[13:14], r[9:10]
0010e0  b387f52e  zext_int2long r[15:16], r11
0010e4  8ba0f010  add.ul r[1:2], r[1:2], r[15:16]
0010e8  8ba0d010  add.ul r[1:2], r[1:2], r[13:14]
0010ec  8bb09040  min.sl r[1:2], r[1:2], r[9:10]
0010f0  9f04bfce  addli r9, r30, -6312
0010f4  73b01400  store.d r[1:2], 0(r9)
0010f8  93b07006  setle.sl r1, r[1:2], r[7:8]
0010fc  bbce0014  bneq r1, zero, 11184
001100  9f0a4fce  addli r21, r30, -6368
001104  9f044000  addli r9, zero, 32
001108  0b165630  div.s r12, r12, r5
00110c  ebd90a00  load.d r[19:20], 0(r21)
001110  b384942a  zext_int2long r[9:10], r9
001114  a7f03900  addli.d r[1:2], r[19:20], 31
001118  8f909062  div.sl r[1:2], r[1:2], r[9:10]
00111c  b394912e  sext_int2long r[9:10], r3
001120  8f969072  mod.sl r[13:14], r[1:2], r[9:10]
001124  8f909062  div.sl r[1:2], r[1:2], r[9:10]
001128  b3149628  sext_int2long r[9:10], r12
00112c  93b5d404  setlt.sl r11, r[9:10], r[13:14]
001130  8bb6d440  min.sl r[13:14], r[9:10], r[13:14]
001134  8bb69050  fmac.sl r[13:14], r[1:2], r[9:10]
001138  b387f52e  zext_int2long r[15:16], r11
00113c  9f550000  addli r11, zero, 5
001140  8ba0f010  add.ul r[1:2], r[1:2], r[15:16]
001144  97b4b602  sll.d r[9:10], r[13:14], r11
001148  8ba0d010  add.ul r[1:2], r[1:2], r[13:14]
00114c  8bb83441  min.sl r[17:18], r[9:10], r[19:20]
001150  97b0b002  sll.d r[1:2], r[1:2], r11
001154  8bb43041  min.sl r[9:10], r[1:2], r[19:20]
001158  1f014000  addli r2, zero, 32
00115c  93b01407  setle.sl r1, r[9:10], r[17:18]
001160  3bbd0014  bneq r1, zero, 11084
001164  8bb61419  sub.sl r[13:14], r[9:10], r[17:18]
001168  9f070fcf  addli r15, r30, -6272
00116c  1bb82c00  slli r16, r25, 2
001170  1f1d0000  addli r26, zero, 1
001174  1f008fce  addli zero, r30, -6336
001178  9f0b0fff  addli r23, r30, -128
00117c  1bbb2200  slli r22, r5, 2
001180  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001184  9ff0f6ff  addli r1, r13, -1
001188  9bb51600  slli r11, r13, 1
00118c  1b8af601  andi r20, r13, 31
001190  97bda803  sll.d r[27:28], r[17:18], r26
001194  7e000de0  vmmov mr0, r26
001198  8b902030  div.s r1, r1, r2
00119c  2bf1ffff  lui r2, 1048575
0011a0  670cbfcc  storeli.w r11, -6464(r30)
0011a4  e70e9fcd  storeli.w r25, -6424(r30)
0011a8  9b1501fe  ori r11, r2, 4064
0011ac  1b1cf1ff  ori r24, r2, 4095
0011b0  9bb97000  slli r19, r1, 7
0011b4  9bba6000  slli r21, r1, 6
0011b8  97a08001  xor r1, r1, r24
0011bc  8b993711  add.s r19, r15, r19
0011c0  9bb05000  slli r1, r1, 5
0011c4  e70f3fcd  storeli.w r19, -6408(r30)
0011c8  8b995711  add.s r19, r15, r21
0011cc  674f3fcd  storeli.w r19, -6412(r30)
0011d0  9789b600  and r19, r13, r11
0011d4  97354c01  sll r11, r24, r20
0011d8  1bba2900  slli r20, r19, 2
0011dc  97a58501  xor r11, r11, r24
0011e0  0b9a4711  add.s r20, r15, r20
0011e4  9bca0501  srli r21, r11, 16
0011e8  7e8105e0  vmmov mr2, r11
0011ec  9f850c00  addli r11, r25, 0
0011f0  9f0cbfcd  addli r25, r30, -6440
0011f4  8b155650  fmac.s r11, r12, r5
0011f8  1f068a00  addli r12, r20, 64
0011fc  fe810ae0  vmmov mr3, r21
001200  e7074fcf  storeli.w r20, -6280(r30)
001204  6707cfce  storeli.w r12, -6288(r30)
001208  2b060000  lui r12, 0
00120c  6bda0c00  load.d r[20:21], 0(r25)
001210  9bb52500  slli r11, r11, 2
001214  674e1fcc  storeli.w r1, -6428(r30)
001218  e30c8fcd  loadli.w r25,  -6464(r30)
00121c  e7400fcf  storeli.w r16, -6388(r30)
001220  1f060600  addli r12, r12, 0
001224  0b2aba11  add.ul r[20:21], r[20:21], r[27:28]
001228  0b96c510  add.s r12, r11, r12
00122c  73304001  store.d r[20:21], 0(zero)
001230  17200000  xor zero, zero, zero
001234  1f00afcd  addli zero, r30, -6448
001238  6705cfce  storeli.w r12, -6320(r30)
00123c  0b966b11  add.s r12, r23, r22
001240  6b5a0000  load.d r[20:21], 0(zero)
001244  670fcfcc  storeli.w r12, -6416(r30)
001248  1b16c1ff  ori r12, r2, 4092
00124c  17200000  xor zero, zero, zero
001250  0b2aba11  add.ul r[20:21], r[20:21], r[27:28]
001254  9f0d7fce  addli r27, r30, -6344
001258  178ec600  and r28, r13, r12
00125c  73b04d01  store.d r[20:21], 0(r27)
001260  1f8a8b00  addli r20, r23, 64
001264  0b161e11  add.s r12, r28, r17
001268  9f0d8000  addli r27, zero, 64
00126c  67414fcf  storeli.w r20, -6380(r30)
001270  634a9fce  loadli.w r20,  -6324(r30)
001274  8b15ba10  add.s r11, r20, r11
001278  6743bfce  storeli.w r11, -6348(r30)
00127c  9f058a00  addli r11, r20, 64
001280  6707bfcc  storeli.w r11, -6544(r30)
001284  8b951911  add.s r11, r19, r17
001288  9f080a01  addli r17, r20, 128
00128c  8b909518  sub.s r1, r11, r9
001290  e7061fcd  storeli.w r17, -6552(r30)
001294  b398192f  sext_int2long r[17:18], r19
001298  67011fce  storeli.w r1, -6384(r30)
00129c  8b109618  sub.s r1, r12, r9
0012a0  9b1401f8  ori r9, r2, 3968
0012a4  1b1101ff  ori r2, r2, 4080
0012a8  e7021fce  storeli.w r1, -6360(r30)
0012ac  9bb02600  slli r1, r13, 2
0012b0  97849000  and r9, r1, r9
0012b4  97802000  and r1, r1, r2
0012b8  2b010000  lui r2, 0
0012bc  1f010100  addli r2, r2, 0
0012c0  8b901710  add.s r1, r15, r1
0012c4  0b9c9710  add.s r24, r15, r9
0012c8  9f041fce  addli r9, r30, -6392
0012cc  0b112810  add.s r2, r16, r2
0012d0  e7011fce  storeli.w r1, -6376(r30)
0012d4  1f580000  addli r16, zero, 5
0012d8  8b106110  add.s r1, r2, r6
0012dc  670d2fcc  storeli.w r2, -6448(r30)
0012e0  1f03dfce  addli r6, r30, -6296
0012e4  e70c1fcc  storeli.w r1, -6456(r30)
0012e8  9f008a01  addli r1, r20, 192
0012ec  1f0a4000  addli r20, zero, 32
0012f0  7e0001a0  vmmov zero, mr2
0012f4  67461fcc  storeli.w r1, -6556(r30)
0012f8  9b908700  ori r1, r15, 8
0012fc  67001fce  storeli.w r1, -6400(r30)
001300  b390122a  sext_int2long r[1:2], r5
001304  73301300  store.d r[1:2], 0(r6)
001308  9f00bfcd  addli r1, r30, -6440
00130c  1f01cfce  addli r2, r30, -6304
001310  67800000  storeli.w zero, 0(r1)
001314  17200000  xor zero, zero, zero
001318  7e8001a0  vmmov zero, mr3
00131c  67000100  storeli.w zero, 0(r2)
001320  17200000  xor zero, zero, zero
001324  7e0000a0  vmmov zero, mr0
001328  67800400  storeli.w zero, 0(r9)
00132c  17200000  xor zero, zero, zero
001330  5b070000  j 56
001334  1f03bfce  addli r6, r30, -6312
001338  00a00000  mfence { lm }
00133c  ab0000f0  lui r1, 983040
001340  a7930300  addli.d r[7:8], r[7:8], 1
001344  9f0a7fce  addli r21, r30, -6344
001348  eb550300  load.d r[11:12], 0(r6)
00134c  97901c00  or r1, r25, r1
001350  13b1b304  setlt.sl r2, r[7:8], r[11:12]
001354  ebd50a00  load.d r[11:12], 0(r21)
001358  8ba49510  add.ul r[9:10], r[11:12], r[9:10]
00135c  ffb0f400  s_lm2gm r1, r15, 0(r[9:10])
001360  00a00200  mfence { lm, gm }
001364  37250114  beq r2, zero, 10568
001368  9f054fce  addli r11, r30, -6368
00136c  9f8a0c00  addli r21, r25, 0
001370  ebd00500  load.d r[1:2], 0(r11)
001374  2b0300f0  lui r6, 983040
001378  8bb01320  mul.sl r[1:2], r[7:8], r[1:2]
00137c  97b4a003  sll.d r[9:10], r[1:2], r26
001380  1f018fce  addli r2, r30, -6336
001384  97906c00  or r1, r25, r6
001388  eb550100  load.d r[11:12], 0(r2)
00138c  8ba59510  add.ul r[11:12], r[11:12], r[9:10]
001390  ffa0f500  l_gm2lm r1, r15, 0(r[11:12])
001394  00a00200  mfence { lm, gm }
001398  abf0ffff  lui r1, 1048575
00139c  9b9020fe  ori r1, r1, 4066
0013a0  bfe01600  blt.s r13, r1, 56
0013a4  6343cfcd  loadli.w r6,  -6428(r30)
0013a8  e345efcd  loadli.w r11,  -6412(r30)
0013ac  e30cffcd  loadli.w r25,  -6408(r30)
0013b0  42800502  vload.mz vr0{mr1}, 0(r11)
0013b4  06310000  vfp162float_l.rn vr2, vr0
0013b8  9f808c00  addli r1, r25, 64
0013bc  86710000  vfp162float_h.rn vr3, vr0
0013c0  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0013c4  46902c02  vstore_mask16.mz vr2{mr1}, 0(r25)
0013c8  9f8585ff  addli r11, r11, -64
0013cc  1f034300  addli r6, r6, 32
0013d0  9f8c0cff  addli r25, r25, -128
0013d4  3b7f03fe  bneq r6, zero, -36
0013d8  2b0380ff  lui r6, 1046528
0013dc  00a00000  mfence { lm }
0013e0  bfc9a901  blt.s r19, r26, 624
0013e4  ab0080ff  lui r1, 1046528
0013e8  b305b028  zext_int2long r[11:12], zero
0013ec  1f030001  addli r6, zero, 128
0013f0  6a901022  vor.f.mz vr0{mr1}, r1, vr1
0013f4  9bb02500  slli r1, r11, 2
0013f8  a7854500  addli.d r[11:12], r[11:12], 32
0013fc  8b901710  add.s r1, r15, r1
001400  13b11505  setlt.sl r2, r[11:12], r[17:18]
001404  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001408  9f808000  addli r1, r1, 64
00140c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001410  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
001414  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
001418  3b7f01fe  bneq r2, zero, -36
00141c  93bcd804  setlt.sl r25, r[17:18], r[13:14]
001420  b7b00c00  beq r25, zero, 44
001424  e300ffce  loadli.w r1,  -6280(r30)
001428  1f01cfce  addli r2, r30, -6304
00142c  63000100  loadli.w zero,  0(r2)
001430  42910004  vload_mask16.mz vr2{mr2}, 0(r1)
001434  e300efce  loadli.w r1,  -6288(r30)
001438  fe0100e0  vmmov mr3, zero
00143c  17200000  xor zero, zero, zero
001440  c2910006  vload_mask16.mz vr3{mr3}, 0(r1)
001444  36102014  vmax.f.mh vr0{mr2}, vr0, vr2
001448  36103016  vmax.f.mh vr0{mr3}, vr0, vr3
00144c  9f00dfce  addli r1, r30, -6296
001450  6301afce  loadli.w r2,  -6320(r30)
001454  ebd50000  load.d r[11:12], 0(r1)
001458  9f000002  addli r1, zero, 256
00145c  6af100c0  vsrl.p vr2, r1, vr0
001460  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
001464  6a7103c0  vsrl.p vr2, r6, vr0
001468  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
00146c  6af10dc0  vsrl.p vr2, r27, vr0
001470  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
001474  6a710ac0  vsrl.p vr2, r20, vr0
001478  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
00147c  fa100020  vextract.f r1, vr0{mr0}
001480  73601100  stores.w r1, 0(r2)
001484  00200100  mfence { sm }
001488  37e1b201  beq r5, r27, 88
00148c  9f701000  addli r1, zero, 15
001490  00300000  sync_local
001494  3fb15000  blt.s r1, r5, 76
001498  9f100002  addli r1, zero, 257
00149c  670a1ffe  storeli.w r1, -96(r30)
0014a0  9f102022  addli r1, zero, 4369
0014a4  67091ffe  storeli.w r1, -112(r30)
0014a8  ab500000  lui r1, 5
0014ac  9b905055  ori r1, r1, 1365
0014b0  e7081ffe  storeli.w r1, -120(r30)
0014b4  abf00000  lui r1, 15
0014b8  6301efcd  loadli.w r2,  -6416(r30)
0014bc  6303dfcd  loadli.w r6,  -6424(r30)
0014c0  9b90f0ff  ori r1, r1, 4095
0014c4  67481ffe  storeli.w r1, -124(r30)
0014c8  63010100  loadli.w r2,  0(r2)
0014cc  17316100  sll r2, r2, r6
0014d0  1f030001  addli r6, zero, 128
0014d4  97001100  and r1, r2, r1
0014d8  80a10004  csr_set csr3, r1
0014dc  00d00100  sync_group
0014e0  bfc00201  blt.s r5, r16, 48
0014e4  2b0380ff  lui r6, 1046528
0014e8  bfe6a103  blt.s r3, r26, 1464
0014ec  2b0380ff  lui r6, 1046528
0014f0  e305afcd  loadli.w r11,  -6448(r30)
0014f4  1f860100  addli r12, r3, 0
0014f8  efc00500  loads.w r1, 0(r11)
0014fc  1f76f6ff  addli r12, r12, -1
001500  8b956511  add.s r11, r11, r22
001504  0b631348  max.f r6, r6, r1
001508  bb4f06fe  bneq r12, zero, -16
00150c  dbb20000  j 1428
001510  9f200000  addli r1, zero, 2
001514  b380102a  zext_int2long r[1:2], r1
001518  93a01500  seteq.d r1, r[11:12], r[1:2]
00151c  3ba50000  bneq r1, zero, 328
001520  9f400000  addli r1, zero, 4
001524  b380102a  zext_int2long r[1:2], r1
001528  93a01502  setneq.d r1, r[11:12], r[1:2]
00152c  3be40002  bneq r1, zero, 1304
001530  6a200002  vand.u.mz vr0{mr1}, zero, vr0
001534  9b300d00  slli r1, r26, 0
001538  1f011fce  addli r2, r30, -6392
00153c  7e8000e0  vmmov mr0, r1
001540  9b301d00  slli r1, r26, 1
001544  6a200030  vor.u.mh vr0{mr0}, zero, vr0
001548  7e8000e0  vmmov mr0, r1
00154c  9f002000  addli r1, zero, 16
001550  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001554  9b302d00  slli r1, r26, 2
001558  7e8000e0  vmmov mr0, r1
00155c  9b303d00  slli r1, r26, 3
001560  6a200a30  vor.u.mh vr0{mr0}, r20, vr0
001564  7e8000e0  vmmov mr0, r1
001568  9f006000  addli r1, zero, 48
00156c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001570  9b304d00  slli r1, r26, 4
001574  7e8000e0  vmmov mr0, r1
001578  9b305d00  slli r1, r26, 5
00157c  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
001580  7e8000e0  vmmov mr0, r1
001584  9f00a000  addli r1, zero, 80
001588  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00158c  9b306d00  slli r1, r26, 6
001590  7e8000e0  vmmov mr0, r1
001594  9f00c000  addli r1, zero, 96
001598  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00159c  9b307d00  slli r1, r26, 7
0015a0  7e8000e0  vmmov mr0, r1
0015a4  9f00e000  addli r1, zero, 112
0015a8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0015ac  9b308d00  slli r1, r26, 8
0015b0  7e8000e0  vmmov mr0, r1
0015b4  9b309d00  slli r1, r26, 9
0015b8  6a200330  vor.u.mh vr0{mr0}, r6, vr0
0015bc  7e8000e0  vmmov mr0, r1
0015c0  9f002001  addli r1, zero, 144
0015c4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0015c8  9b30ad00  slli r1, r26, 10
0015cc  7e8000e0  vmmov mr0, r1
0015d0  9f004001  addli r1, zero, 160
0015d4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0015d8  9b30bd00  slli r1, r26, 11
0015dc  7e8000e0  vmmov mr0, r1
0015e0  9f006001  addli r1, zero, 176
0015e4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0015e8  9b30cd00  slli r1, r26, 12
0015ec  7e8000e0  vmmov mr0, r1
0015f0  9f008001  addli r1, zero, 192
0015f4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0015f8  9b30dd00  slli r1, r26, 13
0015fc  7e8000e0  vmmov mr0, r1
001600  9f00a001  addli r1, zero, 208
001604  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001608  9b30ed00  slli r1, r26, 14
00160c  7e8000e0  vmmov mr0, r1
001610  9f00c001  addli r1, zero, 224
001614  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001618  ab800000  lui r1, 8
00161c  9f800000  addli r1, r1, 0
001620  7e8000e0  vmmov mr0, r1
001624  9f00e001  addli r1, zero, 240
001628  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00162c  e3401fce  loadli.w r1,  -6388(r30)
001630  63000100  loadli.w zero,  0(r2)
001634  7e0000e0  vmmov mr0, zero
001638  17200000  xor zero, zero, zero
00163c  12b00002  vadd.s.mz vr0{mr1}, r1, vr0
001640  ab000000  lui r1, 0
001644  9f800000  addli r1, r1, 0
001648  62b00002  vgathers_mask16.mz vr0{mr1}, vr0{r1}
00164c  db850000  j 1068
001650  6a101322  vor.f.mz vr0{mr1}, r6, vr1
001654  1f030001  addli r6, zero, 128
001658  93bcd804  setlt.sl r25, r[17:18], r[13:14]
00165c  3ba70cfe  bneq r25, zero, -568
001660  dbbdffff  j -532
001664  9b300d00  slli r1, r26, 0
001668  6a200002  vand.u.mz vr0{mr1}, zero, vr0
00166c  1f018fcd  addli r2, r30, -6464
001670  9f057fcd  addli r11, r30, -6472
001674  1f466fcd  addli r12, r30, -6476
001678  1f085fcd  addli r16, r30, -6488
00167c  7e8000e0  vmmov mr0, r1
001680  9b301d00  slli r1, r26, 1
001684  7e0000a0  vmmov zero, mr0
001688  67000100  storeli.w zero, 0(r2)
00168c  17200000  xor zero, zero, zero
001690  6a200030  vor.u.mh vr0{mr0}, zero, vr0
001694  7e8000e0  vmmov mr0, r1
001698  7e0000a0  vmmov zero, mr0
00169c  67800500  storeli.w zero, 0(r11)
0016a0  17200000  xor zero, zero, zero
0016a4  9f001000  addli r1, zero, 8
0016a8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0016ac  9b302d00  slli r1, r26, 2
0016b0  7e8000e0  vmmov mr0, r1
0016b4  7e0000a0  vmmov zero, mr0
0016b8  67000600  storeli.w zero, 0(r12)
0016bc  17200000  xor zero, zero, zero
0016c0  9f002000  addli r1, zero, 16
0016c4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0016c8  9b303d00  slli r1, r26, 3
0016cc  7e8000e0  vmmov mr0, r1
0016d0  7e0000a0  vmmov zero, mr0
0016d4  67000800  storeli.w zero, 0(r16)
0016d8  17200000  xor zero, zero, zero
0016dc  9f003000  addli r1, zero, 24
0016e0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0016e4  9b304d00  slli r1, r26, 4
0016e8  7e8000e0  vmmov mr0, r1
0016ec  9f004fcd  addli r1, r30, -6496
0016f0  7e0000a0  vmmov zero, mr0
0016f4  67800000  storeli.w zero, 0(r1)
0016f8  9b305d00  slli r1, r26, 5
0016fc  6a200a30  vor.u.mh vr0{mr0}, r20, vr0
001700  17200000  xor zero, zero, zero
001704  7e8000e0  vmmov mr0, r1
001708  9f403fcd  addli r1, r30, -6500
00170c  7e0000a0  vmmov zero, mr0
001710  67800000  storeli.w zero, 0(r1)
001714  17200000  xor zero, zero, zero
001718  9f005000  addli r1, zero, 40
00171c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001720  9b306d00  slli r1, r26, 6
001724  7e8000e0  vmmov mr0, r1
001728  9f003fcd  addli r1, r30, -6504
00172c  7e0000a0  vmmov zero, mr0
001730  67800000  storeli.w zero, 0(r1)
001734  17200000  xor zero, zero, zero
001738  9f006000  addli r1, zero, 48
00173c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001740  9b307d00  slli r1, r26, 7
001744  7e8000e0  vmmov mr0, r1
001748  9f002fcd  addli r1, r30, -6512
00174c  7e0000a0  vmmov zero, mr0
001750  67800000  storeli.w zero, 0(r1)
001754  17200000  xor zero, zero, zero
001758  9f007000  addli r1, zero, 56
00175c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001760  9b308d00  slli r1, r26, 8
001764  7e8000e0  vmmov mr0, r1
001768  9f001fcd  addli r1, r30, -6520
00176c  7e0000a0  vmmov zero, mr0
001770  67800000  storeli.w zero, 0(r1)
001774  9b309d00  slli r1, r26, 9
001778  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
00177c  17200000  xor zero, zero, zero
001780  7e8000e0  vmmov mr0, r1
001784  9f000fcd  addli r1, r30, -6528
001788  7e0000a0  vmmov zero, mr0
00178c  67800000  storeli.w zero, 0(r1)
001790  17200000  xor zero, zero, zero
001794  9f009000  addli r1, zero, 72
001798  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00179c  9b30ad00  slli r1, r26, 10
0017a0  7e8000e0  vmmov mr0, r1
0017a4  9f40ffcc  addli r1, r30, -6532
0017a8  7e0000a0  vmmov zero, mr0
0017ac  67800000  storeli.w zero, 0(r1)
0017b0  17200000  xor zero, zero, zero
0017b4  9f00a000  addli r1, zero, 80
0017b8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0017bc  9b30bd00  slli r1, r26, 11
0017c0  7e8000e0  vmmov mr0, r1
0017c4  9f00ffcc  addli r1, r30, -6536
0017c8  7e0000a0  vmmov zero, mr0
0017cc  67800000  storeli.w zero, 0(r1)
0017d0  17200000  xor zero, zero, zero
0017d4  9f00b000  addli r1, zero, 88
0017d8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0017dc  9b30cd00  slli r1, r26, 12
0017e0  7e8000e0  vmmov mr0, r1
0017e4  9f40efcc  addli r1, r30, -6540
0017e8  7e0000a0  vmmov zero, mr0
0017ec  67800000  storeli.w zero, 0(r1)
0017f0  17200000  xor zero, zero, zero
0017f4  9f00c000  addli r1, zero, 96
0017f8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0017fc  9b30dd00  slli r1, r26, 13
001800  7e8100e0  vmmov mr2, r1
001804  9f00d000  addli r1, zero, 104
001808  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
00180c  9b30ed00  slli r1, r26, 14
001810  7e8000e0  vmmov mr0, r1
001814  9f00e000  addli r1, zero, 112
001818  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00181c  ab800000  lui r1, 8
001820  9f800000  addli r1, r1, 0
001824  fe8100e0  vmmov mr3, r1
001828  9f00f000  addli r1, zero, 120
00182c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001830  9f00cfce  addli r1, r30, -6304
001834  63800000  loadli.w zero,  0(r1)
001838  fe0100e0  vmmov mr3, zero
00183c  17200000  xor zero, zero, zero
001840  6a210002  vand.u.mz vr2{mr1}, zero, vr0
001844  e7cffeff  storeli.w r31, -4(sp)
001848  9f0f8fcd  addli r31, r30, -6464
00184c  63800f00  loadli.w zero,  0(r31)
001850  e3cffeff  loadli.w r31,  -4(sp)
001854  fe0100e0  vmmov mr3, zero
001858  17200000  xor zero, zero, zero
00185c  6a212336  vor.u.mh vr2{mr3}, r6, vr2
001860  e7cffeff  storeli.w r31, -4(sp)
001864  9f0f7fcd  addli r31, r30, -6472
001868  9f001001  addli r1, zero, 136
00186c  63800f00  loadli.w zero,  0(r31)
001870  e3cffeff  loadli.w r31,  -4(sp)
001874  fe0100e0  vmmov mr3, zero
001878  17200000  xor zero, zero, zero
00187c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001880  e7cffeff  storeli.w r31, -4(sp)
001884  9f4f6fcd  addli r31, r30, -6476
001888  9f002001  addli r1, zero, 144
00188c  63800f00  loadli.w zero,  0(r31)
001890  e3cffeff  loadli.w r31,  -4(sp)
001894  fe0100e0  vmmov mr3, zero
001898  17200000  xor zero, zero, zero
00189c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0018a0  e7cffeff  storeli.w r31, -4(sp)
0018a4  9f0f5fcd  addli r31, r30, -6488
0018a8  9f003001  addli r1, zero, 152
0018ac  63800f00  loadli.w zero,  0(r31)
0018b0  e3cffeff  loadli.w r31,  -4(sp)
0018b4  fe0100e0  vmmov mr3, zero
0018b8  17200000  xor zero, zero, zero
0018bc  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0018c0  e7cffeff  storeli.w r31, -4(sp)
0018c4  9f0f4fcd  addli r31, r30, -6496
0018c8  9f004001  addli r1, zero, 160
0018cc  63800f00  loadli.w zero,  0(r31)
0018d0  e3cffeff  loadli.w r31,  -4(sp)
0018d4  fe0100e0  vmmov mr3, zero
0018d8  17200000  xor zero, zero, zero
0018dc  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0018e0  e7cffeff  storeli.w r31, -4(sp)
0018e4  9f4f3fcd  addli r31, r30, -6500
0018e8  9f005001  addli r1, zero, 168
0018ec  63800f00  loadli.w zero,  0(r31)
0018f0  e3cffeff  loadli.w r31,  -4(sp)
0018f4  fe0100e0  vmmov mr3, zero
0018f8  17200000  xor zero, zero, zero
0018fc  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001900  e7cffeff  storeli.w r31, -4(sp)
001904  9f0f3fcd  addli r31, r30, -6504
001908  9f006001  addli r1, zero, 176
00190c  63800f00  loadli.w zero,  0(r31)
001910  e3cffeff  loadli.w r31,  -4(sp)
001914  fe0100e0  vmmov mr3, zero
001918  17200000  xor zero, zero, zero
00191c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001920  e7cffeff  storeli.w r31, -4(sp)
001924  9f0f2fcd  addli r31, r30, -6512
001928  9f007001  addli r1, zero, 184
00192c  63800f00  loadli.w zero,  0(r31)
001930  e3cffeff  loadli.w r31,  -4(sp)
001934  fe0100e0  vmmov mr3, zero
001938  17200000  xor zero, zero, zero
00193c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001940  e7cffeff  storeli.w r31, -4(sp)
001944  9f0f1fcd  addli r31, r30, -6520
001948  9f008001  addli r1, zero, 192
00194c  63800f00  loadli.w zero,  0(r31)
001950  e3cffeff  loadli.w r31,  -4(sp)
001954  fe0100e0  vmmov mr3, zero
001958  17200000  xor zero, zero, zero
00195c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001960  e7cffeff  storeli.w r31, -4(sp)
001964  9f0f0fcd  addli r31, r30, -6528
001968  9f009001  addli r1, zero, 200
00196c  63800f00  loadli.w zero,  0(r31)
001970  e3cffeff  loadli.w r31,  -4(sp)
001974  fe0100e0  vmmov mr3, zero
001978  17200000  xor zero, zero, zero
00197c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001980  e7cffeff  storeli.w r31, -4(sp)
001984  9f4fffcc  addli r31, r30, -6532
001988  9f00a001  addli r1, zero, 208
00198c  63800f00  loadli.w zero,  0(r31)
001990  e3cffeff  loadli.w r31,  -4(sp)
001994  fe0100e0  vmmov mr3, zero
001998  17200000  xor zero, zero, zero
00199c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0019a0  e7cffeff  storeli.w r31, -4(sp)
0019a4  9f0fffcc  addli r31, r30, -6536
0019a8  9f00b001  addli r1, zero, 216
0019ac  63800f00  loadli.w zero,  0(r31)
0019b0  e3cffeff  loadli.w r31,  -4(sp)
0019b4  fe0100e0  vmmov mr3, zero
0019b8  17200000  xor zero, zero, zero
0019bc  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0019c0  e7cffeff  storeli.w r31, -4(sp)
0019c4  9f4fefcc  addli r31, r30, -6540
0019c8  9f00c001  addli r1, zero, 224
0019cc  63800f00  loadli.w zero,  0(r31)
0019d0  e3cffeff  loadli.w r31,  -4(sp)
0019d4  fe0100e0  vmmov mr3, zero
0019d8  17200000  xor zero, zero, zero
0019dc  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0019e0  9f00d001  addli r1, zero, 232
0019e4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0019e8  9f00bfcd  addli r1, r30, -6440
0019ec  63800000  loadli.w zero,  0(r1)
0019f0  7e0100e0  vmmov mr2, zero
0019f4  17200000  xor zero, zero, zero
0019f8  9f00e001  addli r1, zero, 240
0019fc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
001a00  ab800000  lui r1, 8
001a04  9f800000  addli r1, r1, 0
001a08  7e8000e0  vmmov mr0, r1
001a0c  9f00f001  addli r1, zero, 248
001a10  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
001a14  9f001fce  addli r1, r30, -6392
001a18  63800000  loadli.w zero,  0(r1)
001a1c  e3401fce  loadli.w r1,  -6388(r30)
001a20  12b00002  vadd.s.mz vr0{mr1}, r1, vr0
001a24  12b12002  vadd.s.mz vr2{mr1}, r1, vr2
001a28  ab000000  lui r1, 0
001a2c  7e0000e0  vmmov mr0, zero
001a30  17200000  xor zero, zero, zero
001a34  9f800000  addli r1, r1, 0
001a38  62b00002  vgathers_mask16.mz vr0{mr1}, vr0{r1}
001a3c  62b12002  vgathers_mask16.mz vr2{mr1}, vr2{r1}
001a40  db060000  j 52
001a44  ab000000  lui r1, 0
001a48  9f800000  addli r1, r1, 0
001a4c  1f810000  addli r2, r1, 0
001a50  9f008100  addli r1, r2, 64
001a54  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
001a58  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
001a5c  9f000101  addli r1, r2, 128
001a60  1f018101  addli r2, r2, 192
001a64  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
001a68  4a120102  vloads_mask16.mz vr4{mr1}, 0(r2)
001a6c  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
001a70  36114102  vmax.f.mz vr2{mr1}, vr2, vr4
001a74  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
001a78  9f000002  addli r1, zero, 256
001a7c  6af100c0  vsrl.p vr2, r1, vr0
001a80  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
001a84  6a7103c0  vsrl.p vr2, r6, vr0
001a88  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
001a8c  6af10dc0  vsrl.p vr2, r27, vr0
001a90  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
001a94  6a710ac0  vsrl.p vr2, r20, vr0
001a98  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
001a9c  7a130020  vextract.f r6, vr0{mr0}
001aa0  0b630358  neg.f r6, r6
001aa4  00a00000  mfence { lm }
001aa8  bfd0a901  blt.s r19, r26, 52
001aac  9f050fcf  addli r11, r30, -6272
001ab0  1f060000  addli r12, zero, 0
001ab4  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
001ab8  9f808500  addli r1, r11, 64
001abc  1f064600  addli r12, r12, 32
001ac0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001ac4  12100302  vadd.f.mz.rn vr0{mr1}, r6, vr0
001ac8  12112302  vadd.f.mz.rn vr2{mr1}, r6, vr2
001acc  46900502  vstore_mask16.mz vr0{mr1}, 0(r11)
001ad0  9f850501  addli r11, r11, 128
001ad4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
001ad8  3f7f36ff  blt.s r12, r19, -36
001adc  3fa0d900  blt.s r19, r13, 8
001ae0  5b0b0000  j 88
001ae4  00a00000  mfence { lm }
001ae8  9f050000  addli r11, zero, 0
001aec  e300ffce  loadli.w r1,  -6280(r30)
001af0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001af4  e300efce  loadli.w r1,  -6288(r30)
001af8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001afc  00a00000  mfence { lm }
001b00  e3402fce  loadli.w r1,  -6380(r30)
001b04  12100302  vadd.f.mz.rn vr0{mr1}, r6, vr0
001b08  12112302  vadd.f.mz.rn vr2{mr1}, r6, vr2
001b0c  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
001b10  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
001b14  00a00000  mfence { lm }
001b18  63032fce  loadli.w r6,  -6384(r30)
001b1c  8b90bb10  add.s r1, r23, r11
001b20  0b11bc10  add.s r2, r24, r11
001b24  1f130300  addli r6, r6, 1
001b28  9fc50500  addli r11, r11, 4
001b2c  e3800000  loadli.w r1,  0(r1)
001b30  67001100  storeli.w r1, 0(r2)
001b34  bb2f03fe  bneq r6, zero, -24
001b38  00a00000  mfence { lm }
001b3c  3f21ae01  blt.s r28, r26, 72
001b40  e3050fce  loadli.w r11,  -6400(r30)
001b44  1f030000  addli r6, zero, 0
001b48  e380f5ff  loadli.w r1,  -8(r11)
001b4c  63c1f5ff  loadli.w r2,  -4(r11)
001b50  63860500  loadli.w r12,  0(r11)
001b54  63c80500  loadli.w r16,  4(r11)
001b58  1f430300  addli r6, r6, 4
001b5c  8f801000  exp.f.rn r1, r1
001b60  0f012100  exp.f.rn r2, r2
001b64  0f06c600  exp.f.rn r12, r12
001b68  0f080801  exp.f.rn r16, r16
001b6c  e78f15fe  storeli.w r1, -8(r11)
001b70  e7cf25fe  storeli.w r2, -4(r11)
001b74  6780c500  storeli.w r12, 0(r11)
001b78  67c00501  storeli.w r16, 4(r11)
001b7c  9f852500  addli r11, r11, 16
001b80  3f2fc3ff  blt.s r6, r28, -56
001b84  63033fce  loadli.w r6,  -6376(r30)
001b88  e3055fce  loadli.w r11,  -6360(r30)
001b8c  4bf0c601  ble.s r13, r28, 28
001b90  e3000300  loadli.w r1,  0(r6)
001b94  9f950500  addli r11, r11, 1
001b98  8f801000  exp.f.rn r1, r1
001b9c  67001300  storeli.w r1, 0(r6)
001ba0  1f430300  addli r6, r6, 4
001ba4  bbbf05fe  bneq r11, zero, -20
001ba8  12301002  vadd.s.mz vr0{mr1}, zero, vr1
001bac  1f580000  addli r16, zero, 5
001bb0  00a00000  mfence { lm }
001bb4  bfd0a901  blt.s r19, r26, 52
001bb8  12301002  vadd.s.mz vr0{mr1}, zero, vr1
001bbc  b305b028  zext_int2long r[11:12], zero
001bc0  9bb02500  slli r1, r11, 2
001bc4  a7854500  addli.d r[11:12], r[11:12], 32
001bc8  8b901710  add.s r1, r15, r1
001bcc  13b11505  setlt.sl r2, r[11:12], r[17:18]
001bd0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001bd4  9f808000  addli r1, r1, 64
001bd8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001bdc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001be0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001be4  3b7f01fe  bneq r2, zero, -36
001be8  1f030001  addli r6, zero, 128
001bec  b7b00c00  beq r25, zero, 44
001bf0  e300ffce  loadli.w r1,  -6280(r30)
001bf4  1f01cfce  addli r2, r30, -6304
001bf8  63000100  loadli.w zero,  0(r2)
001bfc  42910004  vload_mask16.mz vr2{mr2}, 0(r1)
001c00  e300efce  loadli.w r1,  -6288(r30)
001c04  fe0100e0  vmmov mr3, zero
001c08  17200000  xor zero, zero, zero
001c0c  c2910006  vload_mask16.mz vr3{mr3}, 0(r1)
001c10  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001c14  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
001c18  9f00dfce  addli r1, r30, -6296
001c1c  63416fce  loadli.w r2,  -6348(r30)
001c20  9f8c0a00  addli r25, r21, 0
001c24  ebd50000  load.d r[11:12], 0(r1)
001c28  9f000002  addli r1, zero, 256
001c2c  6af100c0  vsrl.p vr2, r1, vr0
001c30  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001c34  6a7103c0  vsrl.p vr2, r6, vr0
001c38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001c3c  6af10dc0  vsrl.p vr2, r27, vr0
001c40  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001c44  6a710ac0  vsrl.p vr2, r20, vr0
001c48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001c4c  fa100020  vextract.f r1, vr0{mr0}
001c50  73601100  stores.w r1, 0(r2)
001c54  00200100  mfence { sm }
001c58  37e1b201  beq r5, r27, 88
001c5c  9f701000  addli r1, zero, 15
001c60  00300000  sync_local
001c64  3fb15000  blt.s r1, r5, 76
001c68  9f100002  addli r1, zero, 257
001c6c  670a1ffe  storeli.w r1, -96(r30)
001c70  9f102022  addli r1, zero, 4369
001c74  67091ffe  storeli.w r1, -112(r30)
001c78  ab500000  lui r1, 5
001c7c  9b905055  ori r1, r1, 1365
001c80  e7081ffe  storeli.w r1, -120(r30)
001c84  abf00000  lui r1, 15
001c88  6301efcd  loadli.w r2,  -6416(r30)
001c8c  6303dfcd  loadli.w r6,  -6424(r30)
001c90  9b90f0ff  ori r1, r1, 4095
001c94  67481ffe  storeli.w r1, -124(r30)
001c98  63010100  loadli.w r2,  0(r2)
001c9c  17316100  sll r2, r2, r6
001ca0  1f030001  addli r6, zero, 128
001ca4  97001100  and r1, r2, r1
001ca8  80a10004  csr_set csr3, r1
001cac  00d00100  sync_group
001cb0  bfb00201  blt.s r5, r16, 44
001cb4  1f030000  addli r6, zero, 0
001cb8  3fc6a103  blt.s r3, r26, 1424
001cbc  e3059fcd  loadli.w r11,  -6456(r30)
001cc0  1f860100  addli r12, r3, 0
001cc4  efc00500  loads.w r1, 0(r11)
001cc8  1f76f6ff  addli r12, r12, -1
001ccc  8b956511  add.s r11, r11, r22
001cd0  0b631310  add.f.rn r6, r6, r1
001cd4  bb4f06fe  bneq r12, zero, -16
001cd8  5bae0000  j 1392
001cdc  9f200000  addli r1, zero, 2
001ce0  b380102a  zext_int2long r[1:2], r1
001ce4  93a01500  seteq.d r1, r[11:12], r[1:2]
001ce8  bbc40000  bneq r1, zero, 304
001cec  9f400000  addli r1, zero, 4
001cf0  b380102a  zext_int2long r[1:2], r1
001cf4  93a01502  setneq.d r1, r[11:12], r[1:2]
001cf8  bbf30002  bneq r1, zero, 1276
001cfc  6a200002  vand.u.mz vr0{mr1}, zero, vr0
001d00  9b300d00  slli r1, r26, 0
001d04  1f011fce  addli r2, r30, -6392
001d08  7e8000e0  vmmov mr0, r1
001d0c  9b301d00  slli r1, r26, 1
001d10  6a200030  vor.u.mh vr0{mr0}, zero, vr0
001d14  7e8000e0  vmmov mr0, r1
001d18  9f002000  addli r1, zero, 16
001d1c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001d20  9b302d00  slli r1, r26, 2
001d24  7e8000e0  vmmov mr0, r1
001d28  9b303d00  slli r1, r26, 3
001d2c  6a200a30  vor.u.mh vr0{mr0}, r20, vr0
001d30  7e8000e0  vmmov mr0, r1
001d34  9f006000  addli r1, zero, 48
001d38  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001d3c  9b304d00  slli r1, r26, 4
001d40  7e8000e0  vmmov mr0, r1
001d44  9b305d00  slli r1, r26, 5
001d48  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
001d4c  7e8000e0  vmmov mr0, r1
001d50  9f00a000  addli r1, zero, 80
001d54  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001d58  9b306d00  slli r1, r26, 6
001d5c  7e8000e0  vmmov mr0, r1
001d60  9f00c000  addli r1, zero, 96
001d64  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001d68  9b307d00  slli r1, r26, 7
001d6c  7e8000e0  vmmov mr0, r1
001d70  9f00e000  addli r1, zero, 112
001d74  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001d78  9b308d00  slli r1, r26, 8
001d7c  7e8000e0  vmmov mr0, r1
001d80  9b309d00  slli r1, r26, 9
001d84  6a200330  vor.u.mh vr0{mr0}, r6, vr0
001d88  7e8000e0  vmmov mr0, r1
001d8c  9f002001  addli r1, zero, 144
001d90  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001d94  9b30ad00  slli r1, r26, 10
001d98  7e8000e0  vmmov mr0, r1
001d9c  9f004001  addli r1, zero, 160
001da0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001da4  9b30bd00  slli r1, r26, 11
001da8  7e8000e0  vmmov mr0, r1
001dac  9f006001  addli r1, zero, 176
001db0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001db4  9b30cd00  slli r1, r26, 12
001db8  7e8000e0  vmmov mr0, r1
001dbc  9f008001  addli r1, zero, 192
001dc0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001dc4  9b30dd00  slli r1, r26, 13
001dc8  7e8000e0  vmmov mr0, r1
001dcc  9f00a001  addli r1, zero, 208
001dd0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001dd4  9b30ed00  slli r1, r26, 14
001dd8  7e8000e0  vmmov mr0, r1
001ddc  9f00c001  addli r1, zero, 224
001de0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001de4  ab800000  lui r1, 8
001de8  9f800000  addli r1, r1, 0
001dec  7e8000e0  vmmov mr0, r1
001df0  9f00e001  addli r1, zero, 240
001df4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001df8  e3401fce  loadli.w r1,  -6388(r30)
001dfc  63000100  loadli.w zero,  0(r2)
001e00  7e0000e0  vmmov mr0, zero
001e04  17200000  xor zero, zero, zero
001e08  12b00002  vadd.s.mz vr0{mr1}, r1, vr0
001e0c  e3409fce  loadli.w r1,  -6324(r30)
001e10  62b00002  vgathers_mask16.mz vr0{mr1}, vr0{r1}
001e14  db810000  j 1036
001e18  9b300d00  slli r1, r26, 0
001e1c  6a200002  vand.u.mz vr0{mr1}, zero, vr0
001e20  1f018fcd  addli r2, r30, -6464
001e24  9f057fcd  addli r11, r30, -6472
001e28  1f466fcd  addli r12, r30, -6476
001e2c  9f0a5fcd  addli r21, r30, -6488
001e30  7e8000e0  vmmov mr0, r1
001e34  9b301d00  slli r1, r26, 1
001e38  7e0000a0  vmmov zero, mr0
001e3c  67000100  storeli.w zero, 0(r2)
001e40  17200000  xor zero, zero, zero
001e44  6a200030  vor.u.mh vr0{mr0}, zero, vr0
001e48  7e8000e0  vmmov mr0, r1
001e4c  7e0000a0  vmmov zero, mr0
001e50  67800500  storeli.w zero, 0(r11)
001e54  17200000  xor zero, zero, zero
001e58  9f001000  addli r1, zero, 8
001e5c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001e60  9b302d00  slli r1, r26, 2
001e64  7e8000e0  vmmov mr0, r1
001e68  7e0000a0  vmmov zero, mr0
001e6c  67000600  storeli.w zero, 0(r12)
001e70  17200000  xor zero, zero, zero
001e74  9f002000  addli r1, zero, 16
001e78  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001e7c  9b303d00  slli r1, r26, 3
001e80  7e8000e0  vmmov mr0, r1
001e84  7e0000a0  vmmov zero, mr0
001e88  67800a00  storeli.w zero, 0(r21)
001e8c  17200000  xor zero, zero, zero
001e90  9f003000  addli r1, zero, 24
001e94  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001e98  9b304d00  slli r1, r26, 4
001e9c  7e8000e0  vmmov mr0, r1
001ea0  9f004fcd  addli r1, r30, -6496
001ea4  7e0000a0  vmmov zero, mr0
001ea8  67800000  storeli.w zero, 0(r1)
001eac  9b305d00  slli r1, r26, 5
001eb0  6a200a30  vor.u.mh vr0{mr0}, r20, vr0
001eb4  17200000  xor zero, zero, zero
001eb8  7e8000e0  vmmov mr0, r1
001ebc  9f403fcd  addli r1, r30, -6500
001ec0  7e0000a0  vmmov zero, mr0
001ec4  67800000  storeli.w zero, 0(r1)
001ec8  17200000  xor zero, zero, zero
001ecc  9f005000  addli r1, zero, 40
001ed0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001ed4  9b306d00  slli r1, r26, 6
001ed8  7e8000e0  vmmov mr0, r1
001edc  9f003fcd  addli r1, r30, -6504
001ee0  7e0000a0  vmmov zero, mr0
001ee4  67800000  storeli.w zero, 0(r1)
001ee8  17200000  xor zero, zero, zero
001eec  9f006000  addli r1, zero, 48
001ef0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001ef4  9b307d00  slli r1, r26, 7
001ef8  7e8000e0  vmmov mr0, r1
001efc  9f002fcd  addli r1, r30, -6512
001f00  7e0000a0  vmmov zero, mr0
001f04  67800000  storeli.w zero, 0(r1)
001f08  17200000  xor zero, zero, zero
001f0c  9f007000  addli r1, zero, 56
001f10  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001f14  9b308d00  slli r1, r26, 8
001f18  7e8000e0  vmmov mr0, r1
001f1c  9f001fcd  addli r1, r30, -6520
001f20  7e0000a0  vmmov zero, mr0
001f24  67800000  storeli.w zero, 0(r1)
001f28  9b309d00  slli r1, r26, 9
001f2c  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
001f30  17200000  xor zero, zero, zero
001f34  7e8000e0  vmmov mr0, r1
001f38  9f000fcd  addli r1, r30, -6528
001f3c  7e0000a0  vmmov zero, mr0
001f40  67800000  storeli.w zero, 0(r1)
001f44  17200000  xor zero, zero, zero
001f48  9f009000  addli r1, zero, 72
001f4c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001f50  9b30ad00  slli r1, r26, 10
001f54  7e8000e0  vmmov mr0, r1
001f58  9f40ffcc  addli r1, r30, -6532
001f5c  7e0000a0  vmmov zero, mr0
001f60  67800000  storeli.w zero, 0(r1)
001f64  17200000  xor zero, zero, zero
001f68  9f00a000  addli r1, zero, 80
001f6c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001f70  9b30bd00  slli r1, r26, 11
001f74  7e8000e0  vmmov mr0, r1
001f78  9f00ffcc  addli r1, r30, -6536
001f7c  7e0000a0  vmmov zero, mr0
001f80  67800000  storeli.w zero, 0(r1)
001f84  17200000  xor zero, zero, zero
001f88  9f00b000  addli r1, zero, 88
001f8c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001f90  9b30cd00  slli r1, r26, 12
001f94  7e8000e0  vmmov mr0, r1
001f98  9f40efcc  addli r1, r30, -6540
001f9c  7e0000a0  vmmov zero, mr0
001fa0  67800000  storeli.w zero, 0(r1)
001fa4  17200000  xor zero, zero, zero
001fa8  9f00c000  addli r1, zero, 96
001fac  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001fb0  9b30dd00  slli r1, r26, 13
001fb4  7e8100e0  vmmov mr2, r1
001fb8  9f00d000  addli r1, zero, 104
001fbc  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001fc0  9b30ed00  slli r1, r26, 14
001fc4  7e8000e0  vmmov mr0, r1
001fc8  9f00e000  addli r1, zero, 112
001fcc  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001fd0  ab800000  lui r1, 8
001fd4  9f800000  addli r1, r1, 0
001fd8  fe8100e0  vmmov mr3, r1
001fdc  9f00f000  addli r1, zero, 120
001fe0  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001fe4  9f00cfce  addli r1, r30, -6304
001fe8  63800000  loadli.w zero,  0(r1)
001fec  fe0100e0  vmmov mr3, zero
001ff0  17200000  xor zero, zero, zero
001ff4  6a210002  vand.u.mz vr2{mr1}, zero, vr0
001ff8  e7cffeff  storeli.w r31, -4(sp)
001ffc  9f0f8fcd  addli r31, r30, -6464
002000  63800f00  loadli.w zero,  0(r31)
002004  e3cffeff  loadli.w r31,  -4(sp)
002008  fe0100e0  vmmov mr3, zero
00200c  17200000  xor zero, zero, zero
002010  6a212336  vor.u.mh vr2{mr3}, r6, vr2
002014  e7cffeff  storeli.w r31, -4(sp)
002018  9f0f7fcd  addli r31, r30, -6472
00201c  9f001001  addli r1, zero, 136
002020  63800f00  loadli.w zero,  0(r31)
002024  e3cffeff  loadli.w r31,  -4(sp)
002028  fe0100e0  vmmov mr3, zero
00202c  17200000  xor zero, zero, zero
002030  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
002034  e7cffeff  storeli.w r31, -4(sp)
002038  9f4f6fcd  addli r31, r30, -6476
00203c  9f002001  addli r1, zero, 144
002040  63800f00  loadli.w zero,  0(r31)
002044  e3cffeff  loadli.w r31,  -4(sp)
002048  fe0100e0  vmmov mr3, zero
00204c  17200000  xor zero, zero, zero
002050  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
002054  e7cffeff  storeli.w r31, -4(sp)
002058  9f0f5fcd  addli r31, r30, -6488
00205c  9f003001  addli r1, zero, 152
002060  63800f00  loadli.w zero,  0(r31)
002064  e3cffeff  loadli.w r31,  -4(sp)
002068  fe0100e0  vmmov mr3, zero
00206c  17200000  xor zero, zero, zero
002070  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
002074  e7cffeff  storeli.w r31, -4(sp)
002078  9f0f4fcd  addli r31, r30, -6496
00207c  9f004001  addli r1, zero, 160
002080  63800f00  loadli.w zero,  0(r31)
002084  e3cffeff  loadli.w r31,  -4(sp)
002088  fe0100e0  vmmov mr3, zero
00208c  17200000  xor zero, zero, zero
002090  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
002094  e7cffeff  storeli.w r31, -4(sp)
002098  9f4f3fcd  addli r31, r30, -6500
00209c  9f005001  addli r1, zero, 168
0020a0  63800f00  loadli.w zero,  0(r31)
0020a4  e3cffeff  loadli.w r31,  -4(sp)
0020a8  fe0100e0  vmmov mr3, zero
0020ac  17200000  xor zero, zero, zero
0020b0  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0020b4  e7cffeff  storeli.w r31, -4(sp)
0020b8  9f0f3fcd  addli r31, r30, -6504
0020bc  9f006001  addli r1, zero, 176
0020c0  63800f00  loadli.w zero,  0(r31)
0020c4  e3cffeff  loadli.w r31,  -4(sp)
0020c8  fe0100e0  vmmov mr3, zero
0020cc  17200000  xor zero, zero, zero
0020d0  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0020d4  e7cffeff  storeli.w r31, -4(sp)
0020d8  9f0f2fcd  addli r31, r30, -6512
0020dc  9f007001  addli r1, zero, 184
0020e0  63800f00  loadli.w zero,  0(r31)
0020e4  e3cffeff  loadli.w r31,  -4(sp)
0020e8  fe0100e0  vmmov mr3, zero
0020ec  17200000  xor zero, zero, zero
0020f0  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0020f4  e7cffeff  storeli.w r31, -4(sp)
0020f8  9f0f1fcd  addli r31, r30, -6520
0020fc  9f008001  addli r1, zero, 192
002100  63800f00  loadli.w zero,  0(r31)
002104  e3cffeff  loadli.w r31,  -4(sp)
002108  fe0100e0  vmmov mr3, zero
00210c  17200000  xor zero, zero, zero
002110  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
002114  e7cffeff  storeli.w r31, -4(sp)
002118  9f0f0fcd  addli r31, r30, -6528
00211c  9f009001  addli r1, zero, 200
002120  63800f00  loadli.w zero,  0(r31)
002124  e3cffeff  loadli.w r31,  -4(sp)
002128  fe0100e0  vmmov mr3, zero
00212c  17200000  xor zero, zero, zero
002130  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
002134  e7cffeff  storeli.w r31, -4(sp)
002138  9f4fffcc  addli r31, r30, -6532
00213c  9f00a001  addli r1, zero, 208
002140  63800f00  loadli.w zero,  0(r31)
002144  e3cffeff  loadli.w r31,  -4(sp)
002148  fe0100e0  vmmov mr3, zero
00214c  17200000  xor zero, zero, zero
002150  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
002154  e7cffeff  storeli.w r31, -4(sp)
002158  9f0fffcc  addli r31, r30, -6536
00215c  9f00b001  addli r1, zero, 216
002160  63800f00  loadli.w zero,  0(r31)
002164  e3cffeff  loadli.w r31,  -4(sp)
002168  fe0100e0  vmmov mr3, zero
00216c  17200000  xor zero, zero, zero
002170  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
002174  e7cffeff  storeli.w r31, -4(sp)
002178  9f4fefcc  addli r31, r30, -6540
00217c  9f00c001  addli r1, zero, 224
002180  63800f00  loadli.w zero,  0(r31)
002184  e3cffeff  loadli.w r31,  -4(sp)
002188  fe0100e0  vmmov mr3, zero
00218c  17200000  xor zero, zero, zero
002190  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
002194  9f00d001  addli r1, zero, 232
002198  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00219c  9f00bfcd  addli r1, r30, -6440
0021a0  63800000  loadli.w zero,  0(r1)
0021a4  7e0100e0  vmmov mr2, zero
0021a8  17200000  xor zero, zero, zero
0021ac  9f00e001  addli r1, zero, 240
0021b0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0021b4  ab800000  lui r1, 8
0021b8  9f800000  addli r1, r1, 0
0021bc  7e8000e0  vmmov mr0, r1
0021c0  9f00f001  addli r1, zero, 248
0021c4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0021c8  9f001fce  addli r1, r30, -6392
0021cc  63800000  loadli.w zero,  0(r1)
0021d0  e3401fce  loadli.w r1,  -6388(r30)
0021d4  12b00002  vadd.s.mz vr0{mr1}, r1, vr0
0021d8  12b12002  vadd.s.mz vr2{mr1}, r1, vr2
0021dc  e3409fce  loadli.w r1,  -6324(r30)
0021e0  7e0000e0  vmmov mr0, zero
0021e4  17200000  xor zero, zero, zero
0021e8  62b00002  vgathers_mask16.mz vr0{mr1}, vr0{r1}
0021ec  62b12002  vgathers_mask16.mz vr2{mr1}, vr2{r1}
0021f0  db050000  j 44
0021f4  e3409fce  loadli.w r1,  -6324(r30)
0021f8  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0021fc  e300efcc  loadli.w r1,  -6544(r30)
002200  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
002204  e300dfcc  loadli.w r1,  -6552(r30)
002208  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
00220c  e340cfcc  loadli.w r1,  -6556(r30)
002210  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
002214  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
002218  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
00221c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002220  9f000002  addli r1, zero, 256
002224  6af100c0  vsrl.p vr2, r1, vr0
002228  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00222c  6a7103c0  vsrl.p vr2, r6, vr0
002230  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002234  6af10dc0  vsrl.p vr2, r27, vr0
002238  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00223c  6a710ac0  vsrl.p vr2, r20, vr0
002240  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002244  7a130020  vextract.f r6, vr0{mr0}
002248  00a00000  mfence { lm }
00224c  ab00803f  lui r1, 260096
002250  0f836018  div.f.rn r6, r1, r6
002254  bfd0a901  blt.s r19, r26, 52
002258  9f050fcf  addli r11, r30, -6272
00225c  1f060000  addli r12, zero, 0
002260  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
002264  9f808500  addli r1, r11, 64
002268  1f064600  addli r12, r12, 32
00226c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002270  0a100302  vmul.f.mz.rn vr0{mr1}, r6, vr0
002274  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
002278  46900502  vstore_mask16.mz vr0{mr1}, 0(r11)
00227c  9f850501  addli r11, r11, 128
002280  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
002284  3f7f36ff  blt.s r12, r19, -36
002288  3fa0d900  blt.s r19, r13, 8
00228c  db0a0000  j 84
002290  00a00000  mfence { lm }
002294  9f050000  addli r11, zero, 0
002298  e300ffce  loadli.w r1,  -6280(r30)
00229c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0022a0  e300efce  loadli.w r1,  -6288(r30)
0022a4  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0022a8  e3402fce  loadli.w r1,  -6380(r30)
0022ac  0a100302  vmul.f.mz.rn vr0{mr1}, r6, vr0
0022b0  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
0022b4  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0022b8  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0022bc  00a00000  mfence { lm }
0022c0  63032fce  loadli.w r6,  -6384(r30)
0022c4  8b90bb10  add.s r1, r23, r11
0022c8  0b11bc10  add.s r2, r24, r11
0022cc  1f130300  addli r6, r6, 1
0022d0  9fc50500  addli r11, r11, 4
0022d4  e3800000  loadli.w r1,  0(r1)
0022d8  67001100  storeli.w r1, 0(r2)
0022dc  bb2f03fe  bneq r6, zero, -24
0022e0  00a00000  mfence { lm }
0022e4  3fc1a6f9  blt.s r13, r26, -4016
0022e8  1f030fcf  addli r6, r30, -6272
0022ec  9f050fcf  addli r11, r30, -6272
0022f0  1f060000  addli r12, zero, 0
0022f4  9f008300  addli r1, r6, 64
0022f8  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
0022fc  1f030301  addli r6, r6, 128
002300  1f064600  addli r12, r12, 32
002304  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002308  06100100  vfloat2fp16_l.rn vr0, vr2
00230c  06d00100  vfloat2fp16_h.rn vr0, vr3
002310  46800502  vstore.mz vr0{mr1}, 0(r11)
002314  9f858500  addli r11, r11, 64
002318  3f7fd6fe  blt.s r12, r13, -36
00231c  5b03feff  j -4072
002320  3bb6010c  bneq r3, zero, 6540
002324  1f074fce  addli r14, r30, -6368
002328  abf10000  lui r3, 15
00232c  abf3ffff  lui r7, 1048575
002330  1f02000c  addli r4, zero, 1536
002334  9f090002  addli r19, zero, 256
002338  9f0a0001  addli r21, zero, 128
00233c  1f0b8000  addli r22, zero, 64
002340  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002344  eb500700  load.d r[1:2], 0(r14)
002348  9b91f1ff  ori r3, r3, 4095
00234c  9b9203fc  ori r5, r7, 4032
002350  9b9403f8  ori r9, r7, 3968
002354  9b9303fe  ori r7, r7, 4064
002358  b385b32e  zext_int2long r[11:12], r7
00235c  97813000  and r3, r1, r3
002360  97865000  and r13, r1, r5
002364  b382522a  zext_int2long r[5:6], r5
002368  978b9000  and r23, r1, r9
00236c  97837000  and r7, r1, r7
002370  0b043230  div.u r8, r4, r3
002374  674e7fcc  storeli.w r7, -6428(r30)
002378  178d5002  and.d r[26:27], r[1:2], r[5:6]
00237c  9f03ffcd  addli r7, r30, -6408
002380  674fdfcc  storeli.w r13, -6412(r30)
002384  670f7fcd  storeli.w r23, -6416(r30)
002388  b3013428  zext_int2long r[3:4], r8
00238c  3384842a  zext_int2long r[8:9], r9
002390  178c8002  and.d r[24:25], r[1:2], r[8:9]
002394  9780b002  and.d r[1:2], r[1:2], r[11:12]
002398  1f048fcd  addli r8, r30, -6464
00239c  a7840100  addli.d r[9:10], r[3:4], 0
0023a0  a7810700  addli.d r[3:4], r[15:16], 0
0023a4  9f054fcd  addli r11, r30, -6496
0023a8  9f070fcf  addli r15, r30, -6272
0023ac  1f084000  addli r16, zero, 32
0023b0  73b01300  store.d r[1:2], 0(r7)
0023b4  9f100000  addli r1, zero, 1
0023b8  eb520400  load.d r[5:6], 0(r8)
0023bc  1f01dfcd  addli r2, r30, -6424
0023c0  73b09500  store.d r[9:10], 0(r11)
0023c4  7e8000e0  vmmov mr0, r1
0023c8  9f005fce  addli r1, r30, -6360
0023cc  7330a101  store.d r[26:27], 0(r2)
0023d0  73b08001  store.d r[24:25], 0(r1)
0023d4  db0a0000  j 84
0023d8  1f079fcd  addli r14, r30, -6456
0023dc  1f0a4fcd  addli r20, r30, -6496
0023e0  00a00000  mfence { lm }
0023e4  9f08afcd  addli r17, r30, -6448
0023e8  1f097fcd  addli r18, r30, -6472
0023ec  1f0e8fcd  addli r28, r30, -6464
0023f0  eb510700  load.d r[3:4], 0(r14)
0023f4  eb540a00  load.d r[9:10], 0(r20)
0023f8  ab0300f0  lui r7, 983040
0023fc  ebd00800  load.d r[1:2], 0(r17)
002400  eb550900  load.d r[11:12], 0(r18)
002404  eb520e00  load.d r[5:6], 0(r28)
002408  8ba19110  add.ul r[3:4], r[3:4], r[9:10]
00240c  8ba8b010  add.ul r[17:18], r[1:2], r[11:12]
002410  e3406fcd  loadli.w r1,  -6476(r30)
002414  13b45104  setlt.sl r8, r[3:4], r[5:6]
002418  97937000  or r7, r1, r7
00241c  ffb3f800  s_lm2gm r7, r15, 0(r[17:18])
002420  00a00200  mfence { lm, gm }
002424  3722040c  beq r8, zero, 6280
002428  8bb33218  sub.sl r[7:8], r[5:6], r[3:4]
00242c  1f034fce  addli r6, r30, -6368
002430  1f079fcd  addli r14, r30, -6456
002434  1f0abfcd  addli r20, r30, -6440
002438  1f0e7fcd  addli r28, r30, -6472
00243c  eb550300  load.d r[11:12], 0(r6)
002440  8bb09340  min.sl r[1:2], r[7:8], r[9:10]
002444  1f040fce  addli r8, r30, -6400
002448  73303700  store.d r[3:4], 0(r14)
00244c  ab0300f0  lui r7, 983040
002450  73301400  store.d r[1:2], 0(r8)
002454  8bb4b020  mul.sl r[9:10], r[1:2], r[11:12]
002458  8bb8b120  mul.sl r[17:18], r[3:4], r[11:12]
00245c  9f100000  addli r1, zero, 1
002460  97b11802  sll.d r[3:4], r[17:18], r1
002464  eb500a00  load.d r[1:2], 0(r20)
002468  9bb21400  slli r5, r9, 1
00246c  97937200  or r7, r5, r7
002470  73303e00  store.d r[3:4], 0(r28)
002474  674b5fcc  storeli.w r5, -6476(r30)
002478  8ba83010  add.ul r[17:18], r[1:2], r[3:4]
00247c  ffa3f800  l_gm2lm r7, r15, 0(r[17:18])
002480  00a00200  mfence { lm, gm }
002484  abf3ffff  lui r7, 1048575
002488  9b9323fe  ori r7, r7, 4066
00248c  3fd17400  blt.s r9, r7, 84
002490  9ff3f4ff  addli r7, r9, -1
002494  2bf4ffff  lui r8, 1048575
002498  8b930331  div.s r7, r7, r16
00249c  1b14f4ff  ori r8, r8, 4095
0024a0  1bb77300  slli r14, r7, 7
0024a4  9bb86300  slli r17, r7, 6
0024a8  17a98300  xor r18, r7, r8
0024ac  8b93e710  add.s r7, r15, r14
0024b0  0b941711  add.s r8, r15, r17
0024b4  1b375900  slli r14, r18, 5
0024b8  42000402  vload.mz vr0{mr1}, 0(r8)
0024bc  06310000  vfp162float_l.rn vr2, vr0
0024c0  9f888300  addli r17, r7, 64
0024c4  86710000  vfp162float_h.rn vr3, vr0
0024c8  46903802  vstore_mask16.mz vr3{mr1}, 0(r17)
0024cc  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
0024d0  1f0484ff  addli r8, r8, -64
0024d4  1f074700  addli r14, r14, 32
0024d8  9f8303ff  addli r7, r7, -128
0024dc  3b7f07fe  bneq r14, zero, -36
0024e0  9f100000  addli r1, zero, 1
0024e4  1f030fce  addli r6, r30, -6400
0024e8  9f015fcd  addli r3, r30, -6488
0024ec  b383702a  zext_int2long r[7:8], r1
0024f0  eb500300  load.d r[1:2], 0(r6)
0024f4  73b09100  store.d r[9:10], 0(r3)
0024f8  00a00000  mfence { lm }
0024fc  93b37004  setlt.sl r7, r[1:2], r[7:8]
002500  9f00ffcd  addli r1, r30, -6408
002504  6bd20000  load.d r[4:5], 0(r1)
002508  3bf90302  bneq r7, zero, 1628
00250c  b3081029  zext_int2long r[17:18], zero
002510  db040000  j 36
002514  9f013fce  addli r3, r30, -6376
002518  1f030fce  addli r6, r30, -6400
00251c  ebd80100  load.d r[17:18], 0(r3)
002520  eb500300  load.d r[1:2], 0(r6)
002524  00a00000  mfence { lm }
002528  a7980800  addli.d r[17:18], r[17:18], 1
00252c  93b01804  setlt.sl r1, r[17:18], r[1:2]
002530  b7d80002  beq r1, zero, 1588
002534  8bb3b820  mul.sl r[7:8], r[17:18], r[11:12]
002538  9f003fce  addli r1, r30, -6376
00253c  1bb42300  slli r8, r7, 2
002540  ab0380ff  lui r7, 1046528
002544  73b01001  store.d r[17:18], 0(r1)
002548  8b948710  add.s r9, r15, r8
00254c  37e10600  beq r13, zero, 88
002550  ab0380ff  lui r7, 1046528
002554  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002558  6a900322  vor.f.mz vr0{mr1}, r7, vr0
00255c  b3037028  zext_int2long r[7:8], zero
002560  9bb82300  slli r17, r7, 2
002564  a7838300  addli.d r[7:8], r[7:8], 64
002568  8b981411  add.s r17, r9, r17
00256c  13a9a305  setlt.ul r18, r[7:8], r[26:27]
002570  42910802  vload_mask16.mz vr2{mr1}, 0(r17)
002574  1f8a8800  addli r20, r17, 64
002578  c2110a02  vload_mask16.mz vr3{mr1}, 0(r20)
00257c  1f8a0801  addli r20, r17, 128
002580  9f888801  addli r17, r17, 192
002584  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
002588  42110a02  vload_mask16.mz vr2{mr1}, 0(r20)
00258c  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
002590  c2910802  vload_mask16.mz vr3{mr1}, 0(r17)
002594  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
002598  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
00259c  3b1f09fe  bneq r18, zero, -60
0025a0  5b010000  j 8
0025a4  6a901322  vor.f.mz vr0{mr1}, r7, vr1
0025a8  93a0a507  setle.ul r1, r[11:12], r[26:27]
0025ac  a7080d00  addli.d r[17:18], r[26:27], 0
0025b0  67411fce  storeli.w r1, -6380(r30)
0025b4  bb800000  bneq r1, zero, 32
0025b8  1bb42800  slli r8, r17, 2
0025bc  a7882800  addli.d r[17:18], r[17:18], 16
0025c0  0b948410  add.s r8, r9, r8
0025c4  42110402  vload_mask16.mz vr2{mr1}, 0(r8)
0025c8  13b4b804  setlt.sl r8, r[17:18], r[11:12]
0025cc  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0025d0  bb2f04fe  bneq r8, zero, -24
0025d4  6af109c0  vsrl.p vr2, r19, vr0
0025d8  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0025dc  6af10ac0  vsrl.p vr2, r21, vr0
0025e0  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0025e4  6a710bc0  vsrl.p vr2, r22, vr0
0025e8  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0025ec  6a7108c0  vsrl.p vr2, r16, vr0
0025f0  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0025f4  7a140020  vextract.f r8, vr0{mr0}
0025f8  0b6b0458  neg.f r22, r8
0025fc  b7820b00  beq r23, zero, 160
002600  b3081029  zext_int2long r[17:18], zero
002604  1bb42800  slli r8, r17, 2
002608  a7880801  addli.d r[17:18], r[17:18], 128
00260c  9f005fce  addli r1, r30, -6360
002610  0b948410  add.s r8, r9, r8
002614  13aa8805  setlt.ul r20, r[17:18], r[24:25]
002618  42100402  vload_mask16.mz vr0{mr1}, 0(r8)
00261c  9f0c0403  addli r25, r8, 384
002620  9f0a8400  addli r21, r8, 64
002624  9f070401  addli r15, r8, 128
002628  9f058401  addli r11, r8, 192
00262c  9f090402  addli r19, r8, 256
002630  1f088402  addli r16, r8, 320
002634  42910a02  vload_mask16.mz vr2{mr1}, 0(r21)
002638  c2910702  vload_mask16.mz vr3{mr1}, 0(r15)
00263c  42920502  vload_mask16.mz vr4{mr1}, 0(r11)
002640  c2920902  vload_mask16.mz vr5{mr1}, 0(r19)
002644  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
002648  12100b02  vadd.f.mz.rn vr0{mr1}, r22, vr0
00264c  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
002650  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
002654  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
002658  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
00265c  12136b02  vadd.f.mz.rn vr6{mr1}, r22, vr6
002660  46100402  vstore_mask16.mz vr0{mr1}, 0(r8)
002664  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
002668  1f048403  addli r8, r8, 448
00266c  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
002670  46902a02  vstore_mask16.mz vr2{mr1}, 0(r21)
002674  46903702  vstore_mask16.mz vr3{mr1}, 0(r15)
002678  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
00267c  46905902  vstore_mask16.mz vr5{mr1}, 0(r19)
002680  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
002684  12100b02  vadd.f.mz.rn vr0{mr1}, r22, vr0
002688  92137b02  vadd.f.mz.rn vr7{mr1}, r22, vr7
00268c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
002690  6bdc0000  load.d r[24:25], 0(r1)
002694  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
002698  bb3d0afe  bneq r20, zero, -148
00269c  93807607  setle.u r1, r13, r23
0026a0  a7080c00  addli.d r[17:18], r[24:25], 0
0026a4  67011fce  storeli.w r1, -6384(r30)
0026a8  3bd10000  bneq r1, zero, 84
0026ac  9bb52800  slli r11, r17, 2
0026b0  a7888800  addli.d r[17:18], r[17:18], 64
0026b4  8b95b410  add.s r11, r9, r11
0026b8  93a7a805  setlt.ul r15, r[17:18], r[26:27]
0026bc  1f888500  addli r16, r11, 64
0026c0  9f890501  addli r19, r11, 128
0026c4  1f8a8501  addli r20, r11, 192
0026c8  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
0026cc  42110802  vload_mask16.mz vr2{mr1}, 0(r16)
0026d0  c2910902  vload_mask16.mz vr3{mr1}, 0(r19)
0026d4  42120a02  vload_mask16.mz vr4{mr1}, 0(r20)
0026d8  12100b02  vadd.f.mz.rn vr0{mr1}, r22, vr0
0026dc  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
0026e0  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
0026e4  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
0026e8  46900502  vstore_mask16.mz vr0{mr1}, 0(r11)
0026ec  46102802  vstore_mask16.mz vr2{mr1}, 0(r16)
0026f0  46903902  vstore_mask16.mz vr3{mr1}, 0(r19)
0026f4  46104a02  vstore_mask16.mz vr4{mr1}, 0(r20)
0026f8  bbde07fe  bneq r15, zero, -76
0026fc  e340cfcd  loadli.w r1,  -6428(r30)
002700  a7080d00  addli.d r[17:18], r[26:27], 0
002704  9380d006  setle.u r1, r1, r13
002708  e7401fce  storeli.w r1, -6388(r30)
00270c  bbd00000  bneq r1, zero, 52
002710  9bb52800  slli r11, r17, 2
002714  a7884800  addli.d r[17:18], r[17:18], 32
002718  8b95b410  add.s r11, r9, r11
00271c  93a74804  setlt.ul r15, r[17:18], r[4:5]
002720  1f888500  addli r16, r11, 64
002724  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
002728  42110802  vload_mask16.mz vr2{mr1}, 0(r16)
00272c  12100b02  vadd.f.mz.rn vr0{mr1}, r22, vr0
002730  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
002734  46900502  vstore_mask16.mz vr0{mr1}, 0(r11)
002738  46102802  vstore_mask16.mz vr2{mr1}, 0(r16)
00273c  3bdf07fe  bneq r15, zero, -44
002740  1f014fce  addli r2, r30, -6368
002744  a7080200  addli.d r[17:18], r[4:5], 0
002748  eb5b0100  load.d r[23:24], 0(r2)
00274c  93a04b06  setle.ul r1, r[23:24], r[4:5]
002750  e7001fce  storeli.w r1, -6392(r30)
002754  bb900000  bneq r1, zero, 36
002758  9bb52800  slli r11, r17, 2
00275c  a7882800  addli.d r[17:18], r[17:18], 16
002760  8b95b410  add.s r11, r9, r11
002764  93b77805  setlt.sl r15, r[17:18], r[23:24]
002768  42900502  vload_mask16.mz vr0{mr1}, 0(r11)
00276c  12100b02  vadd.f.mz.rn vr0{mr1}, r22, vr0
002770  46900502  vstore_mask16.mz vr0{mr1}, 0(r11)
002774  bb9f07fe  bneq r15, zero, -28
002778  b3081029  zext_int2long r[17:18], zero
00277c  00a00000  mfence { lm }
002780  9bb52800  slli r11, r17, 2
002784  a7882800  addli.d r[17:18], r[17:18], 16
002788  8b97b410  add.s r15, r9, r11
00278c  1b9b8500  ori r22, r11, 8
002790  1b984500  ori r16, r11, 4
002794  1b9dc500  ori r26, r11, 12
002798  9b914501  ori r3, r11, 20
00279c  1b948501  ori r8, r11, 24
0027a0  9b9ac501  ori r21, r11, 28
0027a4  1b9e0502  ori r28, r11, 32
0027a8  1b978503  ori r14, r11, 56
0027ac  8b906411  add.s r1, r9, r22
0027b0  63820700  loadli.w r4,  0(r15)
0027b4  0b980411  add.s r16, r9, r16
0027b8  8b923410  add.s r5, r9, r3
0027bc  27810b00  addli.d r[2:3], r[23:24], 0
0027c0  0b948410  add.s r8, r9, r8
0027c4  8b9a5411  add.s r21, r9, r21
0027c8  8b96c411  add.s r13, r9, r28
0027cc  1b9e4502  ori r28, r11, 36
0027d0  0b97e410  add.s r14, r9, r14
0027d4  e7071fce  storeli.w r1, -6280(r30)
0027d8  63850000  loadli.w r10,  0(r1)
0027dc  8b90a411  add.s r1, r9, r26
0027e0  1b9d0501  ori r26, r11, 16
0027e4  63030800  loadli.w r6,  0(r16)
0027e8  0b9bc411  add.s r22, r9, r28
0027ec  1b9e8502  ori r28, r11, 40
0027f0  630a0700  loadli.w r20,  0(r14)
0027f4  8f0b7201  exp.f.rn r23, r4
0027f8  67071fce  storeli.w r1, -6288(r30)
0027fc  63860000  loadli.w r12,  0(r1)
002800  8b90a411  add.s r1, r9, r26
002804  8b99c411  add.s r19, r9, r28
002808  1b9ec502  ori r28, r11, 44
00280c  8f0db301  exp.f.rn r27, r6
002810  e7061fce  storeli.w r1, -6296(r30)
002814  e38c0000  loadli.w r25,  0(r1)
002818  e3800200  loadli.w r1,  0(r5)
00281c  8b93c411  add.s r7, r9, r28
002820  1b9e0503  ori r28, r11, 48
002824  0b9ec411  add.s r28, r9, r28
002828  67061fce  storeli.w r1, -6304(r30)
00282c  e3000400  loadli.w r1,  0(r8)
002830  67807701  storeli.w r23, 0(r15)
002834  8f07f500  exp.f.rn r15, r10
002838  6305cfce  loadli.w r10,  -6304(r30)
00283c  8f8b7c01  exp.f.rn r23, r25
002840  e30cffce  loadli.w r25,  -6280(r30)
002844  63020e00  loadli.w r4,  0(r28)
002848  e7051fce  storeli.w r1, -6312(r30)
00284c  e3800a00  loadli.w r1,  0(r21)
002850  6700b801  storeli.w r27, 0(r16)
002854  0f080601  exp.f.rn r16, r12
002858  8f0db501  exp.f.rn r27, r10
00285c  6305bfce  loadli.w r10,  -6312(r30)
002860  67051fce  storeli.w r1, -6320(r30)
002864  e3800600  loadli.w r1,  0(r13)
002868  0f06c500  exp.f.rn r12, r10
00286c  6305afce  loadli.w r10,  -6320(r30)
002870  6780fc00  storeli.w r15, 0(r25)
002874  e307efce  loadli.w r15,  -6288(r30)
002878  67041fce  storeli.w r1, -6336(r30)
00287c  e3000b00  loadli.w r1,  0(r22)
002880  0f0c8501  exp.f.rn r24, r10
002884  63058fce  loadli.w r10,  -6336(r30)
002888  67800701  storeli.w r16, 0(r15)
00288c  e307dfce  loadli.w r15,  -6296(r30)
002890  6780b201  storeli.w r27, 0(r5)
002894  e7441fce  storeli.w r1, -6324(r30)
002898  e3800900  loadli.w r1,  0(r19)
00289c  0f05a500  exp.f.rn r10, r10
0028a0  67807701  storeli.w r23, 0(r15)
0028a4  6700c400  storeli.w r12, 0(r8)
0028a8  e7031fce  storeli.w r1, -6344(r30)
0028ac  e3800300  loadli.w r1,  0(r7)
0028b0  67808a01  storeli.w r24, 0(r21)
0028b4  a70b0100  addli.d r[23:24], r[2:3], 0
0028b8  63419fce  loadli.w r2,  -6324(r30)
0028bc  67431fce  storeli.w r1, -6348(r30)
0028c0  9b904503  ori r1, r11, 52
0028c4  9b95c503  ori r11, r11, 60
0028c8  8f025100  exp.f.rn r5, r2
0028cc  63017fce  loadli.w r2,  -6344(r30)
0028d0  8b901410  add.s r1, r9, r1
0028d4  8b95b410  add.s r11, r9, r11
0028d8  6780a600  storeli.w r10, 0(r13)
0028dc  93b67805  setlt.sl r13, r[17:18], r[23:24]
0028e0  63830000  loadli.w r6,  0(r1)
0028e4  638d0500  loadli.w r26,  0(r11)
0028e8  0f048100  exp.f.rn r8, r2
0028ec  63416fce  loadli.w r2,  -6348(r30)
0028f0  8f013300  exp.f.rn r3, r6
0028f4  0f06cd00  exp.f.rn r12, r26
0028f8  0f05a100  exp.f.rn r10, r2
0028fc  0f012200  exp.f.rn r2, r4
002900  0f024a00  exp.f.rn r4, r20
002904  67005b00  storeli.w r5, 0(r22)
002908  67808900  storeli.w r8, 0(r19)
00290c  67803000  storeli.w r3, 0(r1)
002910  6780c500  storeli.w r12, 0(r11)
002914  6780a300  storeli.w r10, 0(r7)
002918  67002e00  storeli.w r2, 0(r28)
00291c  67004700  storeli.w r4, 0(r14)
002920  bb8906fe  bneq r13, zero, -416
002924  9f00dfcd  addli r1, r30, -6424
002928  00a00000  mfence { lm }
00292c  12301002  vadd.s.mz vr0{mr1}, zero, vr1
002930  a7850b00  addli.d r[11:12], r[23:24], 0
002934  e346efcd  loadli.w r13,  -6412(r30)
002938  6bdd0000  load.d r[26:27], 0(r1)
00293c  37b10600  beq r13, zero, 76
002940  b3081029  zext_int2long r[17:18], zero
002944  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002948  9bb02800  slli r1, r17, 2
00294c  a7888800  addli.d r[17:18], r[17:18], 64
002950  8b901410  add.s r1, r9, r1
002954  13a1a805  setlt.ul r2, r[17:18], r[26:27]
002958  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00295c  9f818000  addli r3, r1, 64
002960  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
002964  9f810001  addli r3, r1, 128
002968  9f808001  addli r1, r1, 192
00296c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002970  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002974  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
002978  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00297c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002980  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
002984  3b1f01fe  bneq r2, zero, -60
002988  1f015fce  addli r2, r30, -6360
00298c  e30befcd  loadli.w r23,  -6416(r30)
002990  e3402fce  loadli.w r1,  -6380(r30)
002994  a7080d00  addli.d r[17:18], r[26:27], 0
002998  9f070fcf  addli r15, r30, -6272
00299c  1f084000  addli r16, zero, 32
0029a0  9f090002  addli r19, zero, 256
0029a4  9f0a0001  addli r21, zero, 128
0029a8  1f0b8000  addli r22, zero, 64
0029ac  6b5c0100  load.d r[24:25], 0(r2)
0029b0  bb800000  bneq r1, zero, 32
0029b4  9bb02800  slli r1, r17, 2
0029b8  a7882800  addli.d r[17:18], r[17:18], 16
0029bc  8b901410  add.s r1, r9, r1
0029c0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0029c4  93b0b804  setlt.sl r1, r[17:18], r[11:12]
0029c8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0029cc  bbaf00fe  bneq r1, zero, -24
0029d0  6af109c0  vsrl.p vr2, r19, vr0
0029d4  ab00803f  lui r1, 260096
0029d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0029dc  6af10ac0  vsrl.p vr2, r21, vr0
0029e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0029e4  6a710bc0  vsrl.p vr2, r22, vr0
0029e8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0029ec  6a7108c0  vsrl.p vr2, r16, vr0
0029f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0029f4  7a110020  vextract.f r2, vr0{mr0}
0029f8  8f832018  div.f.rn r7, r1, r2
0029fc  37e20b00  beq r23, zero, 152
002a00  b3081029  zext_int2long r[17:18], zero
002a04  9bb02800  slli r1, r17, 2
002a08  a7880801  addli.d r[17:18], r[17:18], 128
002a0c  8b901410  add.s r1, r9, r1
002a10  13a18805  setlt.ul r2, r[17:18], r[24:25]
002a14  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002a18  9f818000  addli r3, r1, 64
002a1c  1f820001  addli r4, r1, 128
002a20  9f828001  addli r5, r1, 192
002a24  1f830002  addli r6, r1, 256
002a28  1f848002  addli r8, r1, 320
002a2c  1f850003  addli r10, r1, 384
002a30  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002a34  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
002a38  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
002a3c  c2120302  vload_mask16.mz vr5{mr1}, 0(r6)
002a40  42130402  vload_mask16.mz vr6{mr1}, 0(r8)
002a44  0a900302  vmul.f.mz.rn vr0{mr1}, r7, vr0
002a48  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
002a4c  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
002a50  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
002a54  8a925302  vmul.f.mz.rn vr5{mr1}, r7, vr5
002a58  0a936302  vmul.f.mz.rn vr6{mr1}, r7, vr6
002a5c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002a60  9f808003  addli r1, r1, 448
002a64  42100502  vload_mask16.mz vr0{mr1}, 0(r10)
002a68  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002a6c  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
002a70  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
002a74  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
002a78  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
002a7c  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002a80  0a900302  vmul.f.mz.rn vr0{mr1}, r7, vr0
002a84  8a937302  vmul.f.mz.rn vr7{mr1}, r7, vr7
002a88  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
002a8c  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
002a90  bb5d01fe  bneq r2, zero, -140
002a94  e3002fce  loadli.w r1,  -6384(r30)
002a98  a7080c00  addli.d r[17:18], r[24:25], 0
002a9c  3bd10000  bneq r1, zero, 84
002aa0  9bb02800  slli r1, r17, 2
002aa4  a7888800  addli.d r[17:18], r[17:18], 64
002aa8  8b901410  add.s r1, r9, r1
002aac  13a1a805  setlt.ul r2, r[17:18], r[26:27]
002ab0  9f818000  addli r3, r1, 64
002ab4  1f820001  addli r4, r1, 128
002ab8  9f828001  addli r5, r1, 192
002abc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002ac0  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002ac4  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
002ac8  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
002acc  0a900302  vmul.f.mz.rn vr0{mr1}, r7, vr0
002ad0  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
002ad4  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
002ad8  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
002adc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002ae0  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
002ae4  46103202  vstore_mask16.mz vr3{mr1}, 0(r4)
002ae8  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
002aec  bb5e01fe  bneq r2, zero, -76
002af0  1f01ffcd  addli r2, r30, -6408
002af4  e3401fce  loadli.w r1,  -6388(r30)
002af8  a7080d00  addli.d r[17:18], r[26:27], 0
002afc  6b520100  load.d r[4:5], 0(r2)
002b00  bbd00000  bneq r1, zero, 52
002b04  9bb02800  slli r1, r17, 2
002b08  a7884800  addli.d r[17:18], r[17:18], 32
002b0c  8b901410  add.s r1, r9, r1
002b10  13a14804  setlt.ul r2, r[17:18], r[4:5]
002b14  9f818000  addli r3, r1, 64
002b18  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002b1c  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
002b20  0a900302  vmul.f.mz.rn vr0{mr1}, r7, vr0
002b24  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
002b28  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002b2c  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
002b30  3b5f01fe  bneq r2, zero, -44
002b34  e3001fce  loadli.w r1,  -6392(r30)
002b38  a7080200  addli.d r[17:18], r[4:5], 0
002b3c  3be700fc  bneq r1, zero, -1576
002b40  9bb02800  slli r1, r17, 2
002b44  a7882800  addli.d r[17:18], r[17:18], 16
002b48  8b901410  add.s r1, r9, r1
002b4c  13b1b804  setlt.sl r2, r[17:18], r[11:12]
002b50  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002b54  0a900302  vmul.f.mz.rn vr0{mr1}, r7, vr0
002b58  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002b5c  bb1f01fe  bneq r2, zero, -28
002b60  db36ffff  j -1612
002b64  1f025fcd  addli r4, r30, -6488
002b68  9f100000  addli r1, zero, 1
002b6c  6b510200  load.d r[2:3], 0(r4)
002b70  bf2111fc  blt.s r2, r1, -1944
002b74  9f030fcf  addli r7, r30, -6272
002b78  1f040fcf  addli r8, r30, -6272
002b7c  1f070000  addli r14, zero, 0
002b80  9f888300  addli r17, r7, 64
002b84  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
002b88  9f830301  addli r7, r7, 128
002b8c  1f074700  addli r14, r14, 32
002b90  c2910802  vload_mask16.mz vr3{mr1}, 0(r17)
002b94  06100100  vfloat2fp16_l.rn vr0, vr2
002b98  06d00100  vfloat2fp16_h.rn vr0, vr3
002b9c  46000402  vstore.mz vr0{mr1}, 0(r8)
002ba0  1f048400  addli r8, r8, 64
002ba4  3f7f27fe  blt.s r14, r2, -36
002ba8  5b06ffff  j -2000
002bac  b3013028  zext_int2long r[3:4], zero
002bb0  9ff0f4ff  addli r1, r9, -1
002bb4  1bb11400  slli r2, r9, 1
002bb8  1f0c0fcf  addli r24, r30, -6272
002bbc  a7860400  addli.d r[13:14], r[9:10], 0
002bc0  1f05ffce  addli r10, r30, -6280
002bc4  8ba1a111  add.ul r[3:4], r[3:4], r[26:27]
002bc8  1f49ffcc  addli r18, r30, -6532
002bcc  9f0c0fff  addli r25, r30, -128
002bd0  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002bd4  fe010ae0  vmmov mr3, r20
002bd8  8b907031  div.s r1, r1, r23
002bdc  e7012fce  storeli.w r2, -6376(r30)
002be0  2bf1ffff  lui r2, 1048575
002be4  e703ffce  storeli.w r15, -6344(r30)
002be8  67433fcf  storeli.w r19, -6348(r30)
002bec  9b1201fe  ori r5, r2, 4064
002bf0  178e5400  and r28, r9, r5
002bf4  1bb37000  slli r6, r1, 7
002bf8  9bb36000  slli r7, r1, 6
002bfc  1b342e00  slli r8, r28, 2
002c00  6741cfcf  storeli.w r28, -6380(r30)
002c04  0b136c10  add.s r6, r24, r6
002c08  8b158c10  add.s r11, r24, r8
002c0c  67456fcc  storeli.w r6, -6572(r30)
002c10  0b137c10  add.s r6, r24, r7
002c14  9b13f1ff  ori r7, r2, 4095
002c18  e70fbfcc  storeli.w r11, -6408(r30)
002c1c  67056fcc  storeli.w r6, -6576(r30)
002c20  1b83f401  andi r6, r9, 31
002c24  97a07000  xor r1, r1, r7
002c28  17b36300  sll r6, r7, r6
002c2c  9bb05000  slli r1, r1, 5
002c30  17237300  xor r6, r6, r7
002c34  e7041fcc  storeli.w r1, -6584(r30)
002c38  9bb02600  slli r1, r13, 2
002c3c  7e0003e0  vmmov mr0, r6
002c40  1b440301  srli r8, r6, 16
002c44  1f838500  addli r6, r11, 64
002c48  eb550500  load.d r[11:12], 0(r10)
002c4c  7e0000a0  vmmov zero, mr0
002c50  67000900  storeli.w zero, 0(r18)
002c54  7e0004e0  vmmov mr0, r8
002c58  17200000  xor zero, zero, zero
002c5c  1f04ffcc  addli r8, r30, -6536
002c60  674f6fcc  storeli.w r6, -6412(r30)
002c64  1f838c00  addli r6, r25, 64
002c68  0bb83518  sub.sl r[16:17], r[11:12], r[3:4]
002c6c  7e0000a0  vmmov zero, mr0
002c70  67000400  storeli.w zero, 0(r8)
002c74  e7066fce  storeli.w r6, -6296(r30)
002c78  1b13c1ff  ori r6, r2, 4092
002c7c  17200000  xor zero, zero, zero
002c80  97045800  and r9, r16, r5
002c84  1b04f801  andi r8, r16, 31
002c88  17896600  and r18, r13, r6
002c8c  17036800  and r6, r16, r6
002c90  9bb22400  slli r5, r9, 2
002c94  670c9fcc  storeli.w r9, -6464(r30)
002c98  674e6fcc  storeli.w r6, -6428(r30)
002c9c  e70b2fcd  storeli.w r18, -6472(r30)
002ca0  0b155c10  add.s r10, r24, r5
002ca4  97b28300  sll r5, r7, r8
002ca8  97a27200  xor r5, r5, r7
002cac  1f048500  addli r8, r10, 64
002cb0  6747afcc  storeli.w r10, -6540(r30)
002cb4  1f05dfcc  addli r10, r30, -6552
002cb8  8b13ae11  add.s r7, r28, r26
002cbc  7e8002e0  vmmov mr0, r5
002cc0  9bc20201  srli r5, r5, 16
002cc4  67078fcc  storeli.w r8, -6544(r30)
002cc8  1f449fcc  addli r8, r30, -6580
002ccc  7e0000a0  vmmov zero, mr0
002cd0  67065fce  storeli.w r5, -6304(r30)
002cd4  a78201f4  addli.d r[5:6], r[3:4], 31232
002cd8  67000400  storeli.w zero, 0(r8)
002cdc  17200000  xor zero, zero, zero
002ce0  73305500  store.d r[5:6], 0(r10)
002ce4  9f020c2f  addli r5, r24, 6016
002ce8  1b1301f8  ori r6, r2, 3968
002cec  1b1101ff  ori r2, r2, 4080
002cf0  1f058c17  addli r10, r24, 3008
002cf4  674b5fcc  storeli.w r5, -6476(r30)
002cf8  9f02bfce  addli r5, r30, -6312
002cfc  17846000  and r8, r1, r6
002d00  97802000  and r1, r1, r2
002d04  73b0d200  store.d r[13:14], 0(r5)
002d08  8b92b318  sub.s r5, r7, r11
002d0c  8b13a911  add.s r7, r18, r26
002d10  8b101c10  add.s r1, r24, r1
002d14  9f06bfcd  addli r13, r30, -6440
002d18  1f071fcd  addli r14, r30, -6520
002d1c  1f090002  addli r18, zero, 256
002d20  67465fcc  storeli.w r5, -6556(r30)
002d24  8b128c10  add.s r5, r24, r8
002d28  670a1fcc  storeli.w r1, -6496(r30)
002d2c  1f049fcd  addli r8, r30, -6456
002d30  670f5fcc  storeli.w r5, -6416(r30)
002d34  8b92b318  sub.s r5, r7, r11
002d38  8b933410  add.s r7, r9, r3
002d3c  73300401  store.d r[16:17], 0(r8)
002d40  1f04c00b  addli r8, zero, 1504
002d44  e70a5fcc  storeli.w r5, -6488(r30)
002d48  e342cfcd  loadli.w r5,  -6428(r30)
002d4c  8b913210  add.s r3, r5, r3
002d50  1b322800  slli r4, r16, 2
002d54  8b92b318  sub.s r5, r7, r11
002d58  9f08afcd  addli r17, r30, -6448
002d5c  1f082fcd  addli r16, r30, -6512
002d60  97006200  and r1, r4, r6
002d64  27830500  addli.d r[6:7], r[11:12], 0
002d68  9f050fce  addli r11, r30, -6400
002d6c  1f06dfcd  addli r12, r30, -6424
002d70  67445fcc  storeli.w r5, -6588(r30)
002d74  8b101c10  add.s r1, r24, r1
002d78  67041fcc  storeli.w r1, -6592(r30)
002d7c  8b906118  sub.s r1, r3, r6
002d80  e3419fce  loadli.w r3,  -6324(r30)
002d84  e7491fcc  storeli.w r1, -6500(r30)
002d88  97002200  and r1, r4, r2
002d8c  0b11a319  sub.s r2, r6, r26
002d90  17324d03  sll.d r[4:5], r[26:27], r20
002d94  8b101c10  add.s r1, r24, r1
002d98  73304800  store.d r[4:5], 0(r16)
002d9c  1f48f00b  addli r16, zero, 1532
002da0  e7091fcc  storeli.w r1, -6504(r30)
002da4  9f0001f4  addli r1, r2, -1536
002da8  e7431fcc  storeli.w r1, -6596(r30)
002dac  9f808100  addli r1, r3, 64
002db0  67011fce  storeli.w r1, -6384(r30)
002db4  b3101e28  sext_int2long r[1:2], r28
002db8  73b01500  store.d r[1:2], 0(r11)
002dbc  b390142a  sext_int2long r[1:2], r9
002dc0  9f04bfcc  addli r9, r30, -6568
002dc4  73b01400  store.d r[1:2], 0(r9)
002dc8  a7000d0c  addli.d r[1:2], r[26:27], 1536
002dcc  73301600  store.d r[1:2], 0(r12)
002dd0  ebd00600  load.d r[1:2], 0(r13)
002dd4  8ba04010  add.ul r[1:2], r[1:2], r[4:5]
002dd8  73301700  store.d r[1:2], 0(r14)
002ddc  ebd00800  load.d r[1:2], 0(r17)
002de0  8ba04010  add.ul r[1:2], r[1:2], r[4:5]
002de4  1f020fcd  addli r4, r30, -6528
002de8  73301200  store.d r[1:2], 0(r4)
002dec  9f800101  addli r1, r3, 128
002df0  1f015fce  addli r2, r30, -6360
002df4  e7401fce  storeli.w r1, -6388(r30)
002df8  9f808101  addli r1, r3, 192
002dfc  7330a101  store.d r[26:27], 0(r2)
002e00  e7001fce  storeli.w r1, -6392(r30)
002e04  9b108c00  ori r1, r24, 8
002e08  67071fce  storeli.w r1, -6288(r30)
002e0c  e300cfce  loadli.w r1,  -6304(r30)
002e10  7e8000e0  vmmov mr0, r1
002e14  9f007fcc  addli r1, r30, -6600
002e18  7e0000a0  vmmov zero, mr0
002e1c  67800000  storeli.w zero, 0(r1)
002e20  17200000  xor zero, zero, zero
002e24  5b0e0000  j 112
002e28  9f044fce  addli r9, r30, -6368
002e2c  9f050fcd  addli r11, r30, -6528
002e30  ebd00400  load.d r[1:2], 0(r9)
002e34  00a00000  mfence { lm }
002e38  ab0100f0  lui r3, 983040
002e3c  6bd20500  load.d r[4:5], 0(r11)
002e40  8bb01a20  mul.sl r[1:2], r[21:22], r[1:2]
002e44  97b04003  sll.d r[1:2], r[1:2], r20
002e48  8b201210  add.ul r[1:2], r[4:5], r[1:2]
002e4c  63023fce  loadli.w r4,  -6376(r30)
002e50  97113200  or r3, r4, r3
002e54  ffb18001  s_lm2gm r3, r24, 0(r[1:2])
002e58  00a00200  mfence { lm, gm }
002e5c  9f01afce  addli r3, r30, -6320
002e60  1f028fce  addli r4, r30, -6336
002e64  e3077fce  loadli.w r15,  -6344(r30)
002e68  e3496fce  loadli.w r19,  -6348(r30)
002e6c  634e2fce  loadli.w r28,  -6380(r30)
002e70  9f0b4000  addli r23, zero, 32
002e74  1f090002  addli r18, zero, 256
002e78  ebda0100  load.d r[21:22], 0(r3)
002e7c  eb500200  load.d r[1:2], 0(r4)
002e80  a79a0a00  addli.d r[21:22], r[21:22], 1
002e84  93b01a04  setlt.sl r1, r[21:22], r[1:2]
002e88  1f015fce  addli r2, r30, -6360
002e8c  6b5d0100  load.d r[26:27], 0(r2)
002e90  37f80006  beq r1, zero, 3612
002e94  9f01bfce  addli r3, r30, -6312
002e98  9f10000c  addli r1, zero, 1537
002e9c  ebd50100  load.d r[11:12], 0(r3)
002ea0  b380102a  zext_int2long r[1:2], r1
002ea4  93b01504  setlt.sl r1, r[11:12], r[1:2]
002ea8  67061fce  storeli.w r1, -6304(r30)
002eac  bbb60000  bneq r1, zero, 428
002eb0  9330a307  setle.sl r1, r[6:7], r[26:27]
002eb4  ab0180ff  lui r3, 1046528
002eb8  3b9b0000  bneq r1, zero, 708
002ebc  9f044fce  addli r9, r30, -6368
002ec0  9f06bfcd  addli r13, r30, -6440
002ec4  a7050d00  addli.d r[11:12], r[26:27], 0
002ec8  ebd00400  load.d r[1:2], 0(r9)
002ecc  ebd10600  load.d r[3:4], 0(r13)
002ed0  8bb01a20  mul.sl r[1:2], r[21:22], r[1:2]
002ed4  97b04003  sll.d r[1:2], r[1:2], r20
002ed8  0ba21110  add.ul r[4:5], r[3:4], r[1:2]
002edc  ab0180ff  lui r3, 1046528
002ee0  5b0a0000  j 80
002ee4  1f090002  addli r18, zero, 256
002ee8  9f00ffce  addli r1, r30, -6280
002eec  a785050c  addli.d r[11:12], r[11:12], 1536
002ef0  6a7109c0  vsrl.p vr2, r18, vr0
002ef4  6bd30000  load.d r[6:7], 0(r1)
002ef8  9f000001  addli r1, zero, 128
002efc  00a00000  mfence { lm }
002f00  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
002f04  6af100c0  vsrl.p vr2, r1, vr0
002f08  9f008000  addli r1, zero, 64
002f0c  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
002f10  6af100c0  vsrl.p vr2, r1, vr0
002f14  93b06504  setlt.sl r1, r[11:12], r[6:7]
002f18  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
002f1c  6af10bc0  vsrl.p vr2, r23, vr0
002f20  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
002f24  7a110026  vextract.f r2, vr0{mr3}
002f28  8be12148  max.f r3, r3, r2
002f2c  37c90000  beq r1, zero, 592
002f30  8b30b318  sub.sl r[1:2], r[6:7], r[11:12]
002f34  1f03000c  addli r6, zero, 1536
002f38  97b64503  sll.d r[13:14], r[11:12], r20
002f3c  0b936040  min.s r6, r1, r6
002f40  ab0000f0  lui r1, 983040
002f44  8b26d210  add.ul r[13:14], r[4:5], r[13:14]
002f48  1b311300  slli r2, r6, 1
002f4c  97101100  or r1, r2, r1
002f50  ffa08601  l_gm2lm r1, r24, 0(r[13:14])
002f54  00a00200  mfence { lm, gm }
002f58  abf0ffff  lui r1, 1048575
002f5c  9b9020fe  ori r1, r1, 4066
002f60  3f511300  blt.s r6, r1, 84
002f64  9f70f3ff  addli r1, r6, -1
002f68  2bf1ffff  lui r2, 1048575
002f6c  8b907031  div.s r1, r1, r23
002f70  1b11f1ff  ori r2, r2, 4095
002f74  9bb37000  slli r7, r1, 7
002f78  9bb46000  slli r9, r1, 6
002f7c  97a02000  xor r1, r1, r2
002f80  8b137c10  add.s r7, r24, r7
002f84  8b149c10  add.s r9, r24, r9
002f88  9bb65000  slli r13, r1, 5
002f8c  42800402  vload.mz vr0{mr1}, 0(r9)
002f90  06310000  vfp162float_l.rn vr2, vr0
002f94  9f808300  addli r1, r7, 64
002f98  86710000  vfp162float_h.rn vr3, vr0
002f9c  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002fa0  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
002fa4  9f8484ff  addli r9, r9, -64
002fa8  9f864600  addli r13, r13, 32
002fac  9f8303ff  addli r7, r7, -128
002fb0  3bff06fe  bneq r13, zero, -36
002fb4  00a00000  mfence { lm }
002fb8  abf0ffff  lui r1, 1048575
002fbc  ab0380ff  lui r7, 1046528
002fc0  9b9000fe  ori r1, r1, 4064
002fc4  97041300  and r9, r6, r1
002fc8  3f914401  blt.s r9, r20, 68
002fcc  ab0080ff  lui r1, 1046528
002fd0  b396d42a  sext_int2long r[13:14], r9
002fd4  b3081029  zext_int2long r[17:18], zero
002fd8  6a901022  vor.f.mz vr0{mr1}, r1, vr1
002fdc  9bb02800  slli r1, r17, 2
002fe0  a7884800  addli.d r[17:18], r[17:18], 32
002fe4  8b101c10  add.s r1, r24, r1
002fe8  13b1d804  setlt.sl r2, r[17:18], r[13:14]
002fec  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002ff0  9f808000  addli r1, r1, 64
002ff4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002ff8  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
002ffc  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
003000  3b7f01fe  bneq r2, zero, -36
003004  3fd06400  blt.s r9, r6, 20
003008  dbdbffff  j -292
00300c  6a901322  vor.f.mz vr0{mr1}, r7, vr1
003010  3fa06400  blt.s r9, r6, 8
003014  5bdaffff  j -304
003018  abf0ffff  lui r1, 1048575
00301c  1b01f301  andi r2, r6, 31
003020  1bb32400  slli r6, r9, 2
003024  9b90f0ff  ori r1, r1, 4095
003028  17b12000  sll r2, r1, r2
00302c  97201100  xor r1, r2, r1
003030  0b116c10  add.s r2, r24, r6
003034  7e8000e0  vmmov mr0, r1
003038  9bc00001  srli r1, r1, 16
00303c  42110100  vload_mask16.mz vr2{mr0}, 0(r2)
003040  1f018100  addli r2, r2, 64
003044  7e8100e0  vmmov mr2, r1
003048  c2110104  vload_mask16.mz vr3{mr2}, 0(r2)
00304c  36102010  vmax.f.mh vr0{mr0}, vr0, vr2
003050  36103014  vmax.f.mh vr0{mr2}, vr0, vr3
003054  5bd2ffff  j -368
003058  1f034fce  addli r6, r30, -6368
00305c  9f031fcd  addli r7, r30, -6520
003060  eb500300  load.d r[1:2], 0(r6)
003064  ab0100f0  lui r3, 983040
003068  63023fce  loadli.w r4,  -6376(r30)
00306c  8bb01a20  mul.sl r[1:2], r[21:22], r[1:2]
003070  97113200  or r3, r4, r3
003074  6bd20300  load.d r[4:5], 0(r7)
003078  97b04003  sll.d r[1:2], r[1:2], r20
00307c  8b201210  add.ul r[1:2], r[4:5], r[1:2]
003080  ffa18001  l_gm2lm r3, r24, 0(r[1:2])
003084  00a00200  mfence { lm, gm }
003088  abf0ffff  lui r1, 1048575
00308c  9b9020fe  ori r1, r1, 4066
003090  bfe01500  blt.s r11, r1, 56
003094  e3019fcc  loadli.w r3,  -6584(r30)
003098  6302afcc  loadli.w r4,  -6576(r30)
00309c  e342afcc  loadli.w r5,  -6572(r30)
0030a0  42000202  vload.mz vr0{mr1}, 0(r4)
0030a4  06310000  vfp162float_l.rn vr2, vr0
0030a8  9f808200  addli r1, r5, 64
0030ac  86710000  vfp162float_h.rn vr3, vr0
0030b0  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0030b4  46902202  vstore_mask16.mz vr2{mr1}, 0(r5)
0030b8  1f0282ff  addli r4, r4, -64
0030bc  9f814100  addli r3, r3, 32
0030c0  9f8202ff  addli r5, r5, -128
0030c4  3bff01fe  bneq r3, zero, -36
0030c8  ab0180ff  lui r3, 1046528
0030cc  00a00000  mfence { lm }
0030d0  bf3e4e05  blt.s r28, r20, 2988
0030d4  ab0080ff  lui r1, 1046528
0030d8  b3013028  zext_int2long r[3:4], zero
0030dc  6a901022  vor.f.mz vr0{mr1}, r1, vr1
0030e0  9f000fce  addli r1, r30, -6400
0030e4  ebd20000  load.d r[5:6], 0(r1)
0030e8  9bb02100  slli r1, r3, 2
0030ec  a7814100  addli.d r[3:4], r[3:4], 32
0030f0  8b101c10  add.s r1, r24, r1
0030f4  13b15104  setlt.sl r2, r[3:4], r[5:6]
0030f8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0030fc  9f808000  addli r1, r1, 64
003100  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
003104  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
003108  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
00310c  3b7f01fe  bneq r2, zero, -36
003110  93b0b204  setlt.sl r1, r[5:6], r[11:12]
003114  b7f00000  beq r1, zero, 60
003118  1f41ffcc  addli r2, r30, -6532
00311c  e300ffcd  loadli.w r1,  -6408(r30)
003120  9f01ffcc  addli r3, r30, -6536
003124  63000100  loadli.w zero,  0(r2)
003128  7e0000e0  vmmov mr0, zero
00312c  17200000  xor zero, zero, zero
003130  42910000  vload_mask16.mz vr2{mr0}, 0(r1)
003134  63800100  loadli.w zero,  0(r3)
003138  e340efcd  loadli.w r1,  -6412(r30)
00313c  7e0100e0  vmmov mr2, zero
003140  17200000  xor zero, zero, zero
003144  c2910004  vload_mask16.mz vr3{mr2}, 0(r1)
003148  36102010  vmax.f.mh vr0{mr0}, vr0, vr2
00314c  36103014  vmax.f.mh vr0{mr2}, vr0, vr3
003150  6a7109c0  vsrl.p vr2, r18, vr0
003154  9f000001  addli r1, zero, 128
003158  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
00315c  6af100c0  vsrl.p vr2, r1, vr0
003160  9f008000  addli r1, zero, 64
003164  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
003168  6af100c0  vsrl.p vr2, r1, vr0
00316c  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
003170  6af10bc0  vsrl.p vr2, r23, vr0
003174  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
003178  fa110026  vextract.f r3, vr0{mr3}
00317c  73e03700  stores.w r3, 0(r15)
003180  9f01bfce  addli r3, r30, -6312
003184  00200100  mfence { sm }
003188  abf00000  lui r1, 15
00318c  9b90f0ff  ori r1, r1, 4095
003190  80a10004  csr_set csr3, r1
003194  00d00100  sync_group
003198  ab000000  lui r1, 0
00319c  ebd50100  load.d r[11:12], 0(r3)
0031a0  9f800000  addli r1, r1, 0
0031a4  1f810000  addli r2, r1, 0
0031a8  9f008100  addli r1, r2, 64
0031ac  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
0031b0  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
0031b4  9f000101  addli r1, r2, 128
0031b8  1f018101  addli r2, r2, 192
0031bc  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
0031c0  4a120102  vloads_mask16.mz vr4{mr1}, 0(r2)
0031c4  9f000001  addli r1, zero, 128
0031c8  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
0031cc  36114102  vmax.f.mz vr2{mr1}, vr2, vr4
0031d0  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0031d4  6a7109c0  vsrl.p vr2, r18, vr0
0031d8  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0031dc  6af100c0  vsrl.p vr2, r1, vr0
0031e0  9f008000  addli r1, zero, 64
0031e4  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0031e8  6af100c0  vsrl.p vr2, r1, vr0
0031ec  9f00000c  addli r1, zero, 1536
0031f0  b380102a  zext_int2long r[1:2], r1
0031f4  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0031f8  93b0b004  setlt.sl r1, r[1:2], r[11:12]
0031fc  6af10bc0  vsrl.p vr2, r23, vr0
003200  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
003204  7a110026  vextract.f r2, vr0{mr3}
003208  8b680158  neg.f r17, r2
00320c  37dd0000  beq r1, zero, 852
003210  e3038fcd  loadli.w r7,  -6464(r30)
003214  e344cfcd  loadli.w r9,  -6428(r30)
003218  e3476fcd  loadli.w r15,  -6476(r30)
00321c  bfd04301  blt.s r7, r20, 52
003220  9f010fcf  addli r3, r30, -6272
003224  1f020000  addli r4, zero, 0
003228  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
00322c  9f808100  addli r1, r3, 64
003230  1f024200  addli r4, r4, 32
003234  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003238  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
00323c  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
003240  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003244  9f810101  addli r3, r3, 128
003248  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00324c  3f7f72fe  blt.s r4, r7, -36
003250  9f009fcd  addli r1, r30, -6456
003254  ebd50000  load.d r[11:12], 0(r1)
003258  3fa0b300  blt.s r7, r11, 8
00325c  5b0b0000  j 88
003260  00a00000  mfence { lm }
003264  9f010000  addli r3, zero, 0
003268  e340efcc  loadli.w r1,  -6540(r30)
00326c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
003270  e300efcc  loadli.w r1,  -6544(r30)
003274  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003278  e300dfce  loadli.w r1,  -6296(r30)
00327c  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
003280  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
003284  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003288  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00328c  00a00000  mfence { lm }
003290  63428fcc  loadli.w r4,  -6588(r30)
003294  e3028fcc  loadli.w r5,  -6592(r30)
003298  8b903c10  add.s r1, r25, r3
00329c  0b913210  add.s r2, r5, r3
0032a0  1f120200  addli r4, r4, 1
0032a4  9fc10100  addli r3, r3, 4
0032a8  e3800000  loadli.w r1,  0(r1)
0032ac  67001100  storeli.w r1, 0(r2)
0032b0  bb2f02fe  bneq r4, zero, -24
0032b4  00a00000  mfence { lm }
0032b8  3fa14401  blt.s r9, r20, 72
0032bc  6302efce  loadli.w r4,  -6288(r30)
0032c0  9f010000  addli r3, zero, 0
0032c4  e300f2ff  loadli.w r1,  -8(r4)
0032c8  6341f2ff  loadli.w r2,  -4(r4)
0032cc  e3020200  loadli.w r5,  0(r4)
0032d0  63430200  loadli.w r6,  4(r4)
0032d4  9fc10100  addli r3, r3, 4
0032d8  8f801000  exp.f.rn r1, r1
0032dc  0f012100  exp.f.rn r2, r2
0032e0  8f825200  exp.f.rn r5, r5
0032e4  0f036300  exp.f.rn r6, r6
0032e8  e70f12fe  storeli.w r1, -8(r4)
0032ec  e74f22fe  storeli.w r2, -4(r4)
0032f0  67005200  storeli.w r5, 0(r4)
0032f4  67406200  storeli.w r6, 4(r4)
0032f8  1f022200  addli r4, r4, 16
0032fc  3faf91fe  blt.s r3, r9, -56
003300  e3013fcd  loadli.w r3,  -6504(r30)
003304  63423fcd  loadli.w r4,  -6500(r30)
003308  4bf09500  ble.s r11, r9, 28
00330c  e3800100  loadli.w r1,  0(r3)
003310  1f120200  addli r4, r4, 1
003314  8f801000  exp.f.rn r1, r1
003318  67801100  storeli.w r1, 0(r3)
00331c  9fc10100  addli r3, r3, 4
003320  bb3f02fe  bneq r4, zero, -20
003324  00a00000  mfence { lm }
003328  bfb54305  blt.s r7, r20, 2412
00332c  9f00bfcc  addli r1, r30, -6568
003330  b3013028  zext_int2long r[3:4], zero
003334  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003338  ebd20000  load.d r[5:6], 0(r1)
00333c  9bb02100  slli r1, r3, 2
003340  a7814100  addli.d r[3:4], r[3:4], 32
003344  8b101c10  add.s r1, r24, r1
003348  13b15104  setlt.sl r2, r[3:4], r[5:6]
00334c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003350  9f808000  addli r1, r1, 64
003354  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
003358  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00335c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
003360  3b7f01fe  bneq r2, zero, -36
003364  93b0b204  setlt.sl r1, r[5:6], r[11:12]
003368  b7f00000  beq r1, zero, 60
00336c  1f419fcc  addli r2, r30, -6580
003370  e340efcc  loadli.w r1,  -6540(r30)
003374  9f017fcc  addli r3, r30, -6600
003378  63000100  loadli.w zero,  0(r2)
00337c  7e0000e0  vmmov mr0, zero
003380  17200000  xor zero, zero, zero
003384  42910000  vload_mask16.mz vr2{mr0}, 0(r1)
003388  63800100  loadli.w zero,  0(r3)
00338c  e300efcc  loadli.w r1,  -6544(r30)
003390  7e0000e0  vmmov mr0, zero
003394  17200000  xor zero, zero, zero
003398  c2910000  vload_mask16.mz vr3{mr0}, 0(r1)
00339c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0033a0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0033a4  6a7109c0  vsrl.p vr2, r18, vr0
0033a8  9f00dfcc  addli r1, r30, -6552
0033ac  ebd50000  load.d r[11:12], 0(r1)
0033b0  9f000001  addli r1, zero, 128
0033b4  00a00000  mfence { lm }
0033b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0033bc  6af100c0  vsrl.p vr2, r1, vr0
0033c0  9f008000  addli r1, zero, 64
0033c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0033c8  6af100c0  vsrl.p vr2, r1, vr0
0033cc  93b0a505  setlt.sl r1, r[11:12], r[26:27]
0033d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0033d4  6af10bc0  vsrl.p vr2, r23, vr0
0033d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0033dc  7a110026  vextract.f r2, vr0{mr3}
0033e0  8b610110  add.f.rn r3, r2, zero
0033e4  bbcc0000  bneq r1, zero, 816
0033e8  1f034fce  addli r6, r30, -6368
0033ec  9f03bfcd  addli r7, r30, -6440
0033f0  eb500300  load.d r[1:2], 0(r6)
0033f4  6bd20300  load.d r[4:5], 0(r7)
0033f8  8bb01a20  mul.sl r[1:2], r[21:22], r[1:2]
0033fc  97b04003  sll.d r[1:2], r[1:2], r20
003400  0b221210  add.ul r[4:5], r[4:5], r[1:2]
003404  97b04503  sll.d r[1:2], r[11:12], r20
003408  ab0300f0  lui r7, 983040
00340c  9f040018  addli r9, zero, 3072
003410  1f030000  addli r6, zero, 0
003414  8b201210  add.ul r[1:2], r[4:5], r[1:2]
003418  97937400  or r7, r9, r7
00341c  ffa38001  l_gm2lm r7, r24, 0(r[1:2])
003420  9f830700  addli r7, r15, 0
003424  00a00200  mfence { lm, gm }
003428  8b106510  add.s r1, r10, r6
00342c  42800002  vload.mz vr0{mr1}, 0(r1)
003430  06310000  vfp162float_l.rn vr2, vr0
003434  1f818300  addli r2, r7, 64
003438  86710000  vfp162float_h.rn vr3, vr0
00343c  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
003440  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
003444  1f0383ff  addli r6, r6, -64
003448  9f8303ff  addli r7, r7, -128
00344c  abf0ffff  lui r1, 1048575
003450  9b900040  ori r1, r1, 1024
003454  3b5f13fe  bneq r6, r1, -44
003458  00a00000  mfence { lm }
00345c  abf0ffff  lui r1, 1048575
003460  1f030fcf  addli r6, r30, -6272
003464  9b9300fe  ori r7, r1, 4064
003468  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
00346c  9f008300  addli r1, r6, 64
003470  9f834300  addli r7, r7, 32
003474  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003478  13818304  setlt.u r2, r7, r8
00347c  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
003480  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
003484  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
003488  1f030301  addli r6, r6, 128
00348c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003490  3b6f01fe  bneq r2, zero, -40
003494  00a00000  mfence { lm }
003498  abf0ffff  lui r1, 1048575
00349c  e303efce  loadli.w r7,  -6288(r30)
0034a0  1b93c0ff  ori r6, r1, 4092
0034a4  e380f3ff  loadli.w r1,  -8(r7)
0034a8  63c1f3ff  loadli.w r2,  -4(r7)
0034ac  e3840300  loadli.w r9,  0(r7)
0034b0  e3c60300  loadli.w r13,  4(r7)
0034b4  1f430300  addli r6, r6, 4
0034b8  13070305  setlt.u r14, r6, r16
0034bc  8f801000  exp.f.rn r1, r1
0034c0  0f012100  exp.f.rn r2, r2
0034c4  8f849400  exp.f.rn r9, r9
0034c8  8f86d600  exp.f.rn r13, r13
0034cc  e78f13fe  storeli.w r1, -8(r7)
0034d0  e7cf23fe  storeli.w r2, -4(r7)
0034d4  67809300  storeli.w r9, 0(r7)
0034d8  67c0d300  storeli.w r13, 4(r7)
0034dc  9f832300  addli r7, r7, 16
0034e0  3b1f07fe  bneq r14, zero, -60
0034e4  33036028  zext_int2long r[6:7], zero
0034e8  00a00000  mfence { lm }
0034ec  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0034f0  9b302300  slli r1, r6, 2
0034f4  b306d428  zext_int2long r[13:14], r8
0034f8  8b101c10  add.s r1, r24, r1
0034fc  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003500  9f808000  addli r1, r1, 64
003504  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
003508  9320d304  setlt.ul r1, r[6:7], r[13:14]
00350c  27034300  addli.d r[6:7], r[6:7], 32
003510  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003514  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
003518  3bef00fe  bneq r1, zero, -40
00351c  6a7109c0  vsrl.p vr2, r18, vr0
003520  9f000001  addli r1, zero, 128
003524  a78505f4  addli.d r[11:12], r[11:12], 31232
003528  00a00000  mfence { lm }
00352c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003530  6af100c0  vsrl.p vr2, r1, vr0
003534  9f008000  addli r1, zero, 64
003538  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00353c  6af100c0  vsrl.p vr2, r1, vr0
003540  9330bd06  setle.sl r1, r[26:27], r[11:12]
003544  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003548  6af10bc0  vsrl.p vr2, r23, vr0
00354c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003550  7a110026  vextract.f r2, vr0{mr3}
003554  8be12110  add.f.rn r3, r3, r2
003558  bbba00fe  bneq r1, zero, -340
00355c  5b370000  j 440
003560  bf504e01  blt.s r28, r20, 52
003564  9f010fcf  addli r3, r30, -6272
003568  1f020000  addli r4, zero, 0
00356c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003570  9f808100  addli r1, r3, 64
003574  1f024200  addli r4, r4, 32
003578  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00357c  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
003580  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
003584  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003588  9f810101  addli r3, r3, 128
00358c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003590  3f7fc2ff  blt.s r4, r28, -36
003594  e3037fcd  loadli.w r7,  -6472(r30)
003598  3f20be00  blt.s r28, r11, 8
00359c  5b0b0000  j 88
0035a0  00a00000  mfence { lm }
0035a4  9f010000  addli r3, zero, 0
0035a8  e300ffcd  loadli.w r1,  -6408(r30)
0035ac  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0035b0  e340efcd  loadli.w r1,  -6412(r30)
0035b4  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0035b8  e300dfce  loadli.w r1,  -6296(r30)
0035bc  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
0035c0  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
0035c4  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
0035c8  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0035cc  00a00000  mfence { lm }
0035d0  6342cfcc  loadli.w r4,  -6556(r30)
0035d4  e302efcd  loadli.w r5,  -6416(r30)
0035d8  8b903c10  add.s r1, r25, r3
0035dc  0b913210  add.s r2, r5, r3
0035e0  1f120200  addli r4, r4, 1
0035e4  9fc10100  addli r3, r3, 4
0035e8  e3800000  loadli.w r1,  0(r1)
0035ec  67001100  storeli.w r1, 0(r2)
0035f0  bb2f02fe  bneq r4, zero, -24
0035f4  00a00000  mfence { lm }
0035f8  3fa14301  blt.s r7, r20, 72
0035fc  6302efce  loadli.w r4,  -6288(r30)
003600  9f010000  addli r3, zero, 0
003604  e300f2ff  loadli.w r1,  -8(r4)
003608  6341f2ff  loadli.w r2,  -4(r4)
00360c  e3020200  loadli.w r5,  0(r4)
003610  63430200  loadli.w r6,  4(r4)
003614  9fc10100  addli r3, r3, 4
003618  8f801000  exp.f.rn r1, r1
00361c  0f012100  exp.f.rn r2, r2
003620  8f825200  exp.f.rn r5, r5
003624  0f036300  exp.f.rn r6, r6
003628  e70f12fe  storeli.w r1, -8(r4)
00362c  e74f22fe  storeli.w r2, -4(r4)
003630  67005200  storeli.w r5, 0(r4)
003634  67406200  storeli.w r6, 4(r4)
003638  1f022200  addli r4, r4, 16
00363c  3faf71fe  blt.s r3, r7, -56
003640  e3014fcd  loadli.w r3,  -6496(r30)
003644  63025fcd  loadli.w r4,  -6488(r30)
003648  4bf07500  ble.s r11, r7, 28
00364c  e3800100  loadli.w r1,  0(r3)
003650  1f120200  addli r4, r4, 1
003654  8f801000  exp.f.rn r1, r1
003658  67801100  storeli.w r1, 0(r3)
00365c  9fc10100  addli r3, r3, 4
003660  bb3f02fe  bneq r4, zero, -20
003664  9f000fce  addli r1, r30, -6400
003668  00a00000  mfence { lm }
00366c  12301002  vadd.s.mz vr0{mr1}, zero, vr1
003670  ebd20000  load.d r[5:6], 0(r1)
003674  bf504e01  blt.s r28, r20, 52
003678  b3013028  zext_int2long r[3:4], zero
00367c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003680  9bb02100  slli r1, r3, 2
003684  a7814100  addli.d r[3:4], r[3:4], 32
003688  8b101c10  add.s r1, r24, r1
00368c  13b15104  setlt.sl r2, r[3:4], r[5:6]
003690  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003694  9f808000  addli r1, r1, 64
003698  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00369c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0036a0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0036a4  3b7f01fe  bneq r2, zero, -36
0036a8  93b0b204  setlt.sl r1, r[5:6], r[11:12]
0036ac  b7f00000  beq r1, zero, 60
0036b0  1f41ffcc  addli r2, r30, -6532
0036b4  e300ffcd  loadli.w r1,  -6408(r30)
0036b8  9f01ffcc  addli r3, r30, -6536
0036bc  63000100  loadli.w zero,  0(r2)
0036c0  7e0000e0  vmmov mr0, zero
0036c4  17200000  xor zero, zero, zero
0036c8  42910000  vload_mask16.mz vr2{mr0}, 0(r1)
0036cc  63800100  loadli.w zero,  0(r3)
0036d0  e340efcd  loadli.w r1,  -6412(r30)
0036d4  7e0000e0  vmmov mr0, zero
0036d8  17200000  xor zero, zero, zero
0036dc  c2910000  vload_mask16.mz vr3{mr0}, 0(r1)
0036e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0036e4  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0036e8  6a7109c0  vsrl.p vr2, r18, vr0
0036ec  9f000001  addli r1, zero, 128
0036f0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0036f4  6af100c0  vsrl.p vr2, r1, vr0
0036f8  9f008000  addli r1, zero, 64
0036fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003700  6af100c0  vsrl.p vr2, r1, vr0
003704  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003708  6af10bc0  vsrl.p vr2, r23, vr0
00370c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003710  fa110026  vextract.f r3, vr0{mr3}
003714  73e03900  stores.w r3, 0(r19)
003718  00200100  mfence { sm }
00371c  abf00000  lui r1, 15
003720  9b90f0ff  ori r1, r1, 4095
003724  80a10004  csr_set csr3, r1
003728  00d00100  sync_group
00372c  e3409fce  loadli.w r1,  -6324(r30)
003730  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
003734  e3002fce  loadli.w r1,  -6384(r30)
003738  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
00373c  e3401fce  loadli.w r1,  -6388(r30)
003740  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
003744  e3001fce  loadli.w r1,  -6392(r30)
003748  4a920002  vloads_mask16.mz vr4{mr1}, 0(r1)
00374c  9f000001  addli r1, zero, 128
003750  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
003754  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
003758  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00375c  6a7109c0  vsrl.p vr2, r18, vr0
003760  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003764  6af100c0  vsrl.p vr2, r1, vr0
003768  9f008000  addli r1, zero, 64
00376c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003770  6af100c0  vsrl.p vr2, r1, vr0
003774  ab00803f  lui r1, 260096
003778  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00377c  6af10bc0  vsrl.p vr2, r23, vr0
003780  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003784  7a110026  vextract.f r2, vr0{mr3}
003788  8f862018  div.f.rn r13, r1, r2
00378c  e300cfce  loadli.w r1,  -6304(r30)
003790  1f01afce  addli r2, r30, -6320
003794  73305101  store.d r[21:22], 0(r2)
003798  3b900002  bneq r1, zero, 1028
00379c  abf0ffff  lui r1, 1048575
0037a0  9f010fcf  addli r3, r30, -6272
0037a4  1b9200fe  ori r4, r1, 4064
0037a8  9f00ffce  addli r1, r30, -6280
0037ac  6bd30000  load.d r[6:7], 0(r1)
0037b0  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0037b4  9f808100  addli r1, r3, 64
0037b8  1f024200  addli r4, r4, 32
0037bc  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0037c0  13018204  setlt.u r2, r4, r8
0037c4  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
0037c8  0a912602  vmul.f.mz.rn vr2{mr1}, r13, vr2
0037cc  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0037d0  9f810101  addli r3, r3, 128
0037d4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0037d8  3b6f01fe  bneq r2, zero, -40
0037dc  00a00000  mfence { lm }
0037e0  abf0ffff  lui r1, 1048575
0037e4  9f010fcf  addli r3, r30, -6272
0037e8  9f020fcf  addli r5, r30, -6272
0037ec  1b9200fe  ori r4, r1, 4064
0037f0  9f808100  addli r1, r3, 64
0037f4  1f024200  addli r4, r4, 32
0037f8  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
0037fc  9f810101  addli r3, r3, 128
003800  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003804  93008204  setlt.u r1, r4, r8
003808  06900100  vfloat2fp16_l.rn vr0, vr3
00380c  06500100  vfloat2fp16_h.rn vr0, vr2
003810  46800202  vstore.mz vr0{mr1}, 0(r5)
003814  9f828200  addli r5, r5, 64
003818  3bef00fe  bneq r1, zero, -40
00381c  9f044fce  addli r9, r30, -6368
003820  1f07dfcd  addli r14, r30, -6424
003824  9f07afcd  addli r15, r30, -6448
003828  1f092fcd  addli r18, r30, -6512
00382c  ebd00400  load.d r[1:2], 0(r9)
003830  eb510700  load.d r[3:4], 0(r14)
003834  00a00000  mfence { lm }
003838  8bb01a20  mul.sl r[1:2], r[21:22], r[1:2]
00383c  93323306  setle.sl r5, r[6:7], r[3:4]
003840  97b14003  sll.d r[3:4], r[1:2], r20
003844  ebd00700  load.d r[1:2], 0(r15)
003848  8ba53010  add.ul r[11:12], r[1:2], r[3:4]
00384c  ab0000f0  lui r1, 983040
003850  6b530900  load.d r[6:7], 0(r18)
003854  1f010018  addli r2, zero, 3072
003858  97101100  or r1, r2, r1
00385c  0ba36510  add.ul r[6:7], r[11:12], r[6:7]
003860  ff308301  s_lm2gm r1, r24, 0(r[6:7])
003864  9f00ffce  addli r1, r30, -6280
003868  6bd30000  load.d r[6:7], 0(r1)
00386c  00a00200  mfence { lm, gm }
003870  bbb702fa  bneq r5, zero, -2580
003874  9f02bfcd  addli r5, r30, -6440
003878  ebd00200  load.d r[1:2], 0(r5)
00387c  8ba03010  add.ul r[1:2], r[1:2], r[3:4]
003880  9f01cfce  addli r3, r30, -6304
003884  73b01100  store.d r[1:2], 0(r3)
003888  9f00dfcd  addli r1, r30, -6424
00388c  00a00000  mfence { lm }
003890  634d7fcc  loadli.w r26,  -6596(r30)
003894  6bd70000  load.d r[14:15], 0(r1)
003898  db060000  j 52
00389c  9f02ffce  addli r5, r30, -6280
0038a0  00a00000  mfence { lm }
0038a4  ab0000f0  lui r1, 983040
0038a8  2707070c  addli.d r[14:15], r[14:15], 1536
0038ac  8ba15511  add.ul r[3:4], r[11:12], r[21:22]
0038b0  1f0d0df4  addli r26, r26, -1536
0038b4  6bd30200  load.d r[6:7], 0(r5)
0038b8  97101e00  or r1, r28, r1
0038bc  ffb08101  s_lm2gm r1, r24, 0(r[3:4])
0038c0  13316704  setlt.sl r2, r[14:15], r[6:7]
0038c4  00a00200  mfence { lm, gm }
0038c8  375601fa  beq r2, zero, -2668
0038cc  8b31e318  sub.sl r[3:4], r[6:7], r[14:15]
0038d0  9f00000c  addli r1, zero, 1536
0038d4  1f01cfce  addli r2, r30, -6304
0038d8  973a4703  sll.d r[21:22], r[14:15], r20
0038dc  8b9b1140  min.s r23, r3, r1
0038e0  ab0000f0  lui r1, 983040
0038e4  eb520100  load.d r[5:6], 0(r2)
0038e8  1bbe1b00  slli r28, r23, 1
0038ec  0ba95211  add.ul r[18:19], r[5:6], r[21:22]
0038f0  97101e00  or r1, r28, r1
0038f4  ff208901  l_gm2lm r1, r24, 0(r[18:19])
0038f8  00a00200  mfence { lm, gm }
0038fc  abf0ffff  lui r1, 1048575
003900  9b9020fe  ori r1, r1, 4066
003904  3fe11b00  blt.s r23, r1, 88
003908  9ff0fbff  addli r1, r23, -1
00390c  1f014000  addli r2, zero, 32
003910  8b902030  div.s r1, r1, r2
003914  2bf1ffff  lui r2, 1048575
003918  1b11f1ff  ori r2, r2, 4095
00391c  9bb37000  slli r7, r1, 7
003920  9bb46000  slli r9, r1, 6
003924  97a02000  xor r1, r1, r2
003928  8b137c10  add.s r7, r24, r7
00392c  8b149c10  add.s r9, r24, r9
003930  9bbd5000  slli r27, r1, 5
003934  42800402  vload.mz vr0{mr1}, 0(r9)
003938  06310000  vfp162float_l.rn vr2, vr0
00393c  9f808300  addli r1, r7, 64
003940  86710000  vfp162float_h.rn vr3, vr0
003944  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
003948  46902302  vstore_mask16.mz vr2{mr1}, 0(r7)
00394c  9f8484ff  addli r9, r9, -64
003950  9f8d4d00  addli r27, r27, 32
003954  9f8303ff  addli r7, r7, -128
003958  3bff0dfe  bneq r27, zero, -36
00395c  00a00000  mfence { lm }
003960  abf0ffff  lui r1, 1048575
003964  9b9000fe  ori r1, r1, 4064
003968  97841b00  and r9, r23, r1
00396c  bfd04401  blt.s r9, r20, 52
003970  9f030fcf  addli r7, r30, -6272
003974  1f090000  addli r18, zero, 0
003978  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
00397c  9f808300  addli r1, r7, 64
003980  1f094900  addli r18, r18, 32
003984  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003988  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
00398c  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
003990  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
003994  9f830301  addli r7, r7, 128
003998  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00399c  3f7f99fe  blt.s r18, r9, -36
0039a0  3fa07401  blt.s r9, r23, 8
0039a4  db0e0000  j 116
0039a8  9bb02400  slli r1, r9, 2
0039ac  2bf1ffff  lui r2, 1048575
0039b0  00a00000  mfence { lm }
0039b4  9f02000c  addli r5, zero, 1536
0039b8  9f090000  addli r19, zero, 0
0039bc  8b101c10  add.s r1, r24, r1
0039c0  8b135d40  min.s r7, r26, r5
0039c4  1b1101f8  ori r2, r2, 3968
0039c8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0039cc  9f808000  addli r1, r1, 64
0039d0  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0039d4  9bb02300  slli r1, r7, 2
0039d8  9b83f301  andi r7, r7, 31
0039dc  97802000  and r1, r1, r2
0039e0  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
0039e4  0b191c10  add.s r18, r24, r1
0039e8  e300dfce  loadli.w r1,  -6296(r30)
0039ec  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
0039f0  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
0039f4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0039f8  00a00000  mfence { lm }
0039fc  8b903c11  add.s r1, r25, r19
003a00  0b113911  add.s r2, r18, r19
003a04  9ff3f3ff  addli r7, r7, -1
003a08  9fc90900  addli r19, r19, 4
003a0c  e3800000  loadli.w r1,  0(r1)
003a10  67001100  storeli.w r1, 0(r2)
003a14  bbaf03fe  bneq r7, zero, -24
003a18  00a00000  mfence { lm }
003a1c  abf0ffff  lui r1, 1048575
003a20  9b90c0ff  ori r1, r1, 4092
003a24  97831b00  and r7, r23, r1
003a28  3fa14301  blt.s r7, r20, 72
003a2c  6309efce  loadli.w r18,  -6288(r30)
003a30  9f0d0000  addli r27, zero, 0
003a34  e300f9ff  loadli.w r1,  -8(r18)
003a38  6341f9ff  loadli.w r2,  -4(r18)
003a3c  e3420900  loadli.w r5,  4(r18)
003a40  e3090900  loadli.w r19,  0(r18)
003a44  9fcd0d00  addli r27, r27, 4
003a48  8f801000  exp.f.rn r1, r1
003a4c  0f012100  exp.f.rn r2, r2
003a50  0f836900  exp.f.rn r6, r19
003a54  8f825200  exp.f.rn r5, r5
003a58  e70f19fe  storeli.w r1, -8(r18)
003a5c  e74f29fe  storeli.w r2, -4(r18)
003a60  67006900  storeli.w r6, 0(r18)
003a64  67405900  storeli.w r5, 4(r18)
003a68  1f092900  addli r18, r18, 16
003a6c  3faf7dfe  blt.s r27, r7, -56
003a70  cbf07b00  ble.s r23, r7, 60
003a74  9f00000c  addli r1, zero, 1536
003a78  2bf1ffff  lui r2, 1048575
003a7c  8b101d40  min.s r1, r26, r1
003a80  1b1101ff  ori r2, r2, 4080
003a84  9bb32000  slli r7, r1, 2
003a88  17812300  and r2, r7, r2
003a8c  9b833000  andi r7, r1, 3
003a90  0b192c10  add.s r18, r24, r2
003a94  e3000900  loadli.w r1,  0(r18)
003a98  9ff3f3ff  addli r7, r7, -1
003a9c  8f801000  exp.f.rn r1, r1
003aa0  67001900  storeli.w r1, 0(r18)
003aa4  1f490900  addli r18, r18, 4
003aa8  bbbf03fe  bneq r7, zero, -20
003aac  00a00000  mfence { lm }
003ab0  bfd04401  blt.s r9, r20, 52
003ab4  9f030fcf  addli r7, r30, -6272
003ab8  1f090000  addli r18, zero, 0
003abc  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
003ac0  9f808300  addli r1, r7, 64
003ac4  1f094900  addli r18, r18, 32
003ac8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003acc  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
003ad0  0a912602  vmul.f.mz.rn vr2{mr1}, r13, vr2
003ad4  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
003ad8  9f830301  addli r7, r7, 128
003adc  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003ae0  3f7f99fe  blt.s r18, r9, -36
003ae4  3fa07401  blt.s r9, r23, 8
003ae8  db0e0000  j 116
003aec  1bb12400  slli r2, r9, 2
003af0  abf2ffff  lui r5, 1048575
003af4  00a00000  mfence { lm }
003af8  9f00000c  addli r1, zero, 1536
003afc  1f090000  addli r18, zero, 0
003b00  0b112c10  add.s r2, r24, r2
003b04  8b101d40  min.s r1, r26, r1
003b08  9b9202f8  ori r5, r5, 3968
003b0c  1f038100  addli r6, r2, 64
003b10  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
003b14  1bb12000  slli r2, r1, 2
003b18  9b83f001  andi r7, r1, 31
003b1c  e300dfce  loadli.w r1,  -6296(r30)
003b20  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
003b24  17015100  and r2, r2, r5
003b28  8b142c10  add.s r9, r24, r2
003b2c  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
003b30  0a912602  vmul.f.mz.rn vr2{mr1}, r13, vr2
003b34  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003b38  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003b3c  00a00000  mfence { lm }
003b40  8b902c11  add.s r1, r25, r18
003b44  0b912411  add.s r2, r9, r18
003b48  9ff3f3ff  addli r7, r7, -1
003b4c  1f490900  addli r18, r18, 4
003b50  e3800000  loadli.w r1,  0(r1)
003b54  67001100  storeli.w r1, 0(r2)
003b58  bbaf03fe  bneq r7, zero, -24
003b5c  00a00000  mfence { lm }
003b60  bff441ff  blt.s r3, r20, -708
003b64  9f010fcf  addli r3, r30, -6272
003b68  1f020fcf  addli r4, r30, -6272
003b6c  9f030000  addli r7, zero, 0
003b70  9f808100  addli r1, r3, 64
003b74  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
003b78  9f810101  addli r3, r3, 128
003b7c  9f834300  addli r7, r7, 32
003b80  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
003b84  06100100  vfloat2fp16_l.rn vr0, vr2
003b88  06d00100  vfloat2fp16_h.rn vr0, vr3
003b8c  46000202  vstore.mz vr0{mr1}, 0(r4)
003b90  1f028200  addli r4, r4, 64
003b94  3fff73ff  blt.s r7, r23, -36
003b98  dba0ffff  j -764
003b9c  9f00ffce  addli r1, r30, -6280
003ba0  1f01bfce  addli r2, r30, -6312
003ba4  e302efcd  loadli.w r5,  -6416(r30)
003ba8  6bd30000  load.d r[6:7], 0(r1)
003bac  eb550100  load.d r[11:12], 0(r2)
003bb0  bf504e01  blt.s r28, r20, 52
003bb4  9f010fcf  addli r3, r30, -6272
003bb8  1f020000  addli r4, zero, 0
003bbc  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
003bc0  9f808100  addli r1, r3, 64
003bc4  1f024200  addli r4, r4, 32
003bc8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003bcc  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
003bd0  0a912602  vmul.f.mz.rn vr2{mr1}, r13, vr2
003bd4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003bd8  9f810101  addli r3, r3, 128
003bdc  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003be0  3f7fc2ff  blt.s r4, r28, -36
003be4  3f20be00  blt.s r28, r11, 8
003be8  db0a0000  j 84
003bec  00a00000  mfence { lm }
003bf0  9f010000  addli r3, zero, 0
003bf4  e300ffcd  loadli.w r1,  -6408(r30)
003bf8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
003bfc  e340efcd  loadli.w r1,  -6412(r30)
003c00  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
003c04  e300dfce  loadli.w r1,  -6296(r30)
003c08  0a900602  vmul.f.mz.rn vr0{mr1}, r13, vr0
003c0c  0a912602  vmul.f.mz.rn vr2{mr1}, r13, vr2
003c10  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003c14  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003c18  00a00000  mfence { lm }
003c1c  6342cfcc  loadli.w r4,  -6556(r30)
003c20  8b903c10  add.s r1, r25, r3
003c24  0b913210  add.s r2, r5, r3
003c28  1f120200  addli r4, r4, 1
003c2c  9fc10100  addli r3, r3, 4
003c30  e3800000  loadli.w r1,  0(r1)
003c34  67001100  storeli.w r1, 0(r2)
003c38  bb2f02fe  bneq r4, zero, -24
003c3c  00a00000  mfence { lm }
003c40  bfa745f9  blt.s r11, r20, -3608
003c44  9f010fcf  addli r3, r30, -6272
003c48  1f020fcf  addli r4, r30, -6272
003c4c  9f020000  addli r5, zero, 0
003c50  9f808100  addli r1, r3, 64
003c54  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
003c58  9f810101  addli r3, r3, 128
003c5c  9f824200  addli r5, r5, 32
003c60  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
003c64  06100100  vfloat2fp16_l.rn vr0, vr2
003c68  06d00100  vfloat2fp16_h.rn vr0, vr3
003c6c  46000202  vstore.mz vr0{mr1}, 0(r4)
003c70  1f028200  addli r4, r4, 64
003c74  3fffb2fe  blt.s r5, r11, -36
003c78  5b36feff  j -3664
003c7c  9f000fce  addli r1, r30, -6400
003c80  6a901122  vor.f.mz vr0{mr1}, r3, vr1
003c84  ebd20000  load.d r[5:6], 0(r1)
003c88  93b0b204  setlt.sl r1, r[5:6], r[11:12]
003c8c  3bb200fa  bneq r1, zero, -2932
003c90  5b98feff  j -2880
003c94  9f00bfcc  addli r1, r30, -6568
003c98  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003c9c  ebd20000  load.d r[5:6], 0(r1)
003ca0  93b0b204  setlt.sl r1, r[5:6], r[11:12]
003ca4  3bab00fa  bneq r1, zero, -2360
003ca8  dbdffeff  j -2308
003cac  9f0e0fcc  addli sp, r30, -6656
003cb0  9f8e0e34  addli sp, sp, 6656
003cb4  00a00300  mfence { lm, sm, gm }
003cb8  00100000  exit
003cbc  00100000  exit
003cc0  00100000  exit
003cc4  00100000  exit
003cc8  00100000  exit
003ccc  00100000  exit
003cd0  00100000  exit
003cd4  00100000  exit
003cd8  00100000  exit
003cdc  00100000  exit
003ce0  00100000  exit
003ce4  00100000  exit
003ce8  00100000  exit
003cec  00100000  exit
003cf0  00100000  exit
003cf4  00100000  exit
003cf8  00100000  exit
003cfc  00100000  exit
003d00  00100000  exit
003d04  00100000  exit
003d08  00100000  exit
003d0c  00100000  exit
003d10  00100000  exit
003d14  00100000  exit
003d18  00100000  exit
003d1c  00100000  exit
003d20  00100000  exit
003d24  00100000  exit
003d28  00100000  exit
003d2c  00100000  exit
003d30  00100000  exit
003d34  00100000  exit
003d38  00100000  exit
003d3c  00100000  exit
003d40  00100000  exit
003d44  00100000  exit
003d48  00100000  exit
003d4c  00100000  exit
003d50  00100000  exit
003d54  00100000  exit
003d58  00100000  exit
003d5c  00100000  exit
003d60  00100000  exit
003d64  00100000  exit
003d68  00100000  exit
003d6c  00100000  exit
003d70  00100000  exit
003d74  00100000  exit
003d78  00100000  exit
003d7c  00100000  exit
003d80  00100000  exit
003d84  00100000  exit
003d88  00100000  exit
003d8c  00100000  exit
003d90  00100000  exit
003d94  00100000  exit
003d98  00100000  exit
003d9c  00100000  exit
003da0  00100000  exit
003da4  00100000  exit
003da8  00100000  exit
003dac  00100000  exit
003db0  00100000  exit
003db4  00100000  exit
003db8  00100000  exit
003dbc  00100000  exit
003dc0  00100000  exit
003dc4  00100000  exit
003dc8  00100000  exit
003dcc  00100000  exit
003dd0  00100000  exit
003dd4  00100000  exit
003dd8  00100000  exit
003ddc  00100000  exit
003de0  00100000  exit
003de4  00100000  exit
003de8  00100000  exit
003dec  00100000  exit
003df0  00100000  exit
003df4  00100000  exit
003df8  00100000  exit
003dfc  00100000  exit
003e00  00100000  exit
003e04  00100000  exit
003e08  00100000  exit
003e0c  00100000  exit
003e10  00100000  exit
003e14  00100000  exit
003e18  00100000  exit
003e1c  00100000  exit
003e20  00100000  exit
003e24  00100000  exit
003e28  00100000  exit
003e2c  00100000  exit
003e30  00100000  exit
003e34  00100000  exit
003e38  00100000  exit
003e3c  00100000  exit
003e40  00100000  exit
003e44  00100000  exit
003e48  00100000  exit
003e4c  00100000  exit
003e50  00100000  exit
003e54  00100000  exit
003e58  00100000  exit
003e5c  00100000  exit
003e60  00100000  exit
003e64  00100000  exit
003e68  00100000  exit
003e6c  00100000  exit
003e70  00100000  exit
003e74  00100000  exit
003e78  00100000  exit
003e7c  00100000  exit
003e80  00100000  exit
003e84  00100000  exit
003e88  00100000  exit
003e8c  00100000  exit
003e90  00100000  exit
003e94  00100000  exit
003e98  00100000  exit
003e9c  00100000  exit
003ea0  00100000  exit
003ea4  00100000  exit
003ea8  00100000  exit
003eac  00100000  exit
003eb0  00100000  exit
003eb4  00100000  exit
003eb8  00100000  exit
003ebc  00100000  exit
003ec0  00100000  exit
003ec4  00100000  exit
003ec8  00100000  exit
003ecc  00100000  exit
003ed0  00100000  exit
003ed4  00100000  exit
003ed8  00100000  exit
003edc  00100000  exit
003ee0  00100000  exit
003ee4  00100000  exit
003ee8  00100000  exit
003eec  00100000  exit
003ef0  00100000  exit
003ef4  00100000  exit
003ef8  00100000  exit
003efc  00000000  nop
