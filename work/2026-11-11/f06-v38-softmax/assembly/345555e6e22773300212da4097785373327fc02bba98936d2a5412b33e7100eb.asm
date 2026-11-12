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
0000dc  9f8e8ec6  addli sp, sp, -7360
0000e0  00520102  load_param_i r4, 2
0000e4  80d10002  load_param_i r3, 1
0000e8  1f8f0e39  addli r30, sp, 7296
0000ec  9f048000  addli r9, zero, 64
0000f0  1f253000  addli r10, zero, 26
0000f4  ab0500fc  lui r11, 1032192
0000f8  80530002  load_param_i r7, 0
0000fc  00340002  core_id r8
000100  8b904120  mul.s r1, r3, r4
000104  eb570f01  load.d r[16:17], 16(r30)
000108  3386c42a  .word 0x2ac48633
00010c  abf4ffff  lui r9, 1048575
000110  b382502a  .word 0x2a5082b3
000114  9b9404fc  ori r9, r9, 4032
000118  8f905762  .word 0x6257908f
00011c  8bb0c048  max.sl r[2:3], r[2:3], r[13:14]
000120  b385b52e  .word 0x2eb585b3
000124  9f060003  addli r13, zero, 384
000128  97b0a002  sll.d r[2:3], r[2:3], r10
00012c  b386d62a  .word 0x2ad686b3
000130  8ba0b010  add.ul r[2:3], r[2:3], r[12:13]
000134  b395b42a  .word 0x2ab495b3
000138  9f840300  addli r9, r7, 0
00013c  97d0a002  sra.d r[2:3], r[2:3], r10
000140  8b948150  fmac.s r9, r3, r8
000144  9780b002  and.d r[2:3], r[2:3], r[12:13]
000148  1f06afc7  addli r12, r30, -7216
00014c  0bb5d040  min.sl r[11:12], r[2:3], r[14:15]
000150  73301600  store.d r[2:3], 0(r12)
000154  1f07efc7  addli r14, r30, -7184
000158  b380142a  .word 0x2a1480b3
00015c  7330a700  store.d r[11:12], 0(r14)
000160  8b341520  mul.sl r[10:11], r[11:12], r[2:3]
000164  93b69706  setle.sl r13, r[16:17], r[10:11]
000168  bb9e0602  bneq r13, zero, 1956
00016c  9f09dfc7  addli r19, r30, -7192
000170  1f0aefc7  addli r20, r30, -7184
000174  8bb59718  sub.sl r[12:13], r[16:17], r[10:11]
000178  9f200000  addli r1, zero, 2
00017c  eb580f00  load.d r[18:19], 0(r30)
000180  9f0a9fc7  addli r21, r30, -7224
000184  73b0f900  store.d r[16:17], 0(r19)
000188  6b570a00  load.d r[15:16], 0(r20)
00018c  97b01402  sll.d r[2:3], r[10:11], r1
000190  73b01a01  store.d r[18:19], 0(r21)
000194  2b0800f0  lui r16, 983040
000198  8b35b740  min.sl r[12:13], r[15:16], r[12:13]
00019c  0ba71810  add.ul r[15:16], r[18:19], r[2:3]
0001a0  9f000fdc  addli r1, r30, -4608
0001a4  1bb12500  slli r2, r11, 2
0001a8  17110101  or r2, r2, r16
0001ac  7f211700  l_gm2lm r2, r1, 0(r[15:16])
0001b0  1f110000  addli r2, zero, 1
0001b4  00a00200  mfence { lm, gm }
0001b8  bfc02500  blt.s r11, r2, 48
0001bc  0b910558  neg.s r2, r11
0001c0  1f070fd0  addli r14, r30, -6144
0001c4  e3870000  loadli.w r15,  0(r1)
0001c8  2b08b53f  lui r16, 260944
0001cc  1f110100  addli r2, r2, 1
0001d0  9fc00000  addli r1, r1, 4
0001d4  1b18384f  ori r16, r16, 1267
0001d8  8f870719  div.f.rn r15, r15, r16
0001dc  6700f700  storeli.w r15, 0(r14)
0001e0  1f470700  addli r14, r14, 4
0001e4  bb0f01fe  bneq r2, zero, -32
0001e8  9f00dfc7  addli r1, r30, -7192
0001ec  00a00000  mfence { lm }
0001f0  ebd70000  load.d r[16:17], 0(r1)
0001f4  3bec0602  bneq r13, zero, 1816
0001f8  b3001228  .word 0x281200b3
0001fc  b306d428  .word 0x28d406b3
000200  1f0cefc7  addli r24, r30, -7184
000204  b381312e  .word 0x2e3181b3
000208  b383732e  .word 0x2e7383b3
00020c  eb588f00  load.d r[18:19], 8(r30)
000210  9f0bcfc7  addli r23, r30, -7200
000214  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000218  9f0a0fdc  addli r21, r30, -4608
00021c  1f1b0000  addli r22, zero, 1
000220  1f0d4000  addli r26, zero, 32
000224  9f0d0fd0  addli r27, r30, -6144
000228  1f7e1000  addli r28, zero, 15
00022c  9f0c0000  addli r25, zero, 0
000230  6e300062  vxor.s.mz vr0{mr1}, vr0, vr0
000234  8ba0d010  add.ul r[2:3], r[2:3], r[14:15]
000238  eb560c00  load.d r[14:15], 0(r24)
00023c  73b01b01  store.d r[18:19], 0(r23)
000240  9f080fcf  addli r17, r30, -6272
000244  8bb33050  fmac.sl r[8:9], r[2:3], r[4:5]
000248  8bb25620  mul.sl r[6:7], r[14:15], r[6:7]
00024c  1f898800  addli r18, r17, 64
000250  8bb07620  mul.sl r[2:3], r[14:15], r[8:9]
000254  8bb91718  sub.sl r[20:21], r[16:17], r[2:3]
000258  9f000fc7  addli r1, r30, -7296
00025c  1f01bfc7  addli r2, r30, -7208
000260  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000264  73305100  store.d r[6:7], 0(r2)
000268  db050000  j 44
00026c  1f01dfc7  addli r2, r30, -7192
000270  9f03bfc7  addli r7, r30, -7208
000274  a7840100  addli.d r[10:11], r[4:5], 0
000278  9f850b00  addli r11, r23, 0
00027c  eb570100  load.d r[16:17], 0(r2)
000280  00a00000  mfence { lm }
000284  ebd20300  load.d r[6:7], 0(r7)
000288  93b0f104  setlt.sl r1, r[4:5], r[16:17]
00028c  8bb95918  sub.sl r[20:21], r[20:21], r[6:7]
000290  b7f90002  beq r1, zero, 1660
000294  9f03efc7  addli r7, r30, -7184
000298  8ba15410  add.ul r[4:5], r[10:11], r[6:7]
00029c  ebd20300  load.d r[6:7], 0(r7)
0002a0  8bb03718  sub.sl r[2:3], r[16:17], r[4:5]
0002a4  8bbb1240  min.sl r[24:25], r[6:7], r[2:3]
0002a8  3f816b01  blt.s r23, r22, 64
0002ac  9f900c00  addli r1, r25, 1
0002b0  1f310000  addli r2, zero, 3
0002b4  1f089fc7  addli r16, r30, -7224
0002b8  9f220000  addli r5, zero, 2
0002bc  ab0600f0  lui r13, 983040
0002c0  1bb42b00  slli r8, r23, 2
0002c4  9f03000c  addli r7, zero, 1536
0002c8  8b902038  mod.s r1, r1, r2
0002cc  6b570800  load.d r[15:16], 0(r16)
0002d0  1f010fdc  addli r2, r30, -4608
0002d4  97b25102  sll.d r[6:7], r[4:5], r5
0002d8  8b225710  add.ul r[6:7], r[15:16], r[6:7]
0002dc  0b917050  fmac.s r2, r1, r7
0002e0  9710d400  or r1, r8, r13
0002e4  ffa02200  l_gm2lm r1, r2, 0(r[6:7])
0002e8  e74f9fc7  storeli.w r25, -7172(r30)
0002ec  3fc66503  blt.s r11, r22, 1424
0002f0  9f020fc7  addli r5, r30, -7296
0002f4  ab4057ba  lui r1, 763252
0002f8  2b61f5b9  lui r2, 761686
0002fc  1f038fcd  addli r6, r30, -6464
000300  9f030fcd  addli r7, r30, -6528
000304  9f068fcc  addli r13, r30, -6592
000308  1f070fcc  addli r14, r30, -6656
00030c  9f078fcb  addli r15, r30, -6720
000310  1f080fcb  addli r16, r30, -6784
000314  9f0c8fca  addli r25, r30, -6848
000318  1f040000  addli r8, zero, 0
00031c  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
000320  9b9000d2  ori r1, r1, 3360
000324  1b11910b  ori r2, r2, 185
000328  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
00032c  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
000330  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
000334  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
000338  abd0aa3b  lui r1, 244397
00033c  2b81ac3b  lui r2, 244424
000340  9b90a05e  ori r1, r1, 1514
000344  1b11b140  ori r2, r2, 1035
000348  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
00034c  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
000350  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
000354  46101702  vstore_mask16.mz vr1{mr1}, 0(r14)
000358  ab10dcbc  lui r1, 773569
00035c  2b810cbd  lui r2, 774344
000360  9b9070be  ori r1, r1, 3047
000364  1b112116  ori r2, r2, 354
000368  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
00036c  46901702  vstore_mask16.mz vr1{mr1}, 0(r15)
000370  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
000374  46101802  vstore_mask16.mz vr1{mr1}, 0(r16)
000378  ab10e73d  lui r1, 253553
00037c  2bf11c3e  lui r2, 254415
000380  9b90f08a  ori r1, r1, 2223
000384  1b116190  ori r2, r2, 2310
000388  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
00038c  46901c02  vstore_mask16.mz vr1{mr1}, 0(r25)
000390  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
000394  1f010fca  addli r2, r30, -6912
000398  9f8c0500  addli r25, r11, 0
00039c  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0003a0  ab90c0be  lui r1, 781321
0003a4  2b916a3f  lui r2, 259753
0003a8  9b90c03a  ori r1, r1, 940
0003ac  1b11e137  ori r2, r2, 894
0003b0  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
0003b4  9f008fc9  addli r1, r30, -6976
0003b8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0003bc  92100102  vadd.f.mz.rn vr1{mr1}, r2, vr0
0003c0  1f010fc9  addli r2, r30, -7040
0003c4  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0003c8  ab70033e  lui r1, 254007
0003cc  2bd1203f  lui r2, 258573
0003d0  9b90305d  ori r1, r1, 1491
0003d4  1b112184  ori r2, r2, 2114
0003d8  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
0003dc  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
0003e0  9f008fc8  addli r1, r30, -7104
0003e4  1f010fc8  addli r2, r30, -7168
0003e8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0003ec  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0003f0  db160000  j 180
0003f4  9f02efce  addli r5, r30, -6288
0003f8  00a00000  mfence { lm }
0003fc  1f43efce  addli r6, r30, -6284
000400  9f43ffce  addli r7, r30, -6276
000404  9f07ffce  addli r15, r30, -6280
000408  1f080fce  addli r16, r30, -6400
00040c  1f044400  addli r8, r8, 32
000410  9f8cccff  addli r25, r25, -32
000414  63800200  loadli.w zero,  0(r5)
000418  7e0000e0  vmmov mr0, zero
00041c  17200000  xor zero, zero, zero
000420  63000300  loadli.w zero,  0(r6)
000424  42900800  vload_mask16.mz vr0{mr0}, 0(r17)
000428  7e0100e0  vmmov mr2, zero
00042c  17200000  xor zero, zero, zero
000430  42130904  vload_mask16.mz vr6{mr2}, 0(r18)
000434  ab00803f  lui r1, 260096
000438  2b010080  lui r2, 524288
00043c  63800300  loadli.w zero,  0(r7)
000440  ea113102  vand.f.mz vr3{mr1}, r2, vr3
000444  1a900000  vsub.f.mz.rn vr0{mr0}, r1, vr0
000448  6a124102  vand.f.mz vr4{mr1}, r2, vr4
00044c  2b01003f  lui r2, 258048
000450  c2100802  vload_mask16.mz vr1{mr1}, 0(r16)
000454  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
000458  1a936004  vsub.f.mz.rn vr6{mr2}, r1, vr6
00045c  6e103020  vor.f.mz vr0{mr0}, vr0, vr3
000460  7e0000e0  vmmov mr0, zero
000464  17200000  xor zero, zero, zero
000468  63800700  loadli.w zero,  0(r15)
00046c  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
000470  ee114324  vor.f.mz vr3{mr2}, vr6, vr4
000474  16107010  vadd.f.mh.rn vr0{mr0}, vr0, vr7
000478  7e0000e0  vmmov mr0, zero
00047c  17200000  xor zero, zero, zero
000480  96915110  vadd.f.mh.rn vr3{mr0}, vr3, vr5
000484  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
000488  92913002  vadd.f.mz.rn vr3{mr1}, r1, vr3
00048c  0e102002  vmul.f.mz.rn vr0{mr1}, vr0, vr2
000490  8e901102  vmul.f.mz.rn vr1{mr1}, vr3, vr1
000494  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
000498  46101702  vstore_mask16.mz vr1{mr1}, 0(r14)
00049c  3f20b400  blt.s r8, r11, 8
0004a0  db7b0000  j 988
0004a4  9b302400  slli r1, r8, 2
0004a8  9f030fce  addli r7, r30, -6400
0004ac  9f07efce  addli r15, r30, -6288
0004b0  1f48efce  addli r16, r30, -6284
0004b4  8b961a10  add.s r13, r21, r1
0004b8  0b911d10  add.s r2, r27, r1
0004bc  1f878600  addli r14, r13, 64
0004c0  9f008100  addli r1, r2, 64
0004c4  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0004c8  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
0004cc  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
0004d0  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0004d4  e69201c0  vabs.f vr5, vr3
0004d8  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0004dc  ab60803f  lui r1, 260102
0004e0  661302c0  vabs.f vr6, vr4
0004e4  2bf10000  lui r2, 15
0004e8  9b90e00f  ori r1, r1, 254
0004ec  72905042  vlt.f.mz mr0{mr1}, r1, vr5
0004f0  7e0000a0  vmmov zero, mr0
0004f4  fe0200a0  vmmov r5, mr0
0004f8  72906042  vlt.f.mz mr0{mr1}, r1, vr6
0004fc  9b10f1ff  ori r1, r2, 4095
000500  67800700  storeli.w zero, 0(r15)
000504  17200000  xor zero, zero, zero
000508  7e0300a0  vmmov r6, mr0
00050c  17a11200  xor r2, r5, r1
000510  7e0000a0  vmmov zero, mr0
000514  97201300  xor r1, r6, r1
000518  67000800  storeli.w zero, 0(r16)
00051c  17200000  xor zero, zero, zero
000520  7e0001e0  vmmov mr0, r2
000524  1f41ffce  addli r2, r30, -6276
000528  7e8100e0  vmmov mr2, r1
00052c  9f00ffce  addli r1, r30, -6280
000530  7e0000a0  vmmov zero, mr0
000534  8e923110  vmul.f.mh.rn vr5{mr0}, vr3, vr3
000538  0e134214  vmul.f.mh.rn vr6{mr2}, vr4, vr4
00053c  67000100  storeli.w zero, 0(r2)
000540  17200000  xor zero, zero, zero
000544  7e0001a0  vmmov zero, mr2
000548  67800000  storeli.w zero, 0(r1)
00054c  17200000  xor zero, zero, zero
000550  abe0b138  lui r1, 232222
000554  2bc18937  lui r2, 227484
000558  1f008fcd  addli zero, r30, -6464
00055c  9b90a096  ori r1, r1, 2410
000560  1b11c1a3  ori r2, r2, 2620
000564  c2140002  vload_mask16.mz vr9{mr1}, 0(zero)
000568  17200000  xor zero, zero, zero
00056c  92339002  vadd.s.mz vr7{mr1}, zero, vr9
000570  1f000fcd  addli zero, r30, -6528
000574  a2946004  vmac.f.mz.rn vr9{mr2}, r1, vr6
000578  42150002  vload_mask16.mz vr10{mr1}, 0(zero)
00057c  17200000  xor zero, zero, zero
000580  e7cffeff  storeli.w r31, -4(sp)
000584  9f0fefce  addli r31, r30, -6288
000588  a2935000  vmac.f.mz.rn vr7{mr0}, r1, vr5
00058c  9f40efce  addli r1, r30, -6284
000590  1234a002  vadd.s.mz vr8{mr1}, zero, vr10
000594  63800f00  loadli.w zero,  0(r31)
000598  e3cffeff  loadli.w r31,  -4(sp)
00059c  7e0000e0  vmmov mr0, zero
0005a0  17200000  xor zero, zero, zero
0005a4  63800000  loadli.w zero,  0(r1)
0005a8  22145100  vmac.f.mz.rn vr8{mr0}, r2, vr5
0005ac  7e0100e0  vmmov mr2, zero
0005b0  17200000  xor zero, zero, zero
0005b4  22156104  vmac.f.mz.rn vr10{mr2}, r2, vr6
0005b8  1f018fcc  addli r2, r30, -6592
0005bc  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
0005c0  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0005c4  e7cffeff  storeli.w r31, -4(sp)
0005c8  9f4fffce  addli r31, r30, -6276
0005cc  0b91ac41  min.s r2, r25, r26
0005d0  1694a402  vadd.f.mz.rn vr8{mr1}, vr9, vr10
0005d4  0b116149  max.s r2, r2, r22
0005d8  92340002  vadd.s.mz vr9{mr1}, zero, vr0
0005dc  63800f00  loadli.w zero,  0(r31)
0005e0  e3cffeff  loadli.w r31,  -4(sp)
0005e4  fe0100e0  vmmov mr3, zero
0005e8  17200000  xor zero, zero, zero
0005ec  1f000fcc  addli zero, r30, -6656
0005f0  a6945306  vmac.f.mz.rn vr9{mr3}, vr7, vr5
0005f4  c2150002  vload_mask16.mz vr11{mr1}, 0(zero)
0005f8  17200000  xor zero, zero, zero
0005fc  e7cffeff  storeli.w r31, -4(sp)
000600  9f0fffce  addli r31, r30, -6280
000604  1235b002  vadd.s.mz vr10{mr1}, zero, vr11
000608  a6156404  vmac.f.mz.rn vr11{mr2}, vr8, vr6
00060c  26955300  vmac.f.mz.rn vr10{mr0}, vr7, vr5
000610  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000614  63800f00  loadli.w zero,  0(r31)
000618  e3cffeff  loadli.w r31,  -4(sp)
00061c  fe0100e0  vmmov mr3, zero
000620  17200000  xor zero, zero, zero
000624  1f008fcb  addli zero, r30, -6720
000628  a6136406  vmac.f.mz.rn vr7{mr3}, vr8, vr6
00062c  16149502  vadd.f.mz.rn vr8{mr1}, vr10, vr9
000630  42100002  vload_mask16.mz vr0{mr1}, 0(zero)
000634  17200000  xor zero, zero, zero
000638  e7cffeff  storeli.w r31, -4(sp)
00063c  9f4fffce  addli r31, r30, -6276
000640  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
000644  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000648  63800f00  loadli.w zero,  0(r31)
00064c  e3cffeff  loadli.w r31,  -4(sp)
000650  7e0000e0  vmmov mr0, zero
000654  17200000  xor zero, zero, zero
000658  1f000fcb  addli zero, r30, -6784
00065c  a6145400  vmac.f.mz.rn vr9{mr0}, vr8, vr5
000660  c2150002  vload_mask16.mz vr11{mr1}, 0(zero)
000664  17200000  xor zero, zero, zero
000668  e7cffeff  storeli.w r31, -4(sp)
00066c  9f0fefce  addli r31, r30, -6288
000670  1235b002  vadd.s.mz vr10{mr1}, zero, vr11
000674  63800f00  loadli.w zero,  0(r31)
000678  e3cffeff  loadli.w r31,  -4(sp)
00067c  7e8001c0  vmmov mr0, mr3
000680  e7cffeff  storeli.w r31, -4(sp)
000684  9f4fefce  addli r31, r30, -6284
000688  7e0100e0  vmmov mr2, zero
00068c  17200000  xor zero, zero, zero
000690  26155404  vmac.f.mz.rn vr10{mr2}, vr8, vr5
000694  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000698  63800f00  loadli.w zero,  0(r31)
00069c  e3cffeff  loadli.w r31,  -4(sp)
0006a0  26946300  vmac.f.mz.rn vr8{mr0}, vr7, vr6
0006a4  7e0000e0  vmmov mr0, zero
0006a8  17200000  xor zero, zero, zero
0006ac  1f008fca  addli zero, r30, -6848
0006b0  a6956300  vmac.f.mz.rn vr11{mr0}, vr7, vr6
0006b4  96139502  vadd.f.mz.rn vr7{mr1}, vr10, vr9
0006b8  42100002  vload_mask16.mz vr0{mr1}, 0(zero)
0006bc  17200000  xor zero, zero, zero
0006c0  16948502  vadd.f.mz.rn vr8{mr1}, vr11, vr8
0006c4  92340002  vadd.s.mz vr9{mr1}, zero, vr0
0006c8  1f000fca  addli zero, r30, -6912
0006cc  c2100002  vload_mask16.mz vr1{mr1}, 0(zero)
0006d0  17200000  xor zero, zero, zero
0006d4  e7cffeff  storeli.w r31, -4(sp)
0006d8  9f4fffce  addli r31, r30, -6276
0006dc  12351002  vadd.s.mz vr10{mr1}, zero, vr1
0006e0  63800f00  loadli.w zero,  0(r31)
0006e4  e3cffeff  loadli.w r31,  -4(sp)
0006e8  e7cffeff  storeli.w r31, -4(sp)
0006ec  9f0fffce  addli r31, r30, -6280
0006f0  fe0100e0  vmmov mr3, zero
0006f4  17200000  xor zero, zero, zero
0006f8  a6945306  vmac.f.mz.rn vr9{mr3}, vr7, vr5
0006fc  26955304  vmac.f.mz.rn vr10{mr2}, vr7, vr5
000700  92351002  vadd.s.mz vr11{mr1}, zero, vr1
000704  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000708  63800f00  loadli.w zero,  0(r31)
00070c  e3cffeff  loadli.w r31,  -4(sp)
000710  fe0100e0  vmmov mr3, zero
000714  17200000  xor zero, zero, zero
000718  1f008fc9  addli zero, r30, -6976
00071c  a6136406  vmac.f.mz.rn vr7{mr3}, vr8, vr6
000720  a6156400  vmac.f.mz.rn vr11{mr0}, vr8, vr6
000724  16149502  vadd.f.mz.rn vr8{mr1}, vr10, vr9
000728  42100002  vload_mask16.mz vr0{mr1}, 0(zero)
00072c  17200000  xor zero, zero, zero
000730  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
000734  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000738  1f000fc9  addli zero, r30, -7040
00073c  c2100002  vload_mask16.mz vr1{mr1}, 0(zero)
000740  17200000  xor zero, zero, zero
000744  e7cffeff  storeli.w r31, -4(sp)
000748  9f4fffce  addli r31, r30, -6276
00074c  12351002  vadd.s.mz vr10{mr1}, zero, vr1
000750  63800f00  loadli.w zero,  0(r31)
000754  e3cffeff  loadli.w r31,  -4(sp)
000758  e7cffeff  storeli.w r31, -4(sp)
00075c  9f4fefce  addli r31, r30, -6284
000760  7e0000e0  vmmov mr0, zero
000764  17200000  xor zero, zero, zero
000768  a6145400  vmac.f.mz.rn vr9{mr0}, vr8, vr5
00076c  26155404  vmac.f.mz.rn vr10{mr2}, vr8, vr5
000770  12340002  vadd.s.mz vr8{mr1}, zero, vr0
000774  92351002  vadd.s.mz vr11{mr1}, zero, vr1
000778  63800f00  loadli.w zero,  0(r31)
00077c  e3cffeff  loadli.w r31,  -4(sp)
000780  26946306  vmac.f.mz.rn vr8{mr3}, vr7, vr6
000784  fe0100e0  vmmov mr3, zero
000788  17200000  xor zero, zero, zero
00078c  1f008fc8  addli zero, r30, -7104
000790  a6956306  vmac.f.mz.rn vr11{mr3}, vr7, vr6
000794  96139502  vadd.f.mz.rn vr7{mr1}, vr10, vr9
000798  42150002  vload_mask16.mz vr10{mr1}, 0(zero)
00079c  17200000  xor zero, zero, zero
0007a0  16948502  vadd.f.mz.rn vr8{mr1}, vr11, vr8
0007a4  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
0007a8  1f000fc8  addli zero, r30, -7168
0007ac  42100002  vload_mask16.mz vr0{mr1}, 0(zero)
0007b0  17200000  xor zero, zero, zero
0007b4  ab0080bf  lui r1, 784384
0007b8  e7cffeff  storeli.w r31, -4(sp)
0007bc  9f0fffce  addli r31, r30, -6280
0007c0  a6945300  vmac.f.mz.rn vr9{mr0}, vr7, vr5
0007c4  92350002  vadd.s.mz vr11{mr1}, zero, vr0
0007c8  63800f00  loadli.w zero,  0(r31)
0007cc  e3cffeff  loadli.w r31,  -4(sp)
0007d0  26106406  vmac.f.mz.rn vr0{mr3}, vr8, vr6
0007d4  a6955304  vmac.f.mz.rn vr11{mr2}, vr7, vr5
0007d8  8a935002  vmul.f.mz.rn vr7{mr1}, r1, vr5
0007dc  8a926002  vmul.f.mz.rn vr5{mr1}, r1, vr6
0007e0  9f40ffce  addli r1, r30, -6276
0007e4  7e0100e0  vmmov mr2, zero
0007e8  17200000  xor zero, zero, zero
0007ec  26156404  vmac.f.mz.rn vr10{mr2}, vr8, vr6
0007f0  63800000  loadli.w zero,  0(r1)
0007f4  9f000fcf  addli r1, r30, -6272
0007f8  16939502  vadd.f.mz.rn vr6{mr1}, vr11, vr9
0007fc  7e0000e0  vmmov mr0, zero
000800  17200000  xor zero, zero, zero
000804  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
000808  92133010  vadd.f.mh.rn vr7{mr0}, zero, vr3
00080c  92124014  vadd.f.mh.rn vr5{mr2}, zero, vr4
000810  9f070000  addli r15, zero, 0
000814  a6137302  vmac.f.mz.rn vr7{mr1}, vr6, vr7
000818  a6125002  vmac.f.mz.rn vr5{mr1}, vr0, vr5
00081c  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
000820  46105902  vstore_mask16.mz vr5{mr1}, 0(r18)
000824  00a00000  mfence { lm }
000828  5b020000  j 16
00082c  9f970700  addli r15, r15, 1
000830  9fc00000  addli r1, r1, 4
000834  370ff1fc  beq r2, r15, -1088
000838  1308fe04  setlt.u r16, r28, r15
00083c  3b500800  bneq r16, zero, 20
000840  17c8f200  srl r16, r5, r15
000844  1b081800  andi r16, r16, 1
000848  3b600800  bneq r16, zero, 24
00084c  5bfcffff  j -32
000850  1f88e7ff  addli r16, r15, -16
000854  17480301  srl r16, r6, r16
000858  1b081800  andi r16, r16, 1
00085c  374f08fe  beq r16, zero, -48
000860  63880000  loadli.w r16,  0(r1)
000864  ab030040  lui r7, 262144
000868  8f837310  .word 0x1073838f
00086c  8be30321  mul.f.rn r7, r7, r16
000870  8f837300  .word 0x0073838f
000874  67807000  storeli.w r7, 0(r1)
000878  dbf6ffff  j -76
00087c  9f200000  addli r1, zero, 2
000880  00a00000  mfence { lm }
000884  1f340000  addli r8, zero, 3
000888  97b01402  sll.d r[2:3], r[10:11], r1
00088c  9f04cfc7  addli r9, r30, -7200
000890  ebd20400  load.d r[6:7], 0(r9)
000894  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
000898  6343ffc7  loadli.w r6,  -7172(r30)
00089c  9bb22500  slli r5, r11, 2
0008a0  ab0300f0  lui r7, 983040
0008a4  97927200  or r5, r5, r7
0008a8  1f130300  addli r6, r6, 1
0008ac  ffb25001  s_lm2gm r5, r21, 0(r[2:3])
0008b0  9f0a0fdc  addli r21, r30, -4608
0008b4  9f00000c  addli r1, zero, 1536
0008b8  8b1c8338  mod.s r25, r6, r8
0008bc  8b9a1c50  fmac.s r21, r25, r1
0008c0  bfb66bfd  blt.s r23, r22, -1620
0008c4  9f03afc7  addli r7, r30, -7216
0008c8  9f020003  addli r5, zero, 384
0008cc  ebd00300  load.d r[2:3], 0(r7)
0008d0  b382522a  .word 0x2a5282b3
0008d4  8bb01940  min.sl r[2:3], r[20:21], r[2:3]
0008d8  8bb05040  min.sl r[2:3], r[2:3], r[6:7]
0008dc  9f020fd0  addli r5, r30, -6144
0008e0  1f830a00  addli r6, r21, 0
0008e4  e3030300  loadli.w r7,  0(r6)
0008e8  2b04b53f  lui r8, 260944
0008ec  9ff0f0ff  addli r1, r1, -1
0008f0  1f430300  addli r6, r6, 4
0008f4  1b14344f  ori r8, r8, 1267
0008f8  8f838318  div.f.rn r7, r7, r8
0008fc  67807200  storeli.w r7, 0(r5)
000900  9fc20200  addli r5, r5, 4
000904  bb8f00fe  bneq r1, zero, -32
000908  db2cffff  j -1692
00090c  00a00300  mfence { lm, sm, gm }
000910  9f0e0fc7  addli sp, r30, -7296
000914  9f8e0e39  addli sp, sp, 7296
000918  00a00300  mfence { lm, sm, gm }
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
