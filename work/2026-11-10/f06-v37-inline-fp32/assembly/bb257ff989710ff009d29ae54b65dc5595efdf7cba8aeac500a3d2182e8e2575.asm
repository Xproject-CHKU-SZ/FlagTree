000000  17200000  xor zero, zero, zero
000004  1f420000  addli r4, zero, 4
000008  1f041000  addli r8, zero, 8
00000c  9f77f0ff  addli r15, zero, -1
000010  80310002  core_id r3
000014  00510102  load_param_i r2, 2
000018  ab800000  lui r1, 8
00001c  ab020000  lui r5, 0
000020  9f824201  addli r5, r5, 160
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
000078  9f199000  addli r19, zero, 73
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
0000ac  d71c0000  jal 228
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a0eff  addli r20, sp, -128
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  ca108002  vloads_mask16.mz vr1{mr1}, 64(zero)
0000c4  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c8  46041a02  vstore.mz vr1{mr1}, 64(r20)
0000cc  00a00100  mfence { lm, sm }
0000d0  00d00100  sync_group
0000d4  97a01000  xor r1, r1, r1
0000d8  1f8f0e00  addli r30, sp, 0
0000dc  d71c0000  jal 228
0000e0  00400000  trap
0000e4  9f8e0ec8  addli sp, sp, -7168
0000e8  1f8f0e37  addli r30, sp, 7040
0000ec  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0000f0  6b510f04  load.d r[3:4], 64(r30)
0000f4  1f04bfca  addli r8, r30, -6824
0000f8  9f04afca  addli r9, r30, -6832
0000fc  1f05cfca  addli r10, r30, -6816
000100  6b5b0f01  load.d r[23:24], 16(r30)
000104  6b528f01  load.d r[5:6], 24(r30)
000108  9f050fcb  addli r11, r30, -6784
00010c  eb108f04  load.bu r1, 72(r30)
000110  6b560f03  load.d r[13:14], 48(r30)
000114  6b578f02  load.d r[15:16], 40(r30)
000118  6b538f00  load.d r[7:8], 8(r30)
00011c  1f085fce  addli r16, r30, -6360
000120  9f080fca  addli r17, r30, -6912
000124  1f092fca  addli r18, r30, -6896
000128  67430fce  storeli.w zero, -6348(r30)
00012c  e7030fce  storeli.w zero, -6344(r30)
000130  e7430fce  storeli.w zero, -6340(r30)
000134  73302400  store.d r[3:4], 0(r8)
000138  6b518f03  load.d r[3:4], 56(r30)
00013c  73b04500  store.d r[5:6], 0(r11)
000140  e3020f00  loadli.w r5,  0(r30)
000144  9b801000  andi r1, r1, 1
000148  73306801  store.d r[23:24], 0(r16)
00014c  73b0e800  store.d r[15:16], 0(r17)
000150  7330c900  store.d r[13:14], 0(r18)
000154  8b900058  neg.s r1, r1
000158  73b02400  store.d r[3:4], 0(r9)
00015c  6b510f02  load.d r[3:4], 32(r30)
000160  67075fca  storeli.w r5, -6800(r30)
000164  80520102  load_param_i r5, 2
000168  e7015fca  storeli.w r5, -6888(r30)
00016c  9f020fcc  addli r5, r30, -6656
000170  73302500  store.d r[3:4], 0(r10)
000174  1f010006  addli r2, zero, 768
000178  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
00017c  3301212c  .word 0x2c210133
000180  13326105  setlt.sl r4, r[3:4], r[23:24]
000184  3b170200  bneq r4, zero, 452
000188  2302fb03  andi.d r[5:6], r[23:24], 63
00018c  33048028  .word 0x28800433
000190  13228202  setneq.d r4, r[5:6], r[9:10]
000194  bb560200  bneq r4, zero, 436
000198  1f717b00  addli r2, r22, 63
00019c  9f018000  addli r3, zero, 64
0001a0  63043fca  loadli.w r8,  -6888(r30)
0001a4  33024028  .word 0x28400233
0001a8  80340002  core_id r9
0001ac  0b113130  div.s r2, r2, r3
0001b0  13224702  setneq.d r4, r[15:16], r[5:6]
0001b4  8b118138  mod.s r3, r2, r8
0001b8  0b118130  div.s r2, r2, r8
0001bc  1b32e200  slli r4, r4, 14
0001c0  93923404  setlt.s r5, r9, r3
0001c4  8b913440  min.s r3, r9, r3
0001c8  8b119150  fmac.s r3, r2, r9
0001cc  8b125110  add.s r5, r2, r5
0001d0  2b010000  lui r2, 0
0001d4  8b923210  add.s r5, r5, r3
0001d8  9bb16100  slli r3, r3, 6
0001dc  1f010100  addli r2, r2, 0
0001e0  9bb26200  slli r5, r5, 6
0001e4  0b946141  min.s r8, r3, r22
0001e8  8b916241  min.s r3, r5, r22
0001ec  8b122210  add.s r5, r4, r2
0001f0  b7b18100  beq r3, r8, 108
0001f4  b3049028  .word 0x289004b3
0001f8  8b958118  sub.s r11, r3, r8
0001fc  b3113428  .word 0x283411b3
000200  13259700  seteq.d r10, r[15:16], r[10:11]
000204  9b342400  slli r9, r8, 2
000208  1bb42500  slli r8, r11, 2
00020c  bb200500  bneq r10, zero, 40
000210  1f250000  addli r10, zero, 2
000214  8b952410  add.s r11, r9, r2
000218  17b6a102  sll.d r[13:14], r[4:5], r10
00021c  2b0500f0  lui r10, 983040
000220  0b26c710  add.ul r[13:14], r[15:16], r[13:14]
000224  1715a400  or r10, r8, r10
000228  7f05b600  l_gm2sm r10, r11, 0(r[13:14])
00022c  1f052fca  addli r10, r30, -6896
000230  6b560500  load.d r[13:14], 0(r10)
000234  3305a028  .word 0x28a00533
000238  1325a600  seteq.d r10, r[13:14], r[11:12]
00023c  bb000500  bneq r10, zero, 32
000240  1f250000  addli r10, zero, 2
000244  8b949210  add.s r9, r5, r9
000248  97b1a102  sll.d r[4:5], r[4:5], r10
00024c  2b0500f0  lui r10, 983040
000250  8b213610  add.ul r[4:5], r[13:14], r[4:5]
000254  1714a400  or r8, r8, r10
000258  7f849100  l_gm2sm r8, r9, 0(r[4:5])
00025c  80d10002  load_param_i r3, 1
000260  00550002  load_param_i r10, 0
000264  b381312e  .word 0x2e3181b3
000268  3305a52c  .word 0x2ca50533
00026c  0f143370  mod.sl r[9:10], r[7:8], r[4:5]
000270  8f113366  .word 0x6633118f
000274  13368504  setlt.sl r12, r[11:12], r[9:10]
000278  0b348540  min.sl r[9:10], r[11:12], r[9:10]
00027c  0bb4a150  fmac.sl r[9:10], r[4:5], r[11:12]
000280  3306c628  .word 0x28c60633
000284  8ba1c110  add.ul r[4:5], r[4:5], r[13:14]
000288  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
00028c  0b346440  min.sl r[9:10], r[9:10], r[7:8]
000290  0bb36140  min.sl r[7:8], r[4:5], r[7:8]
000294  93318306  setle.sl r3, r[7:8], r[9:10]
000298  bb83010c  bneq r3, zero, 6368
00029c  1f0a5fce  addli r20, r30, -6360
0002a0  9f010006  addli r3, zero, 768
0002a4  9f081fcb  addli r17, r30, -6776
0002a8  a7070400  addli.d r[16:17], r[9:10], 0
0002ac  9f0a3fcb  addli r21, r30, -6760
0002b0  1f0c2fca  addli r24, r30, -6896
0002b4  9f763000  addli r13, zero, 31
0002b8  6b5b0a00  load.d r[23:24], 0(r20)
0002bc  b381312e  .word 0x2e3181b3
0002c0  73b06800  store.d r[7:8], 0(r17)
0002c4  8b338318  sub.sl r[8:9], r[7:8], r[9:10]
0002c8  1f030018  addli r6, zero, 3072
0002cc  eb540c00  load.d r[10:11], 0(r24)
0002d0  73b07a00  store.d r[8:9], 0(r21)
0002d4  0f996165  .word 0x6561990f
0002d8  b301332c  .word 0x2c3301b3
0002dc  8bb13340  min.sl r[4:5], r[8:9], r[4:5]
0002e0  63043fca  loadli.w r8,  -6888(r30)
0002e4  33036028  .word 0x28600333
0002e8  8b113410  add.s r3, r8, r3
0002ec  1ff2f1ff  addli r4, r3, -1
0002f0  93a16402  setneq.d r3, r[10:11], r[7:8]
0002f4  0b178230  div.s r14, r4, r8
0002f8  1f028000  addli r4, zero, 64
0002fc  2b640000  lui r8, 6
000300  abf5ffff  lui r11, 1048575
000304  0b154b38  mod.s r10, r22, r4
000308  9b94f5ff  ori r9, r11, 4095
00030c  1f820400  addli r4, r9, 0
000310  1bb6e100  slli r12, r3, 14
000314  3fb0a600  blt.s r13, r10, 12
000318  17b2a400  sll r4, r9, r10
00031c  17229200  xor r4, r4, r9
000320  8b98c210  add.s r17, r5, r12
000324  1b9605fc  ori r12, r11, 4032
000328  9f056fcb  addli r11, r30, -6736
00032c  0b1ce940  min.s r24, r18, r14
000330  9f064000  addli r13, zero, 32
000334  e70aefca  storeli.w r14, -6744(r30)
000338  73b02501  store.d r[19:20], 0(r11)
00033c  bfcea606  blt.s r13, r10, 4016
000340  9f040000  addli r9, zero, 0
000344  dbf60100  j 4020
000348  1f72f017  addli r4, zero, 3071
00034c  1b8e1000  andi r28, r1, 1
000350  33024228  .word 0x28420233
000354  e74ecfc9  storeli.w r28, -6932(r30)
000358  13326204  setlt.sl r4, r[5:6], r[7:8]
00035c  3b020200  bneq r4, zero, 128
000360  8f102372  .word 0x7223108f
000364  9f71f002  addli r3, zero, 383
000368  bfd11100  blt.s r3, r1, 116
00036c  8f401300  .word 0x0013408f
000370  abb12f40  lui r3, 262907
000374  2b323333  lui r4, 209715
000378  9b943133  ori r9, r3, 819
00037c  abb1b2c0  lui r3, 789291
000380  1b143233  ori r8, r4, 819
000384  1b9201c0  ori r4, r3, 3072
000388  9f010000  addli r3, zero, 0
00038c  8f908030  .word 0x3080908f
000390  8f903020  .word 0x2030908f
000394  8fb0101a  .word 0x1a10b08f
000398  b390102a  .word 0x2a1090b3
00039c  93301b06  setle.sl r1, r[23:24], r[2:3]
0003a0  bbf00000  bneq r1, zero, 60
0003a4  1715c702  or.d r[11:12], r[15:16], r[13:14]
0003a8  33080029  .word 0x29000833
0003ac  93200501  seteq.d r1, r[11:12], r[17:18]
0003b0  3bef000a  bneq r1, zero, 6104
0003b4  b3001028  .word 0x281000b3
0003b8  93211602  setneq.d r3, r[13:14], r[2:3]
0003bc  93201702  setneq.d r1, r[15:16], r[2:3]
0003c0  2bf10300  lui r2, 63
0003c4  1b110180  ori r2, r2, 2048
0003c8  8b901110  add.s r1, r3, r1
0003cc  8b001130  div.u r1, r2, r1
0003d0  9bc0b000  srli r1, r1, 11
0003d4  3386c02a  .word 0x2ac08633
0003d8  5bf90200  j 6088
0003dc  9710c702  or.d r[2:3], r[15:16], r[13:14]
0003e0  33048028  .word 0x28800433
0003e4  93a18000  seteq.d r3, r[2:3], r[9:10]
0003e8  bba00100  bneq r3, zero, 40
0003ec  b3013028  .word 0x283001b3
0003f0  93223602  setneq.d r5, r[13:14], r[4:5]
0003f4  93213702  setneq.d r3, r[15:16], r[4:5]
0003f8  2be20300  lui r4, 62
0003fc  8b913210  add.s r3, r5, r3
000400  8b013230  div.u r3, r4, r3
000404  9bc1b100  srli r3, r3, 11
000408  3385a12e  .word 0x2ea18533
00040c  db030000  j 28
000410  9f010004  addli r3, zero, 512
000414  2772fb03  addli.d r[5:6], r[23:24], 511
000418  3385a12e  .word 0x2ea18533
00041c  8f11a266  .word 0x66a2118f
000420  a3b10102  slli.d r[4:5], r[4:5], 32
000424  23d50102  srai.d r[11:12], r[4:5], 32
000428  80d10002  load_param_i r3, 1
00042c  80520002  load_param_i r5, 0
000430  b381312e  .word 0x2e3181b3
000434  3387e22a  .word 0x2ae28733
000438  0f163370  mod.sl r[13:14], r[7:8], r[4:5]
00043c  8f113366  .word 0x6633118f
000440  9332c704  setlt.sl r5, r[15:16], r[13:14]
000444  0b36c740  min.sl r[13:14], r[15:16], r[13:14]
000448  0bb6e150  fmac.sl r[13:14], r[4:5], r[15:16]
00044c  9f07afc9  addli r15, r30, -6960
000450  1f07cfc9  addli r14, r30, -6944
000454  3388022b  .word 0x2b028833
000458  e3023fca  loadli.w r5,  -6888(r30)
00045c  8ba10111  add.ul r[4:5], r[4:5], r[17:18]
000460  9bb24200  slli r5, r5, 4
000464  8ba1c110  add.ul r[4:5], r[4:5], r[13:14]
000468  0b366640  min.sl r[13:14], r[13:14], r[7:8]
00046c  8bb16140  min.sl r[4:5], r[4:5], r[7:8]
000470  3383622a  .word 0x2a628333
000474  9f120000  addli r5, zero, 1
000478  7330c700  store.d r[13:14], 0(r14)
00047c  8bb1c118  sub.sl r[4:5], r[4:5], r[13:14]
000480  73b03700  store.d r[4:5], 0(r15)
000484  8b213310  add.ul r[4:5], r[7:8], r[4:5]
000488  a7f1f1ff  addli.d r[4:5], r[4:5], 32767
00048c  8f916166  .word 0x6661918f
000490  a3b10102  slli.d r[4:5], r[4:5], 32
000494  a3d10102  srai.d r[4:5], r[4:5], 32
000498  0bb66120  mul.sl r[13:14], r[4:5], r[7:8]
00049c  b381322a  .word 0x2a3281b3
0004a0  9f029fc9  addli r5, r30, -6968
0004a4  93313604  setlt.sl r3, r[13:14], r[4:5]
0004a8  73b0c200  store.d r[13:14], 0(r5)
0004ac  3bbb010a  bneq r3, zero, 5836
0004b0  1f06bfc9  addli r12, r30, -6952
0004b4  73306600  store.d r[7:8], 0(r12)
0004b8  9f030fca  addli r7, r30, -6912
0004bc  b3025028  .word 0x285002b3
0004c0  ebd10300  load.d r[4:5], 0(r7)
0004c4  278b0200  addli.d r[23:24], r[6:7], 0
0004c8  93a15102  setneq.d r3, r[4:5], r[6:7]
0004cc  2bf20100  lui r4, 31
0004d0  3ba00100  bneq r3, zero, 8
0004d4  1f020000  addli r4, zero, 0
0004d8  1f095fce  addli r18, r30, -6360
0004dc  9f030006  addli r7, zero, 768
0004e0  9f270000  addli r15, zero, 2
0004e4  6b5a0900  load.d r[21:22], 0(r18)
0004e8  3386c32e  .word 0x2ec38633
0004ec  3388072f  .word 0x2f078833
0004f0  a772fa05  addli.d r[6:7], r[21:22], 767
0004f4  8f92c262  .word 0x62c2928f
0004f8  8f16ca72  .word 0x72ca168f
0004fc  2b06803f  lui r12, 260096
000500  a3b20202  slli.d r[6:7], r[6:7], 32
000504  a3d20202  srai.d r[6:7], r[6:7], 32
000508  a7f2f2ff  addli.d r[6:7], r[6:7], 32767
00050c  8f920273  .word 0x7302928f
000510  1f181000  addli r16, zero, 9
000514  37a00600  beq r13, zero, 8
000518  9f830600  addli r7, r13, 0
00051c  1f0d2fca  addli r26, r30, -6896
000520  9f0d0fca  addli r27, r30, -6912
000524  270c0b00  addli.d r[25:26], r[23:24], 0
000528  9f890300  addli r19, r7, 0
00052c  eb560d00  load.d r[14:15], 0(r26)
000530  ebd80d00  load.d r[18:19], 0(r27)
000534  93a38601  seteq.d r7, r[14:15], r[25:26]
000538  93a68603  setneq.d r13, r[14:15], r[25:26]
00053c  13a78801  seteq.d r14, r[18:19], r[25:26]
000540  17380503  sll.d r[17:18], r[11:12], r16
000544  1f0cffca  addli r24, r30, -6792
000548  73300c01  store.d r[17:18], 0(r24)
00054c  2b080000  lui r16, 0
000550  67043fcb  storeli.w r19, -6848(r30)
000554  3399292f  .word 0x2f299933
000558  8f381a01  .word 0x011a388f
00055c  1f080800  addli r16, r16, 0
000560  0b3c2a19  sub.sl r[25:26], r[21:22], r[19:20]
000564  0b120211  add.s r4, r4, r16
000568  1f08cfc9  addli r16, r30, -6944
00056c  6b590800  load.d r[19:20], 0(r16)
000570  674a4fcc  storeli.w r4, -6492(r30)
000574  1f321000  addli r4, zero, 11
000578  17354502  sll.d r[11:12], r[11:12], r4
00057c  1f020000  addli r4, zero, 0
000580  9737f902  sll.d r[16:17], r[19:20], r15
000584  37a00200  beq r5, zero, 8
000588  1f020018  addli r4, zero, 3072
00058c  93a08002  setneq.d r1, r[2:3], r[9:10]
000590  1f04bfca  addli r8, r30, -6824
000594  9f046fc9  addli r9, r30, -6992
000598  9f190000  addli r19, zero, 1
00059c  7e8009e0  vmmov mr0, r19
0005a0  e7061fca  storeli.w r1, -6808(r30)
0005a4  e3404fcd  loadli.w r1,  -6492(r30)
0005a8  9f800040  addli r1, r1, 8192
0005ac  e74f1fc8  storeli.w r1, -6916(r30)
0005b0  8f001619  div.f.rn r1, r12, r17
0005b4  1f060fcb  addli r12, r30, -6784
0005b8  e7431fca  storeli.w r1, -6852(r30)
0005bc  93800202  setneq r1, r5, zero
0005c0  9f02ffca  addli r5, r30, -6792
0005c4  1f03afca  addli r6, r30, -6832
0005c8  e7411fca  storeli.w r1, -6884(r30)
0005cc  e3008fca  loadli.w r1,  -6848(r30)
0005d0  9bb02000  slli r1, r1, 2
0005d4  e7031fca  storeli.w r1, -6856(r30)
0005d8  ebd00200  load.d r[2:3], 0(r5)
0005dc  93b04007  setle.sl r1, r[2:3], r[21:22]
0005e0  e7401fca  storeli.w r1, -6900(r30)
0005e4  9780d100  and r1, r3, r13
0005e8  e70b1fcc  storeli.w r1, -6472(r30)
0005ec  9790e600  or r1, r13, r14
0005f0  1f078fcb  addli r14, r30, -6720
0005f4  9f360000  addli r13, zero, 3
0005f8  e70a1fcc  storeli.w r1, -6488(r30)
0005fc  97907100  or r1, r3, r7
000600  9f037fc9  addli r7, r30, -6984
000604  9f010fd0  addli r3, r30, -6144
000608  67491fcc  storeli.w r1, -6508(r30)
00060c  eb500300  load.d r[2:3], 0(r6)
000610  8ba0f010  add.ul r[2:3], r[2:3], r[16:17]
000614  73b01300  store.d r[2:3], 0(r7)
000618  eb500400  load.d r[2:3], 0(r8)
00061c  8ba0f010  add.ul r[2:3], r[2:3], r[16:17]
000620  9f075fca  addli r15, r30, -6872
000624  73b01400  store.d r[2:3], 0(r9)
000628  eb500600  load.d r[2:3], 0(r12)
00062c  8ba0a010  add.ul r[2:3], r[2:3], r[11:12]
000630  1f058fc9  addli r10, r30, -6976
000634  9f054fcb  addli r11, r30, -6752
000638  73301500  store.d r[2:3], 0(r10)
00063c  1f010006  addli r2, zero, 768
000640  8b904110  add.s r1, r3, r4
000644  3301212c  .word 0x2c210133
000648  67031fca  storeli.w r1, -6864(r30)
00064c  9f200000  addli r1, zero, 2
000650  73b02500  store.d r[3:4], 0(r11)
000654  9f010fcc  addli r3, r30, -6656
000658  97301c02  sll.d r[2:3], r[25:26], r1
00065c  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
000660  73b01700  store.d r[2:3], 0(r15)
000664  9f00bfc9  addli r1, r30, -6952
000668  1f019fca  addli r2, r30, -6840
00066c  6bd20000  load.d r[5:6], 0(r1)
000670  73308101  store.d r[25:26], 0(r2)
000674  6e300062  vxor.s.mz vr0{mr1}, vr0, vr0
000678  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
00067c  5b070000  j 56
000680  9f01bfc9  addli r3, r30, -6952
000684  1f03efc9  addli r6, r30, -6928
000688  9f039fc9  addli r7, r30, -6968
00068c  6bd20100  load.d r[5:6], 0(r3)
000690  6b5b0300  load.d r[23:24], 0(r6)
000694  ebd00300  load.d r[2:3], 0(r7)
000698  00a00300  mfence { lm, sm, gm }
00069c  634edfc9  loadli.w r28,  -6932(r30)
0006a0  0b2b4b10  add.ul r[23:24], r[23:24], r[5:6]
0006a4  13311b04  setlt.sl r2, r[23:24], r[2:3]
0006a8  9f009fca  addli r1, r30, -6840
0006ac  6bdc0000  load.d r[25:26], 0(r1)
0006b0  3723010a  beq r2, zero, 5320
0006b4  1f06afc9  addli r12, r30, -6960
0006b8  1f08cfc9  addli r16, r30, -6944
0006bc  9f08efc9  addli r17, r30, -6928
0006c0  67040fce  storeli.w zero, -6336(r30)
0006c4  eb500600  load.d r[2:3], 0(r12)
0006c8  73b06801  store.d r[23:24], 0(r17)
0006cc  0bb16019  sub.sl r[3:4], r[2:3], r[23:24]
0006d0  e3003fca  loadli.w r1,  -6888(r30)
0006d4  8b322240  min.sl r[6:7], r[5:6], r[3:4]
0006d8  0b911238  mod.s r2, r5, r1
0006dc  0b921230  div.s r4, r5, r1
0006e0  80300002  core_id r1
0006e4  93932004  setlt.s r7, r1, r2
0006e8  8b912040  min.s r3, r1, r2
0006ec  1f840100  addli r8, r3, 0
0006f0  0b141250  fmac.s r8, r4, r1
0006f4  0b127210  add.s r4, r4, r7
0006f8  8b135440  min.s r7, r8, r5
0006fc  0b128210  add.s r4, r4, r8
000700  6b540800  load.d r[9:10], 0(r16)
000704  3397e32e  .word 0x2ee39733
000708  0b125240  min.s r4, r4, r5
00070c  0b258b10  add.ul r[11:12], r[23:24], r[9:10]
000710  1f048000  addli r8, zero, 64
000714  8b107218  sub.s r1, r4, r7
000718  9f035fce  addli r7, r30, -6360
00071c  1f023fcb  addli r4, r30, -6760
000720  8b24e510  add.ul r[10:11], r[11:12], r[15:16]
000724  6bd70300  load.d r[15:16], 0(r7)
000728  e70b1fca  storeli.w r1, -6728(r30)
00072c  73309200  store.d r[10:11], 0(r4)
000730  3ffe3001  blt.s r1, r19, 924
000734  9f030000  addli r7, zero, 0
000738  37300100  beq r2, zero, 12
00073c  80300002  core_id r1
000740  8b931118  sub.s r7, r3, r1
000744  1ff17200  addli r2, r5, 63
000748  e3007fcb  loadli.w r1,  -6728(r30)
00074c  63097fce  loadli.w r18,  -6344(r30)
000750  0b118130  div.s r2, r2, r8
000754  b381302a  .word 0x2a3081b3
000758  80300002  core_id r1
00075c  0b111120  mul.s r2, r2, r1
000760  9f003fcb  addli r1, r30, -6760
000764  6bd40000  load.d r[9:10], 0(r1)
000768  0b253410  add.ul r[11:12], r[9:10], r[4:5]
00076c  3301212c  .word 0x2c210133
000770  0b388118  sub.sl r[17:18], r[3:4], r[9:10]
000774  5b050000  j 40
000778  ab000000  lui r1, 0
00077c  9f800000  addli r1, r1, 0
000780  0b91c010  add.s r2, r1, r12
000784  1f010120  addli r2, r2, 4096
000788  73604100  stores.w r4, 0(r2)
00078c  1f023fcb  addli r4, r30, -6760
000790  eb500200  load.d r[2:3], 0(r4)
000794  13b1a004  setlt.sl r2, r[2:3], r[11:12]
000798  b73c0100  beq r2, zero, 812
00079c  2775f5ff  addli.d r[11:12], r[11:12], 32767
0007a0  1f060fcb  addli r12, r30, -6784
0007a4  9f200000  addli r1, zero, 2
0007a8  2b0200f0  lui r4, 983040
0007ac  1f0b5fca  addli r22, r30, -6872
0007b0  0b31e520  mul.sl r[3:4], r[11:12], r[15:16]
0007b4  6b540600  load.d r[9:10], 0(r12)
0007b8  3307e028  .word 0x28e00733
0007bc  17311102  sll.d r[3:4], r[3:4], r1
0007c0  e3007fca  loadli.w r1,  -6856(r30)
0007c4  0b2a2410  add.ul r[21:22], r[9:10], r[3:4]
0007c8  6b540b00  load.d r[9:10], 0(r22)
0007cc  1331ec04  setlt.sl r2, r[25:26], r[15:16]
0007d0  97914000  or r3, r1, r4
0007d4  e3006fca  loadli.w r1,  -6864(r30)
0007d8  0b278a10  add.ul r[15:16], r[21:22], r[9:10]
0007dc  ff211700  l_gm2lm r3, r1, 0(r[15:16])
0007e0  9f870000  addli r15, r1, 0
0007e4  00a00200  mfence { lm, gm }
0007e8  3b780100  bneq r2, zero, 540
0007ec  63098fca  loadli.w r18,  -6848(r30)
0007f0  63473fca  loadli.w r14,  -6884(r30)
0007f4  1f010000  addli r2, zero, 0
0007f8  1f040000  addli r8, zero, 0
0007fc  270b0c00  addli.d r[23:24], r[25:26], 0
000800  9f000018  addli r1, zero, 3072
000804  9f048000  addli r9, zero, 64
000808  5b1f0000  j 248
00080c  1f020000  addli r4, zero, 0
000810  1b362d00  slli r12, r26, 2
000814  1f092000  addli r18, zero, 16
000818  7e8101e0  vmmov mr2, r3
00081c  0b96c710  add.s r12, r15, r12
000820  97d12101  sra r3, r3, r18
000824  9f078600  addli r15, r12, 64
000828  42100604  vload_mask16.mz vr0{mr2}, 0(r12)
00082c  7e8101e0  vmmov mr2, r3
000830  9f010601  addli r3, r12, 128
000834  42930704  vload_mask16.mz vr6{mr2}, 0(r15)
000838  7e0102e0  vmmov mr2, r4
00083c  c2930104  vload_mask16.mz vr7{mr2}, 0(r3)
000840  97512201  sra r3, r4, r18
000844  1f028601  addli r4, r12, 192
000848  7e8101e0  vmmov mr2, r3
00084c  42140204  vload_mask16.mz vr8{mr2}, 0(r4)
000850  96125002  vadd.f.mz.rn vr5{mr1}, vr0, vr5
000854  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000858  16924302  vadd.f.mz.rn vr4{mr1}, vr7, vr4
00085c  a6917302  vmac.f.mz.rn vr3{mr1}, vr7, vr7
000860  96125302  vadd.f.mz.rn vr5{mr1}, vr6, vr5
000864  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000868  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
00086c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
000870  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
000874  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000878  9f010002  addli r3, zero, 256
00087c  1b271700  xori r14, r14, 1
000880  9f070fd0  addli r15, r30, -6144
000884  1f090006  addli r18, zero, 768
000888  00a00000  mfence { lm }
00088c  8b171750  fmac.s r15, r14, r1
000890  eaf101c0  vsrl.p vr3, r3, vr0
000894  6af221c0  vsrl.p vr4, r3, vr2
000898  9f010001  addli r3, zero, 128
00089c  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
0008a0  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
0008a4  eaf101c0  vsrl.p vr3, r3, vr0
0008a8  6af221c0  vsrl.p vr4, r3, vr2
0008ac  9f014000  addli r3, zero, 32
0008b0  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
0008b4  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
0008b8  eaf104c0  vsrl.p vr3, r9, vr0
0008bc  6af224c0  vsrl.p vr4, r9, vr2
0008c0  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
0008c4  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
0008c8  eaf101c0  vsrl.p vr3, r3, vr0
0008cc  6af221c0  vsrl.p vr4, r3, vr2
0008d0  9f71f005  addli r3, zero, 767
0008d4  b381312e  .word 0x2e3181b3
0008d8  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
0008dc  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
0008e0  13b26105  setlt.sl r4, r[4:5], r[23:24]
0008e4  270b0c00  addli.d r[23:24], r[25:26], 0
0008e8  fa110020  vextract.f r3, vr0{mr0}
0008ec  7a160120  vextract.f r12, vr2{mr0}
0008f0  0b643410  add.f.rn r8, r8, r3
0008f4  0b61c110  add.f.rn r2, r2, r12
0008f8  9f010006  addli r3, zero, 768
0008fc  37540200  beq r4, zero, 276
000900  1f064fcb  addli r12, r30, -6752
000904  270c0bfa  addli.d r[25:26], r[23:24], 32000
000908  eb510600  load.d r[4:5], 0(r12)
00090c  93213b04  setlt.ul r3, r[23:24], r[4:5]
000910  bba00100  bneq r3, zero, 40
000914  9b211700  xori r3, r14, 1
000918  1f020fd0  addli r4, r30, -6144
00091c  0b921150  fmac.s r4, r3, r1
000920  9f210000  addli r3, zero, 2
000924  173d3c02  sll.d r[27:28], r[25:26], r3
000928  ab0100f0  lui r3, 983040
00092c  0b2daa11  add.ul r[27:28], r[21:22], r[27:28]
000930  97913000  or r3, r1, r3
000934  ff214d00  l_gm2lm r3, r4, 0(r[27:28])
000938  abf1ffff  lui r3, 1048575
00093c  9b9101fc  ori r3, r3, 4032
000940  170d3900  and r26, r18, r3
000944  9f018fcb  addli r3, r30, -6720
000948  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
00094c  92315002  vadd.s.mz vr3{mr1}, zero, vr5
000950  12315002  vadd.s.mz vr2{mr1}, zero, vr5
000954  12325002  vadd.s.mz vr4{mr1}, zero, vr5
000958  bf213d01  blt.s r26, r19, 104
00095c  1f068fcb  addli r12, r30, -6720
000960  9f010000  addli r3, zero, 0
000964  1f820700  addli r4, r15, 0
000968  c2110602  vload_mask16.mz vr3{mr1}, 0(r12)
00096c  92323002  vadd.s.mz vr5{mr1}, zero, vr3
000970  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000974  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000978  1f060201  addli r12, r4, 128
00097c  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
000980  9f0d8201  addli r27, r4, 192
000984  9f818100  addli r3, r3, 64
000988  42130602  vload_mask16.mz vr6{mr1}, 0(r12)
00098c  1f068200  addli r12, r4, 64
000990  42940d02  vload_mask16.mz vr8{mr1}, 0(r27)
000994  1f020202  addli r4, r4, 256
000998  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
00099c  96125002  vadd.f.mz.rn vr5{mr1}, vr0, vr5
0009a0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0009a4  16124302  vadd.f.mz.rn vr4{mr1}, vr6, vr4
0009a8  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
0009ac  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
0009b0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0009b4  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
0009b8  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
0009bc  bffea1ff  blt.s r3, r26, -68
0009c0  3f202d01  blt.s r26, r18, 8
0009c4  dbd5ffff  j -340
0009c8  0b129938  mod.s r4, r18, r9
0009cc  abf1ffff  lui r3, 1048575
0009d0  1f793000  addli r18, zero, 31
0009d4  1b96f1ff  ori r12, r3, 4095
0009d8  9f010600  addli r3, r12, 0
0009dc  3f304900  blt.s r18, r4, 12
0009e0  97314600  sll r3, r12, r4
0009e4  97a1c100  xor r3, r3, r12
0009e8  1f094000  addli r18, zero, 32
0009ec  3f204900  blt.s r18, r4, 8
0009f0  dbc3ffff  j -484
0009f4  1f02c2ff  addli r4, r4, -32
0009f8  17324600  sll r4, r12, r4
0009fc  1722c200  xor r4, r4, r12
000a00  5bc2ffff  j -496
000a04  e3018fca  loadli.w r3,  -6848(r30)
000a08  1f040000  addli r8, zero, 0
000a0c  1f010000  addli r2, zero, 0
000a10  e3407fca  loadli.w r1,  -6852(r30)
000a14  9f04afca  addli r9, r30, -6832
000a18  3307e028  .word 0x28e00733
000a1c  1f0b3fcb  addli r22, r30, -6760
000a20  ebd90400  load.d r[20:21], 0(r9)
000a24  0be48020  mul.f.rn r8, r1, r8
000a28  0b611120  mul.f.rn r2, r2, r1
000a2c  e300efca  loadli.w r1,  -6800(r30)
000a30  13a7e900  seteq.d r14, r[20:21], r[15:16]
000a34  eb590b00  load.d r[20:21], 0(r22)
000a38  2b06803f  lui r12, 260096
000a3c  0b3a3519  sub.sl r[21:22], r[11:12], r[20:21]
000a40  0b628420  mul.f.rn r4, r8, r8
000a44  9b372a00  slli r15, r20, 2
000a48  0b2aa810  add.ul r[21:22], r[17:18], r[11:12]
000a4c  0b614118  sub.f.rn r2, r2, r4
000a50  0b621110  add.f.rn r4, r2, r1
000a54  9f004fcf  addli r1, r30, -6240
000a58  0f024208  .word 0x0842020f
000a5c  0f024618  div.f.rn r4, r12, r4
000a60  0b96f010  add.s r12, r1, r15
000a64  9f008fce  addli r1, r30, -6336
000a68  67008600  storeli.w r8, 0(r12)
000a6c  0b964311  add.s r12, r7, r20
000a70  8b97f010  add.s r15, r1, r15
000a74  1b362600  slli r12, r12, 2
000a78  67804700  storeli.w r4, 0(r15)
000a7c  3b500700  bneq r14, zero, 20
000a80  ab000000  lui r1, 0
000a84  9f800000  addli r1, r1, 0
000a88  0b171610  add.s r14, r12, r1
000a8c  73608700  stores.w r8, 0(r14)
000a90  9f00bfca  addli r1, r30, -6824
000a94  3307e028  .word 0x28e00733
000a98  1f0a9fca  addli r20, r30, -6840
000a9c  9f190000  addli r19, zero, 1
000aa0  6bd40000  load.d r[9:10], 0(r1)
000aa4  6b5c0a00  load.d r[25:26], 0(r20)
000aa8  1324e400  seteq.d r8, r[9:10], r[15:16]
000aac  9f045fce  addli r9, r30, -6360
000ab0  6bd70400  load.d r[15:16], 0(r9)
000ab4  3b6304fe  bneq r8, zero, -808
000ab8  3b030efe  bneq r28, zero, -832
000abc  1f020100  addli r4, r2, 0
000ac0  5b97ffff  j -840
000ac4  67433fce  storeli.w r3, -6348(r30)
000ac8  e7032fcf  storeli.w r18, -6344(r30)
000acc  00a00300  mfence { lm, sm, gm }
000ad0  2bf10000  lui r2, 15
000ad4  80300002  core_id r1
000ad8  1f4a6fce  addli r20, r30, -6348
000adc  1b11f1ff  ori r2, r2, 4095
000ae0  80210104  csr_set csr3, r2
000ae4  00d00100  sync_group
000ae8  3ba20000  bneq r1, zero, 136
000aec  37920200  beq r5, zero, 132
000af0  9f04afca  addli r9, r30, -6832
000af4  33012028  .word 0x28200133
000af8  ebd30400  load.d r[8:9], 0(r9)
000afc  93a32300  seteq.d r7, r[8:9], r[3:4]
000b00  1f04efc9  addli r8, r30, -6928
000b04  9f210000  addli r3, zero, 2
000b08  eb500400  load.d r[2:3], 0(r8)
000b0c  97b13002  sll.d r[4:5], r[2:3], r3
000b10  1bb12200  slli r2, r5, 2
000b14  bb900300  bneq r7, zero, 36
000b18  1f047fc9  addli r8, r30, -6984
000b1c  ab0200f0  lui r5, 983040
000b20  6b530400  load.d r[7:8], 0(r8)
000b24  ab000000  lui r1, 0
000b28  97125100  or r5, r2, r5
000b2c  9f800000  addli r1, r1, 0
000b30  0b233310  add.ul r[7:8], r[7:8], r[4:5]
000b34  ff121300  s_sm2gm r5, r1, 0(r[7:8])
000b38  9f00bfca  addli r1, r30, -6824
000b3c  b3025028  .word 0x285002b3
000b40  ebd30000  load.d r[8:9], 0(r1)
000b44  93a25300  seteq.d r5, r[8:9], r[6:7]
000b48  bba00200  bneq r5, zero, 40
000b4c  9f036fc9  addli r7, r30, -6992
000b50  ebd20300  load.d r[6:7], 0(r7)
000b54  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
000b58  ab0200f0  lui r5, 983040
000b5c  ab000000  lui r1, 0
000b60  9f800000  addli r1, r1, 0
000b64  17115100  or r2, r2, r5
000b68  1f830020  addli r6, r1, 4096
000b6c  7f916100  s_sm2gm r2, r6, 0(r[4:5])
000b70  b380192e  .word 0x2e1980b3
000b74  9f015fcb  addli r3, r30, -6744
000b78  73b01100  store.d r[2:3], 0(r3)
000b7c  13311704  setlt.sl r2, r[15:16], r[2:3]
000b80  3b0c01fc  bneq r2, zero, -1280
000b84  e3007fcb  loadli.w r1,  -6728(r30)
000b88  1f043fcb  addli r8, r30, -6760
000b8c  1f2e0000  addli r28, zero, 2
000b90  1f010000  addli r2, zero, 0
000b94  9f044fca  addli r9, r30, -6880
000b98  1f080fd0  addli r16, r30, -6144
000b9c  eb510400  load.d r[4:5], 0(r8)
000ba0  9ff0f0ff  addli r1, r1, -1
000ba4  670a1fcc  storeli.w r1, -6496(r30)
000ba8  9f008fc9  addli r1, r30, -6976
000bac  8bb1e120  mul.sl r[4:5], r[4:5], r[15:16]
000bb0  ebd20000  load.d r[6:7], 0(r1)
000bb4  97b1c103  sll.d r[4:5], r[4:5], r28
000bb8  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
000bbc  33036028  .word 0x28600333
000bc0  9f020000  addli r5, zero, 0
000bc4  73b03400  store.d r[4:5], 0(r9)
000bc8  db030000  j 28
000bcc  9f000fcd  addli r1, r30, -6528
000bd0  6bd30000  load.d r[7:8], 0(r1)
000bd4  9f005fce  addli r1, r30, -6360
000bd8  6bd70000  load.d r[15:16], 0(r1)
000bdc  9331e304  setlt.sl r3, r[7:8], r[15:16]
000be0  b78a01fc  beq r3, zero, -1376
000be4  9f00ffca  addli r1, r30, -6792
000be8  0b356718  sub.sl r[11:12], r[15:16], r[7:8]
000bec  ebd10000  load.d r[4:5], 0(r1)
000bf0  8bbba140  min.sl r[24:25], r[4:5], r[11:12]
000bf4  3fa43b01  blt.s r23, r19, 264
000bf8  e300dfca  loadli.w r1,  -6808(r30)
000bfc  37840000  beq r1, zero, 256
000c00  e3003fca  loadli.w r1,  -6888(r30)
000c04  00a00300  mfence { lm, sm, gm }
000c08  8b911b38  mod.s r3, r23, r1
000c0c  0b921b30  div.s r4, r23, r1
000c10  80300002  core_id r1
000c14  13943004  setlt.s r8, r1, r3
000c18  8b913040  min.s r3, r1, r3
000c1c  8b111250  fmac.s r3, r4, r1
000c20  0b128210  add.s r4, r4, r8
000c24  2bf40000  lui r8, 15
000c28  0b123210  add.s r4, r4, r3
000c2c  8b917141  min.s r3, r3, r23
000c30  1b14f4ff  ori r8, r8, 4095
000c34  0b127241  min.s r4, r4, r23
000c38  80210404  csr_set csr3, r8
000c3c  00d00100  sync_group
000c40  0b123218  sub.s r4, r4, r3
000c44  3f723201  blt.s r4, r19, 156
000c48  9f000fca  addli r1, r30, -6912
000c4c  3307e028  .word 0x28e00733
000c50  1b322200  slli r4, r4, 2
000c54  ebdc0000  load.d r[26:27], 0(r1)
000c58  13a4ec00  seteq.d r8, r[26:27], r[15:16]
000c5c  3397e12e  .word 0x2ee19733
000c60  9bb12100  slli r3, r3, 2
000c64  bb500400  bneq r8, zero, 52
000c68  9f200000  addli r1, zero, 2
000c6c  97381302  sll.d r[18:19], r[7:8], r1
000c70  173a1702  sll.d r[21:22], r[15:16], r1
000c74  ab000000  lui r1, 0
000c78  2b0600f0  lui r12, 983040
000c7c  9f800000  addli r1, r1, 0
000c80  8ba81c11  add.ul r[18:19], r[26:27], r[18:19]
000c84  1716c200  or r12, r4, r12
000c88  0b943010  add.s r8, r1, r3
000c8c  8ba84811  add.ul r[18:19], r[18:19], r[21:22]
000c90  1f040440  addli r8, r8, 8192
000c94  7f868800  l_gm2sm r12, r8, 0(r[18:19])
000c98  9f002fca  addli r1, r30, -6896
000c9c  b3081029  .word 0x291008b3
000ca0  1f4a6fce  addli r20, r30, -6348
000ca4  6bd40000  load.d r[9:10], 0(r1)
000ca8  13241401  seteq.d r8, r[9:10], r[18:19]
000cac  bb500400  bneq r8, zero, 52
000cb0  1f062fca  addli r12, r30, -6896
000cb4  9f200000  addli r1, zero, 2
000cb8  6b540600  load.d r[9:10], 0(r12)
000cbc  97381302  sll.d r[18:19], r[7:8], r1
000cc0  17371702  sll.d r[15:16], r[15:16], r1
000cc4  8b281411  add.ul r[18:19], r[9:10], r[18:19]
000cc8  2b0400f0  lui r8, 983040
000ccc  e340ffc9  loadli.w r1,  -6916(r30)
000cd0  0ba7e810  add.ul r[15:16], r[18:19], r[15:16]
000cd4  17128200  or r4, r4, r8
000cd8  8b913010  add.s r3, r1, r3
000cdc  7f023700  l_gm2sm r4, r3, 0(r[15:16])
000ce0  00a00300  mfence { lm, sm, gm }
000ce4  abf10000  lui r3, 15
000ce8  9b91f1ff  ori r3, r3, 4095
000cec  80a10104  csr_set csr3, r3
000cf0  00d00100  sync_group
000cf4  e3401fca  loadli.w r1,  -6900(r30)
000cf8  e7061fca  storeli.w r1, -6808(r30)
000cfc  e3007fcb  loadli.w r1,  -6728(r30)
000d00  3f201000  blt.s zero, r1, 8
000d04  5bbb0000  j 1496
000d08  1f06ffca  addli r12, r30, -6792
000d0c  9f000004  addli r1, zero, 512
000d10  9f0a0fcd  addli r21, r30, -6528
000d14  1f0b6fcb  addli r22, r30, -6736
000d18  674b0fcc  storeli.w zero, -6476(r30)
000d1c  eb510600  load.d r[4:5], 0(r12)
000d20  3387e02a  .word 0x2ae08733
000d24  8bb8eb40  min.sl r[18:19], r[24:25], r[15:16]
000d28  0b243310  add.ul r[9:10], r[7:8], r[4:5]
000d2c  8b313518  sub.sl r[4:5], r[11:12], r[4:5]
000d30  73301b01  store.d r[18:19], 0(r22)
000d34  9f08ffcc  addli r17, r30, -6536
000d38  73b08a00  store.d r[9:10], 0(r21)
000d3c  0b34e540  min.sl r[9:10], r[11:12], r[15:16]
000d40  9f054fca  addli r11, r30, -6880
000d44  1f058fcd  addli r10, r30, -6464
000d48  9b302400  slli r1, r8, 2
000d4c  73b08800  store.d r[9:10], 0(r17)
000d50  0bb4e140  min.sl r[9:10], r[4:5], r[15:16]
000d54  ebd10500  load.d r[4:5], 0(r11)
000d58  7330e500  store.d r[15:16], 0(r10)
000d5c  1f07cfcc  addli r14, r30, -6560
000d60  9f07dfcc  addli r15, r30, -6552
000d64  67071fcc  storeli.w r1, -6544(r30)
000d68  9f200000  addli r1, zero, 2
000d6c  73b08700  store.d r[9:10], 0(r15)
000d70  17331302  sll.d r[7:8], r[7:8], r1
000d74  9b302400  slli r1, r8, 2
000d78  1f042fcb  addli r8, r30, -6768
000d7c  9f04cfca  addli r9, r30, -6816
000d80  8ba16110  add.ul r[4:5], r[4:5], r[7:8]
000d84  e7051fcc  storeli.w r1, -6568(r30)
000d88  9f000fcb  addli r1, r30, -6784
000d8c  73303700  store.d r[4:5], 0(r14)
000d90  ebd10000  load.d r[4:5], 0(r1)
000d94  8ba16110  add.ul r[4:5], r[4:5], r[7:8]
000d98  73303400  store.d r[4:5], 0(r8)
000d9c  ebd10400  load.d r[4:5], 0(r9)
000da0  8ba16110  add.ul r[4:5], r[4:5], r[7:8]
000da4  1f031fcb  addli r6, r30, -6776
000da8  73303300  store.d r[4:5], 0(r6)
000dac  5b040000  j 32
000db0  e3416fcd  loadli.w r3,  -6476(r30)
000db4  e3007fcb  loadli.w r1,  -6728(r30)
000db8  1f0e0000  addli r28, zero, 0
000dbc  9f910100  addli r3, r3, 1
000dc0  674b3fcc  storeli.w r3, -6476(r30)
000dc4  3fa01100  blt.s r3, r1, 8
000dc8  dbc0ffff  j -508
000dcc  9f005fcb  addli r1, r30, -6744
000dd0  1f046fcb  addli r8, r30, -6736
000dd4  ebd10000  load.d r[4:5], 0(r1)
000dd8  6b530400  load.d r[7:8], 0(r8)
000ddc  93b13b04  setlt.sl r3, r[24:25], r[4:5]
000de0  1b322100  slli r4, r2, 2
000de4  0b124a10  add.s r4, r20, r4
000de8  67006200  storeli.w r6, 0(r4)
000dec  3b9f01fe  bneq r3, zero, -60
000df0  63456fcd  loadli.w r10,  -6476(r30)
000df4  9f0a3fcb  addli r21, r30, -6760
000df8  1f065fce  addli r12, r30, -6360
000dfc  9f200000  addli r1, zero, 2
000e00  1f0b1fcb  addli r22, r30, -6776
000e04  6bd30a00  load.d r[7:8], 0(r21)
000e08  6b540600  load.d r[9:10], 0(r12)
000e0c  b301352c  .word 0x2c3501b3
000e10  8b213310  add.ul r[4:5], r[7:8], r[4:5]
000e14  17371402  sll.d r[15:16], r[9:10], r1
000e18  9b332500  slli r7, r10, 2
000e1c  1f034fcf  addli r6, r30, -6240
000e20  8bb18120  mul.sl r[4:5], r[4:5], r[9:10]
000e24  0b137310  add.s r6, r6, r7
000e28  97b11102  sll.d r[4:5], r[4:5], r1
000e2c  9f008fce  addli r1, r30, -6336
000e30  8b937010  add.s r7, r1, r7
000e34  9f002fcb  addli r1, r30, -6768
000e38  6bd40000  load.d r[9:10], 0(r1)
000e3c  8b283410  add.ul r[18:19], r[9:10], r[4:5]
000e40  6b540b00  load.d r[9:10], 0(r22)
000e44  0b253410  add.ul r[11:12], r[9:10], r[4:5]
000e48  1f043fcd  addli r8, r30, -6504
000e4c  8ba1e810  add.ul r[4:5], r[18:19], r[15:16]
000e50  9f041fcd  addli r9, r30, -6520
000e54  73301401  store.d r[18:19], 0(r8)
000e58  b3081029  .word 0x291008b3
000e5c  73b03400  store.d r[4:5], 0(r9)
000e60  db0a0000  j 84
000e64  b310112c  .word 0x2c1110b3
000e68  1f220000  addli r4, zero, 2
000e6c  00a00000  mfence { lm }
000e70  ab0100f0  lui r3, 983040
000e74  13b47805  setlt.sl r8, r[18:19], r[24:25]
000e78  9f190000  addli r19, zero, 1
000e7c  1f4a6fce  addli r20, r30, -6348
000e80  8bb01818  sub.sl r[2:3], r[18:19], r[2:3]
000e84  97113700  or r3, r14, r3
000e88  97b04002  sll.d r[2:3], r[2:3], r4
000e8c  1f920200  addli r4, r5, 1
000e90  8b12d238  mod.s r5, r4, r13
000e94  1f120b00  addli r4, r22, 1
000e98  0b271510  add.ul r[15:16], r[11:12], r[2:3]
000e9c  0b01d238  mod.u r2, r4, r13
000ea0  ff310701  s_lm2gm r3, r16, 0(r[15:16])
000ea4  9f010fd0  addli r3, r30, -6144
000ea8  9bb0b200  slli r1, r5, 11
000eac  0b981110  add.s r16, r3, r1
000eb0  370c04fe  beq r8, zero, -256
000eb4  9b312100  slli r3, r2, 2
000eb8  9f008fcd  addli r1, r30, -6464
000ebc  1f110100  addli r2, r2, 1
000ec0  9f0a5fce  addli r21, r30, -6360
000ec4  8b113a10  add.s r3, r20, r3
000ec8  6bd40000  load.d r[9:10], 0(r1)
000ecc  0b11d138  mod.s r2, r2, r13
000ed0  ebe10100  loadext.w r[4:5], 0(r3)
000ed4  8ba83810  add.ul r[18:19], r[18:19], r[4:5]
000ed8  1b362100  slli r12, r2, 2
000edc  8bb11b19  sub.sl r[4:5], r[24:25], r[18:19]
000ee0  0b16ca10  add.s r12, r20, r12
000ee4  8bb18140  min.sl r[4:5], r[4:5], r[9:10]
000ee8  6bd40a00  load.d r[9:10], 0(r21)
000eec  a3b10102  slli.d r[4:5], r[4:5], 32
000ef0  0b371419  sub.sl r[15:16], r[9:10], r[18:19]
000ef4  a3d10102  srai.d r[4:5], r[4:5], 32
000ef8  8b313740  min.sl r[4:5], r[15:16], r[4:5]
000efc  67003600  storeli.w r3, 0(r12)
000f00  3fc03101  blt.s r3, r19, 16
000f04  b7210e00  beq r28, zero, 104
000f08  1f7efeff  addli r28, r28, -1
000f0c  5b1c0000  j 224
000f10  e3004fcd  loadli.w r1,  -6496(r30)
000f14  63446fcd  loadli.w r8,  -6476(r30)
000f18  3b521400  bneq r8, r1, 148
000f1c  9f005fce  addli r1, r30, -6360
000f20  9f0a0fcd  addli r21, r30, -6528
000f24  6bd40000  load.d r[9:10], 0(r1)
000f28  6bd70a00  load.d r[15:16], 0(r21)
000f2c  1337e406  setle.sl r14, r[9:10], r[15:16]
000f30  bb720700  bneq r14, zero, 188
000f34  1f970200  addli r14, r5, 1
000f38  9f07dfcc  addli r15, r30, -6552
000f3c  9f000fd0  addli r1, r30, -6144
000f40  b391312e  .word 0x2e3191b3
000f44  0b17d738  mod.s r14, r14, r13
000f48  6bd40700  load.d r[9:10], 0(r15)
000f4c  67008600  storeli.w r8, 0(r12)
000f50  1b36b700  slli r12, r14, 11
000f54  2b0700f0  lui r14, 983040
000f58  0b96c010  add.s r12, r1, r12
000f5c  e300bfcc  loadli.w r1,  -6568(r30)
000f60  1797e000  or r14, r1, r14
000f64  9f00cfcc  addli r1, r30, -6560
000f68  5b0f0000  j 120
000f6c  1f960200  addli r12, r5, 1
000f70  9f0a3fcd  addli r21, r30, -6504
000f74  9f200000  addli r1, zero, 2
000f78  9bb12100  slli r3, r3, 2
000f7c  2b0200f0  lui r4, 983040
000f80  1f0e0000  addli r28, zero, 0
000f84  0b16d638  mod.s r12, r12, r13
000f88  6bd40a00  load.d r[9:10], 0(r21)
000f8c  17b71802  sll.d r[15:16], r[18:19], r1
000f90  9f000fd0  addli r1, r30, -6144
000f94  97914100  or r3, r3, r4
000f98  0b27e410  add.ul r[15:16], r[9:10], r[15:16]
000f9c  1b36b600  slli r12, r12, 11
000fa0  0b96c010  add.s r12, r1, r12
000fa4  ff21c700  l_gm2lm r3, r12, 0(r[15:16])
000fa8  db080000  j 68
000fac  1f970200  addli r14, r5, 1
000fb0  9f07ffcc  addli r15, r30, -6536
000fb4  9f000fd0  addli r1, r30, -6144
000fb8  b391312e  .word 0x2e3191b3
000fbc  0b17d738  mod.s r14, r14, r13
000fc0  6bd40700  load.d r[9:10], 0(r15)
000fc4  67008600  storeli.w r8, 0(r12)
000fc8  1b36b700  slli r12, r14, 11
000fcc  2b0700f0  lui r14, 983040
000fd0  0b96c010  add.s r12, r1, r12
000fd4  e300efcc  loadli.w r1,  -6544(r30)
000fd8  1797e000  or r14, r1, r14
000fdc  9f001fcd  addli r1, r30, -6520
000fe0  6bd40000  load.d r[9:10], 0(r1)
000fe4  8ba83810  add.ul r[18:19], r[18:19], r[4:5]
000fe8  7f27c400  l_gm2lm r14, r12, 0(r[9:10])
000fec  1f210100  addli r2, r2, 2
000ff0  e3010300  loadli.w r3,  0(r6)
000ff4  e3870300  loadli.w r15,  0(r7)
000ff8  e3007fcd  loadli.w r1,  -6472(r30)
000ffc  1b01f10f  andi r2, r2, 255
001000  8bed0158  neg.f r27, r3
001004  0b0bd138  mod.u r22, r2, r13
001008  1b312b00  slli r2, r22, 2
00100c  0b112a10  add.s r2, r20, r2
001010  63010100  loadli.w r2,  0(r2)
001014  1b372100  slli r14, r2, 2
001018  b7b30000  beq r1, zero, 236
00101c  3f2931ff  blt.s r2, r19, -440
001020  1bb22800  slli r4, r17, 2
001024  e3404fcd  loadli.w r1,  -6492(r30)
001028  9f010000  addli r3, zero, 0
00102c  9f0c0000  addli r25, zero, 0
001030  0b16e218  sub.s r12, r4, r14
001034  0b92c010  add.s r4, r1, r12
001038  ab000000  lui r1, 0
00103c  9f800000  addli r1, r1, 0
001040  0b161610  add.s r12, r12, r1
001044  8b103610  add.s r1, r12, r3
001048  0b143210  add.s r8, r4, r3
00104c  0b1d3810  add.s r26, r16, r3
001050  9f8c8c00  addli r25, r25, 64
001054  9f810102  addli r3, r3, 256
001058  9f890040  addli r19, r1, 8192
00105c  1f0a8440  addli r20, r8, 8256
001060  9f8a0041  addli r21, r1, 8320
001064  9f048d00  addli r9, r26, 64
001068  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
00106c  4a910902  vloads_mask16.mz vr2{mr1}, 0(r19)
001070  9f898040  addli r19, r1, 8256
001074  4a130a02  vloads_mask16.mz vr6{mr1}, 0(r20)
001078  1f0a8d01  addli r20, r26, 192
00107c  9f808041  addli r1, r1, 8384
001080  ca940a02  vloads_mask16.mz vr9{mr1}, 0(r21)
001084  42920402  vload_mask16.mz vr4{mr1}, 0(r9)
001088  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
00108c  9f090440  addli r19, r8, 8192
001090  42140a02  vload_mask16.mz vr8{mr1}, 0(r20)
001094  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001098  9f000441  addli r1, r8, 8320
00109c  1f048441  addli r8, r8, 8384
0010a0  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
0010a4  9f090d01  addli r19, r26, 128
0010a8  ca950002  vloads_mask16.mz vr11{mr1}, 0(r1)
0010ac  ca100402  vloads_mask16.mz vr1{mr1}, 0(r8)
0010b0  92913d02  vadd.f.mz.rn vr3{mr1}, r27, vr3
0010b4  42900902  vload_mask16.mz vr0{mr1}, 0(r19)
0010b8  12924d02  vadd.f.mz.rn vr4{mr1}, r27, vr4
0010bc  12948d02  vadd.f.mz.rn vr8{mr1}, r27, vr8
0010c0  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
0010c4  0a924702  vmul.f.mz.rn vr4{mr1}, r15, vr4
0010c8  12900d02  vadd.f.mz.rn vr0{mr1}, r27, vr0
0010cc  0a948702  vmul.f.mz.rn vr8{mr1}, r15, vr8
0010d0  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
0010d4  0a900702  vmul.f.mz.rn vr0{mr1}, r15, vr0
0010d8  0e14a402  vmul.f.mz.rn vr8{mr1}, vr8, vr10
0010dc  a6932102  vmac.f.mz.rn vr7{mr1}, vr3, vr2
0010e0  46906402  vstore_mask16.mz vr6{mr1}, 0(r9)
0010e4  0e109002  vmul.f.mz.rn vr0{mr1}, vr0, vr9
0010e8  96101402  vadd.f.mz.rn vr1{mr1}, vr8, vr1
0010ec  46107d02  vstore_mask16.mz vr7{mr1}, 0(r26)
0010f0  1610b002  vadd.f.mz.rn vr0{mr1}, vr0, vr11
0010f4  46101a02  vstore_mask16.mz vr1{mr1}, 0(r20)
0010f8  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0010fc  3fad2cfe  blt.s r25, r2, -184
001100  dbacffff  j -668
001104  e3005fcd  loadli.w r1,  -6488(r30)
001108  b7d10000  beq r1, zero, 116
00110c  e3402fcd  loadli.w r1,  -6508(r30)
001110  b7840000  beq r1, zero, 288
001114  3f4531ff  blt.s r2, r19, -688
001118  9f010000  addli r3, zero, 0
00111c  1f020800  addli r4, r16, 0
001120  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
001124  9f008200  addli r1, r4, 64
001128  1f040201  addli r8, r4, 128
00112c  9f048201  addli r9, r4, 192
001130  9f818100  addli r3, r3, 64
001134  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001138  42110402  vload_mask16.mz vr2{mr1}, 0(r8)
00113c  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
001140  12900d02  vadd.f.mz.rn vr0{mr1}, r27, vr0
001144  92901d02  vadd.f.mz.rn vr1{mr1}, r27, vr1
001148  12912d02  vadd.f.mz.rn vr2{mr1}, r27, vr2
00114c  92913d02  vadd.f.mz.rn vr3{mr1}, r27, vr3
001150  0a900702  vmul.f.mz.rn vr0{mr1}, r15, vr0
001154  8a901702  vmul.f.mz.rn vr1{mr1}, r15, vr1
001158  0a912702  vmul.f.mz.rn vr2{mr1}, r15, vr2
00115c  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
001160  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
001164  1f020202  addli r4, r4, 256
001168  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00116c  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
001170  46903402  vstore_mask16.mz vr3{mr1}, 0(r9)
001174  bfbe21fe  blt.s r3, r2, -84
001178  db9dffff  j -788
00117c  bf2331ff  blt.s r2, r19, -792
001180  9bb02800  slli r1, r17, 2
001184  2b020000  lui r4, 0
001188  9f010000  addli r3, zero, 0
00118c  1f060000  addli r12, zero, 0
001190  8b90e018  sub.s r1, r1, r14
001194  1f020200  addli r4, r4, 0
001198  0b924010  add.s r4, r1, r4
00119c  0b143210  add.s r8, r4, r3
0011a0  8b103810  add.s r1, r16, r3
0011a4  1f068600  addli r12, r12, 64
0011a8  9f810102  addli r3, r3, 256
0011ac  9f090440  addli r19, r8, 8192
0011b0  1f0a8440  addli r20, r8, 8256
0011b4  9f848000  addli r9, r1, 64
0011b8  9f0a0441  addli r21, r8, 8320
0011bc  1f048441  addli r8, r8, 8384
0011c0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0011c4  4a910902  vloads_mask16.mz vr2{mr1}, 0(r19)
0011c8  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
0011cc  9f890001  addli r19, r1, 128
0011d0  1f8a8001  addli r20, r1, 192
0011d4  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
0011d8  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
0011dc  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
0011e0  42920902  vload_mask16.mz vr4{mr1}, 0(r19)
0011e4  c2120a02  vload_mask16.mz vr5{mr1}, 0(r20)
0011e8  12900d02  vadd.f.mz.rn vr0{mr1}, r27, vr0
0011ec  92901d02  vadd.f.mz.rn vr1{mr1}, r27, vr1
0011f0  12924d02  vadd.f.mz.rn vr4{mr1}, r27, vr4
0011f4  92925d02  vadd.f.mz.rn vr5{mr1}, r27, vr5
0011f8  0a900702  vmul.f.mz.rn vr0{mr1}, r15, vr0
0011fc  8a901702  vmul.f.mz.rn vr1{mr1}, r15, vr1
001200  0a924702  vmul.f.mz.rn vr4{mr1}, r15, vr4
001204  8a925702  vmul.f.mz.rn vr5{mr1}, r15, vr5
001208  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
00120c  8e901102  vmul.f.mz.rn vr1{mr1}, vr3, vr1
001210  0e114302  vmul.f.mz.rn vr2{mr1}, vr6, vr4
001214  8e915302  vmul.f.mz.rn vr3{mr1}, vr7, vr5
001218  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00121c  46901402  vstore_mask16.mz vr1{mr1}, 0(r9)
001220  46902902  vstore_mask16.mz vr2{mr1}, 0(r19)
001224  46103a02  vstore_mask16.mz vr3{mr1}, 0(r20)
001228  bf5d26fe  blt.s r12, r2, -140
00122c  5b87ffff  j -968
001230  bf5031ff  blt.s r2, r19, -972
001234  1f040fcc  addli r8, r30, -6656
001238  9bb02800  slli r1, r17, 2
00123c  63424fcd  loadli.w r4,  -6492(r30)
001240  9f010000  addli r3, zero, 0
001244  1f060000  addli r12, zero, 0
001248  42100402  vload_mask16.mz vr0{mr1}, 0(r8)
00124c  8b90e018  sub.s r1, r1, r14
001250  0b121210  add.s r4, r4, r1
001254  6a910722  vor.f.mz vr2{mr1}, r15, vr0
001258  0b143210  add.s r8, r4, r3
00125c  8b103810  add.s r1, r16, r3
001260  1f068600  addli r12, r12, 64
001264  9f810102  addli r3, r3, 256
001268  9f098440  addli r19, r8, 8256
00126c  9f070440  addli r15, r8, 8192
001270  9f848000  addli r9, r1, 64
001274  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001278  4a920902  vloads_mask16.mz vr4{mr1}, 0(r19)
00127c  9f090441  addli r19, r8, 8320
001280  1f048441  addli r8, r8, 8384
001284  ca910702  vloads_mask16.mz vr3{mr1}, 0(r15)
001288  9f870001  addli r15, r1, 128
00128c  c2900402  vload_mask16.mz vr1{mr1}, 0(r9)
001290  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
001294  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
001298  1f848001  addli r8, r1, 192
00129c  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0012a0  42140402  vload_mask16.mz vr8{mr1}, 0(r8)
0012a4  12900d02  vadd.f.mz.rn vr0{mr1}, r27, vr0
0012a8  92901d02  vadd.f.mz.rn vr1{mr1}, r27, vr1
0012ac  92937d02  vadd.f.mz.rn vr7{mr1}, r27, vr7
0012b0  12948d02  vadd.f.mz.rn vr8{mr1}, r27, vr8
0012b4  a6110102  vmac.f.mz.rn vr3{mr1}, vr2, vr0
0012b8  26121102  vmac.f.mz.rn vr4{mr1}, vr2, vr1
0012bc  a6127102  vmac.f.mz.rn vr5{mr1}, vr2, vr7
0012c0  26138102  vmac.f.mz.rn vr6{mr1}, vr2, vr8
0012c4  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0012c8  46904402  vstore_mask16.mz vr4{mr1}, 0(r9)
0012cc  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0012d0  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
0012d4  3f1e26fe  blt.s r12, r2, -124
0012d8  db71ffff  j -1140
0012dc  9f00ffca  addli r1, r30, -6792
0012e0  ebd10000  load.d r[4:5], 0(r1)
0012e4  0b233310  add.ul r[7:8], r[7:8], r[4:5]
0012e8  db1dffff  j -1812
0012ec  1f05c5ff  addli r10, r10, -32
0012f0  17b5a400  sll r10, r9, r10
0012f4  97249500  xor r9, r10, r9
0012f8  1f050fca  addli r10, r30, -6912
0012fc  9f092fca  addli r19, r30, -6896
001300  0b9a8810  add.s r20, r17, r8
001304  1f042000  addli r8, zero, 16
001308  970acb00  and r21, r22, r12
00130c  1b861000  andi r12, r1, 1
001310  eb560500  load.d r[14:15], 0(r10)
001314  00350002  core_id r10
001318  97d08400  sra r1, r9, r8
00131c  e7044fcb  storeli.w r20, -6840(r30)
001320  0b19ac20  mul.s r18, r24, r10
001324  6bd50900  load.d r[11:12], 0(r19)
001328  13256500  seteq.d r10, r[11:12], r[7:8]
00132c  93a56600  seteq.d r11, r[14:15], r[7:8]
001330  13a36602  setneq.d r6, r[14:15], r[7:8]
001334  9f830860  addli r7, r17, 12288
001338  e70b7fca  storeli.w r7, -6728(r30)
00133c  97538200  sra r7, r4, r8
001340  3b300600  bneq r12, zero, 12
001344  63047fcb  loadli.w r8,  -6728(r30)
001348  e7048fca  storeli.w r8, -6840(r30)
00134c  3316c92c  .word 0x2cc91633
001350  1f07dfca  addli r14, r30, -6808
001354  7e0002e0  vmmov mr0, r4
001358  67490fcc  storeli.w zero, -6508(r30)
00135c  17023300  and r4, r6, r3
001360  9791b100  or r3, r3, r11
001364  63043fca  loadli.w r8,  -6888(r30)
001368  8f3dbb01  .word 0x01bb3d8f
00136c  e305efca  loadli.w r11,  -6800(r30)
001370  e7072fcb  storeli.w r18, -6792(r30)
001374  67088fcd  storeli.w r24, -6528(r30)
001378  1f0d0fd0  addli r26, r30, -6144
00137c  7e0000a0  vmmov zero, mr0
001380  7e8003e0  vmmov mr0, r7
001384  9f035fcd  addli r7, r30, -6488
001388  7330c700  store.d r[13:14], 0(r14)
00138c  9f466fcd  addli r13, r30, -6476
001390  670a3fcc  storeli.w r3, -6496(r30)
001394  9711a300  or r3, r6, r10
001398  e70b4fcc  storeli.w r4, -6472(r30)
00139c  1f032fcb  addli r6, r30, -6768
0013a0  1f058fcd  addli r10, r30, -6464
0013a4  0b148c20  mul.s r8, r24, r8
0013a8  1b3c2b00  slli r24, r22, 2
0013ac  67800600  storeli.w zero, 0(r13)
0013b0  17200000  xor zero, zero, zero
0013b4  e7093fcc  storeli.w r3, -6504(r30)
0013b8  7e0000a0  vmmov zero, mr0
0013bc  7e8004e0  vmmov mr0, r9
0013c0  9f444fcd  addli r9, r30, -6492
0013c4  67078fcc  storeli.w r8, -6544(r30)
0013c8  67800300  storeli.w zero, 0(r7)
0013cc  17200000  xor zero, zero, zero
0013d0  7e0000a0  vmmov zero, mr0
0013d4  7e8000e0  vmmov mr0, r1
0013d8  9f001fcb  addli r1, r30, -6776
0013dc  67800400  storeli.w zero, 0(r9)
0013e0  17200000  xor zero, zero, zero
0013e4  ebd60000  load.d r[14:15], 0(r1)
0013e8  9f010018  addli r3, zero, 3072
0013ec  1f140000  addli r8, zero, 1
0013f0  1f090001  addli r18, zero, 128
0013f4  9f0c8000  addli r25, zero, 64
0013f8  1f064000  addli r12, zero, 32
0013fc  b381312e  .word 0x2e3181b3
001400  7e0104e0  vmmov mr2, r8
001404  73303300  store.d r[4:5], 0(r6)
001408  1f020fcc  addli r4, r30, -6656
00140c  9bb12a00  slli r3, r21, 2
001410  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
001414  670a3fca  storeli.w r3, -6752(r30)
001418  6e300062  vxor.s.mz vr0{mr1}, vr0, vr0
00141c  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
001420  db050000  j 44
001424  1f038fcb  addli r6, r30, -6720
001428  9f033fcb  addli r7, r30, -6760
00142c  9f043fcb  addli r9, r30, -6760
001430  eb570300  load.d r[16:17], 0(r6)
001434  ebd10300  load.d r[4:5], 0(r7)
001438  a7870718  addli.d r[16:17], r[16:17], 3072
00143c  a78101e8  addli.d r[4:5], r[4:5], 29696
001440  93b0d704  setlt.sl r1, r[16:17], r[14:15]
001444  73b03400  store.d r[4:5], 0(r9)
001448  b7bc0002  beq r1, zero, 1836
00144c  1f052fcb  addli r10, r30, -6768
001450  8bb1f618  sub.sl r[4:5], r[14:15], r[16:17]
001454  6b530500  load.d r[7:8], 0(r10)
001458  00a00300  mfence { lm, sm, gm }
00145c  8bb66140  min.sl r[14:15], r[4:5], r[7:8]
001460  e303ffca  loadli.w r7,  -6792(r30)
001464  abf10000  lui r3, 15
001468  63020fcd  loadli.w r4,  -6528(r30)
00146c  9b91f1ff  ori r3, r3, 4095
001470  8b907618  sub.s r1, r13, r7
001474  80a10104  csr_set csr3, r3
001478  9f010006  addli r3, zero, 768
00147c  00d00100  sync_group
001480  8b101240  min.s r1, r4, r1
001484  8b906021  mul.s r1, r1, r22
001488  8b943040  min.s r9, r1, r3
00148c  3fa18000  blt.s r1, r8, 72
001490  1f0edfca  addli r28, r30, -6808
001494  1f230000  addli r6, zero, 2
001498  1f000fcb  addli zero, r30, -6784
00149c  9bb02400  slli r1, r9, 2
0014a0  9f890400  addli r19, r9, 0
0014a4  eb510e00  load.d r[4:5], 0(r28)
0014a8  8ba13710  add.ul r[4:5], r[16:17], r[4:5]
0014ac  8bb16121  mul.sl r[4:5], r[4:5], r[23:24]
0014b0  97b16102  sll.d r[4:5], r[4:5], r6
0014b4  2b0300f0  lui r6, 983040
0014b8  eb540000  load.d r[10:11], 0(zero)
0014bc  17200000  xor zero, zero, zero
0014c0  97906000  or r1, r1, r6
0014c4  8ba13410  add.ul r[4:5], r[10:11], r[4:5]
0014c8  9f840900  addli r9, r19, 0
0014cc  ffa0a101  l_gm2lm r1, r26, 0(r[4:5])
0014d0  00a00000  mfence { lm }
0014d4  9f001fcd  addli r1, r30, -6520
0014d8  9f018fcb  addli r3, r30, -6720
0014dc  73b0d000  store.d r[14:15], 0(r1)
0014e0  73b0f100  store.d r[16:17], 0(r3)
0014e4  cba77602  ble.s r13, r7, 1512
0014e8  9f003fcb  addli r1, r30, -6760
0014ec  1f032fcb  addli r6, r30, -6768
0014f0  e7079fcc  storeli.w r9, -6536(r30)
0014f4  ebd10000  load.d r[4:5], 0(r1)
0014f8  eb540300  load.d r[10:11], 0(r6)
0014fc  8bb19140  min.sl r[4:5], r[4:5], r[10:11]
001500  0b927118  sub.s r4, r3, r7
001504  5b090000  j 72
001508  e3402fcd  loadli.w r1,  -6508(r30)
00150c  1f0d0fd0  addli r26, r30, -6144
001510  9f010018  addli r3, zero, 3072
001514  6302dfcc  loadli.w r4,  -6552(r30)
001518  e309cfcc  loadli.w r19,  -6560(r30)
00151c  9ba01000  xori r1, r1, 1
001520  e7073fcd  storeli.w r19, -6536(r30)
001524  0b9d3050  fmac.s r26, r1, r3
001528  67491fcc  storeli.w r1, -6508(r30)
00152c  e300efcc  loadli.w r1,  -6544(r30)
001530  9f011fcd  addli r3, r30, -6520
001534  ebd60100  load.d r[14:15], 0(r3)
001538  0b121218  sub.s r4, r4, r1
00153c  e300bfcc  loadli.w r1,  -6568(r30)
001540  9f830000  addli r7, r1, 0
001544  3fa0d000  blt.s r1, r13, 8
001548  5bb10000  j 1416
00154c  e3015fcb  loadli.w r3,  -6744(r30)
001550  e7064fcc  storeli.w r4, -6552(r30)
001554  8b907618  sub.s r1, r13, r7
001558  63037fcb  loadli.w r6,  -6728(r30)
00155c  8b914140  min.s r3, r3, r4
001560  63020fcd  loadli.w r4,  -6528(r30)
001564  8b191240  min.s r19, r4, r1
001568  9f006fcb  addli r1, r30, -6736
00156c  ebd40000  load.d r[10:11], 0(r1)
001570  8b979140  min.s r15, r3, r9
001574  63054fcb  loadli.w r10,  -6752(r30)
001578  3f978900  blt.s r19, r8, 452
00157c  9f040000  addli r9, zero, 0
001580  9f060d00  addli r13, r26, 0
001584  db160000  j 180
001588  16924202  vadd.f.mz.rn vr4{mr1}, vr5, vr4
00158c  9f000002  addli r1, zero, 256
001590  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001594  ab0b803f  lui r23, 260096
001598  0b987410  add.s r16, r9, r7
00159c  9f940400  addli r9, r9, 1
0015a0  8b968611  add.s r13, r13, r24
0015a4  1b382800  slli r16, r16, 2
0015a8  eaf140c0  vsrl.p vr3, r1, vr4
0015ac  eaf220c0  vsrl.p vr5, r1, vr2
0015b0  8b100311  add.s r1, r6, r16
0015b4  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
0015b8  16912202  vadd.f.mz.rn vr2{mr1}, vr5, vr2
0015bc  6a7239c0  vsrl.p vr4, r18, vr3
0015c0  ea7229c0  vsrl.p vr5, r18, vr2
0015c4  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0015c8  16912202  vadd.f.mz.rn vr2{mr1}, vr5, vr2
0015cc  6af23cc0  vsrl.p vr4, r25, vr3
0015d0  eaf22cc0  vsrl.p vr5, r25, vr2
0015d4  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0015d8  16912202  vadd.f.mz.rn vr2{mr1}, vr5, vr2
0015dc  6a7236c0  vsrl.p vr4, r12, vr3
0015e0  ea7226c0  vsrl.p vr5, r12, vr2
0015e4  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0015e8  16912202  vadd.f.mz.rn vr2{mr1}, vr5, vr2
0015ec  fa910124  vextract.f r3, vr3{mr2}
0015f0  7a120124  vextract.f r4, vr2{mr2}
0015f4  8be10110  add.f.rn r3, r3, zero
0015f8  0b620210  add.f.rn r4, r4, zero
0015fc  8f81b119  div.f.rn r3, r3, r27
001600  0f02b219  div.f.rn r4, r4, r27
001604  0be73120  mul.f.rn r14, r3, r3
001608  0b62e218  sub.f.rn r4, r4, r14
00160c  0b67b210  add.f.rn r14, r4, r11
001610  73e04000  stores.w r4, 0(r1)
001614  8b100a11  add.s r1, r20, r16
001618  0f07e708  .word 0x08e7070f
00161c  0f87eb18  div.f.rn r14, r23, r14
001620  8b9b0811  add.s r23, r17, r16
001624  73e03b00  stores.w r3, 0(r23)
001628  73e0e000  stores.w r14, 0(r1)
00162c  9f005fce  addli r1, r30, -6360
001630  6bdb0000  load.d r[23:24], 0(r1)
001634  37a4f400  beq r9, r15, 264
001638  9f008fcd  addli r1, r30, -6464
00163c  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001640  92315002  vadd.s.mz vr3{mr1}, zero, vr5
001644  12315002  vadd.s.mz vr2{mr1}, zero, vr5
001648  12325002  vadd.s.mz vr4{mr1}, zero, vr5
00164c  bfa18a00  blt.s r21, r8, 104
001650  9f008fcd  addli r1, r30, -6464
001654  9f010000  addli r3, zero, 0
001658  1f820600  addli r4, r13, 0
00165c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001660  92323002  vadd.s.mz vr5{mr1}, zero, vr3
001664  12323002  vadd.s.mz vr4{mr1}, zero, vr3
001668  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00166c  1f070201  addli r14, r4, 128
001670  42130202  vload_mask16.mz vr6{mr1}, 0(r4)
001674  1f088201  addli r16, r4, 192
001678  9f818100  addli r3, r3, 64
00167c  c2130702  vload_mask16.mz vr7{mr1}, 0(r14)
001680  1f078200  addli r14, r4, 64
001684  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
001688  1f020202  addli r4, r4, 256
00168c  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
001690  96125302  vadd.f.mz.rn vr5{mr1}, vr6, vr5
001694  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001698  16924302  vadd.f.mz.rn vr4{mr1}, vr7, vr4
00169c  a6917302  vmac.f.mz.rn vr3{mr1}, vr7, vr7
0016a0  96125402  vadd.f.mz.rn vr5{mr1}, vr8, vr5
0016a4  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0016a8  16924402  vadd.f.mz.rn vr4{mr1}, vr9, vr4
0016ac  a6919402  vmac.f.mz.rn vr3{mr1}, vr9, vr9
0016b0  bffe51ff  blt.s r3, r21, -68
0016b4  3fa06a01  blt.s r21, r22, 8
0016b8  5bdaffff  j -304
0016bc  8b916421  mul.s r3, r9, r22
0016c0  9f406fcd  addli r1, r30, -6476
0016c4  1f474fcd  addli r14, r30, -6492
0016c8  1f085fcd  addli r16, r30, -6488
0016cc  9bb12100  slli r3, r3, 2
0016d0  63800000  loadli.w zero,  0(r1)
0016d4  8b113d10  add.s r3, r26, r3
0016d8  fe0100e0  vmmov mr3, zero
0016dc  17200000  xor zero, zero, zero
0016e0  8b91a110  add.s r3, r3, r10
0016e4  63000700  loadli.w zero,  0(r14)
0016e8  1f820101  addli r4, r3, 128
0016ec  42930106  vload_mask16.mz vr6{mr3}, 0(r3)
0016f0  fe0100e0  vmmov mr3, zero
0016f4  17200000  xor zero, zero, zero
0016f8  c2130206  vload_mask16.mz vr7{mr3}, 0(r4)
0016fc  63000800  loadli.w zero,  0(r16)
001700  1f828100  addli r4, r3, 64
001704  9f818101  addli r3, r3, 192
001708  c2940100  vload_mask16.mz vr9{mr0}, 0(r3)
00170c  fe0100e0  vmmov mr3, zero
001710  17200000  xor zero, zero, zero
001714  42140206  vload_mask16.mz vr8{mr3}, 0(r4)
001718  96125302  vadd.f.mz.rn vr5{mr1}, vr6, vr5
00171c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001720  16924302  vadd.f.mz.rn vr4{mr1}, vr7, vr4
001724  a6917302  vmac.f.mz.rn vr3{mr1}, vr7, vr7
001728  96125402  vadd.f.mz.rn vr5{mr1}, vr8, vr5
00172c  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
001730  16924402  vadd.f.mz.rn vr4{mr1}, vr9, vr4
001734  a6919402  vmac.f.mz.rn vr3{mr1}, vr9, vr9
001738  5bcaffff  j -432
00173c  e300efcc  loadli.w r1,  -6544(r30)
001740  1f031fcd  addli r6, r30, -6520
001744  eb510300  load.d r[4:5], 0(r6)
001748  0b981310  add.s r16, r7, r1
00174c  e3000fcd  loadli.w r1,  -6528(r30)
001750  00a00000  mfence { lm }
001754  8b910119  sub.s r3, r3, r16
001758  8b913040  min.s r3, r1, r3
00175c  8b916121  mul.s r3, r3, r22
001760  8b960148  max.s r13, r3, zero
001764  3fd18100  blt.s r3, r8, 84
001768  1f0e8fcb  addli r28, r30, -6720
00176c  e3402fcd  loadli.w r1,  -6508(r30)
001770  b3113828  .word 0x283811b3
001774  1f030018  addli r6, zero, 3072
001778  eb540e00  load.d r[10:11], 0(r28)
00177c  2b0700f0  lui r14, 983040
001780  9ba01000  xori r1, r1, 1
001784  8ba13410  add.ul r[4:5], r[10:11], r[4:5]
001788  9f040fd0  addli r9, r30, -6144
00178c  8b946050  fmac.s r9, r1, r6
001790  1f030fcb  addli r6, r30, -6784
001794  8bb16121  mul.sl r[4:5], r[4:5], r[23:24]
001798  9f200000  addli r1, zero, 2
00179c  6b550300  load.d r[11:12], 0(r6)
0017a0  97b11102  sll.d r[4:5], r[4:5], r1
0017a4  9bb02600  slli r1, r13, 2
0017a8  9790e000  or r1, r1, r14
0017ac  8b213510  add.ul r[4:5], r[11:12], r[4:5]
0017b0  e305efca  loadli.w r11,  -6800(r30)
0017b4  ffa09100  l_gm2lm r1, r9, 0(r[4:5])
0017b8  e7050fcd  storeli.w r16, -6568(r30)
0017bc  6706dfcc  storeli.w r13, -6560(r30)
0017c0  3f8b8900  blt.s r19, r8, 704
0017c4  1f070000  addli r14, zero, 0
0017c8  9f040d00  addli r9, r26, 0
0017cc  5b020000  j 16
0017d0  1f170700  addli r14, r14, 1
0017d4  8b948411  add.s r9, r9, r24
0017d8  b72af700  beq r14, r15, 680
0017dc  8b107710  add.s r1, r14, r7
0017e0  9bb02000  slli r1, r1, 2
0017e4  8b911810  add.s r3, r17, r1
0017e8  8b101a10  add.s r1, r20, r1
0017ec  efc10100  loads.w r3, 0(r3)
0017f0  6fc80000  loads.w r16, 0(r1)
0017f4  8be00158  neg.f r1, r3
0017f8  e3017fcd  loadli.w r3,  -6472(r30)
0017fc  37c30100  beq r3, zero, 208
001800  3f4f8bfe  blt.s r22, r8, -48
001804  9f010000  addli r3, zero, 0
001808  1f020000  addli r4, zero, 0
00180c  0b932110  add.s r6, r3, r2
001810  0b953210  add.s r10, r5, r3
001814  8b9b3410  add.s r23, r9, r3
001818  1f028200  addli r4, r4, 64
00181c  9f810102  addli r3, r3, 256
001820  1f0b8300  addli r22, r6, 64
001824  1f0e0301  addli r28, r6, 128
001828  4a110302  vloads_mask16.mz vr2{mr1}, 0(r6)
00182c  9f898b01  addli r19, r23, 192
001830  1f038301  addli r6, r6, 192
001834  42930b02  vload_mask16.mz vr6{mr1}, 0(r23)
001838  9f868b00  addli r13, r23, 64
00183c  4a120502  vloads_mask16.mz vr4{mr1}, 0(r10)
001840  ca120b02  vloads_mask16.mz vr5{mr1}, 0(r22)
001844  1f0b8500  addli r22, r10, 64
001848  4a150e02  vloads_mask16.mz vr10{mr1}, 0(r28)
00184c  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001850  ca150302  vloads_mask16.mz vr11{mr1}, 0(r6)
001854  1f030501  addli r6, r10, 128
001858  1f058501  addli r10, r10, 192
00185c  c2930602  vload_mask16.mz vr7{mr1}, 0(r13)
001860  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
001864  1f8b0b01  addli r22, r23, 128
001868  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
00186c  ca100502  vloads_mask16.mz vr1{mr1}, 0(r10)
001870  1f035fce  addli r6, r30, -6360
001874  42140b02  vload_mask16.mz vr8{mr1}, 0(r22)
001878  12936002  vadd.f.mz.rn vr6{mr1}, r1, vr6
00187c  92949002  vadd.f.mz.rn vr9{mr1}, r1, vr9
001880  92937002  vadd.f.mz.rn vr7{mr1}, r1, vr7
001884  0a136802  vmul.f.mz.rn vr6{mr1}, r16, vr6
001888  12948002  vadd.f.mz.rn vr8{mr1}, r1, vr8
00188c  8a149802  vmul.f.mz.rn vr9{mr1}, r16, vr9
001890  8a137802  vmul.f.mz.rn vr7{mr1}, r16, vr7
001894  26122302  vmac.f.mz.rn vr4{mr1}, vr6, vr2
001898  0a148802  vmul.f.mz.rn vr8{mr1}, r16, vr8
00189c  8e94b402  vmul.f.mz.rn vr9{mr1}, vr9, vr11
0018a0  a6915302  vmac.f.mz.rn vr3{mr1}, vr7, vr5
0018a4  46904b02  vstore_mask16.mz vr4{mr1}, 0(r23)
0018a8  0e14a402  vmul.f.mz.rn vr8{mr1}, vr8, vr10
0018ac  96901402  vadd.f.mz.rn vr1{mr1}, vr9, vr1
0018b0  46903602  vstore_mask16.mz vr3{mr1}, 0(r13)
0018b4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0018b8  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0018bc  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
0018c0  6b5b0300  load.d r[23:24], 0(r6)
0018c4  3f2d62ff  blt.s r4, r22, -184
0018c8  5be1ffff  j -248
0018cc  e3014fcd  loadli.w r3,  -6496(r30)
0018d0  b7d10100  beq r3, zero, 116
0018d4  e3013fcd  loadli.w r3,  -6504(r30)
0018d8  37c40100  beq r3, zero, 272
0018dc  bf5b8bfe  blt.s r22, r8, -268
0018e0  9f010000  addli r3, zero, 0
0018e4  1f820400  addli r4, r9, 0
0018e8  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0018ec  1f038200  addli r6, r4, 64
0018f0  1f050201  addli r10, r4, 128
0018f4  9f068201  addli r13, r4, 192
0018f8  9f818100  addli r3, r3, 64
0018fc  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
001900  42110502  vload_mask16.mz vr2{mr1}, 0(r10)
001904  c2910602  vload_mask16.mz vr3{mr1}, 0(r13)
001908  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
00190c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001910  12912002  vadd.f.mz.rn vr2{mr1}, r1, vr2
001914  92913002  vadd.f.mz.rn vr3{mr1}, r1, vr3
001918  0a100802  vmul.f.mz.rn vr0{mr1}, r16, vr0
00191c  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
001920  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
001924  8a113802  vmul.f.mz.rn vr3{mr1}, r16, vr3
001928  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
00192c  1f020202  addli r4, r4, 256
001930  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
001934  46102502  vstore_mask16.mz vr2{mr1}, 0(r10)
001938  46903602  vstore_mask16.mz vr3{mr1}, 0(r13)
00193c  bfbe61ff  blt.s r3, r22, -84
001940  5bd2ffff  j -368
001944  3f3a8bfe  blt.s r22, r8, -372
001948  9f010000  addli r3, zero, 0
00194c  1f020000  addli r4, zero, 0
001950  0b933410  add.s r6, r9, r3
001954  0b952110  add.s r10, r3, r2
001958  1f028200  addli r4, r4, 64
00195c  9f810102  addli r3, r3, 256
001960  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
001964  9f068300  addli r13, r6, 64
001968  1f0b8301  addli r22, r6, 192
00196c  9f098500  addli r19, r10, 64
001970  9f0b0501  addli r23, r10, 128
001974  4a110502  vloads_mask16.mz vr2{mr1}, 0(r10)
001978  1f058501  addli r10, r10, 192
00197c  c2900602  vload_mask16.mz vr1{mr1}, 0(r13)
001980  c2120b02  vload_mask16.mz vr5{mr1}, 0(r22)
001984  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
001988  9f090301  addli r19, r6, 128
00198c  ca130502  vloads_mask16.mz vr7{mr1}, 0(r10)
001990  4a930b02  vloads_mask16.mz vr6{mr1}, 0(r23)
001994  42920902  vload_mask16.mz vr4{mr1}, 0(r19)
001998  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
00199c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0019a0  92925002  vadd.f.mz.rn vr5{mr1}, r1, vr5
0019a4  0a100802  vmul.f.mz.rn vr0{mr1}, r16, vr0
0019a8  12924002  vadd.f.mz.rn vr4{mr1}, r1, vr4
0019ac  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
0019b0  8a125802  vmul.f.mz.rn vr5{mr1}, r16, vr5
0019b4  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
0019b8  0a124802  vmul.f.mz.rn vr4{mr1}, r16, vr4
0019bc  8e901102  vmul.f.mz.rn vr1{mr1}, vr3, vr1
0019c0  8e915302  vmul.f.mz.rn vr3{mr1}, vr7, vr5
0019c4  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
0019c8  1f035fce  addli r6, r30, -6360
0019cc  0e114302  vmul.f.mz.rn vr2{mr1}, vr6, vr4
0019d0  46103b02  vstore_mask16.mz vr3{mr1}, 0(r22)
0019d4  6b5b0300  load.d r[23:24], 0(r6)
0019d8  46901602  vstore_mask16.mz vr1{mr1}, 0(r13)
0019dc  46902902  vstore_mask16.mz vr2{mr1}, 0(r19)
0019e0  bf4d62ff  blt.s r4, r22, -144
0019e4  dbbdffff  j -532
0019e8  bf278bfe  blt.s r22, r8, -536
0019ec  1f030fcc  addli r6, r30, -6656
0019f0  9f010000  addli r3, zero, 0
0019f4  1f020000  addli r4, zero, 0
0019f8  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
0019fc  6a110822  vor.f.mz vr2{mr1}, r16, vr0
001a00  0b953210  add.s r10, r5, r3
001a04  0b933410  add.s r6, r9, r3
001a08  1f028200  addli r4, r4, 64
001a0c  9f810102  addli r3, r3, 256
001a10  1f088500  addli r16, r10, 64
001a14  9f090501  addli r19, r10, 128
001a18  ca110502  vloads_mask16.mz vr3{mr1}, 0(r10)
001a1c  1f058501  addli r10, r10, 192
001a20  9f068300  addli r13, r6, 64
001a24  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
001a28  4a120802  vloads_mask16.mz vr4{mr1}, 0(r16)
001a2c  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
001a30  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
001a34  1f080301  addli r16, r6, 128
001a38  1f058301  addli r10, r6, 192
001a3c  c2900602  vload_mask16.mz vr1{mr1}, 0(r13)
001a40  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
001a44  42140502  vload_mask16.mz vr8{mr1}, 0(r10)
001a48  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
001a4c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001a50  92937002  vadd.f.mz.rn vr7{mr1}, r1, vr7
001a54  12948002  vadd.f.mz.rn vr8{mr1}, r1, vr8
001a58  a6110102  vmac.f.mz.rn vr3{mr1}, vr2, vr0
001a5c  26121102  vmac.f.mz.rn vr4{mr1}, vr2, vr1
001a60  a6127102  vmac.f.mz.rn vr5{mr1}, vr2, vr7
001a64  26138102  vmac.f.mz.rn vr6{mr1}, vr2, vr8
001a68  46103302  vstore_mask16.mz vr3{mr1}, 0(r6)
001a6c  46904602  vstore_mask16.mz vr4{mr1}, 0(r13)
001a70  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
001a74  46106502  vstore_mask16.mz vr6{mr1}, 0(r10)
001a78  3f2e62ff  blt.s r4, r22, -120
001a7c  dbaaffff  j -684
001a80  00a00000  mfence { lm }
001a84  e300ffcc  loadli.w r1,  -6536(r30)
001a88  3f201000  blt.s zero, r1, 8
001a8c  db4fffff  j -1412
001a90  9f068fcb  addli r13, r30, -6720
001a94  b391332e  .word 0x2e3391b3
001a98  9bb02000  slli r1, r1, 2
001a9c  6bd30600  load.d r[7:8], 0(r13)
001aa0  8b213310  add.ul r[4:5], r[7:8], r[4:5]
001aa4  1f230000  addli r6, zero, 2
001aa8  9f03cfca  addli r7, r30, -6816
001aac  8bb16121  mul.sl r[4:5], r[4:5], r[23:24]
001ab0  97b16102  sll.d r[4:5], r[4:5], r6
001ab4  2b0300f0  lui r6, 983040
001ab8  ebd40300  load.d r[10:11], 0(r7)
001abc  97906000  or r1, r1, r6
001ac0  8ba13410  add.ul r[4:5], r[10:11], r[4:5]
001ac4  ffb0a101  s_lm2gm r1, r26, 0(r[4:5])
001ac8  5b48ffff  j -1472
001acc  9f890400  addli r19, r9, 0
001ad0  00a00300  mfence { lm, sm, gm }
001ad4  abf00000  lui r1, 15
001ad8  9f011fcb  addli r3, r30, -6776
001adc  9b90f0ff  ori r1, r1, 4095
001ae0  80a10004  csr_set csr3, r1
001ae4  00d00100  sync_group
001ae8  ebd60100  load.d r[14:15], 0(r3)
001aec  80300002  core_id r1
001af0  bbd400fc  bneq r1, zero, -1740
001af4  9f001fcd  addli r1, r30, -6520
001af8  ebd10000  load.d r[4:5], 0(r1)
001afc  bfa481fc  blt.s r3, r8, -1752
001b00  9f03afca  addli r7, r30, -6832
001b04  b3013028  .word 0x283001b3
001b08  1f0e8fcb  addli r28, r30, -6720
001b0c  9f200000  addli r1, zero, 2
001b10  ebd40300  load.d r[10:11], 0(r7)
001b14  13a33400  seteq.d r6, r[10:11], r[4:5]
001b18  eb510e00  load.d r[4:5], 0(r28)
001b1c  97b11102  sll.d r[4:5], r[4:5], r1
001b20  9f001fcd  addli r1, r30, -6520
001b24  ebd70000  load.d r[16:17], 0(r1)
001b28  9bb02700  slli r1, r15, 2
001b2c  3b500300  bneq r6, zero, 20
001b30  2b0300f0  lui r6, 983040
001b34  8ba43410  add.ul r[10:11], r[10:11], r[4:5]
001b38  17936000  or r6, r1, r6
001b3c  7f931401  s_sm2gm r6, r17, 0(r[10:11])
001b40  9f07bfca  addli r15, r30, -6824
001b44  33036028  .word 0x28600333
001b48  ebd40700  load.d r[10:11], 0(r15)
001b4c  13a36400  seteq.d r6, r[10:11], r[7:8]
001b50  3b5303fc  bneq r6, zero, -1836
001b54  9f03bfca  addli r7, r30, -6824
001b58  2b0300f0  lui r6, 983040
001b5c  ebd40300  load.d r[10:11], 0(r7)
001b60  97906000  or r1, r1, r6
001b64  63039fca  loadli.w r6,  -6840(r30)
001b68  8ba13410  add.ul r[4:5], r[10:11], r[4:5]
001b6c  ff906100  s_sm2gm r1, r6, 0(r[4:5])
001b70  db16ffff  j -1868
001b74  67433fcf  storeli.w r19, -6348(r30)
001b78  9f0e0fc9  addli sp, r30, -7040
001b7c  9f8e0e37  addli sp, sp, 7040
001b80  00a00300  mfence { lm, sm, gm }
001b84  00100000  exit
001b88  9f000004  addli r1, zero, 512
001b8c  2771fb03  addli.d r[3:4], r[23:24], 511
001b90  3382402a  .word 0x2a408233
001b94  8f104162  .word 0x6241108f
001b98  a3b00002  slli.d r[2:3], r[2:3], 32
001b9c  23d60002  srai.d r[13:14], r[2:3], 32
001ba0  80d00002  load_param_i r1, 1
001ba4  80510002  load_param_i r3, 0
001ba8  00340002  core_id r8
001bac  9f099fca  addli r19, r30, -6840
001bb0  0b111338  mod.s r2, r6, r1
001bb4  8b101330  div.s r1, r6, r1
001bb8  13922104  setlt.s r4, r3, r2
001bbc  0b912140  min.s r2, r3, r2
001bc0  0b913050  fmac.s r2, r1, r3
001bc4  8b176140  min.s r15, r2, r6
001bc8  8b904010  add.s r1, r1, r4
001bcc  8b902010  add.s r1, r1, r2
001bd0  1f012000  addli r2, zero, 16
001bd4  0b996040  min.s r18, r1, r6
001bd8  9b00f400  andi r1, r8, 15
001bdc  8b1cf918  sub.s r25, r18, r15
001be0  0b922c30  div.s r4, r25, r2
001be4  9b314200  slli r3, r4, 4
001be8  8b923c18  sub.s r5, r25, r3
001bec  13935004  setlt.s r6, r1, r5
001bf0  8b915040  min.s r3, r1, r5
001bf4  9f830100  addli r7, r3, 0
001bf8  8b131250  fmac.s r7, r4, r1
001bfc  0b136210  add.s r6, r4, r6
001c00  1b424400  srli r4, r8, 4
001c04  0b137310  add.s r6, r6, r7
001c08  8b939341  min.s r7, r7, r25
001c0c  33048228  .word 0x28820433
001c10  0b139341  min.s r6, r6, r25
001c14  0b9cf310  add.s r24, r7, r15
001c18  73b08900  store.d r[9:10], 0(r19)
001c1c  e7437fca  storeli.w r7, -6852(r30)
001c20  0b17f310  add.s r14, r6, r15
001c24  e7036fca  storeli.w r6, -6856(r30)
001c28  e7088fcb  storeli.w r24, -6776(r30)
001c2c  4b367302  ble.s r6, r7, 1420
001c30  67092fcb  storeli.w r18, -6768(r30)
001c34  1f096fcb  addli r18, r30, -6736
001c38  1f038000  addli r6, zero, 64
001c3c  670affca  storeli.w r15, -6752(r30)
001c40  9f075fcb  addli r15, r30, -6744
001c44  a7737b00  addli.d r[8:9], r[23:24], 63
001c48  670cefca  storeli.w r14, -6720(r30)
001c4c  9f098fcd  addli r19, r30, -6464
001c50  9f0d9fca  addli r27, r30, -6840
001c54  1f0d0006  addli r26, zero, 768
001c58  73300901  store.d r[17:18], 0(r18)
001c5c  1f087fcb  addli r16, r30, -6728
001c60  73b0c700  store.d r[13:14], 0(r15)
001c64  7330a800  store.d r[11:12], 0(r16)
001c68  b304932c  .word 0x2c9304b3
001c6c  1f030002  addli r6, zero, 256
001c70  8f969362  .word 0x6293968f
001c74  1f450000  addli r10, zero, 4
001c78  b305b52c  .word 0x2cb505b3
001c7c  8f95b676  .word 0x76b6958f
001c80  73b0d900  store.d r[14:15], 0(r19)
001c84  b306d32c  .word 0x2cd306b3
001c88  0f93d364  .word 0x64d3930f
001c8c  ebd60d00  load.d r[14:15], 0(r27)
001c90  13b4b604  setlt.sl r8, r[14:15], r[12:13]
001c94  8bb5b640  min.sl r[12:13], r[14:15], r[12:13]
001c98  8b35d350  fmac.sl r[12:13], r[7:8], r[14:15]
001c9c  ab06803f  lui r13, 260096
001ca0  33048428  .word 0x28840433
001ca4  0b238310  add.ul r[7:8], r[7:8], r[9:10]
001ca8  1f640000  addli r8, zero, 6
001cac  0b23b310  add.ul r[7:8], r[7:8], r[12:13]
001cb0  97b58502  sll.d r[12:13], r[12:13], r8
001cb4  17348302  sll.d r[9:10], r[7:8], r8
001cb8  0bb36541  min.sl r[7:8], r[12:13], r[23:24]
001cbc  b305bd2c  .word 0x2cbd05b3
001cc0  0b346441  min.sl r[9:10], r[9:10], r[23:24]
001cc4  0b376418  sub.sl r[15:16], r[9:10], r[7:8]
001cc8  2778f705  addli.d r[17:18], r[15:16], 767
001ccc  0f18b860  div.sl r[17:18], r[17:18], r[12:13]
001cd0  23380802  slli.d r[17:18], r[17:18], 32
001cd4  a3580802  srai.d r[18:19], r[17:18], 32
001cd8  1f280000  addli r16, zero, 2
001cdc  27faf8ff  addli.d r[21:22], r[18:19], 32767
001ce0  330b6829  .word 0x29680b33
001ce4  0f19b774  .word 0x74b7190f
001ce8  9ff81c00  addli r17, r25, 15
001cec  8f156a77  .word 0x776a158f
001cf0  37200900  beq r18, zero, 8
001cf4  1f0d0900  addli r26, r18, 0
001cf8  0b992830  div.s r18, r17, r2
001cfc  9b382200  slli r17, r4, 2
001d00  b3193d2d  .word 0x2d3d19b3
001d04  1f020000  addli r4, zero, 0
001d08  37a00200  beq r5, zero, 8
001d0c  0b921118  sub.s r4, r3, r1
001d10  e7099fcb  storeli.w r25, -6760(r30)
001d14  9f0c5fce  addli r25, r30, -6360
001d18  93216402  setneq.d r3, r[9:10], r[7:8]
001d1c  9f0d8fcd  addli r27, r30, -6464
001d20  0b121950  fmac.s r4, r18, r1
001d24  0b373719  sub.sl r[15:16], r[15:16], r[20:21]
001d28  1f190000  addli r18, zero, 1
001d2c  9f090018  addli r19, zero, 3072
001d30  9f000000  addli r1, zero, 0
001d34  ebda0c00  load.d r[22:23], 0(r25)
001d38  ab020000  lui r5, 0
001d3c  9f820200  addli r5, r5, 0
001d40  8fbb7a01  .word 0x017abb8f
001d44  ebda0d00  load.d r[22:23], 0(r27)
001d48  8b921211  add.s r5, r5, r17
001d4c  80380002  core_id r17
001d50  93882804  setlt.u r17, r17, r2
001d54  0b91aa40  min.s r2, r21, r10
001d58  1f057fcd  addli r10, r30, -6472
001d5c  973a0303  sll.d r[22:23], r[7:8], r16
001d60  7330e500  store.d r[15:16], 0(r10)
001d64  37a00500  beq r11, zero, 8
001d68  9f000018  addli r1, zero, 3072
001d6c  0f857619  div.f.rn r10, r13, r23
001d70  17883800  and r16, r17, r3
001d74  8b118219  sub.s r3, r4, r24
001d78  0b112149  max.s r2, r2, r18
001d7c  932c6400  seteq.d r25, r[9:10], r[7:8]
001d80  e706afcd  storeli.w r26, -6552(r30)
001d84  1f037fcd  addli r6, r30, -6472
001d88  9f03efcc  addli r7, r30, -6544
001d8c  9f070000  addli r15, zero, 0
001d90  1f0a0000  addli r20, zero, 0
001d94  9f0d2000  addli r27, zero, 16
001d98  9f060002  addli r13, zero, 256
001d9c  1f070001  addli r14, zero, 128
001da0  9f74f005  addli r9, zero, 767
001da4  7e0009e0  vmmov mr0, r18
001da8  67493fcc  storeli.w r3, -6508(r30)
001dac  e7052fcc  storeli.w r2, -6568(r30)
001db0  1f010fd0  addli r2, r30, -6144
001db4  e7090fcd  storeli.w r16, -6504(r30)
001db8  8b181110  add.s r17, r2, r1
001dbc  9f200000  addli r1, zero, 2
001dc0  1f010006  addli r2, zero, 768
001dc4  67081fcd  storeli.w r17, -6528(r30)
001dc8  674bafcc  storeli.w r10, -6476(r30)
001dcc  13850502  setneq r10, r11, zero
001dd0  63068fcb  loadli.w r12,  -6720(r30)
001dd4  e7079fcd  storeli.w r25, -6536(r30)
001dd8  6706afcc  storeli.w r10, -6560(r30)
001ddc  1b352d00  slli r10, r26, 2
001de0  1f0d1fcd  addli r26, r30, -6520
001de4  e70aafcc  storeli.w r10, -6488(r30)
001de8  1f850201  addli r10, r5, 128
001dec  9f822201  addli r5, r5, 144
001df0  670a5fcc  storeli.w r5, -6496(r30)
001df4  9f020fcb  addli r5, r30, -6784
001df8  674aafcc  storeli.w r10, -6492(r30)
001dfc  3305a12c  .word 0x2ca10533
001e00  1f018000  addli r2, zero, 64
001e04  ebd10200  load.d r[4:5], 0(r5)
001e08  8ba15111  add.ul r[4:5], r[4:5], r[22:23]
001e0c  9f0a4000  addli r21, zero, 32
001e10  73303d00  store.d r[4:5], 0(r26)
001e14  eb510300  load.d r[4:5], 0(r6)
001e18  97b11102  sll.d r[4:5], r[4:5], r1
001e1c  73b03300  store.d r[4:5], 0(r7)
001e20  9f010fcc  addli r3, r30, -6656
001e24  1f025fce  addli r4, r30, -6360
001e28  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
001e2c  6b5b0200  load.d r[23:24], 0(r4)
001e30  ee300062  vxor.s.mz vr1{mr1}, vr0, vr0
001e34  db020000  j 20
001e38  73e04240  stores.w r4, 1024(r5)
001e3c  00a00000  mfence { lm }
001e40  3f20cc00  blt.s r24, r12, 8
001e44  db680000  j 836
001e48  1f76f6ff  addli r12, r12, -1
001e4c  bbe90c00  bneq r25, zero, 632
001e50  b3113628  .word 0x283611b3
001e54  1f0a1fcd  addli r20, r30, -6520
001e58  1f0d7fcd  addli r26, r30, -6472
001e5c  2b0800f0  lui r16, 983040
001e60  b3037028  .word 0x287003b3
001e64  1f0eefcc  addli r28, r30, -6544
001e68  8bb16121  mul.sl r[4:5], r[4:5], r[23:24]
001e6c  eb520a00  load.d r[6:7], 0(r20)
001e70  6b5c0d00  load.d r[25:26], 0(r26)
001e74  97b11102  sll.d r[4:5], r[4:5], r1
001e78  8ba23210  add.ul r[6:7], r[6:7], r[4:5]
001e7c  63025fcd  loadli.w r4,  -6488(r30)
001e80  93317c04  setlt.sl r3, r[25:26], r[8:9]
001e84  eb530e00  load.d r[8:9], 0(r28)
001e88  8ba37210  add.ul r[8:9], r[6:7], r[8:9]
001e8c  17120201  or r4, r4, r16
001e90  7fa21301  l_gm2lm r4, r17, 0(r[8:9])
001e94  00a00200  mfence { lm, gm }
001e98  bbf70100  bneq r3, zero, 508
001e9c  e307dfcc  loadli.w r15,  -6552(r30)
001ea0  6304cfcc  loadli.w r8,  -6560(r30)
001ea4  1f8e0800  addli r28, r17, 0
001ea8  1f0d0000  addli r26, zero, 0
001eac  9f030000  addli r7, zero, 0
001eb0  27080c00  addli.d r[17:18], r[25:26], 0
001eb4  db110000  j 140
001eb8  9f015fce  addli r3, r30, -6360
001ebc  6bdb0100  load.d r[23:24], 0(r3)
001ec0  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
001ec4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001ec8  b381342a  .word 0x2a3481b3
001ecc  1b241400  xori r8, r8, 1
001ed0  1f0e0fd0  addli r28, r30, -6144
001ed4  1f0a0006  addli r20, zero, 768
001ed8  00a00000  mfence { lm }
001edc  93b10105  setlt.sl r3, r[4:5], r[17:18]
001ee0  0b1e3451  fmac.s r28, r8, r19
001ee4  27080c00  addli.d r[17:18], r[25:26], 0
001ee8  eaf106c0  vsrl.p vr3, r13, vr0
001eec  6af226c0  vsrl.p vr4, r13, vr2
001ef0  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
001ef4  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
001ef8  ea7107c0  vsrl.p vr3, r14, vr0
001efc  6a7227c0  vsrl.p vr4, r14, vr2
001f00  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
001f04  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
001f08  ea7101c0  vsrl.p vr3, r2, vr0
001f0c  6a7221c0  vsrl.p vr4, r2, vr2
001f10  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
001f14  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
001f18  eaf10ac0  vsrl.p vr3, r21, vr0
001f1c  6af22ac0  vsrl.p vr4, r21, vr2
001f20  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
001f24  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
001f28  7a120020  vextract.f r4, vr0{mr0}
001f2c  fa170120  vextract.f r15, vr2{mr0}
001f30  0b6dfd10  add.f.rn r26, r26, r15
001f34  8be34310  add.f.rn r7, r7, r4
001f38  9f070006  addli r15, zero, 768
001f3c  b7950100  beq r3, zero, 356
001f40  9321a804  setlt.ul r3, r[17:18], r[11:12]
001f44  270c08fa  addli.d r[25:26], r[17:18], 32000
001f48  bb900100  bneq r3, zero, 36
001f4c  9b211400  xori r3, r8, 1
001f50  1f020fd0  addli r4, r30, -6144
001f54  173b1c02  sll.d r[23:24], r[25:26], r1
001f58  0b923151  fmac.s r4, r3, r19
001f5c  ab0100f0  lui r3, 983040
001f60  0bab6211  add.ul r[23:24], r[6:7], r[23:24]
001f64  97913900  or r3, r19, r3
001f68  ff214b00  l_gm2lm r3, r4, 0(r[23:24])
001f6c  abf1ffff  lui r3, 1048575
001f70  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001f74  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001f78  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001f7c  92321002  vadd.s.mz vr5{mr1}, zero, vr1
001f80  9b9101fc  ori r3, r3, 4032
001f84  178a3700  and r20, r15, r3
001f88  bf112a01  blt.s r20, r18, 100
001f8c  92321002  vadd.s.mz vr5{mr1}, zero, vr1
001f90  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001f94  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001f98  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001f9c  9f010000  addli r3, zero, 0
001fa0  1f020e00  addli r4, r28, 0
001fa4  1f0b0201  addli r22, r4, 128
001fa8  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
001fac  9f0b8201  addli r23, r4, 192
001fb0  9f818100  addli r3, r3, 64
001fb4  42130b02  vload_mask16.mz vr6{mr1}, 0(r22)
001fb8  1f0b8200  addli r22, r4, 64
001fbc  42940b02  vload_mask16.mz vr8{mr1}, 0(r23)
001fc0  1f020202  addli r4, r4, 256
001fc4  c2130b02  vload_mask16.mz vr7{mr1}, 0(r22)
001fc8  96125002  vadd.f.mz.rn vr5{mr1}, vr0, vr5
001fcc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001fd0  16124302  vadd.f.mz.rn vr4{mr1}, vr6, vr4
001fd4  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
001fd8  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
001fdc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001fe0  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
001fe4  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
001fe8  bffe41ff  blt.s r3, r20, -68
001fec  3f20fa00  blt.s r20, r15, 8
001ff0  5bd9ffff  j -312
001ff4  0b922738  mod.s r4, r15, r2
001ff8  abf1ffff  lui r3, 1048575
001ffc  1f7b3000  addli r22, zero, 31
002000  9b97f1ff  ori r15, r3, 4095
002004  9f810700  addli r3, r15, 0
002008  3f304b00  blt.s r22, r4, 12
00200c  97b14700  sll r3, r15, r4
002010  97a1f100  xor r3, r3, r15
002014  3fb04a00  blt.s r21, r4, 12
002018  1f020000  addli r4, zero, 0
00201c  5b020000  j 16
002020  1f02c2ff  addli r4, r4, -32
002024  17b24700  sll r4, r15, r4
002028  1722f200  xor r4, r4, r15
00202c  9f075fce  addli r15, r30, -6360
002030  7e8101e0  vmmov mr2, r3
002034  97d1b101  sra r3, r3, r27
002038  6bdb0700  load.d r[23:24], 0(r15)
00203c  9b372a00  slli r15, r20, 2
002040  8b17fe10  add.s r15, r28, r15
002044  1f8a8700  addli r20, r15, 64
002048  42900704  vload_mask16.mz vr0{mr2}, 0(r15)
00204c  7e8101e0  vmmov mr2, r3
002050  9f810701  addli r3, r15, 128
002054  42130a04  vload_mask16.mz vr6{mr2}, 0(r20)
002058  7e0102e0  vmmov mr2, r4
00205c  c2930104  vload_mask16.mz vr7{mr2}, 0(r3)
002060  9751b201  sra r3, r4, r27
002064  1f828701  addli r4, r15, 192
002068  7e8101e0  vmmov mr2, r3
00206c  42140204  vload_mask16.mz vr8{mr2}, 0(r4)
002070  96125002  vadd.f.mz.rn vr5{mr1}, vr0, vr5
002074  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002078  16924302  vadd.f.mz.rn vr4{mr1}, vr7, vr4
00207c  a6917302  vmac.f.mz.rn vr3{mr1}, vr7, vr7
002080  96125302  vadd.f.mz.rn vr5{mr1}, vr6, vr5
002084  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002088  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
00208c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002090  5bc6ffff  j -464
002094  630adfcc  loadli.w r20,  -6552(r30)
002098  9f030000  addli r7, zero, 0
00209c  1f0d0000  addli r26, zero, 0
0020a0  e3414fcd  loadli.w r3,  -6492(r30)
0020a4  634edfc9  loadli.w r28,  -6932(r30)
0020a8  630c1fcb  loadli.w r24,  -6776(r30)
0020ac  63083fcd  loadli.w r16,  -6504(r30)
0020b0  e3080fcd  loadli.w r17,  -6528(r30)
0020b4  e30cffcc  loadli.w r25,  -6536(r30)
0020b8  67807100  storeli.w r7, 0(r3)
0020bc  e3014fcd  loadli.w r3,  -6496(r30)
0020c0  6780a101  storeli.w r26, 0(r3)
0020c4  00a00000  mfence { lm }
0020c8  00300000  sync_local
0020cc  b74508fe  beq r16, zero, -656
0020d0  9f028fcd  addli r5, r30, -6464
0020d4  ebd10200  load.d r[4:5], 0(r5)
0020d8  bff02101  blt.s r3, r18, 60
0020dc  ab020000  lui r5, 0
0020e0  6303bfcc  loadli.w r6,  -6568(r30)
0020e4  9f010000  addli r3, zero, 0
0020e8  1f020000  addli r4, zero, 0
0020ec  9f820200  addli r5, r5, 0
0020f0  9f822201  addli r5, r5, 144
0020f4  e383e2ff  loadli.w r7,  -16(r5)
0020f8  63840200  loadli.w r8,  0(r5)
0020fc  1f73f3ff  addli r6, r6, -1
002100  9fc20200  addli r5, r5, 4
002104  0b627210  add.f.rn r4, r4, r7
002108  8be18110  add.f.rn r3, r3, r8
00210c  bb2f03fe  bneq r6, zero, -24
002110  db010000  j 12
002114  1f020000  addli r4, zero, 0
002118  9f010000  addli r3, zero, 0
00211c  e3426fcd  loadli.w r5,  -6476(r30)
002120  8b138619  sub.s r7, r12, r24
002124  9bb32300  slli r7, r7, 2
002128  0be34220  mul.f.rn r6, r5, r4
00212c  8be15120  mul.f.rn r3, r3, r5
002130  0b626320  mul.f.rn r4, r6, r6
002134  8be14118  sub.f.rn r3, r3, r4
002138  6302efca  loadli.w r4,  -6800(r30)
00213c  ab02803f  lui r5, 260096
002140  0be24110  add.f.rn r4, r3, r4
002144  0f024208  .word 0x0842020f
002148  0f824218  div.f.rn r4, r5, r4
00214c  e3422fcd  loadli.w r5,  -6508(r30)
002150  2b040000  lui r8, 0
002154  1f040400  addli r8, r8, 0
002158  8b92c210  add.s r5, r5, r12
00215c  8b938310  add.s r7, r7, r8
002160  2b040000  lui r8, 0
002164  9bb22200  slli r5, r5, 2
002168  1f040400  addli r8, r8, 0
00216c  67806300  storeli.w r6, 0(r7)
002170  67844300  storeli.w r4, 64(r7)
002174  8b928210  add.s r5, r5, r8
002178  73e06200  stores.w r6, 0(r5)
00217c  bb720efe  bneq r28, zero, -836
002180  1f820100  addli r4, r3, 0
002184  db96ffff  j -844
002188  9f007fcb  addli r1, r30, -6728
00218c  1f016fcb  addli r2, r30, -6736
002190  9f015fcb  addli r3, r30, -6744
002194  e703ffce  storeli.w r15, -6344(r30)
002198  63078fcb  loadli.w r14,  -6720(r30)
00219c  e3074fcb  loadli.w r15,  -6752(r30)
0021a0  e30c3fcb  loadli.w r25,  -6760(r30)
0021a4  63092fcb  loadli.w r18,  -6768(r30)
0021a8  67434fcf  storeli.w r20, -6348(r30)
0021ac  6bd50000  load.d r[11:12], 0(r1)
0021b0  6b580100  load.d r[17:18], 0(r2)
0021b4  6bd60100  load.d r[13:14], 0(r3)
0021b8  00a00300  mfence { lm, sm, gm }
0021bc  abf00000  lui r1, 15
0021c0  9b90f0ff  ori r1, r1, 4095
0021c4  80a10004  csr_set csr3, r1
0021c8  9f00afca  addli r1, r30, -6832
0021cc  00d00100  sync_group
0021d0  ebd30000  load.d r[8:9], 0(r1)
0021d4  3702f900  beq r18, r15, 128
0021d8  80300002  core_id r1
0021dc  bbe10000  bneq r1, zero, 120
0021e0  b3001028  .word 0x281000b3
0021e4  13a21300  seteq.d r4, r[8:9], r[2:3]
0021e8  3391272e  .word 0x2e279133
0021ec  9bb02c00  slli r1, r25, 2
0021f0  bb100200  bneq r4, zero, 36
0021f4  1f220000  addli r4, zero, 2
0021f8  2b0300f0  lui r6, 983040
0021fc  17324102  sll.d r[5:6], r[3:4], r4
002200  17936000  or r6, r1, r6
002204  0ba24310  add.ul r[5:6], r[8:9], r[5:6]
002208  ab030000  lui r7, 0
00220c  9f830300  addli r7, r7, 0
002210  7f137200  s_sm2gm r6, r7, 0(r[5:6])
002214  1f04bfca  addli r8, r30, -6824
002218  33024028  .word 0x28400233
00221c  6b530400  load.d r[7:8], 0(r8)
002220  13224300  seteq.d r4, r[7:8], r[5:6]
002224  bb400200  bneq r4, zero, 48
002228  1f220000  addli r4, zero, 2
00222c  1f04bfca  addli r8, r30, -6824
002230  ab020000  lui r5, 0
002234  17314102  sll.d r[3:4], r[3:4], r4
002238  2b0200f0  lui r4, 983040
00223c  6b530400  load.d r[7:8], 0(r8)
002240  9f820200  addli r5, r5, 0
002244  9f820208  addli r5, r5, 1024
002248  97904000  or r1, r1, r4
00224c  0b212310  add.ul r[3:4], r[7:8], r[3:4]
002250  ff105100  s_sm2gm r1, r5, 0(r[3:4])
002254  9f100000  addli r1, zero, 1
002258  b380102a  .word 0x2a1080b3
00225c  93301b04  setlt.sl r1, r[23:24], r[2:3]
002260  3be400fc  bneq r1, zero, -1768
002264  1f020fca  addli r4, r30, -6912
002268  93200503  setneq.d r1, r[11:12], r[17:18]
00226c  b30a5029  .word 0x29500ab3
002270  eb530200  load.d r[8:9], 0(r4)
002274  13a15303  setneq.d r2, r[8:9], r[22:23]
002278  e7071fca  storeli.w r1, -6792(r30)
00227c  9f101000  addli r1, zero, 9
002280  abf10100  lui r3, 31
002284  3b300100  bneq r2, zero, 12
002288  1f030000  addli r6, zero, 0
00228c  5b010000  j 8
002290  1b9301c0  ori r6, r3, 3072
002294  9f012fca  addli r3, r30, -6896
002298  e3041fcb  loadli.w r9,  -6776(r30)
00229c  17351602  sll.d r[11:12], r[13:14], r1
0022a0  9f2c0000  addli r25, zero, 2
0022a4  9f060000  addli r13, zero, 0
0022a8  6bd20100  load.d r[5:6], 0(r3)
0022ac  ab000000  lui r1, 0
0022b0  8b199718  sub.s r19, r14, r9
0022b4  9f800000  addli r1, r1, 0
0022b8  93215201  seteq.d r3, r[5:6], r[22:23]
0022bc  13225203  setneq.d r4, r[5:6], r[22:23]
0022c0  93a25301  seteq.d r5, r[8:9], r[22:23]
0022c4  0b141310  add.s r8, r6, r1
0022c8  e300ffca  loadli.w r1,  -6792(r30)
0022cc  3ba00000  bneq r1, zero, 8
0022d0  9f260000  addli r13, zero, 2
0022d4  67498fcc  storeli.w r8, -6508(r30)
0022d8  1f040410  addli r8, r8, 2048
0022dc  1f065fce  addli r12, r30, -6360
0022e0  3393642a  .word 0x2a649333
0022e4  1f07efca  addli r14, r30, -6800
0022e8  9f070fcb  addli r15, r30, -6784
0022ec  9f000000  addli r1, zero, 0
0022f0  1f3a0000  addli r20, zero, 3
0022f4  1f0d0fd0  addli r26, r30, -6144
0022f8  670a3fcb  storeli.w r19, -6752(r30)
0022fc  e7418fca  storeli.w r8, -6884(r30)
002300  6b540600  load.d r[9:10], 0(r12)
002304  7330a700  store.d r[11:12], 0(r14)
002308  1f160000  addli r12, zero, 1
00230c  1f070000  addli r14, zero, 0
002310  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
002314  13348506  setle.sl r8, r[11:12], r[9:10]
002318  1f056fca  addli r10, r30, -6864
00231c  9f456fce  addli r11, r30, -6348
002320  73306500  store.d r[7:8], 0(r10)
002324  17339303  sll.d r[7:8], r[7:8], r25
002328  e7028fca  storeli.w r8, -6872(r30)
00232c  1ff4f9ff  addli r8, r19, -1
002330  e7088fcc  storeli.w r8, -6520(r30)
002334  6bd40700  load.d r[9:10], 0(r15)
002338  0b236410  add.ul r[7:8], r[9:10], r[7:8]
00233c  1f044fca  addli r8, r30, -6880
002340  73306400  store.d r[7:8], 0(r8)
002344  17034100  and r6, r2, r4
002348  17113100  or r2, r2, r3
00234c  17125200  or r4, r4, r5
002350  9f03afca  addli r7, r30, -6832
002354  e7072fcc  storeli.w r2, -6536(r30)
002358  1f018000  addli r2, zero, 64
00235c  674a6fcc  storeli.w r6, -6492(r30)
002360  1f03bfca  addli r6, r30, -6824
002364  e7094fcc  storeli.w r4, -6504(r30)
002368  3301212c  .word 0x2c210133
00236c  73302300  store.d r[3:4], 0(r6)
002370  1f410000  addli r2, zero, 4
002374  9f010002  addli r3, zero, 256
002378  3302412c  .word 0x2c410233
00237c  3381212e  .word 0x2e218133
002380  73b04300  store.d r[5:6], 0(r7)
002384  1f028fca  addli r4, r30, -6848
002388  73302200  store.d r[3:4], 0(r4)
00238c  5b050000  j 40
002390  9f810600  addli r3, r13, 0
002394  1f035fce  addli r6, r30, -6360
002398  9f03dfca  addli r7, r30, -6808
00239c  9f860100  addli r13, r3, 0
0023a0  6b520300  load.d r[5:6], 0(r6)
0023a4  ebda0300  load.d r[22:23], 0(r7)
0023a8  00a00300  mfence { lm, sm, gm }
0023ac  13b14a04  setlt.sl r2, r[22:23], r[5:6]
0023b0  372f01fa  beq r2, zero, -2104
0023b4  9f0d5fce  addli r27, r30, -6360
0023b8  1f0eefca  addli r28, r30, -6800
0023bc  9f0bbfca  addli r23, r30, -6824
0023c0  1f0cafca  addli r24, r30, -6832
0023c4  1f038fca  addli r6, r30, -6848
0023c8  6bd10d00  load.d r[3:4], 0(r27)
0023cc  6bd20b00  load.d r[5:6], 0(r23)
0023d0  eb540c00  load.d r[10:11], 0(r24)
0023d4  8b335119  sub.sl r[8:9], r[3:4], r[22:23]
0023d8  6b510e00  load.d r[3:4], 0(r28)
0023dc  8b377140  min.sl r[16:17], r[3:4], r[8:9]
0023e0  27f17700  addli.d r[3:4], r[16:17], 63
0023e4  0f124160  div.sl r[5:6], r[3:4], r[5:6]
0023e8  0f129270  mod.sl r[5:6], r[5:6], r[10:11]
0023ec  eb540300  load.d r[10:11], 0(r6)
0023f0  0f119164  .word 0x6491110f
0023f4  9f049fca  addli r9, r30, -6840
0023f8  ebd80400  load.d r[18:19], 0(r9)
0023fc  13b34804  setlt.sl r6, r[18:19], r[5:6]
002400  0bb24840  min.sl r[5:6], r[18:19], r[5:6]
002404  0b321151  fmac.sl r[5:6], r[3:4], r[18:19]
002408  b304932c  .word 0x2c9304b3
00240c  1f630000  addli r6, zero, 6
002410  0b219110  add.ul r[3:4], r[3:4], r[10:11]
002414  0b214110  add.ul r[3:4], r[3:4], r[5:6]
002418  17326202  sll.d r[5:6], r[5:6], r6
00241c  17316102  sll.d r[3:4], r[3:4], r6
002420  8b34f240  min.sl r[10:11], r[5:6], r[16:17]
002424  9f028fcd  addli r5, r30, -6464
002428  0b31f140  min.sl r[3:4], r[3:4], r[16:17]
00242c  8b3b9118  sub.sl r[24:25], r[3:4], r[10:11]
002430  33012028  .word 0x28200133
002434  13a12b00  seteq.d r2, r[24:25], r[3:4]
002438  9f010004  addli r3, zero, 512
00243c  b381312e  .word 0x2e3181b3
002440  73b03200  store.d r[4:5], 0(r5)
002444  3b510100  bneq r2, zero, 84
002448  63417fca  loadli.w r2,  -6852(r30)
00244c  e3017fca  loadli.w r3,  -6856(r30)
002450  37a12100  beq r3, r2, 72
002454  33012028  .word 0x28200133
002458  13a12a02  setneq.d r2, r[22:23], r[3:4]
00245c  bb700100  bneq r2, zero, 60
002460  6301ffca  loadli.w r2,  -6792(r30)
002464  b7500100  beq r2, zero, 52
002468  1f038fcd  addli r6, r30, -6464
00246c  9f0d4fca  addli r27, r30, -6880
002470  17b29403  sll.d r[5:6], r[10:11], r25
002474  6b510300  load.d r[3:4], 0(r6)
002478  0bb12b40  min.sl r[3:4], r[24:25], r[3:4]
00247c  1b312100  slli r2, r2, 2
002480  ab0100f0  lui r3, 983040
002484  ebd80d00  load.d r[18:19], 0(r27)
002488  17113100  or r2, r2, r3
00248c  0ba24810  add.ul r[5:6], r[18:19], r[5:6]
002490  7f21a201  l_gm2lm r2, r26, 0(r[5:6])
002494  00a00200  mfence { lm, gm }
002498  33012628  .word 0x28260133
00249c  1f025fcb  addli r4, r30, -6744
0024a0  73302200  store.d r[3:4], 0(r4)
0024a4  13b12704  setlt.sl r2, r[16:17], r[3:4]
0024a8  3b740100  bneq r2, zero, 284
0024ac  6301ffca  loadli.w r2,  -6792(r30)
0024b0  37540100  beq r2, zero, 276
0024b4  1ff17700  addli r2, r15, 63
0024b8  9f018000  addli r3, zero, 64
0024bc  63023fca  loadli.w r4,  -6888(r30)
0024c0  80320002  core_id r5
0024c4  00a00300  mfence { lm, sm, gm }
0024c8  0b113130  div.s r2, r2, r3
0024cc  8b114138  mod.s r3, r2, r4
0024d0  0b114130  div.s r2, r2, r4
0024d4  13923204  setlt.s r4, r5, r3
0024d8  8b913240  min.s r3, r5, r3
0024dc  8b115150  fmac.s r3, r2, r5
0024e0  0b114110  add.s r2, r2, r4
0024e4  2bf20000  lui r4, 15
0024e8  0b113110  add.s r2, r2, r3
0024ec  9bb16100  slli r3, r3, 6
0024f0  1b12f2ff  ori r4, r4, 4095
0024f4  9b326100  slli r5, r2, 6
0024f8  0b91f140  min.s r2, r3, r15
0024fc  80210204  csr_set csr3, r4
002500  00d00100  sync_group
002504  8b91f240  min.s r3, r5, r15
002508  8b912118  sub.s r3, r3, r2
00250c  3ff2c100  blt.s r3, r12, 156
002510  9f070fca  addli r15, r30, -6912
002514  33024028  .word 0x28400233
002518  9bb12100  slli r3, r3, 2
00251c  ebd80700  load.d r[18:19], 0(r15)
002520  13a34800  seteq.d r6, r[18:19], r[5:6]
002524  3312412c  .word 0x2c411233
002528  1b312100  slli r2, r2, 2
00252c  bb600300  bneq r6, zero, 56
002530  2b030000  lui r6, 0
002534  97b79a03  sll.d r[16:17], r[22:23], r25
002538  e3094fcb  loadli.w r19,  -6752(r30)
00253c  2b0600f0  lui r12, 983040
002540  973d9203  sll.d r[28:29], r[5:6], r25
002544  1f030300  addli r6, r6, 0
002548  8ba7f810  add.ul r[16:17], r[18:19], r[16:17]
00254c  1796c100  or r12, r3, r12
002550  0b132310  add.s r6, r6, r2
002554  8ba7b711  add.ul r[16:17], r[16:17], r[28:29]
002558  1f030310  addli r6, r6, 2048
00255c  7f866700  l_gm2sm r12, r6, 0(r[16:17])
002560  1f160000  addli r12, zero, 1
002564  9f0d2fca  addli r27, r30, -6896
002568  b307f028  .word 0x28f007b3
00256c  ebd80d00  load.d r[18:19], 0(r27)
002570  13a3f800  seteq.d r6, r[18:19], r[16:17]
002574  bb500300  bneq r6, zero, 52
002578  9f0d2fca  addli r27, r30, -6896
00257c  97b79a03  sll.d r[16:17], r[22:23], r25
002580  17329203  sll.d r[5:6], r[5:6], r25
002584  ebd80d00  load.d r[18:19], 0(r27)
002588  2b0300f0  lui r6, 983040
00258c  63463fca  loadli.w r12,  -6884(r30)
002590  97916100  or r3, r3, r6
002594  8ba7f810  add.ul r[16:17], r[18:19], r[16:17]
002598  0b112610  add.s r2, r12, r2
00259c  1f160000  addli r12, zero, 1
0025a0  0ba24710  add.ul r[5:6], r[16:17], r[5:6]
0025a4  ff012200  l_gm2sm r3, r2, 0(r[5:6])
0025a8  00a00300  mfence { lm, sm, gm }
0025ac  2bf10000  lui r2, 15
0025b0  1b11f1ff  ori r2, r2, 4095
0025b4  80210104  csr_set csr3, r2
0025b8  00d00100  sync_group
0025bc  63015fca  loadli.w r2,  -6872(r30)
0025c0  e7072fca  storeli.w r2, -6792(r30)
0025c4  1f03efca  addli r6, r30, -6800
0025c8  9f07dfca  addli r15, r30, -6808
0025cc  6b520300  load.d r[5:6], 0(r6)
0025d0  0ba14a10  add.ul r[3:4], r[22:23], r[5:6]
0025d4  73b02700  store.d r[3:4], 0(r15)
0025d8  bfe6c9fe  blt.s r19, r12, -584
0025dc  a70d0100  addli.d r[28:29], r[3:4], 0
0025e0  0bb14318  sub.sl r[3:4], r[8:9], r[5:6]
0025e4  9f09bfca  addli r19, r30, -6824
0025e8  1f04afca  addli r8, r30, -6832
0025ec  9f088fca  addli r17, r30, -6848
0025f0  1f005fce  addli zero, r30, -6360
0025f4  0b312240  min.sl r[3:4], r[5:6], r[3:4]
0025f8  6bd30900  load.d r[7:8], 0(r19)
0025fc  eb570400  load.d r[16:17], 0(r8)
002600  27727100  addli.d r[5:6], r[3:4], 63
002604  0f136264  .word 0x6462130f
002608  0f13f374  .word 0x74f3130f
00260c  ebd70800  load.d r[16:17], 0(r17)
002610  0f12f260  div.sl r[5:6], r[5:6], r[16:17]
002614  9f079fca  addli r15, r30, -6840
002618  ebd80700  load.d r[18:19], 0(r15)
00261c  eb570000  load.d r[16:17], 0(zero)
002620  17200000  xor zero, zero, zero
002624  670a0fcc  storeli.w zero, -6496(r30)
002628  93b9b707  setle.sl r19, r[16:17], r[28:29]
00262c  e7063fcd  storeli.w r19, -6552(r30)
002630  13b46804  setlt.sl r8, r[18:19], r[7:8]
002634  0bb36840  min.sl r[7:8], r[18:19], r[7:8]
002638  0b331251  fmac.sl r[7:8], r[5:6], r[18:19]
00263c  b307f428  .word 0x28f407b3
002640  1f640000  addli r8, zero, 6
002644  0b22f210  add.ul r[5:6], r[5:6], r[16:17]
002648  b307f028  .word 0x28f007b3
00264c  0b226210  add.ul r[5:6], r[5:6], r[7:8]
002650  17338302  sll.d r[7:8], r[7:8], r8
002654  17328202  sll.d r[5:6], r[5:6], r8
002658  8b332340  min.sl r[8:9], r[7:8], r[3:4]
00265c  1f036fca  addli r6, r30, -6864
002660  0b312240  min.sl r[3:4], r[5:6], r[3:4]
002664  6b520300  load.d r[5:6], 0(r6)
002668  8b387118  sub.sl r[18:19], r[3:4], r[8:9]
00266c  17b19a03  sll.d r[3:4], r[22:23], r25
002670  9f0abfcc  addli r21, r30, -6568
002674  1f0b8fcd  addli r22, r30, -6464
002678  0ba24d10  add.ul r[5:6], r[28:29], r[5:6]
00267c  9f0d8fcb  addli r27, r30, -6720
002680  73b07a00  store.d r[8:9], 0(r21)
002684  13a3f800  seteq.d r6, r[18:19], r[16:17]
002688  0b227210  add.ul r[5:6], r[5:6], r[8:9]
00268c  eb530b00  load.d r[8:9], 0(r22)
002690  73b01d01  store.d r[18:19], 0(r27)
002694  17329203  sll.d r[5:6], r[5:6], r25
002698  8bb37840  min.sl r[8:9], r[18:19], r[8:9]
00269c  9f080fcb  addli r17, r30, -6784
0026a0  1f093fcb  addli r18, r30, -6760
0026a4  9bb32300  slli r7, r7, 2
0026a8  e70b7fca  storeli.w r7, -6728(r30)
0026ac  ebd30800  load.d r[8:9], 0(r17)
0026b0  8ba72310  add.ul r[16:17], r[8:9], r[3:4]
0026b4  0ba24310  add.ul r[5:6], r[8:9], r[5:6]
0026b8  9f036fcb  addli r7, r30, -6736
0026bc  73b04300  store.d r[5:6], 0(r7)
0026c0  17926900  or r4, r19, r6
0026c4  1f03cfca  addli r6, r30, -6816
0026c8  7330f900  store.d r[16:17], 0(r18)
0026cc  67064fcc  storeli.w r4, -6560(r30)
0026d0  6b520300  load.d r[5:6], 0(r6)
0026d4  0b212210  add.ul r[3:4], r[5:6], r[3:4]
0026d8  1f022fcb  addli r4, r30, -6768
0026dc  73302200  store.d r[3:4], 0(r4)
0026e0  db040000  j 36
0026e4  9f810600  addli r3, r13, 0
0026e8  63014fcd  loadli.w r2,  -6496(r30)
0026ec  00a00300  mfence { lm, sm, gm }
0026f0  9f860100  addli r13, r3, 0
0026f4  e3094fcb  loadli.w r19,  -6752(r30)
0026f8  1f110100  addli r2, r2, 1
0026fc  670a2fcc  storeli.w r2, -6496(r30)
002700  375231ff  beq r2, r19, -876
002704  1f035fcb  addli r6, r30, -6744
002708  9f038fcd  addli r7, r30, -6464
00270c  6b510300  load.d r[3:4], 0(r6)
002710  6bd20300  load.d r[5:6], 0(r7)
002714  13b12b04  setlt.sl r2, r[24:25], r[3:4]
002718  9bb12000  slli r3, r1, 2
00271c  0bb24b40  min.sl r[5:6], r[24:25], r[5:6]
002720  8b913510  add.s r3, r11, r3
002724  73a04100  store.w r4, 0(r3)
002728  bb7e01fe  bneq r2, zero, -68
00272c  63011fcb  loadli.w r2,  -6776(r30)
002730  e3074fcd  loadli.w r15,  -6496(r30)
002734  9f095fce  addli r19, r30, -6360
002738  9f0a2fcb  addli r21, r30, -6768
00273c  b30db029  .word 0x29b00db3
002740  ebd30900  load.d r[8:9], 0(r19)
002744  0b912710  add.s r2, r15, r2
002748  b312512c  .word 0x2c5112b3
00274c  97b19303  sll.d r[4:5], r[8:9], r25
002750  1bb12700  slli r2, r15, 2
002754  8bb27220  mul.sl r[6:7], r[6:7], r[8:9]
002758  ab030000  lui r7, 0
00275c  1f043fcb  addli r8, r30, -6760
002760  9f830300  addli r7, r7, 0
002764  eb570400  load.d r[16:17], 0(r8)
002768  0b117110  add.s r2, r2, r7
00276c  17b39203  sll.d r[7:8], r[6:7], r25
002770  8ba86710  add.ul r[18:19], r[16:17], r[7:8]
002774  ebd70a00  load.d r[16:17], 0(r21)
002778  e70b2fcc  storeli.w r2, -6472(r30)
00277c  1f018100  addli r2, r2, 64
002780  674b2fcc  storeli.w r2, -6476(r30)
002784  0ba13810  add.ul r[3:4], r[18:19], r[4:5]
002788  1f02efcc  addli r4, r30, -6544
00278c  8ba26710  add.ul r[6:7], r[16:17], r[7:8]
002790  9f035fcd  addli r7, r30, -6488
002794  73302200  store.d r[3:4], 0(r4)
002798  73b05300  store.d r[6:7], 0(r7)
00279c  9f020fcd  addli r5, r30, -6528
0027a0  73b01201  store.d r[18:19], 0(r5)
0027a4  db0b0000  j 92
0027a8  1f035fcd  addli r6, r30, -6488
0027ac  00a00000  mfence { lm }
0027b0  9f2c0000  addli r25, zero, 2
0027b4  9f900000  addli r1, r1, 1
0027b8  1f160000  addli r12, zero, 1
0027bc  6b520300  load.d r[5:6], 0(r6)
0027c0  17b19703  sll.d r[3:4], r[16:17], r25
0027c4  8b804039  mod.u r1, r1, r20
0027c8  0b212210  add.ul r[3:4], r[5:6], r[3:4]
0027cc  1f120700  addli r4, r14, 1
0027d0  9bb22600  slli r5, r13, 2
0027d4  0b174239  mod.s r14, r4, r20
0027d8  2b0200f0  lui r4, 983040
0027dc  17924200  or r4, r5, r4
0027e0  7f32a101  s_lm2gm r4, r26, 0(r[3:4])
0027e4  9f010fd0  addli r3, r30, -6144
0027e8  1b31b700  slli r2, r14, 11
0027ec  0b9d2110  add.s r26, r3, r2
0027f0  13b17d05  setlt.sl r2, r[28:29], r[24:25]
0027f4  9f010000  addli r3, zero, 0
0027f8  9f060000  addli r13, zero, 0
0027fc  b73b01fe  beq r2, zero, -276
002800  9bb12000  slli r3, r1, 2
002804  1f018fcd  addli r2, r30, -6464
002808  9f900000  addli r1, r1, 1
00280c  b30a5029  .word 0x29500ab3
002810  1f095fce  addli r18, r30, -6360
002814  8b913510  add.s r3, r11, r3
002818  eb520100  load.d r[6:7], 0(r2)
00281c  8b904039  mod.s r1, r1, r20
002820  13a45b01  seteq.d r8, r[24:25], r[22:23]
002824  ebe10100  loadext.w r[4:5], 0(r3)
002828  8bad3d10  add.ul r[28:29], r[28:29], r[4:5]
00282c  9bb82000  slli r17, r1, 2
002830  8bb1bb19  sub.sl r[4:5], r[24:25], r[28:29]
002834  8ba79d10  add.ul r[16:17], r[28:29], r[10:11]
002838  8bb15140  min.sl r[4:5], r[4:5], r[6:7]
00283c  eb520900  load.d r[6:7], 0(r18)
002840  a3b10102  slli.d r[4:5], r[4:5], 32
002844  0bb3f218  sub.sl r[7:8], r[6:7], r[16:17]
002848  a3d10102  srai.d r[4:5], r[4:5], 32
00284c  0b333340  min.sl r[7:8], r[7:8], r[4:5]
002850  8b911511  add.s r3, r11, r17
002854  67806100  storeli.w r6, 0(r3)
002858  3b110400  bneq r8, zero, 68
00285c  3f21c300  blt.s r6, r12, 72
002860  3b840600  bneq r13, zero, 256
002864  9f110700  addli r3, r14, 1
002868  9f020fcd  addli r5, r30, -6528
00286c  1b322300  slli r4, r6, 2
002870  2b0300f0  lui r6, 983040
002874  97ba9703  sll.d r[22:23], r[16:17], r25
002878  1f010fd0  addli r2, r30, -6144
00287c  8b914139  mod.s r3, r3, r20
002880  ebd30200  load.d r[8:9], 0(r5)
002884  17126200  or r4, r4, r6
002888  8ba35311  add.ul r[8:9], r[8:9], r[22:23]
00288c  9bb1b100  slli r3, r3, 11
002890  8b113110  add.s r3, r2, r3
002894  7fa23300  l_gm2lm r4, r3, 0(r[8:9])
002898  5b190000  j 200
00289c  a78b0a00  addli.d r[24:25], r[22:23], 0
0028a0  5beaffff  j -176
0028a4  63011fcd  loadli.w r2,  -6520(r30)
0028a8  63024fcd  loadli.w r4,  -6496(r30)
0028ac  3b702200  bneq r4, r2, 28
0028b0  6301dfcc  loadli.w r2,  -6552(r30)
0028b4  37610100  beq r2, zero, 88
0028b8  b7010100  beq r2, zero, 96
0028bc  6301cfcc  loadli.w r2,  -6560(r30)
0028c0  b7110100  beq r2, zero, 100
0028c4  db130000  j 156
0028c8  1f120700  addli r4, r14, 1
0028cc  1f010004  addli r2, zero, 512
0028d0  9f02efcc  addli r5, r30, -6544
0028d4  97b39403  sll.d r[8:9], r[10:11], r25
0028d8  0b124239  mod.s r4, r4, r20
0028dc  0b932b40  min.s r6, r23, r2
0028e0  67806100  storeli.w r6, 0(r3)
0028e4  6bd10200  load.d r[3:4], 0(r5)
0028e8  8b237110  add.ul r[8:9], r[3:4], r[8:9]
0028ec  9b312300  slli r3, r6, 2
0028f0  2b0300f0  lui r6, 983040
0028f4  1f010fd0  addli r2, r30, -6144
0028f8  1b32b200  slli r4, r4, 11
0028fc  97916100  or r3, r3, r6
002900  0b124110  add.s r4, r2, r4
002904  ffa14300  l_gm2lm r3, r4, 0(r[8:9])
002908  5b0b0000  j 88
00290c  9f01bfcc  addli r3, r30, -6568
002910  ebd40100  load.d r[10:11], 0(r3)
002914  bb2e01fe  bneq r2, zero, -88
002918  b30b7029  .word 0x29700bb3
00291c  6301cfcc  loadli.w r2,  -6560(r30)
002920  3b010100  bneq r2, zero, 64
002924  9f110700  addli r3, r14, 1
002928  1f010fd0  addli r2, r30, -6144
00292c  2b0200f0  lui r4, 983040
002930  8b914139  mod.s r3, r3, r20
002934  9bb1b100  slli r3, r3, 11
002938  8b113110  add.s r3, r2, r3
00293c  63017fcb  loadli.w r2,  -6728(r30)
002940  17124100  or r4, r2, r4
002944  1f016fcb  addli r2, r30, -6736
002948  eb520100  load.d r[6:7], 0(r2)
00294c  7fa23200  l_gm2lm r4, r3, 0(r[6:7])
002950  9f01bfcc  addli r3, r30, -6568
002954  1f028fcb  addli r4, r30, -6720
002958  ebd40100  load.d r[10:11], 0(r3)
00295c  eb5b0200  load.d r[24:25], 0(r4)
002960  9fa00000  addli r1, r1, 2
002964  63017fcd  loadli.w r2,  -6472(r30)
002968  9b80f00f  andi r1, r1, 255
00296c  8b804039  mod.u r1, r1, r20
002970  9bb12000  slli r3, r1, 2
002974  8b913510  add.s r3, r11, r3
002978  e3860100  loadli.w r13,  0(r3)
00297c  e3010100  loadli.w r3,  0(r2)
002980  63416fcd  loadli.w r2,  -6476(r30)
002984  3393662a  .word 0x2a669333
002988  63040100  loadli.w r8,  0(r2)
00298c  63414fcd  loadli.w r2,  -6492(r30)
002990  8be80158  neg.f r17, r3
002994  8bb76718  sub.sl r[16:17], r[16:17], r[7:8]
002998  b7230100  beq r2, zero, 232
00299c  3fb8c6fe  blt.s r13, r12, -500
0029a0  63412fcd  loadli.w r2,  -6508(r30)
0029a4  1bb32700  slli r6, r15, 2
0029a8  9f010000  addli r3, zero, 0
0029ac  0b126110  add.s r4, r2, r6
0029b0  2b010000  lui r2, 0
0029b4  1f010100  addli r2, r2, 0
0029b8  8b1c2310  add.s r25, r6, r2
0029bc  1f030000  addli r6, zero, 0
0029c0  8b9a3c10  add.s r21, r25, r3
0029c4  8b123210  add.s r5, r4, r3
0029c8  8b133d10  add.s r7, r26, r3
0029cc  1f038300  addli r6, r6, 64
0029d0  9f810102  addli r3, r3, 256
0029d4  1f860a10  addli r12, r21, 2048
0029d8  1f818210  addli r2, r5, 2112
0029dc  1f890a11  addli r18, r21, 2176
0029e0  9f898a11  addli r19, r21, 2240
0029e4  1f8b8300  addli r22, r7, 64
0029e8  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
0029ec  ca100602  vloads_mask16.mz vr1{mr1}, 0(r12)
0029f0  1f868a10  addli r12, r21, 2112
0029f4  ca120102  vloads_mask16.mz vr5{mr1}, 0(r2)
0029f8  1f810301  addli r2, r7, 128
0029fc  4a140902  vloads_mask16.mz vr8{mr1}, 0(r18)
002a00  ca940902  vloads_mask16.mz vr9{mr1}, 0(r19)
002a04  1f890211  addli r18, r5, 2176
002a08  c2110b02  vload_mask16.mz vr3{mr1}, 0(r22)
002a0c  4a120602  vloads_mask16.mz vr4{mr1}, 0(r12)
002a10  1f860210  addli r12, r5, 2048
002a14  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
002a18  9f828211  addli r5, r5, 2240
002a1c  4a150902  vloads_mask16.mz vr10{mr1}, 0(r18)
002a20  4a130602  vloads_mask16.mz vr6{mr1}, 0(r12)
002a24  1f868301  addli r12, r7, 192
002a28  ca950202  vloads_mask16.mz vr11{mr1}, 0(r5)
002a2c  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
002a30  c2130602  vload_mask16.mz vr7{mr1}, 0(r12)
002a34  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
002a38  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
002a3c  0a112402  vmul.f.mz.rn vr2{mr1}, r8, vr2
002a40  8a113402  vmul.f.mz.rn vr3{mr1}, r8, vr3
002a44  92937802  vadd.f.mz.rn vr7{mr1}, r17, vr7
002a48  0a100402  vmul.f.mz.rn vr0{mr1}, r8, vr0
002a4c  a6924102  vmac.f.mz.rn vr5{mr1}, vr3, vr4
002a50  8a137402  vmul.f.mz.rn vr7{mr1}, r8, vr7
002a54  0e108002  vmul.f.mz.rn vr0{mr1}, vr0, vr8
002a58  26131102  vmac.f.mz.rn vr6{mr1}, vr2, vr1
002a5c  46105b02  vstore_mask16.mz vr5{mr1}, 0(r22)
002a60  8e939302  vmul.f.mz.rn vr7{mr1}, vr7, vr9
002a64  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
002a68  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
002a6c  9690b302  vadd.f.mz.rn vr1{mr1}, vr7, vr11
002a70  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002a74  46101602  vstore_mask16.mz vr1{mr1}, 0(r12)
002a78  3f2dd3fe  blt.s r6, r13, -184
002a7c  dba5ffff  j -724
002a80  63013fcd  loadli.w r2,  -6504(r30)
002a84  b7510100  beq r2, zero, 116
002a88  6301ffcc  loadli.w r2,  -6536(r30)
002a8c  37740100  beq r2, zero, 284
002a90  3fe4c6fe  blt.s r13, r12, -744
002a94  9f010000  addli r3, zero, 0
002a98  1f020d00  addli r4, r26, 0
002a9c  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
002aa0  1f018200  addli r2, r4, 64
002aa4  9f020201  addli r5, r4, 128
002aa8  1f038201  addli r6, r4, 192
002aac  9f818100  addli r3, r3, 64
002ab0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
002ab4  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
002ab8  c2110302  vload_mask16.mz vr3{mr1}, 0(r6)
002abc  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
002ac0  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002ac4  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
002ac8  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
002acc  0a100402  vmul.f.mz.rn vr0{mr1}, r8, vr0
002ad0  8a101402  vmul.f.mz.rn vr1{mr1}, r8, vr1
002ad4  0a112402  vmul.f.mz.rn vr2{mr1}, r8, vr2
002ad8  8a113402  vmul.f.mz.rn vr3{mr1}, r8, vr3
002adc  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
002ae0  1f020202  addli r4, r4, 256
002ae4  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
002ae8  46902202  vstore_mask16.mz vr2{mr1}, 0(r5)
002aec  46103302  vstore_mask16.mz vr3{mr1}, 0(r6)
002af0  bfbed1fe  blt.s r3, r13, -84
002af4  db96ffff  j -844
002af8  bfc2c6fe  blt.s r13, r12, -848
002afc  2b020000  lui r4, 0
002b00  1bb12700  slli r2, r15, 2
002b04  9f010000  addli r3, zero, 0
002b08  1f030000  addli r6, zero, 0
002b0c  1f020200  addli r4, r4, 0
002b10  0b124110  add.s r4, r2, r4
002b14  8b123210  add.s r5, r4, r3
002b18  0b113d10  add.s r2, r26, r3
002b1c  1f038300  addli r6, r6, 64
002b20  9f810102  addli r3, r3, 256
002b24  1f860210  addli r12, r5, 2048
002b28  1f898210  addli r18, r5, 2112
002b2c  9f038100  addli r7, r2, 64
002b30  9f890211  addli r19, r5, 2176
002b34  9f828211  addli r5, r5, 2240
002b38  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
002b3c  4a110602  vloads_mask16.mz vr2{mr1}, 0(r12)
002b40  ca110902  vloads_mask16.mz vr3{mr1}, 0(r18)
002b44  1f060101  addli r12, r2, 128
002b48  1f098101  addli r18, r2, 192
002b4c  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
002b50  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
002b54  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
002b58  42120602  vload_mask16.mz vr4{mr1}, 0(r12)
002b5c  c2120902  vload_mask16.mz vr5{mr1}, 0(r18)
002b60  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
002b64  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002b68  12924802  vadd.f.mz.rn vr4{mr1}, r17, vr4
002b6c  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
002b70  0a100402  vmul.f.mz.rn vr0{mr1}, r8, vr0
002b74  8a101402  vmul.f.mz.rn vr1{mr1}, r8, vr1
002b78  0a124402  vmul.f.mz.rn vr4{mr1}, r8, vr4
002b7c  8a125402  vmul.f.mz.rn vr5{mr1}, r8, vr5
002b80  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
002b84  8e901102  vmul.f.mz.rn vr1{mr1}, vr3, vr1
002b88  0e114302  vmul.f.mz.rn vr2{mr1}, vr6, vr4
002b8c  8e915302  vmul.f.mz.rn vr3{mr1}, vr7, vr5
002b90  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002b94  46901302  vstore_mask16.mz vr1{mr1}, 0(r7)
002b98  46102602  vstore_mask16.mz vr2{mr1}, 0(r12)
002b9c  46103902  vstore_mask16.mz vr3{mr1}, 0(r18)
002ba0  bf5dd3fe  blt.s r6, r13, -140
002ba4  db80ffff  j -1020
002ba8  3f80c6fe  blt.s r13, r12, -1024
002bac  9f020fcc  addli r5, r30, -6656
002bb0  63422fcd  loadli.w r4,  -6508(r30)
002bb4  1bb12700  slli r2, r15, 2
002bb8  9f010000  addli r3, zero, 0
002bbc  1f030000  addli r6, zero, 0
002bc0  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
002bc4  0b122210  add.s r4, r4, r2
002bc8  ea100422  vor.f.mz vr1{mr1}, r8, vr0
002bcc  8b123210  add.s r5, r4, r3
002bd0  0b113d10  add.s r2, r26, r3
002bd4  1f038300  addli r6, r6, 64
002bd8  9f810102  addli r3, r3, 256
002bdc  1f868210  addli r12, r5, 2112
002be0  1f840210  addli r8, r5, 2048
002be4  9f038100  addli r7, r2, 64
002be8  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
002bec  4a120602  vloads_mask16.mz vr4{mr1}, 0(r12)
002bf0  1f860211  addli r12, r5, 2176
002bf4  9f828211  addli r5, r5, 2240
002bf8  ca110402  vloads_mask16.mz vr3{mr1}, 0(r8)
002bfc  1f040101  addli r8, r2, 128
002c00  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
002c04  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
002c08  ca120602  vloads_mask16.mz vr5{mr1}, 0(r12)
002c0c  9f028101  addli r5, r2, 192
002c10  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
002c14  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
002c18  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
002c1c  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
002c20  92937802  vadd.f.mz.rn vr7{mr1}, r17, vr7
002c24  12948802  vadd.f.mz.rn vr8{mr1}, r17, vr8
002c28  a6910002  vmac.f.mz.rn vr3{mr1}, vr1, vr0
002c2c  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
002c30  a6927002  vmac.f.mz.rn vr5{mr1}, vr1, vr7
002c34  26938002  vmac.f.mz.rn vr6{mr1}, vr1, vr8
002c38  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
002c3c  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
002c40  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002c44  46906202  vstore_mask16.mz vr6{mr1}, 0(r5)
002c48  3f1ed3fe  blt.s r6, r13, -124
002c4c  db6bffff  j -1188
002c50  00100000  exit
002c54  00100000  exit
002c58  00100000  exit
002c5c  00100000  exit
002c60  00100000  exit
002c64  00100000  exit
002c68  00100000  exit
002c6c  00100000  exit
002c70  00100000  exit
002c74  00100000  exit
002c78  00100000  exit
002c7c  00100000  exit
002c80  00100000  exit
002c84  00100000  exit
002c88  00100000  exit
002c8c  00100000  exit
002c90  00100000  exit
002c94  00100000  exit
002c98  00100000  exit
002c9c  00100000  exit
002ca0  00100000  exit
002ca4  00100000  exit
002ca8  00100000  exit
002cac  00100000  exit
002cb0  00100000  exit
002cb4  00100000  exit
002cb8  00100000  exit
002cbc  00100000  exit
002cc0  00100000  exit
002cc4  00100000  exit
002cc8  00100000  exit
002ccc  00100000  exit
002cd0  00100000  exit
002cd4  00100000  exit
002cd8  00100000  exit
002cdc  00100000  exit
002ce0  00100000  exit
002ce4  00100000  exit
002ce8  00100000  exit
002cec  00100000  exit
002cf0  00100000  exit
002cf4  00100000  exit
002cf8  00100000  exit
002cfc  00100000  exit
002d00  00100000  exit
002d04  00100000  exit
002d08  00100000  exit
002d0c  00100000  exit
002d10  00100000  exit
002d14  00100000  exit
002d18  00100000  exit
002d1c  00100000  exit
002d20  00100000  exit
002d24  00100000  exit
002d28  00100000  exit
002d2c  00100000  exit
002d30  00100000  exit
002d34  00100000  exit
002d38  00100000  exit
002d3c  00100000  exit
002d40  00100000  exit
002d44  00100000  exit
002d48  00100000  exit
002d4c  00100000  exit
002d50  00100000  exit
002d54  00100000  exit
002d58  00100000  exit
002d5c  00100000  exit
002d60  00100000  exit
002d64  00100000  exit
002d68  00100000  exit
002d6c  00100000  exit
002d70  00100000  exit
002d74  00100000  exit
002d78  00100000  exit
002d7c  00100000  exit
002d80  00100000  exit
002d84  00100000  exit
002d88  00100000  exit
002d8c  00100000  exit
002d90  00100000  exit
002d94  00100000  exit
002d98  00100000  exit
002d9c  00100000  exit
002da0  00100000  exit
002da4  00100000  exit
002da8  00100000  exit
002dac  00100000  exit
002db0  00100000  exit
002db4  00100000  exit
002db8  00100000  exit
002dbc  00100000  exit
002dc0  00100000  exit
002dc4  00100000  exit
002dc8  00100000  exit
002dcc  00100000  exit
002dd0  00100000  exit
002dd4  00100000  exit
002dd8  00100000  exit
002ddc  00100000  exit
002de0  00100000  exit
002de4  00100000  exit
002de8  00100000  exit
002dec  00100000  exit
002df0  00100000  exit
002df4  00100000  exit
002df8  00100000  exit
002dfc  00100000  exit
002e00  00100000  exit
002e04  00100000  exit
002e08  00100000  exit
002e0c  00100000  exit
002e10  00100000  exit
002e14  00100000  exit
002e18  00100000  exit
002e1c  00100000  exit
002e20  00100000  exit
002e24  00100000  exit
002e28  00100000  exit
002e2c  00100000  exit
002e30  00100000  exit
002e34  00100000  exit
002e38  00100000  exit
002e3c  00100000  exit
002e40  00100000  exit
002e44  00100000  exit
002e48  00100000  exit
002e4c  00100000  exit
002e50  00100000  exit
002e54  00100000  exit
002e58  00100000  exit
002e5c  00100000  exit
002e60  00100000  exit
002e64  00100000  exit
002e68  00100000  exit
002e6c  00100000  exit
002e70  00100000  exit
002e74  00100000  exit
002e78  00100000  exit
002e7c  00100000  exit
002e80  00100000  exit
002e84  00100000  exit
002e88  00100000  exit
002e8c  00100000  exit
