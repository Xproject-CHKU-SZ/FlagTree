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
0000f4  1f04afca  addli r8, r30, -6832
0000f8  9f04bfca  addli r9, r30, -6824
0000fc  eb570f01  load.d r[16:17], 16(r30)
000100  eb108f04  load.bu r1, 72(r30)
000104  6b528f01  load.d r[5:6], 24(r30)
000108  1f06efca  addli r12, r30, -6800
00010c  6b558f03  load.d r[11:12], 56(r30)
000110  eb580f03  load.d r[18:19], 48(r30)
000114  eb568f02  load.d r[14:15], 40(r30)
000118  6b538f00  load.d r[7:8], 8(r30)
00011c  9f091fca  addli r19, r30, -6904
000120  1f0a9fca  addli r20, r30, -6840
000124  67430fce  storeli.w zero, -6348(r30)
000128  e7030fce  storeli.w zero, -6344(r30)
00012c  e7430fce  storeli.w zero, -6340(r30)
000130  73302400  store.d r[3:4], 0(r8)
000134  6b510f02  load.d r[3:4], 32(r30)
000138  9b801000  andi r1, r1, 1
00013c  73304600  store.d r[5:6], 0(r12)
000140  1f025fce  addli r4, r30, -6360
000144  9f02ffc9  addli r5, r30, -6920
000148  73b01901  store.d r[18:19], 0(r19)
00014c  7330aa00  store.d r[11:12], 0(r20)
000150  8b900058  neg.s r1, r1
000154  7330f200  store.d r[16:17], 0(r4)
000158  73b0d200  store.d r[14:15], 0(r5)
00015c  73b02400  store.d r[3:4], 0(r9)
000160  1f01000c  addli r2, zero, 1536
000164  3301212c  .word 0x2c210133
000168  1331f104  setlt.sl r2, r[3:4], r[16:17]
00016c  e3010f00  loadli.w r3,  0(r30)
000170  67493fca  storeli.w r3, -6764(r30)
000174  80510102  load_param_i r3, 2
000178  67013fca  storeli.w r3, -6896(r30)
00017c  9f010fcc  addli r3, r30, -6656
000180  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000184  3b070100  bneq r2, zero, 448
000188  2381f703  andi.d r[3:4], r[16:17], 63
00018c  33024028  .word 0x28400233
000190  13214102  setneq.d r2, r[3:4], r[5:6]
000194  bb460100  bneq r2, zero, 432
000198  1ff17700  addli r2, r15, 63
00019c  9f018000  addli r3, zero, 64
0001a0  63042fca  loadli.w r8,  -6896(r30)
0001a4  33024028  .word 0x28400233
0001a8  80340002  core_id r9
0001ac  ab0b0000  lui r23, 0
0001b0  0b113130  div.s r2, r2, r3
0001b4  13a24602  setneq.d r4, r[14:15], r[5:6]
0001b8  9f8b0b00  addli r23, r23, 0
0001bc  8b118138  mod.s r3, r2, r8
0001c0  0b118130  div.s r2, r2, r8
0001c4  1b34d200  slli r8, r4, 13
0001c8  93923404  setlt.s r5, r9, r3
0001cc  8b913440  min.s r3, r9, r3
0001d0  8b119150  fmac.s r3, r2, r9
0001d4  0b115110  add.s r2, r2, r5
0001d8  8b127411  add.s r5, r8, r23
0001dc  0b113110  add.s r2, r2, r3
0001e0  9bb16100  slli r3, r3, 6
0001e4  1b316100  slli r2, r2, 6
0001e8  0b92f140  min.s r4, r3, r15
0001ec  0b11f140  min.s r2, r2, r15
0001f0  b7114100  beq r2, r4, 100
0001f4  33048028  .word 0x28800433
0001f8  0b154118  sub.s r10, r2, r4
0001fc  33112228  .word 0x28221133
000200  93a48600  seteq.d r9, r[14:15], r[9:10]
000204  1b341200  slli r8, r4, 1
000208  1b321500  slli r4, r10, 1
00020c  bb800400  bneq r9, zero, 32
000210  9f140000  addli r9, zero, 1
000214  0b157411  add.s r10, r8, r23
000218  97359102  sll.d r[12:13], r[3:4], r9
00021c  ab0400f0  lui r9, 983040
000220  8ba5b610  add.ul r[12:13], r[14:15], r[12:13]
000224  97149200  or r9, r4, r9
000228  ff84a500  l_gm2sm r9, r10, 0(r[12:13])
00022c  b3049028  .word 0x289004b3
000230  93a49800  seteq.d r9, r[18:19], r[10:11]
000234  bb800400  bneq r9, zero, 32
000238  9f140000  addli r9, zero, 1
00023c  0b948210  add.s r8, r5, r8
000240  17319102  sll.d r[3:4], r[3:4], r9
000244  ab0400f0  lui r9, 983040
000248  0ba12810  add.ul r[3:4], r[18:19], r[3:4]
00024c  17129200  or r4, r4, r9
000250  7f028100  l_gm2sm r4, r8, 0(r[3:4])
000254  00d10002  load_param_i r2, 1
000258  00520002  load_param_i r4, 0
00025c  3301212c  .word 0x2c210133
000260  3305a228  .word 0x28a20533
000264  0f142370  mod.sl r[9:10], r[7:8], r[3:4]
000268  0f112364  .word 0x6423110f
00026c  13328504  setlt.sl r4, r[11:12], r[9:10]
000270  0b348540  min.sl r[9:10], r[11:12], r[9:10]
000274  0b34a150  fmac.sl r[9:10], r[3:4], r[11:12]
000278  3306c228  .word 0x28c20633
00027c  0b21c110  add.ul r[3:4], r[3:4], r[13:14]
000280  0b218110  add.ul r[3:4], r[3:4], r[9:10]
000284  0b346440  min.sl r[9:10], r[9:10], r[7:8]
000288  0b336140  min.sl r[7:8], r[3:4], r[7:8]
00028c  a7010400  addli.d r[4:5], r[9:10], 0
000290  13313306  setle.sl r2, r[7:8], r[4:5]
000294  3b51010c  bneq r2, zero, 6228
000298  9f08cfcc  addli r17, r30, -6560
00029c  9f0a4fcb  addli r21, r30, -6752
0002a0  1f01000c  addli r2, zero, 1536
0002a4  1f0c1fca  addli r24, r30, -6904
0002a8  1f0b6fcb  addli r22, r30, -6736
0002ac  1f763000  addli r12, zero, 31
0002b0  73b06a00  store.d r[7:8], 0(r21)
0002b4  0b333318  sub.sl r[7:8], r[7:8], r[4:5]
0002b8  73b03800  store.d r[4:5], 0(r17)
0002bc  3301212c  .word 0x2c210133
0002c0  1f020018  addli r4, zero, 3072
0002c4  6b590c00  load.d r[19:20], 0(r24)
0002c8  8f16f162  .word 0x62f1168f
0002cc  33012228  .word 0x28220133
0002d0  63022fca  loadli.w r4,  -6896(r30)
0002d4  73306b00  store.d r[7:8], 0(r22)
0002d8  0b312340  min.sl r[3:4], r[7:8], r[3:4]
0002dc  33036028  .word 0x28600333
0002e0  0b112210  add.s r2, r4, r2
0002e4  93216902  setneq.d r3, r[19:20], r[7:8]
0002e8  1f71f1ff  addli r2, r2, -1
0002ec  0b1a4130  div.s r20, r2, r4
0002f0  1f018000  addli r2, zero, 64
0002f4  2b620000  lui r4, 6
0002f8  2bf5ffff  lui r10, 1048575
0002fc  8b942738  mod.s r9, r15, r2
000300  1b14f5ff  ori r8, r10, 4095
000304  9bb5d100  slli r11, r3, 13
000308  1f010400  addli r2, r8, 0
00030c  3f309600  blt.s r12, r9, 12
000310  17319400  sll r2, r8, r9
000314  17218100  xor r2, r2, r8
000318  0b964641  min.s r12, r13, r20
00031c  8b98b210  add.s r17, r5, r11
000320  9f054000  addli r11, zero, 32
000324  1b1505fc  ori r10, r10, 4032
000328  e70b4fcb  storeli.w r20, -6728(r30)
00032c  e708cfcc  storeli.w r12, -6520(r30)
000330  1f068fcb  addli r12, r30, -6720
000334  7330d600  store.d r[14:15], 0(r12)
000338  bfcd9506  blt.s r11, r9, 3952
00033c  1f040000  addli r8, zero, 0
000340  dbee0100  j 3956
000344  1f71f017  addli r2, zero, 3071
000348  1b8e1000  andi r28, r1, 1
00034c  3301212c  .word 0x2c210133
000350  13316104  setlt.sl r2, r[3:4], r[7:8]
000354  3b220100  bneq r2, zero, 136
000358  9f000006  addli r1, zero, 768
00035c  9f71f002  addli r3, zero, 383
000360  b380102a  .word 0x2a1080b3
000364  8f101372  .word 0x7213108f
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
00039c  93b01706  setle.sl r1, r[16:17], r[2:3]
0003a0  bbf00000  bneq r1, zero, 60
0003a4  97991603  or.d r[20:21], r[14:15], r[18:19]
0003a8  b30a5029  .word 0x29500ab3
0003ac  93a05901  seteq.d r1, r[20:21], r[22:23]
0003b0  3bad000a  bneq r1, zero, 5960
0003b4  b3001028  .word 0x281000b3
0003b8  93a11802  setneq.d r3, r[18:19], r[2:3]
0003bc  93a01602  setneq.d r1, r[14:15], r[2:3]
0003c0  2bf10300  lui r2, 63
0003c4  1b110180  ori r2, r2, 2048
0003c8  8b901110  add.s r1, r3, r1
0003cc  8b001130  div.u r1, r2, r1
0003d0  9bc0b000  srli r1, r1, 11
0003d4  3386c02a  .word 0x2ac08633
0003d8  5be70200  j 5944
0003dc  97901603  or.d r[2:3], r[14:15], r[18:19]
0003e0  33048028  .word 0x28800433
0003e4  93a18000  seteq.d r3, r[2:3], r[9:10]
0003e8  bba00100  bneq r3, zero, 40
0003ec  b3013028  .word 0x283001b3
0003f0  93a23802  setneq.d r5, r[18:19], r[4:5]
0003f4  93a13602  setneq.d r3, r[14:15], r[4:5]
0003f8  2be20300  lui r4, 62
0003fc  8b913210  add.s r3, r5, r3
000400  8b013230  div.u r3, r4, r3
000404  9bc1b100  srli r3, r3, 11
000408  3385a12e  .word 0x2ea18533
00040c  db030000  j 28
000410  9f010008  addli r3, zero, 1024
000414  27f2f707  addli.d r[5:6], r[16:17], 1023
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
00044c  9f079fc9  addli r15, r30, -6968
000450  1f07bfc9  addli r14, r30, -6952
000454  3388022b  .word 0x2b028833
000458  e3022fca  loadli.w r5,  -6896(r30)
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
0004a0  9f028fc9  addli r5, r30, -6976
0004a4  93313604  setlt.sl r3, r[13:14], r[4:5]
0004a8  1f025fce  addli r4, r30, -6360
0004ac  73b0c200  store.d r[13:14], 0(r5)
0004b0  6b580200  load.d r[17:18], 0(r4)
0004b4  bbd8010a  bneq r3, zero, 5684
0004b8  9f02afc9  addli r5, r30, -6960
0004bc  b3013028  .word 0x283001b3
0004c0  73b06200  store.d r[7:8], 0(r5)
0004c4  1f03ffc9  addli r6, r30, -6920
0004c8  278b0100  addli.d r[23:24], r[4:5], 0
0004cc  6b5a0300  load.d r[21:22], 0(r6)
0004d0  93213a02  setneq.d r3, r[21:22], r[4:5]
0004d4  2bf20100  lui r4, 31
0004d8  3ba00100  bneq r3, zero, 8
0004dc  1f020000  addli r4, zero, 0
0004e0  9f03000c  addli r7, zero, 1536
0004e4  a772f80b  addli.d r[6:7], r[17:18], 1535
0004e8  9f270000  addli r15, zero, 2
0004ec  27090800  addli.d r[19:20], r[17:18], 0
0004f0  3386c32e  .word 0x2ec38633
0004f4  3388072f  .word 0x2f078833
0004f8  8f92c262  .word 0x62c2928f
0004fc  8f16c972  .word 0x72c9168f
000500  2b06803f  lui r12, 260096
000504  a3b20202  slli.d r[6:7], r[6:7], 32
000508  a3d20202  srai.d r[6:7], r[6:7], 32
00050c  a7f2f2ff  addli.d r[6:7], r[6:7], 32767
000510  8f920273  .word 0x7302928f
000514  1f281000  addli r16, zero, 10
000518  37a00600  beq r13, zero, 8
00051c  9f830600  addli r7, r13, 0
000520  1f0d1fca  addli r26, r30, -6904
000524  a7080b00  addli.d r[18:19], r[23:24], 0
000528  9f890300  addli r19, r7, 0
00052c  9f0ddfca  addli r27, r30, -6808
000530  eb560d00  load.d r[14:15], 0(r26)
000534  93a31601  seteq.d r7, r[14:15], r[18:19]
000538  93a61603  setneq.d r13, r[14:15], r[18:19]
00053c  13271a01  seteq.d r14, r[21:22], r[18:19]
000540  17380503  sll.d r[17:18], r[11:12], r16
000544  73b00d01  store.d r[17:18], 0(r27)
000548  2b080000  lui r16, 0
00054c  e7033fcb  storeli.w r19, -6856(r30)
000550  3399292f  .word 0x2f299933
000554  1f080800  addli r16, r16, 0
000558  0b120211  add.s r4, r4, r16
00055c  1f085fce  addli r16, r30, -6360
000560  6b5a0800  load.d r[21:22], 0(r16)
000564  e74a4fcc  storeli.w r4, -6484(r30)
000568  1f321000  addli r4, zero, 11
00056c  17354502  sll.d r[11:12], r[11:12], r4
000570  1f020000  addli r4, zero, 0
000574  8f381a01  .word 0x011a388f
000578  0b3c2a19  sub.sl r[25:26], r[21:22], r[19:20]
00057c  1f0abfc9  addli r20, r30, -6952
000580  6b590a00  load.d r[19:20], 0(r20)
000584  9737f902  sll.d r[16:17], r[19:20], r15
000588  37a00200  beq r5, zero, 8
00058c  1f020018  addli r4, zero, 3072
000590  93a08002  setneq.d r1, r[2:3], r[9:10]
000594  63445fcd  loadli.w r8,  -6484(r30)
000598  9f046fc9  addli r9, r30, -6992
00059c  9f390000  addli r19, zero, 3
0005a0  674ecfc9  storeli.w r28, -6940(r30)
0005a4  67061fca  storeli.w r1, -6816(r30)
0005a8  9f000440  addli r1, r8, 8192
0005ac  674f1fc8  storeli.w r1, -6924(r30)
0005b0  8f001619  div.f.rn r1, r12, r17
0005b4  1f160000  addli r12, zero, 1
0005b8  7e0006e0  vmmov mr0, r12
0005bc  67431fca  storeli.w r1, -6860(r30)
0005c0  93800202  setneq r1, r5, zero
0005c4  9f025fce  addli r5, r30, -6360
0005c8  1f03dfca  addli r6, r30, -6808
0005cc  ebd80200  load.d r[18:19], 0(r5)
0005d0  67411fca  storeli.w r1, -6892(r30)
0005d4  e3007fca  loadli.w r1,  -6856(r30)
0005d8  9bb01000  slli r1, r1, 1
0005dc  67031fca  storeli.w r1, -6864(r30)
0005e0  eb500300  load.d r[2:3], 0(r6)
0005e4  93b01007  setle.sl r1, r[2:3], r[18:19]
0005e8  67401fca  storeli.w r1, -6908(r30)
0005ec  9780d100  and r1, r3, r13
0005f0  670c1fcc  storeli.w r1, -6464(r30)
0005f4  9790e600  or r1, r13, r14
0005f8  9f06afca  addli r13, r30, -6832
0005fc  1f075fc9  addli r14, r30, -7000
000600  e70b1fcc  storeli.w r1, -6472(r30)
000604  97907100  or r1, r3, r7
000608  9f039fca  addli r7, r30, -6840
00060c  9f010fd0  addli r3, r30, -6144
000610  e7491fcc  storeli.w r1, -6500(r30)
000614  ebd00300  load.d r[2:3], 0(r7)
000618  8ba0f010  add.ul r[2:3], r[2:3], r[16:17]
00061c  73b01400  store.d r[2:3], 0(r9)
000620  ebd00600  load.d r[2:3], 0(r13)
000624  8ba0f010  add.ul r[2:3], r[2:3], r[16:17]
000628  9f07efca  addli r15, r30, -6800
00062c  1f084fca  addli r16, r30, -6880
000630  73301700  store.d r[2:3], 0(r14)
000634  ebd00700  load.d r[2:3], 0(r15)
000638  8ba0a010  add.ul r[2:3], r[2:3], r[11:12]
00063c  1f057fc9  addli r10, r30, -6984
000640  9f058fcb  addli r11, r30, -6720
000644  73301500  store.d r[2:3], 0(r10)
000648  8b904110  add.s r1, r3, r4
00064c  1f01000c  addli r2, zero, 1536
000650  9f013fcb  addli r3, r30, -6760
000654  e7021fca  storeli.w r1, -6872(r30)
000658  9f008440  addli r1, r8, 8256
00065c  1f040fcc  addli r8, r30, -6656
000660  42100402  vload_mask16.mz vr0{mr1}, 0(r8)
000664  e70b1fca  storeli.w r1, -6728(r30)
000668  b300112c  .word 0x2c1100b3
00066c  73b01100  store.d r[2:3], 0(r3)
000670  9730cc02  sll.d r[2:3], r[25:26], r12
000674  73301800  store.d r[2:3], 0(r16)
000678  9f00afc9  addli r1, r30, -6960
00067c  1f018fca  addli r2, r30, -6848
000680  6e300062  vxor.s.mz vr0{mr1}, vr0, vr0
000684  6bd20000  load.d r[5:6], 0(r1)
000688  73308101  store.d r[25:26], 0(r2)
00068c  46900502  vstore_mask16.mz vr0{mr1}, 0(r11)
000690  5b070000  j 56
000694  9f01afc9  addli r3, r30, -6960
000698  1f03dfc9  addli r6, r30, -6936
00069c  9f038fc9  addli r7, r30, -6976
0006a0  6bd20100  load.d r[5:6], 0(r3)
0006a4  6b5b0300  load.d r[23:24], 0(r6)
0006a8  ebd00300  load.d r[2:3], 0(r7)
0006ac  00a00300  mfence { lm, sm, gm }
0006b0  634ecfc9  loadli.w r28,  -6940(r30)
0006b4  0b2b4b10  add.ul r[23:24], r[23:24], r[5:6]
0006b8  13311b04  setlt.sl r2, r[23:24], r[2:3]
0006bc  9f008fca  addli r1, r30, -6848
0006c0  6bdc0000  load.d r[25:26], 0(r1)
0006c4  b710010a  beq r2, zero, 5156
0006c8  9f069fc9  addli r13, r30, -6968
0006cc  9f07bfc9  addli r15, r30, -6952
0006d0  00370002  core_id r14
0006d4  67040fce  storeli.w zero, -6336(r30)
0006d8  ebd00600  load.d r[2:3], 0(r13)
0006dc  0bb16019  sub.sl r[3:4], r[2:3], r[23:24]
0006e0  e3002fca  loadli.w r1,  -6896(r30)
0006e4  8b322240  min.sl r[6:7], r[5:6], r[3:4]
0006e8  0b911238  mod.s r2, r5, r1
0006ec  0b921230  div.s r4, r5, r1
0006f0  80300002  core_id r1
0006f4  93932004  setlt.s r7, r1, r2
0006f8  8b912040  min.s r3, r1, r2
0006fc  1f840100  addli r8, r3, 0
000700  0b141250  fmac.s r8, r4, r1
000704  0b127210  add.s r4, r4, r7
000708  8b135440  min.s r7, r8, r5
00070c  0b128210  add.s r4, r4, r8
000710  6bd40700  load.d r[9:10], 0(r15)
000714  3395a32e  .word 0x2ea39533
000718  0b125240  min.s r4, r4, r5
00071c  0b248b10  add.ul r[9:10], r[23:24], r[9:10]
000720  8b107218  sub.s r1, r4, r7
000724  1f021fcb  addli r4, r30, -6776
000728  8b23a410  add.ul r[8:9], r[9:10], r[11:12]
00072c  670b1fca  storeli.w r1, -6736(r30)
000730  73307200  store.d r[8:9], 0(r4)
000734  9f03dfc9  addli r7, r30, -6936
000738  73b06301  store.d r[23:24], 0(r7)
00073c  3f9ec000  blt.s r1, r12, 900
000740  9f030000  addli r7, zero, 0
000744  37200100  beq r2, zero, 8
000748  8b93e118  sub.s r7, r3, r14
00074c  1ff17200  addli r2, r5, 63
000750  9f008000  addli r1, zero, 64
000754  e3067fce  loadli.w r13,  -6344(r30)
000758  0b111130  div.s r2, r2, r1
00075c  e3006fcb  loadli.w r1,  -6736(r30)
000760  b381302a  .word 0x2a3081b3
000764  9f001fcb  addli r1, r30, -6776
000768  ebd70000  load.d r[16:17], 0(r1)
00076c  0b11e120  mul.s r2, r2, r14
000770  8ba43710  add.ul r[10:11], r[16:17], r[4:5]
000774  3301212c  .word 0x2c210133
000778  8b37f118  sub.sl r[16:17], r[3:4], r[16:17]
00077c  5b050000  j 40
000780  ab000000  lui r1, 0
000784  9f800000  addli r1, r1, 0
000788  0b91b010  add.s r2, r1, r11
00078c  1f010120  addli r2, r2, 4096
000790  73604100  stores.w r4, 0(r2)
000794  1f021fcb  addli r4, r30, -6776
000798  eb500200  load.d r[2:3], 0(r4)
00079c  13b19004  setlt.sl r2, r[2:3], r[10:11]
0007a0  374c0100  beq r2, zero, 784
0007a4  a7f4f4ff  addli.d r[10:11], r[10:11], 32767
0007a8  1f04efca  addli r8, r30, -6800
0007ac  2b0200f0  lui r4, 983040
0007b0  330b6029  .word 0x29600b33
0007b4  e3006fca  loadli.w r1,  -6864(r30)
0007b8  0bb11421  mul.sl r[3:4], r[10:11], r[18:19]
0007bc  1f094fca  addli r18, r30, -6880
0007c0  e3085fca  loadli.w r17,  -6872(r30)
0007c4  1731c102  sll.d r[3:4], r[3:4], r12
0007c8  eb550400  load.d r[12:13], 0(r8)
0007cc  0baa2510  add.ul r[21:22], r[12:13], r[3:4]
0007d0  eb550900  load.d r[12:13], 0(r18)
0007d4  13316c05  setlt.sl r2, r[25:26], r[23:24]
0007d8  97914000  or r3, r1, r4
0007dc  0b2bba10  add.ul r[23:24], r[21:22], r[12:13]
0007e0  ff211b01  l_gm2lm r3, r17, 0(r[23:24])
0007e4  00a00200  mfence { lm, gm }
0007e8  3b280100  bneq r2, zero, 520
0007ec  e3067fca  loadli.w r13,  -6856(r30)
0007f0  e3452fca  loadli.w r11,  -6892(r30)
0007f4  1f010000  addli r2, zero, 0
0007f8  1f040000  addli r8, zero, 0
0007fc  270b0c00  addli.d r[23:24], r[25:26], 0
000800  9f000018  addli r1, zero, 3072
000804  1f160000  addli r12, zero, 1
000808  1f098000  addli r18, zero, 64
00080c  db1c0000  j 228
000810  1f020000  addli r4, zero, 0
000814  9b361d00  slli r13, r26, 1
000818  7e8101e0  vmmov mr2, r3
00081c  8b96d810  add.s r13, r17, r13
000820  9f818600  addli r3, r13, 64
000824  42800604  vload.mz vr0{mr2}, 0(r13)
000828  7e0102e0  vmmov mr2, r4
00082c  42830104  vload.mz vr6{mr2}, 0(r3)
000830  86330000  vfp162float_l.rn vr7, vr0
000834  06700000  vfp162float_h.rn vr0, vr0
000838  06340300  vfp162float_l.rn vr8, vr6
00083c  06730300  vfp162float_h.rn vr6, vr6
000840  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
000844  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000848  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
00084c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
000850  96125002  vadd.f.mz.rn vr5{mr1}, vr0, vr5
000854  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000858  16124302  vadd.f.mz.rn vr4{mr1}, vr6, vr4
00085c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
000860  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
000864  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000868  9f010002  addli r3, zero, 256
00086c  9ba51500  xori r11, r11, 1
000870  9f080fd0  addli r17, r30, -6144
000874  00a00000  mfence { lm }
000878  8b981550  fmac.s r17, r11, r1
00087c  eaf101c0  vsrl.p vr3, r3, vr0
000880  6af221c0  vsrl.p vr4, r3, vr2
000884  9f010001  addli r3, zero, 128
000888  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
00088c  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
000890  eaf101c0  vsrl.p vr3, r3, vr0
000894  6af221c0  vsrl.p vr4, r3, vr2
000898  9f014000  addli r3, zero, 32
00089c  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
0008a0  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
0008a4  ea7109c0  vsrl.p vr3, r18, vr0
0008a8  6a7229c0  vsrl.p vr4, r18, vr2
0008ac  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
0008b0  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
0008b4  eaf101c0  vsrl.p vr3, r3, vr0
0008b8  6af221c0  vsrl.p vr4, r3, vr2
0008bc  9f71f00b  addli r3, zero, 1535
0008c0  b381312e  .word 0x2e3181b3
0008c4  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
0008c8  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
0008cc  13b26105  setlt.sl r4, r[4:5], r[23:24]
0008d0  270b0c00  addli.d r[23:24], r[25:26], 0
0008d4  fa110020  vextract.f r3, vr0{mr0}
0008d8  fa160120  vextract.f r13, vr2{mr0}
0008dc  0b643410  add.f.rn r8, r8, r3
0008e0  0b61d110  add.f.rn r2, r2, r13
0008e4  9f06000c  addli r13, zero, 1536
0008e8  9f01000c  addli r3, zero, 1536
0008ec  37440200  beq r4, zero, 272
0008f0  1f0d3fcb  addli r26, r30, -6760
0008f4  270c0bf4  addli.d r[25:26], r[23:24], 31232
0008f8  eb510d00  load.d r[4:5], 0(r26)
0008fc  93213b04  setlt.ul r3, r[23:24], r[4:5]
000900  bb900100  bneq r3, zero, 36
000904  9ba11500  xori r3, r11, 1
000908  1f020fd0  addli r4, r30, -6144
00090c  173dcc02  sll.d r[27:28], r[25:26], r12
000910  0b921150  fmac.s r4, r3, r1
000914  ab0100f0  lui r3, 983040
000918  0b2daa11  add.ul r[27:28], r[21:22], r[27:28]
00091c  97913000  or r3, r1, r3
000920  ff214d00  l_gm2lm r3, r4, 0(r[27:28])
000924  abf1ffff  lui r3, 1048575
000928  9b9101fc  ori r3, r3, 4032
00092c  178d3600  and r26, r13, r3
000930  9f018fcb  addli r3, r30, -6720
000934  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
000938  92315002  vadd.s.mz vr3{mr1}, zero, vr5
00093c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
000940  12325002  vadd.s.mz vr4{mr1}, zero, vr5
000944  bf21cd00  blt.s r26, r12, 104
000948  9f0d8fcb  addli r27, r30, -6720
00094c  9f010000  addli r3, zero, 0
000950  1f820800  addli r4, r17, 0
000954  c2910d02  vload_mask16.mz vr3{mr1}, 0(r27)
000958  92323002  vadd.s.mz vr5{mr1}, zero, vr3
00095c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000960  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000964  9f0d8200  addli r27, r4, 64
000968  42000202  vload.mz vr0{mr1}, 0(r4)
00096c  9f818100  addli r3, r3, 64
000970  1f020201  addli r4, r4, 128
000974  42830d02  vload.mz vr6{mr1}, 0(r27)
000978  86330000  vfp162float_l.rn vr7, vr0
00097c  06700000  vfp162float_h.rn vr0, vr0
000980  06340300  vfp162float_l.rn vr8, vr6
000984  06730300  vfp162float_h.rn vr6, vr6
000988  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
00098c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000990  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
000994  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
000998  96125002  vadd.f.mz.rn vr5{mr1}, vr0, vr5
00099c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0009a0  16124302  vadd.f.mz.rn vr4{mr1}, vr6, vr4
0009a4  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
0009a8  bffea1ff  blt.s r3, r26, -68
0009ac  3f20dd00  blt.s r26, r13, 8
0009b0  5bd6ffff  j -336
0009b4  0b922639  mod.s r4, r13, r18
0009b8  abf1ffff  lui r3, 1048575
0009bc  9f7d3000  addli r27, zero, 31
0009c0  9b96f1ff  ori r13, r3, 4095
0009c4  9f810600  addli r3, r13, 0
0009c8  3fb04d00  blt.s r27, r4, 12
0009cc  97b14600  sll r3, r13, r4
0009d0  97a1d100  xor r3, r3, r13
0009d4  9f0d4000  addli r27, zero, 32
0009d8  3fa04d00  blt.s r27, r4, 8
0009dc  dbc6ffff  j -460
0009e0  1f02c2ff  addli r4, r4, -32
0009e4  17b24600  sll r4, r13, r4
0009e8  1722d200  xor r4, r4, r13
0009ec  5bc5ffff  j -472
0009f0  e3017fca  loadli.w r3,  -6856(r30)
0009f4  1f040000  addli r8, zero, 0
0009f8  1f010000  addli r2, zero, 0
0009fc  e3406fca  loadli.w r1,  -6860(r30)
000a00  1f099fca  addli r18, r30, -6840
000a04  330a4029  .word 0x29400a33
000a08  9f0b1fcb  addli r23, r30, -6776
000a0c  eb550900  load.d r[12:13], 0(r18)
000a10  0be48020  mul.f.rn r8, r1, r8
000a14  0b611120  mul.f.rn r2, r2, r1
000a18  e3402fcb  loadli.w r1,  -6764(r30)
000a1c  93a84501  seteq.d r17, r[12:13], r[21:22]
000a20  ebd50b00  load.d r[12:13], 0(r23)
000a24  0bbab418  sub.sl r[21:22], r[10:11], r[12:13]
000a28  ab05803f  lui r11, 260096
000a2c  0b628420  mul.f.rn r4, r8, r8
000a30  1b3a2a00  slli r20, r20, 2
000a34  8baa9710  add.ul r[22:23], r[16:17], r[10:11]
000a38  0b614118  sub.f.rn r2, r2, r4
000a3c  0b621110  add.f.rn r4, r2, r1
000a40  9f004fcf  addli r1, r30, -6240
000a44  0f024208  .word 0x0842020f
000a48  0f824518  div.f.rn r4, r11, r4
000a4c  8b954011  add.s r11, r1, r20
000a50  9f008fce  addli r1, r30, -6336
000a54  67808500  storeli.w r8, 0(r11)
000a58  8b955311  add.s r11, r7, r21
000a5c  0b9a4011  add.s r20, r1, r20
000a60  9bb52500  slli r11, r11, 2
000a64  67004a00  storeli.w r4, 0(r20)
000a68  3bd00800  bneq r17, zero, 20
000a6c  ab000000  lui r1, 0
000a70  9f800000  addli r1, r1, 0
000a74  8b981510  add.s r17, r11, r1
000a78  73e08800  stores.w r8, 0(r17)
000a7c  9f00afca  addli r1, r30, -6832
000a80  330a4029  .word 0x29400a33
000a84  1f160000  addli r12, zero, 1
000a88  ebd80000  load.d r[18:19], 0(r1)
000a8c  13a44801  seteq.d r8, r[18:19], r[21:22]
000a90  1f0a5fce  addli r20, r30, -6360
000a94  9f0a8fca  addli r21, r30, -6848
000a98  eb580a00  load.d r[18:19], 0(r20)
000a9c  6bdc0a00  load.d r[25:26], 0(r21)
000aa0  bb5304fe  bneq r8, zero, -780
000aa4  3b730efe  bneq r28, zero, -804
000aa8  1f020100  addli r4, r2, 0
000aac  db9affff  j -812
000ab0  9f00dfc9  addli r1, r30, -6936
000ab4  67433fce  storeli.w r3, -6348(r30)
000ab8  e703dfce  storeli.w r13, -6344(r30)
000abc  6bdb0000  load.d r[23:24], 0(r1)
000ac0  00a00300  mfence { lm, sm, gm }
000ac4  2bf10000  lui r2, 15
000ac8  1b11f1ff  ori r2, r2, 4095
000acc  80210104  csr_set csr3, r2
000ad0  00d00100  sync_group
000ad4  3b020700  bneq r14, zero, 128
000ad8  b7f10200  beq r5, zero, 124
000adc  9f049fca  addli r9, r30, -6840
000ae0  33012028  .word 0x28200133
000ae4  9f200000  addli r1, zero, 2
000ae8  ebd30400  load.d r[8:9], 0(r9)
000aec  93a32300  seteq.d r7, r[8:9], r[3:4]
000af0  97311b02  sll.d r[4:5], r[23:24], r1
000af4  1bb12200  slli r2, r5, 2
000af8  bb900300  bneq r7, zero, 36
000afc  1f046fc9  addli r8, r30, -6992
000b00  ab0200f0  lui r5, 983040
000b04  6b530400  load.d r[7:8], 0(r8)
000b08  ab000000  lui r1, 0
000b0c  97125100  or r5, r2, r5
000b10  9f800000  addli r1, r1, 0
000b14  0b233310  add.ul r[7:8], r[7:8], r[4:5]
000b18  ff121300  s_sm2gm r5, r1, 0(r[7:8])
000b1c  9f00afca  addli r1, r30, -6832
000b20  b3025028  .word 0x285002b3
000b24  ebd30000  load.d r[8:9], 0(r1)
000b28  93a25300  seteq.d r5, r[8:9], r[6:7]
000b2c  bba00200  bneq r5, zero, 40
000b30  9f035fc9  addli r7, r30, -7000
000b34  ebd20300  load.d r[6:7], 0(r7)
000b38  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
000b3c  ab0200f0  lui r5, 983040
000b40  ab000000  lui r1, 0
000b44  9f800000  addli r1, r1, 0
000b48  17115100  or r2, r2, r5
000b4c  1f830020  addli r6, r1, 4096
000b50  7f916100  s_sm2gm r2, r6, 0(r[4:5])
000b54  b3001628  .word 0x281600b3
000b58  9f014fcb  addli r3, r30, -6752
000b5c  73b01100  store.d r[2:3], 0(r3)
000b60  13b11804  setlt.sl r2, r[18:19], r[2:3]
000b64  bb4c01fc  bneq r2, zero, -1232
000b68  e3006fcb  loadli.w r1,  -6736(r30)
000b6c  1f051fcb  addli r10, r30, -6776
000b70  1f010000  addli r2, zero, 0
000b74  9f240000  addli r9, zero, 2
000b78  1f0e0fd0  addli r28, r30, -6144
000b7c  b3037028  .word 0x287003b3
000b80  1f080000  addli r16, zero, 0
000b84  1f476fce  addli r14, r30, -6348
000b88  eb510500  load.d r[4:5], 0(r10)
000b8c  9ff0f0ff  addli r1, r1, -1
000b90  670b1fcc  storeli.w r1, -6480(r30)
000b94  9f007fc9  addli r1, r30, -6984
000b98  8bb11121  mul.sl r[4:5], r[4:5], r[18:19]
000b9c  ebd20000  load.d r[6:7], 0(r1)
000ba0  97b1c102  sll.d r[4:5], r[4:5], r12
000ba4  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
000ba8  9f023fca  addli r5, r30, -6888
000bac  73b03200  store.d r[4:5], 0(r5)
000bb0  db020000  j 20
000bb4  9f001fcd  addli r1, r30, -6520
000bb8  ebd30000  load.d r[8:9], 0(r1)
000bbc  93b11305  setlt.sl r3, r[8:9], r[18:19]
000bc0  37db01fc  beq r3, zero, -1324
000bc4  9f00dfca  addli r1, r30, -6808
000bc8  0bb57818  sub.sl r[11:12], r[18:19], r[8:9]
000bcc  ebd10000  load.d r[4:5], 0(r1)
000bd0  8bbba140  min.sl r[24:25], r[4:5], r[11:12]
000bd4  3fa4cb00  blt.s r23, r12, 264
000bd8  e300cfca  loadli.w r1,  -6816(r30)
000bdc  37840000  beq r1, zero, 256
000be0  e3002fca  loadli.w r1,  -6896(r30)
000be4  00a00300  mfence { lm, sm, gm }
000be8  8b911b38  mod.s r3, r23, r1
000bec  0b921b30  div.s r4, r23, r1
000bf0  80300002  core_id r1
000bf4  93923004  setlt.s r5, r1, r3
000bf8  8b913040  min.s r3, r1, r3
000bfc  8b111250  fmac.s r3, r4, r1
000c00  0b125210  add.s r4, r4, r5
000c04  abf20000  lui r5, 15
000c08  0b123210  add.s r4, r4, r3
000c0c  8b917141  min.s r3, r3, r23
000c10  9b92f2ff  ori r5, r5, 4095
000c14  0b127241  min.s r4, r4, r23
000c18  80a10204  csr_set csr3, r5
000c1c  00d00100  sync_group
000c20  0b123218  sub.s r4, r4, r3
000c24  3f72c200  blt.s r4, r12, 156
000c28  9f00ffc9  addli r1, r30, -6920
000c2c  b3025028  .word 0x285002b3
000c30  1b321200  slli r4, r4, 1
000c34  6bd70000  load.d r[15:16], 0(r1)
000c38  93265700  seteq.d r13, r[15:16], r[6:7]
000c3c  b392512e  .word 0x2e5192b3
000c40  9bb11100  slli r3, r3, 1
000c44  bbc00600  bneq r13, zero, 48
000c48  ab000000  lui r1, 0
000c4c  17bac302  sll.d r[21:22], r[8:9], r12
000c50  97bcc202  sll.d r[26:27], r[6:7], r12
000c54  9f800000  addli r1, r1, 0
000c58  0b2a4711  add.ul r[21:22], r[15:16], r[21:22]
000c5c  ab0700f0  lui r15, 983040
000c60  8b963010  add.s r13, r1, r3
000c64  0b2a9a11  add.ul r[21:22], r[21:22], r[26:27]
000c68  9717f200  or r15, r4, r15
000c6c  9f860640  addli r13, r13, 8192
000c70  ff07da00  l_gm2sm r15, r13, 0(r[21:22])
000c74  9f001fca  addli r1, r30, -6904
000c78  330a4029  .word 0x29400a33
000c7c  1f476fce  addli r14, r30, -6348
000c80  6bd60000  load.d r[13:14], 0(r1)
000c84  93264601  seteq.d r13, r[13:14], r[21:22]
000c88  1f160000  addli r12, zero, 1
000c8c  bbd00600  bneq r13, zero, 52
000c90  9f071fca  addli r15, r30, -6904
000c94  17bac302  sll.d r[21:22], r[8:9], r12
000c98  97b2c202  sll.d r[6:7], r[6:7], r12
000c9c  6bd60700  load.d r[13:14], 0(r15)
000ca0  0b2a4611  add.ul r[21:22], r[13:14], r[21:22]
000ca4  ab0600f0  lui r13, 983040
000ca8  e340efc9  loadli.w r1,  -6924(r30)
000cac  1f160000  addli r12, zero, 1
000cb0  8b225a10  add.ul r[6:7], r[21:22], r[6:7]
000cb4  1712d200  or r4, r4, r13
000cb8  8b913010  add.s r3, r1, r3
000cbc  7f823200  l_gm2sm r4, r3, 0(r[6:7])
000cc0  00a00300  mfence { lm, sm, gm }
000cc4  abf10000  lui r3, 15
000cc8  9b91f1ff  ori r3, r3, 4095
000ccc  80a10104  csr_set csr3, r3
000cd0  00d00100  sync_group
000cd4  e3400fca  loadli.w r1,  -6908(r30)
000cd8  67061fca  storeli.w r1, -6816(r30)
000cdc  e3006fcb  loadli.w r1,  -6736(r30)
000ce0  3f201000  blt.s zero, r1, 8
000ce4  dbb50000  j 1452
000ce8  9f06dfca  addli r13, r30, -6808
000cec  9f000008  addli r1, zero, 1024
000cf0  9f071fcd  addli r15, r30, -6520
000cf4  1f0b5fcb  addli r22, r30, -6744
000cf8  9f0defcc  addli r27, r30, -6544
000cfc  ebd10600  load.d r[4:5], 0(r13)
000d00  b382502a  .word 0x2a5082b3
000d04  8bbc5b40  min.sl r[26:27], r[24:25], r[6:7]
000d08  0baa3310  add.ul r[21:22], r[8:9], r[4:5]
000d0c  8b313518  sub.sl r[4:5], r[11:12], r[4:5]
000d10  97b3c302  sll.d r[8:9], r[8:9], r12
000d14  73309b01  store.d r[26:27], 0(r22)
000d18  9f0c0fcd  addli r25, r30, -6528
000d1c  1f0ddfcc  addli r26, r30, -6552
000d20  73b04701  store.d r[21:22], 0(r15)
000d24  0b3a5540  min.sl r[21:22], r[11:12], r[6:7]
000d28  0bb55140  min.sl r[11:12], r[4:5], r[6:7]
000d2c  9b301a00  slli r1, r20, 1
000d30  73b04c01  store.d r[21:22], 0(r25)
000d34  9f0a3fca  addli r21, r30, -6888
000d38  73b0ad00  store.d r[11:12], 0(r27)
000d3c  1f0a0000  addli r20, zero, 0
000d40  ebd10a00  load.d r[4:5], 0(r21)
000d44  e7471fcc  storeli.w r1, -6532(r30)
000d48  9b301500  slli r1, r10, 1
000d4c  1f050fcb  addli r10, r30, -6784
000d50  9f05bfca  addli r11, r30, -6824
000d54  67061fcc  storeli.w r1, -6560(r30)
000d58  9f00efca  addli r1, r30, -6800
000d5c  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
000d60  73303d00  store.d r[4:5], 0(r26)
000d64  ebd10000  load.d r[4:5], 0(r1)
000d68  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
000d6c  73303500  store.d r[4:5], 0(r10)
000d70  ebd10500  load.d r[4:5], 0(r11)
000d74  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
000d78  9f03ffca  addli r7, r30, -6792
000d7c  73b03300  store.d r[4:5], 0(r7)
000d80  5b030000  j 24
000d84  e3006fcb  loadli.w r1,  -6736(r30)
000d88  1f1a0a00  addli r20, r20, 1
000d8c  9f040000  addli r9, zero, 0
000d90  3f201a00  blt.s r20, r1, 8
000d94  5bc4ffff  j -480
000d98  9f004fcb  addli r1, r30, -6752
000d9c  1f055fcb  addli r10, r30, -6744
000da0  ebd10000  load.d r[4:5], 0(r1)
000da4  eb530500  load.d r[8:9], 0(r10)
000da8  93b13b04  setlt.sl r3, r[24:25], r[4:5]
000dac  1b322100  slli r4, r2, 2
000db0  0b124710  add.s r4, r14, r4
000db4  67007200  storeli.w r7, 0(r4)
000db8  3bbf01fe  bneq r3, zero, -52
000dbc  9f071fcb  addli r15, r30, -6776
000dc0  b3013a28  .word 0x283a01b3
000dc4  9f004fcf  addli r1, r30, -6240
000dc8  97bac802  sll.d r[22:23], r[18:19], r12
000dcc  9f0d4fcd  addli r27, r30, -6496
000dd0  ebd30700  load.d r[8:9], 0(r15)
000dd4  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
000dd8  9b332a00  slli r7, r20, 2
000ddc  1f04ffca  addli r8, r30, -6792
000de0  8b967010  add.s r13, r1, r7
000de4  9f008fce  addli r1, r30, -6336
000de8  8bb11121  mul.sl r[4:5], r[4:5], r[18:19]
000dec  8b937010  add.s r7, r1, r7
000df0  9f000fcb  addli r1, r30, -6784
000df4  97b1c102  sll.d r[4:5], r[4:5], r12
000df8  6bd50000  load.d r[11:12], 0(r1)
000dfc  8b2c3510  add.ul r[26:27], r[11:12], r[4:5]
000e00  6b550400  load.d r[11:12], 0(r8)
000e04  73b09d01  store.d r[26:27], 0(r27)
000e08  0b253510  add.ul r[11:12], r[11:12], r[4:5]
000e0c  8ba15c11  add.ul r[4:5], r[26:27], r[22:23]
000e10  9f0c2fcd  addli r25, r30, -6512
000e14  b30a5029  .word 0x29500ab3
000e18  73b03c00  store.d r[4:5], 0(r25)
000e1c  5b0b0000  j 88
000e20  b390172e  .word 0x2e1790b3
000e24  1f120800  addli r4, r16, 1
000e28  1f160000  addli r12, zero, 1
000e2c  00a00000  mfence { lm }
000e30  ab0100f0  lui r3, 983040
000e34  8bb01a18  sub.sl r[2:3], r[22:23], r[2:3]
000e38  0b183239  mod.s r16, r4, r19
000e3c  97113400  or r3, r8, r3
000e40  1f920d00  addli r4, r27, 1
000e44  13b47a05  setlt.sl r8, r[22:23], r[24:25]
000e48  97b0c002  sll.d r[2:3], r[2:3], r12
000e4c  0b271510  add.ul r[15:16], r[11:12], r[2:3]
000e50  0b013239  mod.u r2, r4, r19
000e54  ff31c701  s_lm2gm r3, r28, 0(r[15:16])
000e58  9b30b800  slli r1, r16, 11
000e5c  9f010fd0  addli r3, r30, -6144
000e60  1f476fce  addli r14, r30, -6348
000e64  0b9e1110  add.s r28, r3, r1
000e68  9f005fce  addli r1, r30, -6360
000e6c  ebd80000  load.d r[18:19], 0(r1)
000e70  375c04fe  beq r8, zero, -236
000e74  9b312100  slli r3, r2, 2
000e78  1f110100  addli r2, r2, 1
000e7c  8b113710  add.s r3, r14, r3
000e80  0b113139  mod.s r2, r2, r19
000e84  ebe10100  loadext.w r[4:5], 0(r3)
000e88  8baa3a10  add.ul r[22:23], r[22:23], r[4:5]
000e8c  1b342100  slli r8, r2, 2
000e90  8bb15b19  sub.sl r[4:5], r[24:25], r[22:23]
000e94  8bbc5819  sub.sl r[26:27], r[18:19], r[22:23]
000e98  0b148710  add.s r8, r14, r8
000e9c  8bb15140  min.sl r[4:5], r[4:5], r[6:7]
000ea0  a3b10102  slli.d r[4:5], r[4:5], 32
000ea4  a3d10102  srai.d r[4:5], r[4:5], 32
000ea8  8bb13c40  min.sl r[4:5], r[26:27], r[4:5]
000eac  67003400  storeli.w r3, 0(r8)
000eb0  3fc0c100  blt.s r3, r12, 16
000eb4  37f10400  beq r9, zero, 92
000eb8  9ff4f4ff  addli r9, r9, -1
000ebc  5b1a0000  j 208
000ec0  e3006fcd  loadli.w r1,  -6480(r30)
000ec4  3b221a00  bneq r20, r1, 136
000ec8  9f001fcd  addli r1, r30, -6520
000ecc  ebdc0000  load.d r[26:27], 0(r1)
000ed0  93b79807  setle.sl r15, r[18:19], r[26:27]
000ed4  bbe20700  bneq r15, zero, 184
000ed8  9f170800  addli r15, r16, 1
000edc  9f0cefcc  addli r25, r30, -6544
000ee0  9f000fd0  addli r1, r30, -6144
000ee4  b391312e  .word 0x2e3191b3
000ee8  8b973739  mod.s r15, r15, r19
000eec  ebd80c00  load.d r[18:19], 0(r25)
000ef0  67001401  storeli.w r17, 0(r8)
000ef4  1bb4b700  slli r8, r15, 11
000ef8  ab0700f0  lui r15, 983040
000efc  0b948010  add.s r8, r1, r8
000f00  e300cfcc  loadli.w r1,  -6560(r30)
000f04  9797f000  or r15, r1, r15
000f08  9f00dfcc  addli r1, r30, -6552
000f0c  db0e0000  j 116
000f10  1f140800  addli r8, r16, 1
000f14  9f074fcd  addli r15, r30, -6496
000f18  9bb11100  slli r3, r3, 1
000f1c  2b0200f0  lui r4, 983040
000f20  97bcca02  sll.d r[26:27], r[22:23], r12
000f24  9f000fd0  addli r1, r30, -6144
000f28  9f040000  addli r9, zero, 0
000f2c  0b143439  mod.s r8, r8, r19
000f30  ebd80700  load.d r[18:19], 0(r15)
000f34  97914100  or r3, r3, r4
000f38  8bac9811  add.ul r[26:27], r[18:19], r[26:27]
000f3c  1b34b400  slli r8, r8, 11
000f40  0b948010  add.s r8, r1, r8
000f44  ffa18c00  l_gm2lm r3, r8, 0(r[26:27])
000f48  db080000  j 68
000f4c  9f170800  addli r15, r16, 1
000f50  9f0c0fcd  addli r25, r30, -6528
000f54  9f000fd0  addli r1, r30, -6144
000f58  b391312e  .word 0x2e3191b3
000f5c  8b973739  mod.s r15, r15, r19
000f60  ebd80c00  load.d r[18:19], 0(r25)
000f64  67001401  storeli.w r17, 0(r8)
000f68  1bb4b700  slli r8, r15, 11
000f6c  ab0700f0  lui r15, 983040
000f70  0b948010  add.s r8, r1, r8
000f74  e340ffcc  loadli.w r1,  -6532(r30)
000f78  9797f000  or r15, r1, r15
000f7c  9f002fcd  addli r1, r30, -6512
000f80  ebd80000  load.d r[18:19], 0(r1)
000f84  8baa3a10  add.ul r[22:23], r[22:23], r[4:5]
000f88  ffa78800  l_gm2lm r15, r8, 0(r[18:19])
000f8c  1f210100  addli r2, r2, 2
000f90  e3810600  loadli.w r3,  0(r13)
000f94  e3880300  loadli.w r17,  0(r7)
000f98  e3008fcd  loadli.w r1,  -6464(r30)
000f9c  1b01f10f  andi r2, r2, 255
000fa0  8b0d3139  mod.u r27, r2, r19
000fa4  1bb12d00  slli r2, r27, 2
000fa8  0b112710  add.s r2, r14, r2
000fac  e3070100  loadli.w r15,  0(r2)
000fb0  0be10158  neg.f r2, r3
000fb4  1bb41700  slli r8, r15, 1
000fb8  b7d30000  beq r1, zero, 244
000fbc  bf99c7fe  blt.s r15, r12, -412
000fc0  1bb21a00  slli r4, r21, 1
000fc4  e3405fcd  loadli.w r1,  -6484(r30)
000fc8  9f010000  addli r3, zero, 0
000fcc  1f0d0000  addli r26, zero, 0
000fd0  8b1c8218  sub.s r25, r4, r8
000fd4  0b929011  add.s r4, r1, r25
000fd8  ab000000  lui r1, 0
000fdc  9f800000  addli r1, r1, 0
000fe0  8b9c1c10  add.s r25, r25, r1
000fe4  0b963c10  add.s r12, r25, r3
000fe8  8b103210  add.s r1, r4, r3
000fec  1f0d8d00  addli r26, r26, 64
000ff0  1f090640  addli r18, r12, 8192
000ff4  1f068640  addli r12, r12, 8256
000ff8  1f870040  addli r14, r1, 8192
000ffc  9f808040  addli r1, r1, 8256
001000  4a000902  vloads.mz vr0{mr1}, 0(r18)
001004  0b193e10  add.s r18, r28, r3
001008  4a020602  vloads.mz vr4{mr1}, 0(r12)
00100c  4a010702  vloads.mz vr2{mr1}, 0(r14)
001010  ca820002  vloads.mz vr5{mr1}, 0(r1)
001014  9f810101  addli r3, r3, 128
001018  1f068900  addli r12, r18, 64
00101c  c2010902  vload.mz vr3{mr1}, 0(r18)
001020  42030602  vload.mz vr6{mr1}, 0(r12)
001024  86b30100  vfp162float_l.rn vr7, vr3
001028  86f10100  vfp162float_h.rn vr3, vr3
00102c  06350300  vfp162float_l.rn vr10, vr6
001030  06730300  vfp162float_h.rn vr6, vr6
001034  92113102  vadd.f.mz.rn vr3{mr1}, r2, vr3
001038  92137102  vadd.f.mz.rn vr7{mr1}, r2, vr7
00103c  86350200  vfp162float_l.rn vr11, vr4
001040  06340000  vfp162float_l.rn vr8, vr0
001044  86340100  vfp162float_l.rn vr9, vr2
001048  86b00200  vfp162float_l.rn vr1, vr5
00104c  06700000  vfp162float_h.rn vr0, vr0
001050  06710100  vfp162float_h.rn vr2, vr2
001054  06720200  vfp162float_h.rn vr4, vr4
001058  86f20200  vfp162float_h.rn vr5, vr5
00105c  1215a102  vadd.f.mz.rn vr10{mr1}, r2, vr10
001060  12136102  vadd.f.mz.rn vr6{mr1}, r2, vr6
001064  8a913802  vmul.f.mz.rn vr3{mr1}, r17, vr3
001068  8a937802  vmul.f.mz.rn vr7{mr1}, r17, vr7
00106c  0a95a802  vmul.f.mz.rn vr10{mr1}, r17, vr10
001070  0a936802  vmul.f.mz.rn vr6{mr1}, r17, vr6
001074  26910102  vmac.f.mz.rn vr2{mr1}, vr3, vr0
001078  a6948302  vmac.f.mz.rn vr9{mr1}, vr7, vr8
00107c  0e15b502  vmul.f.mz.rn vr10{mr1}, vr10, vr11
001080  0e124302  vmul.f.mz.rn vr4{mr1}, vr6, vr4
001084  06510100  vfloat2fp16_h.rn vr2, vr2
001088  16101502  vadd.f.mz.rn vr0{mr1}, vr10, vr1
00108c  96105202  vadd.f.mz.rn vr1{mr1}, vr4, vr5
001090  06910400  vfloat2fp16_l.rn vr2, vr9
001094  06100000  vfloat2fp16_l.rn vr0, vr0
001098  46002902  vstore.mz vr2{mr1}, 0(r18)
00109c  06d00000  vfloat2fp16_h.rn vr0, vr1
0010a0  46000602  vstore.mz vr0{mr1}, 0(r12)
0010a4  3f0dfdfe  blt.s r26, r15, -192
0010a8  5bafffff  j -648
0010ac  e3007fcd  loadli.w r1,  -6472(r30)
0010b0  b7f10000  beq r1, zero, 124
0010b4  e3403fcd  loadli.w r1,  -6500(r30)
0010b8  b7b40000  beq r1, zero, 300
0010bc  bf95c7fe  blt.s r15, r12, -668
0010c0  9f010000  addli r3, zero, 0
0010c4  1f020e00  addli r4, r28, 0
0010c8  42000202  vload.mz vr0{mr1}, 0(r4)
0010cc  9f008200  addli r1, r4, 64
0010d0  9f818100  addli r3, r3, 64
0010d4  c2800002  vload.mz vr1{mr1}, 0(r1)
0010d8  06310000  vfp162float_l.rn vr2, vr0
0010dc  06700000  vfp162float_h.rn vr0, vr0
0010e0  86b10000  vfp162float_l.rn vr3, vr1
0010e4  86f00000  vfp162float_h.rn vr1, vr1
0010e8  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
0010ec  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
0010f0  92113102  vadd.f.mz.rn vr3{mr1}, r2, vr3
0010f4  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0010f8  0a900802  vmul.f.mz.rn vr0{mr1}, r17, vr0
0010fc  0a912802  vmul.f.mz.rn vr2{mr1}, r17, vr2
001100  8a913802  vmul.f.mz.rn vr3{mr1}, r17, vr3
001104  8a901802  vmul.f.mz.rn vr1{mr1}, r17, vr1
001108  06500000  vfloat2fp16_h.rn vr0, vr0
00110c  06100100  vfloat2fp16_l.rn vr0, vr2
001110  46000202  vstore.mz vr0{mr1}, 0(r4)
001114  06900100  vfloat2fp16_l.rn vr0, vr3
001118  1f020201  addli r4, r4, 128
00111c  06d00000  vfloat2fp16_h.rn vr0, vr1
001120  46800002  vstore.mz vr0{mr1}, 0(r1)
001124  bf9ef1fe  blt.s r3, r15, -92
001128  5b9fffff  j -776
00112c  bfd3c7fe  blt.s r15, r12, -780
001130  9bb01a00  slli r1, r21, 1
001134  2b020000  lui r4, 0
001138  9f010000  addli r3, zero, 0
00113c  9f0c0e00  addli r25, r28, 0
001140  8b908018  sub.s r1, r1, r8
001144  1f020200  addli r4, r4, 0
001148  8b101210  add.s r1, r4, r1
00114c  1f828040  addli r4, r1, 8256
001150  9f0082ff  addli r1, r4, -64
001154  42800c02  vload.mz vr0{mr1}, 0(r25)
001158  1f868c00  addli r12, r25, 64
00115c  ca000202  vloads.mz vr1{mr1}, 0(r4)
001160  9f818100  addli r3, r3, 64
001164  1f020201  addli r4, r4, 128
001168  4a810002  vloads.mz vr2{mr1}, 0(r1)
00116c  c2010602  vload.mz vr3{mr1}, 0(r12)
001170  06320000  vfp162float_l.rn vr4, vr0
001174  06700000  vfp162float_h.rn vr0, vr0
001178  86b20100  vfp162float_l.rn vr5, vr3
00117c  86f10100  vfp162float_h.rn vr3, vr3
001180  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
001184  12124102  vadd.f.mz.rn vr4{mr1}, r2, vr4
001188  92125102  vadd.f.mz.rn vr5{mr1}, r2, vr5
00118c  92113102  vadd.f.mz.rn vr3{mr1}, r2, vr3
001190  06b30000  vfp162float_l.rn vr6, vr1
001194  86f00000  vfp162float_h.rn vr1, vr1
001198  0a900802  vmul.f.mz.rn vr0{mr1}, r17, vr0
00119c  0a924802  vmul.f.mz.rn vr4{mr1}, r17, vr4
0011a0  86330100  vfp162float_l.rn vr7, vr2
0011a4  06710100  vfp162float_h.rn vr2, vr2
0011a8  8a925802  vmul.f.mz.rn vr5{mr1}, r17, vr5
0011ac  8a913802  vmul.f.mz.rn vr3{mr1}, r17, vr3
0011b0  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
0011b4  0e924302  vmul.f.mz.rn vr4{mr1}, vr7, vr4
0011b8  0e115302  vmul.f.mz.rn vr2{mr1}, vr6, vr5
0011bc  8e903002  vmul.f.mz.rn vr1{mr1}, vr1, vr3
0011c0  06500000  vfloat2fp16_h.rn vr0, vr0
0011c4  06100200  vfloat2fp16_l.rn vr0, vr4
0011c8  46800c02  vstore.mz vr0{mr1}, 0(r25)
0011cc  06100100  vfloat2fp16_l.rn vr0, vr2
0011d0  9f8c0c01  addli r25, r25, 128
0011d4  06d00000  vfloat2fp16_h.rn vr0, vr1
0011d8  46000602  vstore.mz vr0{mr1}, 0(r12)
0011dc  bfddf1fe  blt.s r3, r15, -140
0011e0  5b88ffff  j -960
0011e4  bff0c7fe  blt.s r15, r12, -964
0011e8  1f060fcc  addli r12, r30, -6656
0011ec  9bb01a00  slli r1, r21, 1
0011f0  63027fcb  loadli.w r4,  -6728(r30)
0011f4  9f010000  addli r3, zero, 0
0011f8  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
0011fc  8b908018  sub.s r1, r1, r8
001200  0b121210  add.s r4, r4, r1
001204  6a910822  vor.f.mz vr2{mr1}, r17, vr0
001208  9f080e00  addli r17, r28, 0
00120c  9f0082ff  addli r1, r4, -64
001210  ca010202  vloads.mz vr3{mr1}, 0(r4)
001214  42800802  vload.mz vr0{mr1}, 0(r17)
001218  9f818100  addli r3, r3, 64
00121c  1f020201  addli r4, r4, 128
001220  ca800002  vloads.mz vr1{mr1}, 0(r1)
001224  9f808800  addli r1, r17, 64
001228  42820002  vload.mz vr4{mr1}, 0(r1)
00122c  86320000  vfp162float_l.rn vr5, vr0
001230  06700000  vfp162float_h.rn vr0, vr0
001234  06330200  vfp162float_l.rn vr6, vr4
001238  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
00123c  06720200  vfp162float_h.rn vr4, vr4
001240  92125102  vadd.f.mz.rn vr5{mr1}, r2, vr5
001244  86b30100  vfp162float_l.rn vr7, vr3
001248  86f10100  vfp162float_h.rn vr3, vr3
00124c  12136102  vadd.f.mz.rn vr6{mr1}, r2, vr6
001250  12124102  vadd.f.mz.rn vr4{mr1}, r2, vr4
001254  06b40000  vfp162float_l.rn vr8, vr1
001258  86f00000  vfp162float_h.rn vr1, vr1
00125c  a6136102  vmac.f.mz.rn vr7{mr1}, vr2, vr6
001260  a6114102  vmac.f.mz.rn vr3{mr1}, vr2, vr4
001264  a6100102  vmac.f.mz.rn vr1{mr1}, vr2, vr0
001268  26145102  vmac.f.mz.rn vr8{mr1}, vr2, vr5
00126c  06900300  vfloat2fp16_l.rn vr0, vr7
001270  86d00000  vfloat2fp16_h.rn vr1, vr1
001274  06d00100  vfloat2fp16_h.rn vr0, vr3
001278  86100400  vfloat2fp16_l.rn vr1, vr8
00127c  46800002  vstore.mz vr0{mr1}, 0(r1)
001280  46801802  vstore.mz vr1{mr1}, 0(r17)
001284  9f880801  addli r17, r17, 128
001288  3f9ef1fe  blt.s r3, r15, -124
00128c  db72ffff  j -1132
001290  9f00dfca  addli r1, r30, -6808
001294  ebd10000  load.d r[4:5], 0(r1)
001298  8ba33310  add.ul r[8:9], r[8:9], r[4:5]
00129c  93b11305  setlt.sl r3, r[8:9], r[18:19]
0012a0  bb9401fc  bneq r3, zero, -1756
0012a4  5b7efeff  j -3088
0012a8  9f84c4ff  addli r9, r9, -32
0012ac  97349400  sll r9, r8, r9
0012b0  17a48400  xor r8, r9, r8
0012b4  9f04ffc9  addli r9, r30, -6920
0012b8  9f054fcb  addli r11, r30, -6752
0012bc  0b9a4810  add.s r20, r17, r4
0012c0  1f025fce  addli r4, r30, -6360
0012c4  63071fcd  loadli.w r14,  -6520(r30)
0012c8  1f8b0860  addli r22, r17, 12288
0012cc  9b801000  andi r1, r1, 1
0012d0  6bd60400  load.d r[13:14], 0(r9)
0012d4  ebd70500  load.d r[16:17], 0(r11)
0012d8  93246900  seteq.d r9, r[19:20], r[7:8]
0012dc  67084fcb  storeli.w r20, -6784(r30)
0012e0  93256600  seteq.d r11, r[13:14], r[7:8]
0012e4  13236602  setneq.d r6, r[13:14], r[7:8]
0012e8  6b560200  load.d r[13:14], 0(r4)
0012ec  80330002  core_id r7
0012f0  8b137720  mul.s r7, r14, r7
0012f4  970aa600  and r21, r12, r10
0012f8  3ba00000  bneq r1, zero, 8
0012fc  67086fcb  storeli.w r22, -6784(r30)
001300  e3002fca  loadli.w r1,  -6896(r30)
001304  7e0001e0  vmmov mr0, r2
001308  170e3300  and r28, r6, r3
00130c  8f3db601  .word 0x01b63d8f
001310  7e0104e0  vmmov mr2, r8
001314  1f140000  addli r8, zero, 1
001318  e7097fca  storeli.w r7, -6760(r30)
00131c  3399232f  .word 0x2f239933
001320  1b3c1600  slli r24, r12, 1
001324  1f021fcb  addli r4, r30, -6776
001328  1f0d0fd0  addli r26, r30, -6144
00132c  9f068fcd  addli r13, r30, -6464
001330  1f050002  addli r10, zero, 256
001334  9f0c8000  addli r25, zero, 64
001338  1f064000  addli r12, zero, 32
00133c  670a0fcc  storeli.w zero, -6496(r30)
001340  fe0104e0  vmmov mr3, r8
001344  73302201  store.d r[19:20], 0(r4)
001348  8b101720  mul.s r1, r14, r1
00134c  67081fcc  storeli.w r1, -6528(r30)
001350  9790b100  or r1, r3, r11
001354  9f015fcb  addli r3, r30, -6744
001358  9f050001  addli r11, zero, 128
00135c  e70b1fcc  storeli.w r1, -6472(r30)
001360  97109300  or r1, r6, r9
001364  9f040700  addli r9, r14, 0
001368  e74a1fcc  storeli.w r1, -6484(r30)
00136c  9f000018  addli r1, zero, 3072
001370  b380102a  .word 0x2a1080b3
001374  73b01100  store.d r[2:3], 0(r3)
001378  1f010fcc  addli r2, r30, -6656
00137c  9bb01a00  slli r1, r21, 1
001380  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001384  670b1fcc  storeli.w r1, -6480(r30)
001388  9f00cfcc  addli r1, r30, -6560
00138c  6bd30000  load.d r[7:8], 0(r1)
001390  6e300062  vxor.s.mz vr0{mr1}, vr0, vr0
001394  46900602  vstore_mask16.mz vr0{mr1}, 0(r13)
001398  db050000  j 44
00139c  1f02cfcc  addli r4, r30, -6560
0013a0  9f066fcb  addli r13, r30, -6736
0013a4  1f076fcb  addli r14, r30, -6736
0013a8  6b530200  load.d r[7:8], 0(r4)
0013ac  6bd10600  load.d r[3:4], 0(r13)
0013b0  27030318  addli.d r[7:8], r[7:8], 3072
0013b4  270101e8  addli.d r[3:4], r[3:4], 29696
0013b8  9330f304  setlt.sl r1, r[7:8], r[16:17]
0013bc  73302700  store.d r[3:4], 0(r14)
0013c0  b79c0002  beq r1, zero, 1828
0013c4  1f095fcb  addli r18, r30, -6744
0013c8  8bb06718  sub.sl r[2:3], r[16:17], r[7:8]
0013cc  9f095fce  addli r19, r30, -6360
0013d0  eb510900  load.d r[4:5], 0(r18)
0013d4  00a00300  mfence { lm, sm, gm }
0013d8  e3073fcb  loadli.w r15,  -6760(r30)
0013dc  8bb63040  min.sl r[14:15], r[2:3], r[4:5]
0013e0  2bf10000  lui r2, 15
0013e4  ebd10900  load.d r[4:5], 0(r19)
0013e8  8b90f618  sub.s r1, r13, r15
0013ec  1b11f1ff  ori r2, r2, 4095
0013f0  8b901440  min.s r1, r9, r1
0013f4  80210104  csr_set csr3, r2
0013f8  1f01000c  addli r2, zero, 1536
0013fc  00d00100  sync_group
001400  8b903020  mul.s r1, r1, r3
001404  0b982040  min.s r16, r1, r2
001408  3fb18000  blt.s r1, r8, 76
00140c  1f091fcb  addli r18, r30, -6776
001410  1f00efca  addli zero, r30, -6800
001414  eb500900  load.d r[2:3], 0(r18)
001418  27890600  addli.d r[19:20], r[14:15], 0
00141c  a7060300  addli.d r[14:15], r[7:8], 0
001420  8b201310  add.ul r[2:3], r[7:8], r[2:3]
001424  8bb03020  mul.sl r[2:3], r[2:3], r[4:5]
001428  2b0200f0  lui r4, 983040
00142c  6b530000  load.d r[7:8], 0(zero)
001430  9b311800  slli r3, r16, 1
001434  17200000  xor zero, zero, zero
001438  97b08002  sll.d r[2:3], r[2:3], r8
00143c  97914100  or r3, r3, r4
001440  8b201310  add.ul r[2:3], r[7:8], r[2:3]
001444  27830600  addli.d r[7:8], r[14:15], 0
001448  a7060900  addli.d r[14:15], r[19:20], 0
00144c  ffa1a001  l_gm2lm r3, r26, 0(r[2:3])
001450  00a00000  mfence { lm }
001454  9f00cfcc  addli r1, r30, -6560
001458  e7490fcd  storeli.w r16, -6500(r30)
00145c  73b06000  store.d r[7:8], 0(r1)
001460  cbb7f602  ble.s r13, r15, 1516
001464  1f036fcb  addli r6, r30, -6736
001468  1f085fcb  addli r16, r30, -6744
00146c  9f830700  addli r7, r15, 0
001470  eb500300  load.d r[2:3], 0(r6)
001474  eb510800  load.d r[4:5], 0(r16)
001478  8bb03040  min.sl r[2:3], r[2:3], r[4:5]
00147c  8b91f018  sub.s r3, r1, r15
001480  9f002fcd  addli r1, r30, -6512
001484  73b0d000  store.d r[14:15], 0(r1)
001488  db090000  j 76
00148c  e3004fcd  loadli.w r1,  -6496(r30)
001490  1f0d0fd0  addli r26, r30, -6144
001494  1f010018  addli r2, zero, 3072
001498  e341ffcc  loadli.w r3,  -6532(r30)
00149c  6309efcc  loadli.w r18,  -6544(r30)
0014a0  e3041fcd  loadli.w r9,  -6520(r30)
0014a4  9ba01000  xori r1, r1, 1
0014a8  e7492fcd  storeli.w r18, -6500(r30)
0014ac  0b9d2050  fmac.s r26, r1, r2
0014b0  670a1fcc  storeli.w r1, -6496(r30)
0014b4  e3000fcd  loadli.w r1,  -6528(r30)
0014b8  1f012fcd  addli r2, r30, -6512
0014bc  eb560100  load.d r[14:15], 0(r2)
0014c0  8b911118  sub.s r3, r3, r1
0014c4  e300dfcc  loadli.w r1,  -6552(r30)
0014c8  9f830000  addli r7, r1, 0
0014cc  3fa0d000  blt.s r1, r13, 8
0014d0  5bb00000  j 1408
0014d4  63017fcb  loadli.w r2,  -6728(r30)
0014d8  1f038fcb  addli r6, r30, -6720
0014dc  e7473fcc  storeli.w r3, -6532(r30)
0014e0  8b907618  sub.s r1, r13, r7
0014e4  8b901440  min.s r1, r9, r1
0014e8  0b113140  min.s r2, r2, r3
0014ec  eb510300  load.d r[4:5], 0(r6)
0014f0  8b173140  min.s r15, r2, r3
0014f4  3fe68000  blt.s r1, r8, 408
0014f8  9f040000  addli r9, zero, 0
0014fc  9f060d00  addli r13, r26, 0
001500  db150000  j 172
001504  16924202  vadd.f.mz.rn vr4{mr1}, vr5, vr4
001508  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00150c  0b977410  add.s r14, r9, r7
001510  9f940400  addli r9, r9, 1
001514  8b968611  add.s r13, r13, r24
001518  1b372700  slli r14, r14, 2
00151c  ea7145c0  vsrl.p vr3, r10, vr4
001520  ea7225c0  vsrl.p vr5, r10, vr2
001524  0b13eb10  add.s r6, r22, r14
001528  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
00152c  16912202  vadd.f.mz.rn vr2{mr1}, vr5, vr2
001530  6af235c0  vsrl.p vr4, r11, vr3
001534  eaf225c0  vsrl.p vr5, r11, vr2
001538  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
00153c  16912202  vadd.f.mz.rn vr2{mr1}, vr5, vr2
001540  6af23cc0  vsrl.p vr4, r25, vr3
001544  eaf22cc0  vsrl.p vr5, r25, vr2
001548  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
00154c  16912202  vadd.f.mz.rn vr2{mr1}, vr5, vr2
001550  6a7236c0  vsrl.p vr4, r12, vr3
001554  ea7226c0  vsrl.p vr5, r12, vr2
001558  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
00155c  16912202  vadd.f.mz.rn vr2{mr1}, vr5, vr2
001560  7a910126  vextract.f r2, vr3{mr3}
001564  fa110126  vextract.f r3, vr2{mr3}
001568  0b610110  add.f.rn r2, r2, zero
00156c  8be10110  add.f.rn r3, r3, zero
001570  0f01b119  div.f.rn r2, r2, r27
001574  8f81b119  div.f.rn r3, r3, r27
001578  0b622120  mul.f.rn r4, r2, r2
00157c  8be14118  sub.f.rn r3, r3, r4
001580  63422fcb  loadli.w r4,  -6764(r30)
001584  2b08803f  lui r16, 260096
001588  0be24110  add.f.rn r4, r3, r4
00158c  73603300  stores.w r3, 0(r6)
001590  0f024208  .word 0x0842020f
001594  0f024818  div.f.rn r4, r16, r4
001598  0b98e810  add.s r16, r17, r14
00159c  73602800  stores.w r2, 0(r16)
0015a0  0b11ea10  add.s r2, r20, r14
0015a4  73604100  stores.w r4, 0(r2)
0015a8  b793f400  beq r9, r15, 228
0015ac  1f018fcd  addli r2, r30, -6464
0015b0  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
0015b4  92315002  vadd.s.mz vr3{mr1}, zero, vr5
0015b8  12315002  vadd.s.mz vr2{mr1}, zero, vr5
0015bc  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0015c0  bfa18a00  blt.s r21, r8, 104
0015c4  1f018fcd  addli r2, r30, -6464
0015c8  9f010000  addli r3, zero, 0
0015cc  1f820600  addli r4, r13, 0
0015d0  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0015d4  92323002  vadd.s.mz vr5{mr1}, zero, vr3
0015d8  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0015dc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0015e0  1f018200  addli r2, r4, 64
0015e4  42030202  vload.mz vr6{mr1}, 0(r4)
0015e8  9f818100  addli r3, r3, 64
0015ec  1f020201  addli r4, r4, 128
0015f0  c2030102  vload.mz vr7{mr1}, 0(r2)
0015f4  06340300  vfp162float_l.rn vr8, vr6
0015f8  06730300  vfp162float_h.rn vr6, vr6
0015fc  86b40300  vfp162float_l.rn vr9, vr7
001600  86f30300  vfp162float_h.rn vr7, vr7
001604  96125402  vadd.f.mz.rn vr5{mr1}, vr8, vr5
001608  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
00160c  16924402  vadd.f.mz.rn vr4{mr1}, vr9, vr4
001610  a6919402  vmac.f.mz.rn vr3{mr1}, vr9, vr9
001614  96125302  vadd.f.mz.rn vr5{mr1}, vr6, vr5
001618  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00161c  16924302  vadd.f.mz.rn vr4{mr1}, vr7, vr4
001620  a6917302  vmac.f.mz.rn vr3{mr1}, vr7, vr7
001624  bffe51ff  blt.s r3, r21, -68
001628  1f025fce  addli r4, r30, -6360
00162c  6b510200  load.d r[3:4], 0(r4)
001630  3fa02a00  blt.s r21, r2, 8
001634  5bdaffff  j -304
001638  0b912420  mul.s r2, r9, r2
00163c  e3016fcd  loadli.w r3,  -6480(r30)
001640  1b311100  slli r2, r2, 1
001644  0b112d10  add.s r2, r26, r2
001648  0b113110  add.s r2, r2, r3
00164c  42030100  vload.mz vr6{mr0}, 0(r2)
001650  1f018100  addli r2, r2, 64
001654  c2030104  vload.mz vr7{mr2}, 0(r2)
001658  06340300  vfp162float_l.rn vr8, vr6
00165c  06730300  vfp162float_h.rn vr6, vr6
001660  86b40300  vfp162float_l.rn vr9, vr7
001664  86f30300  vfp162float_h.rn vr7, vr7
001668  96125402  vadd.f.mz.rn vr5{mr1}, vr8, vr5
00166c  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
001670  16924402  vadd.f.mz.rn vr4{mr1}, vr9, vr4
001674  a6919402  vmac.f.mz.rn vr3{mr1}, vr9, vr9
001678  96125302  vadd.f.mz.rn vr5{mr1}, vr6, vr5
00167c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001680  16924302  vadd.f.mz.rn vr4{mr1}, vr7, vr4
001684  a6917302  vmac.f.mz.rn vr3{mr1}, vr7, vr7
001688  dbcfffff  j -388
00168c  63010fcd  loadli.w r2,  -6528(r30)
001690  1f032fcd  addli r6, r30, -6512
001694  0b922310  add.s r4, r7, r2
001698  6b510300  load.d r[3:4], 0(r6)
00169c  0b114118  sub.s r2, r2, r4
0016a0  e3011fcd  loadli.w r3,  -6520(r30)
0016a4  0b912140  min.s r2, r3, r2
0016a8  9f015fce  addli r3, r30, -6360
0016ac  ebd60100  load.d r[14:15], 0(r3)
0016b0  00a00000  mfence { lm }
0016b4  e7064fcc  storeli.w r4, -6552(r30)
0016b8  0b11d120  mul.s r2, r2, r13
0016bc  0b180148  max.s r16, r2, zero
0016c0  3f318100  blt.s r2, r8, 76
0016c4  9f04cfcc  addli r9, r30, -6560
0016c8  33112228  .word 0x28221133
0016cc  63024fcd  loadli.w r4,  -6496(r30)
0016d0  1f030fd0  addli r6, r30, -6144
0016d4  6bd90400  load.d r[19:20], 0(r9)
0016d8  9f040018  addli r9, zero, 3072
0016dc  1b221200  xori r4, r4, 1
0016e0  0b212910  add.ul r[3:4], r[19:20], r[3:4]
0016e4  1f09efca  addli r18, r30, -6800
0016e8  0b139250  fmac.s r6, r4, r9
0016ec  ab0400f0  lui r9, 983040
0016f0  1b321800  slli r4, r16, 1
0016f4  0b31d120  mul.sl r[3:4], r[3:4], r[14:15]
0016f8  eb560900  load.d r[14:15], 0(r18)
0016fc  17129200  or r4, r4, r9
001700  17318102  sll.d r[3:4], r[3:4], r8
001704  0ba12610  add.ul r[3:4], r[14:15], r[3:4]
001708  7f226100  l_gm2lm r4, r6, 0(r[3:4])
00170c  67070fcd  storeli.w r16, -6544(r30)
001710  bfbb8000  blt.s r1, r8, 748
001714  1f070000  addli r14, zero, 0
001718  9f040d00  addli r9, r26, 0
00171c  5b020000  j 16
001720  1f170700  addli r14, r14, 1
001724  8b948411  add.s r9, r9, r24
001728  375bf700  beq r14, r15, 724
00172c  8b107710  add.s r1, r14, r7
001730  9bb02000  slli r1, r1, 2
001734  0b911810  add.s r2, r17, r1
001738  8b101a10  add.s r1, r20, r1
00173c  6f410100  loads.w r2, 0(r2)
001740  6fc80000  loads.w r16, 0(r1)
001744  8b600158  neg.f r1, r2
001748  37630e00  beq r28, zero, 216
00174c  1f015fce  addli r2, r30, -6360
001750  6b590100  load.d r[19:20], 0(r2)
001754  3f3f89fe  blt.s r18, r8, -52
001758  9f010000  addli r3, zero, 0
00175c  1f020000  addli r4, zero, 0
001760  0b917111  add.s r2, r3, r23
001764  8b963410  add.s r13, r9, r3
001768  0b933210  add.s r6, r5, r3
00176c  1f028200  addli r4, r4, 64
001770  9f810101  addli r3, r3, 128
001774  4a010102  vloads.mz vr2{mr1}, 0(r2)
001778  1f018100  addli r2, r2, 64
00177c  ca010302  vloads.mz vr3{mr1}, 0(r6)
001780  1f038300  addli r6, r6, 64
001784  42820602  vload.mz vr4{mr1}, 0(r13)
001788  ca020102  vloads.mz vr5{mr1}, 0(r2)
00178c  1f818600  addli r2, r13, 64
001790  4a030302  vloads.mz vr6{mr1}, 0(r6)
001794  c2030102  vload.mz vr7{mr1}, 0(r2)
001798  06340200  vfp162float_l.rn vr8, vr4
00179c  06720200  vfp162float_h.rn vr4, vr4
0017a0  86b50300  vfp162float_l.rn vr11, vr7
0017a4  86f30300  vfp162float_h.rn vr7, vr7
0017a8  12948002  vadd.f.mz.rn vr8{mr1}, r1, vr8
0017ac  12924002  vadd.f.mz.rn vr4{mr1}, r1, vr4
0017b0  86340100  vfp162float_l.rn vr9, vr2
0017b4  06b50100  vfp162float_l.rn vr10, vr3
0017b8  06710100  vfp162float_h.rn vr2, vr2
0017bc  86f10100  vfp162float_h.rn vr3, vr3
0017c0  9295b002  vadd.f.mz.rn vr11{mr1}, r1, vr11
0017c4  92937002  vadd.f.mz.rn vr7{mr1}, r1, vr7
0017c8  0a148802  vmul.f.mz.rn vr8{mr1}, r16, vr8
0017cc  0a124802  vmul.f.mz.rn vr4{mr1}, r16, vr4
0017d0  06b00200  vfp162float_l.rn vr0, vr5
0017d4  86300300  vfp162float_l.rn vr1, vr6
0017d8  86f20200  vfp162float_h.rn vr5, vr5
0017dc  06730300  vfp162float_h.rn vr6, vr6
0017e0  8a15b802  vmul.f.mz.rn vr11{mr1}, r16, vr11
0017e4  8a137802  vmul.f.mz.rn vr7{mr1}, r16, vr7
0017e8  26159402  vmac.f.mz.rn vr10{mr1}, vr8, vr9
0017ec  a6112202  vmac.f.mz.rn vr3{mr1}, vr4, vr2
0017f0  0e900502  vmul.f.mz.rn vr0{mr1}, vr11, vr0
0017f4  8e925302  vmul.f.mz.rn vr5{mr1}, vr7, vr5
0017f8  06110500  vfloat2fp16_l.rn vr2, vr10
0017fc  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
001800  96906202  vadd.f.mz.rn vr1{mr1}, vr5, vr6
001804  06d10100  vfloat2fp16_h.rn vr2, vr3
001808  06100000  vfloat2fp16_l.rn vr0, vr0
00180c  46802602  vstore.mz vr2{mr1}, 0(r13)
001810  06d00000  vfloat2fp16_h.rn vr0, vr1
001814  46000102  vstore.mz vr0{mr1}, 0(r2)
001818  3f2d22ff  blt.s r4, r18, -184
00181c  dbe0ffff  j -252
001820  63017fcd  loadli.w r2,  -6472(r30)
001824  37120100  beq r2, zero, 132
001828  63415fcd  loadli.w r2,  -6484(r30)
00182c  b7240100  beq r2, zero, 296
001830  1f015fce  addli r2, r30, -6360
001834  6b590100  load.d r[19:20], 0(r2)
001838  bf2b89fe  blt.s r18, r8, -280
00183c  1f010000  addli r2, zero, 0
001840  9f810400  addli r3, r9, 0
001844  42800102  vload.mz vr0{mr1}, 0(r3)
001848  1f828100  addli r4, r3, 64
00184c  1f018100  addli r2, r2, 64
001850  c2000202  vload.mz vr1{mr1}, 0(r4)
001854  06310000  vfp162float_l.rn vr2, vr0
001858  06700000  vfp162float_h.rn vr0, vr0
00185c  86b10000  vfp162float_l.rn vr3, vr1
001860  86f00000  vfp162float_h.rn vr1, vr1
001864  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
001868  12912002  vadd.f.mz.rn vr2{mr1}, r1, vr2
00186c  92913002  vadd.f.mz.rn vr3{mr1}, r1, vr3
001870  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001874  0a100802  vmul.f.mz.rn vr0{mr1}, r16, vr0
001878  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
00187c  8a113802  vmul.f.mz.rn vr3{mr1}, r16, vr3
001880  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
001884  06500000  vfloat2fp16_h.rn vr0, vr0
001888  06100100  vfloat2fp16_l.rn vr0, vr2
00188c  46800102  vstore.mz vr0{mr1}, 0(r3)
001890  06900100  vfloat2fp16_l.rn vr0, vr3
001894  9f810101  addli r3, r3, 128
001898  06d00000  vfloat2fp16_h.rn vr0, vr1
00189c  46000202  vstore.mz vr0{mr1}, 0(r4)
0018a0  bf1e21ff  blt.s r2, r18, -92
0018a4  dbcfffff  j -388
0018a8  1f015fce  addli r2, r30, -6360
0018ac  6b590100  load.d r[19:20], 0(r2)
0018b0  bf4989fe  blt.s r18, r8, -400
0018b4  9f010000  addli r3, zero, 0
0018b8  1f820400  addli r4, r9, 0
0018bc  1f810b00  addli r2, r23, 0
0018c0  42000202  vload.mz vr0{mr1}, 0(r4)
0018c4  ca000102  vloads.mz vr1{mr1}, 0(r2)
0018c8  9f068200  addli r13, r4, 64
0018cc  1f038100  addli r6, r2, 64
0018d0  9f818100  addli r3, r3, 64
0018d4  1f010101  addli r2, r2, 128
0018d8  c2810602  vload.mz vr3{mr1}, 0(r13)
0018dc  4a010302  vloads.mz vr2{mr1}, 0(r6)
0018e0  06320000  vfp162float_l.rn vr4, vr0
0018e4  06700000  vfp162float_h.rn vr0, vr0
0018e8  86b20100  vfp162float_l.rn vr5, vr3
0018ec  86f10100  vfp162float_h.rn vr3, vr3
0018f0  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0018f4  12924002  vadd.f.mz.rn vr4{mr1}, r1, vr4
0018f8  92925002  vadd.f.mz.rn vr5{mr1}, r1, vr5
0018fc  92913002  vadd.f.mz.rn vr3{mr1}, r1, vr3
001900  06b30000  vfp162float_l.rn vr6, vr1
001904  86f00000  vfp162float_h.rn vr1, vr1
001908  0a100802  vmul.f.mz.rn vr0{mr1}, r16, vr0
00190c  0a124802  vmul.f.mz.rn vr4{mr1}, r16, vr4
001910  86330100  vfp162float_l.rn vr7, vr2
001914  06710100  vfp162float_h.rn vr2, vr2
001918  8a125802  vmul.f.mz.rn vr5{mr1}, r16, vr5
00191c  8a113802  vmul.f.mz.rn vr3{mr1}, r16, vr3
001920  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
001924  0e124302  vmul.f.mz.rn vr4{mr1}, vr6, vr4
001928  8e905302  vmul.f.mz.rn vr1{mr1}, vr7, vr5
00192c  0e113102  vmul.f.mz.rn vr2{mr1}, vr2, vr3
001930  06500000  vfloat2fp16_h.rn vr0, vr0
001934  06100200  vfloat2fp16_l.rn vr0, vr4
001938  46000202  vstore.mz vr0{mr1}, 0(r4)
00193c  06900000  vfloat2fp16_l.rn vr0, vr1
001940  1f020201  addli r4, r4, 128
001944  06500100  vfloat2fp16_h.rn vr0, vr2
001948  46800602  vstore.mz vr0{mr1}, 0(r13)
00194c  bfdd21ff  blt.s r3, r18, -140
001950  5bbaffff  j -560
001954  1f015fce  addli r2, r30, -6360
001958  6b590100  load.d r[19:20], 0(r2)
00195c  3f1789fe  blt.s r18, r8, -572
001960  1f020fcc  addli r4, r30, -6656
001964  9f010000  addli r3, zero, 0
001968  1f010000  addli r2, zero, 0
00196c  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
001970  6a110822  vor.f.mz vr2{mr1}, r16, vr0
001974  0b933210  add.s r6, r5, r3
001978  0b923410  add.s r4, r9, r3
00197c  1f018100  addli r2, r2, 64
001980  9f810101  addli r3, r3, 128
001984  ca000302  vloads.mz vr1{mr1}, 0(r6)
001988  42000202  vload.mz vr0{mr1}, 0(r4)
00198c  1f038300  addli r6, r6, 64
001990  9f068200  addli r13, r4, 64
001994  ca010302  vloads.mz vr3{mr1}, 0(r6)
001998  42820602  vload.mz vr4{mr1}, 0(r13)
00199c  86320000  vfp162float_l.rn vr5, vr0
0019a0  06700000  vfp162float_h.rn vr0, vr0
0019a4  06330200  vfp162float_l.rn vr6, vr4
0019a8  06720200  vfp162float_h.rn vr4, vr4
0019ac  92925002  vadd.f.mz.rn vr5{mr1}, r1, vr5
0019b0  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0019b4  12936002  vadd.f.mz.rn vr6{mr1}, r1, vr6
0019b8  12924002  vadd.f.mz.rn vr4{mr1}, r1, vr4
0019bc  86b30000  vfp162float_l.rn vr7, vr1
0019c0  86f00000  vfp162float_h.rn vr1, vr1
0019c4  06b40100  vfp162float_l.rn vr8, vr3
0019c8  86f10100  vfp162float_h.rn vr3, vr3
0019cc  a6135102  vmac.f.mz.rn vr7{mr1}, vr2, vr5
0019d0  a6100102  vmac.f.mz.rn vr1{mr1}, vr2, vr0
0019d4  26146102  vmac.f.mz.rn vr8{mr1}, vr2, vr6
0019d8  a6114102  vmac.f.mz.rn vr3{mr1}, vr2, vr4
0019dc  06900300  vfloat2fp16_l.rn vr0, vr7
0019e0  06d00000  vfloat2fp16_h.rn vr0, vr1
0019e4  46000202  vstore.mz vr0{mr1}, 0(r4)
0019e8  06100400  vfloat2fp16_l.rn vr0, vr8
0019ec  06d00100  vfloat2fp16_h.rn vr0, vr3
0019f0  46800602  vstore.mz vr0{mr1}, 0(r13)
0019f4  3f0e21ff  blt.s r2, r18, -128
0019f8  5ba5ffff  j -728
0019fc  00a00000  mfence { lm }
001a00  63433fcd  loadli.w r6,  -6500(r30)
001a04  3f206000  blt.s zero, r6, 8
001a08  db50ffff  j -1404
001a0c  9f04cfcc  addli r9, r30, -6560
001a10  b390132e  .word 0x2e1390b3
001a14  9f065fce  addli r13, r30, -6360
001a18  1f07bfca  addli r14, r30, -6824
001a1c  ebd10400  load.d r[4:5], 0(r9)
001a20  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
001a24  ebd10600  load.d r[4:5], 0(r13)
001a28  8bb03020  mul.sl r[2:3], r[2:3], r[4:5]
001a2c  9b311300  slli r3, r6, 1
001a30  2b0200f0  lui r4, 983040
001a34  6b530700  load.d r[7:8], 0(r14)
001a38  97b08002  sll.d r[2:3], r[2:3], r8
001a3c  97914100  or r3, r3, r4
001a40  8b201310  add.ul r[2:3], r[7:8], r[2:3]
001a44  ffb1a001  s_lm2gm r3, r26, 0(r[2:3])
001a48  db48ffff  j -1468
001a4c  63493fcd  loadli.w r18,  -6500(r30)
001a50  00a00300  mfence { lm, sm, gm }
001a54  abf00000  lui r1, 15
001a58  1f014fcb  addli r2, r30, -6752
001a5c  9b90f0ff  ori r1, r1, 4095
001a60  80a10004  csr_set csr3, r1
001a64  00d00100  sync_group
001a68  eb570100  load.d r[16:17], 0(r2)
001a6c  80300002  core_id r1
001a70  bbb400fc  bneq r1, zero, -1748
001a74  bfa486fc  blt.s r13, r8, -1752
001a78  9f099fca  addli r19, r30, -6840
001a7c  b3001028  .word 0x281000b3
001a80  9f01cfcc  addli r3, r30, -6560
001a84  6bd30900  load.d r[7:8], 0(r19)
001a88  13221300  seteq.d r4, r[7:8], r[2:3]
001a8c  ebd00100  load.d r[2:3], 0(r3)
001a90  9f210000  addli r3, zero, 2
001a94  97b03002  sll.d r[2:3], r[2:3], r3
001a98  9bb12600  slli r3, r13, 2
001a9c  3b500200  bneq r4, zero, 20
001aa0  2b0200f0  lui r4, 983040
001aa4  0b231310  add.ul r[7:8], r[7:8], r[2:3]
001aa8  17924100  or r4, r3, r4
001aac  7f121301  s_sm2gm r4, r17, 0(r[7:8])
001ab0  9f09afca  addli r19, r30, -6832
001ab4  33036028  .word 0x28600333
001ab8  ebd60900  load.d r[14:15], 0(r19)
001abc  13a26600  seteq.d r4, r[14:15], r[7:8]
001ac0  3b7302fc  bneq r4, zero, -1828
001ac4  9f06afca  addli r13, r30, -6832
001ac8  2b0200f0  lui r4, 983040
001acc  6bd30600  load.d r[7:8], 0(r13)
001ad0  97914100  or r3, r3, r4
001ad4  63020fcb  loadli.w r4,  -6784(r30)
001ad8  8b201310  add.ul r[2:3], r[7:8], r[2:3]
001adc  ff914000  s_sm2gm r3, r4, 0(r[2:3])
001ae0  db17ffff  j -1860
001ae4  67432fcf  storeli.w r18, -6348(r30)
001ae8  9f0e0fc9  addli sp, r30, -7040
001aec  9f8e0e37  addli sp, sp, 7040
001af0  00a00300  mfence { lm, sm, gm }
001af4  00100000  exit
001af8  9f000008  addli r1, zero, 1024
001afc  27f1f707  addli.d r[3:4], r[16:17], 1023
001b00  3382402a  .word 0x2a408233
001b04  8f104162  .word 0x6241108f
001b08  a3b00002  slli.d r[2:3], r[2:3], 32
001b0c  23d60002  srai.d r[13:14], r[2:3], 32
001b10  80d00002  load_param_i r1, 1
001b14  80510002  load_param_i r3, 0
001b18  00340002  core_id r8
001b1c  1f0c8fca  addli r24, r30, -6848
001b20  0b111338  mod.s r2, r6, r1
001b24  8b101330  div.s r1, r6, r1
001b28  13922104  setlt.s r4, r3, r2
001b2c  0b912140  min.s r2, r3, r2
001b30  0b913050  fmac.s r2, r1, r3
001b34  8b186140  min.s r17, r2, r6
001b38  8b904010  add.s r1, r1, r4
001b3c  8b902010  add.s r1, r1, r2
001b40  1f012000  addli r2, zero, 16
001b44  0b996040  min.s r18, r1, r6
001b48  9b00f400  andi r1, r8, 15
001b4c  8b1b1919  sub.s r23, r18, r17
001b50  0b922b30  div.s r4, r23, r2
001b54  9b314200  slli r3, r4, 4
001b58  8b923b18  sub.s r5, r23, r3
001b5c  13935004  setlt.s r6, r1, r5
001b60  8b915040  min.s r3, r1, r5
001b64  9f830100  addli r7, r3, 0
001b68  8b131250  fmac.s r7, r4, r1
001b6c  0b136210  add.s r6, r4, r6
001b70  1b424400  srli r4, r8, 4
001b74  0b137310  add.s r6, r6, r7
001b78  8b937341  min.s r7, r7, r23
001b7c  33048228  .word 0x28820433
001b80  0b137341  min.s r6, r6, r23
001b84  73308c00  store.d r[9:10], 0(r24)
001b88  0b941311  add.s r8, r7, r17
001b8c  67437fca  storeli.w r7, -6860(r30)
001b90  0b171311  add.s r14, r6, r17
001b94  e7078fca  storeli.w r8, -6792(r30)
001b98  67036fca  storeli.w r6, -6864(r30)
001b9c  cb357302  ble.s r6, r7, 1388
001ba0  1f038000  addli r6, zero, 64
001ba4  e7091fcb  storeli.w r17, -6760(r30)
001ba8  9f084fcb  addli r17, r30, -6752
001bac  a7f37700  addli.d r[8:9], r[16:17], 63
001bb0  e70befca  storeli.w r14, -6728(r30)
001bb4  67082fcb  storeli.w r18, -6784(r30)
001bb8  1f095fcb  addli r18, r30, -6744
001bbc  9f0c8fca  addli r25, r30, -6848
001bc0  1f0c000c  addli r24, zero, 1536
001bc4  b304932c  .word 0x2c9304b3
001bc8  73b0c800  store.d r[13:14], 0(r17)
001bcc  73305901  store.d r[22:23], 0(r18)
001bd0  1f0b8fcd  addli r22, r30, -6464
001bd4  1f030002  addli r6, zero, 256
001bd8  9f0a6fcb  addli r21, r30, -6736
001bdc  8f969362  .word 0x6293968f
001be0  1f450000  addli r10, zero, 4
001be4  73b03a01  store.d r[20:21], 0(r21)
001be8  b305b52c  .word 0x2cb505b3
001bec  8f95b676  .word 0x76b6958f
001bf0  7330db00  store.d r[14:15], 0(r22)
001bf4  b306d32c  .word 0x2cd306b3
001bf8  0f93d364  .word 0x64d3930f
001bfc  ebd60c00  load.d r[14:15], 0(r25)
001c00  13b4b604  setlt.sl r8, r[14:15], r[12:13]
001c04  8bb5b640  min.sl r[12:13], r[14:15], r[12:13]
001c08  8b35d350  fmac.sl r[12:13], r[7:8], r[14:15]
001c0c  9f260000  addli r13, zero, 2
001c10  b38a562b  .word 0x2b568ab3
001c14  ab06803f  lui r13, 260096
001c18  33048428  .word 0x28840433
001c1c  0b238310  add.ul r[7:8], r[7:8], r[9:10]
001c20  1f640000  addli r8, zero, 6
001c24  0b23b310  add.ul r[7:8], r[7:8], r[12:13]
001c28  97b58502  sll.d r[12:13], r[12:13], r8
001c2c  17348302  sll.d r[9:10], r[7:8], r8
001c30  0bb3f540  min.sl r[7:8], r[12:13], r[16:17]
001c34  b305bc28  .word 0x28bc05b3
001c38  0b34f440  min.sl r[9:10], r[9:10], r[16:17]
001c3c  0b376418  sub.sl r[15:16], r[9:10], r[7:8]
001c40  2778f70b  addli.d r[17:18], r[15:16], 1535
001c44  0f18b860  div.sl r[17:18], r[17:18], r[12:13]
001c48  23380802  slli.d r[17:18], r[17:18], 32
001c4c  23580802  srai.d r[17:18], r[17:18], 32
001c50  a779f8ff  addli.d r[20:21], r[17:18], 32767
001c54  8f18b772  .word 0x72b7188f
001c58  1ff81b00  addli r16, r23, 15
001c5c  8f955977  .word 0x7759958f
001c60  37a00800  beq r17, zero, 8
001c64  1f8c0800  addli r24, r17, 0
001c68  0b182830  div.s r16, r16, r2
001c6c  9b382200  slli r17, r4, 2
001c70  33192c29  .word 0x292c1933
001c74  1f020000  addli r4, zero, 0
001c78  37a00200  beq r5, zero, 8
001c7c  0b921118  sub.s r4, r3, r1
001c80  e7087fcb  storeli.w r23, -6776(r30)
001c84  9f0b5fce  addli r23, r30, -6360
001c88  674ecfc9  storeli.w r28, -6940(r30)
001c8c  93216402  setneq.d r3, r[9:10], r[7:8]
001c90  9f0c8fcd  addli r25, r30, -6464
001c94  0b372719  sub.sl r[15:16], r[15:16], r[19:20]
001c98  1f190000  addli r18, zero, 1
001c9c  0b121850  fmac.s r4, r16, r1
001ca0  9f090018  addli r19, zero, 3072
001ca4  9f000000  addli r1, zero, 0
001ca8  6bda0b00  load.d r[21:22], 0(r23)
001cac  ab020000  lui r5, 0
001cb0  9f820200  addli r5, r5, 0
001cb4  0f3b6a01  .word 0x016a3b0f
001cb8  6bda0c00  load.d r[21:22], 0(r25)
001cbc  8b921211  add.s r5, r5, r17
001cc0  80380002  core_id r17
001cc4  93882804  setlt.u r17, r17, r2
001cc8  0b11aa40  min.s r2, r20, r10
001ccc  1f057fcd  addli r10, r30, -6472
001cd0  173a2303  sll.d r[21:22], r[7:8], r18
001cd4  7330e500  store.d r[15:16], 0(r10)
001cd8  37a00500  beq r11, zero, 8
001cdc  9f000018  addli r1, zero, 3072
001ce0  0f856619  div.f.rn r10, r13, r22
001ce4  e7068fcd  storeli.w r24, -6552(r30)
001ce8  1f0defca  addli r26, r30, -6800
001cec  1f0b0fcd  addli r22, r30, -6528
001cf0  0b112149  max.s r2, r2, r18
001cf4  932c6400  seteq.d r25, r[9:10], r[7:8]
001cf8  9f03efcc  addli r7, r30, -6544
001cfc  9f070000  addli r15, zero, 0
001d00  1f0e0000  addli r28, zero, 0
001d04  9f7b3000  addli r23, zero, 31
001d08  9f0d0001  addli r27, zero, 128
001d0c  7e0009e0  vmmov mr0, r18
001d10  670c2fca  storeli.w r2, -6720(r30)
001d14  1f010fd0  addli r2, r30, -6144
001d18  670bafcc  storeli.w r10, -6480(r30)
001d1c  13850502  setneq r10, r11, zero
001d20  1f068000  addli r12, zero, 64
001d24  9f054000  addli r11, zero, 32
001d28  6706afcc  storeli.w r10, -6560(r30)
001d2c  1b351c00  slli r10, r24, 1
001d30  178c3800  and r24, r17, r3
001d34  e74aafcc  storeli.w r10, -6484(r30)
001d38  1f850201  addli r10, r5, 128
001d3c  9f822201  addli r5, r5, 144
001d40  67098fcd  storeli.w r24, -6512(r30)
001d44  670aafcc  storeli.w r10, -6496(r30)
001d48  6305ffca  loadli.w r10,  -6792(r30)
001d4c  e7495fcc  storeli.w r5, -6500(r30)
001d50  8b11a218  sub.s r3, r4, r10
001d54  e7083fcc  storeli.w r3, -6520(r30)
001d58  eb510d00  load.d r[4:5], 0(r26)
001d5c  8ba14111  add.ul r[4:5], r[4:5], r[21:22]
001d60  0b1a1110  add.s r20, r2, r1
001d64  9f00000c  addli r1, zero, 1536
001d68  9f0a0002  addli r21, zero, 256
001d6c  73303b00  store.d r[4:5], 0(r22)
001d70  1f027fcd  addli r4, r30, -6472
001d74  b382502a  .word 0x2a5082b3
001d78  9f70f00b  addli r1, zero, 1535
001d7c  630b7fcb  loadli.w r22,  -6728(r30)
001d80  e7474fcd  storeli.w r20, -6532(r30)
001d84  6b580200  load.d r[17:18], 0(r4)
001d88  b386d02a  .word 0x2ad086b3
001d8c  17312803  sll.d r[3:4], r[17:18], r18
001d90  73b02300  store.d r[3:4], 0(r7)
001d94  1f010fcc  addli r2, r30, -6656
001d98  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001d9c  ee300062  vxor.s.mz vr1{mr1}, vr0, vr0
001da0  db020000  j 20
001da4  73603240  stores.w r3, 1024(r4)
001da8  00a00000  mfence { lm }
001dac  3f206501  blt.s r10, r22, 8
001db0  5b630000  j 792
001db4  1f7bfbff  addli r22, r22, -1
001db8  3ba90c00  bneq r25, zero, 584
001dbc  1f0c5fce  addli r24, r30, -6360
001dc0  b3113b2c  .word 0x2c3b11b3
001dc4  1f0d0fcd  addli r26, r30, -6528
001dc8  b3049028  .word 0x289004b3
001dcc  eb500c00  load.d r[2:3], 0(r24)
001dd0  8bb11120  mul.sl r[4:5], r[4:5], r[2:3]
001dd4  ab0000f0  lui r1, 983040
001dd8  eb530d00  load.d r[8:9], 0(r26)
001ddc  63415fcd  loadli.w r2,  -6484(r30)
001de0  97b12103  sll.d r[4:5], r[4:5], r18
001de4  97101100  or r1, r2, r1
001de8  8ba33310  add.ul r[8:9], r[8:9], r[4:5]
001dec  1f02efcc  addli r4, r30, -6544
001df0  93319804  setlt.sl r3, r[17:18], r[10:11]
001df4  eb540200  load.d r[10:11], 0(r4)
001df8  8ba49310  add.ul r[10:11], r[8:9], r[10:11]
001dfc  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
001e00  00a00200  mfence { lm, gm }
001e04  3bb70100  bneq r3, zero, 460
001e08  e307dfcc  loadli.w r15,  -6552(r30)
001e0c  e300cfcc  loadli.w r1,  -6560(r30)
001e10  1f0c0000  addli r24, zero, 0
001e14  1f0d0000  addli r26, zero, 0
001e18  5b1a0000  j 208
001e1c  1f020000  addli r4, zero, 0
001e20  1b311e00  slli r2, r28, 1
001e24  7e8101e0  vmmov mr2, r3
001e28  0b112a10  add.s r2, r20, r2
001e2c  42000104  vload.mz vr0{mr2}, 0(r2)
001e30  1f018100  addli r2, r2, 64
001e34  7e0102e0  vmmov mr2, r4
001e38  42030104  vload.mz vr6{mr2}, 0(r2)
001e3c  86330000  vfp162float_l.rn vr7, vr0
001e40  06700000  vfp162float_h.rn vr0, vr0
001e44  06340300  vfp162float_l.rn vr8, vr6
001e48  06730300  vfp162float_h.rn vr6, vr6
001e4c  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
001e50  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001e54  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
001e58  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
001e5c  96125002  vadd.f.mz.rn vr5{mr1}, vr0, vr5
001e60  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001e64  16124302  vadd.f.mz.rn vr4{mr1}, vr6, vr4
001e68  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
001e6c  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
001e70  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
001e74  13b10605  setlt.sl r2, r[14:15], r[17:18]
001e78  9ba01000  xori r1, r1, 1
001e7c  1f0a0fd0  addli r20, r30, -6144
001e80  9f07000c  addli r15, zero, 1536
001e84  1f0e000c  addli r28, zero, 1536
001e88  27880400  addli.d r[17:18], r[10:11], 0
001e8c  00a00000  mfence { lm }
001e90  0b9a3051  fmac.s r20, r1, r19
001e94  eaf10ac0  vsrl.p vr3, r21, vr0
001e98  6af22ac0  vsrl.p vr4, r21, vr2
001e9c  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
001ea0  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
001ea4  eaf10dc0  vsrl.p vr3, r27, vr0
001ea8  6af22dc0  vsrl.p vr4, r27, vr2
001eac  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
001eb0  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
001eb4  ea7106c0  vsrl.p vr3, r12, vr0
001eb8  6a7226c0  vsrl.p vr4, r12, vr2
001ebc  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
001ec0  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
001ec4  eaf105c0  vsrl.p vr3, r11, vr0
001ec8  6af225c0  vsrl.p vr4, r11, vr2
001ecc  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
001ed0  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
001ed4  fa110020  vextract.f r3, vr0{mr0}
001ed8  7a120120  vextract.f r4, vr2{mr0}
001edc  0b6d3d10  add.f.rn r26, r26, r3
001ee0  0b6c4c10  add.f.rn r24, r24, r4
001ee4  b7630100  beq r2, zero, 248
001ee8  93215804  setlt.ul r3, r[17:18], r[6:7]
001eec  a70408f4  addli.d r[10:11], r[17:18], 31232
001ef0  bb900100  bneq r3, zero, 36
001ef4  9ba11000  xori r3, r1, 1
001ef8  1f020fd0  addli r4, r30, -6144
001efc  2b0e00f0  lui r28, 983040
001f00  0b923151  fmac.s r4, r3, r19
001f04  17b12403  sll.d r[3:4], r[10:11], r18
001f08  179ec901  or r28, r19, r28
001f0c  0ba12310  add.ul r[3:4], r[8:9], r[3:4]
001f10  7f2e4100  l_gm2lm r28, r4, 0(r[3:4])
001f14  2bf1ffff  lui r2, 1048575
001f18  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001f1c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001f20  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001f24  92321002  vadd.s.mz vr5{mr1}, zero, vr1
001f28  1b1101fc  ori r2, r2, 4032
001f2c  178e2700  and r28, r15, r2
001f30  bf112e01  blt.s r28, r18, 100
001f34  92321002  vadd.s.mz vr5{mr1}, zero, vr1
001f38  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001f3c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001f40  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001f44  9f010000  addli r3, zero, 0
001f48  1f020a00  addli r4, r20, 0
001f4c  1f018200  addli r2, r4, 64
001f50  42000202  vload.mz vr0{mr1}, 0(r4)
001f54  9f818100  addli r3, r3, 64
001f58  1f020201  addli r4, r4, 128
001f5c  42030102  vload.mz vr6{mr1}, 0(r2)
001f60  86330000  vfp162float_l.rn vr7, vr0
001f64  06700000  vfp162float_h.rn vr0, vr0
001f68  06340300  vfp162float_l.rn vr8, vr6
001f6c  06730300  vfp162float_h.rn vr6, vr6
001f70  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
001f74  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001f78  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
001f7c  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
001f80  96125002  vadd.f.mz.rn vr5{mr1}, vr0, vr5
001f84  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001f88  16124302  vadd.f.mz.rn vr4{mr1}, vr6, vr4
001f8c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
001f90  bffec1ff  blt.s r3, r28, -68
001f94  3f20fe00  blt.s r28, r15, 8
001f98  dbdaffff  j -300
001f9c  0b92c738  mod.s r4, r15, r12
001fa0  2bf1ffff  lui r2, 1048575
001fa4  9b17f1ff  ori r15, r2, 4095
001fa8  9f810700  addli r3, r15, 0
001fac  3fb04b00  blt.s r23, r4, 12
001fb0  17b14700  sll r2, r15, r4
001fb4  9721f100  xor r3, r2, r15
001fb8  3fa04500  blt.s r11, r4, 8
001fbc  5bccffff  j -416
001fc0  1f01c2ff  addli r2, r4, -32
001fc4  17b12700  sll r2, r15, r2
001fc8  1722f100  xor r4, r2, r15
001fcc  dbcaffff  j -428
001fd0  630edfcc  loadli.w r28,  -6552(r30)
001fd4  1f0d0000  addli r26, zero, 0
001fd8  1f0c0000  addli r24, zero, 0
001fdc  e3004fcd  loadli.w r1,  -6496(r30)
001fe0  6305ffca  loadli.w r10,  -6792(r30)
001fe4  634affcc  loadli.w r20,  -6532(r30)
001fe8  6780a001  storeli.w r26, 0(r1)
001fec  e3403fcd  loadli.w r1,  -6500(r30)
001ff0  67808001  storeli.w r24, 0(r1)
001ff4  9f007fcd  addli r1, r30, -6472
001ff8  630c2fcd  loadli.w r24,  -6512(r30)
001ffc  6bd80000  load.d r[17:18], 0(r1)
002000  00a00000  mfence { lm }
002004  00300000  sync_local
002008  b7060cfe  beq r24, zero, -608
00200c  9f018fcd  addli r3, r30, -6464
002010  ebd00100  load.d r[2:3], 0(r3)
002014  bff02001  blt.s r1, r18, 60
002018  2b010000  lui r2, 0
00201c  e3038fcb  loadli.w r7,  -6720(r30)
002020  9f000000  addli r1, zero, 0
002024  9f010000  addli r3, zero, 0
002028  1f010100  addli r2, r2, 0
00202c  1f022101  addli r4, r2, 144
002030  6301e2ff  loadli.w r2,  -16(r4)
002034  63040200  loadli.w r8,  0(r4)
002038  9ff3f3ff  addli r7, r7, -1
00203c  1f420200  addli r4, r4, 4
002040  8be12110  add.f.rn r3, r3, r2
002044  8be08010  add.f.rn r1, r1, r8
002048  bbaf03fe  bneq r7, zero, -24
00204c  db010000  j 12
002050  9f010000  addli r3, zero, 0
002054  9f000000  addli r1, zero, 0
002058  63026fcd  loadli.w r4,  -6480(r30)
00205c  8b13ab18  sub.s r7, r22, r10
002060  9bb32300  slli r7, r7, 2
002064  0b613220  mul.f.rn r2, r4, r3
002068  8be04020  mul.f.rn r1, r1, r4
00206c  8b612120  mul.f.rn r3, r2, r2
002070  8be03018  sub.f.rn r1, r1, r3
002074  e3412fcb  loadli.w r3,  -6764(r30)
002078  2b02803f  lui r4, 260096
00207c  8be13010  add.f.rn r3, r1, r3
002080  8f813108  .word 0x0831818f
002084  8f013218  div.f.rn r3, r4, r3
002088  63021fcd  loadli.w r4,  -6520(r30)
00208c  2b040000  lui r8, 0
002090  1f040400  addli r8, r8, 0
002094  0b126211  add.s r4, r4, r22
002098  8b938310  add.s r7, r7, r8
00209c  2b040000  lui r8, 0
0020a0  1b322200  slli r4, r4, 2
0020a4  1f040400  addli r8, r8, 0
0020a8  67802300  storeli.w r2, 0(r7)
0020ac  67843300  storeli.w r3, 64(r7)
0020b0  0b128210  add.s r4, r4, r8
0020b4  73602200  stores.w r2, 0(r4)
0020b8  6341cfc9  loadli.w r2,  -6940(r30)
0020bc  bb2301fe  bneq r2, zero, -792
0020c0  9f810000  addli r3, r1, 0
0020c4  5b9cffff  j -800
0020c8  1f019fca  addli r2, r30, -6840
0020cc  9f016fcb  addli r3, r30, -6736
0020d0  1f025fcb  addli r4, r30, -6744
0020d4  9f024fcb  addli r5, r30, -6752
0020d8  9f005fce  addli r1, r30, -6360
0020dc  e703ffce  storeli.w r15, -6344(r30)
0020e0  63077fcb  loadli.w r14,  -6728(r30)
0020e4  e3083fcb  loadli.w r17,  -6760(r30)
0020e8  e30b1fcb  loadli.w r23,  -6776(r30)
0020ec  63090fcb  loadli.w r18,  -6784(r30)
0020f0  6743cfcf  storeli.w r28, -6348(r30)
0020f4  ebd70000  load.d r[16:17], 0(r1)
0020f8  6b550100  load.d r[11:12], 0(r2)
0020fc  ebd90100  load.d r[20:21], 0(r3)
002100  eb5a0200  load.d r[22:23], 0(r4)
002104  6bd60200  load.d r[13:14], 0(r5)
002108  00a00300  mfence { lm, sm, gm }
00210c  abf00000  lui r1, 15
002110  9b90f0ff  ori r1, r1, 4095
002114  80a10004  csr_set csr3, r1
002118  00d00100  sync_group
00211c  37021901  beq r18, r17, 128
002120  80300002  core_id r1
002124  bbe10000  bneq r1, zero, 120
002128  b3001028  .word 0x281000b3
00212c  13221500  seteq.d r4, r[11:12], r[2:3]
002130  3391282a  .word 0x2a289133
002134  9bb02b00  slli r1, r23, 2
002138  bb100200  bneq r4, zero, 36
00213c  1f220000  addli r4, zero, 2
002140  2b0300f0  lui r6, 983040
002144  ab030000  lui r7, 0
002148  17324102  sll.d r[5:6], r[3:4], r4
00214c  17936000  or r6, r1, r6
002150  9f830300  addli r7, r7, 0
002154  0b224510  add.ul r[5:6], r[11:12], r[5:6]
002158  7f137200  s_sm2gm r6, r7, 0(r[5:6])
00215c  1f04afca  addli r8, r30, -6832
002160  33024028  .word 0x28400233
002164  6b530400  load.d r[7:8], 0(r8)
002168  13224300  seteq.d r4, r[7:8], r[5:6]
00216c  bb400200  bneq r4, zero, 48
002170  1f220000  addli r4, zero, 2
002174  1f04afca  addli r8, r30, -6832
002178  ab020000  lui r5, 0
00217c  17314102  sll.d r[3:4], r[3:4], r4
002180  2b0200f0  lui r4, 983040
002184  6b530400  load.d r[7:8], 0(r8)
002188  9f820200  addli r5, r5, 0
00218c  9f820208  addli r5, r5, 1024
002190  97904000  or r1, r1, r4
002194  0b212310  add.ul r[3:4], r[7:8], r[3:4]
002198  ff105100  s_sm2gm r1, r5, 0(r[3:4])
00219c  9f100000  addli r1, zero, 1
0021a0  b380102a  .word 0x2a1080b3
0021a4  93b01704  setlt.sl r1, r[16:17], r[2:3]
0021a8  3b8500fc  bneq r1, zero, -1728
0021ac  9f02ffc9  addli r5, r30, -6920
0021b0  13a25903  setneq.d r4, r[20:21], r[22:23]
0021b4  b3001028  .word 0x281000b3
0021b8  9f231000  addli r7, zero, 10
0021bc  ebd40200  load.d r[10:11], 0(r5)
0021c0  93a11402  setneq.d r3, r[10:11], r[2:3]
0021c4  e7064fca  storeli.w r4, -6808(r30)
0021c8  2bf20100  lui r4, 31
0021cc  3bb00100  bneq r3, zero, 12
0021d0  1f040000  addli r8, zero, 0
0021d4  5b010000  j 8
0021d8  1b1402c0  ori r8, r4, 3072
0021dc  1f021fca  addli r4, r30, -6904
0021e0  97357602  sll.d r[12:13], r[13:14], r7
0021e4  eb520200  load.d r[6:7], 0(r4)
0021e8  ab030000  lui r7, 0
0021ec  9f830300  addli r7, r7, 0
0021f0  13a21200  seteq.d r4, r[6:7], r[2:3]
0021f4  93a21202  setneq.d r5, r[6:7], r[2:3]
0021f8  13a31400  seteq.d r6, r[10:11], r[2:3]
0021fc  e304dfca  loadli.w r9,  -6808(r30)
002200  8b167410  add.s r13, r8, r7
002204  6304ffca  loadli.w r8,  -6792(r30)
002208  9f030000  addli r7, zero, 0
00220c  0b178718  sub.s r14, r14, r8
002210  3ba00400  bneq r9, zero, 8
002214  9f230000  addli r7, zero, 2
002218  1f09cfca  addli r18, r30, -6816
00221c  b3149428  .word 0x289414b3
002220  9f880610  addli r17, r13, 2048
002224  9f09efca  addli r19, r30, -6800
002228  1f140000  addli r8, zero, 1
00222c  670aefca  storeli.w r14, -6752(r30)
002230  1f0d0000  addli r26, zero, 0
002234  e708dfcc  storeli.w r13, -6520(r30)
002238  9f0d0fd0  addli r27, r30, -6144
00223c  7330b900  store.d r[12:13], 0(r18)
002240  93b5f506  setle.sl r11, r[12:13], r[16:17]
002244  67411fcb  storeli.w r17, -6892(r30)
002248  8bb4f420  mul.sl r[10:11], r[10:11], r[16:17]
00224c  9f085fca  addli r17, r30, -6872
002250  73b09800  store.d r[10:11], 0(r17)
002254  97b48402  sll.d r[10:11], r[10:11], r8
002258  6702bfca  storeli.w r11, -6880(r30)
00225c  ebd50900  load.d r[12:13], 0(r19)
002260  8ba49510  add.ul r[10:11], r[12:13], r[10:11]
002264  9f053fca  addli r11, r30, -6888
002268  1f06afca  addli r12, r30, -6832
00226c  73b09500  store.d r[10:11], 0(r11)
002270  9f74f7ff  addli r9, r14, -1
002274  1f079fca  addli r14, r30, -6840
002278  1f350000  addli r10, zero, 3
00227c  67099fcc  storeli.w r9, -6512(r30)
002280  97845100  and r9, r3, r5
002284  97914100  or r3, r3, r4
002288  97926200  or r5, r5, r6
00228c  e7473fcc  storeli.w r3, -6532(r30)
002290  9f818610  addli r3, r13, 2112
002294  e7495fcc  storeli.w r5, -6500(r30)
002298  e74a9fcc  storeli.w r9, -6484(r30)
00229c  9f446fce  addli r9, r30, -6348
0022a0  9f060000  addli r13, zero, 0
0022a4  67493fca  storeli.w r3, -6764(r30)
0022a8  9f018000  addli r3, zero, 64
0022ac  b381312e  .word 0x2e3181b3
0022b0  73303600  store.d r[4:5], 0(r12)
0022b4  9f410000  addli r3, zero, 4
0022b8  1f020002  addli r4, zero, 256
0022bc  b382512e  .word 0x2e5182b3
0022c0  b3013228  .word 0x283201b3
0022c4  73305700  store.d r[6:7], 0(r14)
0022c8  9f027fca  addli r5, r30, -6856
0022cc  73b03200  store.d r[4:5], 0(r5)
0022d0  db040000  j 36
0022d4  9f810300  addli r3, r7, 0
0022d8  9f025fce  addli r5, r30, -6360
0022dc  a7000b00  addli.d r[2:3], r[23:24], 0
0022e0  9f830100  addli r7, r3, 0
0022e4  ebd70200  load.d r[16:17], 0(r5)
0022e8  00a00300  mfence { lm, sm, gm }
0022ec  1332fb04  setlt.sl r4, r[23:24], r[16:17]
0022f0  b76f02fa  beq r4, zero, -2056
0022f4  1f0acfca  addli r20, r30, -6816
0022f8  0bb81718  sub.sl r[17:18], r[16:17], r[2:3]
0022fc  9f0aafca  addli r21, r30, -6832
002300  1f0b9fca  addli r22, r30, -6840
002304  9f0b7fca  addli r23, r30, -6856
002308  1f0c8fca  addli r24, r30, -6848
00230c  eb510a00  load.d r[4:5], 0(r20)
002310  ebd20a00  load.d r[6:7], 0(r21)
002314  eb550b00  load.d r[12:13], 0(r22)
002318  6b590c00  load.d r[19:20], 0(r24)
00231c  0bb70141  min.sl r[15:16], r[4:5], r[17:18]
002320  a7717700  addli.d r[4:5], r[15:16], 63
002324  8f925162  .word 0x6251928f
002328  8f92b272  .word 0x72b2928f
00232c  ebd50b00  load.d r[12:13], 0(r23)
002330  8f91b166  .word 0x66b1918f
002334  93355904  setlt.sl r11, r[19:20], r[6:7]
002338  8b325940  min.sl r[6:7], r[19:20], r[6:7]
00233c  8bb22151  fmac.sl r[6:7], r[4:5], r[19:20]
002340  b385b52e  .word 0x2eb585b3
002344  8ba1b110  add.ul r[4:5], r[4:5], r[12:13]
002348  9f650000  addli r11, zero, 6
00234c  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
002350  97b2b202  sll.d r[6:7], r[6:7], r11
002354  97b1b102  sll.d r[4:5], r[4:5], r11
002358  0bb9e240  min.sl r[19:20], r[6:7], r[15:16]
00235c  8bb1e140  min.sl r[4:5], r[4:5], r[15:16]
002360  8bb22119  sub.sl r[6:7], r[4:5], r[19:20]
002364  b3013028  .word 0x283001b3
002368  93a13200  seteq.d r3, r[6:7], r[4:5]
00236c  1f020008  addli r4, zero, 1024
002370  b305b228  .word 0x28b205b3
002374  1f028fcd  addli r4, r30, -6464
002378  7330b200  store.d r[12:13], 0(r4)
00237c  3bd10100  bneq r3, zero, 84
002380  e3416fca  loadli.w r3,  -6860(r30)
002384  63026fca  loadli.w r4,  -6864(r30)
002388  37213200  beq r4, r3, 72
00238c  b3013028  .word 0x283001b3
002390  93a13002  setneq.d r3, r[2:3], r[4:5]
002394  bbf00100  bneq r3, zero, 60
002398  e301dfca  loadli.w r3,  -6808(r30)
00239c  b7d00100  beq r3, zero, 52
0023a0  9f058fcd  addli r11, r30, -6464
0023a4  1f063fca  addli r12, r30, -6888
0023a8  173a8902  sll.d r[21:22], r[19:20], r8
0023ac  ebd10500  load.d r[4:5], 0(r11)
0023b0  8bb13240  min.sl r[4:5], r[6:7], r[4:5]
0023b4  9bb11100  slli r3, r3, 1
0023b8  2b0200f0  lui r4, 983040
0023bc  6b5b0600  load.d r[23:24], 0(r12)
0023c0  97914100  or r3, r3, r4
0023c4  0b2a4b11  add.ul r[21:22], r[23:24], r[21:22]
0023c8  ff21ba01  l_gm2lm r3, r27, 0(r[21:22])
0023cc  00a00200  mfence { lm, gm }
0023d0  b3013428  .word 0x283401b3
0023d4  9f053fcb  addli r11, r30, -6760
0023d8  73b03500  store.d r[4:5], 0(r11)
0023dc  93313704  setlt.sl r3, r[15:16], r[4:5]
0023e0  3bc40100  bneq r3, zero, 272
0023e4  e301dfca  loadli.w r3,  -6808(r30)
0023e8  37a40100  beq r3, zero, 264
0023ec  9f717700  addli r3, r14, 63
0023f0  1f028000  addli r4, zero, 64
0023f4  630a2fca  loadli.w r20,  -6896(r30)
0023f8  803a0002  core_id r21
0023fc  00a00300  mfence { lm, sm, gm }
002400  8b914130  div.s r3, r3, r4
002404  0b924139  mod.s r4, r3, r20
002408  8b914131  div.s r3, r3, r20
00240c  139a4a04  setlt.s r20, r21, r4
002410  0b924a40  min.s r4, r21, r4
002414  0b925151  fmac.s r4, r3, r21
002418  8b914111  add.s r3, r3, r20
00241c  2bfa0000  lui r20, 15
002420  8b914110  add.s r3, r3, r4
002424  1b326200  slli r4, r4, 6
002428  9bba6100  slli r21, r3, 6
00242c  8b11e240  min.s r3, r4, r14
002430  0b92ea40  min.s r4, r21, r14
002434  1b17faff  ori r14, r20, 4095
002438  0b123218  sub.s r4, r4, r3
00243c  80210704  csr_set csr3, r14
002440  00d00100  sync_group
002444  3f428200  blt.s r4, r8, 144
002448  9f05ffc9  addli r11, r30, -6920
00244c  3307e028  .word 0x28e00733
002450  1b321200  slli r4, r4, 1
002454  6bdc0500  load.d r[25:26], 0(r11)
002458  132aec00  seteq.d r20, r[25:26], r[15:16]
00245c  3397e12e  .word 0x2ee19733
002460  9bb11100  slli r3, r3, 1
002464  bb400a00  bneq r20, zero, 48
002468  17ba8002  sll.d r[21:22], r[2:3], r8
00246c  173b8702  sll.d r[23:24], r[15:16], r8
002470  0b2a4c11  add.ul r[21:22], r[25:26], r[21:22]
002474  2b0c0000  lui r24, 0
002478  1f0c0c00  addli r24, r24, 0
00247c  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
002480  2b0b00f0  lui r22, 983040
002484  0b1c3c10  add.s r24, r24, r3
002488  171b6201  or r22, r4, r22
00248c  9f0b0c10  addli r23, r24, 2048
002490  7f0b7a01  l_gm2sm r22, r23, 0(r[21:22])
002494  9f051fca  addli r11, r30, -6904
002498  330a4029  .word 0x29400a33
00249c  6bdb0500  load.d r[23:24], 0(r11)
0024a0  132a4b01  seteq.d r20, r[23:24], r[21:22]
0024a4  bb400a00  bneq r20, zero, 48
0024a8  9f051fca  addli r11, r30, -6904
0024ac  17ba8002  sll.d r[21:22], r[2:3], r8
0024b0  17378702  sll.d r[15:16], r[15:16], r8
0024b4  6bdb0500  load.d r[23:24], 0(r11)
0024b8  0b2a4b11  add.ul r[21:22], r[23:24], r[21:22]
0024bc  2b0b00f0  lui r22, 983040
0024c0  0b27ea10  add.ul r[15:16], r[21:22], r[15:16]
0024c4  634a2fca  loadli.w r20,  -6892(r30)
0024c8  17126201  or r4, r4, r22
0024cc  8b113a10  add.s r3, r20, r3
0024d0  7f023700  l_gm2sm r4, r3, 0(r[15:16])
0024d4  00a00300  mfence { lm, sm, gm }
0024d8  abf10000  lui r3, 15
0024dc  9b91f1ff  ori r3, r3, 4095
0024e0  80a10104  csr_set csr3, r3
0024e4  00d00100  sync_group
0024e8  e3014fca  loadli.w r3,  -6880(r30)
0024ec  e7063fca  storeli.w r3, -6808(r30)
0024f0  1f02cfca  addli r4, r30, -6816
0024f4  e3014fcb  loadli.w r3,  -6752(r30)
0024f8  6b570200  load.d r[15:16], 0(r4)
0024fc  0babe010  add.ul r[23:24], r[2:3], r[15:16]
002500  3fd781fe  blt.s r3, r8, -556
002504  8b31e818  sub.sl r[4:5], r[17:18], r[15:16]
002508  9f0cafca  addli r25, r30, -6832
00250c  1f0e9fca  addli r28, r30, -6840
002510  1f0c7fca  addli r24, r30, -6856
002514  a7050b00  addli.d r[12:13], r[23:24], 0
002518  1f005fce  addli zero, r30, -6360
00251c  97b08002  sll.d r[2:3], r[2:3], r8
002520  8b313740  min.sl r[4:5], r[15:16], r[4:5]
002524  6bd80c00  load.d r[17:18], 0(r25)
002528  6b5a0e00  load.d r[21:22], 0(r28)
00252c  27f77100  addli.d r[15:16], r[4:5], 63
002530  0f180761  div.sl r[17:18], r[15:16], r[17:18]
002534  0f184871  mod.sl r[17:18], r[17:18], r[21:22]
002538  6b5a0c00  load.d r[21:22], 0(r24)
00253c  0f174765  .word 0x6547170f
002540  9f0a8fca  addli r21, r30, -6848
002544  ebdb0a00  load.d r[24:25], 0(r21)
002548  eb5a0000  load.d r[22:23], 0(zero)
00254c  17200000  xor zero, zero, zero
002550  670a0fcc  storeli.w zero, -6496(r30)
002554  13beba06  setle.sl r28, r[22:23], r[12:13]
002558  1f6b0000  addli r22, zero, 6
00255c  e706cfcd  storeli.w r28, -6552(r30)
002560  13ba0b05  setlt.sl r20, r[24:25], r[17:18]
002564  0bb80b41  min.sl r[17:18], r[24:25], r[17:18]
002568  0b387751  fmac.sl r[17:18], r[15:16], r[24:25]
00256c  1f0c5fca  addli r24, r30, -6872
002570  330a4a29  .word 0x294a0a33
002574  0b274711  add.ul r[15:16], r[15:16], r[21:22]
002578  330a4029  .word 0x29400a33
00257c  0b270711  add.ul r[15:16], r[15:16], r[17:18]
002580  17386803  sll.d r[17:18], r[17:18], r22
002584  17376703  sll.d r[15:16], r[15:16], r22
002588  0b383840  min.sl r[17:18], r[17:18], r[4:5]
00258c  278b0500  addli.d r[23:24], r[12:13], 0
002590  8b313740  min.sl r[4:5], r[15:16], r[4:5]
002594  6b570c00  load.d r[15:16], 0(r24)
002598  0bbc0119  sub.sl r[25:26], r[4:5], r[17:18]
00259c  1f027fcb  addli r4, r30, -6728
0025a0  0b27eb10  add.ul r[15:16], r[23:24], r[15:16]
0025a4  93214c01  seteq.d r3, r[25:26], r[21:22]
0025a8  1f0a8fcb  addli r20, r30, -6720
0025ac  9f0a8fcd  addli r21, r30, -6464
0025b0  73308201  store.d r[25:26], 0(r4)
0025b4  0b270711  add.ul r[15:16], r[15:16], r[17:18]
0025b8  73300a01  store.d r[17:18], 0(r20)
0025bc  6bd80a00  load.d r[17:18], 0(r21)
0025c0  17378702  sll.d r[15:16], r[15:16], r8
0025c4  0b380c41  min.sl r[17:18], r[25:26], r[17:18]
0025c8  1f0cefca  addli r24, r30, -6800
0025cc  9f0c1fcb  addli r25, r30, -6776
0025d0  1b321800  slli r4, r16, 1
0025d4  6b580c00  load.d r[17:18], 0(r24)
0025d8  97113e00  or r3, r28, r3
0025dc  670b4fca  storeli.w r4, -6736(r30)
0025e0  67063fcc  storeli.w r3, -6560(r30)
0025e4  0b2a1810  add.ul r[21:22], r[17:18], r[2:3]
0025e8  0b27e810  add.ul r[15:16], r[17:18], r[15:16]
0025ec  1f085fcb  addli r16, r30, -6744
0025f0  7330e800  store.d r[15:16], 0(r16)
0025f4  1f07bfca  addli r14, r30, -6824
0025f8  73b04c01  store.d r[21:22], 0(r25)
0025fc  eb510700  load.d r[4:5], 0(r14)
002600  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
002604  9f010fcb  addli r3, r30, -6784
002608  73b01100  store.d r[2:3], 0(r3)
00260c  db040000  j 36
002610  9f810300  addli r3, r7, 0
002614  63014fcd  loadli.w r2,  -6496(r30)
002618  00a00300  mfence { lm, sm, gm }
00261c  9f830100  addli r7, r3, 0
002620  e3004fcb  loadli.w r1,  -6752(r30)
002624  1f110100  addli r2, r2, 1
002628  670a2fcc  storeli.w r2, -6496(r30)
00262c  b73211fe  beq r2, r1, -852
002630  1f073fcb  addli r14, r30, -6760
002634  9f078fcd  addli r15, r30, -6464
002638  eb500700  load.d r[2:3], 0(r14)
00263c  ebd10700  load.d r[4:5], 0(r15)
002640  93b01204  setlt.sl r1, r[6:7], r[2:3]
002644  1b312d00  slli r2, r26, 2
002648  8bb13240  min.sl r[4:5], r[6:7], r[4:5]
00264c  0b912410  add.s r2, r9, r2
002650  73203100  store.w r3, 0(r2)
002654  bbfe00fe  bneq r1, zero, -68
002658  e300ffca  loadli.w r1,  -6792(r30)
00265c  63074fcd  loadli.w r14,  -6496(r30)
002660  1f0b5fce  addli r22, r30, -6360
002664  9f0b1fcb  addli r23, r30, -6776
002668  1f0c0fcb  addli r24, r30, -6784
00266c  eb570b00  load.d r[16:17], 0(r22)
002670  8b101710  add.s r1, r14, r1
002674  1b372700  slli r14, r14, 2
002678  b390102a  .word 0x2a1090b3
00267c  97b18702  sll.d r[4:5], r[16:17], r8
002680  8bb7f020  mul.sl r[16:17], r[2:3], r[16:17]
002684  ab000000  lui r1, 0
002688  9f800000  addli r1, r1, 0
00268c  8b101710  add.s r1, r14, r1
002690  17b78702  sll.d r[15:16], r[16:17], r8
002694  6bd80b00  load.d r[17:18], 0(r23)
002698  1f818000  addli r2, r1, 64
00269c  0b2ae810  add.ul r[21:22], r[17:18], r[15:16]
0026a0  6b580c00  load.d r[17:18], 0(r24)
0026a4  e70b2fcc  storeli.w r2, -6472(r30)
0026a8  0b213a10  add.ul r[3:4], r[21:22], r[4:5]
0026ac  1f02efcc  addli r4, r30, -6544
0026b0  0b27e810  add.ul r[15:16], r[17:18], r[15:16]
0026b4  1f086fcd  addli r16, r30, -6480
0026b8  9f080fcd  addli r17, r30, -6528
0026bc  73302200  store.d r[3:4], 0(r4)
0026c0  7330e800  store.d r[15:16], 0(r16)
0026c4  3307e028  .word 0x28e00733
0026c8  73b04801  store.d r[21:22], 0(r17)
0026cc  5b0b0000  j 88
0026d0  1f0a6fcd  addli r20, r30, -6480
0026d4  00a00000  mfence { lm }
0026d8  1f920600  addli r4, r13, 1
0026dc  17b18b02  sll.d r[3:4], r[24:25], r8
0026e0  9f930300  addli r7, r7, 1
0026e4  6b580a00  load.d r[17:18], 0(r20)
0026e8  8b16a238  mod.s r13, r4, r10
0026ec  2b0200f0  lui r4, 983040
0026f0  0b212810  add.ul r[3:4], r[17:18], r[3:4]
0026f4  1b381d00  slli r16, r26, 1
0026f8  0b8da338  mod.u r26, r7, r10
0026fc  17124800  or r4, r16, r4
002700  7f32b101  s_lm2gm r4, r27, 0(r[3:4])
002704  1bb1b600  slli r2, r13, 11
002708  9f010fd0  addli r3, r30, -6144
00270c  8b9d2110  add.s r27, r3, r2
002710  13315704  setlt.sl r2, r[15:16], r[6:7]
002714  278b0500  addli.d r[23:24], r[12:13], 0
002718  9f010000  addli r3, zero, 0
00271c  9f030000  addli r7, zero, 0
002720  b75b01fe  beq r2, zero, -268
002724  9b312d00  slli r3, r26, 2
002728  1f180d00  addli r16, r26, 1
00272c  1f018fcd  addli r2, r30, -6464
002730  b30a5029  .word 0x29500ab3
002734  1f0a5fce  addli r20, r30, -6360
002738  8b913410  add.s r3, r9, r3
00273c  0b1da838  mod.s r26, r16, r10
002740  6b580100  load.d r[17:18], 0(r2)
002744  93ac5201  seteq.d r25, r[6:7], r[22:23]
002748  ebe10100  loadext.w r[4:5], 0(r3)
00274c  0b273710  add.ul r[15:16], r[15:16], r[4:5]
002750  1b3e2d00  slli r28, r26, 2
002754  8bb1e218  sub.sl r[4:5], r[6:7], r[15:16]
002758  8b2b2711  add.ul r[24:25], r[15:16], r[19:20]
00275c  8bb10141  min.sl r[4:5], r[4:5], r[17:18]
002760  6b580a00  load.d r[17:18], 0(r20)
002764  a3b10102  slli.d r[4:5], r[4:5], 32
002768  0b387819  sub.sl r[17:18], r[17:18], r[24:25]
00276c  a3d10102  srai.d r[4:5], r[4:5], 32
002770  0b383840  min.sl r[17:18], r[17:18], r[4:5]
002774  8b91c411  add.s r3, r9, r28
002778  67800101  storeli.w r16, 0(r3)
00277c  3b910c00  bneq r25, zero, 68
002780  3f218800  blt.s r16, r8, 72
002784  3b840300  bneq r7, zero, 256
002788  9f910600  addli r3, r13, 1
00278c  1f0a0fcd  addli r20, r30, -6528
002790  1b321800  slli r4, r16, 1
002794  ab0300f0  lui r7, 983040
002798  97ba8b02  sll.d r[22:23], r[24:25], r8
00279c  1f010fd0  addli r2, r30, -6144
0027a0  8b91a138  mod.s r3, r3, r10
0027a4  6b580a00  load.d r[17:18], 0(r20)
0027a8  17127200  or r4, r4, r7
0027ac  0b285811  add.ul r[17:18], r[17:18], r[22:23]
0027b0  9bb1b100  slli r3, r3, 11
0027b4  8b113110  add.s r3, r2, r3
0027b8  7f223800  l_gm2lm r4, r3, 0(r[17:18])
0027bc  5b190000  j 200
0027c0  a7820a00  addli.d r[6:7], r[22:23], 0
0027c4  dbe9ffff  j -180
0027c8  63012fcd  loadli.w r2,  -6512(r30)
0027cc  63024fcd  loadli.w r4,  -6496(r30)
0027d0  3b702200  bneq r4, r2, 28
0027d4  6301dfcc  loadli.w r2,  -6552(r30)
0027d8  37610100  beq r2, zero, 88
0027dc  b7010100  beq r2, zero, 96
0027e0  6301cfcc  loadli.w r2,  -6560(r30)
0027e4  b7110100  beq r2, zero, 100
0027e8  db130000  j 156
0027ec  1f920600  addli r4, r13, 1
0027f0  1f010008  addli r2, zero, 1024
0027f4  1f0aefcc  addli r20, r30, -6544
0027f8  17388902  sll.d r[17:18], r[19:20], r8
0027fc  0b12a238  mod.s r4, r4, r10
002800  8b932240  min.s r7, r5, r2
002804  67807100  storeli.w r7, 0(r3)
002808  6b510a00  load.d r[3:4], 0(r20)
00280c  0b280111  add.ul r[17:18], r[3:4], r[17:18]
002810  9bb11300  slli r3, r7, 1
002814  ab0300f0  lui r7, 983040
002818  1f010fd0  addli r2, r30, -6144
00281c  1b32b200  slli r4, r4, 11
002820  97917100  or r3, r3, r7
002824  0b124110  add.s r4, r2, r4
002828  ff214800  l_gm2lm r3, r4, 0(r[17:18])
00282c  5b0b0000  j 88
002830  9f018fcb  addli r3, r30, -6720
002834  6bd90100  load.d r[19:20], 0(r3)
002838  bb2e01fe  bneq r2, zero, -88
00283c  b3025028  .word 0x285002b3
002840  6301cfcc  loadli.w r2,  -6560(r30)
002844  3b010100  bneq r2, zero, 64
002848  9f910600  addli r3, r13, 1
00284c  1f010fd0  addli r2, r30, -6144
002850  2b0200f0  lui r4, 983040
002854  8b91a138  mod.s r3, r3, r10
002858  9bb1b100  slli r3, r3, 11
00285c  8b113110  add.s r3, r2, r3
002860  63016fcb  loadli.w r2,  -6736(r30)
002864  17124100  or r4, r2, r4
002868  1f015fcb  addli r2, r30, -6744
00286c  eb520100  load.d r[6:7], 0(r2)
002870  7fa23200  l_gm2lm r4, r3, 0(r[6:7])
002874  9f018fcb  addli r3, r30, -6720
002878  1f027fcb  addli r4, r30, -6728
00287c  6bd90100  load.d r[19:20], 0(r3)
002880  eb520200  load.d r[6:7], 0(r4)
002884  9f210d00  addli r3, r26, 2
002888  63017fcd  loadli.w r2,  -6472(r30)
00288c  9b81f10f  andi r3, r3, 255
002890  e30c0100  loadli.w r25,  0(r2)
002894  63415fcd  loadli.w r2,  -6484(r30)
002898  8b83a138  mod.u r7, r3, r10
00289c  9bb12300  slli r3, r7, 2
0028a0  8b913410  add.s r3, r9, r3
0028a4  638d0100  loadli.w r26,  0(r3)
0028a8  e3810000  loadli.w r3,  0(r1)
0028ac  33180d2d  .word 0x2d0d1833
0028b0  8bbb0b19  sub.sl r[24:25], r[24:25], r[17:18]
0028b4  8be80158  neg.f r17, r3
0028b8  b7430100  beq r2, zero, 240
0028bc  3f588dfe  blt.s r26, r8, -492
0028c0  63011fcd  loadli.w r2,  -6520(r30)
0028c4  1bb81b00  slli r16, r23, 1
0028c8  9f010000  addli r3, zero, 0
0028cc  0b120111  add.s r4, r2, r16
0028d0  2b010000  lui r2, 0
0028d4  1f010100  addli r2, r2, 0
0028d8  0b1e2810  add.s r28, r16, r2
0028dc  1f080000  addli r16, zero, 0
0028e0  8b1a3e10  add.s r21, r28, r3
0028e4  0b1b3210  add.s r22, r4, r3
0028e8  1f088800  addli r16, r16, 64
0028ec  1f8a0a10  addli r20, r21, 2048
0028f0  1f010b10  addli r2, r22, 2048
0028f4  4a000a02  vloads.mz vr0{mr1}, 0(r20)
0028f8  0b9a3d10  add.s r20, r27, r3
0028fc  ca000102  vloads.mz vr1{mr1}, 0(r2)
002900  1f818a10  addli r2, r21, 2112
002904  9f0a8b10  addli r21, r22, 2112
002908  9f810101  addli r3, r3, 128
00290c  ca010102  vloads.mz vr3{mr1}, 0(r2)
002910  1f018a00  addli r2, r20, 64
002914  42010a02  vload.mz vr2{mr1}, 0(r20)
002918  4a820a02  vloads.mz vr4{mr1}, 0(r21)
00291c  c2020102  vload.mz vr5{mr1}, 0(r2)
002920  06330100  vfp162float_l.rn vr6, vr2
002924  06710100  vfp162float_h.rn vr2, vr2
002928  86b40200  vfp162float_l.rn vr9, vr5
00292c  86f20200  vfp162float_h.rn vr5, vr5
002930  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
002934  12936802  vadd.f.mz.rn vr6{mr1}, r17, vr6
002938  86330000  vfp162float_l.rn vr7, vr0
00293c  06b40000  vfp162float_l.rn vr8, vr1
002940  06700000  vfp162float_h.rn vr0, vr0
002944  86f00000  vfp162float_h.rn vr1, vr1
002948  92949802  vadd.f.mz.rn vr9{mr1}, r17, vr9
00294c  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
002950  06b50100  vfp162float_l.rn vr10, vr3
002954  86350200  vfp162float_l.rn vr11, vr4
002958  86f10100  vfp162float_h.rn vr3, vr3
00295c  06720200  vfp162float_h.rn vr4, vr4
002960  0a912c02  vmul.f.mz.rn vr2{mr1}, r25, vr2
002964  0a936c02  vmul.f.mz.rn vr6{mr1}, r25, vr6
002968  8a949c02  vmul.f.mz.rn vr9{mr1}, r25, vr9
00296c  8a925c02  vmul.f.mz.rn vr5{mr1}, r25, vr5
002970  a6100102  vmac.f.mz.rn vr1{mr1}, vr2, vr0
002974  26147302  vmac.f.mz.rn vr8{mr1}, vr6, vr7
002978  8e94a402  vmul.f.mz.rn vr9{mr1}, vr9, vr10
00297c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
002980  86d00000  vfloat2fp16_h.rn vr1, vr1
002984  1690b402  vadd.f.mz.rn vr0{mr1}, vr9, vr11
002988  16914102  vadd.f.mz.rn vr2{mr1}, vr3, vr4
00298c  86100400  vfloat2fp16_l.rn vr1, vr8
002990  06100000  vfloat2fp16_l.rn vr0, vr0
002994  46001a02  vstore.mz vr1{mr1}, 0(r20)
002998  06500100  vfloat2fp16_h.rn vr0, vr2
00299c  46000102  vstore.mz vr0{mr1}, 0(r2)
0029a0  3f0da8ff  blt.s r16, r26, -192
0029a4  dba5ffff  j -724
0029a8  63413fcd  loadli.w r2,  -6500(r30)
0029ac  b7710100  beq r2, zero, 124
0029b0  6341ffcc  loadli.w r2,  -6532(r30)
0029b4  b7240100  beq r2, zero, 296
0029b8  3f648dfe  blt.s r26, r8, -744
0029bc  9f010000  addli r3, zero, 0
0029c0  1f820d00  addli r4, r27, 0
0029c4  42000202  vload.mz vr0{mr1}, 0(r4)
0029c8  1f018200  addli r2, r4, 64
0029cc  9f818100  addli r3, r3, 64
0029d0  c2000102  vload.mz vr1{mr1}, 0(r2)
0029d4  06310000  vfp162float_l.rn vr2, vr0
0029d8  06700000  vfp162float_h.rn vr0, vr0
0029dc  86b10000  vfp162float_l.rn vr3, vr1
0029e0  86f00000  vfp162float_h.rn vr1, vr1
0029e4  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
0029e8  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
0029ec  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
0029f0  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0029f4  0a900c02  vmul.f.mz.rn vr0{mr1}, r25, vr0
0029f8  0a912c02  vmul.f.mz.rn vr2{mr1}, r25, vr2
0029fc  8a913c02  vmul.f.mz.rn vr3{mr1}, r25, vr3
002a00  8a901c02  vmul.f.mz.rn vr1{mr1}, r25, vr1
002a04  06500000  vfloat2fp16_h.rn vr0, vr0
002a08  06100100  vfloat2fp16_l.rn vr0, vr2
002a0c  46000202  vstore.mz vr0{mr1}, 0(r4)
002a10  06900100  vfloat2fp16_l.rn vr0, vr3
002a14  1f020201  addli r4, r4, 128
002a18  06d00000  vfloat2fp16_h.rn vr0, vr1
002a1c  46000102  vstore.mz vr0{mr1}, 0(r2)
002a20  bf9ea1ff  blt.s r3, r26, -92
002a24  db95ffff  j -852
002a28  bf228dfe  blt.s r26, r8, -856
002a2c  2b020000  lui r4, 0
002a30  1bb11b00  slli r2, r23, 1
002a34  9f010000  addli r3, zero, 0
002a38  1f880d00  addli r16, r27, 0
002a3c  1f020200  addli r4, r4, 0
002a40  0b112210  add.s r2, r4, r2
002a44  1f028110  addli r4, r2, 2112
002a48  1f0182ff  addli r2, r4, -64
002a4c  42000802  vload.mz vr0{mr1}, 0(r16)
002a50  1f0a8800  addli r20, r16, 64
002a54  ca000202  vloads.mz vr1{mr1}, 0(r4)
002a58  9f818100  addli r3, r3, 64
002a5c  1f020201  addli r4, r4, 128
002a60  4a010102  vloads.mz vr2{mr1}, 0(r2)
002a64  c2010a02  vload.mz vr3{mr1}, 0(r20)
002a68  06320000  vfp162float_l.rn vr4, vr0
002a6c  06700000  vfp162float_h.rn vr0, vr0
002a70  86b20100  vfp162float_l.rn vr5, vr3
002a74  86f10100  vfp162float_h.rn vr3, vr3
002a78  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
002a7c  12924802  vadd.f.mz.rn vr4{mr1}, r17, vr4
002a80  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
002a84  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
002a88  06b30000  vfp162float_l.rn vr6, vr1
002a8c  86f00000  vfp162float_h.rn vr1, vr1
002a90  0a900c02  vmul.f.mz.rn vr0{mr1}, r25, vr0
002a94  0a924c02  vmul.f.mz.rn vr4{mr1}, r25, vr4
002a98  86330100  vfp162float_l.rn vr7, vr2
002a9c  06710100  vfp162float_h.rn vr2, vr2
002aa0  8a925c02  vmul.f.mz.rn vr5{mr1}, r25, vr5
002aa4  8a913c02  vmul.f.mz.rn vr3{mr1}, r25, vr3
002aa8  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
002aac  0e924302  vmul.f.mz.rn vr4{mr1}, vr7, vr4
002ab0  0e115302  vmul.f.mz.rn vr2{mr1}, vr6, vr5
002ab4  8e903002  vmul.f.mz.rn vr1{mr1}, vr1, vr3
002ab8  06500000  vfloat2fp16_h.rn vr0, vr0
002abc  06100200  vfloat2fp16_l.rn vr0, vr4
002ac0  46000802  vstore.mz vr0{mr1}, 0(r16)
002ac4  06100100  vfloat2fp16_l.rn vr0, vr2
002ac8  1f080801  addli r16, r16, 128
002acc  06d00000  vfloat2fp16_h.rn vr0, vr1
002ad0  46000a02  vstore.mz vr0{mr1}, 0(r20)
002ad4  bfdda1ff  blt.s r3, r26, -140
002ad8  5b7fffff  j -1032
002adc  bf5f8dfc  blt.s r26, r8, -1036
002ae0  1f0a0fcc  addli r20, r30, -6656
002ae4  63422fcb  loadli.w r4,  -6764(r30)
002ae8  1bb11b00  slli r2, r23, 1
002aec  9f010000  addli r3, zero, 0
002af0  1f880d00  addli r16, r27, 0
002af4  42100a02  vload_mask16.mz vr0{mr1}, 0(r20)
002af8  0b122210  add.s r4, r4, r2
002afc  ea900c22  vor.f.mz vr1{mr1}, r25, vr0
002b00  1f0182ff  addli r2, r4, -64
002b04  ca010202  vloads.mz vr3{mr1}, 0(r4)
002b08  42000802  vload.mz vr0{mr1}, 0(r16)
002b0c  9f818100  addli r3, r3, 64
002b10  1f020201  addli r4, r4, 128
002b14  4a010102  vloads.mz vr2{mr1}, 0(r2)
002b18  1f018800  addli r2, r16, 64
002b1c  42020102  vload.mz vr4{mr1}, 0(r2)
002b20  86320000  vfp162float_l.rn vr5, vr0
002b24  06700000  vfp162float_h.rn vr0, vr0
002b28  06330200  vfp162float_l.rn vr6, vr4
002b2c  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
002b30  06720200  vfp162float_h.rn vr4, vr4
002b34  92925802  vadd.f.mz.rn vr5{mr1}, r17, vr5
002b38  86b30100  vfp162float_l.rn vr7, vr3
002b3c  86f10100  vfp162float_h.rn vr3, vr3
002b40  12936802  vadd.f.mz.rn vr6{mr1}, r17, vr6
002b44  12924802  vadd.f.mz.rn vr4{mr1}, r17, vr4
002b48  06340100  vfp162float_l.rn vr8, vr2
002b4c  06710100  vfp162float_h.rn vr2, vr2
002b50  a6936002  vmac.f.mz.rn vr7{mr1}, vr1, vr6
002b54  a6914002  vmac.f.mz.rn vr3{mr1}, vr1, vr4
002b58  26910002  vmac.f.mz.rn vr2{mr1}, vr1, vr0
002b5c  26945002  vmac.f.mz.rn vr8{mr1}, vr1, vr5
002b60  06900300  vfloat2fp16_l.rn vr0, vr7
002b64  06510100  vfloat2fp16_h.rn vr2, vr2
002b68  06d00100  vfloat2fp16_h.rn vr0, vr3
002b6c  06110400  vfloat2fp16_l.rn vr2, vr8
002b70  46000102  vstore.mz vr0{mr1}, 0(r2)
002b74  46002802  vstore.mz vr2{mr1}, 0(r16)
002b78  1f080801  addli r16, r16, 128
002b7c  3f9ea1ff  blt.s r3, r26, -124
002b80  5b6affff  j -1200
002b84  00100000  exit
002b88  00100000  exit
002b8c  00100000  exit
002b90  00100000  exit
002b94  00100000  exit
002b98  00100000  exit
002b9c  00100000  exit
002ba0  00100000  exit
002ba4  00100000  exit
002ba8  00100000  exit
002bac  00100000  exit
002bb0  00100000  exit
002bb4  00100000  exit
002bb8  00100000  exit
002bbc  00100000  exit
002bc0  00100000  exit
002bc4  00100000  exit
002bc8  00100000  exit
002bcc  00100000  exit
002bd0  00100000  exit
002bd4  00100000  exit
002bd8  00100000  exit
002bdc  00100000  exit
002be0  00100000  exit
002be4  00100000  exit
002be8  00100000  exit
002bec  00100000  exit
002bf0  00100000  exit
002bf4  00100000  exit
002bf8  00100000  exit
002bfc  00100000  exit
002c00  00100000  exit
002c04  00100000  exit
002c08  00100000  exit
002c0c  00100000  exit
002c10  00100000  exit
002c14  00100000  exit
002c18  00100000  exit
002c1c  00100000  exit
002c20  00100000  exit
002c24  00100000  exit
002c28  00100000  exit
002c2c  00100000  exit
002c30  00100000  exit
002c34  00100000  exit
002c38  00100000  exit
002c3c  00100000  exit
002c40  00100000  exit
002c44  00100000  exit
002c48  00100000  exit
002c4c  00100000  exit
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
002dc4  00000000  nop
