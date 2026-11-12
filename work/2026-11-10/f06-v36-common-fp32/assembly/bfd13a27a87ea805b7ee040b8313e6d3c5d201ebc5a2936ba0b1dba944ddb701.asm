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
000078  9f095000  addli r19, zero, 40
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
0000dc  9f8e8ecc  addli sp, sp, -6592
0000e0  1f8f0e33  addli r30, sp, 6528
0000e4  9f000020  addli r1, zero, 4096
0000e8  1f010030  addli r2, zero, 6144
0000ec  b305b028  .word 0x28b005b3
0000f0  eb510f02  load.d r[4:5], 32(r30)
0000f4  b302512c  .word 0x2c5102b3
0000f8  b383702a  .word 0x2a7083b3
0000fc  8f907172  .word 0x7271908f
000100  8f945172  .word 0x7251948f
000104  93a5b000  seteq.d r11, r[2:3], r[12:13]
000108  93b41406  setle.sl r9, r[10:11], r[2:3]
00010c  a7800300  addli.d r[2:3], r[8:9], 0
000110  3ba00500  bneq r11, zero, 8
000114  a7800200  addli.d r[2:3], r[6:7], 0
000118  6b560f01  load.d r[13:14], 16(r30)
00011c  003e0002  core_id r28
000120  005c0102  load_param_i r24, 2
000124  80520002  load_param_i r5, 0
000128  80d80002  load_param_i r17, 1
00012c  3ba00400  bneq r9, zero, 8
000130  a7830000  addli.d r[8:9], r[2:3], 0
000134  9f100000  addli r1, zero, 1
000138  1f036fcf  addli r6, r30, -6224
00013c  1f052fcf  addli r10, r30, -6256
000140  6b598f00  load.d r[19:20], 8(r30)
000144  9f054fce  addli r11, r30, -6368
000148  b380102a  .word 0x2a1080b3
00014c  73b02501  store.d r[19:20], 0(r11)
000150  93241602  setneq.d r9, r[13:14], r[2:3]
000154  eb508f01  load.d r[2:3], 24(r30)
000158  73301300  store.d r[2:3], 0(r6)
00015c  eb500f00  load.d r[2:3], 0(r30)
000160  73301500  store.d r[2:3], 0(r10)
000164  9f800200  addli r1, r5, 0
000168  0b918821  mul.s r2, r17, r24
00016c  8b90c851  fmac.s r1, r17, r28
000170  3bf30400  bneq r9, zero, 220
000174  9f048000  addli r9, zero, 64
000178  b384942a  .word 0x2a9484b3
00017c  93b43404  setlt.sl r9, r[10:11], r[4:5]
000180  3bb30400  bneq r9, zero, 204
000184  bb100e00  bneq r28, zero, 36
000188  9f052fcf  addli r11, r30, -6256
00018c  ab0200f0  lui r5, 983040
000190  2b030000  lui r6, 0
000194  ebd40500  load.d r[10:11], 0(r11)
000198  97925100  or r5, r3, r5
00019c  1f030300  addli r6, r6, 0
0001a0  ff826400  l_gm2sm r5, r6, 0(r[10:11])
0001a4  00200300  mfence { sm, gm }
0001a8  9f028000  addli r5, zero, 64
0001ac  9f140000  addli r9, zero, 1
0001b0  0b935138  mod.s r6, r3, r5
0001b4  abf20000  lui r5, 15
0001b8  1b95f2ff  ori r10, r5, 4095
0001bc  80210504  csr_set csr3, r10
0001c0  00d00100  sync_group
0001c4  8b926118  sub.s r5, r3, r6
0001c8  bfc09200  blt.s r5, r9, 48
0001cc  2b060000  lui r12, 0
0001d0  1f050000  addli r10, zero, 0
0001d4  9f050fd0  addli r11, r30, -6144
0001d8  1f060600  addli r12, r12, 0
0001dc  8b16c510  add.s r13, r10, r12
0001e0  00a00000  mfence { lm }
0001e4  4a800602  vloads.mz vr0{mr1}, 0(r13)
0001e8  8b96a510  add.s r13, r11, r10
0001ec  1f058500  addli r10, r10, 64
0001f0  46800602  vstore.mz vr0{mr1}, 0(r13)
0001f4  bf2f55fe  blt.s r10, r5, -24
0001f8  bf209300  blt.s r6, r9, 40
0001fc  ab040000  lui r9, 0
000200  1f030fd0  addli r6, r30, -6144
000204  9f840400  addli r9, r9, 0
000208  0b959210  add.s r10, r5, r9
00020c  8b155310  add.s r11, r6, r5
000210  9f920200  addli r5, r5, 1
000214  6f150500  loads.bu r10, 0(r10)
000218  7380a500  store.b r10, 0(r11)
00021c  bfbf32fe  blt.s r5, r3, -20
000220  9f120000  addli r5, zero, 1
000224  00a00000  mfence { lm }
000228  b382522a  .word 0x2a5282b3
00022c  93b25104  setlt.sl r5, r[4:5], r[6:7]
000230  bb910204  bneq r5, zero, 2148
000234  8ba27110  add.ul r[6:7], r[4:5], r[8:9]
000238  a7f2f2ff  addli.d r[6:7], r[6:7], 32767
00023c  8f923262  .word 0x6232928f
000240  a3b20202  slli.d r[6:7], r[6:7], 32
000244  a3d20202  srai.d r[6:7], r[6:7], 32
000248  5b0a0100  j 2128
00024c  9f040040  addli r9, zero, 8192
000250  1f036fcf  addli r6, r30, -6224
000254  a7070600  addli.d r[16:17], r[13:14], 0
000258  1f06ffce  addli r12, r30, -6280
00025c  b384942a  .word 0x2a9484b3
000260  7330f600  store.d r[16:17], 0(r12)
000264  93b53404  setlt.sl r11, r[10:11], r[4:5]
000268  eb540300  load.d r[10:11], 0(r6)
00026c  8bb69120  mul.sl r[14:15], r[4:5], r[10:11]
000270  8bb4f620  mul.sl r[10:11], r[14:15], r[16:17]
000274  9f070fcf  addli r15, r30, -6272
000278  73b0d700  store.d r[14:15], 0(r15)
00027c  bbbe0502  bneq r11, zero, 1964
000280  1f03ffce  addli r6, r30, -6280
000284  9f757000  addli r11, zero, 63
000288  eb570300  load.d r[16:17], 0(r6)
00028c  b385b52e  .word 0x2eb585b3
000290  93b5f504  setlt.sl r11, r[12:13], r[16:17]
000294  3bde0502  bneq r11, zero, 1940
000298  1f036fcf  addli r6, r30, -6224
00029c  9f158000  addli r11, zero, 65
0002a0  eb560300  load.d r[14:15], 0(r6)
0002a4  b385b52e  .word 0x2eb585b3
0002a8  93b5b604  setlt.sl r11, r[14:15], r[12:13]
0002ac  1f060fcf  addli r12, r30, -6272
0002b0  eb560600  load.d r[14:15], 0(r12)
0002b4  bbdd0502  bneq r11, zero, 1908
0002b8  ab050001  lui r11, 4096
0002bc  b385b52e  .word 0x2eb585b3
0002c0  93b59504  setlt.sl r11, r[12:13], r[10:11]
0002c4  bb9d0502  bneq r11, zero, 1892
0002c8  9f150004  addli r11, zero, 513
0002cc  b385b52e  .word 0x2eb585b3
0002d0  93b5b604  setlt.sl r11, r[14:15], r[12:13]
0002d4  3bdd0502  bneq r11, zero, 1876
0002d8  1f03ffce  addli r6, r30, -6280
0002dc  9f500000  addli r1, zero, 5
0002e0  e70e8fcf  storeli.w r24, -6168(r30)
0002e4  6b550300  load.d r[11:12], 0(r6)
0002e8  b380102a  .word 0x2a1080b3
0002ec  93301504  setlt.sl r1, r[11:12], r[2:3]
0002f0  13b13306  setle.sl r2, r[8:9], r[4:5]
0002f4  e70f2fce  storeli.w r2, -6152(r30)
0002f8  bbc50004  bneq r1, zero, 2416
0002fc  338da22b  .word 0x2ba28d33
000300  9320a507  setle.ul r1, r[11:12], r[27:28]
000304  bbf50006  bneq r1, zero, 3452
000308  9f000010  addli r1, zero, 2048
00030c  1f210000  addli r2, zero, 2
000310  9f038000  addli r7, zero, 64
000314  9f450000  addli r11, zero, 4
000318  9f06dfce  addli r13, r30, -6296
00031c  1f0b0fd0  addli r22, r30, -6144
000320  1f07bfcf  addli r14, r30, -6184
000324  9f075fcf  addli r15, r30, -6232
000328  0b931140  min.s r6, r3, r1
00032c  97c02102  srl.d r[2:3], r[4:5], r2
000330  b385b52e  .word 0x2eb585b3
000334  b314932c  .word 0x2c9314b3
000338  9b80f00f  andi r1, r1, 255
00033c  0b917138  mod.s r2, r3, r7
000340  670e6fce  storeli.w r6, -6176(r30)
000344  1f130000  addli r6, zero, 1
000348  73b0b600  store.d r[12:13], 0(r13)
00034c  8f95b176  .word 0x76b1958f
000350  8ba39110  add.ul r[8:9], r[4:5], r[10:11]
000354  67061fce  storeli.w r1, -6304(r30)
000358  93806002  setneq r1, r1, r6
00035c  73309700  store.d r[10:11], 0(r14)
000360  a7f3f3ff  addli.d r[8:9], r[8:9], 32767
000364  8f939366  .word 0x6693938f
000368  670d2fce  storeli.w r2, -6192(r30)
00036c  8b992118  sub.s r19, r3, r2
000370  1ff1f107  addli r2, r3, 1023
000374  9f044fcf  addli r9, r30, -6240
000378  1f056fcf  addli r10, r30, -6224
00037c  9bb02000  slli r1, r1, 2
000380  97101b00  or r1, r22, r1
000384  e7051fce  storeli.w r1, -6312(r30)
000388  8b103b10  add.s r1, r22, r3
00038c  67071fce  storeli.w r1, -6288(r30)
000390  8b103130  div.s r1, r2, r3
000394  0bbab118  sub.sl r[21:22], r[4:5], r[12:13]
000398  e7091fce  storeli.w r1, -6248(r30)
00039c  a380f103  andi.d r[2:3], r[4:5], 63
0003a0  73b07400  store.d r[8:9], 0(r9)
0003a4  9f039fcf  addli r7, r30, -6200
0003a8  1f041fcf  addli r8, r30, -6264
0003ac  73b01300  store.d r[2:3], 0(r7)
0003b0  eb500500  load.d r[2:3], 0(r10)
0003b4  7330b400  store.d r[12:13], 0(r8)
0003b8  9f058fcf  addli r11, r30, -6208
0003bc  1f067fcf  addli r12, r30, -6216
0003c0  a7f0f0ff  addli.d r[2:3], r[2:3], 32767
0003c4  73b01500  store.d r[2:3], 0(r11)
0003c8  b3001c28  .word 0x281c00b3
0003cc  73301600  store.d r[2:3], 0(r12)
0003d0  b3001e28  .word 0x281e00b3
0003d4  73b01700  store.d r[2:3], 0(r15)
0003d8  ab0c0000  lui r25, 0
0003dc  670f1fcf  storeli.w r17, -6160(r30)
0003e0  9f8c0c00  addli r25, r25, 0
0003e4  5b040000  j 32
0003e8  e300efcf  loadli.w r1,  -6160(r30)
0003ec  9f03ffce  addli r7, r30, -6280
0003f0  8b921210  add.s r5, r5, r1
0003f4  ebd00300  load.d r[2:3], 0(r7)
0003f8  338da22b  .word 0x2ba28d33
0003fc  93801204  setlt.u r1, r5, r1
000400  37820006  beq r1, zero, 3200
000404  00a00300  mfence { lm, sm, gm }
000408  abf00000  lui r1, 15
00040c  9b90f0ff  ori r1, r1, 4095
000410  80a10004  csr_set csr3, r1
000414  00d00100  sync_group
000418  bb000e00  bneq r28, zero, 32
00041c  1f042fcf  addli r8, r30, -6256
000420  eb500400  load.d r[2:3], 0(r8)
000424  ab0300f0  lui r7, 983040
000428  97937100  or r7, r3, r7
00042c  8b303d50  fmac.sl r[2:3], r[27:28], r[4:5]
000430  ff839001  l_gm2sm r7, r25, 0(r[2:3])
000434  00200300  mfence { sm, gm }
000438  abf00000  lui r1, 15
00043c  9b90f0ff  ori r1, r1, 4095
000440  80a10004  csr_set csr3, r1
000444  00d00100  sync_group
000448  e300ffcf  loadli.w r1,  -6152(r30)
00044c  bb910000  bneq r1, zero, 100
000450  bf906900  blt.s r19, r6, 36
000454  9f000000  addli r1, zero, 0
000458  0b919011  add.s r2, r1, r25
00045c  00a00000  mfence { lm }
000460  4a000102  vloads.mz vr0{mr1}, 0(r2)
000464  0b111b10  add.s r2, r22, r1
000468  9f808000  addli r1, r1, 64
00046c  46000102  vstore.mz vr0{mr1}, 0(r2)
000470  bfaf30ff  blt.s r1, r19, -24
000474  6301afcf  loadli.w r2,  -6192(r30)
000478  9f800900  addli r1, r19, 0
00047c  3f706100  blt.s r2, r6, 28
000480  0b919011  add.s r2, r1, r25
000484  8b131b10  add.s r7, r22, r1
000488  9f900000  addli r1, r1, 1
00048c  6f110100  loads.bu r2, 0(r2)
000490  73802300  store.b r2, 0(r7)
000494  bfbf30fe  blt.s r1, r3, -20
000498  b303732c  .word 0x2c7303b3
00049c  00a00000  mfence { lm }
0004a0  93b07104  setlt.sl r1, r[4:5], r[8:9]
0004a4  bb900000  bneq r1, zero, 36
0004a8  e3003fcf  loadli.w r1,  -6248(r30)
0004ac  5b040000  j 32
0004b0  e300cfcf  loadli.w r1,  -6176(r30)
0004b4  bfb56000  blt.s r1, r6, 364
0004b8  9f034fcf  addli r7, r30, -6240
0004bc  ebd00300  load.d r[2:3], 0(r7)
0004c0  1f850000  addli r10, r1, 0
0004c4  5b2c0000  j 352
0004c8  9f000000  addli r1, zero, 0
0004cc  9f069fcf  addli r13, r30, -6200
0004d0  b3049028  .word 0x289004b3
0004d4  b380102a  .word 0x2a1080b3
0004d8  ebd50600  load.d r[12:13], 0(r13)
0004dc  93a49500  seteq.d r9, r[12:13], r[10:11]
0004e0  1f066fcf  addli r12, r30, -6224
0004e4  6b550600  load.d r[11:12], 0(r12)
0004e8  0bb5a040  min.sl r[11:12], r[2:3], r[11:12]
0004ec  9f008000  addli r1, zero, 64
0004f0  3387e02a  .word 0x2ae08733
0004f4  9f200000  addli r1, zero, 2
0004f8  b380102a  .word 0x2a1080b3
0004fc  3bc20400  bneq r9, zero, 144
000500  0f183770  mod.sl r[17:18], r[15:16], r[4:5]
000504  b30b7029  .word 0x29700bb3
000508  93247803  setneq.d r9, r[17:18], r[24:25]
00050c  37820400  beq r9, zero, 128
000510  93347a04  setlt.sl r9, r[21:22], r[8:9]
000514  bbc20400  bneq r9, zero, 176
000518  3307e028  .word 0x28e00733
00051c  5b020000  j 16
000520  27470700  addli.d r[15:16], r[15:16], 4
000524  93344705  setlt.sl r9, r[15:16], r[21:22]
000528  37f20400  beq r9, zero, 156
00052c  93341504  setlt.sl r9, r[11:12], r[2:3]
000530  bbcf04fe  bneq r9, zero, -16
000534  9b141700  ori r9, r14, 1
000538  1b182700  ori r16, r14, 2
00053c  9b183700  ori r17, r14, 3
000540  0b19eb10  add.s r18, r22, r14
000544  8b149b10  add.s r9, r22, r9
000548  0b180b11  add.s r16, r22, r16
00054c  8b181b11  add.s r17, r22, r17
000550  6b1e0900  load.bu r28, 0(r18)
000554  eb940400  load.bu r9, 0(r9)
000558  eb1b0800  load.bu r23, 0(r16)
00055c  6b9c0800  load.bu r24, 0(r17)
000560  3308032d  .word 0x2d030833
000564  0b363820  mul.sl r[13:14], r[17:18], r[4:5]
000568  27180800  addli.d r[17:18], r[17:18], 1
00056c  0b16c910  add.s r12, r18, r12
000570  9336a804  setlt.sl r13, r[17:18], r[11:12]
000574  7300c601  store.b r28, 0(r12)
000578  f3009600  store.b r9, 1(r12)
00057c  73017601  store.b r23, 2(r12)
000580  f3018601  store.b r24, 3(r12)
000584  bb8f06fe  bneq r13, zero, -32
000588  5bf3ffff  j -104
00058c  93b3e104  setlt.sl r7, r[4:5], r[15:16]
000590  37a60300  beq r7, zero, 392
000594  b300132c  .word 0x2c1300b3
000598  93a01102  setneq.d r1, r[4:5], r[2:3]
00059c  3bd70000  bneq r1, zero, 468
0005a0  1f040fd0  addli r8, r30, -6144
0005a4  1b111b00  ori r2, r22, 1
0005a8  9b132b00  ori r7, r22, 2
0005ac  eb100400  load.bu r1, 0(r8)
0005b0  73001100  store.b r1, 0(r2)
0005b4  1b113b00  ori r2, r22, 3
0005b8  73801300  store.b r1, 0(r7)
0005bc  73001100  store.b r1, 0(r2)
0005c0  5b3a0000  j 464
0005c4  1f081fcf  addli r16, r30, -6264
0005c8  630cdfcf  loadli.w r24,  -6168(r30)
0005cc  27070a00  addli.d r[15:16], r[21:22], 0
0005d0  003e0002  core_id r28
0005d4  6b560800  load.d r[13:14], 0(r16)
0005d8  93347604  setlt.sl r9, r[13:14], r[8:9]
0005dc  37d00400  beq r9, zero, 20
0005e0  5b730000  j 920
0005e4  27170700  addli.d r[15:16], r[15:16], 1
0005e8  93343704  setlt.sl r9, r[15:16], r[4:5]
0005ec  37be0400  beq r9, zero, 908
0005f0  93341504  setlt.sl r9, r[11:12], r[2:3]
0005f4  bbcf04fe  bneq r9, zero, -16
0005f8  8b14eb10  add.s r9, r22, r14
0005fc  a7880300  addli.d r[18:19], r[8:9], 0
000600  6b980400  load.bu r16, 0(r9)
000604  0bb63820  mul.sl r[13:14], r[18:19], r[4:5]
000608  a7980800  addli.d r[18:19], r[18:19], 1
00060c  93bba804  setlt.sl r23, r[18:19], r[11:12]
000610  0b96c410  add.s r12, r9, r12
000614  73000601  store.b r16, 0(r12)
000618  bbbf0bfe  bneq r23, zero, -20
00061c  5bf9ffff  j -56
000620  1f050000  addli r10, zero, 0
000624  8b10ae38  mod.s r1, r28, r10
000628  9f06bfcf  addli r13, r30, -6184
00062c  9f048000  addli r9, zero, 64
000630  ebd50600  load.d r[12:13], 0(r13)
000634  b380102a  .word 0x2a1080b3
000638  8bb3b020  mul.sl r[8:9], r[2:3], r[12:13]
00063c  8bb07118  sub.sl r[2:3], r[4:5], r[8:9]
000640  0b979311  add.s r14, r7, r25
000644  8bb01540  min.sl r[2:3], r[12:13], r[2:3]
000648  8b949038  mod.s r9, r1, r9
00064c  8b959018  sub.s r11, r1, r9
000650  bf906500  blt.s r11, r6, 36
000654  9f070000  addli r15, zero, 0
000658  0b16f710  add.s r12, r14, r15
00065c  00a00000  mfence { lm }
000660  4a000602  vloads.mz vr0{mr1}, 0(r12)
000664  0b16fb10  add.s r12, r22, r15
000668  9f878700  addli r15, r15, 64
00066c  46000602  vstore.mz vr0{mr1}, 0(r12)
000670  bfafb7fe  blt.s r15, r11, -24
000674  3ff06400  blt.s r9, r6, 28
000678  8b14b710  add.s r9, r14, r11
00067c  0b16bb10  add.s r12, r22, r11
000680  9f950500  addli r11, r11, 1
000684  ef940400  loads.bu r9, 0(r9)
000688  73009600  store.b r9, 0(r12)
00068c  bfbf15fe  blt.s r11, r1, -20
000690  8b14ac30  div.s r9, r24, r10
000694  9f0b6fcf  addli r23, r30, -6224
000698  ebd80b00  load.d r[18:19], 0(r23)
00069c  00a00000  mfence { lm }
0006a0  b395b42a  .word 0x2ab495b3
0006a4  8b14ae30  div.s r9, r28, r10
0006a8  8f96b872  .word 0x72b8968f
0006ac  8f95b866  .word 0x66b8958f
0006b0  b394942a  .word 0x2a9494b3
0006b4  93b7d404  setlt.sl r15, r[10:11], r[14:15]
0006b8  8bb6d440  min.sl r[14:15], r[10:11], r[14:15]
0006bc  8bb69550  fmac.sl r[14:15], r[12:13], r[10:11]
0006c0  b387f72e  .word 0x2ef787b3
0006c4  8ba4f510  add.ul r[10:11], r[12:13], r[16:17]
0006c8  8ba5d410  add.ul r[12:13], r[10:11], r[14:15]
0006cc  8bb41641  min.sl r[10:11], r[14:15], r[18:19]
0006d0  0bb71541  min.sl r[15:16], r[12:13], r[18:19]
0006d4  93359706  setle.sl r11, r[15:16], r[10:11]
0006d8  3bc405fe  bneq r11, zero, -752
0006dc  9f064fce  addli r13, r30, -6368
0006e0  1f090fcf  addli r18, r30, -6272
0006e4  ebd50600  load.d r[12:13], 0(r13)
0006e8  6b580900  load.d r[17:18], 0(r18)
0006ec  8b350d51  fmac.sl r[12:13], r[27:28], r[17:18]
0006f0  8ba37510  add.ul r[8:9], r[12:13], r[8:9]
0006f4  a7850300  addli.d r[12:13], r[8:9], 0
0006f8  ab0600f0  lui r13, 983040
0006fc  8bb53450  fmac.sl r[12:13], r[10:11], r[4:5]
000700  a7940400  addli.d r[10:11], r[10:11], 1
000704  9796d000  or r13, r1, r13
000708  13b8e404  setlt.sl r16, r[10:11], r[15:16]
00070c  ffb66501  s_lm2gm r13, r22, 0(r[12:13])
000710  bb1f08fe  bneq r16, zero, -28
000714  db9affff  j -812
000718  6304efce  loadli.w r8,  -6288(r30)
00071c  630cdfcf  loadli.w r24,  -6168(r30)
000720  9f030000  addli r7, zero, 0
000724  5b030000  j 24
000728  9f838300  addli r7, r7, 64
00072c  1f048400  addli r8, r8, 64
000730  00a00000  mfence { lm }
000734  93843304  setlt.u r9, r7, r3
000738  37890400  beq r9, zero, 576
00073c  93341504  setlt.sl r9, r[11:12], r[2:3]
000740  00a00000  mfence { lm }
000744  bb9f04fe  bneq r9, zero, -28
000748  8b147b10  add.s r9, r22, r7
00074c  1f070400  addli r14, r8, 0
000750  42800402  vload.mz vr0{mr1}, 0(r9)
000754  9f140000  addli r9, zero, 1
000758  9f940400  addli r9, r9, 1
00075c  46000702  vstore.mz vr0{mr1}, 0(r14)
000760  0b173710  add.s r14, r14, r3
000764  9387a404  setlt.u r15, r9, r10
000768  bbcf07fe  bneq r15, zero, -16
00076c  dbf7ffff  j -68
000770  9f03dfce  addli r7, r30, -6296
000774  ebd00300  load.d r[2:3], 0(r7)
000778  93b01104  setlt.sl r1, r[4:5], r[2:3]
00077c  37d10000  beq r1, zero, 84
000780  9f030fd0  addli r7, r30, -6144
000784  1b112b00  ori r2, r22, 2
000788  ebb00300  load.hu r1, 0(r7)
00078c  73101100  store.h r1, 0(r2)
000790  e3000fd0  loadli.w r1,  -6144(r30)
000794  67401fd0  storeli.w r1, -6140(r30)
000798  e7001fd0  storeli.w r1, -6136(r30)
00079c  e7401fd0  storeli.w r1, -6132(r30)
0007a0  67011fd0  storeli.w r1, -6128(r30)
0007a4  67411fd0  storeli.w r1, -6124(r30)
0007a8  e7011fd0  storeli.w r1, -6120(r30)
0007ac  e7411fd0  storeli.w r1, -6116(r30)
0007b0  67021fd0  storeli.w r1, -6112(r30)
0007b4  67421fd0  storeli.w r1, -6108(r30)
0007b8  e7021fd0  storeli.w r1, -6104(r30)
0007bc  e7421fd0  storeli.w r1, -6100(r30)
0007c0  67031fd0  storeli.w r1, -6096(r30)
0007c4  67431fd0  storeli.w r1, -6092(r30)
0007c8  e7031fd0  storeli.w r1, -6088(r30)
0007cc  5b2c0000  j 352
0007d0  6304cfce  loadli.w r8,  -6304(r30)
0007d4  9f200000  addli r1, zero, 2
0007d8  e303bfce  loadli.w r7,  -6312(r30)
0007dc  1f310000  addli r2, zero, 3
0007e0  8b808038  mod.u r1, r1, r8
0007e4  e3830300  loadli.w r7,  0(r7)
0007e8  0b018138  mod.u r2, r2, r8
0007ec  67407fd0  storeli.w r7, -6140(r30)
0007f0  9f430000  addli r7, zero, 4
0007f4  8b838338  mod.u r7, r7, r8
0007f8  9bb02000  slli r1, r1, 2
0007fc  1b312100  slli r2, r2, 2
000800  97101b00  or r1, r22, r1
000804  17112b00  or r2, r22, r2
000808  e3800000  loadli.w r1,  0(r1)
00080c  9bb32300  slli r7, r7, 2
000810  e7001fd0  storeli.w r1, -6136(r30)
000814  9f500000  addli r1, zero, 5
000818  97137b00  or r7, r22, r7
00081c  63010100  loadli.w r2,  0(r2)
000820  8b808038  mod.u r1, r1, r8
000824  e7402fd0  storeli.w r2, -6132(r30)
000828  1f610000  addli r2, zero, 6
00082c  e3830300  loadli.w r7,  0(r7)
000830  0b018138  mod.u r2, r2, r8
000834  9bb02000  slli r1, r1, 2
000838  67017fd0  storeli.w r7, -6128(r30)
00083c  9f730000  addli r7, zero, 7
000840  97101b00  or r1, r22, r1
000844  8b838338  mod.u r7, r7, r8
000848  e3800000  loadli.w r1,  0(r1)
00084c  1b312100  slli r2, r2, 2
000850  17112b00  or r2, r22, r2
000854  67411fd0  storeli.w r1, -6124(r30)
000858  e3000100  loadli.w r1,  0(r2)
00085c  1bb12300  slli r2, r7, 2
000860  9f031000  addli r7, zero, 8
000864  8b838338  mod.u r7, r7, r8
000868  17112b00  or r2, r22, r2
00086c  e7011fd0  storeli.w r1, -6120(r30)
000870  e3000100  loadli.w r1,  0(r2)
000874  1f111000  addli r2, zero, 9
000878  0b018138  mod.u r2, r2, r8
00087c  e7411fd0  storeli.w r1, -6116(r30)
000880  9bb32300  slli r7, r7, 2
000884  97137b00  or r7, r22, r7
000888  e3800300  loadli.w r1,  0(r7)
00088c  1b312100  slli r2, r2, 2
000890  9f231000  addli r7, zero, 10
000894  8b838338  mod.u r7, r7, r8
000898  17112b00  or r2, r22, r2
00089c  67021fd0  storeli.w r1, -6112(r30)
0008a0  e3000100  loadli.w r1,  0(r2)
0008a4  1f311000  addli r2, zero, 11
0008a8  0b018138  mod.u r2, r2, r8
0008ac  67421fd0  storeli.w r1, -6108(r30)
0008b0  9bb32300  slli r7, r7, 2
0008b4  97137b00  or r7, r22, r7
0008b8  e3800300  loadli.w r1,  0(r7)
0008bc  1b312100  slli r2, r2, 2
0008c0  9f431000  addli r7, zero, 12
0008c4  8b838338  mod.u r7, r7, r8
0008c8  17112b00  or r2, r22, r2
0008cc  e7021fd0  storeli.w r1, -6104(r30)
0008d0  e3000100  loadli.w r1,  0(r2)
0008d4  1f511000  addli r2, zero, 13
0008d8  0b018138  mod.u r2, r2, r8
0008dc  e7421fd0  storeli.w r1, -6100(r30)
0008e0  9bb32300  slli r7, r7, 2
0008e4  97137b00  or r7, r22, r7
0008e8  e3800300  loadli.w r1,  0(r7)
0008ec  1b312100  slli r2, r2, 2
0008f0  9f631000  addli r7, zero, 14
0008f4  8b838338  mod.u r7, r7, r8
0008f8  17112b00  or r2, r22, r2
0008fc  67031fd0  storeli.w r1, -6096(r30)
000900  e3000100  loadli.w r1,  0(r2)
000904  1f711000  addli r2, zero, 15
000908  0b018138  mod.u r2, r2, r8
00090c  67431fd0  storeli.w r1, -6092(r30)
000910  9bb32300  slli r7, r7, 2
000914  97137b00  or r7, r22, r7
000918  e3800300  loadli.w r1,  0(r7)
00091c  1b312100  slli r2, r2, 2
000920  17112b00  or r2, r22, r2
000924  e7031fd0  storeli.w r1, -6088(r30)
000928  e3000100  loadli.w r1,  0(r2)
00092c  8f133766  .word 0x6637138f
000930  630cdfcf  loadli.w r24,  -6168(r30)
000934  e7431fd0  storeli.w r1, -6084(r30)
000938  00a00000  mfence { lm }
00093c  23b70302  slli.d r[15:16], r[8:9], 32
000940  23570702  srai.d r[15:16], r[15:16], 32
000944  1331e506  setle.sl r2, r[11:12], r[15:16]
000948  bb400100  bneq r2, zero, 48
00094c  42000b02  vload.mz vr0{mr1}, 0(r22)
000950  1f010fd0  addli r2, r30, -6144
000954  9bb01300  slli r1, r7, 1
000958  8b947120  mul.s r9, r3, r7
00095c  0b917150  fmac.s r2, r3, r7
000960  3397e02a  .word 0x2ae09733
000964  46000102  vstore.mz vr0{mr1}, 0(r2)
000968  8b907010  add.s r1, r1, r7
00096c  0b119110  add.s r2, r2, r9
000970  1337a704  setlt.sl r14, r[15:16], r[11:12]
000974  bb3f07fe  bneq r14, zero, -20
000978  1f098fcf  addli r18, r30, -6208
00097c  a3300502  slli.d r[2:3], r[11:12], 32
000980  9f0b7fcf  addli r23, r30, -6216
000984  eb530900  load.d r[8:9], 0(r18)
000988  a3d00002  srai.d r[2:3], r[2:3], 32
00098c  6bd70b00  load.d r[15:16], 0(r23)
000990  8ba31310  add.ul r[8:9], r[8:9], r[2:3]
000994  8f931366  .word 0x6613938f
000998  0f96e370  mod.sl r[13:14], r[8:9], r[15:16]
00099c  8f93e366  .word 0x66e3938f
0009a0  1f075fcf  addli r14, r30, -6232
0009a4  6b580700  load.d r[17:18], 0(r14)
0009a8  9334c804  setlt.sl r9, r[17:18], r[13:14]
0009ac  0b36c840  min.sl r[13:14], r[17:18], r[13:14]
0009b0  0bb60351  fmac.sl r[13:14], r[8:9], r[17:18]
0009b4  1f086fcf  addli r16, r30, -6224
0009b8  3387e42a  .word 0x2ae48733
0009bc  8ba3e310  add.ul r[8:9], r[8:9], r[15:16]
0009c0  6b570800  load.d r[15:16], 0(r16)
0009c4  00a00000  mfence { lm }
0009c8  8ba3c310  add.ul r[8:9], r[8:9], r[13:14]
0009cc  0b361620  mul.sl r[13:14], r[13:14], r[2:3]
0009d0  8bb31320  mul.sl r[8:9], r[8:9], r[2:3]
0009d4  8b30e640  min.sl r[2:3], r[13:14], r[15:16]
0009d8  8bb3e340  min.sl r[8:9], r[8:9], r[15:16]
0009dc  93b41306  setle.sl r9, r[8:9], r[2:3]
0009e0  3ba804fc  bneq r9, zero, -1528
0009e4  9f044fce  addli r9, r30, -6368
0009e8  1f080fcf  addli r16, r30, -6272
0009ec  6bd70400  load.d r[15:16], 0(r9)
0009f0  6b560800  load.d r[13:14], 0(r16)
0009f4  0b37cd50  fmac.sl r[15:16], r[27:28], r[13:14]
0009f8  0bb61318  sub.sl r[13:14], r[8:9], r[2:3]
0009fc  27080700  addli.d r[17:18], r[15:16], 0
000a00  ab0400f0  lui r9, 983040
000a04  0b36c540  min.sl r[13:14], r[11:12], r[13:14]
000a08  0bb83050  fmac.sl r[17:18], r[2:3], r[4:5]
000a0c  8ba0a010  add.ul r[2:3], r[2:3], r[11:12]
000a10  0b363620  mul.sl r[13:14], r[13:14], r[4:5]
000a14  13b97004  setlt.sl r18, r[2:3], r[8:9]
000a18  97149600  or r9, r12, r9
000a1c  ff346801  s_lm2gm r9, r22, 0(r[17:18])
000a20  3b6f09fe  bneq r18, zero, -40
000a24  db38ffff  j -1596
000a28  9f128000  addli r5, zero, 65
000a2c  1f130004  addli r6, zero, 513
000a30  b385b22a  .word 0x2ab285b3
000a34  b302532c  .word 0x2c5302b3
000a38  93b5b104  setlt.sl r11, r[4:5], r[12:13]
000a3c  13b65604  setlt.sl r12, r[14:15], r[6:7]
000a40  179dc500  or r26, r11, r12
000a44  9f150000  addli r11, zero, 1
000a48  3b09bd00  bneq r26, r11, 576
000a4c  9f07ffce  addli r15, r30, -6280
000a50  ebd50700  load.d r[12:13], 0(r15)
000a54  93b25504  setlt.sl r5, r[12:13], r[6:7]
000a58  bb8a0200  bneq r5, zero, 672
000a5c  9f028000  addli r5, zero, 64
000a60  b382522a  .word 0x2a5282b3
000a64  93b25604  setlt.sl r5, r[14:15], r[6:7]
000a68  37ca0200  beq r5, zero, 656
000a6c  9f120000  addli r5, zero, 1
000a70  b382522a  .word 0x2a5282b3
000a74  93b25604  setlt.sl r5, r[14:15], r[6:7]
000a78  3b890202  bneq r5, zero, 1600
000a7c  abf20000  lui r5, 15
000a80  9b92f2ff  ori r5, r5, 4095
000a84  97825600  and r5, r13, r5
000a88  8b825330  div.u r5, r7, r5
000a8c  b382522a  .word 0x2a5282b3
000a90  dbc50000  j 1580
000a94  b3025028  .word 0x285002b3
000a98  a383f103  andi.d r[8:9], r[4:5], 63
000a9c  b3049028  .word 0x289004b3
000aa0  93a39300  seteq.d r7, r[8:9], r[10:11]
000aa4  bbf20300  bneq r7, zero, 188
000aa8  9f038000  addli r7, zero, 64
000aac  b3049028  .word 0x289004b3
000ab0  b383732e  .word 0x2e7383b3
000ab4  8f933376  .word 0x7633938f
000ab8  93a39302  setneq.d r7, r[8:9], r[10:11]
000abc  b7920300  beq r7, zero, 164
000ac0  9f430000  addli r7, zero, 4
000ac4  9f150000  addli r11, zero, 1
000ac8  b383732e  .word 0x2e7383b3
000acc  b385b52e  .word 0x2eb585b3
000ad0  8f947172  .word 0x7271948f
000ad4  8bb39118  sub.sl r[8:9], r[4:5], r[10:11]
000ad8  93b6b304  setlt.sl r13, r[8:9], r[12:13]
000adc  3bb30600  bneq r13, zero, 204
000ae0  9f260000  addli r13, zero, 2
000ae4  1f080fd0  addli r16, r30, -6144
000ae8  b386d62a  .word 0x2ad686b3
000aec  93b6d204  setlt.sl r13, r[6:7], r[14:15]
000af0  3307e028  .word 0x28e00733
000af4  5b020000  j 16
000af8  27470700  addli.d r[15:16], r[15:16], 4
000afc  93387704  setlt.sl r17, r[15:16], r[8:9]
000b00  b7a20800  beq r17, zero, 168
000b04  bbdf06fe  bneq r13, zero, -12
000b08  1b1a2700  ori r20, r14, 2
000b0c  9b1a3700  ori r21, r14, 3
000b10  1b191700  ori r18, r14, 1
000b14  8b18e810  add.s r17, r16, r14
000b18  278b0500  addli.d r[23:24], r[12:13], 0
000b1c  8b192811  add.s r19, r16, r18
000b20  0b1a4811  add.s r20, r16, r20
000b24  8b1a5811  add.s r21, r16, r21
000b28  6b990800  load.bu r18, 0(r17)
000b2c  eb990900  load.bu r19, 0(r19)
000b30  6b1a0a00  load.bu r20, 0(r20)
000b34  eb9a0a00  load.bu r21, 0(r21)
000b38  0b3c3b20  mul.sl r[25:26], r[23:24], r[4:5]
000b3c  271b0b00  addli.d r[23:24], r[23:24], 1
000b40  0b9c8811  add.s r24, r17, r24
000b44  933c5b04  setlt.sl r25, r[23:24], r[6:7]
000b48  73002c01  store.b r18, 0(r24)
000b4c  f3003c01  store.b r19, 1(r24)
000b50  73014c01  store.b r20, 2(r24)
000b54  f3015c01  store.b r21, 3(r24)
000b58  bb8f0cfe  bneq r25, zero, -32
000b5c  dbf3ffff  j -100
000b60  9f038000  addli r7, zero, 64
000b64  b383732e  .word 0x2e7383b3
000b68  93b37104  setlt.sl r7, r[4:5], r[8:9]
000b6c  37e20300  beq r7, zero, 152
000b70  9f130000  addli r7, zero, 1
000b74  b383732e  .word 0x2e7383b3
000b78  93a37102  setneq.d r7, r[4:5], r[8:9]
000b7c  3be40300  bneq r7, zero, 280
000b80  1f050fd0  addli r10, r30, -6144
000b84  9f030fd0  addli r7, r30, -6144
000b88  6b140500  load.bu r8, 0(r10)
000b8c  9b941300  ori r9, r7, 1
000b90  73808400  store.b r8, 0(r9)
000b94  9b942300  ori r9, r7, 2
000b98  9b933300  ori r7, r7, 3
000b9c  73808400  store.b r8, 0(r9)
000ba0  73808300  store.b r8, 0(r7)
000ba4  db220000  j 276
000ba8  93b4b404  setlt.sl r9, r[10:11], r[12:13]
000bac  bbf00402  bneq r9, zero, 1084
000bb0  9f240000  addli r9, zero, 2
000bb4  9f150000  addli r11, zero, 1
000bb8  b384942a  .word 0x2a9484b3
000bbc  b385b52e  .word 0x2eb585b3
000bc0  93b49204  setlt.sl r9, r[6:7], r[10:11]
000bc4  1f050fd0  addli r10, r30, -6144
000bc8  5b020000  j 16
000bcc  a7930300  addli.d r[8:9], r[8:9], 1
000bd0  93b63304  setlt.sl r13, r[8:9], r[4:5]
000bd4  37d00602  beq r13, zero, 1044
000bd8  bbdf04fe  bneq r9, zero, -12
000bdc  8b167510  add.s r13, r10, r7
000be0  a7870500  addli.d r[16:17], r[12:13], 0
000be4  6b970600  load.bu r14, 0(r13)
000be8  8bb83720  mul.sl r[18:19], r[16:17], r[4:5]
000bec  a7970700  addli.d r[16:17], r[16:17], 1
000bf0  93b95704  setlt.sl r19, r[16:17], r[6:7]
000bf4  8b981611  add.s r17, r13, r17
000bf8  7380e800  store.b r14, 0(r17)
000bfc  bbbf09fe  bneq r19, zero, -20
000c00  dbf9ffff  j -52
000c04  9f230000  addli r7, zero, 2
000c08  1f050000  addli r10, zero, 0
000c0c  b383732e  .word 0x2e7383b3
000c10  93b37204  setlt.sl r7, r[6:7], r[8:9]
000c14  1f040fd0  addli r8, r30, -6144
000c18  8b143410  add.s r9, r8, r3
000c1c  db030000  j 28
000c20  1f058500  addli r10, r10, 64
000c24  9f848400  addli r9, r9, 64
000c28  00a00000  mfence { lm }
000c2c  b305b52c  .word 0x2cb505b3
000c30  93b53504  setlt.sl r11, r[12:13], r[4:5]
000c34  b7de0500  beq r11, zero, 948
000c38  00a00000  mfence { lm }
000c3c  bb9f03fe  bneq r7, zero, -28
000c40  8b15a410  add.s r11, r8, r10
000c44  1f860400  addli r12, r9, 0
000c48  42800502  vload.mz vr0{mr1}, 0(r11)
000c4c  9f150000  addli r11, zero, 1
000c50  9f950500  addli r11, r11, 1
000c54  46000602  vstore.mz vr0{mr1}, 0(r12)
000c58  0b163610  add.s r12, r12, r3
000c5c  93865504  setlt.u r13, r11, r5
000c60  bbcf06fe  bneq r13, zero, -16
000c64  dbf7ffff  j -68
000c68  9f100000  addli r1, zero, 1
000c6c  b380102a  .word 0x2a1080b3
000c70  93301504  setlt.sl r1, r[11:12], r[2:3]
000c74  3b830000  bneq r1, zero, 192
000c78  8b90a830  div.s r1, r17, r10
000c7c  0b93a020  mul.s r6, r1, r10
000c80  4b005302  ble.s r6, r5, 1024
000c84  db170000  j 188
000c88  b387f52e  .word 0x2ef587b3
000c8c  278b0700  addli.d r[23:24], r[16:17], 0
000c90  5b8c0000  j 1120
000c94  9f440000  addli r9, zero, 4
000c98  b383742a  .word 0x2a7483b3
000c9c  93b37104  setlt.sl r7, r[4:5], r[8:9]
000ca0  37b60300  beq r7, zero, 396
000ca4  9f040fd0  addli r9, r30, -6144
000ca8  9f030fd0  addli r7, r30, -6144
000cac  6bb40400  load.hu r8, 0(r9)
000cb0  9b932300  ori r7, r7, 2
000cb4  73908300  store.h r8, 0(r7)
000cb8  e3030fd0  loadli.w r7,  -6144(r30)
000cbc  67407fd0  storeli.w r7, -6140(r30)
000cc0  e7007fd0  storeli.w r7, -6136(r30)
000cc4  e7407fd0  storeli.w r7, -6132(r30)
000cc8  67017fd0  storeli.w r7, -6128(r30)
000ccc  67417fd0  storeli.w r7, -6124(r30)
000cd0  e7017fd0  storeli.w r7, -6120(r30)
000cd4  e7417fd0  storeli.w r7, -6116(r30)
000cd8  67027fd0  storeli.w r7, -6112(r30)
000cdc  67427fd0  storeli.w r7, -6108(r30)
000ce0  e7027fd0  storeli.w r7, -6104(r30)
000ce4  e7427fd0  storeli.w r7, -6100(r30)
000ce8  67037fd0  storeli.w r7, -6096(r30)
000cec  67437fd0  storeli.w r7, -6092(r30)
000cf0  e7037fd0  storeli.w r7, -6088(r30)
000cf4  db540000  j 676
000cf8  9f020010  addli r5, zero, 2048
000cfc  b382522a  .word 0x2a5282b3
000d00  93b2d204  setlt.sl r5, r[6:7], r[14:15]
000d04  1f130000  addli r6, zero, 1
000d08  b307f32c  .word 0x2cf307b3
000d0c  3bdf0200  bneq r5, zero, 980
000d10  9f028000  addli r5, zero, 64
000d14  b382522a  .word 0x2a5282b3
000d18  93b23204  setlt.sl r5, r[6:7], r[4:5]
000d1c  3b9f0200  bneq r5, zero, 964
000d20  a382f603  andi.d r[6:7], r[14:15], 63
000d24  b305b028  .word 0x28b005b3
000d28  93a2b202  setneq.d r5, r[6:7], r[12:13]
000d2c  378502fe  beq r5, zero, -704
000d30  5b760000  j 944
000d34  9f000000  addli r1, zero, 0
000d38  0b93a020  mul.s r6, r1, r10
000d3c  4b1d5300  ble.s r6, r5, 836
000d40  3384822a  .word 0x2a828433
000d44  abf20000  lui r5, 15
000d48  0f1ba474  .word 0x74a41b0f
000d4c  9b92f2ff  ori r5, r5, 4095
000d50  80a10204  csr_set csr3, r5
000d54  00d00100  sync_group
000d58  bb200e00  bneq r28, zero, 40
000d5c  1f062fcf  addli r12, r30, -6256
000d60  ab0200f0  lui r5, 983040
000d64  eb500600  load.d r[2:3], 0(r12)
000d68  ab030000  lui r7, 0
000d6c  97925100  or r5, r3, r5
000d70  9f830300  addli r7, r7, 0
000d74  8b303b50  fmac.sl r[2:3], r[23:24], r[4:5]
000d78  ff827000  l_gm2sm r5, r7, 0(r[2:3])
000d7c  00200300  mfence { sm, gm }
000d80  b312532c  .word 0x2c5312b3
000d84  0f17a464  .word 0x64a4170f
000d88  0f93a264  .word 0x64a2930f
000d8c  abf20000  lui r5, 15
000d90  9b92f2ff  ori r5, r5, 4095
000d94  80a10204  csr_set csr3, r5
000d98  00d00100  sync_group
000d9c  e300ffcf  loadli.w r1,  -6152(r30)
000da0  bbdb0000  bneq r1, zero, 756
000da4  9f028000  addli r5, zero, 64
000da8  9f140000  addli r9, zero, 1
000dac  0b945138  mod.s r8, r3, r5
000db0  8b928118  sub.s r5, r3, r8
000db4  bfc09200  blt.s r5, r9, 48
000db8  2b060000  lui r12, 0
000dbc  1f050000  addli r10, zero, 0
000dc0  9f050fd0  addli r11, r30, -6144
000dc4  1f060600  addli r12, r12, 0
000dc8  8b16c510  add.s r13, r10, r12
000dcc  00a00000  mfence { lm }
000dd0  4a800602  vloads.mz vr0{mr1}, 0(r13)
000dd4  8b96a510  add.s r13, r11, r10
000dd8  1f058500  addli r10, r10, 64
000ddc  46800602  vstore.mz vr0{mr1}, 0(r13)
000de0  bf2f55fe  blt.s r10, r5, -24
000de4  bf209400  blt.s r8, r9, 40
000de8  ab040000  lui r9, 0
000dec  1f040fd0  addli r8, r30, -6144
000df0  9f840400  addli r9, r9, 0
000df4  0b959210  add.s r10, r5, r9
000df8  8b155410  add.s r11, r8, r5
000dfc  9f920200  addli r5, r5, 1
000e00  6f150500  loads.bu r10, 0(r10)
000e04  7380a500  store.b r10, 0(r11)
000e08  bfbf32fe  blt.s r5, r3, -20
000e0c  9f120000  addli r5, zero, 1
000e10  00a00000  mfence { lm }
000e14  3384822a  .word 0x2a828433
000e18  93b28104  setlt.sl r5, r[4:5], r[9:10]
000e1c  3bb80202  bneq r5, zero, 1548
000e20  9ff2f107  addli r5, r3, 1023
000e24  8b923230  div.s r5, r5, r3
000e28  dbc00000  j 1540
000e2c  9bc32100  srli r7, r3, 2
000e30  1f140000  addli r8, zero, 1
000e34  9f250000  addli r11, zero, 2
000e38  9b83f30f  andi r7, r7, 255
000e3c  13858302  setneq r10, r7, r8
000e40  1f040fd0  addli r8, r30, -6144
000e44  8b857538  mod.u r11, r11, r7
000e48  8b847438  mod.u r9, r9, r7
000e4c  9bb52500  slli r11, r11, 2
000e50  9bb42400  slli r9, r9, 2
000e54  1b352500  slli r10, r10, 2
000e58  9715b400  or r11, r8, r11
000e5c  97149400  or r9, r8, r9
000e60  1715a400  or r10, r8, r10
000e64  63050500  loadli.w r10,  0(r10)
000e68  6740afd0  storeli.w r10, -6140(r30)
000e6c  1f350000  addli r10, zero, 3
000e70  e3850500  loadli.w r11,  0(r11)
000e74  0b057538  mod.u r10, r10, r7
000e78  e700bfd0  storeli.w r11, -6136(r30)
000e7c  9f550000  addli r11, zero, 5
000e80  8b857538  mod.u r11, r11, r7
000e84  1b352500  slli r10, r10, 2
000e88  1715a400  or r10, r8, r10
000e8c  63050500  loadli.w r10,  0(r10)
000e90  9bb52500  slli r11, r11, 2
000e94  9715b400  or r11, r8, r11
000e98  e740afd0  storeli.w r10, -6132(r30)
000e9c  1f650000  addli r10, zero, 6
000ea0  e3840400  loadli.w r9,  0(r9)
000ea4  0b057538  mod.u r10, r10, r7
000ea8  67019fd0  storeli.w r9, -6128(r30)
000eac  e3840500  loadli.w r9,  0(r11)
000eb0  9f750000  addli r11, zero, 7
000eb4  8b857538  mod.u r11, r11, r7
000eb8  1b352500  slli r10, r10, 2
000ebc  67419fd0  storeli.w r9, -6124(r30)
000ec0  1715a400  or r10, r8, r10
000ec4  e3040500  loadli.w r9,  0(r10)
000ec8  1f051000  addli r10, zero, 8
000ecc  9bb52500  slli r11, r11, 2
000ed0  0b057538  mod.u r10, r10, r7
000ed4  9715b400  or r11, r8, r11
000ed8  e7019fd0  storeli.w r9, -6120(r30)
000edc  e3840500  loadli.w r9,  0(r11)
000ee0  9f151000  addli r11, zero, 9
000ee4  8b857538  mod.u r11, r11, r7
000ee8  1b352500  slli r10, r10, 2
000eec  e7419fd0  storeli.w r9, -6116(r30)
000ef0  1715a400  or r10, r8, r10
000ef4  e3040500  loadli.w r9,  0(r10)
000ef8  1f251000  addli r10, zero, 10
000efc  9bb52500  slli r11, r11, 2
000f00  0b057538  mod.u r10, r10, r7
000f04  67029fd0  storeli.w r9, -6112(r30)
000f08  9714b400  or r9, r8, r11
000f0c  9f351000  addli r11, zero, 11
000f10  8b857538  mod.u r11, r11, r7
000f14  e3840400  loadli.w r9,  0(r9)
000f18  1b352500  slli r10, r10, 2
000f1c  67429fd0  storeli.w r9, -6108(r30)
000f20  1715a400  or r10, r8, r10
000f24  e3040500  loadli.w r9,  0(r10)
000f28  1bb52500  slli r10, r11, 2
000f2c  9f451000  addli r11, zero, 12
000f30  8b857538  mod.u r11, r11, r7
000f34  1715a400  or r10, r8, r10
000f38  e7029fd0  storeli.w r9, -6104(r30)
000f3c  e3040500  loadli.w r9,  0(r10)
000f40  1f551000  addli r10, zero, 13
000f44  0b057538  mod.u r10, r10, r7
000f48  e7429fd0  storeli.w r9, -6100(r30)
000f4c  9bb42500  slli r9, r11, 2
000f50  9f651000  addli r11, zero, 14
000f54  97149400  or r9, r8, r9
000f58  e3840400  loadli.w r9,  0(r9)
000f5c  1b352500  slli r10, r10, 2
000f60  1715a400  or r10, r8, r10
000f64  67039fd0  storeli.w r9, -6096(r30)
000f68  8b847538  mod.u r9, r11, r7
000f6c  9f751000  addli r11, zero, 15
000f70  63050500  loadli.w r10,  0(r10)
000f74  8b837538  mod.u r7, r11, r7
000f78  6743afd0  storeli.w r10, -6092(r30)
000f7c  9bb42400  slli r9, r9, 2
000f80  97149400  or r9, r8, r9
000f84  9bb32300  slli r7, r7, 2
000f88  e3840400  loadli.w r9,  0(r9)
000f8c  97137400  or r7, r8, r7
000f90  e7039fd0  storeli.w r9, -6088(r30)
000f94  e3830300  loadli.w r7,  0(r7)
000f98  1f048000  addli r8, zero, 64
000f9c  e7437fd0  storeli.w r7, -6084(r30)
000fa0  00a00000  mfence { lm }
000fa4  33048428  .word 0x28840433
000fa8  0f143460  div.sl r[9:10], r[9:10], r[4:5]
000fac  23350402  slli.d r[11:12], r[9:10], 32
000fb0  23550502  srai.d r[11:12], r[11:12], 32
000fb4  13b5a206  setle.sl r10, r[6:7], r[11:12]
000fb8  bb400500  bneq r10, zero, 48
000fbc  9f030fd0  addli r7, r30, -6144
000fc0  1b351400  slli r10, r8, 1
000fc4  8b153420  mul.s r11, r8, r3
000fc8  42800302  vload.mz vr0{mr1}, 0(r7)
000fcc  8b133450  fmac.s r7, r8, r3
000fd0  3316c52c  .word 0x2cc51633
000fd4  46800302  vstore.mz vr0{mr1}, 0(r7)
000fd8  0b158510  add.s r10, r10, r8
000fdc  8b93b310  add.s r7, r7, r11
000fe0  13365604  setlt.sl r12, r[13:14], r[6:7]
000fe4  bb3f06fe  bneq r12, zero, -20
000fe8  1f096fcf  addli r18, r30, -6224
000fec  9f031000  addli r7, zero, 8
000ff0  6b570900  load.d r[15:16], 0(r18)
000ff4  3385a32e  .word 0x2ea38533
000ff8  00a00000  mfence { lm }
000ffc  27740700  addli.d r[9:10], r[15:16], 7
001000  8f13a466  .word 0x66a4138f
001004  b304912c  .word 0x2c9104b3
001008  b380102a  .word 0x2a1080b3
00100c  8f959376  .word 0x7693958f
001010  8f939366  .word 0x6693938f
001014  93b4b004  setlt.sl r9, r[2:3], r[12:13]
001018  0bb5b040  min.sl r[11:12], r[2:3], r[12:13]
00101c  0bb51350  fmac.sl r[11:12], r[8:9], r[2:3]
001020  3386c42a  .word 0x2ac48633
001024  8ba0c310  add.ul r[2:3], r[8:9], r[13:14]
001028  9f330000  addli r7, zero, 3
00102c  8ba0a010  add.ul r[2:3], r[2:3], r[11:12]
001030  17347502  sll.d r[9:10], r[11:12], r7
001034  17b57002  sll.d r[11:12], r[2:3], r7
001038  8b30e440  min.sl r[2:3], r[9:10], r[15:16]
00103c  8b33e540  min.sl r[8:9], r[11:12], r[15:16]
001040  1f054fce  addli r10, r30, -6368
001044  93b41306  setle.sl r9, r[8:9], r[2:3]
001048  6b580500  load.d r[17:18], 0(r10)
00104c  bbd00400  bneq r9, zero, 52
001050  9f040fd0  addli r9, r30, -6144
001054  0bb51318  sub.sl r[11:12], r[8:9], r[2:3]
001058  27060800  addli.d r[13:14], r[17:18], 0
00105c  2b0700f0  lui r14, 983040
001060  0bb5a240  min.sl r[11:12], r[6:7], r[11:12]
001064  0bb63050  fmac.sl r[13:14], r[2:3], r[4:5]
001068  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
00106c  0b353520  mul.sl r[11:12], r[11:12], r[4:5]
001070  93b77004  setlt.sl r15, r[2:3], r[8:9]
001074  1715e500  or r10, r10, r14
001078  7f359600  s_lm2gm r10, r9, 0(r[13:14])
00107c  3bef07fe  bneq r15, zero, -40
001080  00a00300  mfence { lm, sm, gm }
001084  9f0e0fcd  addli sp, r30, -6528
001088  9f8e0e33  addli sp, sp, 6528
00108c  00a00300  mfence { lm, sm, gm }
001090  00100000  exit
001094  9f000010  addli r1, zero, 2048
001098  1f190000  addli r18, zero, 1
00109c  8b901140  min.s r1, r3, r1
0010a0  3394802a  .word 0x2a809433
0010a4  bfb42003  blt.s r1, r18, 1324
0010a8  8ba08110  add.ul r[2:3], r[4:5], r[9:10]
0010ac  a7f0f0ff  addli.d r[2:3], r[2:3], 32767
0010b0  0f988060  div.sl r[17:18], r[2:3], r[9:10]
0010b4  5ba40000  j 1312
0010b8  b3025028  .word 0x285002b3
0010bc  9f08ffce  addli r17, r30, -6280
0010c0  b305b12c  .word 0x2cb105b3
0010c4  ebd60800  load.d r[14:15], 0(r17)
0010c8  8ba6b610  add.ul r[14:15], r[14:15], r[12:13]
0010cc  a7f6f6ff  addli.d r[14:15], r[14:15], 32767
0010d0  8f95b666  .word 0x66b6958f
0010d4  a3b50502  slli.d r[12:13], r[12:13], 32
0010d8  a3d50502  srai.d r[12:13], r[12:13], 32
0010dc  8bb75540  min.sl r[16:17], r[12:13], r[6:7]
0010e0  8f923362  .word 0x6233928f
0010e4  9f066fcf  addli r13, r30, -6224
0010e8  ebd50600  load.d r[12:13], 0(r13)
0010ec  0bbb5540  min.sl r[23:24], r[12:13], r[6:7]
0010f0  8bb53340  min.sl r[12:13], r[8:9], r[4:5]
0010f4  9f022000  addli r5, zero, 16
0010f8  2b040010  lui r8, 65536
0010fc  27f31500  addli.d r[7:8], r[12:13], 15
001100  b386d22a  .word 0x2ad286b3
001104  8f12d362  .word 0x62d3128f
001108  9f034000  addli r7, zero, 32
00110c  97b27202  sll.d r[6:7], r[6:7], r7
001110  b3037428  .word 0x287403b3
001114  93b37204  setlt.sl r7, r[6:7], r[8:9]
001118  1f443000  addli r8, zero, 28
00111c  97d68202  sra.d r[14:15], r[6:7], r8
001120  37b00300  beq r7, zero, 12
001124  b3025028  .word 0x285002b3
001128  5b030000  j 24
00112c  8ba2d110  add.ul r[6:7], r[4:5], r[14:15]
001130  a7f2f2ff  addli.d r[6:7], r[6:7], 32767
001134  8f92d262  .word 0x62d2928f
001138  a3b20202  slli.d r[6:7], r[6:7], 32
00113c  a3d20202  srai.d r[6:7], r[6:7], 32
001140  9f03bfce  addli r7, r30, -6312
001144  73b05300  store.d r[6:7], 0(r7)
001148  9f120000  addli r5, zero, 1
00114c  1f03ffcd  addli r6, r30, -6408
001150  b383722a  .word 0x2a7283b3
001154  7330d300  store.d r[14:15], 0(r6)
001158  93b27704  setlt.sl r5, r[16:17], r[8:9]
00115c  bb900200  bneq r5, zero, 36
001160  9f06ffce  addli r13, r30, -6280
001164  ebd20600  load.d r[6:7], 0(r13)
001168  8ba2f210  add.ul r[6:7], r[6:7], r[16:17]
00116c  a7f2f2ff  addli.d r[6:7], r[6:7], 32767
001170  8f92f262  .word 0x62f2928f
001174  a3b20202  slli.d r[6:7], r[6:7], 32
001178  a3d20202  srai.d r[6:7], r[6:7], 32
00117c  5b010000  j 8
001180  b3025028  .word 0x285002b3
001184  93a67700  seteq.d r13, r[16:17], r[8:9]
001188  1f07bfce  addli r14, r30, -6312
00118c  9f085fce  addli r17, r30, -6360
001190  eb530700  load.d r[8:9], 0(r14)
001194  73b0f800  store.d r[16:17], 0(r17)
001198  8bb37220  mul.sl r[8:9], r[6:7], r[8:9]
00119c  b7c20600  beq r13, zero, 176
0011a0  9f76f001  addli r13, zero, 255
0011a4  b386d62a  .word 0x2ad686b3
0011a8  93b67604  setlt.sl r13, r[14:15], r[8:9]
0011ac  bb800600  bneq r13, zero, 32
0011b0  b306d12c  .word 0x2cd106b3
0011b4  9f180000  addli r17, zero, 1
0011b8  8ba4d410  add.ul r[10:11], r[10:11], r[14:15]
0011bc  a7f4f4ff  addli.d r[10:11], r[10:11], 32767
0011c0  8f94d462  .word 0x62d4948f
0011c4  9f060040  addli r13, zero, 8192
0011c8  bfc29600  blt.s r13, r9, 176
0011cc  1f0a6fcf  addli r20, r30, -6224
0011d0  9f140001  addli r9, zero, 129
0011d4  9f180000  addli r17, zero, 1
0011d8  eb560a00  load.d r[14:15], 0(r20)
0011dc  b384942a  .word 0x2a9484b3
0011e0  93b49604  setlt.sl r9, r[14:15], r[10:11]
0011e4  9794a401  or r9, r9, r26
0011e8  3bf00400  bneq r9, zero, 28
0011ec  1f0affce  addli r20, r30, -6280
0011f0  9f048000  addli r9, zero, 64
0011f4  eb560a00  load.d r[14:15], 0(r20)
0011f8  b384942a  .word 0x2a9484b3
0011fc  93b49604  setlt.sl r9, r[14:15], r[10:11]
001200  bbe10400  bneq r9, zero, 120
001204  b304912c  .word 0x2c9104b3
001208  93b67406  setle.sl r13, r[10:11], r[8:9]
00120c  3b910600  bneq r13, zero, 68
001210  8f969372  .word 0x7293968f
001214  1f0c6fcf  addli r24, r30, -6224
001218  9f0cffcd  addli r25, r30, -6408
00121c  eb570c00  load.d r[16:17], 0(r24)
001220  6bda0c00  load.d r[21:22], 0(r25)
001224  8b37fa20  mul.sl r[16:17], r[21:22], r[16:17]
001228  8bb6d720  mul.sl r[14:15], r[16:17], r[14:15]
00122c  9f070040  addli r15, zero, 8192
001230  8f969662  .word 0x6296968f
001234  b387f72e  .word 0x2ef787b3
001238  93b6d704  setlt.sl r13, r[16:17], r[14:15]
00123c  1f075fce  addli r14, r30, -6360
001240  eb570700  load.d r[16:17], 0(r14)
001244  37b00600  beq r13, zero, 12
001248  5b060000  j 48
00124c  b304912c  .word 0x2c9104b3
001250  93b49306  setle.sl r9, r[8:9], r[10:11]
001254  bb800400  bneq r9, zero, 32
001258  1f0a6fcf  addli r20, r30, -6224
00125c  9f040040  addli r9, zero, 8192
001260  eb560a00  load.d r[14:15], 0(r20)
001264  0bb5d520  mul.sl r[11:12], r[12:13], r[14:15]
001268  3386c42a  .word 0x2ac48633
00126c  9338a604  setlt.sl r17, r[13:14], r[11:12]
001270  5b010000  j 8
001274  9f080000  addli r17, zero, 0
001278  9f150000  addli r11, zero, 1
00127c  9f040002  addli r9, zero, 256
001280  1f0adfce  addli r20, r30, -6296
001284  9f0a6fcf  addli r21, r30, -6224
001288  67401fcf  storeli.w r17, -6396(r30)
00128c  3386c52e  .word 0x2ec58633
001290  b384942a  .word 0x2a9484b3
001294  7330ca00  store.d r[13:14], 0(r20)
001298  13a6c700  seteq.d r12, r[16:17], r[13:14]
00129c  9f260000  addli r13, zero, 2
0012a0  ebd70a00  load.d r[16:17], 0(r21)
0012a4  93b49304  setlt.sl r9, r[8:9], r[10:11]
0012a8  b386d62a  .word 0x2ad686b3
0012ac  13b5f604  setlt.sl r10, r[14:15], r[16:17]
0012b0  97049600  and r9, r12, r9
0012b4  1f06cfce  addli r12, r30, -6304
0012b8  73307600  store.d r[8:9], 0(r12)
0012bc  17059500  and r10, r10, r9
0012c0  9ba41800  xori r9, r17, 1
0012c4  9f081fcf  addli r17, r30, -6264
0012c8  73b0f800  store.d r[16:17], 0(r17)
0012cc  9f070fcf  addli r15, r30, -6272
0012d0  17059500  and r10, r10, r9
0012d4  ebd60700  load.d r[14:15], 0(r15)
0012d8  3b22b500  bneq r10, r11, 136
0012dc  b385b52e  .word 0x2eb585b3
0012e0  93b5b304  setlt.sl r11, r[8:9], r[12:13]
0012e4  bbb00500  bneq r11, zero, 44
0012e8  abf50000  lui r11, 15
0012ec  1ff6f301  addli r12, r7, 255
0012f0  9b95f5ff  ori r11, r11, 4095
0012f4  9786b300  and r13, r7, r11
0012f8  9705b600  and r11, r12, r11
0012fc  1f060fcf  addli r12, r30, -6272
001300  8b85d530  div.u r11, r11, r13
001304  eb560600  load.d r[14:15], 0(r12)
001308  b387f52e  .word 0x2ef587b3
00130c  5b010000  j 8
001310  b307f028  .word 0x28f007b3
001314  b305b028  .word 0x28b005b3
001318  9f081fcf  addli r17, r30, -6264
00131c  73b0b800  store.d r[12:13], 0(r17)
001320  93a5b700  seteq.d r11, r[16:17], r[12:13]
001324  bba00500  bneq r11, zero, 40
001328  9f086fcf  addli r17, r30, -6224
00132c  1f0a1fcf  addli r20, r30, -6264
001330  ebd50800  load.d r[12:13], 0(r17)
001334  8ba5f510  add.ul r[12:13], r[12:13], r[16:17]
001338  a7f5f5ff  addli.d r[12:13], r[12:13], 32767
00133c  8f95f566  .word 0x66f5958f
001340  a3b50502  slli.d r[12:13], r[12:13], 32
001344  a3d50502  srai.d r[12:13], r[12:13], 32
001348  7330ba00  store.d r[12:13], 0(r20)
00134c  9f08dfce  addli r17, r30, -6296
001350  8bb5f320  mul.sl r[12:13], r[8:9], r[16:17]
001354  73b0f800  store.d r[16:17], 0(r17)
001358  9f07cfce  addli r15, r30, -6304
00135c  73b0b700  store.d r[12:13], 0(r15)
001360  1f065fce  addli r12, r30, -6360
001364  e3450fce  loadli.w r11,  -6396(r30)
001368  9f077fcd  addli r15, r30, -6472
00136c  6b580600  load.d r[17:18], 0(r12)
001370  73b06701  store.d r[23:24], 0(r15)
001374  b78f0500  beq r11, zero, 992
001378  1f0a6fcf  addli r20, r30, -6224
00137c  9f0affcd  addli r21, r30, -6408
001380  1f0cdfce  addli r24, r30, -6296
001384  eb550a00  load.d r[12:13], 0(r20)
001388  ebd60a00  load.d r[14:15], 0(r21)
00138c  8bb5b620  mul.sl r[12:13], r[14:15], r[12:13]
001390  9f060040  addli r13, zero, 8192
001394  a7f5f53f  addli.d r[12:13], r[12:13], 8191
001398  b386d62a  .word 0x2ad686b3
00139c  8f95d566  .word 0x66d5958f
0013a0  a3b50502  slli.d r[12:13], r[12:13], 32
0013a4  a3d50502  srai.d r[12:13], r[12:13], 32
0013a8  7330bc00  store.d r[12:13], 0(r24)
0013ac  8bb6b320  mul.sl r[14:15], r[8:9], r[12:13]
0013b0  b305b12c  .word 0x2cb105b3
0013b4  93b7b606  setle.sl r15, r[14:15], r[12:13]
0013b8  bbfc0700  bneq r15, zero, 828
0013bc  8f97b676  .word 0x76b6978f
0013c0  9f78f001  addli r17, zero, 255
0013c4  a7090900  addli.d r[20:21], r[19:20], 0
0013c8  9f0a5fce  addli r21, r30, -6360
0013cc  b388182b  .word 0x2b1888b3
0013d0  93b7f804  setlt.sl r15, r[18:19], r[16:17]
0013d4  27890900  addli.d r[19:20], r[20:21], 0
0013d8  1f0a7fcd  addli r20, r30, -6472
0013dc  6bd80a00  load.d r[17:18], 0(r21)
0013e0  6b5b0a00  load.d r[23:24], 0(r20)
0013e4  3bcc0700  bneq r15, zero, 784
0013e8  9f170000  addli r15, zero, 1
0013ec  b387f72e  .word 0x2ef787b3
0013f0  93b7f304  setlt.sl r15, r[8:9], r[16:17]
0013f4  bbbb0700  bneq r15, zero, 748
0013f8  8ba6d510  add.ul r[14:15], r[12:13], r[14:15]
0013fc  a7870300  addli.d r[16:17], r[8:9], 0
001400  a7f6f6ff  addli.d r[14:15], r[14:15], 32767
001404  8f96b662  .word 0x62b6968f
001408  a3b60602  slli.d r[14:15], r[14:15], 32
00140c  a3d60602  srai.d r[14:15], r[14:15], 32
001410  8bb7b650  fmac.sl r[16:17], r[14:15], r[12:13]
001414  a7f5f7ff  addli.d r[12:13], r[16:17], 32767
001418  8f957566  .word 0x6675958f
00141c  a3b50502  slli.d r[12:13], r[12:13], 32
001420  a3d50502  srai.d r[12:13], r[12:13], 32
001424  5b580000  j 704
001428  9f020000  addli r5, zero, 0
00142c  2384f103  andi.d r[9:10], r[4:5], 63
001430  3305a028  .word 0x28a00533
001434  1324a400  seteq.d r8, r[9:10], r[11:12]
001438  b384922a  .word 0x2a9284b3
00143c  9f026fcf  addli r5, r30, -6224
001440  ebd00200  load.d r[2:3], 0(r5)
001444  0bb51440  min.sl r[11:12], r[10:11], r[2:3]
001448  3b330400  bneq r8, zero, 204
00144c  9f028000  addli r5, zero, 64
001450  3306c028  .word 0x28c00633
001454  3384822a  .word 0x2a828433
001458  0f143470  mod.sl r[9:10], r[9:10], r[4:5]
00145c  9322c402  setneq.d r5, r[9:10], r[13:14]
001460  b7d20200  beq r5, zero, 180
001464  9f420000  addli r5, zero, 4
001468  9f00ffcf  addli r1, r30, -6152
00146c  3384822a  .word 0x2a828433
001470  9f120000  addli r5, zero, 1
001474  73b06000  store.d r[7:8], 0(r1)
001478  27030700  addli.d r[7:8], r[15:16], 0
00147c  27070b00  addli.d r[15:16], r[23:24], 0
001480  0f988170  mod.sl r[17:18], r[4:5], r[9:10]
001484  3389222b  .word 0x2b228933
001488  0bb40119  sub.sl r[9:10], r[4:5], r[17:18]
00148c  93322405  setlt.sl r5, r[9:10], r[19:20]
001490  3bb30200  bneq r5, zero, 204
001494  9f220000  addli r5, zero, 2
001498  330a4029  .word 0x29400a33
00149c  3386c22a  .word 0x2ac28633
0014a0  9332c504  setlt.sl r5, r[11:12], r[13:14]
0014a4  1f060fd0  addli r12, r30, -6144
0014a8  5b020000  j 16
0014ac  274a0a00  addli.d r[21:22], r[21:22], 4
0014b0  93308a04  setlt.sl r1, r[21:22], r[9:10]
0014b4  b7a20000  beq r1, zero, 168
0014b8  bbdf02fe  bneq r5, zero, -12
0014bc  9b161a00  ori r13, r20, 1
0014c0  9b1c3a00  ori r25, r20, 3
0014c4  0b1b4611  add.s r22, r12, r20
0014c8  a70d0900  addli.d r[28:29], r[19:20], 0
0014cc  8b16d610  add.s r13, r12, r13
0014d0  0b1d9611  add.s r26, r12, r25
0014d4  eb1b0b00  load.bu r23, 0(r22)
0014d8  6b9c0600  load.bu r24, 0(r13)
0014dc  9b162a00  ori r13, r20, 2
0014e0  6b1d0d00  load.bu r26, 0(r26)
0014e4  8b16d610  add.s r13, r12, r13
0014e8  eb9c0600  load.bu r25, 0(r13)
0014ec  8bb03d20  mul.sl r[2:3], r[28:29], r[4:5]
0014f0  a79d0d00  addli.d r[28:29], r[28:29], 1
0014f4  8b101b10  add.s r1, r22, r1
0014f8  13b1ad04  setlt.sl r2, r[28:29], r[11:12]
0014fc  73807001  store.b r23, 0(r1)
001500  f3808001  store.b r24, 1(r1)
001504  73819001  store.b r25, 2(r1)
001508  f381a001  store.b r26, 3(r1)
00150c  bb0f01fe  bneq r2, zero, -32
001510  dbf3ffff  j -100
001514  9f028000  addli r5, zero, 64
001518  3384822a  .word 0x2a828433
00151c  93b28104  setlt.sl r5, r[4:5], r[9:10]
001520  37ad0208  beq r5, zero, 4936
001524  9f120000  addli r5, zero, 1
001528  3384822a  .word 0x2a828433
00152c  93a28102  setneq.d r5, r[4:5], r[9:10]
001530  bb8e0208  bneq r5, zero, 5024
001534  9f000fd0  addli r1, r30, -6144
001538  9f020fd0  addli r5, r30, -6144
00153c  6b940000  load.bu r8, 0(r1)
001540  9b941200  ori r9, r5, 1
001544  73808400  store.b r8, 0(r9)
001548  9b942200  ori r9, r5, 2
00154c  9b923200  ori r5, r5, 3
001550  73808400  store.b r8, 0(r9)
001554  73808200  store.b r8, 0(r5)
001558  db730200  j 5020
00155c  93322805  setlt.sl r5, r[17:18], r[19:20]
001560  9f00ffcf  addli r1, r30, -6152
001564  270b0700  addli.d r[23:24], r[15:16], 0
001568  27070300  addli.d r[15:16], r[7:8], 0
00156c  630cdfcf  loadli.w r24,  -6168(r30)
001570  003e0002  core_id r28
001574  6bd30000  load.d r[7:8], 0(r1)
001578  bbe5020a  bneq r5, zero, 5496
00157c  9f220000  addli r5, zero, 2
001580  3386c22a  .word 0x2ac28633
001584  9332c504  setlt.sl r5, r[11:12], r[13:14]
001588  9f160000  addli r13, zero, 1
00158c  1f060fd0  addli r12, r30, -6144
001590  3388062b  .word 0x2b068833
001594  5b020000  j 16
001598  27140400  addli.d r[9:10], r[9:10], 1
00159c  93303404  setlt.sl r1, r[9:10], r[4:5]
0015a0  37c5000a  beq r1, zero, 5456
0015a4  bbdf02fe  bneq r5, zero, -12
0015a8  0b198610  add.s r18, r12, r8
0015ac  270a0800  addli.d r[21:22], r[17:18], 0
0015b0  eb190900  load.bu r19, 0(r18)
0015b4  8b303a20  mul.sl r[2:3], r[21:22], r[4:5]
0015b8  271a0a00  addli.d r[21:22], r[21:22], 1
0015bc  9336aa04  setlt.sl r13, r[21:22], r[11:12]
0015c0  8b101910  add.s r1, r18, r1
0015c4  73803001  store.b r19, 0(r1)
0015c8  bbbf06fe  bneq r13, zero, -20
0015cc  dbf9ffff  j -52
0015d0  1f080000  addli r16, zero, 0
0015d4  8b100e39  mod.s r1, r28, r16
0015d8  b380102a  .word 0x2a1080b3
0015dc  0bb58020  mul.sl r[11:12], r[2:3], r[9:10]
0015e0  8bb0a118  sub.sl r[2:3], r[4:5], r[11:12]
0015e4  0b341440  min.sl r[9:10], r[9:10], r[2:3]
0015e8  9f008000  addli r1, zero, 64
0015ec  8b191438  mod.s r19, r8, r1
0015f0  ab000000  lui r1, 0
0015f4  9f800000  addli r1, r1, 0
0015f8  0b161510  add.s r12, r10, r1
0015fc  8b123419  sub.s r5, r8, r19
001600  bfa02201  blt.s r5, r18, 40
001604  1f090fd0  addli r18, r30, -6144
001608  1f0a0000  addli r20, zero, 0
00160c  8b104611  add.s r1, r12, r20
001610  00a00000  mfence { lm }
001614  4a800002  vloads.mz vr0{mr1}, 0(r1)
001618  8b104911  add.s r1, r18, r20
00161c  1f0a8a00  addli r20, r20, 64
001620  46800002  vstore.mz vr0{mr1}, 0(r1)
001624  bf2f5afe  blt.s r20, r5, -24
001628  9f100000  addli r1, zero, 1
00162c  bf801900  blt.s r19, r1, 32
001630  1f090fd0  addli r18, r30, -6144
001634  8b105610  add.s r1, r12, r5
001638  0b115910  add.s r2, r18, r5
00163c  9f920200  addli r5, r5, 1
001640  ef900000  loads.bu r1, 0(r1)
001644  73001100  store.b r1, 0(r2)
001648  bfbf82fe  blt.s r5, r8, -20
00164c  8b100c31  div.s r1, r24, r16
001650  1f0a6fcf  addli r20, r30, -6224
001654  6b590a00  load.d r[19:20], 0(r20)
001658  00a00000  mfence { lm }
00165c  0b916020  mul.s r2, r1, r6
001660  b312512c  .word 0x2c5112b3
001664  0b110e31  div.s r2, r28, r16
001668  0f165970  mod.sl r[13:14], r[19:20], r[6:7]
00166c  8f125962  .word 0x6259128f
001670  0b91e050  fmac.s r2, r1, r14
001674  b310112c  .word 0x2c1110b3
001678  93b3c004  setlt.sl r7, r[2:3], r[13:14]
00167c  0bb6c040  min.sl r[13:14], r[2:3], r[13:14]
001680  0bb61250  fmac.sl r[13:14], r[6:7], r[2:3]
001684  3387e32e  .word 0x2ee38733
001688  8ba0e210  add.ul r[2:3], r[6:7], r[15:16]
00168c  8b322641  min.sl r[6:7], r[13:14], r[19:20]
001690  8ba0c010  add.ul r[2:3], r[2:3], r[13:14]
001694  0bb62041  min.sl r[13:14], r[2:3], r[19:20]
001698  1f014fce  addli r2, r30, -6368
00169c  93305606  setle.sl r1, r[13:14], r[6:7]
0016a0  6b570100  load.d r[15:16], 0(r2)
0016a4  3bf700fc  bneq r1, zero, -1572
0016a8  1f080fcf  addli r16, r30, -6272
0016ac  9f030fd0  addli r7, r30, -6144
0016b0  eb500800  load.d r[2:3], 0(r16)
0016b4  0b371b50  fmac.sl r[15:16], r[23:24], r[2:3]
0016b8  8b20a710  add.ul r[2:3], r[15:16], r[11:12]
0016bc  27850000  addli.d r[11:12], r[2:3], 0
0016c0  2b0700f0  lui r14, 983040
0016c4  0bb53250  fmac.sl r[11:12], r[6:7], r[4:5]
0016c8  a7920200  addli.d r[6:7], r[6:7], 1
0016cc  1717e400  or r14, r8, r14
0016d0  93b7c204  setlt.sl r15, r[6:7], r[13:14]
0016d4  7f377500  s_lm2gm r14, r7, 0(r[11:12])
0016d8  bb9f07fe  bneq r15, zero, -28
0016dc  db34ffff  j -1628
0016e0  b305b028  .word 0x28b005b3
0016e4  9f06dfce  addli r13, r30, -6296
0016e8  73b0b600  store.d r[12:13], 0(r13)
0016ec  9f055fce  addli r11, r30, -6360
0016f0  6bd80500  load.d r[17:18], 0(r11)
0016f4  9f06dfce  addli r13, r30, -6296
0016f8  9f150000  addli r11, zero, 1
0016fc  6bda0600  load.d r[21:22], 0(r13)
001700  b385b52e  .word 0x2eb585b3
001704  9335ba04  setlt.sl r11, r[21:22], r[12:13]
001708  bbb00500  bneq r11, zero, 44
00170c  9f076fcf  addli r15, r30, -6224
001710  1f0c1fcf  addli r24, r30, -6264
001714  ebd50700  load.d r[12:13], 0(r15)
001718  8ba54511  add.ul r[12:13], r[12:13], r[21:22]
00171c  a7f5f5ff  addli.d r[12:13], r[12:13], 32767
001720  8f954567  .word 0x6745958f
001724  a3b50502  slli.d r[12:13], r[12:13], 32
001728  a3d50502  srai.d r[12:13], r[12:13], 32
00172c  7330bc00  store.d r[12:13], 0(r24)
001730  5b020000  j 16
001734  b305b028  .word 0x28b005b3
001738  9f071fcf  addli r15, r30, -6264
00173c  73b0b700  store.d r[12:13], 0(r15)
001740  9f050fcf  addli r11, r30, -6272
001744  8bb34321  mul.sl r[8:9], r[8:9], r[21:22]
001748  ebd60500  load.d r[14:15], 0(r11)
00174c  9f05cfce  addli r11, r30, -6304
001750  73b07500  store.d r[8:9], 0(r11)
001754  9f73f01f  addli r7, zero, 4095
001758  b383732e  .word 0x2e7383b3
00175c  93b33304  setlt.sl r7, r[8:9], r[4:5]
001760  1b241500  xori r8, r10, 1
001764  97838300  and r7, r7, r8
001768  1f140000  addli r8, zero, 1
00176c  97837400  and r7, r9, r7
001770  3b918300  bneq r7, r8, 68
001774  9f030010  addli r7, zero, 2048
001778  27f4f10f  addli.d r[9:10], r[4:5], 2047
00177c  1f06ffcd  addli r12, r30, -6408
001780  3385a32e  .word 0x2ea38533
001784  8f13a466  .word 0x66a4138f
001788  7330a600  store.d r[11:12], 0(r12)
00178c  9f04bfce  addli r9, r30, -6312
001790  1f05dfce  addli r10, r30, -6296
001794  a3b30302  slli.d r[8:9], r[8:9], 32
001798  a3d30302  srai.d r[8:9], r[8:9], 32
00179c  73b07400  store.d r[8:9], 0(r9)
0017a0  8bb27220  mul.sl r[6:7], r[6:7], r[8:9]
0017a4  eb530500  load.d r[8:9], 0(r10)
0017a8  8bb27220  mul.sl r[6:7], r[6:7], r[8:9]
0017ac  9f03cfce  addli r7, r30, -6304
0017b0  73b05300  store.d r[6:7], 0(r7)
0017b4  e3420fce  loadli.w r5,  -6396(r30)
0017b8  b7a10200  beq r5, zero, 104
0017bc  9f07cfce  addli r15, r30, -6304
0017c0  b303712c  .word 0x2c7103b3
0017c4  1f71f07f  addli r2, zero, 16383
0017c8  b305b028  .word 0x28b005b3
0017cc  6bda0700  load.d r[21:22], 0(r15)
0017d0  b304912c  .word 0x2c9104b3
0017d4  97849602  and.d r[10:11], r[14:15], r[10:11]
0017d8  8f127a72  .word 0x727a128f
0017dc  97945402  or.d r[10:11], r[10:11], r[6:7]
0017e0  13a1b402  setneq.d r2, r[10:11], r[12:13]
0017e4  bb110100  bneq r2, zero, 100
0017e8  8b227a10  add.ul r[6:7], r[21:22], r[8:9]
0017ec  b380102a  .word 0x2a1080b3
0017f0  8f947272  .word 0x7272948f
0017f4  8f937266  .word 0x6672938f
0017f8  93b59004  setlt.sl r11, r[2:3], r[10:11]
0017fc  8bb49040  min.sl r[10:11], r[2:3], r[10:11]
001800  8bb41350  fmac.sl r[10:11], r[8:9], r[2:3]
001804  0bb75440  min.sl r[15:16], r[10:11], r[6:7]
001808  b385b52e  .word 0x2eb585b3
00180c  8ba0b310  add.ul r[2:3], r[8:9], r[12:13]
001810  9f130000  addli r7, zero, 1
001814  8ba09010  add.ul r[2:3], r[2:3], r[10:11]
001818  0bb45040  min.sl r[9:10], r[2:3], r[6:7]
00181c  5b0b0000  j 88
001820  3387e02a  .word 0x2ae08733
001824  b300112c  .word 0x2c1100b3
001828  9f02afce  addli r5, r30, -6320
00182c  73b01200  store.d r[2:3], 0(r5)
001830  9f00cfce  addli r1, r30, -6304
001834  6bda0000  load.d r[21:22], 0(r1)
001838  27040a00  addli.d r[9:10], r[21:22], 0
00183c  9330e406  setle.sl r1, r[9:10], r[15:16]
001840  37a10000  beq r1, zero, 72
001844  5b08ffff  j -1984
001848  8f137a66  .word 0x667a138f
00184c  b380102a  .word 0x2a1080b3
001850  93b45004  setlt.sl r9, r[2:3], r[6:7]
001854  8bb25040  min.sl r[6:7], r[2:3], r[6:7]
001858  b384942a  .word 0x2a9484b3
00185c  8bb21350  fmac.sl r[6:7], r[8:9], r[2:3]
001860  8ba09310  add.ul r[2:3], r[8:9], r[10:11]
001864  9f130000  addli r7, zero, 1
001868  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
00186c  0bb74241  min.sl r[15:16], r[6:7], r[21:22]
001870  0bb44041  min.sl r[9:10], r[2:3], r[21:22]
001874  b380132e  .word 0x2e1380b3
001878  9f02afce  addli r5, r30, -6320
00187c  73b01200  store.d r[2:3], 0(r5)
001880  9330e406  setle.sl r1, r[9:10], r[15:16]
001884  3b8000fc  bneq r1, zero, -2048
001888  9330ea06  setle.sl r1, r[21:22], r[15:16]
00188c  bbef00fa  bneq r1, zero, -2056
001890  9f0d1fcf  addli r27, r30, -6264
001894  1f0eefcd  addli r28, r30, -6416
001898  1f250000  addli r10, zero, 2
00189c  9f060fd0  addli r13, r30, -6144
0018a0  270c0900  addli.d r[25:26], r[19:20], 0
0018a4  1f490000  addli r18, zero, 4
0018a8  9f190000  addli r19, zero, 1
0018ac  ebd00d00  load.d r[2:3], 0(r27)
0018b0  8bb56041  min.sl r[12:13], r[2:3], r[23:24]
0018b4  9f008000  addli r1, zero, 64
0018b8  1f00ffcf  addli zero, r30, -6152
0018bc  b380102a  .word 0x2a1080b3
0018c0  0bb33520  mul.sl r[7:8], r[12:13], r[4:5]
0018c4  73301e00  store.d r[2:3], 0(r28)
0018c8  0f1a1360  div.sl r[21:22], r[7:8], r[2:3]
0018cc  97c0a102  srl.d r[2:3], r[4:5], r10
0018d0  abf2ffff  lui r5, 1048575
0018d4  a7fdf5ff  addli.d r[28:29], r[12:13], 32767
0018d8  9b80f00f  andi r1, r1, 255
0018dc  1f818600  addli r2, r13, 64
0018e0  674a2fcc  storeli.w r2, -6492(r30)
0018e4  0b913610  add.s r2, r13, r3
0018e8  e7491fcc  storeli.w r1, -6500(r30)
0018ec  93803003  setneq r1, r1, r19
0018f0  3309292d  .word 0x2d290933
0018f4  670a2fcc  storeli.w r2, -6496(r30)
0018f8  1b91f2ff  ori r2, r5, 4095
0018fc  9f02bfcf  addli r5, r30, -6184
001900  73b0b201  store.d r[28:29], 0(r5)
001904  8f9d2d77  .word 0x772d9d8f
001908  8b120358  neg.s r5, r6
00190c  670c5fce  storeli.w r5, -6208(r30)
001910  9f02bfce  addli r5, r30, -6312
001914  9bb02000  slli r1, r1, 2
001918  97901600  or r1, r13, r1
00191c  e7091fcc  storeli.w r1, -6504(r30)
001920  9f70faff  addli r1, r20, -1
001924  67411fce  storeli.w r1, -6380(r30)
001928  7330b001  store.d r[28:29], 0(zero)
00192c  9f0d3fce  addli r27, r30, -6376
001930  1f0e5fcf  addli r28, r30, -6232
001934  17200000  xor zero, zero, zero
001938  1f00dfce  addli zero, r30, -6296
00193c  73b02d01  store.d r[19:20], 0(r27)
001940  0f992175  .word 0x7521990f
001944  73306e00  store.d r[7:8], 0(r28)
001948  9f033fcf  addli r7, r30, -6248
00194c  73b04301  store.d r[21:22], 0(r7)
001950  331a412d  .word 0x2d411a33
001954  ebd00200  load.d r[2:3], 0(r5)
001958  eb520000  load.d r[6:7], 0(zero)
00195c  17200000  xor zero, zero, zero
001960  1f000fcf  addli zero, r30, -6272
001964  8bb05020  mul.sl r[2:3], r[2:3], r[6:7]
001968  9f029fce  addli r5, r30, -6328
00196c  1f039fcd  addli r6, r30, -6456
001970  73b01200  store.d r[2:3], 0(r5)
001974  a380f103  andi.d r[2:3], r[4:5], 63
001978  73301300  store.d r[2:3], 0(r6)
00197c  eb500000  load.d r[2:3], 0(zero)
001980  17200000  xor zero, zero, zero
001984  1f006fcd  addli zero, r30, -6480
001988  a380f003  andi.d r[2:3], r[2:3], 63
00198c  73301000  store.d r[2:3], 0(zero)
001990  97d0a102  sra.d r[2:3], r[4:5], r10
001994  1f058fcd  addli r10, r30, -6464
001998  17200000  xor zero, zero, zero
00199c  73301500  store.d r[2:3], 0(r10)
0019a0  9f005fcd  addli r1, r30, -6488
0019a4  73b02001  store.d r[19:20], 0(r1)
0019a8  8bb02119  sub.sl r[2:3], r[4:5], r[19:20]
0019ac  1f09efce  addli r18, r30, -6288
0019b0  9f094fcf  addli r19, r30, -6240
0019b4  73301900  store.d r[2:3], 0(r18)
0019b8  8b303b20  mul.sl r[2:3], r[23:24], r[4:5]
0019bc  270b0c00  addli.d r[23:24], r[25:26], 0
0019c0  73b01900  store.d r[2:3], 0(r19)
0019c4  9f00bfcd  addli r1, r30, -6440
0019c8  1f01cfcd  addli r2, r30, -6432
0019cc  73b04001  store.d r[21:22], 0(r1)
0019d0  73304101  store.d r[21:22], 0(r2)
0019d4  1f0a8fce  addli r20, r30, -6336
0019d8  73308a00  store.d r[9:10], 0(r20)
0019dc  1f039fce  addli r6, r30, -6328
0019e0  9f042fcf  addli r9, r30, -6256
0019e4  9f120000  addli r5, zero, 1
0019e8  eb500300  load.d r[2:3], 0(r6)
0019ec  ebd30400  load.d r[8:9], 0(r9)
0019f0  b38db22b  .word 0x2bb28db3
0019f4  8f101762  .word 0x6217108f
0019f8  8bb00021  mul.sl r[2:3], r[2:3], r[17:18]
0019fc  8bb33050  fmac.sl r[8:9], r[2:3], r[4:5]
001a00  37160d00  beq r26, zero, 388
001a04  9f0cbfce  addli r25, r30, -6312
001a08  1f0a0d00  addli r20, r26, 0
001a0c  1f0d7fce  addli r26, r30, -6344
001a10  a70b0b00  addli.d r[24:25], r[23:24], 0
001a14  ebd20c00  load.d r[6:7], 0(r25)
001a18  7330ed00  store.d r[15:16], 0(r26)
001a1c  27890b00  addli.d r[19:20], r[24:25], 0
001a20  8f125762  .word 0x6257128f
001a24  1f07dfce  addli r14, r30, -6296
001a28  9f07ffce  addli r15, r30, -6280
001a2c  eb540700  load.d r[10:11], 0(r14)
001a30  8f929272  .word 0x7292928f
001a34  ebd40700  load.d r[10:11], 0(r15)
001a38  8bb41418  sub.sl r[10:11], r[10:11], r[2:3]
001a3c  8bba0441  min.sl r[22:23], r[10:11], r[17:18]
001a40  1f051000  addli r10, zero, 8
001a44  b30c952d  .word 0x2d950cb3
001a48  1f050fcf  addli r10, r30, -6272
001a4c  93a4ba03  setneq.d r9, r[22:23], r[28:29]
001a50  6b570500  load.d r[15:16], 0(r10)
001a54  0b391750  fmac.sl r[19:20], r[15:16], r[2:3]
001a58  1f071fcf  addli r14, r30, -6264
001a5c  9f07efcf  addli r15, r30, -6160
001a60  eb500700  load.d r[2:3], 0(r14)
001a64  8bb21220  mul.sl r[6:7], r[6:7], r[2:3]
001a68  9f200000  addli r1, zero, 2
001a6c  b380102a  .word 0x2a1080b3
001a70  0bb93250  fmac.sl r[19:20], r[6:7], r[4:5]
001a74  73b01700  store.d r[2:3], 0(r15)
001a78  1f016fce  addli r2, r30, -6352
001a7c  9f700000  addli r1, zero, 7
001a80  73302101  store.d r[19:20], 0(r2)
001a84  3389202b  .word 0x2b208933
001a88  3b880400  bneq r9, zero, 512
001a8c  8f903c72  .word 0x723c908f
001a90  1f05dfcf  addli r10, r30, -6168
001a94  278b0b00  addli.d r[23:24], r[24:25], 0
001a98  73305500  store.d r[6:7], 0(r10)
001a9c  b3025028  .word 0x285002b3
001aa0  ab0400f0  lui r9, 983040
001aa4  93a05002  setneq.d r1, r[2:3], r[6:7]
001aa8  17919100  or r2, r3, r9
001aac  7fa1d300  l_gm2lm r2, r13, 0(r[8:9])
001ab0  00a00200  mfence { lm, gm }
001ab4  37e10004  beq r1, zero, 2136
001ab8  9f039fcd  addli r7, r30, -6456
001abc  b3001028  .word 0x281000b3
001ac0  ebd20300  load.d r[6:7], 0(r7)
001ac4  93a01200  seteq.d r1, r[6:7], r[2:3]
001ac8  1f017fcd  addli r2, r30, -6472
001acc  6b590100  load.d r[19:20], 0(r2)
001ad0  bbef0002  bneq r1, zero, 2040
001ad4  9f03efcd  addli r7, r30, -6416
001ad8  b3025028  .word 0x285002b3
001adc  ebd00300  load.d r[2:3], 0(r7)
001ae0  8f903072  .word 0x7230908f
001ae4  93a05002  setneq.d r1, r[2:3], r[6:7]
001ae8  b78f0002  beq r1, zero, 2016
001aec  9f02efce  addli r5, r30, -6288
001af0  ebd00200  load.d r[2:3], 0(r5)
001af4  93b0b005  setlt.sl r1, r[2:3], r[28:29]
001af8  bbc70004  bneq r1, zero, 2544
001afc  b3001028  .word 0x281000b3
001b00  5b030000  j 24
001b04  9f03efce  addli r7, r30, -6288
001b08  a7c00000  addli.d r[2:3], r[2:3], 4
001b0c  ebd20300  load.d r[6:7], 0(r7)
001b10  93b25004  setlt.sl r5, r[2:3], r[6:7]
001b14  37d70204  beq r5, zero, 2516
001b18  9f03efcf  addli r7, r30, -6160
001b1c  ebd20300  load.d r[6:7], 0(r7)
001b20  93325904  setlt.sl r5, r[19:20], r[6:7]
001b24  bb8f02fe  bneq r5, zero, -32
001b28  1b942000  ori r8, r1, 2
001b2c  9b943000  ori r9, r1, 3
001b30  1b931000  ori r6, r1, 1
001b34  8b921610  add.s r5, r13, r1
001b38  1f150000  addli r10, zero, 1
001b3c  8b936610  add.s r7, r13, r6
001b40  0b948610  add.s r8, r13, r8
001b44  8b949610  add.s r9, r13, r9
001b48  6b930200  load.bu r6, 0(r5)
001b4c  3307e52c  .word 0x2ce50733
001b50  eb930300  load.bu r7, 0(r7)
001b54  6b140400  load.bu r8, 0(r8)
001b58  eb940400  load.bu r9, 0(r9)
001b5c  0b383720  mul.sl r[17:18], r[15:16], r[4:5]
001b60  27170700  addli.d r[15:16], r[15:16], 1
001b64  0b950211  add.s r10, r5, r16
001b68  13382705  setlt.sl r16, r[15:16], r[19:20]
001b6c  73006500  store.b r6, 0(r10)
001b70  f3007500  store.b r7, 1(r10)
001b74  73018500  store.b r8, 2(r10)
001b78  f3019500  store.b r9, 3(r10)
001b7c  bb0f08fe  bneq r16, zero, -32
001b80  dbf0ffff  j -124
001b84  e3420fce  loadli.w r5,  -6396(r30)
001b88  b7db0200  beq r5, zero, 756
001b8c  9f09dfce  addli r19, r30, -6296
001b90  1f0abfce  addli r20, r30, -6312
001b94  9f0acfcd  addli r21, r30, -6432
001b98  270c0700  addli.d r[25:26], r[15:16], 0
001b9c  ebd80900  load.d r[18:19], 0(r19)
001ba0  eb540a00  load.d r[10:11], 0(r20)
001ba4  8f121763  .word 0x6317128f
001ba8  8f929272  .word 0x7292928f
001bac  ebd40a00  load.d r[10:11], 0(r21)
001bb0  13a71402  setneq.d r14, r[10:11], r[2:3]
001bb4  9f04ffcd  addli r9, r30, -6408
001bb8  ebd70400  load.d r[16:17], 0(r9)
001bbc  8bb2f220  mul.sl r[6:7], r[6:7], r[16:17]
001bc0  8bb45118  sub.sl r[10:11], r[4:5], r[6:7]
001bc4  8bb4f440  min.sl r[10:11], r[10:11], r[16:17]
001bc8  3b500700  bneq r14, zero, 20
001bcc  1f08bfcd  addli r16, r30, -6440
001bd0  6b570800  load.d r[15:16], 0(r16)
001bd4  13275700  seteq.d r14, r[15:16], r[6:7]
001bd8  3b600700  bneq r14, zero, 24
001bdc  2b0700f0  lui r14, 983040
001be0  8ba35310  add.ul r[8:9], r[8:9], r[6:7]
001be4  1797e400  or r14, r9, r14
001be8  7fa7d300  l_gm2lm r14, r13, 0(r[8:9])
001bec  00a00200  mfence { lm, gm }
001bf0  8f131c77  .word 0x771c138f
001bf4  1f091fcf  addli r18, r30, -6264
001bf8  9f096fcf  addli r19, r30, -6224
001bfc  6b580900  load.d r[17:18], 0(r18)
001c00  0bb70321  mul.sl r[15:16], r[8:9], r[17:18]
001c04  ebd30900  load.d r[8:9], 0(r19)
001c08  8bb3e318  sub.sl r[8:9], r[8:9], r[15:16]
001c0c  8b337840  min.sl r[8:9], r[17:18], r[8:9]
001c10  13b8b305  setlt.sl r16, r[8:9], r[28:29]
001c14  3b010800  bneq r16, zero, 64
001c18  1f0a0fcf  addli r20, r30, -6272
001c1c  27080b00  addli.d r[17:18], r[23:24], 0
001c20  6b590a00  load.d r[19:20], 0(r20)
001c24  0b381950  fmac.sl r[17:18], r[19:20], r[2:3]
001c28  0b383750  fmac.sl r[17:18], r[15:16], r[4:5]
001c2c  0b275810  add.ul r[15:16], r[17:18], r[6:7]
001c30  33080029  .word 0x29000833
001c34  27090700  addli.d r[19:20], r[15:16], 0
001c38  2b0a00f0  lui r20, 983040
001c3c  0b393850  fmac.sl r[19:20], r[17:18], r[4:5]
001c40  27180800  addli.d r[17:18], r[17:18], 1
001c44  179a4401  or r20, r9, r20
001c48  933a7804  setlt.sl r21, r[17:18], r[8:9]
001c4c  7f3ad900  s_lm2gm r20, r13, 0(r[19:20])
001c50  bb9f0afe  bneq r21, zero, -28
001c54  9f04cfcd  addli r9, r30, -6432
001c58  00a00000  mfence { lm }
001c5c  1f098fce  addli r18, r30, -6336
001c60  1f05cfce  addli r10, r30, -6304
001c64  27070c00  addli.d r[15:16], r[25:26], 0
001c68  73b01400  store.d r[2:3], 0(r9)
001c6c  9f00bfcd  addli r1, r30, -6440
001c70  1f015fce  addli r2, r30, -6360
001c74  eb530900  load.d r[8:9], 0(r18)
001c78  73b05000  store.d r[6:7], 0(r1)
001c7c  6b580100  load.d r[17:18], 0(r2)
001c80  eb520500  load.d r[6:7], 0(r10)
001c84  db780100  j 3012
001c88  1f079fcd  addli r14, r30, -6456
001c8c  b3001028  .word 0x281000b3
001c90  8bb23a20  mul.sl r[6:7], r[22:23], r[4:5]
001c94  a78b0c00  addli.d r[24:25], r[26:27], 0
001c98  eb540700  load.d r[10:11], 0(r14)
001c9c  93a01400  seteq.d r1, r[10:11], r[2:3]
001ca0  2b0100f0  lui r2, 983040
001ca4  17912200  or r2, r5, r2
001ca8  7fa1d300  l_gm2lm r2, r13, 0(r[8:9])
001cac  1f510000  addli r2, zero, 5
001cb0  00a00200  mfence { lm, gm }
001cb4  b302512c  .word 0x2c5102b3
001cb8  1f01cfcf  addli r2, r30, -6176
001cbc  73305100  store.d r[6:7], 0(r2)
001cc0  9f027fcf  addli r5, r30, -6216
001cc4  1f03dfcd  addli r6, r30, -6424
001cc8  73b0b201  store.d r[28:29], 0(r5)
001ccc  73305301  store.d r[22:23], 0(r6)
001cd0  bbf90000  bneq r1, zero, 636
001cd4  9f03efcd  addli r7, r30, -6416
001cd8  1f046fcd  addli r8, r30, -6480
001cdc  ebd00300  load.d r[2:3], 0(r7)
001ce0  eb520400  load.d r[6:7], 0(r8)
001ce4  8f903072  .word 0x7230908f
001ce8  97905002  or.d r[2:3], r[2:3], r[6:7]
001cec  b3025028  .word 0x285002b3
001cf0  93a05002  setneq.d r1, r[2:3], r[6:7]
001cf4  37e90000  beq r1, zero, 600
001cf8  93b0ba05  setlt.sl r1, r[22:23], r[28:29]
001cfc  1f01afcf  addli r2, r30, -6192
001d00  1f0d0a00  addli r26, r20, 0
001d04  73305101  store.d r[22:23], 0(r2)
001d08  b7a00000  beq r1, zero, 40
001d0c  5bf00000  j 1920
001d10  9f03efcf  addli r7, r30, -6160
001d14  1f049fcf  addli r8, r30, -6200
001d18  ebd00300  load.d r[2:3], 0(r7)
001d1c  eb520400  load.d r[6:7], 0(r8)
001d20  93b01204  setlt.sl r1, r[6:7], r[2:3]
001d24  1f017fcf  addli r2, r30, -6216
001d28  eb5d0100  load.d r[28:29], 0(r2)
001d2c  bb8d0002  bneq r1, zero, 1888
001d30  93b0b105  setlt.sl r1, r[4:5], r[28:29]
001d34  1f01afcf  addli r2, r30, -6192
001d38  9f039fcf  addli r7, r30, -6200
001d3c  1f04afcf  addli r8, r30, -6192
001d40  eb520100  load.d r[6:7], 0(r2)
001d44  73b05300  store.d r[6:7], 0(r7)
001d48  a7f2f2ff  addli.d r[6:7], r[6:7], 32767
001d4c  73305400  store.d r[6:7], 0(r8)
001d50  3b8f00fe  bneq r1, zero, -64
001d54  9f02afcf  addli r5, r30, -6192
001d58  1f03dfcf  addli r6, r30, -6168
001d5c  ebd00200  load.d r[2:3], 0(r5)
001d60  0bb73020  mul.sl r[15:16], r[2:3], r[4:5]
001d64  8b30b720  mul.sl r[2:3], r[15:16], r[12:13]
001d68  73301300  store.d r[2:3], 0(r6)
001d6c  a7800100  addli.d r[2:3], r[4:5], 0
001d70  db020000  j 20
001d74  9f04efcf  addli r9, r30, -6160
001d78  ebd30400  load.d r[8:9], 0(r9)
001d7c  93b27204  setlt.sl r5, r[6:7], r[8:9]
001d80  3bce02fe  bneq r5, zero, -112
001d84  1f0acfcf  addli r20, r30, -6176
001d88  9f0adfcf  addli r21, r30, -6168
001d8c  eb520a00  load.d r[6:7], 0(r20)
001d90  ebd30a00  load.d r[8:9], 0(r21)
001d94  13bb5504  setlt.sl r22, r[12:13], r[6:7]
001d98  a7820000  addli.d r[6:7], r[2:3], 0
001d9c  a7f0f2ff  addli.d r[2:3], r[6:7], 32767
001da0  8ba47010  add.ul r[10:11], r[2:3], r[8:9]
001da4  0ba8e010  add.ul r[17:18], r[2:3], r[15:16]
001da8  3b320b00  bneq r22, zero, 140
001dac  9f03bfcf  addli r7, r30, -6184
001db0  ebdd0300  load.d r[28:29], 0(r7)
001db4  a7830400  addli.d r[8:9], r[10:11], 0
001db8  0b9b0611  add.s r22, r13, r16
001dbc  27fcfdff  addli.d r[25:26], r[28:29], 32767
001dc0  278a0400  addli.d r[21:22], r[10:11], 0
001dc4  8bb33d50  fmac.sl r[8:9], r[28:29], r[4:5]
001dc8  eb1b0b00  load.bu r23, 0(r22)
001dcc  0b3a3c50  fmac.sl r[21:22], r[25:26], r[4:5]
001dd0  932cb905  setlt.ul r25, r[19:20], r[28:29]
001dd4  8b937610  add.s r7, r13, r7
001dd8  0b944611  add.s r8, r13, r20
001ddc  73807301  store.b r23, 0(r7)
001de0  a78b0400  addli.d r[24:25], r[10:11], 0
001de4  eb130b00  load.bu r7, 0(r22)
001de8  73007400  store.b r7, 0(r8)
001dec  eb130b00  load.bu r7, 0(r22)
001df0  2bf4ffff  lui r8, 1048575
001df4  1b1ae4ff  ori r20, r8, 4094
001df8  1b14d4ff  ori r8, r8, 4093
001dfc  330a4a29  .word 0x294a0a33
001e00  0baa4d11  add.ul r[21:22], r[28:29], r[21:22]
001e04  8b3b3a50  fmac.sl r[24:25], r[21:22], r[4:5]
001e08  330a4429  .word 0x29440a33
001e0c  0b947611  add.s r8, r13, r23
001e10  0baa4d11  add.ul r[21:22], r[28:29], r[21:22]
001e14  a78b0400  addli.d r[24:25], r[10:11], 0
001e18  a7cdfdff  addli.d r[28:29], r[28:29], 32764
001e1c  73007400  store.b r7, 0(r8)
001e20  8b3b3a50  fmac.sl r[24:25], r[21:22], r[4:5]
001e24  eb130b00  load.bu r7, 0(r22)
001e28  0b947611  add.s r8, r13, r23
001e2c  73007400  store.b r7, 0(r8)
001e30  3b9e0cfe  bneq r25, zero, -124
001e34  1f0affcf  addli r20, r30, -6152
001e38  b30db029  .word 0x29b00db3
001e3c  eb530a00  load.d r[8:9], 0(r20)
001e40  13bbb305  setlt.sl r22, r[8:9], r[28:29]
001e44  bb4c0bfe  bneq r22, zero, -208
001e48  9f03ffcf  addli r7, r30, -6152
001e4c  ebdd0300  load.d r[28:29], 0(r7)
001e50  b3037028  .word 0x287003b3
001e54  278a0400  addli.d r[21:22], r[10:11], 0
001e58  93a37d00  seteq.d r7, r[28:29], r[8:9]
001e5c  0b940611  add.s r8, r13, r16
001e60  0bba3d50  fmac.sl r[21:22], r[28:29], r[4:5]
001e64  a7fdfdff  addli.d r[28:29], r[28:29], 32767
001e68  6b140400  load.bu r8, 0(r8)
001e6c  0b9a4611  add.s r20, r13, r20
001e70  73008a00  store.b r8, 0(r20)
001e74  37ff03fe  beq r7, zero, -36
001e78  dbdfffff  j -260
001e7c  1f0cbfce  addli r24, r30, -6312
001e80  9f0cdfce  addli r25, r30, -6296
001e84  27080700  addli.d r[17:18], r[15:16], 0
001e88  278a0d00  addli.d r[21:22], r[28:29], 0
001e8c  1f00ffcd  addli zero, r30, -6408
001e90  eb540c00  load.d r[10:11], 0(r24)
001e94  a70d0800  addli.d r[28:29], r[17:18], 0
001e98  8f129762  .word 0x6297128f
001e9c  6bd70c00  load.d r[15:16], 0(r25)
001ea0  0f199874  .word 0x7498190f
001ea4  1f081fcf  addli r16, r30, -6264
001ea8  9f086fcf  addli r17, r30, -6224
001eac  6b5c0000  load.d r[25:26], 0(zero)
001eb0  17200000  xor zero, zero, zero
001eb4  eb540800  load.d r[10:11], 0(r16)
001eb8  8f92e272  .word 0x72e2928f
001ebc  8b338951  fmac.sl r[8:9], r[19:20], r[25:26]
001ec0  0bb79220  mul.sl r[15:16], r[6:7], r[10:11]
001ec4  ebd20800  load.d r[6:7], 0(r17)
001ec8  0b388921  mul.sl r[17:18], r[19:20], r[25:26]
001ecc  8bb2e218  sub.sl r[6:7], r[6:7], r[15:16]
001ed0  8bb25440  min.sl r[6:7], r[10:11], r[6:7]
001ed4  8bb40119  sub.sl r[10:11], r[4:5], r[17:18]
001ed8  13ba4205  setlt.sl r20, r[6:7], r[21:22]
001edc  8bb48441  min.sl r[10:11], r[10:11], r[25:26]
001ee0  ab0a00f0  lui r21, 983040
001ee4  17995401  or r18, r9, r21
001ee8  7fa9d300  l_gm2lm r18, r13, 0(r[8:9])
001eec  00a00200  mfence { lm, gm }
001ef0  3b010a00  bneq r20, zero, 64
001ef4  1f0a0fcf  addli r20, r30, -6272
001ef8  a7030b00  addli.d r[8:9], r[23:24], 0
001efc  6b590a00  load.d r[19:20], 0(r20)
001f00  8b331950  fmac.sl r[8:9], r[19:20], r[2:3]
001f04  8b333750  fmac.sl r[8:9], r[15:16], r[4:5]
001f08  8ba00311  add.ul r[2:3], r[8:9], r[17:18]
001f0c  b3037028  .word 0x287003b3
001f10  27870000  addli.d r[15:16], r[2:3], 0
001f14  2b0800f0  lui r16, 983040
001f18  0bb73350  fmac.sl r[15:16], r[8:9], r[4:5]
001f1c  a7930300  addli.d r[8:9], r[8:9], 1
001f20  17980401  or r16, r9, r16
001f24  93b85304  setlt.sl r17, r[8:9], r[6:7]
001f28  7f38d700  s_lm2gm r16, r13, 0(r[15:16])
001f2c  bb9f08fe  bneq r17, zero, -28
001f30  9f005fce  addli r1, r30, -6360
001f34  1f01cfce  addli r2, r30, -6304
001f38  00a00000  mfence { lm }
001f3c  27870d00  addli.d r[15:16], r[28:29], 0
001f40  6bd80000  load.d r[17:18], 0(r1)
001f44  eb520100  load.d r[6:7], 0(r2)
001f48  5b1f0100  j 2296
001f4c  9f02efcd  addli r5, r30, -6416
001f50  ebd00200  load.d r[2:3], 0(r5)
001f54  93b01104  setlt.sl r1, r[4:5], r[2:3]
001f58  37a20002  beq r1, zero, 1160
001f5c  93b0ba05  setlt.sl r1, r[22:23], r[28:29]
001f60  1f0d0a00  addli r26, r20, 0
001f64  1f01afcd  addli r2, r30, -6448
001f68  73307101  store.d r[24:25], 0(r2)
001f6c  bb840002  bneq r1, zero, 1312
001f70  9f03dfcd  addli r7, r30, -6424
001f74  1f045fcf  addli r8, r30, -6232
001f78  6bd70300  load.d r[15:16], 0(r7)
001f7c  eb520400  load.d r[6:7], 0(r8)
001f80  a770f7ff  addli.d r[2:3], r[15:16], 32767
001f84  8bb01220  mul.sl r[2:3], r[6:7], r[2:3]
001f88  e3424fcd  loadli.w r5,  -6492(r30)
001f8c  0b9b1210  add.s r22, r5, r1
001f90  db030000  j 28
001f94  9f02efcf  addli r5, r30, -6160
001f98  ebd00200  load.d r[2:3], 0(r5)
001f9c  93301804  setlt.sl r1, r[17:18], r[2:3]
001fa0  63018fcf  loadli.w r2,  -6208(r30)
001fa4  0b1b2b10  add.s r22, r22, r2
001fa8  bb930002  bneq r1, zero, 1252
001fac  1f055fcf  addli r10, r30, -6232
001fb0  27080700  addli.d r[17:18], r[15:16], 0
001fb4  93a2b103  setneq.d r5, r[4:5], r[28:29]
001fb8  eb500500  load.d r[2:3], 0(r10)
001fbc  2777f8ff  addli.d r[15:16], r[17:18], 32767
001fc0  0b343720  mul.sl r[9:10], r[15:16], r[4:5]
001fc4  0b331720  mul.sl r[7:8], r[15:16], r[2:3]
001fc8  0b948610  add.s r8, r13, r8
001fcc  8b936610  add.s r7, r13, r6
001fd0  bba00200  bneq r5, zero, 40
001fd4  eb120400  load.bu r5, 0(r8)
001fd8  73805300  store.b r5, 0(r7)
001fdc  eb120400  load.bu r5, 0(r8)
001fe0  f3805300  store.b r5, 1(r7)
001fe4  eb120400  load.bu r5, 0(r8)
001fe8  73815300  store.b r5, 2(r7)
001fec  eb120400  load.bu r5, 0(r8)
001ff0  f3815300  store.b r5, 3(r7)
001ff4  db060000  j 52
001ff8  1f033fce  addli r6, r30, -6376
001ffc  eb500300  load.d r[2:3], 0(r6)
002000  93b21104  setlt.sl r5, r[4:5], r[2:3]
002004  b7910200  beq r5, zero, 100
002008  eb100400  load.bu r1, 0(r8)
00200c  73801300  store.b r1, 0(r7)
002010  eb101400  load.bu r1, 1(r8)
002014  f3801300  store.b r1, 1(r7)
002018  eb100400  load.bu r1, 0(r8)
00201c  73811300  store.b r1, 2(r7)
002020  eb101400  load.bu r1, 1(r8)
002024  f3811300  store.b r1, 3(r7)
002028  e3820300  loadli.w r5,  0(r7)
00202c  67c05300  storeli.w r5, 4(r7)
002030  e7805300  storeli.w r5, 8(r7)
002034  e7c05300  storeli.w r5, 12(r7)
002038  67815300  storeli.w r5, 16(r7)
00203c  67c15300  storeli.w r5, 20(r7)
002040  e7815300  storeli.w r5, 24(r7)
002044  e7c15300  storeli.w r5, 28(r7)
002048  67825300  storeli.w r5, 32(r7)
00204c  67c25300  storeli.w r5, 36(r7)
002050  e7825300  storeli.w r5, 40(r7)
002054  e7c25300  storeli.w r5, 44(r7)
002058  67835300  storeli.w r5, 48(r7)
00205c  67c35300  storeli.w r5, 52(r7)
002060  e7835300  storeli.w r5, 56(r7)
002064  db450000  j 556
002068  9f0c8fcd  addli r25, r30, -6464
00206c  6bda0c00  load.d r[21:22], 0(r25)
002070  8f904073  .word 0x7340908f
002074  8f9b4d77  .word 0x774d9b8f
002078  9f0defcf  addli r27, r30, -6160
00207c  ebd20d00  load.d r[6:7], 0(r27)
002080  8f944273  .word 0x7342948f
002084  1f039fcf  addli r6, r30, -6200
002088  9f02afcf  addli r5, r30, -6192
00208c  73301300  store.d r[2:3], 0(r6)
002090  9f300000  addli r1, zero, 3
002094  63030400  loadli.w r6,  0(r8)
002098  b38db02b  .word 0x2bb08db3
00209c  67806300  storeli.w r6, 0(r7)
0020a0  1f03dfcf  addli r6, r30, -6168
0020a4  8f904d73  .word 0x734d908f
0020a8  1f0edfcf  addli r28, r30, -6168
0020ac  9f0dcfcf  addli r27, r30, -6176
0020b0  73301e00  store.d r[2:3], 0(r28)
0020b4  ebd00d00  load.d r[2:3], 0(r27)
0020b8  9bbd2400  slli r27, r9, 2
0020bc  1f059fcf  addli r10, r30, -6200
0020c0  9f04afcd  addli r9, r30, -6448
0020c4  8b1db411  add.s r27, r8, r27
0020c8  8f904073  .word 0x7340908f
0020cc  73b01200  store.d r[2:3], 0(r5)
0020d0  8f104973  .word 0x7349108f
0020d4  9bb22b00  slli r5, r23, 2
0020d8  1f0c1fce  addli r24, r30, -6392
0020dc  9f0b0d00  addli r23, r26, 0
0020e0  a70c0800  addli.d r[26:27], r[17:18], 0
0020e4  8b125410  add.s r5, r8, r5
0020e8  e3820200  loadli.w r5,  0(r5)
0020ec  67c05300  storeli.w r5, 4(r7)
0020f0  e3820d00  loadli.w r5,  0(r27)
0020f4  e7805300  storeli.w r5, 8(r7)
0020f8  9f02afcf  addli r5, r30, -6192
0020fc  73301c00  store.d r[2:3], 0(r24)
002100  eb500500  load.d r[2:3], 0(r10)
002104  1bbe2000  slli r28, r1, 2
002108  9f600000  addli r1, zero, 6
00210c  1f009fcf  addli zero, r30, -6200
002110  3388002b  .word 0x2b008833
002114  eb500300  load.d r[2:3], 0(r6)
002118  0f184871  mod.sl r[17:18], r[17:18], r[21:22]
00211c  9bbd2000  slli r27, r1, 2
002120  ebd00400  load.d r[2:3], 0(r9)
002124  8b1db411  add.s r27, r8, r27
002128  8f904073  .word 0x7340908f
00212c  63850d00  loadli.w r10,  0(r27)
002130  8b1dc411  add.s r27, r8, r28
002134  1f0e1fce  addli r28, r30, -6392
002138  e7c0a300  storeli.w r10, 12(r7)
00213c  e38d0d00  loadli.w r27,  0(r27)
002140  6781b301  storeli.w r27, 16(r7)
002144  1b382800  slli r16, r16, 2
002148  9f089fcf  addli r17, r30, -6200
00214c  0b180411  add.s r16, r8, r16
002150  73301000  store.d r[2:3], 0(zero)
002154  ebd00200  load.d r[2:3], 0(r5)
002158  17200000  xor zero, zero, zero
00215c  9bb42000  slli r9, r1, 2
002160  9f101000  addli r1, zero, 9
002164  b382502a  .word 0x2a5082b3
002168  8b149410  add.s r9, r8, r9
00216c  8f904273  .word 0x7342908f
002170  1f03dfcf  addli r6, r30, -6168
002174  9f321000  addli r5, zero, 11
002178  e3840400  loadli.w r9,  0(r9)
00217c  67c19300  storeli.w r9, 20(r7)
002180  63080800  loadli.w r16,  0(r16)
002184  e7810301  storeli.w r16, 24(r7)
002188  1f08dfcf  addli r16, r30, -6168
00218c  73301300  store.d r[2:3], 0(r6)
002190  eb500e00  load.d r[2:3], 0(r28)
002194  b38db22b  .word 0x2bb28db3
002198  8f9d4d77  .word 0x774d9d8f
00219c  1bb52000  slli r10, r1, 2
0021a0  9f201000  addli r1, zero, 10
0021a4  b380102a  .word 0x2a1080b3
0021a8  0b15a410  add.s r10, r8, r10
0021ac  8f924073  .word 0x7340928f
0021b0  ebd00800  load.d r[2:3], 0(r17)
0021b4  63050500  loadli.w r10,  0(r10)
0021b8  9bb42000  slli r9, r1, 2
0021bc  9f401000  addli r1, zero, 12
0021c0  1f00afcf  addli zero, r30, -6192
0021c4  e7c1a300  storeli.w r10, 28(r7)
0021c8  b380102a  .word 0x2a1080b3
0021cc  8b149410  add.s r9, r8, r9
0021d0  8f904073  .word 0x7340908f
0021d4  e3840400  loadli.w r9,  0(r9)
0021d8  67829300  storeli.w r9, 32(r7)
0021dc  9bb22200  slli r5, r5, 2
0021e0  8b125410  add.s r5, r8, r5
0021e4  73301000  store.d r[2:3], 0(zero)
0021e8  eb500800  load.d r[2:3], 0(r16)
0021ec  17200000  xor zero, zero, zero
0021f0  1f631000  addli r6, zero, 14
0021f4  1bb82000  slli r16, r1, 2
0021f8  9f501000  addli r1, zero, 13
0021fc  b380102a  .word 0x2a1080b3
002200  0b150411  add.s r10, r8, r16
002204  3308032d  .word 0x2d030833
002208  1bb32d00  slli r6, r27, 2
00220c  8f904073  .word 0x7340908f
002210  e3040500  loadli.w r9,  0(r10)
002214  1f751000  addli r10, zero, 15
002218  0f184871  mod.sl r[17:18], r[17:18], r[21:22]
00221c  0b136410  add.s r6, r8, r6
002220  b30db52d  .word 0x2db50db3
002224  67c29300  storeli.w r9, 36(r7)
002228  8f9d4d77  .word 0x774d9d8f
00222c  1f0aafcf  addli r20, r30, -6192
002230  e3820200  loadli.w r5,  0(r5)
002234  eb540a00  load.d r[10:11], 0(r20)
002238  e7825300  storeli.w r5, 40(r7)
00223c  e3020300  loadli.w r5,  0(r6)
002240  1f037fcf  addli r6, r30, -6216
002244  9bb42400  slli r9, r9, 2
002248  e7c25300  storeli.w r5, 44(r7)
00224c  9bb02000  slli r1, r1, 2
002250  0b119410  add.s r2, r8, r9
002254  63010100  loadli.w r2,  0(r2)
002258  8b101410  add.s r1, r8, r1
00225c  67832300  storeli.w r2, 48(r7)
002260  1b312800  slli r2, r16, 2
002264  27880c00  addli.d r[17:18], r[26:27], 0
002268  1f8d0b00  addli r26, r23, 0
00226c  e3800000  loadli.w r1,  0(r1)
002270  67c31300  storeli.w r1, 52(r7)
002274  8b102410  add.s r1, r8, r2
002278  1bb12d00  slli r2, r27, 2
00227c  eb5d0300  load.d r[28:29], 0(r6)
002280  e3800000  loadli.w r1,  0(r1)
002284  0b112410  add.s r2, r8, r2
002288  e7831300  storeli.w r1, 56(r7)
00228c  e3020100  loadli.w r5,  0(r2)
002290  e7c35300  storeli.w r5, 60(r7)
002294  1f033fcf  addli r6, r30, -6248
002298  9f220000  addli r5, zero, 2
00229c  00a00000  mfence { lm }
0022a0  eb500300  load.d r[2:3], 0(r6)
0022a4  bfc350fe  blt.s r1, r5, -784
0022a8  42800302  vload.mz vr0{mr1}, 0(r7)
0022ac  63432fce  loadli.w r6,  -6380(r30)
0022b0  9f020b00  addli r5, r22, 0
0022b4  46800202  vstore.mz vr0{mr1}, 0(r5)
0022b8  1f73f3ff  addli r6, r6, -1
0022bc  9f828200  addli r5, r5, 64
0022c0  bb5f03fe  bneq r6, zero, -12
0022c4  5b9affff  j -816
0022c8  9f02efcd  addli r5, r30, -6416
0022cc  ebd00200  load.d r[2:3], 0(r5)
0022d0  93b01104  setlt.sl r1, r[4:5], r[2:3]
0022d4  b7f90000  beq r1, zero, 636
0022d8  9f100000  addli r1, zero, 1
0022dc  b380102a  .word 0x2a1080b3
0022e0  93a01102  setneq.d r1, r[4:5], r[2:3]
0022e4  3bcb0000  bneq r1, zero, 720
0022e8  1f030fd0  addli r6, r30, -6144
0022ec  1b911600  ori r2, r13, 1
0022f0  9b922600  ori r5, r13, 2
0022f4  eb100300  load.bu r1, 0(r6)
0022f8  73001100  store.b r1, 0(r2)
0022fc  1b913600  ori r2, r13, 3
002300  73801200  store.b r1, 0(r5)
002304  73001100  store.b r1, 0(r2)
002308  db590000  j 716
00230c  93303904  setlt.sl r1, r[19:20], r[4:5]
002310  bba00000  bneq r1, zero, 40
002314  a7800100  addli.d r[2:3], r[4:5], 0
002318  8f923072  .word 0x7230928f
00231c  93b32005  setlt.sl r7, r[2:3], r[19:20]
002320  8b925610  add.s r5, r13, r5
002324  0b931610  add.s r6, r13, r1
002328  a7900000  addli.d r[2:3], r[2:3], 1
00232c  eb920200  load.bu r5, 0(r5)
002330  73005300  store.b r5, 0(r6)
002334  bb9f03fe  bneq r7, zero, -28
002338  9f044fcf  addli r9, r30, -6240
00233c  9f108000  addli r1, zero, 65
002340  e3020fd0  loadli.w r5,  -6144(r30)
002344  63430fd0  loadli.w r6,  -6140(r30)
002348  ebd30400  load.d r[8:9], 0(r9)
00234c  b380102a  .word 0x2a1080b3
002350  e7005fd0  storeli.w r5, -6136(r30)
002354  e7406fd0  storeli.w r6, -6132(r30)
002358  67015fd0  storeli.w r5, -6128(r30)
00235c  67416fd0  storeli.w r6, -6124(r30)
002360  e7015fd0  storeli.w r5, -6120(r30)
002364  e7416fd0  storeli.w r6, -6116(r30)
002368  67025fd0  storeli.w r5, -6112(r30)
00236c  67426fd0  storeli.w r6, -6108(r30)
002370  e7025fd0  storeli.w r5, -6104(r30)
002374  e7426fd0  storeli.w r6, -6100(r30)
002378  67035fd0  storeli.w r5, -6096(r30)
00237c  67436fd0  storeli.w r6, -6092(r30)
002380  e7035fd0  storeli.w r5, -6088(r30)
002384  e7436fd0  storeli.w r6, -6084(r30)
002388  00a00000  mfence { lm }
00238c  93b01304  setlt.sl r1, r[8:9], r[2:3]
002390  1f017fcd  addli r2, r30, -6472
002394  6b590100  load.d r[19:20], 0(r2)
002398  bba00002  bneq r1, zero, 1064
00239c  42900602  vload_mask16.mz vr0{mr1}, 0(r13)
0023a0  9f02efcd  addli r5, r30, -6416
0023a4  ebd00200  load.d r[2:3], 0(r5)
0023a8  1f044fcf  addli r8, r30, -6240
0023ac  8b921610  add.s r5, r13, r1
0023b0  a7800002  addli.d r[2:3], r[2:3], 256
0023b4  6b530400  load.d r[7:8], 0(r8)
0023b8  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0023bc  13b36004  setlt.sl r6, r[2:3], r[7:8]
0023c0  9f838200  addli r7, r5, 64
0023c4  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0023c8  9f830201  addli r7, r5, 128
0023cc  9f828201  addli r5, r5, 192
0023d0  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
0023d4  46900202  vstore_mask16.mz vr0{mr1}, 0(r5)
0023d8  3b4f03fe  bneq r6, zero, -48
0023dc  db7c0000  j 996
0023e0  93b0ba05  setlt.sl r1, r[22:23], r[28:29]
0023e4  1f0d0a00  addli r26, r20, 0
0023e8  bb920000  bneq r1, zero, 164
0023ec  9f04dfcd  addli r9, r30, -6424
0023f0  1f055fcf  addli r10, r30, -6232
0023f4  ebd30400  load.d r[8:9], 0(r9)
0023f8  eb520500  load.d r[6:7], 0(r10)
0023fc  a7f0f3ff  addli.d r[2:3], r[8:9], 32767
002400  8bb01220  mul.sl r[2:3], r[6:7], r[2:3]
002404  a7820300  addli.d r[6:7], r[8:9], 0
002408  8b901610  add.s r1, r13, r1
00240c  db030000  j 28
002410  1f07efcf  addli r14, r30, -6160
002414  eb540700  load.d r[10:11], 0(r14)
002418  13b19304  setlt.sl r2, r[8:9], r[10:11]
00241c  e3038fcf  loadli.w r7,  -6208(r30)
002420  8b907010  add.s r1, r1, r7
002424  bb210100  bneq r2, zero, 104
002428  a7830200  addli.d r[8:9], r[6:7], 0
00242c  3307e028  .word 0x28e00733
002430  1f810000  addli r2, r1, 0
002434  a7f2f3ff  addli.d r[6:7], r[8:9], 32767
002438  8bb43220  mul.sl r[10:11], r[6:7], r[4:5]
00243c  db020000  j 20
002440  27078700  addli.d r[15:16], r[15:16], 64
002444  1f018100  addli r2, r2, 64
002448  13383704  setlt.sl r16, r[15:16], r[4:5]
00244c  371f08fe  beq r16, zero, -60
002450  13b8b505  setlt.sl r16, r[12:13], r[28:29]
002454  00a00000  mfence { lm }
002458  bb2f08fe  bneq r16, zero, -24
00245c  0b289710  add.ul r[17:18], r[15:16], r[10:11]
002460  0b980611  add.s r16, r13, r16
002464  9f080100  addli r17, r2, 0
002468  42000802  vload.mz vr0{mr1}, 0(r16)
00246c  1f180000  addli r16, zero, 1
002470  33092829  .word 0x29280933
002474  46800802  vstore.mz vr0{mr1}, 0(r17)
002478  1f180800  addli r16, r16, 1
00247c  8b983810  add.s r17, r17, r3
002480  1339b904  setlt.sl r18, r[19:20], r[12:13]
002484  bb3f09fe  bneq r18, zero, -20
002488  5bf7ffff  j -72
00248c  9f045fcf  addli r9, r30, -6232
002490  1f05dfcd  addli r10, r30, -6424
002494  00a00000  mfence { lm }
002498  1f095fce  addli r18, r30, -6360
00249c  9f09cfce  addli r19, r30, -6304
0024a0  1f0a7fce  addli r20, r30, -6344
0024a4  9f0a8fce  addli r21, r30, -6336
0024a8  ebd00400  load.d r[2:3], 0(r9)
0024ac  eb520500  load.d r[6:7], 0(r10)
0024b0  8bb05020  mul.sl r[2:3], r[2:3], r[6:7]
0024b4  ab0200f0  lui r5, 983040
0024b8  97905000  or r1, r1, r5
0024bc  1f016fce  addli r2, r30, -6352
0024c0  eb520100  load.d r[6:7], 0(r2)
0024c4  ffb0d200  s_lm2gm r1, r13, 0(r[6:7])
0024c8  9f004fce  addli r1, r30, -6368
0024cc  00a00200  mfence { lm, gm }
0024d0  6bdb0000  load.d r[23:24], 0(r1)
0024d4  6b580900  load.d r[17:18], 0(r18)
0024d8  ebd20900  load.d r[6:7], 0(r19)
0024dc  6b570a00  load.d r[15:16], 0(r20)
0024e0  ebd30a00  load.d r[8:9], 0(r21)
0024e4  db6c0000  j 868
0024e8  1f035fcd  addli r6, r30, -6488
0024ec  1f045fce  addli r8, r30, -6360
0024f0  9f03efce  addli r7, r30, -6288
0024f4  eb500300  load.d r[2:3], 0(r6)
0024f8  6b580400  load.d r[17:18], 0(r8)
0024fc  93b2b005  setlt.sl r5, r[2:3], r[28:29]
002500  ebd00300  load.d r[2:3], 0(r7)
002504  37d00200  beq r5, zero, 20
002508  5b570000  j 696
00250c  a7900000  addli.d r[2:3], r[2:3], 1
002510  93b23004  setlt.sl r5, r[2:3], r[4:5]
002514  b7ba0200  beq r5, zero, 684
002518  9f03efcf  addli r7, r30, -6160
00251c  ebd20300  load.d r[6:7], 0(r7)
002520  93325904  setlt.sl r5, r[19:20], r[6:7]
002524  bbaf02fe  bneq r5, zero, -24
002528  8b921610  add.s r5, r13, r1
00252c  a7830d00  addli.d r[8:9], r[28:29], 0
002530  6b930200  load.bu r6, 0(r5)
002534  8bb43320  mul.sl r[10:11], r[8:9], r[4:5]
002538  a7930300  addli.d r[8:9], r[8:9], 1
00253c  13b72305  setlt.sl r14, r[8:9], r[19:20]
002540  8b949210  add.s r9, r5, r9
002544  73806400  store.b r6, 0(r9)
002548  bb3f07fe  bneq r14, zero, -20
00254c  5bf8ffff  j -64
002550  63014fcd  loadli.w r2,  -6496(r30)
002554  9f000000  addli r1, zero, 0
002558  db030000  j 28
00255c  9f808000  addli r1, r1, 64
002560  1f018100  addli r2, r2, 64
002564  00a00000  mfence { lm }
002568  b382502a  .word 0x2a5082b3
00256c  93b23204  setlt.sl r5, r[6:7], r[4:5]
002570  37c90200  beq r5, zero, 592
002574  9f03efcf  addli r7, r30, -6160
002578  ebd20300  load.d r[6:7], 0(r7)
00257c  00a00000  mfence { lm }
002580  93325904  setlt.sl r5, r[19:20], r[6:7]
002584  3bef02fe  bneq r5, zero, -40
002588  8b921610  add.s r5, r13, r1
00258c  1f030100  addli r6, r2, 0
002590  42800202  vload.mz vr0{mr1}, 0(r5)
002594  9f220000  addli r5, zero, 2
002598  b383722a  .word 0x2a7283b3
00259c  46000302  vstore.mz vr0{mr1}, 0(r6)
0025a0  9f920200  addli r5, r5, 1
0025a4  0b133310  add.s r6, r6, r3
0025a8  93b32305  setlt.sl r7, r[8:9], r[19:20]
0025ac  bbbf03fe  bneq r7, zero, -20
0025b0  dbf5ffff  j -84
0025b4  9f023fce  addli r5, r30, -6376
0025b8  ebd00200  load.d r[2:3], 0(r5)
0025bc  93b01104  setlt.sl r1, r[4:5], r[2:3]
0025c0  37d10000  beq r1, zero, 84
0025c4  9f020fd0  addli r5, r30, -6144
0025c8  1b912600  ori r2, r13, 2
0025cc  ebb00200  load.hu r1, 0(r5)
0025d0  73101100  store.h r1, 0(r2)
0025d4  e3000fd0  loadli.w r1,  -6144(r30)
0025d8  67401fd0  storeli.w r1, -6140(r30)
0025dc  e7001fd0  storeli.w r1, -6136(r30)
0025e0  e7401fd0  storeli.w r1, -6132(r30)
0025e4  67011fd0  storeli.w r1, -6128(r30)
0025e8  67411fd0  storeli.w r1, -6124(r30)
0025ec  e7011fd0  storeli.w r1, -6120(r30)
0025f0  e7411fd0  storeli.w r1, -6116(r30)
0025f4  67021fd0  storeli.w r1, -6112(r30)
0025f8  67421fd0  storeli.w r1, -6108(r30)
0025fc  e7021fd0  storeli.w r1, -6104(r30)
002600  e7421fd0  storeli.w r1, -6100(r30)
002604  67031fd0  storeli.w r1, -6096(r30)
002608  67431fd0  storeli.w r1, -6092(r30)
00260c  e7031fd0  storeli.w r1, -6088(r30)
002610  5b2c0000  j 352
002614  63433fcd  loadli.w r6,  -6500(r30)
002618  9f200000  addli r1, zero, 2
00261c  e3023fcd  loadli.w r5,  -6504(r30)
002620  1f310000  addli r2, zero, 3
002624  8b806038  mod.u r1, r1, r6
002628  e3820200  loadli.w r5,  0(r5)
00262c  0b016138  mod.u r2, r2, r6
002630  67405fd0  storeli.w r5, -6140(r30)
002634  9f420000  addli r5, zero, 4
002638  8b826238  mod.u r5, r5, r6
00263c  9bb02000  slli r1, r1, 2
002640  1b312100  slli r2, r2, 2
002644  97901600  or r1, r13, r1
002648  17912600  or r2, r13, r2
00264c  e3800000  loadli.w r1,  0(r1)
002650  9bb22200  slli r5, r5, 2
002654  e7001fd0  storeli.w r1, -6136(r30)
002658  9f500000  addli r1, zero, 5
00265c  97925600  or r5, r13, r5
002660  63010100  loadli.w r2,  0(r2)
002664  8b806038  mod.u r1, r1, r6
002668  e7402fd0  storeli.w r2, -6132(r30)
00266c  1f610000  addli r2, zero, 6
002670  e3820200  loadli.w r5,  0(r5)
002674  0b016138  mod.u r2, r2, r6
002678  9bb02000  slli r1, r1, 2
00267c  67015fd0  storeli.w r5, -6128(r30)
002680  9f720000  addli r5, zero, 7
002684  97901600  or r1, r13, r1
002688  8b826238  mod.u r5, r5, r6
00268c  e3800000  loadli.w r1,  0(r1)
002690  1b312100  slli r2, r2, 2
002694  17912600  or r2, r13, r2
002698  67411fd0  storeli.w r1, -6124(r30)
00269c  e3000100  loadli.w r1,  0(r2)
0026a0  1bb12200  slli r2, r5, 2
0026a4  9f021000  addli r5, zero, 8
0026a8  8b826238  mod.u r5, r5, r6
0026ac  17912600  or r2, r13, r2
0026b0  e7011fd0  storeli.w r1, -6120(r30)
0026b4  e3000100  loadli.w r1,  0(r2)
0026b8  1f111000  addli r2, zero, 9
0026bc  0b016138  mod.u r2, r2, r6
0026c0  e7411fd0  storeli.w r1, -6116(r30)
0026c4  9bb22200  slli r5, r5, 2
0026c8  97925600  or r5, r13, r5
0026cc  e3800200  loadli.w r1,  0(r5)
0026d0  1b312100  slli r2, r2, 2
0026d4  9f221000  addli r5, zero, 10
0026d8  8b826238  mod.u r5, r5, r6
0026dc  17912600  or r2, r13, r2
0026e0  67021fd0  storeli.w r1, -6112(r30)
0026e4  e3000100  loadli.w r1,  0(r2)
0026e8  1f311000  addli r2, zero, 11
0026ec  0b016138  mod.u r2, r2, r6
0026f0  67421fd0  storeli.w r1, -6108(r30)
0026f4  9bb22200  slli r5, r5, 2
0026f8  97925600  or r5, r13, r5
0026fc  e3800200  loadli.w r1,  0(r5)
002700  1b312100  slli r2, r2, 2
002704  9f421000  addli r5, zero, 12
002708  8b826238  mod.u r5, r5, r6
00270c  17912600  or r2, r13, r2
002710  e7021fd0  storeli.w r1, -6104(r30)
002714  e3000100  loadli.w r1,  0(r2)
002718  1f511000  addli r2, zero, 13
00271c  0b016138  mod.u r2, r2, r6
002720  e7421fd0  storeli.w r1, -6100(r30)
002724  9bb22200  slli r5, r5, 2
002728  97925600  or r5, r13, r5
00272c  e3800200  loadli.w r1,  0(r5)
002730  1b312100  slli r2, r2, 2
002734  9f621000  addli r5, zero, 14
002738  8b826238  mod.u r5, r5, r6
00273c  17912600  or r2, r13, r2
002740  67031fd0  storeli.w r1, -6096(r30)
002744  e3000100  loadli.w r1,  0(r2)
002748  1f711000  addli r2, zero, 15
00274c  0b016138  mod.u r2, r2, r6
002750  67431fd0  storeli.w r1, -6092(r30)
002754  9bb22200  slli r5, r5, 2
002758  97925600  or r5, r13, r5
00275c  e3800200  loadli.w r1,  0(r5)
002760  1b312100  slli r2, r2, 2
002764  17912600  or r2, r13, r2
002768  e7031fd0  storeli.w r1, -6088(r30)
00276c  e3000100  loadli.w r1,  0(r2)
002770  9f04efcd  addli r9, r30, -6416
002774  e7431fd0  storeli.w r1, -6084(r30)
002778  ebd20400  load.d r[6:7], 0(r9)
00277c  00a00000  mfence { lm }
002780  8f923262  .word 0x6232928f
002784  a3b30202  slli.d r[8:9], r[6:7], 32
002788  a3d30302  srai.d r[8:9], r[8:9], 32
00278c  13317906  setle.sl r2, r[19:20], r[8:9]
002790  bb400100  bneq r2, zero, 48
002794  42800602  vload.mz vr0{mr1}, 0(r13)
002798  1f010fd0  addli r2, r30, -6144
00279c  9bb01200  slli r1, r5, 1
0027a0  8b935120  mul.s r7, r3, r5
0027a4  0b915150  fmac.s r2, r3, r5
0027a8  3394802a  .word 0x2a809433
0027ac  46000102  vstore.mz vr0{mr1}, 0(r2)
0027b0  8b905010  add.s r1, r1, r5
0027b4  0b117110  add.s r2, r2, r7
0027b8  13342405  setlt.sl r8, r[9:10], r[19:20]
0027bc  bb3f04fe  bneq r8, zero, -20
0027c0  9f036fcf  addli r7, r30, -6224
0027c4  1f04dfcf  addli r8, r30, -6168
0027c8  9f041fcf  addli r9, r30, -6264
0027cc  ebd00300  load.d r[2:3], 0(r7)
0027d0  eb520400  load.d r[6:7], 0(r8)
0027d4  8bb05018  sub.sl r[2:3], r[2:3], r[6:7]
0027d8  ebd20400  load.d r[6:7], 0(r9)
0027dc  00a00000  mfence { lm }
0027e0  8bb01240  min.sl r[2:3], r[6:7], r[2:3]
0027e4  9f120000  addli r5, zero, 1
0027e8  b382522a  .word 0x2a5282b3
0027ec  93b25004  setlt.sl r5, r[2:3], r[6:7]
0027f0  1f036fce  addli r6, r30, -6352
0027f4  6b5c0300  load.d r[25:26], 0(r6)
0027f8  bbc00200  bneq r5, zero, 48
0027fc  b3025028  .word 0x285002b3
002800  8bb35018  sub.sl r[8:9], r[2:3], r[6:7]
002804  8ba22211  add.ul r[6:7], r[6:7], r[19:20]
002808  ab0400f0  lui r9, 983040
00280c  8bb32341  min.sl r[8:9], r[8:9], r[19:20]
002810  13b51204  setlt.sl r10, r[6:7], r[2:3]
002814  0bb73320  mul.sl r[15:16], r[8:9], r[4:5]
002818  97149700  or r9, r14, r9
00281c  ff34dc00  s_lm2gm r9, r13, 0(r[25:26])
002820  0bbc3350  fmac.sl r[25:26], r[8:9], r[4:5]
002824  3b7f05fe  bneq r10, zero, -36
002828  9f00cfce  addli r1, r30, -6304
00282c  1f017fce  addli r2, r30, -6344
002830  00a00000  mfence { lm }
002834  1f0d0a00  addli r26, r20, 0
002838  ebd20000  load.d r[6:7], 0(r1)
00283c  6b570100  load.d r[15:16], 0(r2)
002840  9f048fce  addli r9, r30, -6336
002844  ebd30400  load.d r[8:9], 0(r9)
002848  9f04afce  addli r9, r30, -6320
00284c  ebd00400  load.d r[2:3], 0(r9)
002850  0b271710  add.ul r[15:16], r[15:16], r[2:3]
002854  93b0e306  setle.sl r1, r[8:9], r[15:16]
002858  bbb000f4  bneq r1, zero, -6100
00285c  93305704  setlt.sl r1, r[15:16], r[6:7]
002860  bbf500f8  bneq r1, zero, -3716
002864  5b04fdff  j -6112
002868  9f220000  addli r5, zero, 2
00286c  1f060000  addli r12, zero, 0
002870  3384822a  .word 0x2a828433
002874  93328504  setlt.sl r5, r[11:12], r[9:10]
002878  1f040fd0  addli r8, r30, -6144
00287c  8b143410  add.s r9, r8, r3
002880  db030000  j 28
002884  1f068600  addli r12, r12, 64
002888  9f848400  addli r9, r9, 64
00288c  00a00000  mfence { lm }
002890  33080629  .word 0x29060833
002894  93363804  setlt.sl r13, r[17:18], r[4:5]
002898  37e90600  beq r13, zero, 600
00289c  00a00000  mfence { lm }
0028a0  bb9f02fe  bneq r5, zero, -28
0028a4  8b16c410  add.s r13, r8, r12
0028a8  1f280000  addli r16, zero, 2
0028ac  9f880400  addli r17, r9, 0
0028b0  42800602  vload.mz vr0{mr1}, 0(r13)
0028b4  33092829  .word 0x29280933
0028b8  46800802  vstore.mz vr0{mr1}, 0(r17)
0028bc  1f180800  addli r16, r16, 1
0028c0  8b983810  add.s r17, r17, r3
0028c4  9336a904  setlt.sl r13, r[19:20], r[11:12]
0028c8  bbbf06fe  bneq r13, zero, -20
0028cc  5bf7ffff  j -72
0028d0  9f440000  addli r9, zero, 4
0028d4  3386c42a  .word 0x2ac48633
0028d8  93b2c104  setlt.sl r5, r[4:5], r[13:14]
0028dc  37e10200  beq r5, zero, 88
0028e0  9f000fd0  addli r1, r30, -6144
0028e4  9f020fd0  addli r5, r30, -6144
0028e8  6bb40000  load.hu r8, 0(r1)
0028ec  9b922200  ori r5, r5, 2
0028f0  73908200  store.h r8, 0(r5)
0028f4  e3020fd0  loadli.w r5,  -6144(r30)
0028f8  67405fd0  storeli.w r5, -6140(r30)
0028fc  e7005fd0  storeli.w r5, -6136(r30)
002900  e7405fd0  storeli.w r5, -6132(r30)
002904  67015fd0  storeli.w r5, -6128(r30)
002908  67415fd0  storeli.w r5, -6124(r30)
00290c  e7015fd0  storeli.w r5, -6120(r30)
002910  e7415fd0  storeli.w r5, -6116(r30)
002914  67025fd0  storeli.w r5, -6112(r30)
002918  67425fd0  storeli.w r5, -6108(r30)
00291c  e7025fd0  storeli.w r5, -6104(r30)
002920  e7425fd0  storeli.w r5, -6100(r30)
002924  67035fd0  storeli.w r5, -6096(r30)
002928  67435fd0  storeli.w r5, -6092(r30)
00292c  e7035fd0  storeli.w r5, -6088(r30)
002930  5b2e0000  j 368
002934  9bc22100  srli r5, r3, 2
002938  1f140000  addli r8, zero, 1
00293c  9f260000  addli r13, zero, 2
002940  9b82f20f  andi r5, r5, 255
002944  13868202  setneq r12, r5, r8
002948  1f040fd0  addli r8, r30, -6144
00294c  8b865638  mod.u r13, r13, r5
002950  8b845438  mod.u r9, r9, r5
002954  9bb62600  slli r13, r13, 2
002958  9bb42400  slli r9, r9, 2
00295c  1b362600  slli r12, r12, 2
002960  9716d400  or r13, r8, r13
002964  97149400  or r9, r8, r9
002968  1716c400  or r12, r8, r12
00296c  63060600  loadli.w r12,  0(r12)
002970  6740cfd0  storeli.w r12, -6140(r30)
002974  1f360000  addli r12, zero, 3
002978  e3860600  loadli.w r13,  0(r13)
00297c  0b065638  mod.u r12, r12, r5
002980  e700dfd0  storeli.w r13, -6136(r30)
002984  9f560000  addli r13, zero, 5
002988  8b865638  mod.u r13, r13, r5
00298c  1b362600  slli r12, r12, 2
002990  1716c400  or r12, r8, r12
002994  63060600  loadli.w r12,  0(r12)
002998  9bb62600  slli r13, r13, 2
00299c  9716d400  or r13, r8, r13
0029a0  e740cfd0  storeli.w r12, -6132(r30)
0029a4  1f660000  addli r12, zero, 6
0029a8  e3840400  loadli.w r9,  0(r9)
0029ac  0b065638  mod.u r12, r12, r5
0029b0  67019fd0  storeli.w r9, -6128(r30)
0029b4  e3840600  loadli.w r9,  0(r13)
0029b8  9f760000  addli r13, zero, 7
0029bc  8b865638  mod.u r13, r13, r5
0029c0  1b362600  slli r12, r12, 2
0029c4  67419fd0  storeli.w r9, -6124(r30)
0029c8  1716c400  or r12, r8, r12
0029cc  e3040600  loadli.w r9,  0(r12)
0029d0  1f061000  addli r12, zero, 8
0029d4  9bb62600  slli r13, r13, 2
0029d8  0b065638  mod.u r12, r12, r5
0029dc  9716d400  or r13, r8, r13
0029e0  e7019fd0  storeli.w r9, -6120(r30)
0029e4  e3840600  loadli.w r9,  0(r13)
0029e8  9f161000  addli r13, zero, 9
0029ec  8b865638  mod.u r13, r13, r5
0029f0  1b362600  slli r12, r12, 2
0029f4  e7419fd0  storeli.w r9, -6116(r30)
0029f8  1716c400  or r12, r8, r12
0029fc  e3040600  loadli.w r9,  0(r12)
002a00  1f261000  addli r12, zero, 10
002a04  9bb62600  slli r13, r13, 2
002a08  0b065638  mod.u r12, r12, r5
002a0c  67029fd0  storeli.w r9, -6112(r30)
002a10  9714d400  or r9, r8, r13
002a14  9f361000  addli r13, zero, 11
002a18  8b865638  mod.u r13, r13, r5
002a1c  e3840400  loadli.w r9,  0(r9)
002a20  1b362600  slli r12, r12, 2
002a24  67429fd0  storeli.w r9, -6108(r30)
002a28  1716c400  or r12, r8, r12
002a2c  e3040600  loadli.w r9,  0(r12)
002a30  1bb62600  slli r12, r13, 2
002a34  9f461000  addli r13, zero, 12
002a38  8b865638  mod.u r13, r13, r5
002a3c  1716c400  or r12, r8, r12
002a40  e7029fd0  storeli.w r9, -6104(r30)
002a44  e3040600  loadli.w r9,  0(r12)
002a48  1f561000  addli r12, zero, 13
002a4c  0b065638  mod.u r12, r12, r5
002a50  e7429fd0  storeli.w r9, -6100(r30)
002a54  9bb42600  slli r9, r13, 2
002a58  9f661000  addli r13, zero, 14
002a5c  97149400  or r9, r8, r9
002a60  e3840400  loadli.w r9,  0(r9)
002a64  1b362600  slli r12, r12, 2
002a68  1716c400  or r12, r8, r12
002a6c  67039fd0  storeli.w r9, -6096(r30)
002a70  8b845638  mod.u r9, r13, r5
002a74  9f761000  addli r13, zero, 15
002a78  63060600  loadli.w r12,  0(r12)
002a7c  8b825638  mod.u r5, r13, r5
002a80  6743cfd0  storeli.w r12, -6092(r30)
002a84  9bb42400  slli r9, r9, 2
002a88  97149400  or r9, r8, r9
002a8c  9bb22200  slli r5, r5, 2
002a90  e3840400  loadli.w r9,  0(r9)
002a94  97125400  or r5, r8, r5
002a98  e7039fd0  storeli.w r9, -6088(r30)
002a9c  e3820200  loadli.w r5,  0(r5)
002aa0  1f048000  addli r8, zero, 64
002aa4  e7435fd0  storeli.w r5, -6084(r30)
002aa8  00a00000  mfence { lm }
002aac  33048428  .word 0x28840433
002ab0  0f143460  div.sl r[9:10], r[9:10], r[4:5]
002ab4  23360402  slli.d r[13:14], r[9:10], 32
002ab8  23560602  srai.d r[13:14], r[13:14], 32
002abc  1336c506  setle.sl r12, r[11:12], r[13:14]
002ac0  bb400600  bneq r12, zero, 48
002ac4  9f020fd0  addli r5, r30, -6144
002ac8  1b361400  slli r12, r8, 1
002acc  0b183420  mul.s r16, r8, r3
002ad0  42800202  vload.mz vr0{mr1}, 0(r5)
002ad4  8b123450  fmac.s r5, r8, r3
002ad8  b3181629  .word 0x291618b3
002adc  46800202  vstore.mz vr0{mr1}, 0(r5)
002ae0  0b168610  add.s r12, r12, r8
002ae4  8b920211  add.s r5, r5, r16
002ae8  93b6a804  setlt.sl r13, r[18:19], r[11:12]
002aec  bbbf06fe  bneq r13, zero, -20
002af0  1f096fcf  addli r18, r30, -6224
002af4  a3300502  slli.d r[2:3], r[11:12], 32
002af8  8b126c20  mul.s r5, r24, r6
002afc  0b1eec50  fmac.s r28, r24, r14
002b00  6b580900  load.d r[17:18], 0(r18)
002b04  a3d00002  srai.d r[2:3], r[2:3], 32
002b08  b392522a  .word 0x2a5292b3
002b0c  00a00000  mfence { lm }
002b10  0b241810  add.ul r[9:10], r[17:18], r[2:3]
002b14  2774f4ff  addli.d r[9:10], r[9:10], 32767
002b18  0f141460  div.sl r[9:10], r[9:10], r[2:3]
002b1c  0f165470  mod.sl r[13:14], r[9:10], r[6:7]
002b20  8f125462  .word 0x6254128f
002b24  b3137e28  .word 0x287e13b3
002b28  93b4c304  setlt.sl r9, r[8:9], r[13:14]
002b2c  0bb6c340  min.sl r[13:14], r[8:9], r[13:14]
002b30  0bb67250  fmac.sl r[13:14], r[6:7], r[8:9]
002b34  8b331620  mul.sl r[8:9], r[13:14], r[2:3]
002b38  3387e42a  .word 0x2ae48733
002b3c  8ba2e210  add.ul r[6:7], r[6:7], r[15:16]
002b40  8ba2c210  add.ul r[6:7], r[6:7], r[13:14]
002b44  8bb01220  mul.sl r[2:3], r[6:7], r[2:3]
002b48  8bb20341  min.sl r[6:7], r[8:9], r[17:18]
002b4c  8bb30041  min.sl r[8:9], r[2:3], r[17:18]
002b50  1f014fce  addli r2, r30, -6368
002b54  93b05306  setle.sl r1, r[8:9], r[6:7]
002b58  6b580100  load.d r[17:18], 0(r2)
002b5c  bb9400f2  bneq r1, zero, -6876
002b60  9f040fcf  addli r9, r30, -6272
002b64  ebd00400  load.d r[2:3], 0(r9)
002b68  0b381b50  fmac.sl r[17:18], r[23:24], r[2:3]
002b6c  9f000fd0  addli r1, r30, -6144
002b70  0bb65318  sub.sl r[13:14], r[8:9], r[6:7]
002b74  27070800  addli.d r[15:16], r[17:18], 0
002b78  2b0100f0  lui r2, 983040
002b7c  0b36c540  min.sl r[13:14], r[11:12], r[13:14]
002b80  0bb73250  fmac.sl r[15:16], r[6:7], r[4:5]
002b84  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
002b88  0b363620  mul.sl r[13:14], r[13:14], r[4:5]
002b8c  93b47204  setlt.sl r9, r[6:7], r[8:9]
002b90  17112600  or r2, r12, r2
002b94  7f311700  s_lm2gm r2, r1, 0(r[15:16])
002b98  3bef04fe  bneq r9, zero, -40
002b9c  db9cfcff  j -6940
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
002dc4  00100000  exit
002dc8  00100000  exit
002dcc  00100000  exit
002dd0  00100000  exit
002dd4  00100000  exit
002dd8  00100000  exit
002ddc  00100000  exit
