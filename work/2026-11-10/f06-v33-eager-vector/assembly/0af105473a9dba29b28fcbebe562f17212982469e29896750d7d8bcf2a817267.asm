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
0000fc  6b590f01  load.d r[19:20], 16(r30)
000100  eb108f04  load.bu r1, 72(r30)
000104  6b528f01  load.d r[5:6], 24(r30)
000108  1f06efca  addli r12, r30, -6800
00010c  6b558f03  load.d r[11:12], 56(r30)
000110  eb570f03  load.d r[16:17], 48(r30)
000114  eb568f02  load.d r[14:15], 40(r30)
000118  6b538f00  load.d r[7:8], 8(r30)
00011c  9f08ffc9  addli r17, r30, -6920
000120  1f0a9fca  addli r20, r30, -6840
000124  67430fce  storeli.w zero, -6348(r30)
000128  e7030fce  storeli.w zero, -6344(r30)
00012c  e7430fce  storeli.w zero, -6340(r30)
000130  73302400  store.d r[3:4], 0(r8)
000134  6b510f02  load.d r[3:4], 32(r30)
000138  9b801000  andi r1, r1, 1
00013c  73304600  store.d r[5:6], 0(r12)
000140  1f023fce  addli r4, r30, -6376
000144  9f02dfc9  addli r5, r30, -6936
000148  73b0f800  store.d r[16:17], 0(r17)
00014c  7330aa00  store.d r[11:12], 0(r20)
000150  8b900058  neg.s r1, r1
000154  73302201  store.d r[19:20], 0(r4)
000158  73b0d200  store.d r[14:15], 0(r5)
00015c  73b02400  store.d r[3:4], 0(r9)
000160  1f01000c  addli r2, zero, 1536
000164  3301212c  .word 0x2c210133
000168  13312105  setlt.sl r2, r[3:4], r[19:20]
00016c  e3010f00  loadli.w r3,  0(r30)
000170  e7063fca  storeli.w r3, -6808(r30)
000174  80510102  load_param_i r3, 2
000178  67403fca  storeli.w r3, -6908(r30)
00017c  9f010fcc  addli r3, r30, -6656
000180  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
000184  bb560100  bneq r2, zero, 436
000188  2301f903  andi.d r[3:4], r[19:20], 63
00018c  33024028  .word 0x28400233
000190  13214102  setneq.d r2, r[3:4], r[5:6]
000194  bb160100  bneq r2, zero, 420
000198  1f717900  addli r2, r18, 63
00019c  9f018000  addli r3, zero, 64
0001a0  63440fca  loadli.w r8,  -6908(r30)
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
0001e8  0b922141  min.s r4, r3, r18
0001ec  0b112141  min.s r2, r2, r18
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
000230  93a49700  seteq.d r9, r[16:17], r[10:11]
000234  bb800400  bneq r9, zero, 32
000238  9f140000  addli r9, zero, 1
00023c  0b948210  add.s r8, r5, r8
000240  17319102  sll.d r[3:4], r[3:4], r9
000244  ab0400f0  lui r9, 983040
000248  0ba12710  add.ul r[3:4], r[16:17], r[3:4]
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
000288  8b316140  min.sl r[4:5], r[3:4], r[7:8]
00028c  13b18106  setle.sl r2, r[4:5], r[9:10]
000290  bb2e010e  bneq r2, zero, 8104
000294  9f08ffca  addli r17, r30, -6792
000298  1f01000c  addli r2, zero, 1536
00029c  0bb38118  sub.sl r[7:8], r[4:5], r[9:10]
0002a0  1f0b1fcb  addli r22, r30, -6776
0002a4  1f0cffc9  addli r24, r30, -6920
0002a8  9f064fcb  addli r13, r30, -6752
0002ac  1f763000  addli r12, zero, 31
0002b0  73b03800  store.d r[4:5], 0(r17)
0002b4  3301212c  .word 0x2c210133
0002b8  1f020018  addli r4, zero, 3072
0002bc  73306b00  store.d r[7:8], 0(r22)
0002c0  6b570c00  load.d r[15:16], 0(r24)
0002c4  73b08600  store.d r[9:10], 0(r13)
0002c8  0f1a2161  div.sl r[21:22], r[3:4], r[19:20]
0002cc  33012228  .word 0x28220133
0002d0  0b312340  min.sl r[3:4], r[7:8], r[3:4]
0002d4  e3430fca  loadli.w r7,  -6908(r30)
0002d8  0b912310  add.s r2, r7, r2
0002dc  b3013028  .word 0x283001b3
0002e0  1f73f1ff  addli r6, r2, -1
0002e4  13213702  setneq.d r2, r[15:16], r[4:5]
0002e8  0b187330  div.s r16, r6, r7
0002ec  1f038000  addli r6, zero, 64
0002f0  ab630000  lui r7, 6
0002f4  2bf5ffff  lui r10, 1048575
0002f8  8b146938  mod.s r9, r18, r6
0002fc  1b14f5ff  ori r8, r10, 4095
000300  1f030400  addli r6, r8, 0
000304  9b35d100  slli r11, r2, 13
000308  3f309600  blt.s r12, r9, 12
00030c  17339400  sll r6, r8, r9
000310  17238300  xor r6, r6, r8
000314  8b98b210  add.s r17, r5, r11
000318  9b1505fc  ori r11, r10, 4032
00031c  1f053fcb  addli r10, r30, -6760
000320  8b190a41  min.s r19, r20, r16
000324  1f064000  addli r12, zero, 32
000328  73304501  store.d r[21:22], 0(r10)
00032c  bf1b9608  blt.s r12, r9, 4836
000330  1f050000  addli r10, zero, 0
000334  5b5d0200  j 4840
000338  1f71f017  addli r2, zero, 3071
00033c  9b801000  andi r1, r1, 1
000340  3301212c  .word 0x2c210133
000344  e7401fca  storeli.w r1, -6900(r30)
000348  13316104  setlt.sl r2, r[3:4], r[7:8]
00034c  3b220100  bneq r2, zero, 136
000350  9f000006  addli r1, zero, 768
000354  9f71f002  addli r3, zero, 383
000358  b380102a  .word 0x2a1080b3
00035c  8f101372  .word 0x7213108f
000360  bfd11100  blt.s r3, r1, 116
000364  8f401300  .word 0x0013408f
000368  abb12f40  lui r3, 262907
00036c  2b323333  lui r4, 209715
000370  9b943133  ori r9, r3, 819
000374  abb1b2c0  lui r3, 789291
000378  1b143233  ori r8, r4, 819
00037c  1b9201c0  ori r4, r3, 3072
000380  9f010000  addli r3, zero, 0
000384  8f908030  .word 0x3080908f
000388  8f903020  .word 0x2030908f
00038c  8fb0101a  .word 0x1a10b08f
000390  b390102a  .word 0x2a1090b3
000394  93301906  setle.sl r1, r[19:20], r[2:3]
000398  bbf00000  bneq r1, zero, 60
00039c  179af602  or.d r[21:22], r[14:15], r[16:17]
0003a0  b30b7029  .word 0x29700bb3
0003a4  93207a01  seteq.d r1, r[21:22], r[24:25]
0003a8  bb8a000e  bneq r1, zero, 7840
0003ac  b3001028  .word 0x281000b3
0003b0  93a11702  setneq.d r3, r[16:17], r[2:3]
0003b4  93a01602  setneq.d r1, r[14:15], r[2:3]
0003b8  2bf10300  lui r2, 63
0003bc  1b110180  ori r2, r2, 2048
0003c0  8b901110  add.s r1, r3, r1
0003c4  8b001130  div.u r1, r2, r1
0003c8  9bc0b000  srli r1, r1, 11
0003cc  3386c02a  .word 0x2ac08633
0003d0  5bd20300  j 7824
0003d4  9790f602  or.d r[2:3], r[14:15], r[16:17]
0003d8  33048028  .word 0x28800433
0003dc  93a18000  seteq.d r3, r[2:3], r[9:10]
0003e0  bba00100  bneq r3, zero, 40
0003e4  b3013028  .word 0x283001b3
0003e8  93a23702  setneq.d r5, r[16:17], r[4:5]
0003ec  93a13602  setneq.d r3, r[14:15], r[4:5]
0003f0  2be20300  lui r4, 62
0003f4  8b913210  add.s r3, r5, r3
0003f8  8b013230  div.u r3, r4, r3
0003fc  9bc1b100  srli r3, r3, 11
000400  b381312e  .word 0x2e3181b3
000404  db030000  j 28
000408  9f010008  addli r3, zero, 1024
00040c  2772f907  addli.d r[5:6], r[19:20], 1023
000410  3385a12e  .word 0x2ea18533
000414  8f11a266  .word 0x66a2118f
000418  a3b10102  slli.d r[4:5], r[4:5], 32
00041c  a3d10102  srai.d r[4:5], r[4:5], 32
000420  80d20002  load_param_i r5, 1
000424  3385a22a  .word 0x2aa28533
000428  80520002  load_param_i r5, 0
00042c  0f16a370  mod.sl r[13:14], r[7:8], r[11:12]
000430  0f15a364  .word 0x64a3150f
000434  3387e22a  .word 0x2ae28733
000438  9332c704  setlt.sl r5, r[15:16], r[13:14]
00043c  0b36c740  min.sl r[13:14], r[15:16], r[13:14]
000440  0b36e550  fmac.sl r[13:14], r[11:12], r[15:16]
000444  9f078fc9  addli r15, r30, -6976
000448  1f07afc9  addli r14, r30, -6960
00044c  3388022b  .word 0x2b028833
000450  e3420fca  loadli.w r5,  -6908(r30)
000454  0b250511  add.ul r[11:12], r[11:12], r[17:18]
000458  9bb24200  slli r5, r5, 4
00045c  0b25c510  add.ul r[11:12], r[11:12], r[13:14]
000460  0b366640  min.sl r[13:14], r[13:14], r[7:8]
000464  0b336540  min.sl r[7:8], r[11:12], r[7:8]
000468  3385a22a  .word 0x2aa28533
00046c  7330c700  store.d r[13:14], 0(r14)
000470  8b32c318  sub.sl r[6:7], r[7:8], r[13:14]
000474  9f130000  addli r7, zero, 1
000478  73b05700  store.d r[6:7], 0(r15)
00047c  8b225510  add.ul r[6:7], r[11:12], r[6:7]
000480  a7f2f2ff  addli.d r[6:7], r[6:7], 32767
000484  8f92a262  .word 0x62a2928f
000488  a3b20202  slli.d r[6:7], r[6:7], 32
00048c  a3d20202  srai.d r[6:7], r[6:7], 32
000490  0bb6a220  mul.sl r[13:14], r[6:7], r[11:12]
000494  b382532e  .word 0x2e5382b3
000498  9f037fc9  addli r7, r30, -6984
00049c  93325604  setlt.sl r5, r[13:14], r[6:7]
0004a0  73b0c300  store.d r[13:14], 0(r7)
0004a4  3bd6020e  bneq r5, zero, 7572
0004a8  9f039fc9  addli r7, r30, -6968
0004ac  b3025028  .word 0x285002b3
0004b0  73b0a300  store.d r[11:12], 0(r7)
0004b4  1f05dfc9  addli r10, r30, -6936
0004b8  a78b0200  addli.d r[24:25], r[6:7], 0
0004bc  6b5a0500  load.d r[21:22], 0(r10)
0004c0  93225a02  setneq.d r5, r[21:22], r[6:7]
0004c4  2bf30100  lui r6, 31
0004c8  3ba00200  bneq r5, zero, 8
0004cc  1f030000  addli r6, zero, 0
0004d0  9f03000c  addli r7, zero, 1536
0004d4  2775f90b  addli.d r[11:12], r[19:20], 1535
0004d8  9f270000  addli r15, zero, 2
0004dc  3386c32e  .word 0x2ec38633
0004e0  3388072f  .word 0x2f078833
0004e4  0f15c564  .word 0x64c5150f
0004e8  8f16c972  .word 0x72c9168f
0004ec  2b06803f  lui r12, 260096
0004f0  23350502  slli.d r[11:12], r[11:12], 32
0004f4  23550502  srai.d r[11:12], r[11:12], 32
0004f8  2775f5ff  addli.d r[11:12], r[11:12], 32767
0004fc  0f150575  .word 0x7505150f
000500  1f281000  addli r16, zero, 10
000504  37a00600  beq r13, zero, 8
000508  9f830600  addli r7, r13, 0
00050c  9f0cffc9  addli r25, r30, -6920
000510  a7880b00  addli.d r[18:19], r[24:25], 0
000514  9f890300  addli r19, r7, 0
000518  1f0d3fca  addli r26, r30, -6888
00051c  9f0d3fce  addli r27, r30, -6376
000520  1f0e8fca  addli r28, r30, -6848
000524  ebd60c00  load.d r[14:15], 0(r25)
000528  93a31601  seteq.d r7, r[14:15], r[18:19]
00052c  93a61603  setneq.d r13, r[14:15], r[18:19]
000530  13271a01  seteq.d r14, r[21:22], r[18:19]
000534  17b80103  sll.d r[17:18], r[4:5], r16
000538  73300d01  store.d r[17:18], 0(r26)
00053c  2b080000  lui r16, 0
000540  6bda0d00  load.d r[21:22], 0(r27)
000544  e7033fcb  storeli.w r19, -6856(r30)
000548  3399292f  .word 0x2f299933
00054c  1f080800  addli r16, r16, 0
000550  0b392a19  sub.sl r[19:20], r[21:22], r[19:20]
000554  8f381a01  .word 0x011a388f
000558  0b130311  add.s r6, r6, r16
00055c  73302e01  store.d r[19:20], 0(r28)
000560  1f09afc9  addli r18, r30, -6960
000564  a7090a00  addli.d r[20:21], r[21:22], 0
000568  670a6fcc  storeli.w r6, -6496(r30)
00056c  1f331000  addli r6, zero, 11
000570  eb5a0900  load.d r[22:23], 0(r18)
000574  97b16102  sll.d r[4:5], r[4:5], r6
000578  1f030000  addli r6, zero, 0
00057c  97b7fa02  sll.d r[16:17], r[22:23], r15
000580  37200500  beq r10, zero, 8
000584  1f030018  addli r6, zero, 3072
000588  93a08002  setneq.d r1, r[2:3], r[9:10]
00058c  63044fcd  loadli.w r8,  -6496(r30)
000590  9f043fca  addli r9, r30, -6888
000594  1f094fca  addli r18, r30, -6880
000598  1f0e4000  addli r28, zero, 32
00059c  67061fca  storeli.w r1, -6816(r30)
0005a0  9f000440  addli r1, r8, 8192
0005a4  674e1fc8  storeli.w r1, -6940(r30)
0005a8  8f001619  div.f.rn r1, r12, r17
0005ac  9f088fca  addli r17, r30, -6848
0005b0  1f160000  addli r12, zero, 1
0005b4  7e0006e0  vmmov mr0, r12
0005b8  67431fca  storeli.w r1, -6860(r30)
0005bc  93000502  setneq r1, r10, zero
0005c0  1f055fc9  addli r10, r30, -7000
0005c4  9f05afca  addli r11, r30, -6832
0005c8  e7001fca  storeli.w r1, -6904(r30)
0005cc  e3007fca  loadli.w r1,  -6856(r30)
0005d0  9bb01000  slli r1, r1, 1
0005d4  67031fca  storeli.w r1, -6864(r30)
0005d8  ebd00400  load.d r[2:3], 0(r9)
0005dc  9f042000  addli r9, zero, 16
0005e0  93b03007  setle.sl r1, r[2:3], r[20:21]
0005e4  674f1fc8  storeli.w r1, -6924(r30)
0005e8  9780d200  and r1, r5, r13
0005ec  e70b1fcc  storeli.w r1, -6472(r30)
0005f0  9790e600  or r1, r13, r14
0005f4  1f074fc9  addli r14, r30, -7008
0005f8  9f360000  addli r13, zero, 3
0005fc  e70a1fcc  storeli.w r1, -6488(r30)
000600  97907200  or r1, r5, r7
000604  9f039fca  addli r7, r30, -6840
000608  9f020fd0  addli r5, r30, -6144
00060c  67491fcc  storeli.w r1, -6508(r30)
000610  ebd00300  load.d r[2:3], 0(r7)
000614  8ba0f010  add.ul r[2:3], r[2:3], r[16:17]
000618  73301500  store.d r[2:3], 0(r10)
00061c  ebd00500  load.d r[2:3], 0(r11)
000620  8ba0f010  add.ul r[2:3], r[2:3], r[16:17]
000624  9f07efca  addli r15, r30, -6800
000628  1f086fc9  addli r16, r30, -6992
00062c  73301700  store.d r[2:3], 0(r14)
000630  ebd00700  load.d r[2:3], 0(r15)
000634  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
000638  73301800  store.d r[2:3], 0(r16)
00063c  8b906210  add.s r1, r5, r6
000640  1f030fcc  addli r6, r30, -6656
000644  9f023fcb  addli r5, r30, -6760
000648  e7021fca  storeli.w r1, -6872(r30)
00064c  9f008440  addli r1, r8, 8256
000650  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
000654  1f048fcb  addli r8, r30, -6720
000658  e70b1fca  storeli.w r1, -6728(r30)
00065c  9f00000c  addli r1, zero, 1536
000660  7e0000a0  vmmov zero, mr0
000664  b380102a  .word 0x2a1080b3
000668  73b01200  store.d r[2:3], 0(r5)
00066c  ebd00800  load.d r[2:3], 0(r17)
000670  6e300062  vxor.s.mz vr0{mr1}, vr0, vr0
000674  97b0c002  sll.d r[2:3], r[2:3], r12
000678  46100402  vstore_mask16.mz vr0{mr1}, 0(r8)
00067c  73301900  store.d r[2:3], 0(r18)
000680  1f019fc9  addli r2, r30, -6968
000684  9f002fcb  addli r1, r30, -6768
000688  eb510100  load.d r[4:5], 0(r2)
00068c  67800000  storeli.w zero, 0(r1)
000690  17200000  xor zero, zero, zero
000694  db050000  j 44
000698  9f029fc9  addli r5, r30, -6968
00069c  1f03bfc9  addli r6, r30, -6952
0006a0  9f037fc9  addli r7, r30, -6984
0006a4  ebd10200  load.d r[4:5], 0(r5)
0006a8  eb5b0300  load.d r[24:25], 0(r6)
0006ac  ebd00300  load.d r[2:3], 0(r7)
0006b0  00a00300  mfence { lm, sm, gm }
0006b4  8bab3b10  add.ul r[24:25], r[24:25], r[4:5]
0006b8  93b01b04  setlt.sl r1, r[24:25], r[2:3]
0006bc  b7fd000c  beq r1, zero, 7036
0006c0  1f078fc9  addli r14, r30, -6976
0006c4  00340002  core_id r8
0006c8  9f07afc9  addli r15, r30, -6960
0006cc  1f08bfc9  addli r16, r30, -6952
0006d0  67040fce  storeli.w zero, -6336(r30)
0006d4  eb500700  load.d r[2:3], 0(r14)
0006d8  73307801  store.d r[24:25], 0(r16)
0006dc  8bb07019  sub.sl r[2:3], r[2:3], r[24:25]
0006e0  8bb21140  min.sl r[6:7], r[4:5], r[2:3]
0006e4  63410fca  loadli.w r2,  -6908(r30)
0006e8  8b902238  mod.s r1, r5, r2
0006ec  0b912230  div.s r2, r5, r2
0006f0  13121404  setlt.s r4, r8, r1
0006f4  8b111440  min.s r3, r8, r1
0006f8  9f830100  addli r7, r3, 0
0006fc  8b138150  fmac.s r7, r2, r8
000700  0b114110  add.s r2, r2, r4
000704  0b925340  min.s r4, r7, r5
000708  0b117110  add.s r2, r2, r7
00070c  ebd30700  load.d r[8:9], 0(r15)
000710  3315a228  .word 0x28a21533
000714  0b115140  min.s r2, r2, r5
000718  8ba37b10  add.ul r[8:9], r[24:25], r[8:9]
00071c  0b114118  sub.s r2, r2, r4
000720  1f021fcb  addli r4, r30, -6776
000724  8ba3a310  add.ul r[8:9], r[8:9], r[11:12]
000728  670b2fca  storeli.w r2, -6736(r30)
00072c  73307200  store.d r[8:9], 0(r4)
000730  3f2fc100  blt.s r2, r12, 968
000734  1f010000  addli r2, zero, 0
000738  37b00000  beq r1, zero, 12
00073c  80300002  core_id r1
000740  0b911118  sub.s r2, r3, r1
000744  9ff07200  addli r1, r5, 63
000748  9f018000  addli r3, zero, 64
00074c  1f071fcb  addli r14, r30, -6776
000750  80330002  core_id r7
000754  e30c7fce  loadli.w r25,  -6344(r30)
000758  8b903030  div.s r1, r1, r3
00075c  e3016fcb  loadli.w r3,  -6736(r30)
000760  6b550700  load.d r[11:12], 0(r14)
000764  b381312e  .word 0x2e3181b3
000768  8b907020  mul.s r1, r1, r7
00076c  8b233510  add.ul r[8:9], r[11:12], r[4:5]
000770  b381302a  .word 0x2a3081b3
000774  9f008fca  addli r1, r30, -6848
000778  6bdb0000  load.d r[23:24], 0(r1)
00077c  0bb5a118  sub.sl r[11:12], r[4:5], r[11:12]
000780  db050000  j 44
000784  ab010000  lui r3, 0
000788  9f810100  addli r3, r3, 0
00078c  8b91e110  add.s r3, r3, r14
000790  9f810120  addli r3, r3, 4096
000794  73e04100  stores.w r4, 0(r3)
000798  1f071fcb  addli r14, r30, -6776
00079c  1f160000  addli r12, zero, 1
0007a0  eb510700  load.d r[4:5], 0(r14)
0007a4  93b17104  setlt.sl r3, r[4:5], r[8:9]
0007a8  37ad0100  beq r3, zero, 840
0007ac  a7f3f3ff  addli.d r[8:9], r[8:9], 32767
0007b0  1f08efca  addli r16, r30, -6800
0007b4  ab0000f0  lui r1, 983040
0007b8  630d5fca  loadli.w r26,  -6872(r30)
0007bc  8bb13321  mul.sl r[4:5], r[8:9], r[20:21]
0007c0  6b570800  load.d r[15:16], 0(r16)
0007c4  9f094fca  addli r19, r30, -6880
0007c8  330a4029  .word 0x29400a33
0007cc  97b1c102  sll.d r[4:5], r[4:5], r12
0007d0  8b283710  add.ul r[18:19], r[15:16], r[4:5]
0007d4  63026fca  loadli.w r4,  -6864(r30)
0007d8  6bd70900  load.d r[15:16], 0(r19)
0007dc  93314b05  setlt.sl r3, r[23:24], r[21:22]
0007e0  0baae810  add.ul r[21:22], r[18:19], r[15:16]
0007e4  97101200  or r1, r4, r1
0007e8  ff20aa01  l_gm2lm r1, r26, 0(r[21:22])
0007ec  00a00200  mfence { lm, gm }
0007f0  3b890100  bneq r3, zero, 576
0007f4  e30c7fca  loadli.w r25,  -6856(r30)
0007f8  630a1fca  loadli.w r20,  -6904(r30)
0007fc  1f070000  addli r14, zero, 0
000800  1f080000  addli r16, zero, 0
000804  a70a0b00  addli.d r[22:23], r[23:24], 0
000808  9f070018  addli r15, zero, 3072
00080c  9f098000  addli r19, zero, 64
000810  db230000  j 284
000814  1f020000  addli r4, zero, 0
000818  2ba6aaaa  lui r12, 699050
00081c  9bb11100  slli r3, r3, 1
000820  1b16a6aa  ori r12, r12, 2730
000824  8b113d10  add.s r3, r26, r3
000828  978cc000  and r25, r1, r12
00082c  7e800ce0  vmmov mr0, r25
000830  42800100  vload.mz vr0{mr0}, 0(r3)
000834  ab5c5555  lui r25, 349525
000838  9b9c5c55  ori r25, r25, 1365
00083c  97809001  and r1, r1, r25
000840  7e8000e0  vmmov mr0, r1
000844  9700c200  and r1, r4, r12
000848  96125002  vadd.f.mz.rn vr5{mr1}, vr0, vr5
00084c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000850  42830100  vload.mz vr6{mr0}, 0(r3)
000854  9f818100  addli r3, r3, 64
000858  eaf364a0  vsll.p vr7, r9, vr6
00085c  7e8000e0  vmmov mr0, r1
000860  97009201  and r1, r4, r25
000864  42830100  vload.mz vr6{mr0}, 0(r3)
000868  7e8000e0  vmmov mr0, r1
00086c  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
000870  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
000874  42840100  vload.mz vr8{mr0}, 0(r3)
000878  16104302  vadd.f.mz.rn vr0{mr1}, vr6, vr4
00087c  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
000880  6af384a0  vsll.p vr6, r9, vr8
000884  16120302  vadd.f.mz.rn vr4{mr1}, vr6, vr0
000888  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
00088c  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
000890  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000894  9f000002  addli r1, zero, 256
000898  9f0d2fcb  addli r27, r30, -6768
00089c  1b2a1a00  xori r20, r20, 1
0008a0  1f0d0fd0  addli r26, r30, -6144
0008a4  0b1dfa50  fmac.s r26, r20, r15
0008a8  eaf100c0  vsrl.p vr3, r1, vr0
0008ac  6af220c0  vsrl.p vr4, r1, vr2
0008b0  9f000001  addli r1, zero, 128
0008b4  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
0008b8  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
0008bc  eaf100c0  vsrl.p vr3, r1, vr0
0008c0  6af220c0  vsrl.p vr4, r1, vr2
0008c4  9f70f00b  addli r1, zero, 1535
0008c8  63800d00  loadli.w zero,  0(r27)
0008cc  00a00000  mfence { lm }
0008d0  b381302a  .word 0x2a3081b3
0008d4  7e0000e0  vmmov mr0, zero
0008d8  17200000  xor zero, zero, zero
0008dc  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
0008e0  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
0008e4  93b15105  setlt.sl r3, r[4:5], r[22:23]
0008e8  a78a0b00  addli.d r[22:23], r[24:25], 0
0008ec  9f0c000c  addli r25, zero, 1536
0008f0  1f160000  addli r12, zero, 1
0008f4  eaf109c0  vsrl.p vr3, r19, vr0
0008f8  6af229c0  vsrl.p vr4, r19, vr2
0008fc  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
000900  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
000904  ea710ec0  vsrl.p vr3, r28, vr0
000908  6a722ec0  vsrl.p vr4, r28, vr2
00090c  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
000910  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
000914  fa100020  vextract.f r1, vr0{mr0}
000918  7a120120  vextract.f r4, vr2{mr0}
00091c  0b681810  add.f.rn r16, r16, r1
000920  0b674710  add.f.rn r14, r14, r4
000924  9f00000c  addli r1, zero, 1536
000928  37d40100  beq r3, zero, 276
00092c  9f0d3fcb  addli r27, r30, -6760
000930  a78b0af4  addli.d r[24:25], r[22:23], 31232
000934  ebd10d00  load.d r[4:5], 0(r27)
000938  93a03a04  setlt.ul r1, r[22:23], r[4:5]
00093c  bba00000  bneq r1, zero, 40
000940  9b201a00  xori r1, r20, 1
000944  9f010fd0  addli r3, r30, -6144
000948  97bdcb02  sll.d r[28:29], r[24:25], r12
00094c  8b91f050  fmac.s r3, r1, r15
000950  ab0000f0  lui r1, 983040
000954  8badb811  add.ul r[28:29], r[18:19], r[28:29]
000958  97901700  or r1, r15, r1
00095c  ffa03d00  l_gm2lm r1, r3, 0(r[28:29])
000960  1f0e4000  addli r28, zero, 32
000964  abf0ffff  lui r1, 1048575
000968  9b9000fc  ori r1, r1, 4032
00096c  97811c00  and r3, r25, r1
000970  9f008fcb  addli r1, r30, -6720
000974  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
000978  92315002  vadd.s.mz vr3{mr1}, zero, vr5
00097c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
000980  12325002  vadd.s.mz vr4{mr1}, zero, vr5
000984  bfb1c100  blt.s r3, r12, 108
000988  1f068fcb  addli r12, r30, -6720
00098c  9f000000  addli r1, zero, 0
000990  1f020d00  addli r4, r26, 0
000994  c2110602  vload_mask16.mz vr3{mr1}, 0(r12)
000998  92323002  vadd.s.mz vr5{mr1}, zero, vr3
00099c  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0009a0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0009a4  1f068200  addli r12, r4, 64
0009a8  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0009ac  ab0dffff  lui r27, 1048560
0009b0  9f808000  addli r1, r1, 64
0009b4  1f020201  addli r4, r4, 128
0009b8  42130602  vload_mask16.mz vr6{mr1}, 0(r12)
0009bc  eab30d02  vand.s.mz vr7{mr1}, r27, vr0
0009c0  6ab004a2  vsll.s.mz vr0{mr1}, r9, vr0
0009c4  6ab46d02  vand.s.mz vr8{mr1}, r27, vr6
0009c8  6ab364a2  vsll.s.mz vr6{mr1}, r9, vr6
0009cc  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
0009d0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0009d4  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
0009d8  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
0009dc  96125002  vadd.f.mz.rn vr5{mr1}, vr0, vr5
0009e0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0009e4  16124302  vadd.f.mz.rn vr4{mr1}, vr6, vr4
0009e8  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
0009ec  bfee30fe  blt.s r1, r3, -72
0009f0  3fa09101  blt.s r3, r25, 8
0009f4  5bd3ffff  j -360
0009f8  0b923c39  mod.s r4, r25, r19
0009fc  abf0ffff  lui r1, 1048575
000a00  9f7c3000  addli r25, zero, 31
000a04  1b96f0ff  ori r12, r1, 4095
000a08  9f000600  addli r1, r12, 0
000a0c  3fb04c00  blt.s r25, r4, 12
000a10  97304600  sll r1, r12, r4
000a14  97a0c000  xor r1, r1, r12
000a18  3f204e00  blt.s r28, r4, 8
000a1c  5bbfffff  j -520
000a20  1f02c2ff  addli r4, r4, -32
000a24  17324600  sll r4, r12, r4
000a28  1722c200  xor r4, r4, r12
000a2c  dbbdffff  j -532
000a30  e3007fca  loadli.w r1,  -6856(r30)
000a34  1f080000  addli r16, zero, 0
000a38  1f070000  addli r14, zero, 0
000a3c  63426fca  loadli.w r4,  -6860(r30)
000a40  9f099fca  addli r19, r30, -6840
000a44  1f0b1fcb  addli r22, r30, -6776
000a48  0b2a7510  add.ul r[21:22], r[11:12], r[8:9]
000a4c  0b660221  mul.f.rn r12, r4, r16
000a50  0b624720  mul.f.rn r4, r14, r4
000a54  6bd70900  load.d r[15:16], 0(r19)
000a58  33080029  .word 0x29000833
000a5c  13280701  seteq.d r16, r[15:16], r[17:18]
000a60  6b570b00  load.d r[15:16], 0(r22)
000a64  8b61c620  mul.f.rn r3, r12, r12
000a68  8bb8e318  sub.sl r[18:19], r[8:9], r[15:16]
000a6c  9f078fce  addli r15, r30, -6336
000a70  9bb82800  slli r17, r17, 2
000a74  8b613218  sub.f.rn r3, r4, r3
000a78  6302dfca  loadli.w r4,  -6808(r30)
000a7c  2b07803f  lui r14, 260096
000a80  0be24110  add.f.rn r4, r3, r4
000a84  0f024208  .word 0x0842020f
000a88  0f024718  div.f.rn r4, r14, r4
000a8c  1f074fcf  addli r14, r30, -6240
000a90  0b171711  add.s r14, r14, r17
000a94  8b981711  add.s r17, r15, r17
000a98  6700c700  storeli.w r12, 0(r14)
000a9c  0b174111  add.s r14, r2, r20
000aa0  1b372700  slli r14, r14, 2
000aa4  67804800  storeli.w r4, 0(r17)
000aa8  3b500800  bneq r16, zero, 20
000aac  ab070000  lui r15, 0
000ab0  9f870700  addli r15, r15, 0
000ab4  0b18f710  add.s r16, r14, r15
000ab8  7360c800  stores.w r12, 0(r16)
000abc  9f07afca  addli r15, r30, -6832
000ac0  33080029  .word 0x29000833
000ac4  6bd90700  load.d r[19:20], 0(r15)
000ac8  13260901  seteq.d r12, r[19:20], r[17:18]
000acc  1f083fce  addli r16, r30, -6376
000ad0  9f088fca  addli r17, r30, -6848
000ad4  eb590800  load.d r[20:21], 0(r16)
000ad8  6bdb0800  load.d r[23:24], 0(r17)
000adc  bb7206fe  bneq r12, zero, -836
000ae0  63461fca  loadli.w r12,  -6900(r30)
000ae4  bb0206fe  bneq r12, zero, -864
000ae8  1f820100  addli r4, r3, 0
000aec  5b93ffff  j -872
000af0  67431fce  storeli.w r1, -6348(r30)
000af4  e7039fcf  storeli.w r25, -6344(r30)
000af8  00a00300  mfence { lm, sm, gm }
000afc  abf00000  lui r1, 15
000b00  1f013fca  addli r2, r30, -6888
000b04  9f436fce  addli r7, r30, -6348
000b08  9b90f0ff  ori r1, r1, 4095
000b0c  80a10004  csr_set csr3, r1
000b10  00d00100  sync_group
000b14  6b5c0100  load.d r[25:26], 0(r2)
000b18  80300002  core_id r1
000b1c  3bb20000  bneq r1, zero, 140
000b20  37a20200  beq r5, zero, 136
000b24  9f039fca  addli r7, r30, -6840
000b28  b3001028  .word 0x281000b3
000b2c  1f04bfc9  addli r8, r30, -6952
000b30  ebd10300  load.d r[4:5], 0(r7)
000b34  13a21100  seteq.d r4, r[4:5], r[2:3]
000b38  eb500400  load.d r[2:3], 0(r8)
000b3c  9f210000  addli r3, zero, 2
000b40  17b13002  sll.d r[3:4], r[2:3], r3
000b44  9bb02200  slli r1, r5, 2
000b48  bb100200  bneq r4, zero, 36
000b4c  1f045fc9  addli r8, r30, -7000
000b50  2b0200f0  lui r4, 983040
000b54  eb520400  load.d r[6:7], 0(r8)
000b58  ab030000  lui r7, 0
000b5c  17924000  or r4, r1, r4
000b60  9f830300  addli r7, r7, 0
000b64  8ba22210  add.ul r[6:7], r[6:7], r[3:4]
000b68  7f927200  s_sm2gm r4, r7, 0(r[6:7])
000b6c  1f04afca  addli r8, r30, -6832
000b70  33024028  .word 0x28400233
000b74  6b530400  load.d r[7:8], 0(r8)
000b78  13224300  seteq.d r4, r[7:8], r[5:6]
000b7c  9f436fce  addli r7, r30, -6348
000b80  bb200200  bneq r4, zero, 40
000b84  1f034fc9  addli r6, r30, -7008
000b88  6b520300  load.d r[5:6], 0(r6)
000b8c  0b212210  add.ul r[3:4], r[5:6], r[3:4]
000b90  2b0200f0  lui r4, 983040
000b94  ab020000  lui r5, 0
000b98  9f820200  addli r5, r5, 0
000b9c  97904000  or r1, r1, r4
000ba0  9f820220  addli r5, r5, 4096
000ba4  ff105100  s_sm2gm r1, r5, 0(r[3:4])
000ba8  b3001628  .word 0x281600b3
000bac  9f014fcb  addli r3, r30, -6752
000bb0  73b01100  store.d r[2:3], 0(r3)
000bb4  93b01904  setlt.sl r1, r[20:21], r[2:3]
000bb8  bb8b00fc  bneq r1, zero, -1312
000bbc  e3006fcb  loadli.w r1,  -6736(r30)
000bc0  1f071fcb  addli r14, r30, -6776
000bc4  1f010000  addli r2, zero, 0
000bc8  1f280000  addli r16, zero, 2
000bcc  1f040fd0  addli r8, r30, -6144
000bd0  3305a028  .word 0x28a00533
000bd4  1f090000  addli r18, zero, 0
000bd8  eb510700  load.d r[4:5], 0(r14)
000bdc  9ff0f0ff  addli r1, r1, -1
000be0  674a1fcc  storeli.w r1, -6492(r30)
000be4  9f006fc9  addli r1, r30, -6992
000be8  8bb13121  mul.sl r[4:5], r[4:5], r[20:21]
000bec  ebd20000  load.d r[6:7], 0(r1)
000bf0  97b1c102  sll.d r[4:5], r[4:5], r12
000bf4  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
000bf8  9f022fca  addli r5, r30, -6896
000bfc  73b03200  store.d r[4:5], 0(r5)
000c00  5b040000  j 32
000c04  9f003fca  addli r1, r30, -6888
000c08  9f010fcd  addli r3, r30, -6528
000c0c  1f0e4000  addli r28, zero, 32
000c10  6bdc0000  load.d r[25:26], 0(r1)
000c14  6bd50100  load.d r[11:12], 0(r3)
000c18  93303505  setlt.sl r1, r[11:12], r[20:21]
000c1c  b7f900fc  beq r1, zero, -1412
000c20  8bb1a918  sub.sl r[4:5], r[20:21], r[11:12]
000c24  0b3d3c40  min.sl r[27:28], r[25:26], r[4:5]
000c28  3f74cd00  blt.s r26, r12, 284
000c2c  e300cfca  loadli.w r1,  -6816(r30)
000c30  37d40000  beq r1, zero, 276
000c34  e3420fca  loadli.w r5,  -6908(r30)
000c38  80330002  core_id r7
000c3c  00a00300  mfence { lm, sm, gm }
000c40  8b105d38  mod.s r1, r26, r5
000c44  8b125d30  div.s r5, r26, r5
000c48  13931304  setlt.s r6, r7, r1
000c4c  8b901340  min.s r1, r7, r1
000c50  8b907250  fmac.s r1, r5, r7
000c54  8b926210  add.s r5, r5, r6
000c58  2bf30000  lui r6, 15
000c5c  8b921210  add.s r5, r5, r1
000c60  8b90a041  min.s r1, r1, r26
000c64  1b13f3ff  ori r6, r6, 4095
000c68  8b92a241  min.s r5, r5, r26
000c6c  80210304  csr_set csr3, r6
000c70  00d00100  sync_group
000c74  8b921218  sub.s r5, r5, r1
000c78  bfa2c200  blt.s r5, r12, 168
000c7c  9f08dfc9  addli r17, r30, -6936
000c80  33036028  .word 0x28600333
000c84  9bb21200  slli r5, r5, 1
000c88  6bd70800  load.d r[15:16], 0(r17)
000c8c  13266700  seteq.d r12, r[15:16], r[7:8]
000c90  3393602a  .word 0x2a609333
000c94  9bb01000  slli r1, r1, 1
000c98  bb500600  bneq r12, zero, 52
000c9c  1f160000  addli r12, zero, 1
000ca0  173ac502  sll.d r[21:22], r[11:12], r12
000ca4  173bc302  sll.d r[23:24], r[7:8], r12
000ca8  2b060000  lui r12, 0
000cac  1f060600  addli r12, r12, 0
000cb0  0b2a4711  add.ul r[21:22], r[15:16], r[21:22]
000cb4  2b0700f0  lui r14, 983040
000cb8  0b161610  add.s r12, r12, r1
000cbc  0b2a6a11  add.ul r[21:22], r[21:22], r[23:24]
000cc0  1797e200  or r14, r5, r14
000cc4  1f060640  addli r12, r12, 8192
000cc8  7f07ca00  l_gm2sm r14, r12, 0(r[21:22])
000ccc  9f08ffc9  addli r17, r30, -6920
000cd0  330a4029  .word 0x29400a33
000cd4  6bd70800  load.d r[15:16], 0(r17)
000cd8  13264701  seteq.d r12, r[15:16], r[21:22]
000cdc  1f073fce  addli r14, r30, -6376
000ce0  eb590700  load.d r[20:21], 0(r14)
000ce4  bb700600  bneq r12, zero, 60
000ce8  9f08ffc9  addli r17, r30, -6920
000cec  1f160000  addli r12, zero, 1
000cf0  6bd70800  load.d r[15:16], 0(r17)
000cf4  173ac502  sll.d r[21:22], r[11:12], r12
000cf8  1733c302  sll.d r[7:8], r[7:8], r12
000cfc  2b0600f0  lui r12, 983040
000d00  9792c200  or r5, r5, r12
000d04  0b2a4711  add.ul r[21:22], r[15:16], r[21:22]
000d08  6347cfc9  loadli.w r14,  -6940(r30)
000d0c  9f073fce  addli r15, r30, -6376
000d10  0b236a10  add.ul r[7:8], r[21:22], r[7:8]
000d14  ebd90700  load.d r[20:21], 0(r15)
000d18  8b101710  add.s r1, r14, r1
000d1c  ff021300  l_gm2sm r5, r1, 0(r[7:8])
000d20  00a00300  mfence { lm, sm, gm }
000d24  abf00000  lui r1, 15
000d28  1f160000  addli r12, zero, 1
000d2c  9f436fce  addli r7, r30, -6348
000d30  9b90f0ff  ori r1, r1, 4095
000d34  80a10004  csr_set csr3, r1
000d38  00d00100  sync_group
000d3c  e340efc9  loadli.w r1,  -6924(r30)
000d40  67061fca  storeli.w r1, -6816(r30)
000d44  e3006fcb  loadli.w r1,  -6736(r30)
000d48  3f201000  blt.s zero, r1, 8
000d4c  db160100  j 2228
000d50  9f000008  addli r1, zero, 1024
000d54  8b228511  add.ul r[6:7], r[11:12], r[25:26]
000d58  9f080fcd  addli r17, r30, -6528
000d5c  9f0b5fcb  addli r23, r30, -6744
000d60  1735c502  sll.d r[11:12], r[11:12], r12
000d64  674b0fcc  storeli.w zero, -6476(r30)
000d68  3387e02a  .word 0x2ae08733
000d6c  73b05800  store.d r[6:7], 0(r17)
000d70  8b3aed40  min.sl r[22:23], r[27:28], r[15:16]
000d74  8bb2e140  min.sl r[6:7], r[4:5], r[15:16]
000d78  8bb18119  sub.sl r[4:5], r[4:5], r[25:26]
000d7c  1f0cdfcc  addli r24, r30, -6552
000d80  73b05b01  store.d r[22:23], 0(r23)
000d84  9f0affcc  addli r21, r30, -6536
000d88  1f0b8fcd  addli r22, r30, -6464
000d8c  9bb01200  slli r1, r5, 1
000d90  73b05a00  store.d r[6:7], 0(r21)
000d94  8bb2e140  min.sl r[6:7], r[4:5], r[15:16]
000d98  7330eb00  store.d r[15:16], 0(r22)
000d9c  1f072fca  addli r14, r30, -6896
000da0  67071fcc  storeli.w r1, -6544(r30)
000da4  9f07cfcc  addli r15, r30, -6560
000da8  eb510700  load.d r[4:5], 0(r14)
000dac  9bb01200  slli r1, r5, 1
000db0  73305c00  store.d r[6:7], 0(r24)
000db4  9f020fcb  addli r5, r30, -6784
000db8  1f03bfca  addli r6, r30, -6824
000dbc  e7051fcc  storeli.w r1, -6568(r30)
000dc0  9f00efca  addli r1, r30, -6800
000dc4  8ba1a110  add.ul r[4:5], r[4:5], r[11:12]
000dc8  73b03700  store.d r[4:5], 0(r15)
000dcc  ebd10000  load.d r[4:5], 0(r1)
000dd0  8ba1a110  add.ul r[4:5], r[4:5], r[11:12]
000dd4  73b03200  store.d r[4:5], 0(r5)
000dd8  eb510300  load.d r[4:5], 0(r6)
000ddc  8ba1a110  add.ul r[4:5], r[4:5], r[11:12]
000de0  1f05ffca  addli r10, r30, -6792
000de4  73303500  store.d r[4:5], 0(r10)
000de8  5b040000  j 32
000dec  e3416fcd  loadli.w r3,  -6476(r30)
000df0  e3006fcb  loadli.w r1,  -6736(r30)
000df4  1f080000  addli r16, zero, 0
000df8  9f910100  addli r3, r3, 1
000dfc  674b3fcc  storeli.w r3, -6476(r30)
000e00  3fa01100  blt.s r3, r1, 8
000e04  5bc0ffff  j -512
000e08  1f034fcb  addli r6, r30, -6752
000e0c  1f055fcb  addli r10, r30, -6744
000e10  eb510300  load.d r[4:5], 0(r6)
000e14  93303d04  setlt.sl r1, r[27:28], r[4:5]
000e18  9b312100  slli r3, r2, 2
000e1c  6b520500  load.d r[5:6], 0(r10)
000e20  8b913310  add.s r3, r7, r3
000e24  67804100  storeli.w r4, 0(r3)
000e28  3b9f00fe  bneq r1, zero, -60
000e2c  e3406fcd  loadli.w r1,  -6476(r30)
000e30  9f071fcb  addli r15, r30, -6776
000e34  9f08ffca  addli r17, r30, -6792
000e38  17b5c902  sll.d r[11:12], r[20:21], r12
000e3c  ebd20700  load.d r[6:7], 0(r15)
000e40  b381302a  .word 0x2a3081b3
000e44  9bb02000  slli r1, r1, 2
000e48  8ba13210  add.ul r[4:5], r[6:7], r[4:5]
000e4c  9f024fcf  addli r5, r30, -6240
000e50  0b971210  add.s r14, r5, r1
000e54  9f028fce  addli r5, r30, -6336
000e58  8bb13121  mul.sl r[4:5], r[4:5], r[20:21]
000e5c  0b9e1210  add.s r28, r5, r1
000e60  9f000fcb  addli r1, r30, -6784
000e64  97b1c102  sll.d r[4:5], r[4:5], r12
000e68  ebd20000  load.d r[6:7], 0(r1)
000e6c  0bac3210  add.ul r[25:26], r[6:7], r[4:5]
000e70  ebd20800  load.d r[6:7], 0(r17)
000e74  0bab3210  add.ul r[23:24], r[6:7], r[4:5]
000e78  9f023fcd  addli r5, r30, -6504
000e7c  8b21ac10  add.ul r[4:5], r[25:26], r[11:12]
000e80  1f031fcd  addli r6, r30, -6520
000e84  73b08201  store.d r[25:26], 0(r5)
000e88  330c8029  .word 0x29800c33
000e8c  73303300  store.d r[4:5], 0(r6)
000e90  5b0b0000  j 88
000e94  b310112c  .word 0x2c1110b3
000e98  1f120900  addli r4, r18, 1
000e9c  1f160000  addli r12, zero, 1
000ea0  00a00000  mfence { lm }
000ea4  ab0100f0  lui r3, 983040
000ea8  9332ac05  setlt.sl r5, r[25:26], r[27:28]
000eac  8b301c18  sub.sl r[2:3], r[25:26], r[2:3]
000eb0  0b19d238  mod.s r18, r4, r13
000eb4  97113500  or r3, r10, r3
000eb8  1f920800  addli r4, r17, 1
000ebc  97b0c002  sll.d r[2:3], r[2:3], r12
000ec0  0b231b10  add.ul r[7:8], r[23:24], r[2:3]
000ec4  0b01d238  mod.u r2, r4, r13
000ec8  ff318300  s_lm2gm r3, r8, 0(r[7:8])
000ecc  9b30b900  slli r1, r18, 11
000ed0  9f010fd0  addli r3, r30, -6144
000ed4  9f436fce  addli r7, r30, -6348
000ed8  0b941110  add.s r8, r3, r1
000edc  9f003fce  addli r1, r30, -6376
000ee0  ebd90000  load.d r[20:21], 0(r1)
000ee4  37ac02fe  beq r5, zero, -248
000ee8  9b302100  slli r1, r2, 2
000eec  9f078fcd  addli r15, r30, -6464
000ef0  8b901310  add.s r1, r7, r1
000ef4  ebd20700  load.d r[6:7], 0(r15)
000ef8  ebe10000  loadext.w r[4:5], 0(r1)
000efc  9f100100  addli r1, r2, 1
000f00  0b91d038  mod.s r2, r1, r13
000f04  0b2c3c10  add.ul r[25:26], r[25:26], r[4:5]
000f08  8b318d19  sub.sl r[4:5], r[27:28], r[25:26]
000f0c  0bb58919  sub.sl r[11:12], r[20:21], r[25:26]
000f10  8bb15140  min.sl r[4:5], r[4:5], r[6:7]
000f14  9b302100  slli r1, r2, 2
000f18  a3b10102  slli.d r[4:5], r[4:5], 32
000f1c  8b901310  add.s r1, r7, r1
000f20  a3d10102  srai.d r[4:5], r[4:5], 32
000f24  8b313540  min.sl r[4:5], r[11:12], r[4:5]
000f28  67803000  storeli.w r3, 0(r1)
000f2c  3fc0c100  blt.s r3, r12, 16
000f30  b7010800  beq r16, zero, 96
000f34  1f78f8ff  addli r16, r16, -1
000f38  db1a0000  j 212
000f3c  e3424fcd  loadli.w r5,  -6492(r30)
000f40  63436fcd  loadli.w r6,  -6476(r30)
000f44  3b225300  bneq r6, r5, 136
000f48  1f050fcd  addli r10, r30, -6528
000f4c  eb520500  load.d r[6:7], 0(r10)
000f50  93b25906  setle.sl r5, r[20:21], r[6:7]
000f54  bbe20200  bneq r5, zero, 184
000f58  9f120900  addli r5, r18, 1
000f5c  9f07dfcc  addli r15, r30, -6552
000f60  1f030fd0  addli r6, r30, -6144
000f64  b391312e  .word 0x2e3191b3
000f68  8b92d238  mod.s r5, r5, r13
000f6c  6bd50700  load.d r[11:12], 0(r15)
000f70  6780a000  storeli.w r10, 0(r1)
000f74  9bb0b200  slli r1, r5, 11
000f78  ab0200f0  lui r5, 983040
000f7c  8b101310  add.s r1, r6, r1
000f80  6303bfcc  loadli.w r6,  -6568(r30)
000f84  97125300  or r5, r6, r5
000f88  1f03cfcc  addli r6, r30, -6560
000f8c  db0e0000  j 116
000f90  9f100900  addli r1, r18, 1
000f94  9f073fcd  addli r15, r30, -6504
000f98  9bb11100  slli r3, r3, 1
000f9c  2b0200f0  lui r4, 983040
000fa0  1735cc02  sll.d r[11:12], r[25:26], r12
000fa4  1f080000  addli r16, zero, 0
000fa8  8b90d038  mod.s r1, r1, r13
000fac  ebd20700  load.d r[6:7], 0(r15)
000fb0  97914100  or r3, r3, r4
000fb4  0ba5a210  add.ul r[11:12], r[6:7], r[11:12]
000fb8  9f020fd0  addli r5, r30, -6144
000fbc  9bb0b000  slli r1, r1, 11
000fc0  8b901210  add.s r1, r5, r1
000fc4  ff211500  l_gm2lm r3, r1, 0(r[11:12])
000fc8  db080000  j 68
000fcc  9f120900  addli r5, r18, 1
000fd0  9f07ffcc  addli r15, r30, -6536
000fd4  1f030fd0  addli r6, r30, -6144
000fd8  b391312e  .word 0x2e3191b3
000fdc  8b92d238  mod.s r5, r5, r13
000fe0  6bd50700  load.d r[11:12], 0(r15)
000fe4  6780a000  storeli.w r10, 0(r1)
000fe8  9bb0b200  slli r1, r5, 11
000fec  ab0200f0  lui r5, 983040
000ff0  8b101310  add.s r1, r6, r1
000ff4  6303efcc  loadli.w r6,  -6544(r30)
000ff8  97125300  or r5, r6, r5
000ffc  1f031fcd  addli r6, r30, -6520
001000  6b550300  load.d r[11:12], 0(r6)
001004  0b2c3c10  add.ul r[25:26], r[25:26], r[4:5]
001008  ff221500  l_gm2lm r5, r1, 0(r[11:12])
00100c  9f200100  addli r1, r2, 2
001010  e3010700  loadli.w r3,  0(r14)
001014  630a0e00  loadli.w r20,  0(r28)
001018  9b80f00f  andi r1, r1, 255
00101c  8be50158  neg.f r11, r3
001020  8b88d038  mod.u r17, r1, r13
001024  9bb02800  slli r1, r17, 2
001028  8b901310  add.s r1, r7, r1
00102c  63810000  loadli.w r2,  0(r1)
001030  e3007fcd  loadli.w r1,  -6472(r30)
001034  1b351100  slli r10, r2, 1
001038  b7c60000  beq r1, zero, 432
00103c  3f69c1fe  blt.s r2, r12, -424
001040  9b301c00  slli r1, r24, 1
001044  e3014fcd  loadli.w r3,  -6496(r30)
001048  2b020000  lui r4, 0
00104c  9f0a0000  addli r21, zero, 0
001050  1f060000  addli r12, zero, 0
001054  8b90a018  sub.s r1, r1, r10
001058  1f020200  addli r4, r4, 0
00105c  8b911110  add.s r3, r3, r1
001060  0b924010  add.s r4, r1, r4
001064  8b195211  add.s r19, r4, r21
001068  8b125411  add.s r5, r8, r21
00106c  0b935111  add.s r6, r3, r21
001070  1f068600  addli r12, r12, 64
001074  9f8a0a01  addli r21, r21, 128
001078  9f800940  addli r1, r19, 8192
00107c  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
001080  ab07ffff  lui r15, 1048560
001084  9f838940  addli r7, r19, 8256
001088  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
00108c  9f000340  addli r1, r6, 8192
001090  1f038340  addli r6, r6, 8256
001094  4a920302  vloads_mask16.mz vr4{mr1}, 0(r7)
001098  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
00109c  9f808200  addli r1, r5, 64
0010a0  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0010a4  eab304a2  vsll.s.mz vr7{mr1}, r9, vr0
0010a8  6ab00702  vand.s.mz vr0{mr1}, r15, vr0
0010ac  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0010b0  2b030100  lui r6, 16
0010b4  ab830000  lui r7, 8
0010b8  12900502  vadd.f.mz.rn vr0{mr1}, r11, vr0
0010bc  92907502  vadd.f.mz.rn vr1{mr1}, r11, vr7
0010c0  eab55702  vand.s.mz vr11{mr1}, r15, vr5
0010c4  6ab554a2  vsll.s.mz vr10{mr1}, r9, vr5
0010c8  0a100a02  vmul.f.mz.rn vr0{mr1}, r20, vr0
0010cc  8a101a02  vmul.f.mz.rn vr1{mr1}, r20, vr1
0010d0  6ab424a2  vsll.s.mz vr8{mr1}, r9, vr2
0010d4  eab42702  vand.s.mz vr9{mr1}, r15, vr2
0010d8  eab244a2  vsll.s.mz vr5{mr1}, r9, vr4
0010dc  eab34702  vand.s.mz vr7{mr1}, r15, vr4
0010e0  6ab134a2  vsll.s.mz vr2{mr1}, r9, vr3
0010e4  eab13702  vand.s.mz vr3{mr1}, r15, vr3
0010e8  6ab264a2  vsll.s.mz vr4{mr1}, r9, vr6
0010ec  6ab36702  vand.s.mz vr6{mr1}, r15, vr6
0010f0  a6119002  vmac.f.mz.rn vr3{mr1}, vr0, vr9
0010f4  26918002  vmac.f.mz.rn vr2{mr1}, vr1, vr8
0010f8  1290b502  vadd.f.mz.rn vr0{mr1}, r11, vr11
0010fc  9294a502  vadd.f.mz.rn vr9{mr1}, r11, vr10
001100  ea203302  vand.u.mz vr1{mr1}, r6, vr3
001104  6a242302  vand.u.mz vr8{mr1}, r6, vr2
001108  0a100a02  vmul.f.mz.rn vr0{mr1}, r20, vr0
00110c  f2211002  veq.u.mz mr3{mr1}, zero, vr1
001110  72218002  veq.u.mz mr2{mr1}, zero, vr8
001114  8a109a02  vmul.f.mz.rn vr1{mr1}, r20, vr9
001118  0e107002  vmul.f.mz.rn vr0{mr1}, vr0, vr7
00111c  7e800140  vmnot mr0, mr3
001120  92a13310  vadd.u.mh vr3{mr0}, r7, vr3
001124  7e000140  vmnot mr0, mr2
001128  12a12310  vadd.u.mh vr2{mr0}, r7, vr2
00112c  ab770000  lui r15, 7
001130  8e905002  vmul.f.mz.rn vr1{mr1}, vr1, vr5
001134  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
001138  9b97f7ff  ori r15, r15, 4095
00113c  92a13716  vadd.u.mh vr3{mr3}, r15, vr3
001140  12a12714  vadd.u.mh vr2{mr2}, r15, vr2
001144  aba9aaaa  lui r19, 699050
001148  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00114c  9b99a9aa  ori r19, r19, 2730
001150  7e8009e0  vmmov mr0, r19
001154  9f095fce  addli r19, r30, -6360
001158  7e0000a0  vmmov zero, mr0
00115c  46803210  vstore.mh vr3{mr0}, 0(r5)
001160  67800900  storeli.w zero, 0(r19)
001164  eaf124c0  vsrl.p vr3, r9, vr2
001168  ab595555  lui r19, 349525
00116c  17200000  xor zero, zero, zero
001170  6a210302  vand.u.mz vr2{mr1}, r6, vr0
001174  9b995955  ori r19, r19, 1365
001178  7e8009e0  vmmov mr0, r19
00117c  9f094fce  addli r19, r30, -6368
001180  7e0000a0  vmmov zero, mr0
001184  46803210  vstore.mh vr3{mr0}, 0(r5)
001188  ea211302  vand.u.mz vr3{mr1}, r6, vr1
00118c  9f025fce  addli r5, r30, -6360
001190  1f034fce  addli r6, r30, -6368
001194  67800900  storeli.w zero, 0(r19)
001198  17200000  xor zero, zero, zero
00119c  72202002  veq.u.mz mr0{mr1}, zero, vr2
0011a0  7e010040  vmnot mr2, mr0
0011a4  12a00314  vadd.u.mh vr0{mr2}, r7, vr0
0011a8  72213002  veq.u.mz mr2{mr1}, zero, vr3
0011ac  fe010140  vmnot mr3, mr2
0011b0  92a01316  vadd.u.mh vr1{mr3}, r7, vr1
0011b4  12a00710  vadd.u.mh vr0{mr0}, r15, vr0
0011b8  92a01714  vadd.u.mh vr1{mr2}, r15, vr1
0011bc  63800200  loadli.w zero,  0(r5)
0011c0  7e0000e0  vmmov mr0, zero
0011c4  17200000  xor zero, zero, zero
0011c8  46800010  vstore.mh vr0{mr0}, 0(r1)
0011cc  6af014c0  vsrl.p vr0, r9, vr1
0011d0  63000300  loadli.w zero,  0(r6)
0011d4  7e0000e0  vmmov mr0, zero
0011d8  17200000  xor zero, zero, zero
0011dc  46800010  vstore.mh vr0{mr0}, 0(r1)
0011e0  3f1a26fe  blt.s r12, r2, -380
0011e4  5b96ffff  j -848
0011e8  e3005fcd  loadli.w r1,  -6488(r30)
0011ec  b7e40000  beq r1, zero, 312
0011f0  e3402fcd  loadli.w r1,  -6508(r30)
0011f4  b79a0000  beq r1, zero, 676
0011f8  3f72c1fe  blt.s r2, r12, -868
0011fc  9f010000  addli r3, zero, 0
001200  9f000400  addli r1, r8, 0
001204  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001208  2b02ffff  lui r4, 1048560
00120c  9f828000  addli r5, r1, 64
001210  9f075fce  addli r15, r30, -6360
001214  9f818100  addli r3, r3, 64
001218  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
00121c  2b030100  lui r6, 16
001220  ab830000  lui r7, 8
001224  ea300202  vand.s.mz vr1{mr1}, r4, vr0
001228  6ab004a2  vsll.s.mz vr0{mr1}, r9, vr0
00122c  92901502  vadd.f.mz.rn vr1{mr1}, r11, vr1
001230  12900502  vadd.f.mz.rn vr0{mr1}, r11, vr0
001234  0a111a02  vmul.f.mz.rn vr2{mr1}, r20, vr1
001238  0a100a02  vmul.f.mz.rn vr0{mr1}, r20, vr0
00123c  ea202302  vand.u.mz vr1{mr1}, r6, vr2
001240  6a220302  vand.u.mz vr4{mr1}, r6, vr0
001244  f2211002  veq.u.mz mr3{mr1}, zero, vr1
001248  72214002  veq.u.mz mr2{mr1}, zero, vr4
00124c  ea303202  vand.s.mz vr1{mr1}, r4, vr3
001250  eab134a2  vsll.s.mz vr3{mr1}, r9, vr3
001254  7e800140  vmnot mr0, mr3
001258  12a12310  vadd.u.mh vr2{mr0}, r7, vr2
00125c  7e000140  vmnot mr0, mr2
001260  12a00310  vadd.u.mh vr0{mr0}, r7, vr0
001264  2b720000  lui r4, 7
001268  92901502  vadd.f.mz.rn vr1{mr1}, r11, vr1
00126c  92913502  vadd.f.mz.rn vr3{mr1}, r11, vr3
001270  1b12f2ff  ori r4, r4, 4095
001274  12212216  vadd.u.mh vr2{mr3}, r4, vr2
001278  12200214  vadd.u.mh vr0{mr2}, r4, vr0
00127c  2ba6aaaa  lui r12, 699050
001280  8a101a02  vmul.f.mz.rn vr1{mr1}, r20, vr1
001284  1b16a6aa  ori r12, r12, 2730
001288  7e0006e0  vmmov mr0, r12
00128c  7e0000a0  vmmov zero, mr0
001290  46802010  vstore.mh vr2{mr0}, 0(r1)
001294  67800700  storeli.w zero, 0(r15)
001298  6af104c0  vsrl.p vr2, r9, vr0
00129c  2b565555  lui r12, 349525
0012a0  0a103a02  vmul.f.mz.rn vr0{mr1}, r20, vr3
0012a4  17200000  xor zero, zero, zero
0012a8  ea211302  vand.u.mz vr3{mr1}, r6, vr1
0012ac  1b165655  ori r12, r12, 1365
0012b0  7e0006e0  vmmov mr0, r12
0012b4  1f064fce  addli r12, r30, -6368
0012b8  7e0000a0  vmmov zero, mr0
0012bc  46802010  vstore.mh vr2{mr0}, 0(r1)
0012c0  6a210302  vand.u.mz vr2{mr1}, r6, vr0
0012c4  1f034fce  addli r6, r30, -6368
0012c8  9f800001  addli r1, r1, 128
0012cc  67000600  storeli.w zero, 0(r12)
0012d0  17200000  xor zero, zero, zero
0012d4  72203002  veq.u.mz mr0{mr1}, zero, vr3
0012d8  7e010040  vmnot mr2, mr0
0012dc  92a01314  vadd.u.mh vr1{mr2}, r7, vr1
0012e0  72212002  veq.u.mz mr2{mr1}, zero, vr2
0012e4  fe010140  vmnot mr3, mr2
0012e8  12a00316  vadd.u.mh vr0{mr3}, r7, vr0
0012ec  92201210  vadd.u.mh vr1{mr0}, r4, vr1
0012f0  12200214  vadd.u.mh vr0{mr2}, r4, vr0
0012f4  1f025fce  addli r4, r30, -6360
0012f8  63000200  loadli.w zero,  0(r4)
0012fc  7e0000e0  vmmov mr0, zero
001300  17200000  xor zero, zero, zero
001304  46801210  vstore.mh vr1{mr0}, 0(r5)
001308  eaf004c0  vsrl.p vr1, r9, vr0
00130c  63000300  loadli.w zero,  0(r6)
001310  7e0000e0  vmmov mr0, zero
001314  17200000  xor zero, zero, zero
001318  46801210  vstore.mh vr1{mr0}, 0(r5)
00131c  bfab21fe  blt.s r3, r2, -280
001320  db6effff  j -1164
001324  bf4dc1fc  blt.s r2, r12, -1168
001328  9b301c00  slli r1, r24, 1
00132c  2b020000  lui r4, 0
001330  9f010000  addli r3, zero, 0
001334  1f060400  addli r12, r8, 0
001338  8b90a018  sub.s r1, r1, r10
00133c  1f020200  addli r4, r4, 0
001340  8b101210  add.s r1, r4, r1
001344  1f828040  addli r4, r1, 8256
001348  9f0082ff  addli r1, r4, -64
00134c  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
001350  ab02ffff  lui r5, 1048560
001354  4a110202  vloads_mask16.mz vr2{mr1}, 0(r4)
001358  9f094fce  addli r19, r30, -6368
00135c  9f818100  addli r3, r3, 64
001360  1f020201  addli r4, r4, 128
001364  ca900002  vloads_mask16.mz vr1{mr1}, 0(r1)
001368  9f008600  addli r1, r12, 64
00136c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
001370  2b030100  lui r6, 16
001374  ab830000  lui r7, 8
001378  eab10202  vand.s.mz vr3{mr1}, r5, vr0
00137c  6ab004a2  vsll.s.mz vr0{mr1}, r9, vr0
001380  92913502  vadd.f.mz.rn vr3{mr1}, r11, vr3
001384  12900502  vadd.f.mz.rn vr0{mr1}, r11, vr0
001388  6ab34202  vand.s.mz vr6{mr1}, r5, vr4
00138c  eab324a2  vsll.s.mz vr7{mr1}, r9, vr2
001390  6ab12202  vand.s.mz vr2{mr1}, r5, vr2
001394  8a113a02  vmul.f.mz.rn vr3{mr1}, r20, vr3
001398  0a100a02  vmul.f.mz.rn vr0{mr1}, r20, vr0
00139c  eab21202  vand.s.mz vr5{mr1}, r5, vr1
0013a0  eab014a2  vsll.s.mz vr1{mr1}, r9, vr1
0013a4  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0013a8  0e900002  vmul.f.mz.rn vr0{mr1}, vr1, vr0
0013ac  eab044a2  vsll.s.mz vr1{mr1}, r9, vr4
0013b0  12926502  vadd.f.mz.rn vr4{mr1}, r11, vr6
0013b4  ea223302  vand.u.mz vr5{mr1}, r6, vr3
0013b8  6a230302  vand.u.mz vr6{mr1}, r6, vr0
0013bc  92901502  vadd.f.mz.rn vr1{mr1}, r11, vr1
0013c0  0a124a02  vmul.f.mz.rn vr4{mr1}, r20, vr4
0013c4  72215002  veq.u.mz mr2{mr1}, zero, vr5
0013c8  72206002  veq.u.mz mr0{mr1}, zero, vr6
0013cc  8a101a02  vmul.f.mz.rn vr1{mr1}, r20, vr1
0013d0  0e114102  vmul.f.mz.rn vr2{mr1}, vr2, vr4
0013d4  fe010140  vmnot mr3, mr2
0013d8  92a13316  vadd.u.mh vr3{mr3}, r7, vr3
0013dc  fe010040  vmnot mr3, mr0
0013e0  12a00316  vadd.u.mh vr0{mr3}, r7, vr0
0013e4  ab720000  lui r5, 7
0013e8  9b92f2ff  ori r5, r5, 4095
0013ec  92a13214  vadd.u.mh vr3{mr2}, r5, vr3
0013f0  12a00210  vadd.u.mh vr0{mr0}, r5, vr0
0013f4  aba7aaaa  lui r15, 699050
0013f8  9b97a7aa  ori r15, r15, 2730
0013fc  7e8007e0  vmmov mr0, r15
001400  7e0000a0  vmmov zero, mr0
001404  46003610  vstore.mh vr3{mr0}, 0(r12)
001408  67800900  storeli.w zero, 0(r19)
00140c  eaf104c0  vsrl.p vr3, r9, vr0
001410  ab575555  lui r15, 349525
001414  0e901302  vmul.f.mz.rn vr0{mr1}, vr7, vr1
001418  17200000  xor zero, zero, zero
00141c  ea202302  vand.u.mz vr1{mr1}, r6, vr2
001420  9b975755  ori r15, r15, 1365
001424  7e8007e0  vmmov mr0, r15
001428  9f075fce  addli r15, r30, -6360
00142c  7e0000a0  vmmov zero, mr0
001430  46003610  vstore.mh vr3{mr0}, 0(r12)
001434  ea210302  vand.u.mz vr3{mr1}, r6, vr0
001438  1f035fce  addli r6, r30, -6360
00143c  1f060601  addli r12, r12, 128
001440  67800700  storeli.w zero, 0(r15)
001444  17200000  xor zero, zero, zero
001448  72201002  veq.u.mz mr0{mr1}, zero, vr1
00144c  7e010040  vmnot mr2, mr0
001450  12a12314  vadd.u.mh vr2{mr2}, r7, vr2
001454  72213002  veq.u.mz mr2{mr1}, zero, vr3
001458  fe010140  vmnot mr3, mr2
00145c  12a00316  vadd.u.mh vr0{mr3}, r7, vr0
001460  12a12210  vadd.u.mh vr2{mr0}, r5, vr2
001464  12a00214  vadd.u.mh vr0{mr2}, r5, vr0
001468  9f024fce  addli r5, r30, -6368
00146c  63800200  loadli.w zero,  0(r5)
001470  7e0000e0  vmmov mr0, zero
001474  17200000  xor zero, zero, zero
001478  46802010  vstore.mh vr2{mr0}, 0(r1)
00147c  eaf004c0  vsrl.p vr1, r9, vr0
001480  63000300  loadli.w zero,  0(r6)
001484  7e0000e0  vmmov mr0, zero
001488  17200000  xor zero, zero, zero
00148c  46801010  vstore.mh vr1{mr0}, 0(r1)
001490  bfea21fe  blt.s r3, r2, -328
001494  5b40ffff  j -1536
001498  bf77c1fc  blt.s r2, r12, -1540
00149c  9f020fcc  addli r5, r30, -6656
0014a0  9b301c00  slli r1, r24, 1
0014a4  63027fcb  loadli.w r4,  -6728(r30)
0014a8  9f010000  addli r3, zero, 0
0014ac  1f060400  addli r12, r8, 0
0014b0  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
0014b4  8b90a018  sub.s r1, r1, r10
0014b8  0b121210  add.s r4, r4, r1
0014bc  6a110a22  vor.f.mz vr2{mr1}, r20, vr0
0014c0  9f0082ff  addli r1, r4, -64
0014c4  42100602  vload_mask16.mz vr0{mr1}, 0(r12)
0014c8  ab02ffff  lui r5, 1048560
0014cc  9f094fce  addli r19, r30, -6368
0014d0  9f818100  addli r3, r3, 64
0014d4  ca900002  vloads_mask16.mz vr1{mr1}, 0(r1)
0014d8  9f008600  addli r1, r12, 64
0014dc  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0014e0  eab10202  vand.s.mz vr3{mr1}, r5, vr0
0014e4  6ab004a2  vsll.s.mz vr0{mr1}, r9, vr0
0014e8  12933502  vadd.f.mz.rn vr6{mr1}, r11, vr3
0014ec  12900502  vadd.f.mz.rn vr0{mr1}, r11, vr0
0014f0  6ab454a2  vsll.s.mz vr8{mr1}, r9, vr5
0014f4  6ab21202  vand.s.mz vr4{mr1}, r5, vr1
0014f8  eab114a2  vsll.s.mz vr3{mr1}, r9, vr1
0014fc  ca100202  vloads_mask16.mz vr1{mr1}, 0(r4)
001500  2b030100  lui r6, 16
001504  ab830000  lui r7, 8
001508  1f020201  addli r4, r4, 128
00150c  26126102  vmac.f.mz.rn vr4{mr1}, vr2, vr6
001510  a6110102  vmac.f.mz.rn vr3{mr1}, vr2, vr0
001514  6ab05202  vand.s.mz vr0{mr1}, r5, vr5
001518  6a234302  vand.u.mz vr6{mr1}, r6, vr4
00151c  ea233302  vand.u.mz vr7{mr1}, r6, vr3
001520  12900502  vadd.f.mz.rn vr0{mr1}, r11, vr0
001524  72216002  veq.u.mz mr2{mr1}, zero, vr6
001528  72207002  veq.u.mz mr0{mr1}, zero, vr7
00152c  fe010140  vmnot mr3, mr2
001530  6ab31202  vand.s.mz vr6{mr1}, r5, vr1
001534  eab214a2  vsll.s.mz vr5{mr1}, r9, vr1
001538  92908502  vadd.f.mz.rn vr1{mr1}, r11, vr8
00153c  12a24316  vadd.u.mh vr4{mr3}, r7, vr4
001540  fe010040  vmnot mr3, mr0
001544  92a13316  vadd.u.mh vr3{mr3}, r7, vr3
001548  ab770000  lui r15, 7
00154c  9b97f7ff  ori r15, r15, 4095
001550  26130102  vmac.f.mz.rn vr6{mr1}, vr2, vr0
001554  a6121102  vmac.f.mz.rn vr5{mr1}, vr2, vr1
001558  12a24714  vadd.u.mh vr4{mr2}, r15, vr4
00155c  92a13710  vadd.u.mh vr3{mr0}, r15, vr3
001560  aba2aaaa  lui r5, 699050
001564  9b92a2aa  ori r5, r5, 2730
001568  ea206302  vand.u.mz vr1{mr1}, r6, vr6
00156c  7e8002e0  vmmov mr0, r5
001570  7e0000a0  vmmov zero, mr0
001574  46004610  vstore.mh vr4{mr0}, 0(r12)
001578  67800900  storeli.w zero, 0(r19)
00157c  6af034c0  vsrl.p vr0, r9, vr3
001580  ab525555  lui r5, 349525
001584  17200000  xor zero, zero, zero
001588  9b925255  ori r5, r5, 1365
00158c  7e8002e0  vmmov mr0, r5
001590  9f025fce  addli r5, r30, -6360
001594  7e0000a0  vmmov zero, mr0
001598  46000610  vstore.mh vr0{mr0}, 0(r12)
00159c  6a205302  vand.u.mz vr0{mr1}, r6, vr5
0015a0  1f034fce  addli r6, r30, -6368
0015a4  1f060601  addli r12, r12, 128
0015a8  67800200  storeli.w zero, 0(r5)
0015ac  17200000  xor zero, zero, zero
0015b0  72201002  veq.u.mz mr0{mr1}, zero, vr1
0015b4  7e010040  vmnot mr2, mr0
0015b8  12a36314  vadd.u.mh vr6{mr2}, r7, vr6
0015bc  72210002  veq.u.mz mr2{mr1}, zero, vr0
0015c0  fe010140  vmnot mr3, mr2
0015c4  92a25316  vadd.u.mh vr5{mr3}, r7, vr5
0015c8  9f035fce  addli r7, r30, -6360
0015cc  12a36710  vadd.u.mh vr6{mr0}, r15, vr6
0015d0  92a25714  vadd.u.mh vr5{mr2}, r15, vr5
0015d4  63000300  loadli.w zero,  0(r6)
0015d8  7e0000e0  vmmov mr0, zero
0015dc  17200000  xor zero, zero, zero
0015e0  46806010  vstore.mh vr6{mr0}, 0(r1)
0015e4  6af054c0  vsrl.p vr0, r9, vr5
0015e8  63800300  loadli.w zero,  0(r7)
0015ec  7e0000e0  vmmov mr0, zero
0015f0  17200000  xor zero, zero, zero
0015f4  46800010  vstore.mh vr0{mr0}, 0(r1)
0015f8  3fab21fe  blt.s r3, r2, -312
0015fc  5b13ffff  j -1896
001600  0b258511  add.ul r[11:12], r[11:12], r[25:26]
001604  93303505  setlt.sl r1, r[11:12], r[20:21]
001608  3be800fa  bneq r1, zero, -2536
00160c  db11feff  j -3956
001610  9f84c4ff  addli r9, r9, -32
001614  97349400  sll r9, r8, r9
001618  17a58400  xor r10, r9, r8
00161c  1f04dfc9  addli r8, r30, -6936
001620  0b9a7810  add.s r20, r17, r7
001624  9b801000  andi r1, r1, 1
001628  6b560400  load.d r[13:14], 0(r8)
00162c  00340002  core_id r8
001630  0b9b8920  mul.s r22, r19, r8
001634  13243700  seteq.d r8, r[15:16], r[4:5]
001638  9f073fce  addli r15, r30, -6376
00163c  93243600  seteq.d r9, r[13:14], r[4:5]
001640  13223602  setneq.d r4, r[13:14], r[4:5]
001644  9f810860  addli r3, r17, 12288
001648  ebd60700  load.d r[14:15], 0(r15)
00164c  e70b3fcc  storeli.w r3, -6472(r30)
001650  aba1aaaa  lui r3, 699050
001654  ab535555  lui r7, 349525
001658  e7034fcb  storeli.w r20, -6856(r30)
00165c  9b91a1aa  ori r3, r3, 2730
001660  1b965355  ori r12, r7, 1365
001664  978ab600  and r21, r13, r11
001668  97053300  and r11, r6, r3
00166c  97033500  and r7, r10, r3
001670  1703c300  and r6, r6, r12
001674  9701c500  and r3, r10, r12
001678  3bb00000  bneq r1, zero, 12
00167c  e3007fcd  loadli.w r1,  -6472(r30)
001680  e7031fca  storeli.w r1, -6856(r30)
001684  7e8005e0  vmmov mr0, r11
001688  9f454fcd  addli r11, r30, -6492
00168c  e3400fca  loadli.w r1,  -6908(r30)
001690  67070fcc  storeli.w zero, -6544(r30)
001694  1f064fcd  addli r12, r30, -6496
001698  9f073fcd  addli r15, r30, -6504
00169c  8fbdb601  .word 0x01b6bd8f
0016a0  331c8b2d  .word 0x2d8b1c33
0016a4  1f058fca  addli r10, r30, -6848
0016a8  1f0dffca  addli r26, r30, -6792
0016ac  67066fcb  storeli.w r22, -6816(r30)
0016b0  67090fcb  storeli.w r16, -6768(r30)
0016b4  67063fcd  storeli.w r19, -6560(r30)
0016b8  7e0000a0  vmmov zero, mr0
0016bc  7e0003e0  vmmov mr0, r6
0016c0  67800500  storeli.w zero, 0(r11)
0016c4  17200000  xor zero, zero, zero
0016c8  73308501  store.d r[25:26], 0(r10)
0016cc  1bbc1600  slli r24, r13, 1
0016d0  6305dfca  loadli.w r10,  -6808(r30)
0016d4  7e0000a0  vmmov zero, mr0
0016d8  8b901920  mul.s r1, r19, r1
0016dc  7e8003e0  vmmov mr0, r7
0016e0  67000600  storeli.w zero, 0(r12)
0016e4  17200000  xor zero, zero, zero
0016e8  7e0000a0  vmmov zero, mr0
0016ec  e7051fcc  storeli.w r1, -6568(r30)
0016f0  97002200  and r1, r4, r2
0016f4  7e8001e0  vmmov mr0, r3
0016f8  9f015fcd  addli r3, r30, -6488
0016fc  67800700  storeli.w zero, 0(r15)
001700  17200000  xor zero, zero, zero
001704  6b570d00  load.d r[15:16], 0(r26)
001708  674b1fcc  storeli.w r1, -6476(r30)
00170c  97109100  or r1, r2, r9
001710  9f044fcb  addli r9, r30, -6752
001714  1f010018  addli r2, zero, 3072
001718  1f092000  addli r18, zero, 16
00171c  9f0c8000  addli r25, zero, 64
001720  9f064000  addli r13, zero, 32
001724  67491fcc  storeli.w r1, -6508(r30)
001728  97108200  or r1, r4, r8
00172c  1f020fcb  addli r4, r30, -6784
001730  1f140000  addli r8, zero, 1
001734  7e0000a0  vmmov zero, mr0
001738  ebd50400  load.d r[12:13], 0(r9)
00173c  3303612c  .word 0x2c610333
001740  1bb11a00  slli r2, r21, 1
001744  e7071fcc  storeli.w r1, -6536(r30)
001748  9f000fd0  addli r1, r30, -6144
00174c  7e0004e0  vmmov mr0, r8
001750  73306200  store.d r[7:8], 0(r4)
001754  1f030fcc  addli r6, r30, -6656
001758  e7082fcc  storeli.w r2, -6520(r30)
00175c  1f010fcd  addli r2, r30, -6528
001760  9f038fcd  addli r7, r30, -6464
001764  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
001768  67000100  storeli.w zero, 0(r2)
00176c  17200000  xor zero, zero, zero
001770  7e0000a0  vmmov zero, mr0
001774  67800100  storeli.w zero, 0(r3)
001778  17200000  xor zero, zero, zero
00177c  6e300062  vxor.s.mz vr0{mr1}, vr0, vr0
001780  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001784  db040000  j 36
001788  a7850518  addli.d r[12:13], r[12:13], 3072
00178c  1f031fcb  addli r6, r30, -6776
001790  9f031fcb  addli r7, r30, -6776
001794  13b1e504  setlt.sl r2, r[12:13], r[15:16]
001798  eb510300  load.d r[4:5], 0(r6)
00179c  a78101e8  addli.d r[4:5], r[4:5], 29696
0017a0  73b03300  store.d r[4:5], 0(r7)
0017a4  374a0104  beq r2, zero, 2704
0017a8  1f020fcb  addli r4, r30, -6784
0017ac  0b31b718  sub.sl r[3:4], r[15:16], r[12:13]
0017b0  9f04dfcc  addli r9, r30, -6552
0017b4  9f073fce  addli r15, r30, -6376
0017b8  6b530200  load.d r[7:8], 0(r4)
0017bc  00a00300  mfence { lm, sm, gm }
0017c0  0b316140  min.sl r[3:4], r[3:4], r[7:8]
0017c4  73b02400  store.d r[3:4], 0(r9)
0017c8  0b116119  sub.s r2, r2, r22
0017cc  abf10000  lui r3, 15
0017d0  6bd30700  load.d r[7:8], 0(r15)
0017d4  0b912940  min.s r2, r19, r2
0017d8  9b91f1ff  ori r3, r3, 4095
0017dc  80a10104  csr_set csr3, r3
0017e0  0b116120  mul.s r2, r2, r6
0017e4  9f01000c  addli r3, zero, 1536
0017e8  00d00100  sync_group
0017ec  0b173140  min.s r14, r2, r3
0017f0  bf708100  blt.s r2, r8, 60
0017f4  9f078fca  addli r15, r30, -6848
0017f8  1b321700  slli r4, r14, 1
0017fc  6bd10700  load.d r[3:4], 0(r15)
001800  0ba12510  add.ul r[3:4], r[12:13], r[3:4]
001804  0b316120  mul.sl r[3:4], r[3:4], r[7:8]
001808  9f03efca  addli r7, r30, -6800
00180c  2b0300f0  lui r6, 983040
001810  ebd40300  load.d r[10:11], 0(r7)
001814  17318102  sll.d r[3:4], r[3:4], r8
001818  17126200  or r4, r4, r6
00181c  0ba12410  add.ul r[3:4], r[10:11], r[3:4]
001820  6305dfca  loadli.w r10,  -6808(r30)
001824  7f221100  l_gm2lm r4, r1, 0(r[3:4])
001828  00a00000  mfence { lm }
00182c  1f01dfcc  addli r2, r30, -6552
001830  1f034fcb  addli r6, r30, -6752
001834  eb510100  load.d r[4:5], 0(r2)
001838  7330b300  store.d r[12:13], 0(r6)
00183c  4b956105  ble.s r3, r22, 2372
001840  9f041fcb  addli r9, r30, -6776
001844  9f050fcb  addli r11, r30, -6784
001848  9f070b00  addli r15, r22, 0
00184c  6bd10400  load.d r[3:4], 0(r9)
001850  6bd30500  load.d r[7:8], 0(r11)
001854  0b316140  min.sl r[3:4], r[3:4], r[7:8]
001858  0b136119  sub.s r6, r2, r22
00185c  1f01dfcc  addli r2, r30, -6552
001860  eb510100  load.d r[4:5], 0(r2)
001864  db0a0000  j 84
001868  6301efcc  loadli.w r2,  -6544(r30)
00186c  9f000fd0  addli r1, r30, -6144
001870  9f010018  addli r3, zero, 3072
001874  63037fcb  loadli.w r6,  -6728(r30)
001878  630d6fcb  loadli.w r26,  -6736(r30)
00187c  9f03dfcc  addli r7, r30, -6552
001880  6305dfca  loadli.w r10,  -6808(r30)
001884  63082fcb  loadli.w r16,  -6768(r30)
001888  e309cfcc  loadli.w r19,  -6560(r30)
00188c  1b211100  xori r2, r2, 1
001890  1f070d00  addli r14, r26, 0
001894  8b103150  fmac.s r1, r2, r3
001898  67072fcc  storeli.w r2, -6544(r30)
00189c  6301bfcc  loadli.w r2,  -6568(r30)
0018a0  ebd10300  load.d r[4:5], 0(r7)
0018a4  0b132318  sub.s r6, r6, r2
0018a8  63015fcb  loadli.w r2,  -6744(r30)
0018ac  9f070100  addli r15, r2, 0
0018b0  3f203100  blt.s r2, r3, 8
0018b4  5b1a0100  j 2256
0018b8  0b91f118  sub.s r2, r3, r15
0018bc  e70b6fca  storeli.w r6, -6728(r30)
0018c0  8b116840  min.s r3, r16, r6
0018c4  670cefca  storeli.w r14, -6720(r30)
0018c8  0b932940  min.s r6, r19, r2
0018cc  1f013fcb  addli r2, r30, -6760
0018d0  eb550100  load.d r[12:13], 0(r2)
0018d4  0b9db140  min.s r26, r3, r11
0018d8  bf578300  blt.s r6, r8, 500
0018dc  9f030000  addli r7, zero, 0
0018e0  9f840000  addli r9, r1, 0
0018e4  db180000  j 196
0018e8  16924202  vadd.f.mz.rn vr4{mr1}, vr5, vr4
0018ec  1f010002  addli r2, zero, 256
0018f0  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0018f4  1f065fcd  addli r12, r30, -6488
0018f8  0b97f310  add.s r14, r7, r15
0018fc  9f930300  addli r7, r7, 1
001900  8b948411  add.s r9, r9, r24
001904  1b372700  slli r14, r14, 2
001908  ea7141c0  vsrl.p vr3, r2, vr4
00190c  ea7221c0  vsrl.p vr5, r2, vr2
001910  1f010001  addli r2, zero, 128
001914  63000600  loadli.w zero,  0(r12)
001918  2b08803f  lui r16, 260096
00191c  e3057fcd  loadli.w r11,  -6472(r30)
001920  7e0000e0  vmmov mr0, zero
001924  17200000  xor zero, zero, zero
001928  0b9be510  add.s r22, r11, r14
00192c  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
001930  16912202  vadd.f.mz.rn vr2{mr1}, vr5, vr2
001934  6a7231c0  vsrl.p vr4, r2, vr3
001938  ea7221c0  vsrl.p vr5, r2, vr2
00193c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
001940  16912202  vadd.f.mz.rn vr2{mr1}, vr5, vr2
001944  6af23cc0  vsrl.p vr4, r25, vr3
001948  eaf22cc0  vsrl.p vr5, r25, vr2
00194c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
001950  16912202  vadd.f.mz.rn vr2{mr1}, vr5, vr2
001954  6af236c0  vsrl.p vr4, r13, vr3
001958  eaf226c0  vsrl.p vr5, r13, vr2
00195c  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
001960  16912202  vadd.f.mz.rn vr2{mr1}, vr5, vr2
001964  7a910120  vextract.f r2, vr3{mr0}
001968  fa110120  vextract.f r3, vr2{mr0}
00196c  0b610110  add.f.rn r2, r2, zero
001970  8be10110  add.f.rn r3, r3, zero
001974  0f01b119  div.f.rn r2, r2, r27
001978  8f81b119  div.f.rn r3, r3, r27
00197c  0b622120  mul.f.rn r4, r2, r2
001980  8be14118  sub.f.rn r3, r3, r4
001984  0be2a110  add.f.rn r4, r3, r10
001988  73603b00  stores.w r3, 0(r22)
00198c  0f024208  .word 0x0842020f
001990  0f024818  div.f.rn r4, r16, r4
001994  0b98e810  add.s r16, r17, r14
001998  73602800  stores.w r2, 0(r16)
00199c  0b11ea10  add.s r2, r20, r14
0019a0  73604100  stores.w r4, 0(r2)
0019a4  b7a4a301  beq r7, r26, 296
0019a8  1f018fcd  addli r2, r30, -6464
0019ac  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
0019b0  92315002  vadd.s.mz vr3{mr1}, zero, vr5
0019b4  12315002  vadd.s.mz vr2{mr1}, zero, vr5
0019b8  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0019bc  bfb18a00  blt.s r21, r8, 108
0019c0  1f028fcd  addli r4, r30, -6464
0019c4  1f010000  addli r2, zero, 0
0019c8  9f810400  addli r3, r9, 0
0019cc  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0019d0  92323002  vadd.s.mz vr5{mr1}, zero, vr3
0019d4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0019d8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0019dc  1f828100  addli r4, r3, 64
0019e0  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
0019e4  2b07ffff  lui r14, 1048560
0019e8  1f018100  addli r2, r2, 64
0019ec  9f810101  addli r3, r3, 128
0019f0  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
0019f4  6a346702  vand.s.mz vr8{mr1}, r14, vr6
0019f8  6a3369a2  vsll.s.mz vr6{mr1}, r18, vr6
0019fc  ea347702  vand.s.mz vr9{mr1}, r14, vr7
001a00  ea3379a2  vsll.s.mz vr7{mr1}, r18, vr7
001a04  96125402  vadd.f.mz.rn vr5{mr1}, vr8, vr5
001a08  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
001a0c  16924402  vadd.f.mz.rn vr4{mr1}, vr9, vr4
001a10  a6919402  vmac.f.mz.rn vr3{mr1}, vr9, vr9
001a14  96125302  vadd.f.mz.rn vr5{mr1}, vr6, vr5
001a18  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001a1c  16924302  vadd.f.mz.rn vr4{mr1}, vr7, vr4
001a20  a6917302  vmac.f.mz.rn vr3{mr1}, vr7, vr7
001a24  bf6e51ff  blt.s r2, r21, -72
001a28  1f023fce  addli r4, r30, -6376
001a2c  6b510200  load.d r[3:4], 0(r4)
001a30  3fa02a00  blt.s r21, r2, 8
001a34  dbd6ffff  j -332
001a38  0b912320  mul.s r2, r7, r2
001a3c  e3011fcd  loadli.w r3,  -6520(r30)
001a40  1f424fcd  addli r4, r30, -6492
001a44  9f053fcd  addli r11, r30, -6504
001a48  1f060fcd  addli r12, r30, -6528
001a4c  1b311100  slli r2, r2, 1
001a50  0b912010  add.s r2, r1, r2
001a54  0b113110  add.s r2, r2, r3
001a58  9f014fcd  addli r3, r30, -6496
001a5c  63800100  loadli.w zero,  0(r3)
001a60  7e0000e0  vmmov mr0, zero
001a64  17200000  xor zero, zero, zero
001a68  63000200  loadli.w zero,  0(r4)
001a6c  42030100  vload.mz vr6{mr0}, 0(r2)
001a70  7e0000e0  vmmov mr0, zero
001a74  17200000  xor zero, zero, zero
001a78  c2030100  vload.mz vr7{mr0}, 0(r2)
001a7c  6a7469a0  vsll.p vr8, r18, vr6
001a80  63800500  loadli.w zero,  0(r11)
001a84  1f018100  addli r2, r2, 64
001a88  7e0000e0  vmmov mr0, zero
001a8c  17200000  xor zero, zero, zero
001a90  42030100  vload.mz vr6{mr0}, 0(r2)
001a94  63000600  loadli.w zero,  0(r12)
001a98  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
001a9c  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
001aa0  7e0000e0  vmmov mr0, zero
001aa4  17200000  xor zero, zero, zero
001aa8  c2040100  vload.mz vr9{mr0}, 0(r2)
001aac  16124302  vadd.f.mz.rn vr4{mr1}, vr6, vr4
001ab0  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
001ab4  6a7399a0  vsll.p vr6, r18, vr9
001ab8  96125402  vadd.f.mz.rn vr5{mr1}, vr8, vr5
001abc  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
001ac0  16124302  vadd.f.mz.rn vr4{mr1}, vr6, vr4
001ac4  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
001ac8  5bc4ffff  j -480
001acc  6301bfcc  loadli.w r2,  -6568(r30)
001ad0  1f02dfcc  addli r4, r30, -6552
001ad4  0b982710  add.s r16, r15, r2
001ad8  6b510200  load.d r[3:4], 0(r4)
001adc  0b110119  sub.s r2, r2, r16
001ae0  e301cfcc  loadli.w r3,  -6560(r30)
001ae4  0b912140  min.s r2, r3, r2
001ae8  9f013fce  addli r3, r30, -6376
001aec  ebd40100  load.d r[10:11], 0(r3)
001af0  00a00000  mfence { lm }
001af4  0b119120  mul.s r2, r2, r9
001af8  0b170148  max.s r14, r2, zero
001afc  3f318100  blt.s r2, r8, 76
001b00  9f094fcb  addli r19, r30, -6752
001b04  33112828  .word 0x28281133
001b08  6302efcc  loadli.w r4,  -6544(r30)
001b0c  9f030fd0  addli r7, r30, -6144
001b10  ebd50900  load.d r[12:13], 0(r19)
001b14  1b221200  xori r4, r4, 1
001b18  0ba12510  add.ul r[3:4], r[12:13], r[3:4]
001b1c  1f06efca  addli r12, r30, -6800
001b20  0b319120  mul.sl r[3:4], r[3:4], r[10:11]
001b24  9f040018  addli r9, zero, 3072
001b28  8b139250  fmac.s r7, r4, r9
001b2c  ab0400f0  lui r9, 983040
001b30  6b550600  load.d r[11:12], 0(r12)
001b34  17318102  sll.d r[3:4], r[3:4], r8
001b38  1b321700  slli r4, r14, 1
001b3c  17129200  or r4, r4, r9
001b40  0b212510  add.ul r[3:4], r[11:12], r[3:4]
001b44  7f227100  l_gm2lm r4, r7, 0(r[3:4])
001b48  e70a0fcb  storeli.w r16, -6744(r30)
001b4c  670befca  storeli.w r14, -6736(r30)
001b50  bf078302  blt.s r6, r8, 1504
001b54  1f030000  addli r6, zero, 0
001b58  9f840000  addli r9, r1, 0
001b5c  5b020000  j 16
001b60  1f130300  addli r6, r6, 1
001b64  8b948411  add.s r9, r9, r24
001b68  3727a303  beq r6, r26, 1480
001b6c  0b11f310  add.s r2, r6, r15
001b70  1b312100  slli r2, r2, 2
001b74  8b912810  add.s r3, r17, r2
001b78  0b112a10  add.s r2, r20, r2
001b7c  efc10100  loads.w r3, 0(r3)
001b80  ef430100  loads.w r7, 0(r2)
001b84  63416fcd  loadli.w r2,  -6476(r30)
001b88  0be80158  neg.f r16, r3
001b8c  37560100  beq r2, zero, 404
001b90  1f013fce  addli r2, r30, -6376
001b94  eb550100  load.d r[12:13], 0(r2)
001b98  3faf85fe  blt.s r11, r8, -56
001b9c  9f010000  addli r3, zero, 0
001ba0  1f020000  addli r4, zero, 0
001ba4  0b973410  add.s r14, r9, r3
001ba8  0b9b7111  add.s r22, r3, r23
001bac  8b993210  add.s r19, r5, r3
001bb0  1f028200  addli r4, r4, 64
001bb4  9f810101  addli r3, r3, 128
001bb8  42110702  vload_mask16.mz vr2{mr1}, 0(r14)
001bbc  2b05ffff  lui r10, 1048560
001bc0  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
001bc4  4a920902  vloads_mask16.mz vr4{mr1}, 0(r19)
001bc8  1f0b8b00  addli r22, r22, 64
001bcc  9f898900  addli r19, r19, 64
001bd0  1f018700  addli r2, r14, 64
001bd4  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
001bd8  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
001bdc  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
001be0  ea342502  vand.s.mz vr9{mr1}, r10, vr2
001be4  ea3329a2  vsll.s.mz vr7{mr1}, r18, vr2
001be8  6a3059a2  vsll.s.mz vr0{mr1}, r18, vr5
001bec  ea305502  vand.s.mz vr1{mr1}, r10, vr5
001bf0  92101802  vadd.f.mz.rn vr1{mr1}, r16, vr1
001bf4  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
001bf8  6a3539a2  vsll.s.mz vr10{mr1}, r18, vr3
001bfc  ea353502  vand.s.mz vr11{mr1}, r10, vr3
001c00  6a3149a2  vsll.s.mz vr2{mr1}, r18, vr4
001c04  ea314502  vand.s.mz vr3{mr1}, r10, vr4
001c08  12129802  vadd.f.mz.rn vr4{mr1}, r16, vr9
001c0c  92147802  vadd.f.mz.rn vr9{mr1}, r16, vr7
001c10  ea3269a2  vsll.s.mz vr5{mr1}, r18, vr6
001c14  ea336502  vand.s.mz vr7{mr1}, r10, vr6
001c18  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
001c1c  0a900302  vmul.f.mz.rn vr0{mr1}, r7, vr0
001c20  0a924302  vmul.f.mz.rn vr4{mr1}, r7, vr4
001c24  0a939302  vmul.f.mz.rn vr6{mr1}, r7, vr9
001c28  ea3489a2  vsll.s.mz vr9{mr1}, r18, vr8
001c2c  6a348502  vand.s.mz vr8{mr1}, r10, vr8
001c30  2b050100  lui r10, 16
001c34  ab890000  lui r19, 8
001c38  8e907002  vmul.f.mz.rn vr1{mr1}, vr1, vr7
001c3c  0e105002  vmul.f.mz.rn vr0{mr1}, vr0, vr5
001c40  a611b202  vmac.f.mz.rn vr3{mr1}, vr4, vr11
001c44  2611a302  vmac.f.mz.rn vr2{mr1}, vr6, vr10
001c48  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
001c4c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
001c50  6a223502  vand.u.mz vr4{mr1}, r10, vr3
001c54  6a232502  vand.u.mz vr6{mr1}, r10, vr2
001c58  f2214002  veq.u.mz mr3{mr1}, zero, vr4
001c5c  72206002  veq.u.mz mr0{mr1}, zero, vr6
001c60  7e810140  vmnot mr2, mr3
001c64  92a13914  vadd.u.mh vr3{mr2}, r19, vr3
001c68  7e010040  vmnot mr2, mr0
001c6c  12a12914  vadd.u.mh vr2{mr2}, r19, vr2
001c70  2b7b0000  lui r22, 7
001c74  1b1bfbff  ori r22, r22, 4095
001c78  92213b16  vadd.u.mh vr3{mr3}, r22, vr3
001c7c  12212b10  vadd.u.mh vr2{mr0}, r22, vr2
001c80  2baeaaaa  lui r28, 699050
001c84  1b1eaeaa  ori r28, r28, 2730
001c88  7e000ee0  vmmov mr0, r28
001c8c  1f0e5fce  addli r28, r30, -6360
001c90  7e0000a0  vmmov zero, mr0
001c94  46003710  vstore.mh vr3{mr0}, 0(r14)
001c98  67000e00  storeli.w zero, 0(r28)
001c9c  ea7129c0  vsrl.p vr3, r18, vr2
001ca0  2b5e5555  lui r28, 349525
001ca4  17200000  xor zero, zero, zero
001ca8  6a211502  vand.u.mz vr2{mr1}, r10, vr1
001cac  1b1e5e55  ori r28, r28, 1365
001cb0  7e000ee0  vmmov mr0, r28
001cb4  1f0e4fce  addli r28, r30, -6368
001cb8  7e0000a0  vmmov zero, mr0
001cbc  46003710  vstore.mh vr3{mr0}, 0(r14)
001cc0  ea210502  vand.u.mz vr3{mr1}, r10, vr0
001cc4  1f055fce  addli r10, r30, -6360
001cc8  1f074fce  addli r14, r30, -6368
001ccc  67000e00  storeli.w zero, 0(r28)
001cd0  17200000  xor zero, zero, zero
001cd4  72212002  veq.u.mz mr2{mr1}, zero, vr2
001cd8  fe010140  vmnot mr3, mr2
001cdc  92a01916  vadd.u.mh vr1{mr3}, r19, vr1
001ce0  f2213002  veq.u.mz mr3{mr1}, zero, vr3
001ce4  7e800140  vmnot mr0, mr3
001ce8  12a00910  vadd.u.mh vr0{mr0}, r19, vr0
001cec  92201b14  vadd.u.mh vr1{mr2}, r22, vr1
001cf0  12200b16  vadd.u.mh vr0{mr3}, r22, vr0
001cf4  63000500  loadli.w zero,  0(r10)
001cf8  7e0000e0  vmmov mr0, zero
001cfc  17200000  xor zero, zero, zero
001d00  46001110  vstore.mh vr1{mr0}, 0(r2)
001d04  ea7009c0  vsrl.p vr1, r18, vr0
001d08  63000700  loadli.w zero,  0(r14)
001d0c  7e0000e0  vmmov mr0, zero
001d10  17200000  xor zero, zero, zero
001d14  46001110  vstore.mh vr1{mr0}, 0(r2)
001d18  3f3ab2fe  blt.s r4, r11, -372
001d1c  dbc8ffff  j -444
001d20  63412fcd  loadli.w r2,  -6508(r30)
001d24  37050100  beq r2, zero, 320
001d28  6301ffcc  loadli.w r2,  -6536(r30)
001d2c  b70a0100  beq r2, zero, 672
001d30  1f013fce  addli r2, r30, -6376
001d34  eb550100  load.d r[12:13], 0(r2)
001d38  bfa885fe  blt.s r11, r8, -472
001d3c  1f010000  addli r2, zero, 0
001d40  9f810400  addli r3, r9, 0
001d44  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
001d48  2b02ffff  lui r4, 1048560
001d4c  1f858100  addli r10, r3, 64
001d50  1f0e5fce  addli r28, r30, -6360
001d54  1f018100  addli r2, r2, 64
001d58  c2110502  vload_mask16.mz vr3{mr1}, 0(r10)
001d5c  2b070100  lui r14, 16
001d60  ab890000  lui r19, 8
001d64  ea300202  vand.s.mz vr1{mr1}, r4, vr0
001d68  6a3009a2  vsll.s.mz vr0{mr1}, r18, vr0
001d6c  92101802  vadd.f.mz.rn vr1{mr1}, r16, vr1
001d70  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
001d74  0a911302  vmul.f.mz.rn vr2{mr1}, r7, vr1
001d78  0a900302  vmul.f.mz.rn vr0{mr1}, r7, vr0
001d7c  ea202702  vand.u.mz vr1{mr1}, r14, vr2
001d80  6a220702  vand.u.mz vr4{mr1}, r14, vr0
001d84  f2211002  veq.u.mz mr3{mr1}, zero, vr1
001d88  72204002  veq.u.mz mr0{mr1}, zero, vr4
001d8c  ea303202  vand.s.mz vr1{mr1}, r4, vr3
001d90  ea3139a2  vsll.s.mz vr3{mr1}, r18, vr3
001d94  7e810140  vmnot mr2, mr3
001d98  12a12914  vadd.u.mh vr2{mr2}, r19, vr2
001d9c  7e010040  vmnot mr2, mr0
001da0  12a00914  vadd.u.mh vr0{mr2}, r19, vr0
001da4  2b720000  lui r4, 7
001da8  92101802  vadd.f.mz.rn vr1{mr1}, r16, vr1
001dac  92113802  vadd.f.mz.rn vr3{mr1}, r16, vr3
001db0  1b12f2ff  ori r4, r4, 4095
001db4  12212216  vadd.u.mh vr2{mr3}, r4, vr2
001db8  12200210  vadd.u.mh vr0{mr0}, r4, vr0
001dbc  2babaaaa  lui r22, 699050
001dc0  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
001dc4  1b1babaa  ori r22, r22, 2730
001dc8  7e000be0  vmmov mr0, r22
001dcc  7e0000a0  vmmov zero, mr0
001dd0  46802110  vstore.mh vr2{mr0}, 0(r3)
001dd4  67000e00  storeli.w zero, 0(r28)
001dd8  6a7109c0  vsrl.p vr2, r18, vr0
001ddc  2b5b5555  lui r22, 349525
001de0  0a903302  vmul.f.mz.rn vr0{mr1}, r7, vr3
001de4  17200000  xor zero, zero, zero
001de8  ea211702  vand.u.mz vr3{mr1}, r14, vr1
001dec  1b1b5b55  ori r22, r22, 1365
001df0  7e000be0  vmmov mr0, r22
001df4  1f0b4fce  addli r22, r30, -6368
001df8  7e0000a0  vmmov zero, mr0
001dfc  46802110  vstore.mh vr2{mr0}, 0(r3)
001e00  6a210702  vand.u.mz vr2{mr1}, r14, vr0
001e04  1f074fce  addli r14, r30, -6368
001e08  9f810101  addli r3, r3, 128
001e0c  67000b00  storeli.w zero, 0(r22)
001e10  17200000  xor zero, zero, zero
001e14  72213002  veq.u.mz mr2{mr1}, zero, vr3
001e18  fe010140  vmnot mr3, mr2
001e1c  92a01916  vadd.u.mh vr1{mr3}, r19, vr1
001e20  f2212002  veq.u.mz mr3{mr1}, zero, vr2
001e24  7e800140  vmnot mr0, mr3
001e28  12a00910  vadd.u.mh vr0{mr0}, r19, vr0
001e2c  92201214  vadd.u.mh vr1{mr2}, r4, vr1
001e30  12200216  vadd.u.mh vr0{mr3}, r4, vr0
001e34  1f025fce  addli r4, r30, -6360
001e38  63000200  loadli.w zero,  0(r4)
001e3c  7e0000e0  vmmov mr0, zero
001e40  17200000  xor zero, zero, zero
001e44  46001510  vstore.mh vr1{mr0}, 0(r10)
001e48  ea7009c0  vsrl.p vr1, r18, vr0
001e4c  63000700  loadli.w zero,  0(r14)
001e50  7e0000e0  vmmov mr0, zero
001e54  17200000  xor zero, zero, zero
001e58  46001510  vstore.mh vr1{mr0}, 0(r10)
001e5c  bf2bb1fe  blt.s r2, r11, -280
001e60  5ba0ffff  j -768
001e64  1f013fce  addli r2, r30, -6376
001e68  eb550100  load.d r[12:13], 0(r2)
001e6c  bfd385fe  blt.s r11, r8, -780
001e70  9f010000  addli r3, zero, 0
001e74  1f820400  addli r4, r9, 0
001e78  1f810b00  addli r2, r23, 0
001e7c  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
001e80  2b05ffff  lui r10, 1048560
001e84  ca100102  vloads_mask16.mz vr1{mr1}, 0(r2)
001e88  9f098100  addli r19, r2, 64
001e8c  1f078200  addli r14, r4, 64
001e90  9f818100  addli r3, r3, 64
001e94  1f010101  addli r2, r2, 128
001e98  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
001e9c  4a920902  vloads_mask16.mz vr4{mr1}, 0(r19)
001ea0  ab090100  lui r19, 16
001ea4  6a310502  vand.s.mz vr2{mr1}, r10, vr0
001ea8  6a3009a2  vsll.s.mz vr0{mr1}, r18, vr0
001eac  6a333502  vand.s.mz vr6{mr1}, r10, vr3
001eb0  12112802  vadd.f.mz.rn vr2{mr1}, r16, vr2
001eb4  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
001eb8  ea3219a2  vsll.s.mz vr5{mr1}, r18, vr1
001ebc  ea301502  vand.s.mz vr1{mr1}, r10, vr1
001ec0  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
001ec4  0a900302  vmul.f.mz.rn vr0{mr1}, r7, vr0
001ec8  ea3349a2  vsll.s.mz vr7{mr1}, r18, vr4
001ecc  6a324502  vand.s.mz vr4{mr1}, r10, vr4
001ed0  2b850000  lui r10, 8
001ed4  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
001ed8  0e900202  vmul.f.mz.rn vr0{mr1}, vr5, vr0
001edc  6a3139a2  vsll.s.mz vr2{mr1}, r18, vr3
001ee0  92116802  vadd.f.mz.rn vr3{mr1}, r16, vr6
001ee4  eaa21902  vand.u.mz vr5{mr1}, r19, vr1
001ee8  6aa30902  vand.u.mz vr6{mr1}, r19, vr0
001eec  12112802  vadd.f.mz.rn vr2{mr1}, r16, vr2
001ef0  8a913302  vmul.f.mz.rn vr3{mr1}, r7, vr3
001ef4  f2215002  veq.u.mz mr3{mr1}, zero, vr5
001ef8  72206002  veq.u.mz mr0{mr1}, zero, vr6
001efc  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
001f00  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
001f04  7e810140  vmnot mr2, mr3
001f08  92201514  vadd.u.mh vr1{mr2}, r10, vr1
001f0c  7e010040  vmnot mr2, mr0
001f10  12200514  vadd.u.mh vr0{mr2}, r10, vr0
001f14  2b7b0000  lui r22, 7
001f18  1b1bfbff  ori r22, r22, 4095
001f1c  92201b16  vadd.u.mh vr1{mr3}, r22, vr1
001f20  12200b10  vadd.u.mh vr0{mr0}, r22, vr0
001f24  2baeaaaa  lui r28, 699050
001f28  1b1eaeaa  ori r28, r28, 2730
001f2c  7e000ee0  vmmov mr0, r28
001f30  1f0e4fce  addli r28, r30, -6368
001f34  7e0000a0  vmmov zero, mr0
001f38  46001210  vstore.mh vr1{mr0}, 0(r4)
001f3c  67000e00  storeli.w zero, 0(r28)
001f40  ea7009c0  vsrl.p vr1, r18, vr0
001f44  2b5e5555  lui r28, 349525
001f48  0e902302  vmul.f.mz.rn vr0{mr1}, vr7, vr2
001f4c  17200000  xor zero, zero, zero
001f50  6aa13902  vand.u.mz vr2{mr1}, r19, vr3
001f54  1b1e5e55  ori r28, r28, 1365
001f58  7e000ee0  vmmov mr0, r28
001f5c  1f0e5fce  addli r28, r30, -6360
001f60  7e0000a0  vmmov zero, mr0
001f64  46001210  vstore.mh vr1{mr0}, 0(r4)
001f68  eaa00902  vand.u.mz vr1{mr1}, r19, vr0
001f6c  9f095fce  addli r19, r30, -6360
001f70  1f020201  addli r4, r4, 128
001f74  67000e00  storeli.w zero, 0(r28)
001f78  17200000  xor zero, zero, zero
001f7c  72212002  veq.u.mz mr2{mr1}, zero, vr2
001f80  fe010140  vmnot mr3, mr2
001f84  92213516  vadd.u.mh vr3{mr3}, r10, vr3
001f88  f2211002  veq.u.mz mr3{mr1}, zero, vr1
001f8c  7e800140  vmnot mr0, mr3
001f90  12200510  vadd.u.mh vr0{mr0}, r10, vr0
001f94  1f054fce  addli r10, r30, -6368
001f98  92213b14  vadd.u.mh vr3{mr2}, r22, vr3
001f9c  12200b16  vadd.u.mh vr0{mr3}, r22, vr0
001fa0  63000500  loadli.w zero,  0(r10)
001fa4  7e0000e0  vmmov mr0, zero
001fa8  17200000  xor zero, zero, zero
001fac  46003710  vstore.mh vr3{mr0}, 0(r14)
001fb0  ea7009c0  vsrl.p vr1, r18, vr0
001fb4  63800900  loadli.w zero,  0(r19)
001fb8  7e0000e0  vmmov mr0, zero
001fbc  17200000  xor zero, zero, zero
001fc0  46001710  vstore.mh vr1{mr0}, 0(r14)
001fc4  bfeab1fe  blt.s r3, r11, -328
001fc8  5b73ffff  j -1128
001fcc  1f013fce  addli r2, r30, -6376
001fd0  eb550100  load.d r[12:13], 0(r2)
001fd4  3fbe85fc  blt.s r11, r8, -1140
001fd8  1f020fcc  addli r4, r30, -6656
001fdc  9f010000  addli r3, zero, 0
001fe0  1f010000  addli r2, zero, 0
001fe4  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
001fe8  6a910322  vor.f.mz vr2{mr1}, r7, vr0
001fec  8b933410  add.s r7, r9, r3
001ff0  0b953210  add.s r10, r5, r3
001ff4  1f0e5fce  addli r28, r30, -6360
001ff8  1f018100  addli r2, r2, 64
001ffc  9f810101  addli r3, r3, 128
002000  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
002004  2b07ffff  lui r14, 1048560
002008  ca100502  vloads_mask16.mz vr1{mr1}, 0(r10)
00200c  1f058500  addli r10, r10, 64
002010  1f828300  addli r4, r7, 64
002014  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
002018  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
00201c  2b050100  lui r10, 16
002020  ab890000  lui r19, 8
002024  ea310702  vand.s.mz vr3{mr1}, r14, vr0
002028  6a3009a2  vsll.s.mz vr0{mr1}, r18, vr0
00202c  92113802  vadd.f.mz.rn vr3{mr1}, r16, vr3
002030  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
002034  ea321702  vand.s.mz vr5{mr1}, r14, vr1
002038  6a3219a2  vsll.s.mz vr4{mr1}, r18, vr1
00203c  a6123102  vmac.f.mz.rn vr5{mr1}, vr2, vr3
002040  26120102  vmac.f.mz.rn vr4{mr1}, vr2, vr0
002044  6a3079a2  vsll.s.mz vr0{mr1}, r18, vr7
002048  ea3169a2  vsll.s.mz vr3{mr1}, r18, vr6
00204c  ea337702  vand.s.mz vr7{mr1}, r14, vr7
002050  6a336702  vand.s.mz vr6{mr1}, r14, vr6
002054  ea205502  vand.u.mz vr1{mr1}, r10, vr5
002058  6a244502  vand.u.mz vr8{mr1}, r10, vr4
00205c  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
002060  72211002  veq.u.mz mr2{mr1}, zero, vr1
002064  72208002  veq.u.mz mr0{mr1}, zero, vr8
002068  92107802  vadd.f.mz.rn vr1{mr1}, r16, vr7
00206c  a6110102  vmac.f.mz.rn vr3{mr1}, vr2, vr0
002070  fe010140  vmnot mr3, mr2
002074  92a25916  vadd.u.mh vr5{mr3}, r19, vr5
002078  fe010040  vmnot mr3, mr0
00207c  12a24916  vadd.u.mh vr4{mr3}, r19, vr4
002080  2b7b0000  lui r22, 7
002084  26131102  vmac.f.mz.rn vr6{mr1}, vr2, vr1
002088  1b17fbff  ori r14, r22, 4095
00208c  92225714  vadd.u.mh vr5{mr2}, r14, vr5
002090  12224710  vadd.u.mh vr4{mr0}, r14, vr4
002094  2babaaaa  lui r22, 699050
002098  6a206502  vand.u.mz vr0{mr1}, r10, vr6
00209c  1b1babaa  ori r22, r22, 2730
0020a0  7e000be0  vmmov mr0, r22
0020a4  7e0000a0  vmmov zero, mr0
0020a8  46805310  vstore.mh vr5{mr0}, 0(r7)
0020ac  67000e00  storeli.w zero, 0(r28)
0020b0  ea7049c0  vsrl.p vr1, r18, vr4
0020b4  2b5b5555  lui r22, 349525
0020b8  17200000  xor zero, zero, zero
0020bc  1b1b5b55  ori r22, r22, 1365
0020c0  7e000be0  vmmov mr0, r22
0020c4  1f0b4fce  addli r22, r30, -6368
0020c8  7e0000a0  vmmov zero, mr0
0020cc  46801310  vstore.mh vr1{mr0}, 0(r7)
0020d0  ea203502  vand.u.mz vr1{mr1}, r10, vr3
0020d4  9f035fce  addli r7, r30, -6360
0020d8  1f054fce  addli r10, r30, -6368
0020dc  67000b00  storeli.w zero, 0(r22)
0020e0  17200000  xor zero, zero, zero
0020e4  72210002  veq.u.mz mr2{mr1}, zero, vr0
0020e8  fe010140  vmnot mr3, mr2
0020ec  12a36916  vadd.u.mh vr6{mr3}, r19, vr6
0020f0  f2211002  veq.u.mz mr3{mr1}, zero, vr1
0020f4  7e800140  vmnot mr0, mr3
0020f8  92a13910  vadd.u.mh vr3{mr0}, r19, vr3
0020fc  12236714  vadd.u.mh vr6{mr2}, r14, vr6
002100  92213716  vadd.u.mh vr3{mr3}, r14, vr3
002104  63800300  loadli.w zero,  0(r7)
002108  7e0000e0  vmmov mr0, zero
00210c  17200000  xor zero, zero, zero
002110  46006210  vstore.mh vr6{mr0}, 0(r4)
002114  6a7039c0  vsrl.p vr0, r18, vr3
002118  63000500  loadli.w zero,  0(r10)
00211c  7e0000e0  vmmov mr0, zero
002120  17200000  xor zero, zero, zero
002124  46000210  vstore.mh vr0{mr0}, 0(r4)
002128  3f1bb1fe  blt.s r2, r11, -316
00212c  db46ffff  j -1484
002130  00a00000  mfence { lm }
002134  63028fcb  loadli.w r4,  -6720(r30)
002138  3f204000  blt.s zero, r4, 8
00213c  dbe5feff  j -2260
002140  9f054fcb  addli r11, r30, -6752
002144  3391272e  .word 0x2e279133
002148  1f063fce  addli r12, r30, -6376
00214c  1b321200  slli r4, r4, 1
002150  6bd30500  load.d r[7:8], 0(r11)
002154  0b212310  add.ul r[3:4], r[7:8], r[3:4]
002158  6b530600  load.d r[7:8], 0(r12)
00215c  0b316120  mul.sl r[3:4], r[3:4], r[7:8]
002160  9f03bfca  addli r7, r30, -6824
002164  2b0300f0  lui r6, 983040
002168  ebd40300  load.d r[10:11], 0(r7)
00216c  17318102  sll.d r[3:4], r[3:4], r8
002170  17126200  or r4, r4, r6
002174  0ba12410  add.ul r[3:4], r[10:11], r[3:4]
002178  7f321100  s_lm2gm r4, r1, 0(r[3:4])
00217c  dbddfeff  j -2324
002180  1f0d0700  addli r26, r14, 0
002184  00a00300  mfence { lm, sm, gm }
002188  2bf10000  lui r2, 15
00218c  1f034fcb  addli r6, r30, -6752
002190  9f03ffca  addli r7, r30, -6792
002194  1b11f1ff  ori r2, r2, 4095
002198  80210104  csr_set csr3, r2
00219c  00d00100  sync_group
0021a0  eb550300  load.d r[12:13], 0(r6)
0021a4  6bd70300  load.d r[15:16], 0(r7)
0021a8  630bcfca  loadli.w r22,  -6816(r30)
0021ac  00310002  core_id r2
0021b0  3b6701fa  bneq r2, zero, -2600
0021b4  3fd781fa  blt.s r3, r8, -2604
0021b8  1f029fca  addli r4, r30, -6840
0021bc  33012028  .word 0x28200133
0021c0  eb540200  load.d r[10:11], 0(r4)
0021c4  13ae2400  seteq.d r28, r[10:11], r[3:4]
0021c8  1f210000  addli r2, zero, 2
0021cc  1f00dfcc  addli zero, r30, -6552
0021d0  17b32502  sll.d r[7:8], r[12:13], r2
0021d4  6b510000  load.d r[3:4], 0(zero)
0021d8  17200000  xor zero, zero, zero
0021dc  1b322100  slli r4, r2, 2
0021e0  27010300  addli.d r[3:4], r[7:8], 0
0021e4  3b500e00  bneq r28, zero, 20
0021e8  2b0300f0  lui r6, 983040
0021ec  8ba42410  add.ul r[10:11], r[10:11], r[3:4]
0021f0  17136200  or r6, r4, r6
0021f4  7f931401  s_sm2gm r6, r17, 0(r[10:11])
0021f8  1f0eafca  addli r28, r30, -6832
0021fc  33036028  .word 0x28600333
002200  eb540e00  load.d r[10:11], 0(r28)
002204  13a36400  seteq.d r6, r[10:11], r[7:8]
002208  6305dfca  loadli.w r10,  -6808(r30)
00220c  bb7503fa  bneq r6, zero, -2692
002210  9f03afca  addli r7, r30, -6832
002214  2b0300f0  lui r6, 983040
002218  ebd40300  load.d r[10:11], 0(r7)
00221c  17126200  or r4, r4, r6
002220  63037fca  loadli.w r6,  -6856(r30)
002224  0ba12410  add.ul r[3:4], r[10:11], r[3:4]
002228  6305dfca  loadli.w r10,  -6808(r30)
00222c  7f126100  s_sm2gm r4, r6, 0(r[3:4])
002230  5babfeff  j -2728
002234  6743afcf  storeli.w r26, -6348(r30)
002238  9f0e0fc9  addli sp, r30, -7040
00223c  9f8e0e37  addli sp, sp, 7040
002240  00a00300  mfence { lm, sm, gm }
002244  00100000  exit
002248  9f000008  addli r1, zero, 1024
00224c  2771f907  addli.d r[3:4], r[19:20], 1023
002250  3382402a  .word 0x2a408233
002254  8f104162  .word 0x6241108f
002258  a3b00002  slli.d r[2:3], r[2:3], 32
00225c  23d60002  srai.d r[13:14], r[2:3], 32
002260  80d00002  load_param_i r1, 1
002264  80510002  load_param_i r3, 0
002268  00340002  core_id r8
00226c  9f08cfca  addli r17, r30, -6816
002270  0b111338  mod.s r2, r6, r1
002274  8b101330  div.s r1, r6, r1
002278  9b444400  srli r9, r8, 4
00227c  13922104  setlt.s r4, r3, r2
002280  0b912140  min.s r2, r3, r2
002284  0b913050  fmac.s r2, r1, r3
002288  0b176140  min.s r14, r2, r6
00228c  8b904010  add.s r1, r1, r4
002290  8b902010  add.s r1, r1, r2
002294  1f012000  addli r2, zero, 16
002298  8b976040  min.s r15, r1, r6
00229c  9b00f400  andi r1, r8, 15
0022a0  8b9ce718  sub.s r25, r15, r14
0022a4  8b922c30  div.s r5, r25, r2
0022a8  9bb14200  slli r3, r5, 4
0022ac  8b913c18  sub.s r3, r25, r3
0022b0  13933004  setlt.s r6, r1, r3
0022b4  0b923040  min.s r4, r1, r3
0022b8  9f030200  addli r7, r4, 0
0022bc  8b931250  fmac.s r7, r5, r1
0022c0  8b926210  add.s r5, r5, r6
0022c4  0b939341  min.s r6, r7, r25
0022c8  8b927210  add.s r5, r5, r7
0022cc  b383742a  .word 0x2a7483b3
0022d0  67436fca  storeli.w r6, -6860(r30)
0022d4  8b929241  min.s r5, r5, r25
0022d8  73b07800  store.d r[8:9], 0(r17)
0022dc  8b13e310  add.s r7, r6, r14
0022e0  0b98e210  add.s r16, r5, r14
0022e4  67087fca  storeli.w r7, -6784(r30)
0022e8  67035fca  storeli.w r5, -6864(r30)
0022ec  cbd66202  ble.s r5, r6, 1460
0022f0  9f028000  addli r5, zero, 64
0022f4  e709ffca  storeli.w r15, -6760(r30)
0022f8  9f076fcb  addli r15, r30, -6736
0022fc  27737900  addli.d r[7:8], r[19:20], 63
002300  e70aefca  storeli.w r14, -6744(r30)
002304  e7050fcd  storeli.w r16, -6568(r30)
002308  1f088fcb  addli r16, r30, -6720
00230c  9f0dcfca  addli r27, r30, -6816
002310  1f0d000c  addli r26, zero, 1536
002314  3385a22a  .word 0x2aa28533
002318  73b0c700  store.d r[13:14], 0(r15)
00231c  73304801  store.d r[21:22], 0(r16)
002320  9f0a4fce  addli r21, r30, -6368
002324  9f020002  addli r5, zero, 256
002328  8f16a362  .word 0x62a3168f
00232c  1f450000  addli r10, zero, 4
002330  b305b52c  .word 0x2cb505b3
002334  8f95b676  .word 0x76b6958f
002338  73b0da00  store.d r[14:15], 0(r21)
00233c  b386d22a  .word 0x2ad286b3
002340  8f12d362  .word 0x62d3128f
002344  ebd60d00  load.d r[14:15], 0(r27)
002348  93b3b604  setlt.sl r7, r[14:15], r[12:13]
00234c  8bb5b640  min.sl r[12:13], r[14:15], r[12:13]
002350  8bb5d250  fmac.sl r[12:13], r[6:7], r[14:15]
002354  9f260000  addli r13, zero, 2
002358  b38a562b  .word 0x2b568ab3
00235c  ab06803f  lui r13, 260096
002360  b383732e  .word 0x2e7383b3
002364  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
002368  9f630000  addli r7, zero, 6
00236c  8ba2b210  add.ul r[6:7], r[6:7], r[12:13]
002370  97b57502  sll.d r[12:13], r[12:13], r7
002374  97b37202  sll.d r[8:9], r[6:7], r7
002378  8bb22541  min.sl r[6:7], r[12:13], r[19:20]
00237c  b305bd2c  .word 0x2cbd05b3
002380  8bb32341  min.sl r[8:9], r[8:9], r[19:20]
002384  0bb75318  sub.sl r[15:16], r[8:9], r[6:7]
002388  2778f70b  addli.d r[17:18], r[15:16], 1535
00238c  0f18b860  div.sl r[17:18], r[17:18], r[12:13]
002390  23380802  slli.d r[17:18], r[17:18], 32
002394  23580802  srai.d r[17:18], r[17:18], 32
002398  a779f8ff  addli.d r[20:21], r[17:18], 32767
00239c  8f18b772  .word 0x72b7188f
0023a0  1ff81c00  addli r16, r25, 15
0023a4  8f9d5977  .word 0x77599d8f
0023a8  37a00800  beq r17, zero, 8
0023ac  1f8d0800  addli r26, r17, 0
0023b0  0b182830  div.s r16, r16, r2
0023b4  9bb82400  slli r17, r9, 2
0023b8  33192d2d  .word 0x2d2d1933
0023bc  9f040000  addli r9, zero, 0
0023c0  37a00100  beq r3, zero, 8
0023c4  8b141218  sub.s r9, r4, r1
0023c8  1f067fcb  addli r12, r30, -6728
0023cc  670a9fcb  storeli.w r25, -6752(r30)
0023d0  9f1c0000  addli r25, zero, 1
0023d4  8b141850  fmac.s r9, r16, r1
0023d8  0b372719  sub.sl r[15:16], r[15:16], r[19:20]
0023dc  9f050018  addli r11, zero, 3072
0023e0  9f000000  addli r1, zero, 0
0023e4  73307601  store.d r[24:25], 0(r12)
0023e8  1f0c3fce  addli r24, r30, -6376
0023ec  eb510c00  load.d r[4:5], 0(r24)
0023f0  8fbb7101  .word 0x0171bb8f
0023f4  2b020000  lui r4, 0
0023f8  93a15302  setneq.d r3, r[8:9], r[6:7]
0023fc  1f020200  addli r4, r4, 0
002400  8b181211  add.s r17, r4, r17
002404  00320002  core_id r4
002408  130a2204  setlt.u r20, r4, r2
00240c  1f014fce  addli r2, r30, -6368
002410  eb5a0100  load.d r[22:23], 0(r2)
002414  0b92aa40  min.s r4, r21, r10
002418  1f058fcd  addli r10, r30, -6464
00241c  97ba9203  sll.d r[22:23], r[6:7], r25
002420  7330e500  store.d r[15:16], 0(r10)
002424  37a00d00  beq r27, zero, 8
002428  9f000018  addli r1, zero, 3072
00242c  0f857619  div.f.rn r10, r13, r23
002430  17093a00  and r18, r20, r3
002434  93a95300  seteq.d r19, r[8:9], r[6:7]
002438  1f08efca  addli r16, r30, -6800
00243c  9f038fcd  addli r7, r30, -6464
002440  1f0c3fcd  addli r24, r30, -6504
002444  9f070000  addli r15, zero, 0
002448  1f010000  addli r2, zero, 0
00244c  1f041fcd  addli r8, r30, -6520
002450  1f062000  addli r12, zero, 16
002454  9f060001  addli r13, zero, 128
002458  1f77f00b  addli r14, zero, 1535
00245c  7e800ce0  vmmov mr0, r25
002460  6707afcd  storeli.w r26, -6544(r30)
002464  67082fcd  storeli.w r18, -6528(r30)
002468  e70bafcc  storeli.w r10, -6472(r30)
00246c  13850d02  setneq r10, r27, zero
002470  630ebfcc  loadli.w r28,  -6568(r30)
002474  9f0d0002  addli r27, zero, 256
002478  e7073fcd  storeli.w r19, -6536(r30)
00247c  e706afcc  storeli.w r10, -6552(r30)
002480  1b351d00  slli r10, r26, 1
002484  674bafcc  storeli.w r10, -6476(r30)
002488  1f850801  addli r10, r17, 128
00248c  e70aafcc  storeli.w r10, -6488(r30)
002490  1f852801  addli r10, r17, 144
002494  e3080fcb  loadli.w r17,  -6784(r30)
002498  674aafcc  storeli.w r10, -6492(r30)
00249c  8b911419  sub.s r3, r9, r17
0024a0  eb540800  load.d r[10:11], 0(r16)
0024a4  670a3fcc  storeli.w r3, -6496(r30)
0024a8  8b119249  max.s r3, r4, r25
0024ac  8ba45411  add.ul r[10:11], r[10:11], r[22:23]
0024b0  6bdb0300  load.d r[23:24], 0(r7)
0024b4  9f0a4000  addli r21, zero, 32
0024b8  67063fcc  storeli.w r3, -6560(r30)
0024bc  9f010fd0  addli r3, r30, -6144
0024c0  73309c00  store.d r[10:11], 0(r24)
0024c4  1f058000  addli r10, zero, 64
0024c8  9f743000  addli r9, zero, 31
0024cc  0b9a1110  add.s r20, r3, r1
0024d0  9f00000c  addli r1, zero, 1536
0024d4  97319b03  sll.d r[4:5], r[23:24], r25
0024d8  b382502a  .word 0x2a5082b3
0024dc  9f000fcc  addli r1, r30, -6656
0024e0  73303400  store.d r[4:5], 0(r8)
0024e4  67494fcd  storeli.w r20, -6508(r30)
0024e8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0024ec  ee300062  vxor.s.mz vr1{mr1}, vr0, vr0
0024f0  db020000  j 20
0024f4  73603240  stores.w r3, 1024(r4)
0024f8  00a00000  mfence { lm }
0024fc  3fa0c801  blt.s r17, r28, 8
002500  5b6c0000  j 864
002504  1f7efeff  addli r28, r28, -1
002508  3bca0900  bneq r19, zero, 656
00250c  9f083fce  addli r17, r30, -6376
002510  b3101e28  .word 0x281e10b3
002514  1f093fcd  addli r18, r30, -6504
002518  9f091fcd  addli r19, r30, -6520
00251c  1f0c5fce  addli r24, r30, -6360
002520  ebd10800  load.d r[4:5], 0(r17)
002524  2b0800f0  lui r16, 983040
002528  eb530900  load.d r[8:9], 0(r18)
00252c  8bb03020  mul.sl r[2:3], r[2:3], r[4:5]
002530  b3013028  .word 0x283001b3
002534  97b09003  sll.d r[2:3], r[2:3], r25
002538  8ba31310  add.ul r[8:9], r[8:9], r[2:3]
00253c  93303b04  setlt.sl r1, r[23:24], r[4:5]
002540  6bd10900  load.d r[3:4], 0(r19)
002544  63426fcd  loadli.w r4,  -6476(r30)
002548  73307c00  store.d r[8:9], 0(r24)
00254c  0ba12310  add.ul r[3:4], r[8:9], r[3:4]
002550  17120201  or r4, r4, r16
002554  7f224101  l_gm2lm r4, r20, 0(r[3:4])
002558  00a00200  mfence { lm, gm }
00255c  3ba80000  bneq r1, zero, 520
002560  e307efcc  loadli.w r15,  -6544(r30)
002564  e300dfcc  loadli.w r1,  -6552(r30)
002568  1f0c0000  addli r24, zero, 0
00256c  1f0d0000  addli r26, zero, 0
002570  27080b00  addli.d r[17:18], r[23:24], 0
002574  db1f0000  j 252
002578  1f020000  addli r4, zero, 0
00257c  aba3aaaa  lui r7, 699050
002580  1b311100  slli r2, r2, 1
002584  9b93a3aa  ori r7, r7, 2730
002588  0b112a10  add.s r2, r20, r2
00258c  17847100  and r8, r3, r7
002590  7e0104e0  vmmov mr2, r8
002594  42000104  vload.mz vr0{mr2}, 0(r2)
002598  2b545555  lui r8, 349525
00259c  1b145455  ori r8, r8, 1365
0025a0  97818100  and r3, r3, r8
0025a4  7e8101e0  vmmov mr2, r3
0025a8  97017200  and r3, r4, r7
0025ac  96125002  vadd.f.mz.rn vr5{mr1}, vr0, vr5
0025b0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0025b4  42030104  vload.mz vr6{mr2}, 0(r2)
0025b8  1f018100  addli r2, r2, 64
0025bc  ea7366a0  vsll.p vr7, r12, vr6
0025c0  7e8101e0  vmmov mr2, r3
0025c4  97018200  and r3, r4, r8
0025c8  42030104  vload.mz vr6{mr2}, 0(r2)
0025cc  7e8101e0  vmmov mr2, r3
0025d0  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
0025d4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0025d8  42040104  vload.mz vr8{mr2}, 0(r2)
0025dc  16104302  vadd.f.mz.rn vr0{mr1}, vr6, vr4
0025e0  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
0025e4  6a7386a0  vsll.p vr6, r12, vr8
0025e8  16120302  vadd.f.mz.rn vr4{mr1}, vr6, vr0
0025ec  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
0025f0  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0025f4  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0025f8  3301272c  .word 0x2c270133
0025fc  9ba01000  xori r1, r1, 1
002600  1f0a0fd0  addli r20, r30, -6144
002604  9f07000c  addli r15, zero, 1536
002608  00a00000  mfence { lm }
00260c  93310105  setlt.sl r3, r[3:4], r[17:18]
002610  0b9ab050  fmac.s r20, r1, r11
002614  27080b00  addli.d r[17:18], r[23:24], 0
002618  eaf10dc0  vsrl.p vr3, r27, vr0
00261c  6af22dc0  vsrl.p vr4, r27, vr2
002620  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
002624  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
002628  eaf106c0  vsrl.p vr3, r13, vr0
00262c  6af226c0  vsrl.p vr4, r13, vr2
002630  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
002634  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
002638  ea7105c0  vsrl.p vr3, r10, vr0
00263c  6a7225c0  vsrl.p vr4, r10, vr2
002640  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
002644  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
002648  eaf10ac0  vsrl.p vr3, r21, vr0
00264c  6af22ac0  vsrl.p vr4, r21, vr2
002650  16900102  vadd.f.mz.rn vr0{mr1}, vr3, vr0
002654  16112202  vadd.f.mz.rn vr2{mr1}, vr4, vr2
002658  7a110020  vextract.f r2, vr0{mr0}
00265c  7a120120  vextract.f r4, vr2{mr0}
002660  0b6d2d10  add.f.rn r26, r26, r2
002664  0b6c4c10  add.f.rn r24, r24, r4
002668  1f01000c  addli r2, zero, 1536
00266c  37940100  beq r3, zero, 260
002670  13215804  setlt.ul r2, r[17:18], r[6:7]
002674  270b08f4  addli.d r[23:24], r[17:18], 31232
002678  bb300100  bneq r2, zero, 44
00267c  1ba11000  xori r2, r1, 1
002680  9f010fd0  addli r3, r30, -6144
002684  1f025fce  addli r4, r30, -6360
002688  97339b03  sll.d r[8:9], r[23:24], r25
00268c  8b11b150  fmac.s r3, r2, r11
002690  2b0100f0  lui r2, 983040
002694  6b590200  load.d r[19:20], 0(r4)
002698  17912500  or r2, r11, r2
00269c  8b237910  add.ul r[8:9], r[19:20], r[8:9]
0026a0  7fa13300  l_gm2lm r2, r3, 0(r[8:9])
0026a4  2bf1ffff  lui r2, 1048575
0026a8  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0026ac  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0026b0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0026b4  92321002  vadd.s.mz vr5{mr1}, zero, vr1
0026b8  1b1101fc  ori r2, r2, 4032
0026bc  17812700  and r2, r15, r2
0026c0  bf219101  blt.s r2, r25, 104
0026c4  92321002  vadd.s.mz vr5{mr1}, zero, vr1
0026c8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0026cc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0026d0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0026d4  9f010000  addli r3, zero, 0
0026d8  1f020a00  addli r4, r20, 0
0026dc  9f038200  addli r7, r4, 64
0026e0  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0026e4  2b04ffff  lui r8, 1048560
0026e8  9f818100  addli r3, r3, 64
0026ec  1f020201  addli r4, r4, 128
0026f0  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
0026f4  ea330402  vand.s.mz vr7{mr1}, r8, vr0
0026f8  6a3006a2  vsll.s.mz vr0{mr1}, r12, vr0
0026fc  6a346402  vand.s.mz vr8{mr1}, r8, vr6
002700  6a3366a2  vsll.s.mz vr6{mr1}, r12, vr6
002704  96925302  vadd.f.mz.rn vr5{mr1}, vr7, vr5
002708  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
00270c  16124402  vadd.f.mz.rn vr4{mr1}, vr8, vr4
002710  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002714  96125002  vadd.f.mz.rn vr5{mr1}, vr0, vr5
002718  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00271c  16124302  vadd.f.mz.rn vr4{mr1}, vr6, vr4
002720  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002724  bfee21fe  blt.s r3, r2, -72
002728  3f20f100  blt.s r2, r15, 8
00272c  dbd8ffff  j -316
002730  0b92a738  mod.s r4, r15, r10
002734  abf1ffff  lui r3, 1048575
002738  9b97f1ff  ori r15, r3, 4095
00273c  9f810700  addli r3, r15, 0
002740  3fb04400  blt.s r9, r4, 12
002744  97b14700  sll r3, r15, r4
002748  97a1f100  xor r3, r3, r15
00274c  3fa04a00  blt.s r21, r4, 8
002750  5bc5ffff  j -472
002754  1f02c2ff  addli r4, r4, -32
002758  17b24700  sll r4, r15, r4
00275c  1722f200  xor r4, r4, r15
002760  dbc3ffff  j -484
002764  6301efcc  loadli.w r2,  -6544(r30)
002768  1f0d0000  addli r26, zero, 0
00276c  1f0c0000  addli r24, zero, 0
002770  e3005fcd  loadli.w r1,  -6488(r30)
002774  e3080fcb  loadli.w r17,  -6784(r30)
002778  634a2fcd  loadli.w r20,  -6508(r30)
00277c  63090fcd  loadli.w r18,  -6528(r30)
002780  e309ffcc  loadli.w r19,  -6536(r30)
002784  6780a001  storeli.w r26, 0(r1)
002788  e3404fcd  loadli.w r1,  -6492(r30)
00278c  67808001  storeli.w r24, 0(r1)
002790  9f008fcd  addli r1, r30, -6464
002794  6bdb0000  load.d r[23:24], 0(r1)
002798  00a00000  mfence { lm }
00279c  00300000  sync_local
0027a0  376509fe  beq r18, zero, -680
0027a4  9f004fce  addli r1, r30, -6368
0027a8  ebd10000  load.d r[4:5], 0(r1)
0027ac  bff09101  blt.s r3, r25, 60
0027b0  2b020000  lui r4, 0
0027b4  e303cfcc  loadli.w r7,  -6560(r30)
0027b8  9f000000  addli r1, zero, 0
0027bc  9f010000  addli r3, zero, 0
0027c0  1f020200  addli r4, r4, 0
0027c4  1f022201  addli r4, r4, 144
0027c8  6304e2ff  loadli.w r8,  -16(r4)
0027cc  63080200  loadli.w r16,  0(r4)
0027d0  9ff3f3ff  addli r7, r7, -1
0027d4  1f420200  addli r4, r4, 4
0027d8  8be18110  add.f.rn r3, r3, r8
0027dc  8be00011  add.f.rn r1, r1, r16
0027e0  bbaf03fe  bneq r7, zero, -24
0027e4  db010000  j 12
0027e8  9f010000  addli r3, zero, 0
0027ec  9f000000  addli r1, zero, 0
0027f0  63027fcd  loadli.w r4,  -6472(r30)
0027f4  0b141e19  sub.s r8, r28, r17
0027f8  1b342400  slli r8, r8, 2
0027fc  8b633220  mul.f.rn r7, r4, r3
002800  8be04020  mul.f.rn r1, r1, r4
002804  8be17320  mul.f.rn r3, r7, r7
002808  8be03018  sub.f.rn r1, r1, r3
00280c  e301dfca  loadli.w r3,  -6808(r30)
002810  2b02803f  lui r4, 260096
002814  8be13010  add.f.rn r3, r1, r3
002818  8f813108  .word 0x0831818f
00281c  8f013218  div.f.rn r3, r4, r3
002820  63024fcd  loadli.w r4,  -6496(r30)
002824  2b080000  lui r16, 0
002828  1f080800  addli r16, r16, 0
00282c  0b12c211  add.s r4, r4, r28
002830  0b140411  add.s r8, r8, r16
002834  2b080000  lui r16, 0
002838  1b322200  slli r4, r4, 2
00283c  1f080800  addli r16, r16, 0
002840  67007400  storeli.w r7, 0(r8)
002844  67043400  storeli.w r3, 64(r8)
002848  0b120211  add.s r4, r4, r16
00284c  73607200  stores.w r7, 0(r4)
002850  e3431fca  loadli.w r7,  -6900(r30)
002854  bb8203fe  bneq r7, zero, -864
002858  9f810000  addli r3, r1, 0
00285c  5b93ffff  j -872
002860  67432fce  storeli.w r2, -6348(r30)
002864  9f003fce  addli r1, r30, -6376
002868  1f019fca  addli r2, r30, -6840
00286c  9f018fcb  addli r3, r30, -6720
002870  1f027fcb  addli r4, r30, -6728
002874  9f026fcb  addli r5, r30, -6736
002878  e703ffce  storeli.w r15, -6344(r30)
00287c  6308bfcc  loadli.w r16,  -6568(r30)
002880  63075fcb  loadli.w r14,  -6744(r30)
002884  e30c4fcb  loadli.w r25,  -6752(r30)
002888  e3073fcb  loadli.w r15,  -6760(r30)
00288c  6bd90000  load.d r[19:20], 0(r1)
002890  6b550100  load.d r[11:12], 0(r2)
002894  6bda0100  load.d r[21:22], 0(r3)
002898  eb5b0200  load.d r[24:25], 0(r4)
00289c  6bd60200  load.d r[13:14], 0(r5)
0028a0  00a00300  mfence { lm, sm, gm }
0028a4  abf00000  lui r1, 15
0028a8  9b90f0ff  ori r1, r1, 4095
0028ac  80a10004  csr_set csr3, r1
0028b0  00d00100  sync_group
0028b4  3782e700  beq r15, r14, 128
0028b8  80300002  core_id r1
0028bc  bbe10000  bneq r1, zero, 120
0028c0  b3001028  .word 0x281000b3
0028c4  13221500  seteq.d r4, r[11:12], r[2:3]
0028c8  3311272c  .word 0x2c271133
0028cc  9bb02c00  slli r1, r25, 2
0028d0  bb100200  bneq r4, zero, 36
0028d4  1f220000  addli r4, zero, 2
0028d8  2b0300f0  lui r6, 983040
0028dc  ab030000  lui r7, 0
0028e0  17324102  sll.d r[5:6], r[3:4], r4
0028e4  17936000  or r6, r1, r6
0028e8  9f830300  addli r7, r7, 0
0028ec  0b224510  add.ul r[5:6], r[11:12], r[5:6]
0028f0  7f137200  s_sm2gm r6, r7, 0(r[5:6])
0028f4  1f04afca  addli r8, r30, -6832
0028f8  33024028  .word 0x28400233
0028fc  6b530400  load.d r[7:8], 0(r8)
002900  13224300  seteq.d r4, r[7:8], r[5:6]
002904  bb400200  bneq r4, zero, 48
002908  1f220000  addli r4, zero, 2
00290c  1f04afca  addli r8, r30, -6832
002910  ab020000  lui r5, 0
002914  17314102  sll.d r[3:4], r[3:4], r4
002918  2b0200f0  lui r4, 983040
00291c  6b530400  load.d r[7:8], 0(r8)
002920  9f820200  addli r5, r5, 0
002924  9f820208  addli r5, r5, 1024
002928  97904000  or r1, r1, r4
00292c  0b212310  add.ul r[3:4], r[7:8], r[3:4]
002930  ff105100  s_sm2gm r1, r5, 0(r[3:4])
002934  9f100000  addli r1, zero, 1
002938  b380102a  .word 0x2a1080b3
00293c  93301904  setlt.sl r1, r[19:20], r[2:3]
002940  bbe300fc  bneq r1, zero, -1800
002944  1f01dfc9  addli r2, r30, -6936
002948  93207a03  setneq.d r1, r[21:22], r[24:25]
00294c  b30c9029  .word 0x29900cb3
002950  9f231000  addli r7, zero, 10
002954  eb540100  load.d r[10:11], 0(r2)
002958  93a19403  setneq.d r3, r[10:11], r[26:27]
00295c  e7071fca  storeli.w r1, -6792(r30)
002960  2bf20100  lui r4, 31
002964  3bb00100  bneq r3, zero, 12
002968  1f040000  addli r8, zero, 0
00296c  5b010000  j 8
002970  1b1402c0  ori r8, r4, 3072
002974  1f01ffc9  addli r2, r30, -6920
002978  e3000fcb  loadli.w r1,  -6784(r30)
00297c  97357602  sll.d r[12:13], r[13:14], r7
002980  9f080000  addli r17, zero, 0
002984  eb520100  load.d r[6:7], 0(r2)
002988  2b010000  lui r2, 0
00298c  e303ffca  loadli.w r7,  -6792(r30)
002990  8b161818  sub.s r13, r16, r1
002994  1f010100  addli r2, r2, 0
002998  13a29201  seteq.d r4, r[6:7], r[26:27]
00299c  93a29203  setneq.d r5, r[6:7], r[26:27]
0029a0  13a39401  seteq.d r6, r[10:11], r[26:27]
0029a4  0b112410  add.s r2, r8, r2
0029a8  3ba00300  bneq r7, zero, 8
0029ac  9f280000  addli r17, zero, 2
0029b0  b394902a  .word 0x2a9094b3
0029b4  9f100000  addli r1, zero, 1
0029b8  e7082fcc  storeli.w r2, -6520(r30)
0029bc  1f075fca  addli r14, r30, -6872
0029c0  1f0aefca  addli r20, r30, -6800
0029c4  9f070000  addli r15, zero, 0
0029c8  1f180000  addli r16, zero, 1
0029cc  9f0a3fca  addli r21, r30, -6888
0029d0  e70adfca  storeli.w r13, -6744(r30)
0029d4  9f0d2000  addli r27, zero, 16
0029d8  8bb32421  mul.sl r[8:9], r[10:11], r[19:20]
0029dc  9f040110  addli r9, r2, 2048
0029e0  67019fca  storeli.w r9, -6896(r30)
0029e4  97b41302  sll.d r[10:11], r[8:9], r1
0029e8  93b02507  setle.sl r1, r[12:13], r[19:20]
0029ec  73307700  store.d r[8:9], 0(r14)
0029f0  eb530a00  load.d r[8:9], 0(r20)
0029f4  1f070000  addli r14, zero, 0
0029f8  8ba39310  add.ul r[8:9], r[8:9], r[10:11]
0029fc  9f446fce  addli r9, r30, -6348
002a00  1f350000  addli r10, zero, 3
002a04  73b07a00  store.d r[8:9], 0(r21)
002a08  67021fca  storeli.w r1, -6880(r30)
002a0c  9ff0f6ff  addli r1, r13, -1
002a10  9f060fd0  addli r13, r30, -6144
002a14  67491fcc  storeli.w r1, -6508(r30)
002a18  97805100  and r1, r3, r5
002a1c  674a1fcc  storeli.w r1, -6492(r30)
002a20  97906200  or r1, r5, r6
002a24  9f02afca  addli r5, r30, -6832
002a28  1f037fca  addli r6, r30, -6856
002a2c  e7091fcc  storeli.w r1, -6504(r30)
002a30  97904100  or r1, r3, r4
002a34  9f410000  addli r3, zero, 4
002a38  1f020002  addli r4, zero, 256
002a3c  e7071fcc  storeli.w r1, -6536(r30)
002a40  9f008110  addli r1, r2, 2112
002a44  e7091fca  storeli.w r1, -6760(r30)
002a48  9f008000  addli r1, zero, 64
002a4c  b380102a  .word 0x2a1080b3
002a50  73b01200  store.d r[2:3], 0(r5)
002a54  b380112e  .word 0x2e1180b3
002a58  9f019fca  addli r3, r30, -6840
002a5c  73b01100  store.d r[2:3], 0(r3)
002a60  b3001228  .word 0x281200b3
002a64  1f028fca  addli r4, r30, -6848
002a68  73301200  store.d r[2:3], 0(r4)
002a6c  a7800500  addli.d r[2:3], r[12:13], 0
002a70  73301300  store.d r[2:3], 0(r6)
002a74  5b070000  j 56
002a78  9f003fce  addli r1, r30, -6376
002a7c  9f810800  addli r3, r17, 0
002a80  6bd90000  load.d r[19:20], 0(r1)
002a84  9f02dfca  addli r5, r30, -6808
002a88  9f880100  addli r17, r3, 0
002a8c  9f017fca  addli r3, r30, -6856
002a90  1f180000  addli r16, zero, 1
002a94  ebd00200  load.d r[2:3], 0(r5)
002a98  00a00300  mfence { lm, sm, gm }
002a9c  13b22005  setlt.sl r4, r[2:3], r[19:20]
002aa0  a78c0000  addli.d r[26:27], r[2:3], 0
002aa4  ebd00100  load.d r[2:3], 0(r3)
002aa8  374e02fa  beq r4, zero, -2160
002aac  8b329919  sub.sl r[6:7], r[19:20], r[26:27]
002ab0  1f0cafca  addli r24, r30, -6832
002ab4  1f0e9fca  addli r28, r30, -6840
002ab8  1f0a8fca  addli r20, r30, -6848
002abc  8bb15040  min.sl r[4:5], r[2:3], r[6:7]
002ac0  eb530c00  load.d r[8:9], 0(r24)
002ac4  a7f57100  addli.d r[12:13], r[4:5], 63
002ac8  0f997564  .word 0x6475990f
002acc  eb530e00  load.d r[8:9], 0(r28)
002ad0  0f197974  .word 0x7479190f
002ad4  eb530a00  load.d r[8:9], 0(r20)
002ad8  8f957566  .word 0x6675958f
002adc  1f04cfca  addli r8, r30, -6816
002ae0  6b5b0400  load.d r[23:24], 0(r8)
002ae4  1f040008  addli r8, zero, 1024
002ae8  93332b05  setlt.sl r7, r[23:24], r[19:20]
002aec  0b392b41  min.sl r[19:20], r[23:24], r[19:20]
002af0  0bb96551  fmac.sl r[19:20], r[12:13], r[23:24]
002af4  338a432f  .word 0x2f438a33
002af8  9f630000  addli r7, zero, 6
002afc  8ba54511  add.ul r[12:13], r[12:13], r[21:22]
002b00  8ba52511  add.ul r[12:13], r[12:13], r[19:20]
002b04  17397902  sll.d r[19:20], r[19:20], r7
002b08  17ba7502  sll.d r[21:22], r[12:13], r7
002b0c  8b353940  min.sl r[12:13], r[19:20], r[4:5]
002b10  0b393a40  min.sl r[19:20], r[21:22], r[4:5]
002b14  8b3ab918  sub.sl r[22:23], r[19:20], r[12:13]
002b18  33092029  .word 0x29200933
002b1c  93a32a01  seteq.d r7, r[22:23], r[19:20]
002b20  33092429  .word 0x29240933
002b24  1f048fcd  addli r8, r30, -6464
002b28  73302401  store.d r[19:20], 0(r8)
002b2c  bbb10300  bneq r7, zero, 108
002b30  e3436fca  loadli.w r7,  -6860(r30)
002b34  63046fca  loadli.w r8,  -6864(r30)
002b38  b7017400  beq r8, r7, 96
002b3c  b30b7029  .word 0x29700bb3
002b40  93a37c03  setneq.d r7, r[26:27], r[24:25]
002b44  3bd10300  bneq r7, zero, 84
002b48  e303ffca  loadli.w r7,  -6792(r30)
002b4c  37b10300  beq r7, zero, 76
002b50  1f0a8fcd  addli r20, r30, -6464
002b54  1f0e3fca  addli r28, r30, -6888
002b58  eb530a00  load.d r[8:9], 0(r20)
002b5c  8bbb7a40  min.sl r[24:25], r[22:23], r[8:9]
002b60  1f045fce  addli r8, r30, -6360
002b64  73305400  store.d r[6:7], 0(r8)
002b68  a7820c00  addli.d r[6:7], r[26:27], 0
002b6c  97bc0503  sll.d r[26:27], r[12:13], r16
002b70  2b0800f0  lui r16, 983040
002b74  6b590e00  load.d r[19:20], 0(r28)
002b78  9bb31b00  slli r7, r23, 1
002b7c  97930301  or r7, r7, r16
002b80  8b2b9911  add.ul r[24:25], r[19:20], r[26:27]
002b84  1f095fce  addli r18, r30, -6360
002b88  a78c0200  addli.d r[26:27], r[6:7], 0
002b8c  eb520900  load.d r[6:7], 0(r18)
002b90  ffa3db00  l_gm2lm r7, r13, 0(r[24:25])
002b94  00a00200  mfence { lm, gm }
002b98  1f140000  addli r8, zero, 1
002b9c  1f084fcb  addli r16, r30, -6752
002ba0  33092429  .word 0x29240933
002ba4  93b32105  setlt.sl r7, r[4:5], r[19:20]
002ba8  73302801  store.d r[19:20], 0(r16)
002bac  bbc40300  bneq r7, zero, 304
002bb0  e303ffca  loadli.w r7,  -6792(r30)
002bb4  b7a40300  beq r7, zero, 296
002bb8  9ff37100  addli r7, r3, 63
002bbc  1f048000  addli r8, zero, 64
002bc0  8b938330  div.s r7, r7, r8
002bc4  63440fca  loadli.w r8,  -6908(r30)
002bc8  00a00300  mfence { lm, sm, gm }
002bcc  0b988338  mod.s r16, r7, r8
002bd0  8b938330  div.s r7, r7, r8
002bd4  00340002  core_id r8
002bd8  131a0405  setlt.s r20, r8, r16
002bdc  0b180441  min.s r16, r8, r16
002be0  0b988350  fmac.s r16, r7, r8
002be4  1f140000  addli r8, zero, 1
002be8  8b934311  add.s r7, r7, r20
002bec  2bfa0000  lui r20, 15
002bf0  8b930311  add.s r7, r7, r16
002bf4  1b386800  slli r16, r16, 6
002bf8  9bbb6300  slli r23, r7, 6
002bfc  8b133840  min.s r7, r16, r3
002c00  1b18faff  ori r16, r20, 4095
002c04  8b913b40  min.s r3, r23, r3
002c08  80210804  csr_set csr3, r16
002c0c  00d00100  sync_group
002c10  0b927118  sub.s r4, r3, r7
002c14  bf328200  blt.s r4, r8, 172
002c18  9f01dfc9  addli r3, r30, -6936
002c1c  b30b7029  .word 0x29700bb3
002c20  1b3a1200  slli r20, r4, 1
002c24  6bd90100  load.d r[19:20], 0(r3)
002c28  13287901  seteq.d r16, r[19:20], r[24:25]
002c2c  b39b732f  .word 0x2f739bb3
002c30  9bb31300  slli r7, r7, 1
002c34  3b310800  bneq r16, zero, 76
002c38  a7810c00  addli.d r[4:5], r[26:27], 0
002c3c  1f0e5fce  addli r28, r30, -6360
002c40  97bc8102  sll.d r[26:27], r[4:5], r8
002c44  73305e00  store.d r[6:7], 0(r28)
002c48  97b28b02  sll.d r[6:7], r[24:25], r8
002c4c  2b040000  lui r8, 0
002c50  8b2c9911  add.ul r[26:27], r[19:20], r[26:27]
002c54  1f040400  addli r8, r8, 0
002c58  0b187410  add.s r16, r8, r7
002c5c  8ba25c10  add.ul r[6:7], r[26:27], r[6:7]
002c60  ab0c00f0  lui r25, 983040
002c64  1f140000  addli r8, zero, 1
002c68  1f080810  addli r16, r16, 2048
002c6c  971c9a01  or r25, r20, r25
002c70  ff8c0201  l_gm2sm r25, r16, 0(r[6:7])
002c74  1f085fce  addli r16, r30, -6360
002c78  a78c0100  addli.d r[26:27], r[4:5], 0
002c7c  eb520800  load.d r[6:7], 0(r16)
002c80  1f08ffc9  addli r16, r30, -6920
002c84  b3013028  .word 0x283001b3
002c88  6b590800  load.d r[19:20], 0(r16)
002c8c  93213900  seteq.d r3, r[19:20], r[4:5]
002c90  bbc00100  bneq r3, zero, 48
002c94  1f0effc9  addli r28, r30, -6920
002c98  97b18c02  sll.d r[4:5], r[26:27], r8
002c9c  97bb8b02  sll.d r[24:25], r[24:25], r8
002ca0  6b590e00  load.d r[19:20], 0(r28)
002ca4  2b0800f0  lui r16, 983040
002ca8  17180a01  or r16, r20, r16
002cac  8b213910  add.ul r[4:5], r[19:20], r[4:5]
002cb0  63092fca  loadli.w r18,  -6896(r30)
002cb4  8ba17111  add.ul r[4:5], r[4:5], r[24:25]
002cb8  8b137910  add.s r7, r18, r7
002cbc  7f887100  l_gm2sm r16, r7, 0(r[4:5])
002cc0  00a00300  mfence { lm, sm, gm }
002cc4  abf10000  lui r3, 15
002cc8  9b91f1ff  ori r3, r3, 4095
002ccc  80a10104  csr_set csr3, r3
002cd0  00d00100  sync_group
002cd4  e3014fca  loadli.w r3,  -6880(r30)
002cd8  e7073fca  storeli.w r3, -6792(r30)
002cdc  e3015fcb  loadli.w r3,  -6744(r30)
002ce0  0ba91c10  add.ul r[19:20], r[26:27], r[2:3]
002ce4  1f02dfca  addli r4, r30, -6808
002ce8  73302201  store.d r[19:20], 0(r4)
002cec  3fb681fe  blt.s r3, r8, -628
002cf0  8bb11218  sub.sl r[4:5], r[6:7], r[2:3]
002cf4  1f0a5fce  addli r20, r30, -6360
002cf8  1f0e7fcd  addli r28, r30, -6472
002cfc  1f088fca  addli r16, r30, -6848
002d00  1f003fce  addli zero, r30, -6376
002d04  8bb03040  min.sl r[2:3], r[2:3], r[4:5]
002d08  73309a01  store.d r[26:27], 0(r20)
002d0c  9f0cafca  addli r25, r30, -6832
002d10  1f0d9fca  addli r26, r30, -6840
002d14  9f01cfca  addli r3, r30, -6816
002d18  73301e00  store.d r[2:3], 0(r28)
002d1c  a7f27000  addli.d r[6:7], r[2:3], 63
002d20  ebd00c00  load.d r[2:3], 0(r25)
002d24  8f9b1266  .word 0x66129b8f
002d28  eb500d00  load.d r[2:3], 0(r26)
002d2c  8f9b1b76  .word 0x761b9b8f
002d30  eb500800  load.d r[2:3], 0(r16)
002d34  8f921262  .word 0x6212928f
002d38  ebd00100  load.d r[2:3], 0(r3)
002d3c  a7010900  addli.d r[4:5], r[19:20], 0
002d40  6b590000  load.d r[19:20], 0(zero)
002d44  17200000  xor zero, zero, zero
002d48  13383906  setle.sl r16, r[19:20], r[4:5]
002d4c  e7060fcd  storeli.w r16, -6552(r30)
002d50  93b37005  setlt.sl r7, r[2:3], r[24:25]
002d54  8bbb7041  min.sl r[24:25], r[2:3], r[24:25]
002d58  8bbb1250  fmac.sl r[24:25], r[6:7], r[2:3]
002d5c  b38c932f  .word 0x2f938cb3
002d60  9f034fce  addli r7, r30, -6368
002d64  73b09301  store.d r[26:27], 0(r7)
002d68  9f0c4fce  addli r25, r30, -6368
002d6c  1f0d4fce  addli r26, r30, -6368
002d70  ebd00c00  load.d r[2:3], 0(r25)
002d74  8ba21210  add.ul r[6:7], r[6:7], r[2:3]
002d78  b3001028  .word 0x281000b3
002d7c  73301d00  store.d r[2:3], 0(r26)
002d80  9f600000  addli r1, zero, 6
002d84  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
002d88  1f007fcd  addli zero, r30, -6472
002d8c  97bb1b02  sll.d r[24:25], r[24:25], r1
002d90  97b21202  sll.d r[6:7], r[6:7], r1
002d94  eb500000  load.d r[2:3], 0(zero)
002d98  17200000  xor zero, zero, zero
002d9c  1f004fce  addli zero, r30, -6368
002da0  8bbc1240  min.sl r[26:27], r[6:7], r[2:3]
002da4  9f025fca  addli r5, r30, -6872
002da8  8bbb1b40  min.sl r[24:25], r[24:25], r[2:3]
002dac  ebd00200  load.d r[2:3], 0(r5)
002db0  8bbc7c19  sub.sl r[26:27], r[26:27], r[24:25]
002db4  8ba21110  add.ul r[6:7], r[4:5], r[2:3]
002db8  9f015fce  addli r3, r30, -6360
002dbc  ebd00100  load.d r[2:3], 0(r3)
002dc0  eb510000  load.d r[4:5], 0(zero)
002dc4  17200000  xor zero, zero, zero
002dc8  670a0fcc  storeli.w zero, -6496(r30)
002dcc  93a13c00  seteq.d r3, r[26:27], r[4:5]
002dd0  1f02bfcc  addli r4, r30, -6568
002dd4  97b08002  sll.d r[2:3], r[2:3], r8
002dd8  73307201  store.d r[24:25], 0(r4)
002ddc  0ba27211  add.ul r[5:6], r[6:7], r[24:25]
002de0  9f0b8fcd  addli r23, r30, -6464
002de4  1f0c8fcb  addli r24, r30, -6720
002de8  6bd30b00  load.d r[7:8], 0(r23)
002dec  73309c01  store.d r[26:27], 0(r24)
002df0  17328202  sll.d r[5:6], r[5:6], r8
002df4  0bb36c40  min.sl r[7:8], r[26:27], r[7:8]
002df8  9f0cefca  addli r25, r30, -6800
002dfc  97113800  or r3, r16, r3
002e00  1f0d2fcb  addli r26, r30, -6768
002e04  1b331300  slli r6, r6, 1
002e08  67063fcc  storeli.w r3, -6560(r30)
002e0c  e70b6fca  storeli.w r6, -6728(r30)
002e10  6bd30c00  load.d r[7:8], 0(r25)
002e14  8b2b1310  add.ul r[24:25], r[7:8], r[2:3]
002e18  0b224310  add.ul r[5:6], r[7:8], r[5:6]
002e1c  1f036fcb  addli r6, r30, -6736
002e20  73304300  store.d r[5:6], 0(r6)
002e24  9f02bfca  addli r5, r30, -6824
002e28  73307d01  store.d r[24:25], 0(r26)
002e2c  ebd10200  load.d r[4:5], 0(r5)
002e30  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
002e34  9f011fcb  addli r3, r30, -6776
002e38  73b01100  store.d r[2:3], 0(r3)
002e3c  db040000  j 36
002e40  9f810800  addli r3, r17, 0
002e44  63014fcd  loadli.w r2,  -6496(r30)
002e48  00a00300  mfence { lm, sm, gm }
002e4c  9f880100  addli r17, r3, 0
002e50  e3005fcb  loadli.w r1,  -6744(r30)
002e54  1f110100  addli r2, r2, 1
002e58  670a2fcc  storeli.w r2, -6496(r30)
002e5c  b72011fe  beq r2, r1, -984
002e60  9f024fcb  addli r5, r30, -6752
002e64  1f038fcd  addli r6, r30, -6464
002e68  ebd00200  load.d r[2:3], 0(r5)
002e6c  eb510300  load.d r[4:5], 0(r6)
002e70  93b01a04  setlt.sl r1, r[22:23], r[2:3]
002e74  1bb12700  slli r2, r15, 2
002e78  8bb13a40  min.sl r[4:5], r[22:23], r[4:5]
002e7c  0b912410  add.s r2, r9, r2
002e80  73203100  store.w r3, 0(r2)
002e84  bbfe00fe  bneq r1, zero, -68
002e88  e3000fcb  loadli.w r1,  -6784(r30)
002e8c  63034fcd  loadli.w r6,  -6496(r30)
002e90  1f082fcb  addli r16, r30, -6768
002e94  1f0a1fcb  addli r20, r30, -6776
002e98  17318902  sll.d r[3:4], r[19:20], r8
002e9c  8b101310  add.s r1, r6, r1
002ea0  3392402a  .word 0x2a409233
002ea4  9b302300  slli r1, r6, 2
002ea8  2b030000  lui r6, 0
002eac  1f030300  addli r6, r6, 0
002eb0  0b322221  mul.sl r[5:6], r[5:6], r[19:20]
002eb4  8b906010  add.s r1, r1, r6
002eb8  6b530800  load.d r[7:8], 0(r16)
002ebc  17328202  sll.d r[5:6], r[5:6], r8
002ec0  e70b1fcc  storeli.w r1, -6472(r30)
002ec4  9f808000  addli r1, r1, 64
002ec8  8b2b4310  add.ul r[24:25], r[7:8], r[5:6]
002ecc  6b530a00  load.d r[7:8], 0(r20)
002ed0  674b1fcc  storeli.w r1, -6476(r30)
002ed4  8ba02b10  add.ul r[2:3], r[24:25], r[3:4]
002ed8  9f01efcc  addli r3, r30, -6544
002edc  0b224310  add.ul r[5:6], r[7:8], r[5:6]
002ee0  9f035fcd  addli r7, r30, -6488
002ee4  73b01100  store.d r[2:3], 0(r3)
002ee8  73b04300  store.d r[5:6], 0(r7)
002eec  1f020fcd  addli r4, r30, -6528
002ef0  b3025028  .word 0x285002b3
002ef4  73307201  store.d r[24:25], 0(r4)
002ef8  5b0c0000  j 96
002efc  1f085fcd  addli r16, r30, -6488
002f00  00a00000  mfence { lm }
002f04  1f140000  addli r8, zero, 1
002f08  9f930700  addli r7, r15, 1
002f0c  eb510800  load.d r[4:5], 0(r16)
002f10  97b08c02  sll.d r[2:3], r[26:27], r8
002f14  8b87a338  mod.u r15, r7, r10
002f18  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
002f1c  9f110700  addli r3, r14, 1
002f20  1b321c00  slli r4, r24, 1
002f24  0b97a138  mod.s r14, r3, r10
002f28  ab0100f0  lui r3, 983040
002f2c  97113200  or r3, r4, r3
002f30  ffb1d000  s_lm2gm r3, r13, 0(r[2:3])
002f34  1f010fd0  addli r2, r30, -6144
002f38  9b30b700  slli r1, r14, 11
002f3c  8b161110  add.s r13, r2, r1
002f40  9f003fce  addli r1, r30, -6376
002f44  6bd90000  load.d r[19:20], 0(r1)
002f48  93b05205  setlt.sl r1, r[6:7], r[22:23]
002f4c  9f010000  addli r3, zero, 0
002f50  9f080000  addli r17, zero, 0
002f54  b7cb00fe  beq r1, zero, -272
002f58  9bb02700  slli r1, r15, 2
002f5c  9f910700  addli r3, r15, 1
002f60  1f0a8fcd  addli r20, r30, -6464
002f64  b30c9029  .word 0x29900cb3
002f68  8b901410  add.s r1, r9, r1
002f6c  8b97a138  mod.s r15, r3, r10
002f70  eb510a00  load.d r[4:5], 0(r20)
002f74  93a39a01  seteq.d r7, r[22:23], r[26:27]
002f78  ebe00000  loadext.w r[2:3], 0(r1)
002f7c  8ba21210  add.ul r[6:7], r[6:7], r[2:3]
002f80  1bb82700  slli r16, r15, 2
002f84  8bb05a18  sub.sl r[2:3], r[22:23], r[6:7]
002f88  8bb03040  min.sl r[2:3], r[2:3], r[4:5]
002f8c  8ba1b210  add.ul r[4:5], r[6:7], r[12:13]
002f90  a3b00002  slli.d r[2:3], r[2:3], 32
002f94  8b3b3918  sub.sl r[24:25], r[19:20], r[4:5]
002f98  a3d00002  srai.d r[2:3], r[2:3], 32
002f9c  8bbb1b40  min.sl r[24:25], r[24:25], r[2:3]
002fa0  8b900411  add.s r1, r9, r16
002fa4  67807001  storeli.w r23, 0(r1)
002fa8  3b910300  bneq r7, zero, 68
002fac  3fa18b00  blt.s r23, r8, 72
002fb0  3b840800  bneq r17, zero, 256
002fb4  9f100700  addli r1, r14, 1
002fb8  1f0a0fcd  addli r20, r30, -6528
002fbc  ab0300f0  lui r7, 983040
002fc0  17b88102  sll.d r[17:18], r[4:5], r8
002fc4  1bb11b00  slli r2, r23, 1
002fc8  8b90a038  mod.s r1, r1, r10
002fcc  6b590a00  load.d r[19:20], 0(r20)
002fd0  17117100  or r2, r2, r7
002fd4  0b280911  add.ul r[17:18], r[19:20], r[17:18]
002fd8  1f090fd0  addli r18, r30, -6144
002fdc  9bb0b000  slli r1, r1, 11
002fe0  8b101910  add.s r1, r18, r1
002fe4  7f211800  l_gm2lm r2, r1, 0(r[17:18])
002fe8  5b190000  j 200
002fec  a78a0c00  addli.d r[22:23], r[26:27], 0
002ff0  5bebffff  j -168
002ff4  63412fcd  loadli.w r2,  -6508(r30)
002ff8  e3034fcd  loadli.w r7,  -6496(r30)
002ffc  3bf02300  bneq r7, r2, 28
003000  e300dfcc  loadli.w r1,  -6552(r30)
003004  37e10000  beq r1, zero, 88
003008  b7810000  beq r1, zero, 96
00300c  e300cfcc  loadli.w r1,  -6560(r30)
003010  b7910000  beq r1, zero, 100
003014  db130000  j 156
003018  1f110700  addli r2, r14, 1
00301c  1f0aefcc  addli r20, r30, -6544
003020  9f030008  addli r7, zero, 1024
003024  17b88502  sll.d r[17:18], r[12:13], r8
003028  0b11a138  mod.s r2, r2, r10
00302c  6b590a00  load.d r[19:20], 0(r20)
003030  8b937a40  min.s r7, r21, r7
003034  67807000  storeli.w r7, 0(r1)
003038  9bb01300  slli r1, r7, 1
00303c  ab0300f0  lui r7, 983040
003040  0b280911  add.ul r[17:18], r[19:20], r[17:18]
003044  1f090fd0  addli r18, r30, -6144
003048  97907000  or r1, r1, r7
00304c  1b31b100  slli r2, r2, 11
003050  0b112910  add.s r2, r18, r2
003054  ff202800  l_gm2lm r1, r2, 0(r[17:18])
003058  5b0b0000  j 88
00305c  1f01bfcc  addli r2, r30, -6568
003060  eb550100  load.d r[12:13], 0(r2)
003064  bbae00fe  bneq r1, zero, -88
003068  b30a5029  .word 0x29500ab3
00306c  e300cfcc  loadli.w r1,  -6560(r30)
003070  3b810000  bneq r1, zero, 64
003074  9f100700  addli r1, r14, 1
003078  9f030fd0  addli r7, r30, -6144
00307c  2b0100f0  lui r2, 983040
003080  8b90a038  mod.s r1, r1, r10
003084  9bb0b000  slli r1, r1, 11
003088  8b901310  add.s r1, r7, r1
00308c  e3037fcb  loadli.w r7,  -6728(r30)
003090  17912300  or r2, r7, r2
003094  9f036fcb  addli r7, r30, -6736
003098  ebd50300  load.d r[12:13], 0(r7)
00309c  7fa11500  l_gm2lm r2, r1, 0(r[12:13])
0030a0  9f00bfcc  addli r1, r30, -6568
0030a4  1f018fcb  addli r2, r30, -6720
0030a8  ebd50000  load.d r[12:13], 0(r1)
0030ac  eb5a0100  load.d r[22:23], 0(r2)
0030b0  9fa00700  addli r1, r15, 2
0030b4  63416fcd  loadli.w r2,  -6476(r30)
0030b8  9b80f00f  andi r1, r1, 255
0030bc  630e0100  loadli.w r28,  0(r2)
0030c0  8b87a038  mod.u r15, r1, r10
0030c4  9bb02700  slli r1, r15, 2
0030c8  8b901410  add.s r1, r9, r1
0030cc  638c0000  loadli.w r24,  0(r1)
0030d0  e3007fcd  loadli.w r1,  -6472(r30)
0030d4  e3800000  loadli.w r1,  0(r1)
0030d8  33180c29  .word 0x290c1833
0030dc  8bbc0119  sub.sl r[26:27], r[4:5], r[17:18]
0030e0  8be80058  neg.f r17, r1
0030e4  e3404fcd  loadli.w r1,  -6492(r30)
0030e8  b7b60000  beq r1, zero, 428
0030ec  3f488cfe  blt.s r24, r8, -496
0030f0  63011fcd  loadli.w r2,  -6520(r30)
0030f4  9bb01c00  slli r1, r25, 1
0030f8  1f080000  addli r16, zero, 0
0030fc  1f020000  addli r4, zero, 0
003100  8b131110  add.s r7, r2, r1
003104  2b010000  lui r2, 0
003108  1f010100  addli r2, r2, 0
00310c  8b912010  add.s r3, r1, r2
003110  0b910111  add.s r2, r3, r16
003114  8b900611  add.s r1, r13, r16
003118  0b940311  add.s r8, r7, r16
00311c  9f095fce  addli r19, r30, -6360
003120  1f028200  addli r4, r4, 64
003124  1f080801  addli r16, r16, 128
003128  9f0b0110  addli r23, r2, 2048
00312c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
003130  2b0affff  lui r20, 1048560
003134  1f018110  addli r2, r2, 2112
003138  ca900b02  vloads_mask16.mz vr1{mr1}, 0(r23)
00313c  9f0b0410  addli r23, r8, 2048
003140  1f048410  addli r8, r8, 2112
003144  ca110102  vloads_mask16.mz vr3{mr1}, 0(r2)
003148  4a910b02  vloads_mask16.mz vr2{mr1}, 0(r23)
00314c  9f8b8000  addli r23, r1, 64
003150  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
003154  6ab30da2  vsll.s.mz vr6{mr1}, r27, vr0
003158  6a300a02  vand.s.mz vr0{mr1}, r20, vr0
00315c  42920b02  vload_mask16.mz vr4{mr1}, 0(r23)
003160  2b010100  lui r2, 16
003164  2b840000  lui r8, 8
003168  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
00316c  92956802  vadd.f.mz.rn vr11{mr1}, r17, vr6
003170  6a354a02  vand.s.mz vr10{mr1}, r20, vr4
003174  eab44da2  vsll.s.mz vr9{mr1}, r27, vr4
003178  0a100e02  vmul.f.mz.rn vr0{mr1}, r28, vr0
00317c  8a15be02  vmul.f.mz.rn vr11{mr1}, r28, vr11
003180  eab31da2  vsll.s.mz vr7{mr1}, r27, vr1
003184  6a341a02  vand.s.mz vr8{mr1}, r20, vr1
003188  6ab23da2  vsll.s.mz vr4{mr1}, r27, vr3
00318c  6a333a02  vand.s.mz vr6{mr1}, r20, vr3
003190  92949802  vadd.f.mz.rn vr9{mr1}, r17, vr9
003194  eab02da2  vsll.s.mz vr1{mr1}, r27, vr2
003198  6a312a02  vand.s.mz vr2{mr1}, r20, vr2
00319c  eab15da2  vsll.s.mz vr3{mr1}, r27, vr5
0031a0  ea325a02  vand.s.mz vr5{mr1}, r20, vr5
0031a4  26118002  vmac.f.mz.rn vr2{mr1}, vr0, vr8
0031a8  a6907502  vmac.f.mz.rn vr1{mr1}, vr11, vr7
0031ac  1290a802  vadd.f.mz.rn vr0{mr1}, r17, vr10
0031b0  ea232102  vand.u.mz vr7{mr1}, r2, vr2
0031b4  6a241102  vand.u.mz vr8{mr1}, r2, vr1
0031b8  0a100e02  vmul.f.mz.rn vr0{mr1}, r28, vr0
0031bc  72217002  veq.u.mz mr2{mr1}, zero, vr7
0031c0  72208002  veq.u.mz mr0{mr1}, zero, vr8
0031c4  8a139e02  vmul.f.mz.rn vr7{mr1}, r28, vr9
0031c8  0e106002  vmul.f.mz.rn vr0{mr1}, vr0, vr6
0031cc  fe010140  vmnot mr3, mr2
0031d0  12212416  vadd.u.mh vr2{mr3}, r8, vr2
0031d4  fe010040  vmnot mr3, mr0
0031d8  92201416  vadd.u.mh vr1{mr3}, r8, vr1
0031dc  2b7a0000  lui r20, 7
0031e0  0e924302  vmul.f.mz.rn vr4{mr1}, vr7, vr4
0031e4  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
0031e8  1b1afaff  ori r20, r20, 4095
0031ec  12212a14  vadd.u.mh vr2{mr2}, r20, vr2
0031f0  92201a10  vadd.u.mh vr1{mr0}, r20, vr1
0031f4  2ba9aaaa  lui r18, 699050
0031f8  1b19a9aa  ori r18, r18, 2730
0031fc  7e0009e0  vmmov mr0, r18
003200  7e0000a0  vmmov zero, mr0
003204  46802010  vstore.mh vr2{mr0}, 0(r1)
003208  67800900  storeli.w zero, 0(r19)
00320c  6af11dc0  vsrl.p vr2, r27, vr1
003210  2b595555  lui r18, 349525
003214  96103202  vadd.f.mz.rn vr1{mr1}, vr4, vr3
003218  17200000  xor zero, zero, zero
00321c  ea210102  vand.u.mz vr3{mr1}, r2, vr0
003220  1b195955  ori r18, r18, 1365
003224  7e0009e0  vmmov mr0, r18
003228  1f094fce  addli r18, r30, -6368
00322c  7e0000a0  vmmov zero, mr0
003230  46802010  vstore.mh vr2{mr0}, 0(r1)
003234  6a211102  vand.u.mz vr2{mr1}, r2, vr1
003238  9f005fce  addli r1, r30, -6360
00323c  1f014fce  addli r2, r30, -6368
003240  67000900  storeli.w zero, 0(r18)
003244  17200000  xor zero, zero, zero
003248  f2213002  veq.u.mz mr3{mr1}, zero, vr3
00324c  7e800140  vmnot mr0, mr3
003250  12200410  vadd.u.mh vr0{mr0}, r8, vr0
003254  72202002  veq.u.mz mr0{mr1}, zero, vr2
003258  7e010040  vmnot mr2, mr0
00325c  92201414  vadd.u.mh vr1{mr2}, r8, vr1
003260  12200a16  vadd.u.mh vr0{mr3}, r20, vr0
003264  92201a10  vadd.u.mh vr1{mr0}, r20, vr1
003268  63800000  loadli.w zero,  0(r1)
00326c  7e0000e0  vmmov mr0, zero
003270  17200000  xor zero, zero, zero
003274  46800b10  vstore.mh vr0{mr0}, 0(r23)
003278  6af01dc0  vsrl.p vr0, r27, vr1
00327c  63000100  loadli.w zero,  0(r2)
003280  7e0000e0  vmmov mr0, zero
003284  17200000  xor zero, zero, zero
003288  46800b10  vstore.mh vr0{mr0}, 0(r23)
00328c  3f1a82ff  blt.s r4, r24, -380
003290  db8dffff  j -916
003294  e3003fcd  loadli.w r1,  -6504(r30)
003298  b7e40000  beq r1, zero, 312
00329c  e300ffcc  loadli.w r1,  -6536(r30)
0032a0  b78a0000  beq r1, zero, 672
0032a4  3f618cfe  blt.s r24, r8, -936
0032a8  9f010000  addli r3, zero, 0
0032ac  1f820600  addli r4, r13, 0
0032b0  42100202  vload_mask16.mz vr0{mr1}, 0(r4)
0032b4  ab00ffff  lui r1, 1048560
0032b8  1f018200  addli r2, r4, 64
0032bc  1f095fce  addli r18, r30, -6360
0032c0  9f818100  addli r3, r3, 64
0032c4  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0032c8  ab030100  lui r7, 16
0032cc  2b840000  lui r8, 8
0032d0  eab00002  vand.s.mz vr1{mr1}, r1, vr0
0032d4  6ab00da2  vsll.s.mz vr0{mr1}, r27, vr0
0032d8  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
0032dc  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
0032e0  8a101e02  vmul.f.mz.rn vr1{mr1}, r28, vr1
0032e4  0a100e02  vmul.f.mz.rn vr0{mr1}, r28, vr0
0032e8  eaa11302  vand.u.mz vr3{mr1}, r7, vr1
0032ec  6aa20302  vand.u.mz vr4{mr1}, r7, vr0
0032f0  72213002  veq.u.mz mr2{mr1}, zero, vr3
0032f4  72204002  veq.u.mz mr0{mr1}, zero, vr4
0032f8  eab12002  vand.s.mz vr3{mr1}, r1, vr2
0032fc  6ab12da2  vsll.s.mz vr2{mr1}, r27, vr2
003300  fe010140  vmnot mr3, mr2
003304  92201416  vadd.u.mh vr1{mr3}, r8, vr1
003308  fe010040  vmnot mr3, mr0
00330c  12200416  vadd.u.mh vr0{mr3}, r8, vr0
003310  ab700000  lui r1, 7
003314  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
003318  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
00331c  9b90f0ff  ori r1, r1, 4095
003320  92a01014  vadd.u.mh vr1{mr2}, r1, vr1
003324  12a00010  vadd.u.mh vr0{mr0}, r1, vr0
003328  2ba8aaaa  lui r16, 699050
00332c  8a113e02  vmul.f.mz.rn vr3{mr1}, r28, vr3
003330  1b18a8aa  ori r16, r16, 2730
003334  7e0008e0  vmmov mr0, r16
003338  7e0000a0  vmmov zero, mr0
00333c  46001210  vstore.mh vr1{mr0}, 0(r4)
003340  67000900  storeli.w zero, 0(r18)
003344  eaf00dc0  vsrl.p vr1, r27, vr0
003348  2b585555  lui r16, 349525
00334c  0a102e02  vmul.f.mz.rn vr0{mr1}, r28, vr2
003350  17200000  xor zero, zero, zero
003354  6aa13302  vand.u.mz vr2{mr1}, r7, vr3
003358  1b185855  ori r16, r16, 1365
00335c  7e0008e0  vmmov mr0, r16
003360  1f084fce  addli r16, r30, -6368
003364  7e0000a0  vmmov zero, mr0
003368  46001210  vstore.mh vr1{mr0}, 0(r4)
00336c  eaa00302  vand.u.mz vr1{mr1}, r7, vr0
003370  9f034fce  addli r7, r30, -6368
003374  1f020201  addli r4, r4, 128
003378  67000800  storeli.w zero, 0(r16)
00337c  17200000  xor zero, zero, zero
003380  f2212002  veq.u.mz mr3{mr1}, zero, vr2
003384  7e800140  vmnot mr0, mr3
003388  92213410  vadd.u.mh vr3{mr0}, r8, vr3
00338c  72201002  veq.u.mz mr0{mr1}, zero, vr1
003390  7e010040  vmnot mr2, mr0
003394  12200414  vadd.u.mh vr0{mr2}, r8, vr0
003398  92a13016  vadd.u.mh vr3{mr3}, r1, vr3
00339c  12a00010  vadd.u.mh vr0{mr0}, r1, vr0
0033a0  9f005fce  addli r1, r30, -6360
0033a4  63800000  loadli.w zero,  0(r1)
0033a8  7e0000e0  vmmov mr0, zero
0033ac  17200000  xor zero, zero, zero
0033b0  46003110  vstore.mh vr3{mr0}, 0(r2)
0033b4  eaf00dc0  vsrl.p vr1, r27, vr0
0033b8  63800300  loadli.w zero,  0(r7)
0033bc  7e0000e0  vmmov mr0, zero
0033c0  17200000  xor zero, zero, zero
0033c4  46001110  vstore.mh vr1{mr0}, 0(r2)
0033c8  bfab81ff  blt.s r3, r24, -280
0033cc  5b66ffff  j -1232
0033d0  bf3c8cfc  blt.s r24, r8, -1236
0033d4  2b010000  lui r2, 0
0033d8  9bb01c00  slli r1, r25, 1
0033dc  9f010000  addli r3, zero, 0
0033e0  9f830600  addli r7, r13, 0
0033e4  1f010100  addli r2, r2, 0
0033e8  8b101110  add.s r1, r2, r1
0033ec  1f828010  addli r4, r1, 2112
0033f0  9f0082ff  addli r1, r4, -64
0033f4  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
0033f8  2b01ffff  lui r2, 1048560
0033fc  ca100202  vloads_mask16.mz vr1{mr1}, 0(r4)
003400  9f094fce  addli r19, r30, -6368
003404  9f818100  addli r3, r3, 64
003408  1f020201  addli r4, r4, 128
00340c  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
003410  9f808300  addli r1, r7, 64
003414  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
003418  2b040100  lui r8, 16
00341c  2b880000  lui r16, 8
003420  ea310102  vand.s.mz vr3{mr1}, r2, vr0
003424  6ab00da2  vsll.s.mz vr0{mr1}, r27, vr0
003428  92913802  vadd.f.mz.rn vr3{mr1}, r17, vr3
00342c  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
003430  6a334102  vand.s.mz vr6{mr1}, r2, vr4
003434  eab31da2  vsll.s.mz vr7{mr1}, r27, vr1
003438  ea301102  vand.s.mz vr1{mr1}, r2, vr1
00343c  8a113e02  vmul.f.mz.rn vr3{mr1}, r28, vr3
003440  0a100e02  vmul.f.mz.rn vr0{mr1}, r28, vr0
003444  ea322102  vand.s.mz vr5{mr1}, r2, vr2
003448  6ab12da2  vsll.s.mz vr2{mr1}, r27, vr2
00344c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
003450  0e100102  vmul.f.mz.rn vr0{mr1}, vr2, vr0
003454  6ab14da2  vsll.s.mz vr2{mr1}, r27, vr4
003458  12926802  vadd.f.mz.rn vr4{mr1}, r17, vr6
00345c  ea223402  vand.u.mz vr5{mr1}, r8, vr3
003460  6a230402  vand.u.mz vr6{mr1}, r8, vr0
003464  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
003468  0a124e02  vmul.f.mz.rn vr4{mr1}, r28, vr4
00346c  72215002  veq.u.mz mr2{mr1}, zero, vr5
003470  72206002  veq.u.mz mr0{mr1}, zero, vr6
003474  0a112e02  vmul.f.mz.rn vr2{mr1}, r28, vr2
003478  8e904002  vmul.f.mz.rn vr1{mr1}, vr1, vr4
00347c  fe010140  vmnot mr3, mr2
003480  92213816  vadd.u.mh vr3{mr3}, r16, vr3
003484  fe010040  vmnot mr3, mr0
003488  12200816  vadd.u.mh vr0{mr3}, r16, vr0
00348c  2b710000  lui r2, 7
003490  1b11f1ff  ori r2, r2, 4095
003494  92213114  vadd.u.mh vr3{mr2}, r2, vr3
003498  12200110  vadd.u.mh vr0{mr0}, r2, vr0
00349c  2ba9aaaa  lui r18, 699050
0034a0  1b19a9aa  ori r18, r18, 2730
0034a4  7e0009e0  vmmov mr0, r18
0034a8  7e0000a0  vmmov zero, mr0
0034ac  46803310  vstore.mh vr3{mr0}, 0(r7)
0034b0  67800900  storeli.w zero, 0(r19)
0034b4  eaf10dc0  vsrl.p vr3, r27, vr0
0034b8  2b595555  lui r18, 349525
0034bc  0e902302  vmul.f.mz.rn vr0{mr1}, vr7, vr2
0034c0  17200000  xor zero, zero, zero
0034c4  6a211402  vand.u.mz vr2{mr1}, r8, vr1
0034c8  1b195955  ori r18, r18, 1365
0034cc  7e0009e0  vmmov mr0, r18
0034d0  1f095fce  addli r18, r30, -6360
0034d4  7e0000a0  vmmov zero, mr0
0034d8  46803310  vstore.mh vr3{mr0}, 0(r7)
0034dc  ea210402  vand.u.mz vr3{mr1}, r8, vr0
0034e0  1f045fce  addli r8, r30, -6360
0034e4  9f830301  addli r7, r7, 128
0034e8  67000900  storeli.w zero, 0(r18)
0034ec  17200000  xor zero, zero, zero
0034f0  f2212002  veq.u.mz mr3{mr1}, zero, vr2
0034f4  7e800140  vmnot mr0, mr3
0034f8  92201810  vadd.u.mh vr1{mr0}, r16, vr1
0034fc  72203002  veq.u.mz mr0{mr1}, zero, vr3
003500  7e010040  vmnot mr2, mr0
003504  12200814  vadd.u.mh vr0{mr2}, r16, vr0
003508  92201116  vadd.u.mh vr1{mr3}, r2, vr1
00350c  12200110  vadd.u.mh vr0{mr0}, r2, vr0
003510  1f014fce  addli r2, r30, -6368
003514  63000100  loadli.w zero,  0(r2)
003518  7e0000e0  vmmov mr0, zero
00351c  17200000  xor zero, zero, zero
003520  46801010  vstore.mh vr1{mr0}, 0(r1)
003524  eaf00dc0  vsrl.p vr1, r27, vr0
003528  63000400  loadli.w zero,  0(r8)
00352c  7e0000e0  vmmov mr0, zero
003530  17200000  xor zero, zero, zero
003534  46801010  vstore.mh vr1{mr0}, 0(r1)
003538  bfea81ff  blt.s r3, r24, -328
00353c  5b38ffff  j -1600
003540  bf768cfc  blt.s r24, r8, -1604
003544  1f040fcc  addli r8, r30, -6656
003548  63013fcb  loadli.w r2,  -6760(r30)
00354c  9bb01c00  slli r1, r25, 1
003550  9f010000  addli r3, zero, 0
003554  9f830600  addli r7, r13, 0
003558  42100402  vload_mask16.mz vr0{mr1}, 0(r8)
00355c  0b121110  add.s r4, r2, r1
003560  ea100e22  vor.f.mz vr1{mr1}, r28, vr0
003564  9f0082ff  addli r1, r4, -64
003568  42900302  vload_mask16.mz vr0{mr1}, 0(r7)
00356c  2b01ffff  lui r2, 1048560
003570  4a130202  vloads_mask16.mz vr6{mr1}, 0(r4)
003574  9f094fce  addli r19, r30, -6368
003578  9f818100  addli r3, r3, 64
00357c  1f020201  addli r4, r4, 128
003580  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
003584  9f808300  addli r1, r7, 64
003588  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
00358c  2b040100  lui r8, 16
003590  2b880000  lui r16, 8
003594  ea310102  vand.s.mz vr3{mr1}, r2, vr0
003598  6ab00da2  vsll.s.mz vr0{mr1}, r27, vr0
00359c  92923802  vadd.f.mz.rn vr5{mr1}, r17, vr3
0035a0  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
0035a4  6ab44da2  vsll.s.mz vr8{mr1}, r27, vr4
0035a8  ea312102  vand.s.mz vr3{mr1}, r2, vr2
0035ac  6ab12da2  vsll.s.mz vr2{mr1}, r27, vr2
0035b0  a6915002  vmac.f.mz.rn vr3{mr1}, vr1, vr5
0035b4  26910002  vmac.f.mz.rn vr2{mr1}, vr1, vr0
0035b8  6a304102  vand.s.mz vr0{mr1}, r2, vr4
0035bc  6ab26da2  vsll.s.mz vr4{mr1}, r27, vr6
0035c0  ea223402  vand.u.mz vr5{mr1}, r8, vr3
0035c4  ea232402  vand.u.mz vr7{mr1}, r8, vr2
0035c8  12900802  vadd.f.mz.rn vr0{mr1}, r17, vr0
0035cc  72215002  veq.u.mz mr2{mr1}, zero, vr5
0035d0  72207002  veq.u.mz mr0{mr1}, zero, vr7
0035d4  ea326102  vand.s.mz vr5{mr1}, r2, vr6
0035d8  12938802  vadd.f.mz.rn vr6{mr1}, r17, vr8
0035dc  fe010140  vmnot mr3, mr2
0035e0  92213816  vadd.u.mh vr3{mr3}, r16, vr3
0035e4  fe010040  vmnot mr3, mr0
0035e8  12212816  vadd.u.mh vr2{mr3}, r16, vr2
0035ec  2b790000  lui r18, 7
0035f0  a6920002  vmac.f.mz.rn vr5{mr1}, vr1, vr0
0035f4  26926002  vmac.f.mz.rn vr4{mr1}, vr1, vr6
0035f8  1b19f9ff  ori r18, r18, 4095
0035fc  92213914  vadd.u.mh vr3{mr2}, r18, vr3
003600  12212910  vadd.u.mh vr2{mr0}, r18, vr2
003604  2ba1aaaa  lui r2, 699050
003608  1b11a1aa  ori r2, r2, 2730
00360c  7e0001e0  vmmov mr0, r2
003610  7e0000a0  vmmov zero, mr0
003614  46803310  vstore.mh vr3{mr0}, 0(r7)
003618  67800900  storeli.w zero, 0(r19)
00361c  6af02dc0  vsrl.p vr0, r27, vr2
003620  2b515555  lui r2, 349525
003624  17200000  xor zero, zero, zero
003628  6a215402  vand.u.mz vr2{mr1}, r8, vr5
00362c  1b115155  ori r2, r2, 1365
003630  7e0001e0  vmmov mr0, r2
003634  1f015fce  addli r2, r30, -6360
003638  7e0000a0  vmmov zero, mr0
00363c  46800310  vstore.mh vr0{mr0}, 0(r7)
003640  6a204402  vand.u.mz vr0{mr1}, r8, vr4
003644  1f044fce  addli r8, r30, -6368
003648  9f830301  addli r7, r7, 128
00364c  67000100  storeli.w zero, 0(r2)
003650  17200000  xor zero, zero, zero
003654  f2212002  veq.u.mz mr3{mr1}, zero, vr2
003658  7e800140  vmnot mr0, mr3
00365c  92225810  vadd.u.mh vr5{mr0}, r16, vr5
003660  72200002  veq.u.mz mr0{mr1}, zero, vr0
003664  7e010040  vmnot mr2, mr0
003668  12224814  vadd.u.mh vr4{mr2}, r16, vr4
00366c  1f085fce  addli r16, r30, -6360
003670  92225916  vadd.u.mh vr5{mr3}, r18, vr5
003674  12224910  vadd.u.mh vr4{mr0}, r18, vr4
003678  63000400  loadli.w zero,  0(r8)
00367c  7e0000e0  vmmov mr0, zero
003680  17200000  xor zero, zero, zero
003684  46805010  vstore.mh vr5{mr0}, 0(r1)
003688  6af04dc0  vsrl.p vr0, r27, vr4
00368c  63000800  loadli.w zero,  0(r16)
003690  7e0000e0  vmmov mr0, zero
003694  17200000  xor zero, zero, zero
003698  46800010  vstore.mh vr0{mr0}, 0(r1)
00369c  3fab81ff  blt.s r3, r24, -312
0036a0  db0bffff  j -1956
0036a4  00100000  exit
0036a8  00100000  exit
0036ac  00100000  exit
0036b0  00100000  exit
0036b4  00100000  exit
0036b8  00100000  exit
0036bc  00100000  exit
0036c0  00100000  exit
0036c4  00100000  exit
0036c8  00100000  exit
0036cc  00100000  exit
0036d0  00100000  exit
0036d4  00100000  exit
0036d8  00100000  exit
0036dc  00100000  exit
0036e0  00100000  exit
0036e4  00100000  exit
0036e8  00100000  exit
0036ec  00100000  exit
0036f0  00100000  exit
0036f4  00100000  exit
0036f8  00100000  exit
0036fc  00100000  exit
003700  00100000  exit
003704  00100000  exit
003708  00100000  exit
00370c  00100000  exit
003710  00100000  exit
003714  00100000  exit
003718  00100000  exit
00371c  00100000  exit
003720  00100000  exit
003724  00100000  exit
003728  00100000  exit
00372c  00100000  exit
003730  00100000  exit
003734  00100000  exit
003738  00100000  exit
00373c  00100000  exit
003740  00100000  exit
003744  00100000  exit
003748  00100000  exit
00374c  00100000  exit
003750  00100000  exit
003754  00100000  exit
003758  00100000  exit
00375c  00100000  exit
003760  00100000  exit
003764  00100000  exit
003768  00100000  exit
00376c  00100000  exit
003770  00100000  exit
003774  00100000  exit
003778  00100000  exit
00377c  00100000  exit
003780  00100000  exit
003784  00100000  exit
003788  00100000  exit
00378c  00100000  exit
003790  00100000  exit
003794  00100000  exit
003798  00100000  exit
00379c  00100000  exit
0037a0  00100000  exit
0037a4  00100000  exit
0037a8  00100000  exit
0037ac  00100000  exit
0037b0  00100000  exit
0037b4  00100000  exit
0037b8  00100000  exit
0037bc  00100000  exit
0037c0  00100000  exit
0037c4  00100000  exit
0037c8  00100000  exit
0037cc  00100000  exit
0037d0  00100000  exit
0037d4  00100000  exit
0037d8  00100000  exit
0037dc  00100000  exit
0037e0  00100000  exit
0037e4  00100000  exit
0037e8  00100000  exit
0037ec  00100000  exit
0037f0  00100000  exit
0037f4  00100000  exit
0037f8  00100000  exit
0037fc  00100000  exit
003800  00100000  exit
003804  00100000  exit
003808  00100000  exit
00380c  00100000  exit
003810  00100000  exit
003814  00100000  exit
003818  00100000  exit
00381c  00100000  exit
003820  00100000  exit
003824  00100000  exit
003828  00100000  exit
00382c  00100000  exit
003830  00100000  exit
003834  00100000  exit
003838  00100000  exit
00383c  00100000  exit
003840  00100000  exit
003844  00100000  exit
003848  00100000  exit
00384c  00100000  exit
003850  00100000  exit
003854  00100000  exit
003858  00100000  exit
00385c  00100000  exit
003860  00100000  exit
003864  00100000  exit
003868  00100000  exit
00386c  00100000  exit
003870  00100000  exit
003874  00100000  exit
003878  00100000  exit
00387c  00100000  exit
003880  00100000  exit
003884  00100000  exit
003888  00100000  exit
00388c  00100000  exit
003890  00100000  exit
003894  00100000  exit
003898  00100000  exit
00389c  00100000  exit
0038a0  00100000  exit
0038a4  00100000  exit
0038a8  00100000  exit
0038ac  00100000  exit
0038b0  00100000  exit
0038b4  00100000  exit
0038b8  00100000  exit
0038bc  00100000  exit
0038c0  00100000  exit
0038c4  00100000  exit
0038c8  00100000  exit
0038cc  00100000  exit
0038d0  00100000  exit
0038d4  00100000  exit
0038d8  00100000  exit
0038dc  00100000  exit
0038e0  00100000  exit
0038e4  00000000  nop
