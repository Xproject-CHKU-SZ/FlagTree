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
0000dc  9f8e8ec6  addli sp, sp, -7360
0000e0  00520102  load_param_i r4, 2
0000e4  80d10002  load_param_i r3, 1
0000e8  1f8f0e39  addli r30, sp, 7296
0000ec  9f028000  addli r5, zero, 64
0000f0  1f233000  addli r6, zero, 26
0000f4  ab0400fc  lui r9, 1032192
0000f8  80560002  load_param_i r13, 0
0000fc  00370002  core_id r14
000100  8b904120  mul.s r1, r3, r4
000104  6b5b0f01  load.d r[22:23], 16(r30)
000108  3385a22a  zext_int2long r[10:11], r5
00010c  abf2ffff  lui r5, 1048575
000110  b383702a  zext_int2long r[7:8], r1
000114  9b9202fc  ori r5, r5, 4032
000118  8f107b62  div.sl r[1:2], r[22:23], r[7:8]
00011c  8bb0a048  max.sl r[1:2], r[1:2], r[10:11]
000120  b384942a  zext_int2long r[9:10], r9
000124  9f050003  addli r11, zero, 384
000128  97b06002  sll.d r[1:2], r[1:2], r6
00012c  b385b52e  zext_int2long r[11:12], r11
000130  8ba09010  add.ul r[1:2], r[1:2], r[9:10]
000134  b394922a  sext_int2long r[9:10], r5
000138  9f820600  addli r5, r13, 0
00013c  97d06002  sra.d r[1:2], r[1:2], r6
000140  8b92e150  fmac.s r5, r3, r14
000144  1f03bfc7  addli r6, r30, -7208
000148  97809002  and.d r[1:2], r[1:2], r[9:10]
00014c  73301300  store.d r[1:2], 0(r6)
000150  8bb4b040  min.sl r[9:10], r[1:2], r[11:12]
000154  b380122a  zext_int2long r[1:2], r5
000158  9f02ffc7  addli r5, r30, -7176
00015c  73b09200  store.d r[9:10], 0(r5)
000160  8bb41420  mul.sl r[9:10], r[9:10], r[1:2]
000164  93379b06  setle.sl r15, r[22:23], r[9:10]
000168  bb810704  bneq r15, zero, 2144
00016c  9f09ffc7  addli r19, r30, -7176
000170  1f180000  addli r16, zero, 1
000174  8b309b18  sub.sl r[1:2], r[22:23], r[9:10]
000178  eb580f00  load.d r[17:18], 0(r30)
00017c  1f0aafc7  addli r20, r30, -7216
000180  ebd50900  load.d r[11:12], 0(r19)
000184  97b20403  sll.d r[5:6], r[9:10], r16
000188  73301a01  store.d r[17:18], 0(r20)
00018c  8ba25810  add.ul r[5:6], r[17:18], r[5:6]
000190  ab0800f0  lui r17, 983040
000194  8bb51540  min.sl r[11:12], r[11:12], r[1:2]
000198  1f010fdc  addli r2, r30, -4608
00019c  9bb01500  slli r1, r11, 1
0001a0  97901001  or r1, r1, r17
0001a4  ffa02200  l_gm2lm r1, r2, 0(r[5:6])
0001a8  00a00200  mfence { lm, gm }
0001ac  abf0ffff  lui r1, 1048575
0001b0  9b9020fe  ori r1, r1, 4066
0001b4  3fe11500  blt.s r11, r1, 88
0001b8  9ff0f5ff  addli r1, r11, -1
0001bc  9f024000  addli r5, zero, 32
0001c0  8b905030  div.s r1, r1, r5
0001c4  abf2ffff  lui r5, 1048575
0001c8  9b92f2ff  ori r5, r5, 4095
0001cc  97a25000  xor r5, r1, r5
0001d0  1bb37000  slli r6, r1, 7
0001d4  9bb86000  slli r17, r1, 6
0001d8  8b106110  add.s r1, r2, r6
0001dc  0b111111  add.s r2, r2, r17
0001e0  9bb25200  slli r5, r5, 5
0001e4  42000102  vload.mz vr0{mr1}, 0(r2)
0001e8  86300000  vfp162float_l.rn vr1, vr0
0001ec  1f838000  addli r6, r1, 64
0001f0  06710000  vfp162float_h.rn vr2, vr0
0001f4  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
0001f8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0001fc  1f0181ff  addli r2, r2, -64
000200  9f824200  addli r5, r5, 32
000204  9f8000ff  addli r1, r1, -128
000208  3bff02fe  bneq r5, zero, -36
00020c  00a00000  mfence { lm }
000210  bfd00501  blt.s r11, r16, 52
000214  8b900558  neg.s r1, r11
000218  1f010fd0  addli r2, r30, -6144
00021c  9f020fdc  addli r5, r30, -4608
000220  63830200  loadli.w r6,  0(r5)
000224  2b08b53f  lui r16, 260944
000228  9f900000  addli r1, r1, 1
00022c  9fc20200  addli r5, r5, 4
000230  1b18384f  ori r16, r16, 1267
000234  0f030319  div.f.rn r6, r6, r16
000238  67006100  storeli.w r6, 0(r2)
00023c  1f410100  addli r2, r2, 4
000240  bb8f00fe  bneq r1, zero, -32
000244  00a00000  mfence { lm }
000248  3b8e0702  bneq r15, zero, 1920
00024c  b3001228  zext_int2long r[1:2], r4
000250  3302472c  zext_int2long r[4:5], r14
000254  6b578f00  load.d r[14:15], 8(r30)
000258  1f0edfc7  addli r28, r30, -7192
00025c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000260  9f080fcf  addli r17, r30, -6272
000264  1f0c0fdc  addli r24, r30, -4608
000268  9f1a0000  addli r21, zero, 1
00026c  1f380000  addli r16, zero, 3
000270  9f0c4000  addli r25, zero, 32
000274  1f0d0fd0  addli r26, r30, -6144
000278  9f7d1000  addli r27, zero, 15
00027c  6e300062  vxor.s.mz vr0{mr1}, vr0, vr0
000280  8ba04010  add.ul r[1:2], r[1:2], r[4:5]
000284  b381312e  zext_int2long r[3:4], r3
000288  b382562a  zext_int2long r[5:6], r13
00028c  1f898800  addli r18, r17, 64
000290  7330ee00  store.d r[14:15], 0(r28)
000294  9f07ffc7  addli r15, r30, -7176
000298  1f0e0000  addli r28, zero, 0
00029c  8bb23050  fmac.sl r[5:6], r[1:2], r[3:4]
0002a0  9f01cfc7  addli r3, r30, -7200
0002a4  ebd60700  load.d r[13:14], 0(r15)
0002a8  8bb05620  mul.sl r[1:2], r[13:14], r[5:6]
0002ac  8bb37620  mul.sl r[7:8], r[13:14], r[7:8]
0002b0  8b391b18  sub.sl r[19:20], r[22:23], r[1:2]
0002b4  a7820300  addli.d r[5:6], r[7:8], 0
0002b8  9f000fc7  addli r1, r30, -7296
0002bc  1f01efc7  addli r2, r30, -7184
0002c0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0002c4  73306101  store.d r[22:23], 0(r2)
0002c8  73b05100  store.d r[5:6], 0(r3)
0002cc  db040000  j 36
0002d0  93b06305  setlt.sl r1, r[7:8], r[22:23]
0002d4  1f01cfc7  addli r2, r30, -7200
0002d8  00a00000  mfence { lm }
0002dc  a7840300  addli.d r[9:10], r[7:8], 0
0002e0  9f850100  addli r11, r3, 0
0002e4  eb520100  load.d r[5:6], 0(r2)
0002e8  8bb95918  sub.sl r[19:20], r[19:20], r[5:6]
0002ec  37fb0002  beq r1, zero, 1756
0002f0  8ba35410  add.ul r[7:8], r[9:10], r[5:6]
0002f4  9f02ffc7  addli r5, r30, -7176
0002f8  ebd10200  load.d r[3:4], 0(r5)
0002fc  8b307b18  sub.sl r[1:2], r[22:23], r[7:8]
000300  8bb11140  min.sl r[3:4], r[3:4], r[1:2]
000304  bff05101  blt.s r3, r21, 60
000308  9f100e00  addli r1, r28, 1
00030c  1f0bafc7  addli r22, r30, -7216
000310  2b0700f0  lui r14, 983040
000314  97b25303  sll.d r[5:6], r[7:8], r21
000318  1f010fdc  addli r2, r30, -4608
00031c  9bb61100  slli r13, r3, 1
000320  8b900039  mod.s r1, r1, r16
000324  eb570b00  load.d r[15:16], 0(r22)
000328  8ba25710  add.ul r[5:6], r[15:16], r[5:6]
00032c  9f07000c  addli r15, zero, 1536
000330  1f380000  addli r16, zero, 3
000334  0b91f050  fmac.s r2, r1, r15
000338  9790e600  or r1, r13, r14
00033c  ffa02200  l_gm2lm r1, r2, 0(r[5:6])
000340  3ff65503  blt.s r11, r21, 1436
000344  9f020fc7  addli r5, r30, -7296
000348  ab4057ba  lui r1, 763252
00034c  2b61f5b9  lui r2, 761686
000350  1f038fcd  addli r6, r30, -6464
000354  9f060fcd  addli r13, r30, -6528
000358  1f078fcc  addli r14, r30, -6592
00035c  9f070fcc  addli r15, r30, -6656
000360  9f0b8fcb  addli r23, r30, -6720
000364  1f0b0000  addli r22, zero, 0
000368  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
00036c  9b9000d2  ori r1, r1, 3360
000370  1b11910b  ori r2, r2, 185
000374  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
000378  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
00037c  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
000380  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
000384  abd0aa3b  lui r1, 244397
000388  2b81ac3b  lui r2, 244424
00038c  9b90a05e  ori r1, r1, 1514
000390  1b11b140  ori r2, r2, 1035
000394  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
000398  46101702  vstore_mask16.mz vr1{mr1}, 0(r14)
00039c  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
0003a0  46901702  vstore_mask16.mz vr1{mr1}, 0(r15)
0003a4  ab10dcbc  lui r1, 773569
0003a8  2b810cbd  lui r2, 774344
0003ac  9b9070be  ori r1, r1, 3047
0003b0  1b112116  ori r2, r2, 354
0003b4  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
0003b8  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
0003bc  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
0003c0  1f010fcb  addli r2, r30, -6784
0003c4  9f8b0500  addli r23, r11, 0
0003c8  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0003cc  ab10e73d  lui r1, 253553
0003d0  2bf11c3e  lui r2, 254415
0003d4  9b90f08a  ori r1, r1, 2223
0003d8  1b116190  ori r2, r2, 2310
0003dc  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
0003e0  9f008fca  addli r1, r30, -6848
0003e4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0003e8  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
0003ec  1f010fca  addli r2, r30, -6912
0003f0  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0003f4  ab90c0be  lui r1, 781321
0003f8  2b916a3f  lui r2, 259753
0003fc  9b90c03a  ori r1, r1, 940
000400  1b11e137  ori r2, r2, 894
000404  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
000408  9f008fc9  addli r1, r30, -6976
00040c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000410  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
000414  1f010fc9  addli r2, r30, -7040
000418  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
00041c  ab70033e  lui r1, 254007
000420  2bd1203f  lui r2, 258573
000424  9b90305d  ori r1, r1, 1491
000428  1b112184  ori r2, r2, 2114
00042c  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
000430  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
000434  9f008fc8  addli r1, r30, -7104
000438  1f010fc8  addli r2, r30, -7168
00043c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000440  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000444  5b180000  j 192
000448  9f02efce  addli r5, r30, -6288
00044c  00a00000  mfence { lm }
000450  1f43efce  addli r6, r30, -6284
000454  9f46ffce  addli r13, r30, -6276
000458  1f07ffce  addli r14, r30, -6280
00045c  9f070fce  addli r15, r30, -6400
000460  9f8bcbff  addli r23, r23, -32
000464  63800200  loadli.w zero,  0(r5)
000468  7e0000e0  vmmov mr0, zero
00046c  17200000  xor zero, zero, zero
000470  63000300  loadli.w zero,  0(r6)
000474  42900800  vload_mask16.mz vr0{mr0}, 0(r17)
000478  7e0100e0  vmmov mr2, zero
00047c  17200000  xor zero, zero, zero
000480  42130904  vload_mask16.mz vr6{mr2}, 0(r18)
000484  ab00803f  lui r1, 260096
000488  2b010080  lui r2, 524288
00048c  63800600  loadli.w zero,  0(r13)
000490  ea113102  vand.f.mz vr3{mr1}, r2, vr3
000494  1a900000  vsub.f.mz.rn vr0{mr0}, r1, vr0
000498  6a124102  vand.f.mz vr4{mr1}, r2, vr4
00049c  2b01003f  lui r2, 258048
0004a0  c2900702  vload_mask16.mz vr1{mr1}, 0(r15)
0004a4  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
0004a8  6e103020  vor.f.mz vr0{mr0}, vr0, vr3
0004ac  1a936004  vsub.f.mz.rn vr6{mr2}, r1, vr6
0004b0  7e0000e0  vmmov mr0, zero
0004b4  17200000  xor zero, zero, zero
0004b8  63000700  loadli.w zero,  0(r14)
0004bc  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
0004c0  16107010  vadd.f.mh.rn vr0{mr0}, vr0, vr7
0004c4  ee114324  vor.f.mz vr3{mr2}, vr6, vr4
0004c8  7e0000e0  vmmov mr0, zero
0004cc  17200000  xor zero, zero, zero
0004d0  96915110  vadd.f.mh.rn vr3{mr0}, vr3, vr5
0004d4  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0004d8  92913002  vadd.f.mz.rn vr3{mr1}, r1, vr3
0004dc  0e102002  vmul.f.mz.rn vr0{mr1}, vr0, vr2
0004e0  9b301b00  slli r1, r22, 1
0004e4  1f0b4b00  addli r22, r22, 32
0004e8  8b101c10  add.s r1, r24, r1
0004ec  8e901102  vmul.f.mz.rn vr1{mr1}, vr3, vr1
0004f0  06100000  vfloat2fp16_l.rn vr0, vr0
0004f4  06d00000  vfloat2fp16_h.rn vr0, vr1
0004f8  46800002  vstore.mz vr0{mr1}, 0(r1)
0004fc  3f20bb00  blt.s r22, r11, 8
000500  db7b0000  j 988
000504  9b302b00  slli r1, r22, 2
000508  1f03efce  addli r6, r30, -6288
00050c  9f47efce  addli r15, r30, -6284
000510  0b111d10  add.s r2, r26, r1
000514  8b101c10  add.s r1, r24, r1
000518  9f828000  addli r5, r1, 64
00051c  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000520  1f018100  addli r2, r2, 64
000524  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
000528  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
00052c  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
000530  9f020fce  addli r5, r30, -6400
000534  e69201c0  vabs.f vr5, vr3
000538  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
00053c  ab60803f  lui r1, 260102
000540  661302c0  vabs.f vr6, vr4
000544  2bf10000  lui r2, 15
000548  9f020fcf  addli r5, r30, -6272
00054c  9b90e00f  ori r1, r1, 254
000550  72905042  vlt.f.mz mr0{mr1}, r1, vr5
000554  7e0000a0  vmmov zero, mr0
000558  fe0600a0  vmmov r13, mr0
00055c  72906042  vlt.f.mz mr0{mr1}, r1, vr6
000560  9b10f1ff  ori r1, r2, 4095
000564  67000300  storeli.w zero, 0(r6)
000568  17200000  xor zero, zero, zero
00056c  7e0700a0  vmmov r14, mr0
000570  17a11600  xor r2, r13, r1
000574  7e0000a0  vmmov zero, mr0
000578  97201700  xor r1, r14, r1
00057c  67800700  storeli.w zero, 0(r15)
000580  17200000  xor zero, zero, zero
000584  7e0001e0  vmmov mr0, r2
000588  1f41ffce  addli r2, r30, -6276
00058c  7e8100e0  vmmov mr2, r1
000590  9f00ffce  addli r1, r30, -6280
000594  7e0000a0  vmmov zero, mr0
000598  8e923110  vmul.f.mh.rn vr5{mr0}, vr3, vr3
00059c  0e134214  vmul.f.mh.rn vr6{mr2}, vr4, vr4
0005a0  67000100  storeli.w zero, 0(r2)
0005a4  17200000  xor zero, zero, zero
0005a8  7e0001a0  vmmov zero, mr2
0005ac  67800000  storeli.w zero, 0(r1)
0005b0  17200000  xor zero, zero, zero
0005b4  abe0b138  lui r1, 232222
0005b8  2bc18937  lui r2, 227484
0005bc  1f008fcd  addli zero, r30, -6464
0005c0  9b90a096  ori r1, r1, 2410
0005c4  1b11c1a3  ori r2, r2, 2620
0005c8  c2140002  vload_mask16.mz vr9{mr1}, 0(zero)
0005cc  17200000  xor zero, zero, zero
0005d0  92339002  vadd.s.mz vr7{mr1}, zero, vr9
0005d4  1f000fcd  addli zero, r30, -6528
0005d8  a2946004  vmac.f.mz.rn vr9{mr2}, r1, vr6
0005dc  42150002  vload_mask16.mz vr10{mr1}, 0(zero)
0005e0  17200000  xor zero, zero, zero
0005e4  e7cffeff  storeli.w r31, -4(sp)
0005e8  9f0fefce  addli r31, r30, -6288
0005ec  a2935000  vmac.f.mz.rn vr7{mr0}, r1, vr5
0005f0  9f40efce  addli r1, r30, -6284
0005f4  1234a002  vadd.s.mz vr8{mr1}, zero, vr10
0005f8  63800f00  loadli.w zero,  0(r31)
0005fc  e3cffeff  loadli.w r31,  -4(sp)
000600  7e0000e0  vmmov mr0, zero
000604  17200000  xor zero, zero, zero
000608  63800000  loadli.w zero,  0(r1)
00060c  22145100  vmac.f.mz.rn vr8{mr0}, r2, vr5
000610  7e0100e0  vmmov mr2, zero
000614  17200000  xor zero, zero, zero
000618  22156104  vmac.f.mz.rn vr10{mr2}, r2, vr6
00061c  1f018fcc  addli r2, r30, -6592
000620  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
000624  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
000628  e7cffeff  storeli.w r31, -4(sp)
00062c  9f4fffce  addli r31, r30, -6276
000630  1694a402  vadd.f.mz.rn vr8{mr1}, vr9, vr10
000634  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000638  63800f00  loadli.w zero,  0(r31)
00063c  e3cffeff  loadli.w r31,  -4(sp)
000640  fe0100e0  vmmov mr3, zero
000644  17200000  xor zero, zero, zero
000648  1f000fcc  addli zero, r30, -6656
00064c  a6945306  vmac.f.mz.rn vr9{mr3}, vr7, vr5
000650  c2150002  vload_mask16.mz vr11{mr1}, 0(zero)
000654  17200000  xor zero, zero, zero
000658  e7cffeff  storeli.w r31, -4(sp)
00065c  9f0fffce  addli r31, r30, -6280
000660  1235b002  vadd.s.mz vr10{mr1}, zero, vr11
000664  a6156404  vmac.f.mz.rn vr11{mr2}, vr8, vr6
000668  26955300  vmac.f.mz.rn vr10{mr0}, vr7, vr5
00066c  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000670  63800f00  loadli.w zero,  0(r31)
000674  e3cffeff  loadli.w r31,  -4(sp)
000678  fe0100e0  vmmov mr3, zero
00067c  17200000  xor zero, zero, zero
000680  1f008fcb  addli zero, r30, -6720
000684  a6136406  vmac.f.mz.rn vr7{mr3}, vr8, vr6
000688  16149502  vadd.f.mz.rn vr8{mr1}, vr10, vr9
00068c  42100002  vload_mask16.mz vr0{mr1}, 0(zero)
000690  17200000  xor zero, zero, zero
000694  e7cffeff  storeli.w r31, -4(sp)
000698  9f4fffce  addli r31, r30, -6276
00069c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0006a0  92340002  vadd.s.mz vr9{mr1}, zero, vr0
0006a4  63800f00  loadli.w zero,  0(r31)
0006a8  e3cffeff  loadli.w r31,  -4(sp)
0006ac  7e0000e0  vmmov mr0, zero
0006b0  17200000  xor zero, zero, zero
0006b4  1f000fcb  addli zero, r30, -6784
0006b8  a6145400  vmac.f.mz.rn vr9{mr0}, vr8, vr5
0006bc  c2150002  vload_mask16.mz vr11{mr1}, 0(zero)
0006c0  17200000  xor zero, zero, zero
0006c4  e7cffeff  storeli.w r31, -4(sp)
0006c8  9f0fefce  addli r31, r30, -6288
0006cc  1235b002  vadd.s.mz vr10{mr1}, zero, vr11
0006d0  63800f00  loadli.w zero,  0(r31)
0006d4  e3cffeff  loadli.w r31,  -4(sp)
0006d8  7e8001c0  vmmov mr0, mr3
0006dc  e7cffeff  storeli.w r31, -4(sp)
0006e0  9f4fefce  addli r31, r30, -6284
0006e4  7e0100e0  vmmov mr2, zero
0006e8  17200000  xor zero, zero, zero
0006ec  26155404  vmac.f.mz.rn vr10{mr2}, vr8, vr5
0006f0  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0006f4  63800f00  loadli.w zero,  0(r31)
0006f8  e3cffeff  loadli.w r31,  -4(sp)
0006fc  26946300  vmac.f.mz.rn vr8{mr0}, vr7, vr6
000700  7e0000e0  vmmov mr0, zero
000704  17200000  xor zero, zero, zero
000708  1f008fca  addli zero, r30, -6848
00070c  a6956300  vmac.f.mz.rn vr11{mr0}, vr7, vr6
000710  96139502  vadd.f.mz.rn vr7{mr1}, vr10, vr9
000714  42100002  vload_mask16.mz vr0{mr1}, 0(zero)
000718  17200000  xor zero, zero, zero
00071c  16948502  vadd.f.mz.rn vr8{mr1}, vr11, vr8
000720  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000724  1f000fca  addli zero, r30, -6912
000728  c2100002  vload_mask16.mz vr1{mr1}, 0(zero)
00072c  17200000  xor zero, zero, zero
000730  e7cffeff  storeli.w r31, -4(sp)
000734  9f4fffce  addli r31, r30, -6276
000738  12351002  vadd.s.mz vr10{mr1}, zero, vr1
00073c  63800f00  loadli.w zero,  0(r31)
000740  e3cffeff  loadli.w r31,  -4(sp)
000744  e7cffeff  storeli.w r31, -4(sp)
000748  9f0fffce  addli r31, r30, -6280
00074c  fe0100e0  vmmov mr3, zero
000750  17200000  xor zero, zero, zero
000754  a6945306  vmac.f.mz.rn vr9{mr3}, vr7, vr5
000758  26955304  vmac.f.mz.rn vr10{mr2}, vr7, vr5
00075c  92351002  vadd.s.mz vr11{mr1}, zero, vr1
000760  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000764  63800f00  loadli.w zero,  0(r31)
000768  e3cffeff  loadli.w r31,  -4(sp)
00076c  fe0100e0  vmmov mr3, zero
000770  17200000  xor zero, zero, zero
000774  1f008fc9  addli zero, r30, -6976
000778  a6136406  vmac.f.mz.rn vr7{mr3}, vr8, vr6
00077c  a6156400  vmac.f.mz.rn vr11{mr0}, vr8, vr6
000780  16149502  vadd.f.mz.rn vr8{mr1}, vr10, vr9
000784  42100002  vload_mask16.mz vr0{mr1}, 0(zero)
000788  17200000  xor zero, zero, zero
00078c  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
000790  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000794  1f000fc9  addli zero, r30, -7040
000798  c2100002  vload_mask16.mz vr1{mr1}, 0(zero)
00079c  17200000  xor zero, zero, zero
0007a0  e7cffeff  storeli.w r31, -4(sp)
0007a4  9f4fffce  addli r31, r30, -6276
0007a8  12351002  vadd.s.mz vr10{mr1}, zero, vr1
0007ac  63800f00  loadli.w zero,  0(r31)
0007b0  e3cffeff  loadli.w r31,  -4(sp)
0007b4  e7cffeff  storeli.w r31, -4(sp)
0007b8  9f4fefce  addli r31, r30, -6284
0007bc  7e0000e0  vmmov mr0, zero
0007c0  17200000  xor zero, zero, zero
0007c4  a6145400  vmac.f.mz.rn vr9{mr0}, vr8, vr5
0007c8  26155404  vmac.f.mz.rn vr10{mr2}, vr8, vr5
0007cc  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0007d0  92351002  vadd.s.mz vr11{mr1}, zero, vr1
0007d4  63800f00  loadli.w zero,  0(r31)
0007d8  e3cffeff  loadli.w r31,  -4(sp)
0007dc  26946306  vmac.f.mz.rn vr8{mr3}, vr7, vr6
0007e0  fe0100e0  vmmov mr3, zero
0007e4  17200000  xor zero, zero, zero
0007e8  1f008fc8  addli zero, r30, -7104
0007ec  a6956306  vmac.f.mz.rn vr11{mr3}, vr7, vr6
0007f0  96139502  vadd.f.mz.rn vr7{mr1}, vr10, vr9
0007f4  42150002  vload_mask16.mz vr10{mr1}, 0(zero)
0007f8  17200000  xor zero, zero, zero
0007fc  16948502  vadd.f.mz.rn vr8{mr1}, vr11, vr8
000800  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
000804  1f000fc8  addli zero, r30, -7168
000808  42100002  vload_mask16.mz vr0{mr1}, 0(zero)
00080c  17200000  xor zero, zero, zero
000810  ab0080bf  lui r1, 784384
000814  e7cffeff  storeli.w r31, -4(sp)
000818  9f0fffce  addli r31, r30, -6280
00081c  a6945300  vmac.f.mz.rn vr9{mr0}, vr7, vr5
000820  92350002  vadd.s.mz vr11{mr1}, zero, vr0
000824  63800f00  loadli.w zero,  0(r31)
000828  e3cffeff  loadli.w r31,  -4(sp)
00082c  26106406  vmac.f.mz.rn vr0{mr3}, vr8, vr6
000830  a6955304  vmac.f.mz.rn vr11{mr2}, vr7, vr5
000834  8a935002  vmul.f.mz.rn vr7{mr1}, r1, vr5
000838  8a926002  vmul.f.mz.rn vr5{mr1}, r1, vr6
00083c  9f40ffce  addli r1, r30, -6276
000840  7e0100e0  vmmov mr2, zero
000844  17200000  xor zero, zero, zero
000848  26156404  vmac.f.mz.rn vr10{mr2}, vr8, vr6
00084c  63800000  loadli.w zero,  0(r1)
000850  8b909b41  min.s r1, r23, r25
000854  16939502  vadd.f.mz.rn vr6{mr1}, vr11, vr9
000858  0b935049  max.s r6, r1, r21
00085c  7e0000e0  vmmov mr0, zero
000860  17200000  xor zero, zero, zero
000864  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
000868  92133010  vadd.f.mh.rn vr7{mr0}, zero, vr3
00086c  92124014  vadd.f.mh.rn vr5{mr2}, zero, vr4
000870  9f000000  addli r1, zero, 0
000874  a6137302  vmac.f.mz.rn vr7{mr1}, vr6, vr7
000878  a6125002  vmac.f.mz.rn vr5{mr1}, vr0, vr5
00087c  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
000880  46105902  vstore_mask16.mz vr5{mr1}, 0(r18)
000884  00a00000  mfence { lm }
000888  5b020000  j 16
00088c  9f900000  addli r1, r1, 1
000890  9fc20200  addli r5, r5, 4
000894  b75e13fc  beq r6, r1, -1100
000898  13811d04  setlt.u r2, r27, r1
00089c  3b500100  bneq r2, zero, 20
0008a0  17c11600  srl r2, r13, r1
0008a4  1b011100  andi r2, r2, 1
0008a8  3b600100  bneq r2, zero, 24
0008ac  5bfcffff  j -32
0008b0  1f81e0ff  addli r2, r1, -16
0008b4  17412700  srl r2, r14, r2
0008b8  1b011100  andi r2, r2, 1
0008bc  374f01fe  beq r2, zero, -48
0008c0  63810200  loadli.w r2,  0(r5)
0008c4  ab070040  lui r15, 262144
0008c8  8f87f710  log.f.rn r15, r15
0008cc  0be12720  mul.f.rn r2, r15, r2
0008d0  0f012100  exp.f.rn r2, r2
0008d4  67802200  storeli.w r2, 0(r5)
0008d8  dbf6ffff  j -76
0008dc  97b05403  sll.d r[1:2], r[9:10], r21
0008e0  1f05dfc7  addli r10, r30, -7192
0008e4  00a00000  mfence { lm }
0008e8  9f140e00  addli r9, r28, 1
0008ec  eb520500  load.d r[5:6], 0(r10)
0008f0  0b9e0439  mod.s r28, r9, r16
0008f4  8ba01210  add.ul r[1:2], r[5:6], r[1:2]
0008f8  9bb21500  slli r5, r11, 1
0008fc  2b0300f0  lui r6, 983040
000900  97926200  or r5, r5, r6
000904  ffb28001  s_lm2gm r5, r24, 0(r[1:2])
000908  abf0ffff  lui r1, 1048575
00090c  1f0c0fdc  addli r24, r30, -4608
000910  1f01000c  addli r2, zero, 1536
000914  9b9020fe  ori r1, r1, 4066
000918  0b1c2e50  fmac.s r24, r28, r2
00091c  3fd11100  blt.s r3, r1, 84
000920  9ff0f1ff  addli r1, r3, -1
000924  2bf1ffff  lui r2, 1048575
000928  8b909031  div.s r1, r1, r25
00092c  1b11f1ff  ori r2, r2, 4095
000930  9bb27000  slli r5, r1, 7
000934  1bb36000  slli r6, r1, 6
000938  97a42000  xor r9, r1, r2
00093c  8b105c10  add.s r1, r24, r5
000940  0b116c10  add.s r2, r24, r6
000944  9bb25400  slli r5, r9, 5
000948  42000102  vload.mz vr0{mr1}, 0(r2)
00094c  86300000  vfp162float_l.rn vr1, vr0
000950  1f838000  addli r6, r1, 64
000954  06710000  vfp162float_h.rn vr2, vr0
000958  46102302  vstore_mask16.mz vr2{mr1}, 0(r6)
00095c  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000960  1f0181ff  addli r2, r2, -64
000964  9f824200  addli r5, r5, 32
000968  9f8000ff  addli r1, r1, -128
00096c  3bff02fe  bneq r5, zero, -36
000970  9f00efc7  addli r1, r30, -7184
000974  00a00000  mfence { lm }
000978  6bdb0000  load.d r[22:23], 0(r1)
00097c  3fd551fd  blt.s r3, r21, -1708
000980  9f04bfc7  addli r9, r30, -7208
000984  9f020003  addli r5, zero, 384
000988  ebd00400  load.d r[1:2], 0(r9)
00098c  b382522a  zext_int2long r[5:6], r5
000990  8bb01940  min.sl r[1:2], r[19:20], r[1:2]
000994  8bb05040  min.sl r[1:2], r[1:2], r[5:6]
000998  9f020fd0  addli r5, r30, -6144
00099c  1f030c00  addli r6, r24, 0
0009a0  e3040300  loadli.w r9,  0(r6)
0009a4  2b05b53f  lui r10, 260944
0009a8  9ff0f0ff  addli r1, r1, -1
0009ac  1f430300  addli r6, r6, 4
0009b0  1b15354f  ori r10, r10, 1267
0009b4  8f84a418  div.f.rn r9, r9, r10
0009b8  67809200  storeli.w r9, 0(r5)
0009bc  9fc20200  addli r5, r5, 4
0009c0  bb8f00fe  bneq r1, zero, -32
0009c4  db21ffff  j -1780
0009c8  00a00300  mfence { lm, sm, gm }
0009cc  9f0e0fc7  addli sp, r30, -7296
0009d0  9f8e0e39  addli sp, sp, 7296
0009d4  00a00300  mfence { lm, sm, gm }
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
000c1c  00000000  nop
