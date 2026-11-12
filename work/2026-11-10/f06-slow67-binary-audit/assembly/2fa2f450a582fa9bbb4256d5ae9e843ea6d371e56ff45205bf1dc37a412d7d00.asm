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
000078  9f093000  addli r19, zero, 24
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
0000dc  9f8e8ec5  addli sp, sp, -7488
0000e0  00510102  load_param_i r2, 2
0000e4  80d00002  load_param_i r1, 1
0000e8  1f8f0e3a  addli r30, sp, 7424
0000ec  9f048000  addli r9, zero, 64
0000f0  1f253000  addli r10, zero, 26
0000f4  ab0500fc  lui r11, 1032192
0000f8  80520002  load_param_i r5, 0
0000fc  00330002  core_id r6
000100  8b912020  mul.s r3, r1, r2
000104  eb570f01  load.d r[15:16], 16(r30)
000108  3386c42a  zext_int2long r[12:13], r9
00010c  abf4ffff  lui r9, 1048575
000110  b381312e  zext_int2long r[3:4], r3
000114  9b9404fc  ori r9, r9, 4032
000118  8f933766  div.sl r[7:8], r[15:16], r[3:4]
00011c  8bb3c348  max.sl r[7:8], r[7:8], r[12:13]
000120  b385b52e  zext_int2long r[11:12], r11
000124  9f060003  addli r13, zero, 384
000128  97b3a302  sll.d r[7:8], r[7:8], r10
00012c  b386d62a  zext_int2long r[13:14], r13
000130  8ba3b310  add.ul r[7:8], r[7:8], r[11:12]
000134  b395b42a  sext_int2long r[11:12], r9
000138  9f840200  addli r9, r5, 0
00013c  97d3a302  sra.d r[7:8], r[7:8], r10
000140  8b946050  fmac.s r9, r1, r6
000144  9783b302  and.d r[7:8], r[7:8], r[11:12]
000148  1f06dfc6  addli r12, r30, -7320
00014c  0bb5d340  min.sl r[10:11], r[7:8], r[13:14]
000150  73307600  store.d r[7:8], 0(r12)
000154  9f06cfc7  addli r13, r30, -7200
000158  b383742a  zext_int2long r[7:8], r9
00015c  73b0a600  store.d r[10:11], 0(r13)
000160  8b347520  mul.sl r[9:10], r[10:11], r[7:8]
000164  93b39706  setle.sl r7, r[15:16], r[9:10]
000168  3b840304  bneq r7, zero, 2304
00016c  9f09bfc7  addli r19, r30, -7208
000170  1f0acfc7  addli r20, r30, -7200
000174  8bb59718  sub.sl r[11:12], r[15:16], r[9:10]
000178  1f140000  addli r8, zero, 1
00017c  eb580f00  load.d r[17:18], 0(r30)
000180  9f0acfc6  addli r21, r30, -7328
000184  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000188  73b0f900  store.d r[15:16], 0(r19)
00018c  eb570a00  load.d r[15:16], 0(r20)
000190  97b68402  sll.d r[13:14], r[9:10], r8
000194  73b01a01  store.d r[17:18], 0(r21)
000198  8ba6d810  add.ul r[13:14], r[17:18], r[13:14]
00019c  ab0800f0  lui r17, 983040
0001a0  8bb5b740  min.sl r[11:12], r[15:16], r[11:12]
0001a4  9f070fdc  addli r15, r30, -4608
0001a8  1bb81500  slli r16, r11, 1
0001ac  17181801  or r16, r16, r17
0001b0  7fa8f600  l_gm2lm r16, r15, 0(r[13:14])
0001b4  00a00200  mfence { lm, gm }
0001b8  abf6ffff  lui r13, 1048575
0001bc  9b9626fe  ori r13, r13, 4066
0001c0  3fe1d500  blt.s r11, r13, 88
0001c4  9ff6f5ff  addli r13, r11, -1
0001c8  1f074000  addli r14, zero, 32
0001cc  8b96e630  div.s r13, r13, r14
0001d0  2bf7ffff  lui r14, 1048575
0001d4  1b17f7ff  ori r14, r14, 4095
0001d8  17a7e600  xor r14, r13, r14
0001dc  1bb87600  slli r16, r13, 7
0001e0  9bb86600  slli r17, r13, 6
0001e4  9b365700  slli r13, r14, 5
0001e8  0b970711  add.s r14, r15, r16
0001ec  8b971711  add.s r15, r15, r17
0001f0  42800702  vload.mz vr0{mr1}, 0(r15)
0001f4  e6c00180  vmerge_l.hf vr1, vr3, vr0
0001f8  1f088700  addli r16, r14, 64
0001fc  46101702  vstore_mask16.mz vr1{mr1}, 0(r14)
000200  9f864600  addli r13, r13, 32
000204  1f0707ff  addli r14, r14, -128
000208  9f8787ff  addli r15, r15, -64
00020c  66c101a0  vmerge_h.hf vr2, vr3, vr0
000210  46102802  vstore_mask16.mz vr2{mr1}, 0(r16)
000214  3bff06fe  bneq r13, zero, -36
000218  00a00000  mfence { lm }
00021c  bfd08500  blt.s r11, r8, 52
000220  0b940558  neg.s r8, r11
000224  9f060fd0  addli r13, r30, -6144
000228  1f070fdc  addli r14, r30, -4608
00022c  e3070700  loadli.w r15,  0(r14)
000230  2b08b53f  lui r16, 260944
000234  1f140400  addli r8, r8, 1
000238  1f470700  addli r14, r14, 4
00023c  1b18384f  ori r16, r16, 1267
000240  8f870719  div.f.rn r15, r15, r16
000244  6780f600  storeli.w r15, 0(r13)
000248  9fc60600  addli r13, r13, 4
00024c  bb0f04fe  bneq r8, zero, -32
000250  1f04bfc7  addli r8, r30, -7208
000254  00a00000  mfence { lm }
000258  eb570400  load.d r[15:16], 0(r8)
00025c  3bb00304  bneq r7, zero, 2060
000260  b303712c  zext_int2long r[7:8], r2
000264  b306d32c  zext_int2long r[13:14], r6
000268  eb588f00  load.d r[17:18], 8(r30)
00026c  9f0affc6  addli r21, r30, -7304
000270  9f0ccfc7  addli r25, r30, -7200
000274  b380102a  zext_int2long r[1:2], r1
000278  6eb03162  vxor.s.mz vr0{mr1}, vr3, vr3
00027c  1f1b0000  addli r22, zero, 1
000280  9f3b0000  addli r23, zero, 3
000284  9f7d1000  addli r27, zero, 15
000288  1f2e1000  addli r28, zero, 10
00028c  1f0c0fdc  addli r24, r30, -4608
000290  0ba3d310  add.ul r[6:7], r[7:8], r[13:14]
000294  b386d22a  zext_int2long r[13:14], r5
000298  9f020fcf  addli r5, r30, -6272
00029c  1f040000  addli r8, zero, 0
0002a0  73b01a01  store.d r[17:18], 0(r21)
0002a4  6bd90c00  load.d r[18:19], 0(r25)
0002a8  9f084000  addli r17, zero, 32
0002ac  8b361350  fmac.sl r[13:14], r[6:7], r[1:2]
0002b0  9f730000  addli r7, zero, 7
0002b4  8b30d920  mul.sl r[1:2], r[18:19], r[13:14]
0002b8  8b313920  mul.sl r[3:4], r[18:19], r[3:4]
0002bc  1f898200  addli r18, r5, 64
0002c0  9f02efc6  addli r5, r30, -7312
0002c4  8bb91718  sub.sl r[19:20], r[15:16], r[1:2]
0002c8  9f000fc6  addli r1, r30, -7424
0002cc  1f010fc7  addli r2, r30, -7296
0002d0  73b03200  store.d r[3:4], 0(r5)
0002d4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002d8  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0002dc  db030000  j 28
0002e0  93b0f404  setlt.sl r1, r[9:10], r[15:16]
0002e4  1f01efc6  addli r2, r30, -7312
0002e8  00a00000  mfence { lm }
0002ec  eb510100  load.d r[3:4], 0(r2)
0002f0  8bb93918  sub.sl r[19:20], r[19:20], r[3:4]
0002f4  b7dd0002  beq r1, zero, 1908
0002f8  9f02cfc7  addli r5, r30, -7200
0002fc  a7860900  addli.d r[13:14], r[19:20], 0
000300  a7890400  addli.d r[19:20], r[9:10], 0
000304  8ba43410  add.ul r[9:10], r[9:10], r[3:4]
000308  ebd10200  load.d r[3:4], 0(r5)
00030c  8bb09718  sub.sl r[1:2], r[15:16], r[9:10]
000310  8bbc1140  min.sl r[25:26], r[3:4], r[1:2]
000314  bfe06c01  blt.s r25, r22, 56
000318  9f100400  addli r1, r8, 1
00031c  9f0acfc6  addli r21, r30, -7328
000320  2b0800f0  lui r16, 983040
000324  97b26403  sll.d r[5:6], r[9:10], r22
000328  1f010fdc  addli r2, r30, -4608
00032c  9bb71c00  slli r15, r25, 1
000330  8b907039  mod.s r1, r1, r23
000334  ebd10a00  load.d r[3:4], 0(r21)
000338  8ba25110  add.ul r[5:6], r[3:4], r[5:6]
00033c  9f01000c  addli r3, zero, 1536
000340  0b913050  fmac.s r2, r1, r3
000344  97900701  or r1, r15, r16
000348  ffa02200  l_gm2lm r1, r2, 0(r[5:6])
00034c  1f01efc7  addli r2, r30, -7184
000350  9f00dfc7  addli r1, r30, -7192
000354  1f020fcf  addli r4, r30, -6272
000358  e74f8fc6  storeli.w r8, -7172(r30)
00035c  73309100  store.d r[9:10], 0(r2)
000360  a7840900  addli.d r[9:10], r[19:20], 0
000364  a7890600  addli.d r[19:20], r[13:14], 0
000368  9f060fd0  addli r13, r30, -6144
00036c  73b09001  store.d r[25:26], 0(r1)
000370  bf876503  blt.s r11, r22, 1504
000374  9f010fc6  addli r3, r30, -7424
000378  ab4057ba  lui r1, 763252
00037c  2b61f5b9  lui r2, 761686
000380  9f028fcd  addli r5, r30, -6464
000384  1f030fcd  addli r6, r30, -6528
000388  1f048fcc  addli r8, r30, -6592
00038c  1f070fcc  addli r14, r30, -6656
000390  9f078fcb  addli r15, r30, -6720
000394  1f080fcb  addli r16, r30, -6784
000398  9f0c8fca  addli r25, r30, -6848
00039c  1f0d0fca  addli r26, r30, -6912
0003a0  9f0a0000  addli r21, zero, 0
0003a4  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0003a8  9b9000d2  ori r1, r1, 3360
0003ac  1b11910b  ori r2, r2, 185
0003b0  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
0003b4  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
0003b8  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
0003bc  9f820500  addli r5, r11, 0
0003c0  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
0003c4  abd0aa3b  lui r1, 244397
0003c8  2b81ac3b  lui r2, 244424
0003cc  9b90a05e  ori r1, r1, 1514
0003d0  1b11b140  ori r2, r2, 1035
0003d4  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
0003d8  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
0003dc  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
0003e0  46101702  vstore_mask16.mz vr1{mr1}, 0(r14)
0003e4  ab10dcbc  lui r1, 773569
0003e8  2b810cbd  lui r2, 774344
0003ec  9b9070be  ori r1, r1, 3047
0003f0  1b112116  ori r2, r2, 354
0003f4  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
0003f8  46901702  vstore_mask16.mz vr1{mr1}, 0(r15)
0003fc  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
000400  46101802  vstore_mask16.mz vr1{mr1}, 0(r16)
000404  ab10e73d  lui r1, 253553
000408  2bf11c3e  lui r2, 254415
00040c  9b90f08a  ori r1, r1, 2223
000410  1b116190  ori r2, r2, 2310
000414  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
000418  46901c02  vstore_mask16.mz vr1{mr1}, 0(r25)
00041c  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
000420  46101d02  vstore_mask16.mz vr1{mr1}, 0(r26)
000424  ab90c0be  lui r1, 781321
000428  2b916a3f  lui r2, 259753
00042c  9b90c03a  ori r1, r1, 940
000430  1b11e137  ori r2, r2, 894
000434  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
000438  9f008fc9  addli r1, r30, -6976
00043c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000440  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
000444  1f010fc9  addli r2, r30, -7040
000448  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
00044c  ab70033e  lui r1, 254007
000450  2bd1203f  lui r2, 258573
000454  9b90305d  ori r1, r1, 1491
000458  1b112184  ori r2, r2, 2114
00045c  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
000460  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
000464  9f008fc8  addli r1, r30, -7104
000468  1f010fc8  addli r2, r30, -7168
00046c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000470  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000474  5b280000  j 320
000478  9f01efce  addli r3, r30, -6288
00047c  00a00000  mfence { lm }
000480  1f03ffce  addli r6, r30, -6280
000484  1f44ffce  addli r8, r30, -6276
000488  1f070fce  addli r14, r30, -6400
00048c  9f82c2ff  addli r5, r5, -32
000490  63800100  loadli.w zero,  0(r3)
000494  fe0100e0  vmmov mr3, zero
000498  17200000  xor zero, zero, zero
00049c  63000300  loadli.w zero,  0(r6)
0004a0  c2100206  vload_mask16.mz vr1{mr3}, 0(r4)
0004a4  7e0000e0  vmmov mr0, zero
0004a8  17200000  xor zero, zero, zero
0004ac  42140900  vload_mask16.mz vr8{mr0}, 0(r18)
0004b0  ab00803f  lui r1, 260096
0004b4  2b010080  lui r2, 524288
0004b8  6a124102  vand.f.mz vr4{mr1}, r2, vr4
0004bc  9a901006  vsub.f.mz.rn vr1{mr3}, r1, vr1
0004c0  ea125102  vand.f.mz vr5{mr1}, r2, vr5
0004c4  2b01003f  lui r2, 258048
0004c8  63000400  loadli.w zero,  0(r8)
0004cc  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
0004d0  8a113102  vmul.f.mz.rn vr3{mr1}, r2, vr3
0004d4  1a948000  vsub.f.mz.rn vr8{mr0}, r1, vr8
0004d8  ee904026  vor.f.mz vr1{mr3}, vr1, vr4
0004dc  6e125420  vor.f.mz vr4{mr0}, vr8, vr5
0004e0  7e0000e0  vmmov mr0, zero
0004e4  8a120102  vmul.f.mz.rn vr5{mr1}, r2, vr0
0004e8  17200000  xor zero, zero, zero
0004ec  96906010  vadd.f.mh.rn vr1{mr0}, vr1, vr6
0004f0  16127214  vadd.f.mh.rn vr4{mr2}, vr4, vr7
0004f4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0004f8  12924002  vadd.f.mz.rn vr4{mr1}, r1, vr4
0004fc  ab000100  lui r1, 16
000500  0e913002  vmul.f.mz.rn vr2{mr1}, vr1, vr3
000504  8e115202  vmul.f.mz.rn vr3{mr1}, vr4, vr5
000508  eaa02002  vand.u.mz vr1{mr1}, r1, vr2
00050c  6aa23002  vand.u.mz vr4{mr1}, r1, vr3
000510  ab800000  lui r1, 8
000514  72211002  veq.u.mz mr2{mr1}, zero, vr1
000518  fe010140  vmnot mr3, mr2
00051c  12a12016  vadd.u.mh vr2{mr3}, r1, vr2
000520  72204002  veq.u.mz mr0{mr1}, zero, vr4
000524  fe010040  vmnot mr3, mr0
000528  92a13016  vadd.u.mh vr3{mr3}, r1, vr3
00052c  ab700000  lui r1, 7
000530  9b90f0ff  ori r1, r1, 4095
000534  12a12014  vadd.u.mh vr2{mr2}, r1, vr2
000538  92a13010  vadd.u.mh vr3{mr0}, r1, vr3
00053c  ea302ec2  vsrl.s.mz vr1{mr1}, r28, vr2
000540  6a323ec2  vsrl.s.mz vr4{mr1}, r28, vr3
000544  ab00803f  lui r1, 260096
000548  2bf180ff  lui r2, 1046543
00054c  2bf37f00  lui r6, 2047
000550  1b13f3ff  ori r6, r6, 4095
000554  eaa01022  vor.u.mz vr1{mr1}, r1, vr1
000558  6aa24022  vor.u.mz vr4{mr1}, r1, vr4
00055c  1b1101f8  ori r2, r2, 3968
000560  6a212302  vand.u.mz vr2{mr1}, r6, vr2
000564  ea213302  vand.u.mz vr3{mr1}, r6, vr3
000568  86900020  vfloat2fp16_l.rz vr1, vr1
00056c  6aa12022  vor.u.mz vr2{mr1}, r1, vr2
000570  eaa13022  vor.u.mz vr3{mr1}, r1, vr3
000574  ab007f00  lui r1, 2032
000578  86500220  vfloat2fp16_h.rz vr1, vr4
00057c  9b90f007  ori r1, r1, 127
000580  06110120  vfloat2fp16_l.rz vr2, vr2
000584  eaa013a2  vsll.u.mz vr1{mr1}, r7, vr1
000588  06d10120  vfloat2fp16_h.rz vr2, vr3
00058c  ea201102  vand.u.mz vr1{mr1}, r2, vr1
000590  6aa12bc2  vsrl.u.mz vr2{mr1}, r23, vr2
000594  6aa12002  vand.u.mz vr2{mr1}, r1, vr2
000598  9bb01a00  slli r1, r21, 1
00059c  9f8a4a00  addli r21, r21, 32
0005a0  8b101c10  add.s r1, r24, r1
0005a4  ee201122  vor.u.mz vr1{mr1}, vr2, vr1
0005a8  46801002  vstore.mz vr1{mr1}, 0(r1)
0005ac  3fa0ba00  blt.s r21, r11, 8
0005b0  5b740000  j 928
0005b4  9bb02a00  slli r1, r21, 2
0005b8  9f010fce  addli r3, r30, -6400
0005bc  1f04ffce  addli r8, r30, -6280
0005c0  1f47ffce  addli r14, r30, -6276
0005c4  1f48efce  addli r16, r30, -6284
0005c8  9f0c8fcd  addli r25, r30, -6464
0005cc  1f0d0fcd  addli r26, r30, -6528
0005d0  0b911610  add.s r2, r13, r1
0005d4  8b101c10  add.s r1, r24, r1
0005d8  1f838000  addli r6, r1, 64
0005dc  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0005e0  1f018100  addli r2, r2, 64
0005e4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0005e8  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
0005ec  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
0005f0  661302c0  vabs.f vr6, vr4
0005f4  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0005f8  ab60803f  lui r1, 260102
0005fc  2bf10000  lui r2, 15
000600  e69302c0  vabs.f vr7, vr5
000604  9b90e00f  ori r1, r1, 254
000608  1b11f1ff  ori r2, r2, 4095
00060c  72906042  vlt.f.mz mr0{mr1}, r1, vr6
000610  7e0300a0  vmmov r6, mr0
000614  7e0100c0  vmmov mr2, mr0
000618  72907042  vlt.f.mz mr0{mr1}, r1, vr7
00061c  97272300  xor r15, r6, r2
000620  7e0000a0  vmmov zero, mr0
000624  fe0000a0  vmmov r1, mr0
000628  67000400  storeli.w zero, 0(r8)
00062c  17200000  xor zero, zero, zero
000630  17a12000  xor r2, r1, r2
000634  7e8007e0  vmmov mr0, r15
000638  7e0000a0  vmmov zero, mr0
00063c  0e134210  vmul.f.mh.rn vr6{mr0}, vr4, vr4
000640  67000700  storeli.w zero, 0(r14)
000644  fe0100c0  vmmov mr3, mr0
000648  7e0001e0  vmmov mr0, r2
00064c  17200000  xor zero, zero, zero
000650  7e0000a0  vmmov zero, mr0
000654  8e935210  vmul.f.mh.rn vr7{mr0}, vr5, vr5
000658  67000800  storeli.w zero, 0(r16)
00065c  2be1b138  lui r2, 232222
000660  abc78937  lui r15, 227484
000664  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
000668  17200000  xor zero, zero, zero
00066c  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
000670  e7cffeff  storeli.w r31, -4(sp)
000674  9f0fefce  addli r31, r30, -6288
000678  1b11a196  ori r2, r2, 2410
00067c  9b97c7a3  ori r15, r15, 2620
000680  1234a002  vadd.s.mz vr8{mr1}, zero, vr10
000684  9234b002  vadd.s.mz vr9{mr1}, zero, vr11
000688  7e0001a0  vmmov zero, mr2
00068c  22157100  vmac.f.mz.rn vr10{mr0}, r2, vr7
000690  67800f00  storeli.w zero, 0(r31)
000694  17200000  xor zero, zero, zero
000698  e3cffeff  loadli.w r31,  -4(sp)
00069c  22146106  vmac.f.mz.rn vr8{mr3}, r2, vr6
0006a0  1f01ffce  addli r2, r30, -6280
0006a4  a2946704  vmac.f.mz.rn vr9{mr2}, r15, vr6
0006a8  63000100  loadli.w zero,  0(r2)
0006ac  16109402  vadd.f.mz.rn vr0{mr1}, vr8, vr9
0006b0  7e0000e0  vmmov mr0, zero
0006b4  17200000  xor zero, zero, zero
0006b8  a2957700  vmac.f.mz.rn vr11{mr0}, r15, vr7
0006bc  9f078fcc  addli r15, r30, -6592
0006c0  42940702  vload_mask16.mz vr8{mr1}, 0(r15)
0006c4  8b971241  min.s r15, r5, r17
0006c8  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
0006cc  8b976749  max.s r15, r15, r22
0006d0  12358002  vadd.s.mz vr10{mr1}, zero, vr8
0006d4  1f000fcc  addli zero, r30, -6656
0006d8  c2100002  vload_mask16.mz vr1{mr1}, 0(zero)
0006dc  17200000  xor zero, zero, zero
0006e0  e7cffeff  storeli.w r31, -4(sp)
0006e4  9f4fefce  addli r31, r30, -6284
0006e8  26156006  vmac.f.mz.rn vr10{mr3}, vr0, vr6
0006ec  92351002  vadd.s.mz vr11{mr1}, zero, vr1
0006f0  63800f00  loadli.w zero,  0(r31)
0006f4  e3cffeff  loadli.w r31,  -4(sp)
0006f8  a6907400  vmac.f.mz.rn vr1{mr0}, vr9, vr7
0006fc  fe0100e0  vmmov mr3, zero
000700  17200000  xor zero, zero, zero
000704  1f008fcb  addli zero, r30, -6720
000708  a6156004  vmac.f.mz.rn vr11{mr2}, vr0, vr6
00070c  26947406  vmac.f.mz.rn vr8{mr3}, vr9, vr7
000710  42100002  vload_mask16.mz vr0{mr1}, 0(zero)
000714  e7cffeff  storeli.w r31, -4(sp)
000718  17200000  xor zero, zero, zero
00071c  9f4fffce  addli r31, r30, -6276
000720  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
000724  9694a502  vadd.f.mz.rn vr9{mr1}, vr11, vr10
000728  12340002  vadd.s.mz vr8{mr1}, zero, vr0
00072c  63800f00  loadli.w zero,  0(r31)
000730  e3cffeff  loadli.w r31,  -4(sp)
000734  fe0100e0  vmmov mr3, zero
000738  17200000  xor zero, zero, zero
00073c  1f000fcb  addli zero, r30, -6784
000740  26946406  vmac.f.mz.rn vr8{mr3}, vr9, vr6
000744  c2150002  vload_mask16.mz vr11{mr1}, 0(zero)
000748  17200000  xor zero, zero, zero
00074c  e7cffeff  storeli.w r31, -4(sp)
000750  9f4fefce  addli r31, r30, -6284
000754  1235b002  vadd.s.mz vr10{mr1}, zero, vr11
000758  a6957000  vmac.f.mz.rn vr11{mr0}, vr1, vr7
00075c  26956404  vmac.f.mz.rn vr10{mr2}, vr9, vr6
000760  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000764  63800f00  loadli.w zero,  0(r31)
000768  e3cffeff  loadli.w r31,  -4(sp)
00076c  fe0100e0  vmmov mr3, zero
000770  17200000  xor zero, zero, zero
000774  1f008fca  addli zero, r30, -6848
000778  a6947006  vmac.f.mz.rn vr9{mr3}, vr1, vr7
00077c  96108502  vadd.f.mz.rn vr1{mr1}, vr10, vr8
000780  42100002  vload_mask16.mz vr0{mr1}, 0(zero)
000784  17200000  xor zero, zero, zero
000788  96949502  vadd.f.mz.rn vr9{mr1}, vr11, vr9
00078c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000790  1f000fca  addli zero, r30, -6912
000794  42110002  vload_mask16.mz vr2{mr1}, 0(zero)
000798  17200000  xor zero, zero, zero
00079c  e7cffeff  storeli.w r31, -4(sp)
0007a0  9f4fffce  addli r31, r30, -6276
0007a4  12352002  vadd.s.mz vr10{mr1}, zero, vr2
0007a8  63800f00  loadli.w zero,  0(r31)
0007ac  e3cffeff  loadli.w r31,  -4(sp)
0007b0  e7cffeff  storeli.w r31, -4(sp)
0007b4  9f0fefce  addli r31, r30, -6288
0007b8  7e0100e0  vmmov mr2, zero
0007bc  17200000  xor zero, zero, zero
0007c0  63800f00  loadli.w zero,  0(r31)
0007c4  26946004  vmac.f.mz.rn vr8{mr2}, vr1, vr6
0007c8  e3cffeff  loadli.w r31,  -4(sp)
0007cc  7e0100e0  vmmov mr2, zero
0007d0  17200000  xor zero, zero, zero
0007d4  26956004  vmac.f.mz.rn vr10{mr2}, vr1, vr6
0007d8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0007dc  92352002  vadd.s.mz vr11{mr1}, zero, vr2
0007e0  1f008fc9  addli zero, r30, -6976
0007e4  42100002  vload_mask16.mz vr0{mr1}, 0(zero)
0007e8  17200000  xor zero, zero, zero
0007ec  16148502  vadd.f.mz.rn vr8{mr1}, vr10, vr8
0007f0  a6907406  vmac.f.mz.rn vr1{mr3}, vr9, vr7
0007f4  a6957400  vmac.f.mz.rn vr11{mr0}, vr9, vr7
0007f8  92340002  vadd.s.mz vr9{mr1}, zero, vr0
0007fc  1f000fc9  addli zero, r30, -7040
000800  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
000804  42110002  vload_mask16.mz vr2{mr1}, 0(zero)
000808  17200000  xor zero, zero, zero
00080c  e7cffeff  storeli.w r31, -4(sp)
000810  9f4fffce  addli r31, r30, -6276
000814  12352002  vadd.s.mz vr10{mr1}, zero, vr2
000818  63800f00  loadli.w zero,  0(r31)
00081c  e3cffeff  loadli.w r31,  -4(sp)
000820  e7cffeff  storeli.w r31, -4(sp)
000824  9f0fffce  addli r31, r30, -6280
000828  7e0000e0  vmmov mr0, zero
00082c  17200000  xor zero, zero, zero
000830  a6146400  vmac.f.mz.rn vr9{mr0}, vr8, vr6
000834  26156404  vmac.f.mz.rn vr10{mr2}, vr8, vr6
000838  12340002  vadd.s.mz vr8{mr1}, zero, vr0
00083c  92352002  vadd.s.mz vr11{mr1}, zero, vr2
000840  63800f00  loadli.w zero,  0(r31)
000844  e3cffeff  loadli.w r31,  -4(sp)
000848  7e0000e0  vmmov mr0, zero
00084c  17200000  xor zero, zero, zero
000850  1f008fc8  addli zero, r30, -7104
000854  26947006  vmac.f.mz.rn vr8{mr3}, vr1, vr7
000858  a6957000  vmac.f.mz.rn vr11{mr0}, vr1, vr7
00085c  96109502  vadd.f.mz.rn vr1{mr1}, vr10, vr9
000860  42150002  vload_mask16.mz vr10{mr1}, 0(zero)
000864  17200000  xor zero, zero, zero
000868  16948502  vadd.f.mz.rn vr8{mr1}, vr11, vr8
00086c  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
000870  1f000fc8  addli zero, r30, -7168
000874  42100002  vload_mask16.mz vr0{mr1}, 0(zero)
000878  17200000  xor zero, zero, zero
00087c  e7cffeff  storeli.w r31, -4(sp)
000880  9f4fffce  addli r31, r30, -6276
000884  92350002  vadd.s.mz vr11{mr1}, zero, vr0
000888  63800f00  loadli.w zero,  0(r31)
00088c  e3cffeff  loadli.w r31,  -4(sp)
000890  2b0180bf  lui r2, 784384
000894  e7cffeff  storeli.w r31, -4(sp)
000898  9f4fefce  addli r31, r30, -6284
00089c  fe0100e0  vmmov mr3, zero
0008a0  17200000  xor zero, zero, zero
0008a4  a6946006  vmac.f.mz.rn vr9{mr3}, vr1, vr6
0008a8  a6956004  vmac.f.mz.rn vr11{mr2}, vr1, vr6
0008ac  0a136102  vmul.f.mz.rn vr6{mr1}, r2, vr6
0008b0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0008b4  63800f00  loadli.w zero,  0(r31)
0008b8  e3cffeff  loadli.w r31,  -4(sp)
0008bc  7e0100e0  vmmov mr2, zero
0008c0  17200000  xor zero, zero, zero
0008c4  26157404  vmac.f.mz.rn vr10{mr2}, vr8, vr7
0008c8  a6107400  vmac.f.mz.rn vr1{mr0}, vr8, vr7
0008cc  8a137102  vmul.f.mz.rn vr7{mr1}, r2, vr7
0008d0  16949502  vadd.f.mz.rn vr8{mr1}, vr11, vr9
0008d4  1f010fcf  addli r2, r30, -6272
0008d8  12134016  vadd.f.mh.rn vr6{mr3}, zero, vr4
0008dc  1f080000  addli r16, zero, 0
0008e0  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
0008e4  92135014  vadd.f.mh.rn vr7{mr2}, zero, vr5
0008e8  26136402  vmac.f.mz.rn vr6{mr1}, vr8, vr6
0008ec  a6937002  vmac.f.mz.rn vr7{mr1}, vr1, vr7
0008f0  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0008f4  46107902  vstore_mask16.mz vr7{mr1}, 0(r18)
0008f8  00a00000  mfence { lm }
0008fc  5b020000  j 16
000900  1f180800  addli r16, r16, 1
000904  1f410100  addli r2, r2, 4
000908  b7cd07fd  beq r15, r16, -1168
00090c  13840d05  setlt.u r8, r27, r16
000910  3b500400  bneq r8, zero, 20
000914  17440301  srl r8, r6, r16
000918  1b041400  andi r8, r8, 1
00091c  3b600400  bneq r8, zero, 24
000920  5bfcffff  j -32
000924  1f04e8ff  addli r8, r16, -16
000928  17c48000  srl r8, r1, r8
00092c  1b041400  andi r8, r8, 1
000930  374f04fe  beq r8, zero, -48
000934  63040100  loadli.w r8,  0(r2)
000938  ab010040  lui r3, 262144
00093c  8f813110  log.f.rn r3, r3
000940  8be18120  mul.f.rn r3, r3, r8
000944  8f813100  exp.f.rn r3, r3
000948  67003100  storeli.w r3, 0(r2)
00094c  dbf6ffff  j -76
000950  1f03ffc6  addli r6, r30, -7304
000954  00a00000  mfence { lm }
000958  97b06403  sll.d r[1:2], r[9:10], r22
00095c  eb510300  load.d r[3:4], 0(r6)
000960  8ba01110  add.ul r[1:2], r[3:4], r[1:2]
000964  2b0200f0  lui r4, 983040
000968  e342ffc7  loadli.w r5,  -7172(r30)
00096c  9bb11500  slli r3, r11, 1
000970  97914100  or r3, r3, r4
000974  1f02dfc7  addli r4, r30, -7192
000978  9f920200  addli r5, r5, 1
00097c  ffb18001  s_lm2gm r3, r24, 0(r[1:2])
000980  9f010fc7  addli r3, r30, -7296
000984  abf0ffff  lui r1, 1048575
000988  eb550200  load.d r[11:12], 0(r4)
00098c  0b947239  mod.s r8, r5, r23
000990  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000994  1b9120fe  ori r2, r1, 4066
000998  9f00000c  addli r1, zero, 1536
00099c  8b101420  mul.s r1, r8, r1
0009a0  bf812500  blt.s r11, r2, 96
0009a4  1ff1f5ff  addli r2, r11, -1
0009a8  abf1ffff  lui r3, 1048575
0009ac  1f030fdc  addli r6, r30, -4608
0009b0  0b111131  div.s r2, r2, r17
0009b4  9b91f1ff  ori r3, r3, 4095
0009b8  97213100  xor r3, r2, r3
0009bc  1b327100  slli r4, r2, 7
0009c0  9b326100  slli r5, r2, 6
0009c4  1bb15100  slli r2, r3, 5
0009c8  8b914010  add.s r3, r1, r4
0009cc  0b925010  add.s r4, r1, r5
0009d0  8b123310  add.s r5, r6, r3
0009d4  0b134310  add.s r6, r6, r4
0009d8  42000302  vload.mz vr0{mr1}, 0(r6)
0009dc  e6c00180  vmerge_l.hf vr1, vr3, vr0
0009e0  9f818200  addli r3, r5, 64
0009e4  46901202  vstore_mask16.mz vr1{mr1}, 0(r5)
0009e8  1f014100  addli r2, r2, 32
0009ec  9f8202ff  addli r5, r5, -128
0009f0  1f0383ff  addli r6, r6, -64
0009f4  66c101a0  vmerge_h.hf vr2, vr3, vr0
0009f8  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
0009fc  3b7f01fe  bneq r2, zero, -36
000a00  1f010fdc  addli r2, r30, -4608
000a04  00a00000  mfence { lm }
000a08  0b1c1110  add.s r24, r2, r1
000a0c  9f00bfc7  addli r1, r30, -7208
000a10  1f01efc7  addli r2, r30, -7184
000a14  ebd70000  load.d r[15:16], 0(r1)
000a18  eb540100  load.d r[9:10], 0(r2)
000a1c  3f9365fd  blt.s r11, r22, -1852
000a20  9f06dfc6  addli r13, r30, -7320
000a24  9f010003  addli r3, zero, 384
000a28  9f020fd0  addli r5, r30, -6144
000a2c  1f030c00  addli r6, r24, 0
000a30  ebd00600  load.d r[1:2], 0(r13)
000a34  b381312e  zext_int2long r[3:4], r3
000a38  8bb01940  min.sl r[1:2], r[19:20], r[1:2]
000a3c  8bb03040  min.sl r[1:2], r[1:2], r[3:4]
000a40  e3010300  loadli.w r3,  0(r6)
000a44  2b02b53f  lui r4, 260944
000a48  9ff0f0ff  addli r1, r1, -1
000a4c  1f430300  addli r6, r6, 4
000a50  1b12324f  ori r4, r4, 1267
000a54  8f814118  div.f.rn r3, r3, r4
000a58  67803200  storeli.w r3, 0(r5)
000a5c  9fc20200  addli r5, r5, 4
000a60  bb8f00fe  bneq r1, zero, -32
000a64  db0fffff  j -1924
000a68  00a00300  mfence { lm, sm, gm }
000a6c  9f0e0fc6  addli sp, r30, -7424
000a70  9f8e0e3a  addli sp, sp, 7424
000a74  00a00300  mfence { lm, sm, gm }
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
000cbc  00000000  nop
