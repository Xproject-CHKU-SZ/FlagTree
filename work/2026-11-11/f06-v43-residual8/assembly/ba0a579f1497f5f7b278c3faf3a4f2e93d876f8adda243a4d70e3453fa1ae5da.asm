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
000078  9f496000  addli r19, zero, 52
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
0000dc  9f8e0eff  addli sp, sp, -128
0000e0  1f8f8e00  addli r30, sp, 64
0000e4  805a0002  load_param_i r21, 0
0000e8  634a5f00  loadli.w r20,  44(r30)
0000ec  e3005f00  loadli.w r1,  40(r30)
0000f0  630d6f00  loadli.w r26,  48(r30)
0000f4  8b101a20  mul.s r1, r20, r1
0000f8  0b9ba021  mul.s r22, r1, r26
0000fc  cb615b01  ble.s r22, r21, 120
000100  ab10833a  lui r1, 239665
000104  80db0002  load_param_i r23, 1
000108  1f0c6001  addli r24, zero, 176
00010c  9f0c0010  addli r25, zero, 2048
000110  9f1d0000  addli r27, zero, 1
000114  1f0e0006  addli r28, zero, 768
000118  9b99f026  ori r19, r1, 623
00011c  8b90aa31  div.s r1, r21, r26
000120  1f420000  addli r4, zero, 4
000124  6b530f01  load.d r[7:8], 16(r30)
000128  6b548f01  load.d r[9:10], 24(r30)
00012c  e7c1be01  storeli.w r27, 28(sp)
000130  67c1ce01  storeli.w r28, 20(sp)
000134  67819e01  storeli.w r25, 16(sp)
000138  e7813e01  storeli.w r19, 24(sp)
00013c  67824e00  storeli.w r4, 32(sp)
000140  6b520f02  load.d r[5:6], 32(r30)
000144  73b04e00  store.d r[5:6], 0(sp)
000148  6b528f00  load.d r[5:6], 8(r30)
00014c  8b904031  div.s r1, r1, r20
000150  8b908021  mul.s r1, r1, r24
000154  0b911c18  sub.s r2, r25, r1
000158  e7801e00  storeli.w r1, 8(sp)
00015c  0b118141  min.s r2, r2, r24
000160  e7c02e00  storeli.w r2, 12(sp)
000164  6b510f00  load.d r[3:4], 0(r30)
000168  57300000  jal 384
00016c  8b9a7a11  add.s r21, r21, r23
000170  bfbe6aff  blt.s r21, r22, -84
000174  9f8e8e00  addli sp, sp, 64
000178  00a00300  mfence { lm, sm, gm }
00017c  00100000  exit
000180  9f8e8ed3  addli sp, sp, -5696
000184  67c1ee2d  storeli.w r30, 5652(sp)
000188  1f8f8e2c  addli r30, sp, 5696
00018c  1f250000  addli r10, zero, 2
000190  e7c33e2d  storeli.w r19, 5692(sp)
000194  e7834e2d  storeli.w r20, 5688(sp)
000198  67c35e2d  storeli.w r21, 5684(sp)
00019c  67836e2d  storeli.w r22, 5680(sp)
0001a0  e7c27e2d  storeli.w r23, 5676(sp)
0001a4  e7828e2d  storeli.w r24, 5672(sp)
0001a8  67c29e2d  storeli.w r25, 5668(sp)
0001ac  6782ae2d  storeli.w r26, 5664(sp)
0001b0  e7c1be2d  storeli.w r27, 5660(sp)
0001b4  e781ce2d  storeli.w r28, 5656(sp)
0001b8  6781fe2d  storeli.w r31, 5648(sp)
0001bc  e3004f00  loadli.w r1,  32(r30)
0001c0  63472f00  loadli.w r14,  20(r30)
0001c4  e3072f00  loadli.w r15,  16(r30)
0001c8  63481f00  loadli.w r16,  12(r30)
0001cc  9f057fd6  addli r11, r30, -5320
0001d0  73b02500  store.d r[3:4], 0(r11)
0001d4  3f511500  blt.s r10, r1, 84
0001d8  1f110000  addli r2, zero, 1
0001dc  b7a92004  beq r1, r2, 2664
0001e0  1f210000  addli r2, zero, 2
0001e4  3be82004  bneq r1, r2, 2584
0001e8  e3403f00  loadli.w r1,  28(r30)
0001ec  37f60012  beq r1, zero, 9628
0001f0  80300002  core_id r1
0001f4  1f210000  addli r2, zero, 2
0001f8  37df2024  beq r1, r2, 19412
0001fc  1f110000  addli r2, zero, 1
000200  37be2024  beq r1, r2, 19340
000204  bb9f0024  bneq r1, zero, 19428
000208  63012f00  loadli.w r2,  16(r30)
00020c  ab0100f0  lui r3, 983040
000210  1b311100  slli r2, r2, 1
000214  17113100  or r2, r2, r3
000218  ab910100  lui r3, 25
00021c  9f810100  addli r3, r3, 0
000220  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000224  db780900  j 19396
000228  1f310000  addli r2, zero, 3
00022c  37e92004  beq r1, r2, 2648
000230  1f410000  addli r2, zero, 4
000234  3ba72004  bneq r1, r2, 2504
000238  e3002f00  loadli.w r1,  16(r30)
00023c  1f010010  addli r2, zero, 2048
000240  bbeb2008  bneq r1, r2, 4856
000244  e3403f00  loadli.w r1,  28(r30)
000248  b7880018  beq r1, zero, 12832
00024c  80300002  core_id r1
000250  ab070000  lui r15, 0
000254  1f150000  addli r10, zero, 1
000258  9f058fd7  addli r11, r30, -5184
00025c  1f068000  addli r12, zero, 64
000260  9f060010  addli r13, zero, 2048
000264  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000268  1bb15000  slli r2, r1, 5
00026c  80500102  load_param_i r1, 2
000270  9f870700  addli r15, r15, 0
000274  9bb15000  slli r3, r1, 5
000278  1f070100  addli r14, r2, 0
00027c  33080728  zext_int2long r[17:18], r14
000280  2b0900f0  lui r18, 983040
000284  1738a802  sll.d r[17:18], r[17:18], r10
000288  17192601  or r18, r12, r18
00028c  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000290  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000294  1b382700  slli r16, r14, 2
000298  0b97e110  add.s r14, r3, r14
00029c  00a00200  mfence { lm, gm }
0002a0  c2800502  vload.mz vr1{mr1}, 0(r11)
0002a4  9308d704  setlt.u r17, r14, r13
0002a8  0b18f810  add.s r16, r16, r15
0002ac  1f098800  addli r18, r16, 64
0002b0  66c11180  vmerge_l.hf vr2, vr3, vr1
0002b4  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0002b8  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0002bc  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
0002c0  bbfe08fe  bneq r17, zero, -68
0002c4  00320002  core_id r4
0002c8  9bb27000  slli r5, r1, 7
0002cc  1f160000  addli r12, zero, 1
0002d0  9f068fd7  addli r13, r30, -5184
0002d4  1f078000  addli r14, zero, 64
0002d8  1f080010  addli r16, zero, 2048
0002dc  9f080100  addli r17, r2, 0
0002e0  00a00000  mfence { lm }
0002e4  9b357200  slli r11, r4, 7
0002e8  2b220000  lui r4, 2
0002ec  1f020200  addli r4, r4, 0
0002f0  0b954510  add.s r10, r11, r4
0002f4  33890828  zext_int2long r[19:20], r17
0002f8  2b0a00f0  lui r20, 983040
0002fc  8b983810  add.s r17, r17, r3
000300  1739c902  sll.d r[19:20], r[19:20], r12
000304  171a4701  or r20, r14, r20
000308  0b292311  add.ul r[19:20], r[7:8], r[19:20]
00030c  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000310  13890805  setlt.u r18, r17, r16
000314  9f098500  addli r19, r10, 64
000318  00a00200  mfence { lm, gm }
00031c  c2800602  vload.mz vr1{mr1}, 0(r13)
000320  66c11180  vmerge_l.hf vr2, vr3, vr1
000324  e6c011a0  vmerge_h.hf vr1, vr3, vr1
000328  4e102502  vstores_mask16.mz vr2{mr1}, 0(r10)
00032c  0b155510  add.s r10, r10, r5
000330  4e901902  vstores_mask16.mz vr1{mr1}, 0(r19)
000334  3b0f09fe  bneq r18, zero, -64
000338  2b450000  lui r10, 4
00033c  9f130000  addli r7, zero, 1
000340  1f068000  addli r12, zero, 64
000344  9f060010  addli r13, zero, 2048
000348  00a00000  mfence { lm }
00034c  1f050500  addli r10, r10, 0
000350  0b93a510  add.s r6, r11, r10
000354  9f058fd7  addli r11, r30, -5184
000358  33080128  zext_int2long r[17:18], r2
00035c  2b0700f0  lui r14, 983040
000360  0b113110  add.s r2, r2, r3
000364  17387802  sll.d r[17:18], r[17:18], r7
000368  1717e600  or r14, r12, r14
00036c  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000370  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000374  1307d104  setlt.u r14, r2, r13
000378  1f088300  addli r16, r6, 64
00037c  00a00200  mfence { lm, gm }
000380  c2800502  vload.mz vr1{mr1}, 0(r11)
000384  66c11180  vmerge_l.hf vr2, vr3, vr1
000388  e6c011a0  vmerge_h.hf vr1, vr3, vr1
00038c  4e102302  vstores_mask16.mz vr2{mr1}, 0(r6)
000390  0b135310  add.s r6, r6, r5
000394  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000398  3b0f07fe  bneq r14, zero, -64
00039c  2bf10000  lui r2, 15
0003a0  80310002  core_id r3
0003a4  00a00300  mfence { lm, sm, gm }
0003a8  9f020006  addli r5, zero, 768
0003ac  1b11f1ff  ori r2, r2, 4095
0003b0  9b811100  andi r3, r3, 1
0003b4  80210104  csr_set csr3, r2
0003b8  1f010006  addli r2, zero, 768
0003bc  00d00100  sync_group
0003c0  670c3fd4  storeli.w r3, -5440(r30)
0003c4  37a00100  beq r3, zero, 8
0003c8  9f02000a  addli r5, zero, 1280
0003cc  e3411f00  loadli.w r3,  12(r30)
0003d0  e3441f00  loadli.w r9,  12(r30)
0003d4  1f130000  addli r6, zero, 1
0003d8  bf8d612e  blt.s r3, r6, 24416
0003dc  e3018fd5  loadli.w r3,  -5440(r30)
0003e0  1f0a8fd7  addli r20, r30, -5184
0003e4  1bb81200  slli r16, r5, 1
0003e8  9f030000  addli r7, zero, 0
0003ec  9f787000  addli r17, zero, 63
0003f0  9f0d0005  addli r27, zero, 640
0003f4  ab06803f  lui r13, 260096
0003f8  9f0c2000  addli r25, zero, 16
0003fc  1f3b0000  addli r22, zero, 3
000400  1f5e1000  addli r28, zero, 13
000404  2bec0700  lui r24, 126
000408  1f2d1000  addli r26, zero, 10
00040c  1f070003  addli r14, zero, 384
000410  0b912120  mul.s r2, r3, r2
000414  9bc11000  srli r3, r1, 1
000418  80300002  core_id r1
00041c  9bc51000  srli r11, r1, 1
000420  9b302100  slli r1, r2, 2
000424  67042fd4  storeli.w r2, -5568(r30)
000428  1f814200  addli r2, r5, 32
00042c  0b994010  add.s r18, r1, r4
000430  8b99a010  add.s r19, r1, r10
000434  9bb02200  slli r1, r5, 2
000438  674f2fd2  storeli.w r2, -5644(r30)
00043c  0b114811  add.s r2, r16, r20
000440  2be27f00  lui r4, 2046
000444  8b904011  add.s r1, r1, r20
000448  9f8080ff  addli r1, r1, -64
00044c  670f1fd2  storeli.w r1, -5648(r30)
000450  9f0081ff  addli r1, r2, -64
000454  2bf100fc  lui r2, 1032207
000458  e74e1fd2  storeli.w r1, -5652(r30)
00045c  abf0ffff  lui r1, 1048575
000460  1b1401c0  ori r8, r2, 3072
000464  00a00000  mfence { lm }
000468  67003fd4  storeli.w r3, -5632(r30)
00046c  e74fbfd2  storeli.w r11, -5636(r30)
000470  e70f0fd3  storeli.w r16, -5640(r30)
000474  9b9000f8  ori r1, r1, 3968
000478  e70e1fd2  storeli.w r1, -5656(r30)
00047c  abf00000  lui r1, 15
000480  9b90f0ff  ori r1, r1, 4095
000484  67081fd6  storeli.w r1, -5248(r30)
000488  ab700000  lui r1, 7
00048c  9b9af0ff  ori r21, r1, 4095
000490  ab00ff03  lui r1, 16368
000494  9b9bf03f  ori r23, r1, 1023
000498  9f000fd5  addli r1, r30, -5504
00049c  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0004a0  5b040000  j 32
0004a4  00a00300  mfence { lm, sm, gm }
0004a8  e3000fd7  loadli.w r1,  -5248(r30)
0004ac  80a10004  csr_set csr3, r1
0004b0  00d00100  sync_group
0004b4  8b933310  add.s r7, r7, r3
0004b8  3fa09300  blt.s r7, r9, 8
0004bc  dbe50000  j 1836
0004c0  8b90b310  add.s r1, r7, r11
0004c4  cb8f14fe  ble.s r9, r1, -32
0004c8  63011f00  loadli.w r2,  8(r30)
0004cc  8b902010  add.s r1, r1, r2
0004d0  0b813330  div.u r2, r7, r3
0004d4  e3018fd4  loadli.w r3,  -5568(r30)
0004d8  9bb0b000  slli r1, r1, 11
0004dc  97903000  or r1, r1, r3
0004e0  9f017fd6  addli r3, r30, -5320
0004e4  b3940028  sext_int2long r[10:11], r1
0004e8  ab0000f0  lui r1, 983040
0004ec  1b316100  slli r2, r2, 6
0004f0  97b56402  sll.d r[12:13], r[10:11], r6
0004f4  ebd40100  load.d r[10:11], 0(r3)
0004f8  9f018fd6  addli r3, r30, -5312
0004fc  97101800  or r1, r16, r1
000500  1b010104  andi r2, r2, 64
000504  73b0b100  store.d r[12:13], 0(r3)
000508  8ba4b410  add.ul r[10:11], r[10:11], r[12:13]
00050c  ffa04401  l_gm2lm r1, r20, 0(r[10:11])
000510  80300002  core_id r1
000514  00a00200  mfence { lm, gm }
000518  17161100  or r12, r2, r1
00051c  e340dfd3  loadli.w r1,  -5652(r30)
000520  6301efd3  loadli.w r2,  -5648(r30)
000524  e341efd3  loadli.w r3,  -5644(r30)
000528  c2800002  vload.mz vr1{mr1}, 0(r1)
00052c  9f81c1ff  addli r3, r3, -32
000530  9f0581ff  addli r11, r2, -64
000534  9f8080ff  addli r1, r1, -64
000538  93843804  setlt.u r9, r17, r3
00053c  66c111a0  vmerge_h.hf vr2, vr3, vr1
000540  e6c01180  vmerge_l.hf vr1, vr3, vr1
000544  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000548  1f0101ff  addli r2, r2, -128
00054c  46901502  vstore_mask16.mz vr1{mr1}, 0(r11)
000550  3bef04fe  bneq r9, zero, -40
000554  00a00000  mfence { lm }
000558  e3008fd5  loadli.w r1,  -5440(r30)
00055c  3bb60000  bneq r1, zero, 396
000560  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000564  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000568  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00056c  6301dfd3  loadli.w r2,  -5656(r30)
000570  9f000000  addli r1, zero, 0
000574  8b94f010  add.s r9, r1, r15
000578  8b111a10  add.s r3, r20, r1
00057c  1f010101  addli r2, r2, 128
000580  9f800004  addli r1, r1, 512
000584  1f850401  addli r10, r9, 128
000588  4a900402  vloads_mask16.mz vr0{mr1}, 0(r9)
00058c  9f858400  addli r11, r9, 64
000590  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
000594  1f888101  addli r16, r3, 192
000598  ca120502  vloads_mask16.mz vr5{mr1}, 0(r10)
00059c  1f858401  addli r10, r9, 192
0005a0  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
0005a4  9f858100  addli r11, r3, 64
0005a8  c2150802  vload_mask16.mz vr11{mr1}, 0(r16)
0005ac  ca130502  vloads_mask16.mz vr7{mr1}, 0(r10)
0005b0  1f850101  addli r10, r3, 128
0005b4  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
0005b8  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0005bc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0005c0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0005c4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0005c8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0005cc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0005d0  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
0005d4  46108502  vstore_mask16.mz vr8{mr1}, 0(r10)
0005d8  1f850402  addli r10, r9, 256
0005dc  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0005e0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
0005e4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0005e8  46905502  vstore_mask16.mz vr5{mr1}, 0(r11)
0005ec  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
0005f0  1f858402  addli r10, r9, 320
0005f4  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0005f8  1f880102  addli r16, r3, 256
0005fc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000600  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000604  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
000608  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
00060c  1f850403  addli r10, r9, 384
000610  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000614  9f848403  addli r9, r9, 448
000618  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00061c  4a140502  vloads_mask16.mz vr8{mr1}, 0(r10)
000620  1f858102  addli r10, r3, 320
000624  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
000628  9f840103  addli r9, r3, 384
00062c  9f818103  addli r3, r3, 448
000630  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
000634  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000638  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
00063c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000640  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
000644  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000648  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00064c  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
000650  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
000654  46106502  vstore_mask16.mz vr6{mr1}, 0(r10)
000658  1305b105  setlt.u r10, r2, r27
00065c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000660  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000664  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000668  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00066c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000670  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
000674  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000678  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00067c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000680  bb5b05fe  bneq r10, zero, -268
000684  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000688  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00068c  9f000002  addli r1, zero, 256
000690  6af100c0  vsrl.p vr2, r1, vr0
000694  eaf110c0  vsrl.p vr3, r1, vr1
000698  9f000001  addli r1, zero, 128
00069c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006a0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006a4  6af100c0  vsrl.p vr2, r1, vr0
0006a8  eaf110c0  vsrl.p vr3, r1, vr1
0006ac  9f008000  addli r1, zero, 64
0006b0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006b4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006b8  6af100c0  vsrl.p vr2, r1, vr0
0006bc  eaf110c0  vsrl.p vr3, r1, vr1
0006c0  9f004000  addli r1, zero, 32
0006c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006cc  6af100c0  vsrl.p vr2, r1, vr0
0006d0  eaf110c0  vsrl.p vr3, r1, vr1
0006d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0006d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0006dc  fa110040  vextracti.f r3, 0(vr0)
0006e0  fa940040  vextracti.f r9, 0(vr1)
0006e4  5b660000  j 816
0006e8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0006ec  2bf1ffff  lui r2, 1048575
0006f0  9f000000  addli r1, zero, 0
0006f4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0006f8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0006fc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000700  1b1101f8  ori r2, r2, 3968
000704  8b941710  add.s r9, r15, r1
000708  8b111a10  add.s r3, r20, r1
00070c  1f010101  addli r2, r2, 128
000710  9f800004  addli r1, r1, 512
000714  9f880431  addli r17, r9, 6272
000718  9f850430  addli r11, r9, 6144
00071c  1f858431  addli r10, r9, 6336
000720  1f880118  addli r16, r3, 3072
000724  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
000728  ca920502  vloads_mask16.mz vr5{mr1}, 0(r11)
00072c  9f858430  addli r11, r9, 6208
000730  ca140502  vloads_mask16.mz vr9{mr1}, 0(r10)
000734  1f858118  addli r10, r3, 3136
000738  9f888119  addli r17, r3, 3264
00073c  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
000740  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
000744  9f850119  addli r11, r3, 3200
000748  42900802  vload_mask16.mz vr0{mr1}, 0(r17)
00074c  c2150502  vload_mask16.mz vr11{mr1}, 0(r10)
000750  42950502  vload_mask16.mz vr10{mr1}, 0(r11)
000754  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
000758  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
00075c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
000760  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
000764  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000768  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
00076c  46907502  vstore_mask16.mz vr7{mr1}, 0(r11)
000770  9f850432  addli r11, r9, 6400
000774  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
000778  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
00077c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
000780  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
000784  1f88011a  addli r16, r3, 3328
000788  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
00078c  46105502  vstore_mask16.mz vr5{mr1}, 0(r10)
000790  1305e104  setlt.u r10, r2, r14
000794  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
000798  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00079c  4a900502  vloads_mask16.mz vr0{mr1}, 0(r11)
0007a0  9f858432  addli r11, r9, 6464
0007a4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007a8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0007ac  4a930502  vloads_mask16.mz vr6{mr1}, 0(r11)
0007b0  9f850433  addli r11, r9, 6528
0007b4  9f848433  addli r9, r9, 6592
0007b8  4a940502  vloads_mask16.mz vr8{mr1}, 0(r11)
0007bc  9f85811a  addli r11, r3, 3392
0007c0  4a950402  vloads_mask16.mz vr10{mr1}, 0(r9)
0007c4  9f84011b  addli r9, r3, 3456
0007c8  9f81811b  addli r3, r3, 3520
0007cc  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0007d0  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0007d4  c2930402  vload_mask16.mz vr7{mr1}, 0(r9)
0007d8  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0007dc  c2940102  vload_mask16.mz vr9{mr1}, 0(r3)
0007e0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0007e4  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0007e8  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0007ec  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0007f0  46906502  vstore_mask16.mz vr6{mr1}, 0(r11)
0007f4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0007f8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0007fc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000800  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000804  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000808  46905402  vstore_mask16.mz vr5{mr1}, 0(r9)
00080c  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
000810  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
000814  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
000818  bb3b05fe  bneq r10, zero, -276
00081c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
000820  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
000824  1f010002  addli r2, zero, 256
000828  9f000000  addli r1, zero, 0
00082c  ea7111c0  vsrl.p vr3, r2, vr1
000830  6a7101c0  vsrl.p vr2, r2, vr0
000834  1f010001  addli r2, zero, 128
000838  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00083c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000840  ea7111c0  vsrl.p vr3, r2, vr1
000844  6a7101c0  vsrl.p vr2, r2, vr0
000848  1f018000  addli r2, zero, 64
00084c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000850  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000854  ea7111c0  vsrl.p vr3, r2, vr1
000858  6a7101c0  vsrl.p vr2, r2, vr0
00085c  1f014000  addli r2, zero, 32
000860  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000864  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000868  ea7111c0  vsrl.p vr3, r2, vr1
00086c  6a7101c0  vsrl.p vr2, r2, vr0
000870  2bf1ffff  lui r2, 1048575
000874  9b1501f8  ori r11, r2, 3968
000878  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00087c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000880  7a970040  vextracti.f r14, 0(vr1)
000884  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000888  fa110040  vextracti.f r3, 0(vr0)
00088c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
000890  12321002  vadd.s.mz vr4{mr1}, zero, vr1
000894  92311002  vadd.s.mz vr3{mr1}, zero, vr1
000898  0b981710  add.s r16, r15, r1
00089c  8b141a10  add.s r9, r20, r1
0008a0  9f850501  addli r11, r11, 128
0008a4  9f800004  addli r1, r1, 512
0008a8  1f050818  addli r10, r16, 3072
0008ac  9f080819  addli r17, r16, 3200
0008b0  1f818401  addli r2, r9, 192
0008b4  42940402  vload_mask16.mz vr8{mr1}, 0(r9)
0008b8  4a100502  vloads_mask16.mz vr0{mr1}, 0(r10)
0008bc  1f058818  addli r10, r16, 3136
0008c0  ca920802  vloads_mask16.mz vr5{mr1}, 0(r17)
0008c4  9f088819  addli r17, r16, 3264
0008c8  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0008cc  4a130502  vloads_mask16.mz vr6{mr1}, 0(r10)
0008d0  ca930802  vloads_mask16.mz vr7{mr1}, 0(r17)
0008d4  1f850401  addli r10, r9, 128
0008d8  9f888400  addli r17, r9, 64
0008dc  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0008e0  42950802  vload_mask16.mz vr10{mr1}, 0(r17)
0008e4  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0008e8  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0008ec  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0008f0  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0008f4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
0008f8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0008fc  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000900  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000904  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
000908  46108502  vstore_mask16.mz vr8{mr1}, 0(r10)
00090c  1f850402  addli r10, r9, 256
000910  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000914  1f01081a  addli r2, r16, 3328
000918  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
00091c  4a100102  vloads_mask16.mz vr0{mr1}, 0(r2)
000920  1f01881a  addli r2, r16, 3392
000924  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
000928  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00092c  c2130502  vload_mask16.mz vr7{mr1}, 0(r10)
000930  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000934  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
000938  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
00093c  1f01081b  addli r2, r16, 3456
000940  1f08881b  addli r16, r16, 3520
000944  4a140102  vloads_mask16.mz vr8{mr1}, 0(r2)
000948  1f818402  addli r2, r9, 320
00094c  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
000950  1f880403  addli r16, r9, 384
000954  9f848403  addli r9, r9, 448
000958  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
00095c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
000960  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
000964  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
000968  c2940402  vload_mask16.mz vr9{mr1}, 0(r9)
00096c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000970  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000974  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
000978  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00097c  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
000980  1381b505  setlt.u r2, r11, r27
000984  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
000988  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00098c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000990  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
000994  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
000998  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
00099c  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
0009a0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0009a4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0009a8  bb4b01fe  bneq r2, zero, -272
0009ac  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0009b0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0009b4  9f000002  addli r1, zero, 256
0009b8  6af100c0  vsrl.p vr2, r1, vr0
0009bc  eaf110c0  vsrl.p vr3, r1, vr1
0009c0  9f000001  addli r1, zero, 128
0009c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009cc  6af100c0  vsrl.p vr2, r1, vr0
0009d0  eaf110c0  vsrl.p vr3, r1, vr1
0009d4  9f008000  addli r1, zero, 64
0009d8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009e0  6af100c0  vsrl.p vr2, r1, vr0
0009e4  eaf110c0  vsrl.p vr3, r1, vr1
0009e8  9f004000  addli r1, zero, 32
0009ec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0009f0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0009f4  6af100c0  vsrl.p vr2, r1, vr0
0009f8  eaf110c0  vsrl.p vr3, r1, vr1
0009fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000a00  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000a04  fa100040  vextracti.f r1, 0(vr0)
000a08  7a910040  vextracti.f r2, 0(vr1)
000a0c  8be11110  add.f.rn r3, r3, r1
000a10  8b642710  add.f.rn r9, r14, r2
000a14  ab650000  lui r11, 6
000a18  2b670000  lui r14, 6
000a1c  1b352600  slli r10, r12, 2
000a20  9f000000  addli r1, zero, 0
000a24  1f010000  addli r2, zero, 0
000a28  9f850500  addli r11, r11, 0
000a2c  1f070704  addli r14, r14, 512
000a30  9f880500  addli r17, r11, 0
000a34  0b18e510  add.s r16, r10, r14
000a38  8b151511  add.s r11, r10, r17
000a3c  73609800  stores.w r9, 0(r16)
000a40  9b144500  ori r9, r10, 4
000a44  73e03500  stores.w r3, 0(r11)
000a48  0b951411  add.s r10, r9, r17
000a4c  8b94e410  add.s r9, r9, r14
000a50  00a00300  mfence { lm, sm, gm }
000a54  e3010fd7  loadli.w r3,  -5248(r30)
000a58  80a10104  csr_set csr3, r3
000a5c  9b01e607  andi r3, r12, 126
000a60  00d00100  sync_group
000a64  6f450500  loads.w r10, 0(r10)
000a68  efc40400  loads.w r9, 0(r9)
000a6c  9bb12100  slli r3, r3, 2
000a70  8b951111  add.s r11, r3, r17
000a74  8b91e110  add.s r3, r3, r14
000a78  efc50500  loads.w r11, 0(r11)
000a7c  efc10100  loads.w r3, 0(r3)
000a80  0b65b510  add.f.rn r10, r10, r11
000a84  ab05003a  lui r11, 237568
000a88  8be13410  add.f.rn r3, r9, r3
000a8c  8b64b520  mul.f.rn r9, r10, r11
000a90  8be1b120  mul.f.rn r3, r3, r11
000a94  9f050000  addli r11, zero, 0
000a98  0be59420  mul.f.rn r10, r9, r9
000a9c  8be1a118  sub.f.rn r3, r3, r10
000aa0  63053f00  loadli.w r10,  24(r30)
000aa4  8be1a110  add.f.rn r3, r3, r10
000aa8  0be50458  neg.f r10, r9
000aac  8f810108  sqrt.f.rn r3, r3
000ab0  8f813618  div.f.rn r3, r13, r3
000ab4  8b142a10  add.s r9, r20, r2
000ab8  0b182910  add.s r16, r18, r2
000abc  8b982910  add.s r17, r19, r2
000ac0  9f854500  addli r11, r11, 32
000ac4  1f010101  addli r2, r2, 128
000ac8  42900402  vload_mask16.mz vr0{mr1}, 0(r9)
000acc  ca100802  vloads_mask16.mz vr1{mr1}, 0(r16)
000ad0  4a910802  vloads_mask16.mz vr2{mr1}, 0(r17)
000ad4  9f848400  addli r9, r9, 64
000ad8  c2910402  vload_mask16.mz vr3{mr1}, 0(r9)
000adc  9f048800  addli r9, r16, 64
000ae0  1f888800  addli r16, r17, 64
000ae4  4a920402  vloads_mask16.mz vr4{mr1}, 0(r9)
000ae8  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
000aec  93845504  setlt.u r9, r11, r5
000af0  0b181a10  add.s r16, r20, r1
000af4  9f808000  addli r1, r1, 64
000af8  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
000afc  92113502  vadd.f.mz.rn vr3{mr1}, r10, vr3
000b00  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000b04  8a913102  vmul.f.mz.rn vr3{mr1}, r3, vr3
000b08  26111002  vmac.f.mz.rn vr2{mr1}, vr0, vr1
000b0c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
000b10  6aa01c22  vor.u.mz vr0{mr1}, r25, vr1
000b14  a6924102  vmac.f.mz.rn vr5{mr1}, vr3, vr4
000b18  6a221e22  vor.u.mz vr4{mr1}, r28, vr1
000b1c  ee3120c2  vsrl.s.mz vr3{mr1}, vr0, vr2
000b20  6e3050c2  vsrl.s.mz vr0{mr1}, vr0, vr5
000b24  ea313302  vand.s.mz vr3{mr1}, r6, vr3
000b28  6a300302  vand.s.mz vr0{mr1}, r6, vr0
000b2c  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
000b30  ea211b22  vor.u.mz vr3{mr1}, r22, vr1
000b34  ea201d22  vor.u.mz vr1{mr1}, r26, vr1
000b38  16b00202  vadd.s.mz vr0{mr1}, vr5, vr0
000b3c  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
000b40  12b00a02  vadd.s.mz vr0{mr1}, r21, vr0
000b44  eeb221c2  vsrl.s.mz vr5{mr1}, vr3, vr2
000b48  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
000b4c  6e3202c2  vsrl.s.mz vr4{mr1}, vr4, vr0
000b50  6eb001c2  vsrl.s.mz vr0{mr1}, vr3, vr0
000b54  6a312c02  vand.s.mz vr2{mr1}, r24, vr2
000b58  ea325202  vand.s.mz vr5{mr1}, r4, vr5
000b5c  ea314c02  vand.s.mz vr3{mr1}, r24, vr4
000b60  6a300202  vand.s.mz vr0{mr1}, r4, vr0
000b64  6ab12622  vor.s.mz vr2{mr1}, r13, vr2
000b68  6ab25622  vor.s.mz vr4{mr1}, r13, vr5
000b6c  6ab00622  vor.s.mz vr0{mr1}, r13, vr0
000b70  eab13622  vor.s.mz vr3{mr1}, r13, vr3
000b74  06110120  vfloat2fp16_l.rz vr2, vr2
000b78  06500020  vfloat2fp16_h.rz vr0, vr0
000b7c  06d10120  vfloat2fp16_h.rz vr2, vr3
000b80  06100220  vfloat2fp16_l.rz vr0, vr4
000b84  eeb020a2  vsll.s.mz vr1{mr1}, vr1, vr2
000b88  6ab00b02  vand.s.mz vr0{mr1}, r23, vr0
000b8c  ea301402  vand.s.mz vr1{mr1}, r8, vr1
000b90  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
000b94  46000802  vstore.mz vr0{mr1}, 0(r16)
000b98  3bfc04fe  bneq r9, zero, -228
000b9c  9f058fd6  addli r11, r30, -5312
000ba0  6b510f00  load.d r[3:4], 0(r30)
000ba4  6308ffd3  loadli.w r16,  -5640(r30)
000ba8  ab0000f0  lui r1, 983040
000bac  1f070003  addli r14, zero, 384
000bb0  9f787000  addli r17, zero, 63
000bb4  ebd40500  load.d r[10:11], 0(r11)
000bb8  00a00000  mfence { lm }
000bbc  97101800  or r1, r16, r1
000bc0  0b219110  add.ul r[3:4], r[3:4], r[10:11]
000bc4  ff304101  s_lm2gm r1, r20, 0(r[3:4])
000bc8  9f000fd5  addli r1, r30, -5504
000bcc  00a00200  mfence { lm, gm }
000bd0  e3441f00  loadli.w r9,  12(r30)
000bd4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000bd8  e3010fd4  loadli.w r3,  -5632(r30)
000bdc  e345ffd3  loadli.w r11,  -5636(r30)
000be0  8b933310  add.s r7, r7, r3
000be4  3ff393fc  blt.s r7, r9, -1828
000be8  abf00000  lui r1, 15
000bec  9b90f0ff  ori r1, r1, 4095
000bf0  80a10004  csr_set csr3, r1
000bf4  00d00100  sync_group
000bf8  5be80a00  j 22336
000bfc  e3403f00  loadli.w r1,  28(r30)
000c00  b7a2000a  beq r1, zero, 5288
000c04  e3002f00  loadli.w r1,  16(r30)
000c08  1f010010  addli r2, zero, 2048
000c0c  3bd22012  bneq r1, r2, 9364
000c10  00350002  core_id r10
000c14  9f200000  addli r1, zero, 2
000c18  b76e1524  beq r10, r1, 19384
000c1c  9f100000  addli r1, zero, 1
000c20  b75d1524  beq r10, r1, 19316
000c24  3b1f0524  bneq r10, zero, 19396
000c28  9f000040  addli r1, zero, 8192
000c2c  2b0100f0  lui r2, 983040
000c30  97902000  or r1, r1, r2
000c34  2b110200  lui r2, 33
000c38  1f010100  addli r2, r2, 0
000c3c  ff002200  l_gm2sm r1, r2, 0(r[5:6])
000c40  5b750900  j 19368
000c44  e3403f00  loadli.w r1,  28(r30)
000c48  b7830010  beq r1, zero, 8416
000c4c  80300002  core_id r1
000c50  1f210000  addli r2, zero, 2
000c54  b7cd2022  beq r1, r2, 18288
000c58  1f110000  addli r2, zero, 1
000c5c  37c52020  beq r1, r2, 16720
000c60  3b8e0022  bneq r1, zero, 18304
000c64  63012f00  loadli.w r2,  16(r30)
000c68  ab0100f0  lui r3, 983040
000c6c  1b311100  slli r2, r2, 1
000c70  17113100  or r2, r2, r3
000c74  abd10100  lui r3, 29
000c78  9f810100  addli r3, r3, 0
000c7c  7f013200  l_gm2sm r2, r3, 0(r[5:6])
000c80  5bec0800  j 18272
000c84  e3002f00  loadli.w r1,  16(r30)
000c88  1f010010  addli r2, zero, 2048
000c8c  3bdb2006  bneq r1, r2, 3796
000c90  e3403f00  loadli.w r1,  28(r30)
000c94  37c5001a  beq r1, zero, 13648
000c98  003d0002  core_id r26
000c9c  abd70000  lui r15, 13
000ca0  00510102  load_param_i r2, 2
000ca4  1f150000  addli r10, zero, 1
000ca8  9f058fd7  addli r11, r30, -5184
000cac  1f068000  addli r12, zero, 64
000cb0  9f060010  addli r13, zero, 2048
000cb4  9b305d00  slli r1, r26, 5
000cb8  9b315100  slli r3, r2, 5
000cbc  9f8707f0  addli r15, r15, -2048
000cc0  1f870000  addli r14, r1, 0
000cc4  33080728  zext_int2long r[17:18], r14
000cc8  2b0900f0  lui r18, 983040
000ccc  1738a802  sll.d r[17:18], r[17:18], r10
000cd0  17192601  or r18, r12, r18
000cd4  0b280211  add.ul r[17:18], r[5:6], r[17:18]
000cd8  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
000cdc  1b382700  slli r16, r14, 2
000ce0  0b97e110  add.s r14, r3, r14
000ce4  00a00200  mfence { lm, gm }
000ce8  42800502  vload.mz vr0{mr1}, 0(r11)
000cec  9308d704  setlt.u r17, r14, r13
000cf0  0b18f810  add.s r16, r16, r15
000cf4  1f098800  addli r18, r16, 64
000cf8  86300000  vfp162float_l.rn vr1, vr0
000cfc  06700000  vfp162float_h.rn vr0, vr0
000d00  4e101802  vstores_mask16.mz vr1{mr1}, 0(r16)
000d04  4e100902  vstores_mask16.mz vr0{mr1}, 0(r18)
000d08  bbfe08fe  bneq r17, zero, -68
000d0c  abf20000  lui r5, 15
000d10  1b357d00  slli r10, r26, 7
000d14  1b327100  slli r4, r2, 7
000d18  1f160000  addli r12, zero, 1
000d1c  9f068fd7  addli r13, r30, -5184
000d20  1f078000  addli r14, zero, 64
000d24  1f080010  addli r16, zero, 2048
000d28  9f880000  addli r17, r1, 0
000d2c  00a00000  mfence { lm }
000d30  9f8202f0  addli r5, r5, -2048
000d34  8b155510  add.s r11, r10, r5
000d38  33890828  zext_int2long r[19:20], r17
000d3c  2b0a00f0  lui r20, 983040
000d40  8b983810  add.s r17, r17, r3
000d44  1739c902  sll.d r[19:20], r[19:20], r12
000d48  171a4701  or r20, r14, r20
000d4c  0b292311  add.ul r[19:20], r[7:8], r[19:20]
000d50  7f2ad900  l_gm2lm r20, r13, 0(r[19:20])
000d54  13890805  setlt.u r18, r17, r16
000d58  9f898500  addli r19, r11, 64
000d5c  00a00200  mfence { lm, gm }
000d60  42800602  vload.mz vr0{mr1}, 0(r13)
000d64  86300000  vfp162float_l.rn vr1, vr0
000d68  06700000  vfp162float_h.rn vr0, vr0
000d6c  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
000d70  8b954510  add.s r11, r11, r4
000d74  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
000d78  3b0f09fe  bneq r18, zero, -64
000d7c  ab130100  lui r7, 17
000d80  9f058fd7  addli r11, r30, -5184
000d84  1f068000  addli r12, zero, 64
000d88  9f060010  addli r13, zero, 2048
000d8c  00a00000  mfence { lm }
000d90  9f8303f0  addli r7, r7, -2048
000d94  0b137510  add.s r6, r10, r7
000d98  1f150000  addli r10, zero, 1
000d9c  33880028  zext_int2long r[17:18], r1
000da0  2b0700f0  lui r14, 983040
000da4  8b903010  add.s r1, r1, r3
000da8  1738a802  sll.d r[17:18], r[17:18], r10
000dac  1717e600  or r14, r12, r14
000db0  0b280411  add.ul r[17:18], r[9:10], r[17:18]
000db4  7f27b800  l_gm2lm r14, r11, 0(r[17:18])
000db8  1387d004  setlt.u r14, r1, r13
000dbc  1f088300  addli r16, r6, 64
000dc0  00a00200  mfence { lm, gm }
000dc4  42800502  vload.mz vr0{mr1}, 0(r11)
000dc8  86300000  vfp162float_l.rn vr1, vr0
000dcc  06700000  vfp162float_h.rn vr0, vr0
000dd0  4e101302  vstores_mask16.mz vr1{mr1}, 0(r6)
000dd4  0b134310  add.s r6, r6, r4
000dd8  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
000ddc  3b0f07fe  bneq r14, zero, -64
000de0  abf00000  lui r1, 15
000de4  00a00300  mfence { lm, sm, gm }
000de8  9b011d00  andi r3, r26, 1
000dec  1f020006  addli r4, zero, 768
000df0  9b90f0ff  ori r1, r1, 4095
000df4  80a10004  csr_set csr3, r1
000df8  9f000006  addli r1, zero, 768
000dfc  00d00100  sync_group
000e00  67083fd6  storeli.w r3, -5248(r30)
000e04  37a00100  beq r3, zero, 8
000e08  1f02000a  addli r4, zero, 1280
000e0c  e3411f00  loadli.w r3,  12(r30)
000e10  1f130000  addli r6, zero, 1
000e14  bf94612a  blt.s r3, r6, 21796
000e18  e3010fd7  loadli.w r3,  -5248(r30)
000e1c  1f088fd7  addli r16, r30, -5184
000e20  1b441100  srli r8, r2, 1
000e24  1f014200  addli r2, r4, 32
000e28  9b351200  slli r11, r4, 1
000e2c  ab3d0100  lui r27, 19
000e30  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000e34  1f030000  addli r6, zero, 0
000e38  9b441d00  srli r9, r26, 1
000e3c  1f7a7000  addli r20, zero, 63
000e40  9f0b0005  addli r23, zero, 640
000e44  1f054000  addli r10, zero, 32
000e48  1f0b0003  addli r22, zero, 384
000e4c  670c2fd4  storeli.w r2, -5440(r30)
000e50  0b910511  add.s r2, r11, r16
000e54  9f8d0df0  addli r27, r27, -2048
000e58  8b901120  mul.s r1, r3, r1
000e5c  67041fd6  storeli.w r1, -5312(r30)
000e60  9bb02000  slli r1, r1, 2
000e64  0b965010  add.s r12, r1, r5
000e68  8b967010  add.s r13, r1, r7
000e6c  9b302200  slli r1, r4, 2
000e70  ab320100  lui r5, 19
000e74  8b900011  add.s r1, r1, r16
000e78  9f8202f4  addli r5, r5, -1536
000e7c  9f8080ff  addli r1, r1, -64
000e80  67081fd4  storeli.w r1, -5504(r30)
000e84  9f0081ff  addli r1, r2, -64
000e88  1f010fd4  addli r2, r30, -5632
000e8c  67041fd4  storeli.w r1, -5568(r30)
000e90  abf0ffff  lui r1, 1048575
000e94  00a00000  mfence { lm }
000e98  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
000e9c  63411f00  loadli.w r2,  12(r30)
000ea0  9b9000f8  ori r1, r1, 3968
000ea4  e74f1fd2  storeli.w r1, -5636(r30)
000ea8  abf00000  lui r1, 15
000eac  1b9ef0ff  ori r28, r1, 4095
000eb0  5b040000  j 32
000eb4  00a00300  mfence { lm, sm, gm }
000eb8  80210e04  csr_set csr3, r28
000ebc  00d00100  sync_group
000ec0  63411f00  loadli.w r2,  12(r30)
000ec4  0b138310  add.s r6, r6, r8
000ec8  3f202300  blt.s r6, r2, 8
000ecc  dba3ffff  j -740
000ed0  8b109310  add.s r1, r6, r9
000ed4  cb0f11fe  ble.s r2, r1, -32
000ed8  63011f00  loadli.w r2,  8(r30)
000edc  e3018fd6  loadli.w r3,  -5312(r30)
000ee0  8b902010  add.s r1, r1, r2
000ee4  0b018330  div.u r2, r6, r8
000ee8  9bb0b000  slli r1, r1, 11
000eec  97903000  or r1, r1, r3
000ef0  9f110000  addli r3, zero, 1
000ef4  b3980028  sext_int2long r[18:19], r1
000ef8  ab0000f0  lui r1, 983040
000efc  1b316100  slli r2, r2, 6
000f00  97b83802  sll.d r[18:19], r[18:19], r3
000f04  9f017fd6  addli r3, r30, -5320
000f08  97901500  or r1, r11, r1
000f0c  1b010104  andi r2, r2, 64
000f10  6bdc0100  load.d r[25:26], 0(r3)
000f14  1711a101  or r2, r2, r26
000f18  0b2c1c11  add.ul r[25:26], r[25:26], r[18:19]
000f1c  ff200c01  l_gm2lm r1, r16, 0(r[25:26])
000f20  00a00200  mfence { lm, gm }
000f24  e3008fd4  loadli.w r1,  -5568(r30)
000f28  e3010fd5  loadli.w r3,  -5504(r30)
000f2c  e3038fd5  loadli.w r7,  -5440(r30)
000f30  c2800002  vload.mz vr1{mr1}, 0(r1)
000f34  9f83c3ff  addli r7, r7, -32
000f38  9f8981ff  addli r19, r3, -64
000f3c  9f8080ff  addli r1, r1, -64
000f40  13077a04  setlt.u r14, r20, r7
000f44  06f10000  vfp162float_h.rn vr2, vr1
000f48  86b00000  vfp162float_l.rn vr1, vr1
000f4c  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000f50  9f8101ff  addli r3, r3, -128
000f54  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
000f58  3b6f07fe  bneq r14, zero, -40
000f5c  00a00000  mfence { lm }
000f60  e3000fd7  loadli.w r1,  -5248(r30)
000f64  3bc60000  bneq r1, zero, 400
000f68  9f000fd4  addli r1, r30, -5632
000f6c  6347ffd3  loadli.w r14,  -5636(r30)
000f70  9f010000  addli r3, zero, 0
000f74  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000f78  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000f7c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000f80  12323002  vadd.s.mz vr4{mr1}, zero, vr3
000f84  8b90f110  add.s r1, r3, r15
000f88  8b133810  add.s r7, r16, r3
000f8c  1f070701  addli r14, r14, 128
000f90  9f810104  addli r3, r3, 512
000f94  9f890001  addli r19, r1, 128
000f98  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
000f9c  9f8a8000  addli r21, r1, 64
000fa0  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
000fa4  1f8c8301  addli r24, r7, 192
000fa8  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
000fac  9f898001  addli r19, r1, 192
000fb0  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
000fb4  9f8a8300  addli r21, r7, 64
000fb8  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
000fbc  ca930902  vloads_mask16.mz vr7{mr1}, 0(r19)
000fc0  9f890301  addli r19, r7, 128
000fc4  42950a02  vload_mask16.mz vr10{mr1}, 0(r21)
000fc8  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
000fcc  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
000fd0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
000fd4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
000fd8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
000fdc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
000fe0  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
000fe4  46908902  vstore_mask16.mz vr8{mr1}, 0(r19)
000fe8  9f890002  addli r19, r1, 256
000fec  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
000ff0  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
000ff4  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
000ff8  46905a02  vstore_mask16.mz vr5{mr1}, 0(r21)
000ffc  4a900902  vloads_mask16.mz vr0{mr1}, 0(r19)
001000  9f898002  addli r19, r1, 320
001004  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
001008  1f8c0302  addli r24, r7, 256
00100c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001010  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001014  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001018  4a930902  vloads_mask16.mz vr6{mr1}, 0(r19)
00101c  9f890003  addli r19, r1, 384
001020  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
001024  9f808003  addli r1, r1, 448
001028  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00102c  4a940902  vloads_mask16.mz vr8{mr1}, 0(r19)
001030  9f898302  addli r19, r7, 320
001034  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001038  9f800303  addli r1, r7, 384
00103c  9f838303  addli r7, r7, 448
001040  c2940902  vload_mask16.mz vr9{mr1}, 0(r19)
001044  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001048  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00104c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001050  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001054  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001058  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00105c  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
001060  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001064  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
001068  93097705  setlt.u r19, r14, r23
00106c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001070  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001074  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001078  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00107c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001080  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001084  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
001088  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
00108c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001090  bbdb09fe  bneq r19, zero, -268
001094  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001098  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00109c  9f000002  addli r1, zero, 256
0010a0  6af100c0  vsrl.p vr2, r1, vr0
0010a4  eaf110c0  vsrl.p vr3, r1, vr1
0010a8  9f000001  addli r1, zero, 128
0010ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010b4  6af100c0  vsrl.p vr2, r1, vr0
0010b8  eaf110c0  vsrl.p vr3, r1, vr1
0010bc  9f008000  addli r1, zero, 64
0010c0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010c4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010c8  6af100c0  vsrl.p vr2, r1, vr0
0010cc  eaf110c0  vsrl.p vr3, r1, vr1
0010d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010d8  6a7105c0  vsrl.p vr2, r10, vr0
0010dc  ea7115c0  vsrl.p vr3, r10, vr1
0010e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0010e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0010e8  fa100040  vextracti.f r1, 0(vr0)
0010ec  fa930040  vextracti.f r7, 0(vr1)
0010f0  db650000  j 812
0010f4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0010f8  abf0ffff  lui r1, 1048575
0010fc  9f010000  addli r3, zero, 0
001100  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001104  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001108  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00110c  1b9700f8  ori r14, r1, 3968
001110  8b933710  add.s r7, r15, r3
001114  8b193810  add.s r19, r16, r3
001118  1f070701  addli r14, r14, 128
00111c  9f810104  addli r3, r3, 512
001120  1f8c0331  addli r24, r7, 6272
001124  9f800330  addli r1, r7, 6144
001128  9f8c8331  addli r25, r7, 6336
00112c  9f8a0918  addli r21, r19, 3072
001130  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
001134  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
001138  9f808330  addli r1, r7, 6208
00113c  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
001140  1f8c0919  addli r24, r19, 3200
001144  42930a02  vload_mask16.mz vr6{mr1}, 0(r21)
001148  9f8c8919  addli r25, r19, 3264
00114c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
001150  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
001154  9f808918  addli r1, r19, 3136
001158  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
00115c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001160  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001164  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
001168  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
00116c  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
001170  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001174  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
001178  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
00117c  9f8a0332  addli r21, r7, 6400
001180  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
001184  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
001188  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00118c  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
001190  1f8c091a  addli r24, r19, 3328
001194  c2130c02  vload_mask16.mz vr7{mr1}, 0(r24)
001198  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00119c  9f80091b  addli r1, r19, 3456
0011a0  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0011a4  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0011a8  4a900a02  vloads_mask16.mz vr0{mr1}, 0(r21)
0011ac  9f8a8332  addli r21, r7, 6464
0011b0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0011b4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0011b8  4a930a02  vloads_mask16.mz vr6{mr1}, 0(r21)
0011bc  9f8a0333  addli r21, r7, 6528
0011c0  9f838333  addli r7, r7, 6592
0011c4  4a940a02  vloads_mask16.mz vr8{mr1}, 0(r21)
0011c8  9f8a891a  addli r21, r19, 3392
0011cc  4a950302  vloads_mask16.mz vr10{mr1}, 0(r7)
0011d0  9f83891b  addli r7, r19, 3520
0011d4  93096705  setlt.u r19, r14, r22
0011d8  c2940a02  vload_mask16.mz vr9{mr1}, 0(r21)
0011dc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0011e0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0011e4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0011e8  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
0011ec  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0011f0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0011f4  46100c02  vstore_mask16.mz vr0{mr1}, 0(r24)
0011f8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0011fc  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
001200  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001204  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001208  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
00120c  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
001210  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
001214  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001218  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
00121c  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
001220  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001224  bbbb09fe  bneq r19, zero, -276
001228  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00122c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
001230  9f000002  addli r1, zero, 256
001234  9f0a0000  addli r21, zero, 0
001238  eaf110c0  vsrl.p vr3, r1, vr1
00123c  6af100c0  vsrl.p vr2, r1, vr0
001240  9f000001  addli r1, zero, 128
001244  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001248  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00124c  eaf110c0  vsrl.p vr3, r1, vr1
001250  6af100c0  vsrl.p vr2, r1, vr0
001254  9f008000  addli r1, zero, 64
001258  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00125c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001260  eaf110c0  vsrl.p vr3, r1, vr1
001264  6af100c0  vsrl.p vr2, r1, vr0
001268  abf0ffff  lui r1, 1048575
00126c  9b9900f8  ori r19, r1, 3968
001270  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001274  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001278  ea7115c0  vsrl.p vr3, r10, vr1
00127c  6a7105c0  vsrl.p vr2, r10, vr0
001280  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001284  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001288  7a970040  vextracti.f r14, 0(vr1)
00128c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001290  fa110040  vextracti.f r3, 0(vr0)
001294  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001298  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00129c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0012a0  8b905711  add.s r1, r15, r21
0012a4  8b135811  add.s r7, r16, r21
0012a8  9f890901  addli r19, r19, 128
0012ac  9f8a0a04  addli r21, r21, 512
0012b0  1f8c0018  addli r24, r1, 3072
0012b4  9f8c0019  addli r25, r1, 3200
0012b8  42940302  vload_mask16.mz vr8{mr1}, 0(r7)
0012bc  1f8d8301  addli r26, r7, 192
0012c0  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0012c4  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
0012c8  1f8c8018  addli r24, r1, 3136
0012cc  9f8c8019  addli r25, r1, 3264
0012d0  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
0012d4  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0012d8  1f8c0301  addli r24, r7, 128
0012dc  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
0012e0  9f8c8300  addli r25, r7, 64
0012e4  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
0012e8  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
0012ec  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0012f0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0012f4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0012f8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0012fc  46108c02  vstore_mask16.mz vr8{mr1}, 0(r24)
001300  1f8c001a  addli r24, r1, 3328
001304  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
001308  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00130c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
001310  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
001314  46900302  vstore_mask16.mz vr0{mr1}, 0(r7)
001318  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
00131c  1f8c801a  addli r24, r1, 3392
001320  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
001324  1f8d0302  addli r26, r7, 256
001328  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
00132c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
001330  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001334  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
001338  1f8c001b  addli r24, r1, 3456
00133c  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
001340  9f80801b  addli r1, r1, 3520
001344  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001348  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00134c  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
001350  1f8c8302  addli r24, r7, 320
001354  4a950002  vloads_mask16.mz vr10{mr1}, 0(r1)
001358  9f800303  addli r1, r7, 384
00135c  9f838303  addli r7, r7, 448
001360  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
001364  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
001368  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
00136c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
001370  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001374  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001378  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00137c  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
001380  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
001384  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
001388  138c7905  setlt.u r24, r19, r23
00138c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
001390  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001394  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
001398  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00139c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0013a0  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0013a4  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
0013a8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0013ac  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0013b0  bb4b0cfe  bneq r24, zero, -272
0013b4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0013b8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0013bc  9f000002  addli r1, zero, 256
0013c0  003d0002  core_id r26
0013c4  6af100c0  vsrl.p vr2, r1, vr0
0013c8  eaf110c0  vsrl.p vr3, r1, vr1
0013cc  9f000001  addli r1, zero, 128
0013d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013d4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013d8  6af100c0  vsrl.p vr2, r1, vr0
0013dc  eaf110c0  vsrl.p vr3, r1, vr1
0013e0  9f008000  addli r1, zero, 64
0013e4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013ec  6af100c0  vsrl.p vr2, r1, vr0
0013f0  eaf110c0  vsrl.p vr3, r1, vr1
0013f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0013f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0013fc  6a7105c0  vsrl.p vr2, r10, vr0
001400  ea7115c0  vsrl.p vr3, r10, vr1
001404  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001408  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00140c  fa100040  vextracti.f r1, 0(vr0)
001410  fa930040  vextracti.f r7, 0(vr1)
001414  8be01110  add.f.rn r1, r3, r1
001418  8b637710  add.f.rn r7, r14, r7
00141c  9b392100  slli r19, r2, 2
001420  9f010000  addli r3, zero, 0
001424  1f070000  addli r14, zero, 0
001428  8b9ab911  add.s r21, r19, r27
00142c  0b9c5910  add.s r24, r19, r5
001430  73e01a00  stores.w r1, 0(r21)
001434  9b00e107  andi r1, r2, 126
001438  1b914900  ori r2, r19, 4
00143c  73607c00  stores.w r7, 0(r24)
001440  00a00300  mfence { lm, sm, gm }
001444  80210e04  csr_set csr3, r28
001448  00d00100  sync_group
00144c  9bb02000  slli r1, r1, 2
001450  8b13b111  add.s r7, r2, r27
001454  0b115110  add.s r2, r2, r5
001458  8b99b011  add.s r19, r1, r27
00145c  efc30300  loads.w r7, 0(r7)
001460  8b905010  add.s r1, r1, r5
001464  6f410100  loads.w r2, 0(r2)
001468  efc90900  loads.w r19, 0(r19)
00146c  efc00000  loads.w r1, 0(r1)
001470  8be33311  add.f.rn r7, r7, r19
001474  ab09003a  lui r19, 237568
001478  8b601110  add.f.rn r1, r2, r1
00147c  0be13321  mul.f.rn r2, r7, r19
001480  8be03021  mul.f.rn r1, r1, r19
001484  8b632120  mul.f.rn r7, r2, r2
001488  0b610158  neg.f r2, r2
00148c  8be07018  sub.f.rn r1, r1, r7
001490  e3033f00  loadli.w r7,  24(r30)
001494  8be07010  add.f.rn r1, r1, r7
001498  ab03803f  lui r7, 260096
00149c  8f800008  sqrt.f.rn r1, r1
0014a0  8f801318  div.f.rn r1, r7, r1
0014a4  9f030000  addli r7, zero, 0
0014a8  8b19e810  add.s r19, r16, r14
0014ac  8b1ae610  add.s r21, r12, r14
0014b0  0b9ce610  add.s r24, r13, r14
0014b4  9f834300  addli r7, r7, 32
0014b8  1f070701  addli r14, r14, 128
0014bc  42900902  vload_mask16.mz vr0{mr1}, 0(r19)
0014c0  9f8c8900  addli r25, r19, 64
0014c4  9f898a00  addli r19, r21, 64
0014c8  4a910a02  vloads_mask16.mz vr2{mr1}, 0(r21)
0014cc  4a120c02  vloads_mask16.mz vr4{mr1}, 0(r24)
0014d0  8b1a3810  add.s r21, r16, r3
0014d4  9f818100  addli r3, r3, 64
0014d8  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
0014dc  9f098c00  addli r19, r24, 64
0014e0  c2900c02  vload_mask16.mz vr1{mr1}, 0(r25)
0014e4  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
0014e8  93894304  setlt.u r19, r7, r4
0014ec  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
0014f0  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
0014f4  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0014f8  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
0014fc  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
001500  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001504  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
001508  06100200  vfloat2fp16_l.rn vr0, vr4
00150c  06d00200  vfloat2fp16_h.rn vr0, vr5
001510  46800a02  vstore.mz vr0{mr1}, 0(r21)
001514  3bde09fe  bneq r19, zero, -108
001518  6b510f00  load.d r[3:4], 0(r30)
00151c  ab0000f0  lui r1, 983040
001520  00a00000  mfence { lm }
001524  97901500  or r1, r11, r1
001528  0b211111  add.ul r[3:4], r[3:4], r[18:19]
00152c  ff300101  s_lm2gm r1, r16, 0(r[3:4])
001530  00a00200  mfence { lm, gm }
001534  db31ffff  j -1652
001538  e3403f00  loadli.w r1,  28(r30)
00153c  37fe0012  beq r1, zero, 10140
001540  803b0002  core_id r23
001544  63012f00  loadli.w r2,  16(r30)
001548  805c0102  load_param_i r25, 2
00154c  9bb05b00  slli r1, r23, 5
001550  4b431100  ble.s r2, r1, 208
001554  2b960000  lui r12, 9
001558  9f110000  addli r3, zero, 1
00155c  1f058fd7  addli r10, r30, -5184
001560  9f058000  addli r11, zero, 64
001564  1bb15c00  slli r2, r25, 5
001568  9f860000  addli r13, r1, 0
00156c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001570  1f0606f0  addli r12, r12, -2048
001574  33880628  zext_int2long r[17:18], r13
001578  2b0900f0  lui r18, 983040
00157c  17383802  sll.d r[17:18], r[17:18], r3
001580  17992501  or r18, r11, r18
001584  0b280211  add.ul r[17:18], r[5:6], r[17:18]
001588  7f29a800  l_gm2lm r18, r10, 0(r[17:18])
00158c  1bb82600  slli r16, r13, 2
001590  8b16d110  add.s r13, r2, r13
001594  00a00200  mfence { lm, gm }
001598  c2000502  vload.mz vr1{mr1}, 0(r10)
00159c  0b18c810  add.s r16, r16, r12
0015a0  9f088800  addli r17, r16, 64
0015a4  66411080  vmerge_l.hf vr2, vr0, vr1
0015a8  e64010a0  vmerge_h.hf vr1, vr0, vr1
0015ac  4e102802  vstores_mask16.mz vr2{mr1}, 0(r16)
0015b0  4e901802  vstores_mask16.mz vr1{mr1}, 0(r17)
0015b4  3f8ff6fe  blt.s r13, r15, -64
0015b8  2ba20000  lui r4, 10
0015bc  9bb17b00  slli r3, r23, 7
0015c0  9f120000  addli r5, zero, 1
0015c4  1f058fd7  addli r10, r30, -5184
0015c8  9f058000  addli r11, zero, 64
0015cc  1f860000  addli r12, r1, 0
0015d0  00a00000  mfence { lm }
0015d4  1f0202f0  addli r4, r4, -2048
0015d8  8b914110  add.s r3, r3, r4
0015dc  1bb27c00  slli r4, r25, 7
0015e0  33080628  zext_int2long r[17:18], r12
0015e4  ab0600f0  lui r13, 983040
0015e8  0b162610  add.s r12, r12, r2
0015ec  17385802  sll.d r[17:18], r[17:18], r5
0015f0  9796d500  or r13, r11, r13
0015f4  0b280311  add.ul r[17:18], r[7:8], r[17:18]
0015f8  ff26a800  l_gm2lm r13, r10, 0(r[17:18])
0015fc  9f868100  addli r13, r3, 64
001600  00a00200  mfence { lm, gm }
001604  c2000502  vload.mz vr1{mr1}, 0(r10)
001608  66411080  vmerge_l.hf vr2, vr0, vr1
00160c  e64010a0  vmerge_h.hf vr1, vr0, vr1
001610  4e902102  vstores_mask16.mz vr2{mr1}, 0(r3)
001614  8b914110  add.s r3, r3, r4
001618  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
00161c  3f1ff6fe  blt.s r12, r15, -60
001620  63012f00  loadli.w r2,  16(r30)
001624  cb211100  ble.s r2, r1, 104
001628  2bb30000  lui r6, 11
00162c  1f110000  addli r2, zero, 1
001630  9f018fd7  addli r3, r30, -5184
001634  1f028000  addli r4, zero, 64
001638  9bb25c00  slli r5, r25, 5
00163c  00a00000  mfence { lm }
001640  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001644  1f0303f0  addli r6, r6, -2048
001648  33850028  zext_int2long r[11:12], r1
00164c  ab0300f0  lui r7, 983040
001650  17352502  sll.d r[11:12], r[11:12], r2
001654  97137200  or r7, r4, r7
001658  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
00165c  ff233500  l_gm2lm r7, r3, 0(r[11:12])
001660  9bb32000  slli r7, r1, 2
001664  8b901210  add.s r1, r5, r1
001668  00a00200  mfence { lm, gm }
00166c  c2800102  vload.mz vr1{mr1}, 0(r3)
001670  8b936310  add.s r7, r7, r6
001674  1f858300  addli r10, r7, 64
001678  66411080  vmerge_l.hf vr2, vr0, vr1
00167c  e64010a0  vmerge_h.hf vr1, vr0, vr1
001680  4e902302  vstores_mask16.mz vr2{mr1}, 0(r7)
001684  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001688  3f8ff0fe  blt.s r1, r15, -64
00168c  abf00000  lui r1, 15
001690  63411f00  loadli.w r2,  12(r30)
001694  00a00300  mfence { lm, sm, gm }
001698  9b90f0ff  ori r1, r1, 4095
00169c  80a10004  csr_set csr3, r1
0016a0  00d00100  sync_group
0016a4  4b527127  ble.s r2, r23, 19604
0016a8  e3002f00  loadli.w r1,  16(r30)
0016ac  63412f00  loadli.w r2,  20(r30)
0016b0  1f048fd7  addli r8, r30, -5184
0016b4  9f150000  addli r11, zero, 1
0016b8  1f064000  addli r12, zero, 32
0016bc  1f757000  addli r10, zero, 63
0016c0  9f080002  addli r17, zero, 256
0016c4  9f040001  addli r9, zero, 128
0016c8  1f0a8000  addli r20, zero, 64
0016cc  ab0a803f  lui r21, 260096
0016d0  2bed7f00  lui r26, 2046
0016d4  2bee0700  lui r28, 126
0016d8  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0016dc  8b912010  add.s r3, r1, r2
0016e0  33820008  fix2float.rn r4, r1
0016e4  1bb31000  slli r6, r1, 1
0016e8  9bb22000  slli r5, r1, 2
0016ec  9f804000  addli r1, r1, 32
0016f0  9b392100  slli r19, r2, 2
0016f4  e70f1fd2  storeli.w r1, -5640(r30)
0016f8  8b908210  add.s r1, r5, r8
0016fc  9ff1f1ff  addli r3, r3, -1
001700  e74f4fd2  storeli.w r4, -5636(r30)
001704  0b922130  div.s r4, r3, r2
001708  9f8080ff  addli r1, r1, -64
00170c  8b118310  add.s r3, r6, r8
001710  674f1fd2  storeli.w r1, -5644(r30)
001714  9f8081ff  addli r1, r3, -64
001718  670f1fd2  storeli.w r1, -5648(r30)
00171c  abf0ffff  lui r1, 1048575
001720  00a00000  mfence { lm }
001724  67049fd5  storeli.w r25, -5568(r30)
001728  67006fd4  storeli.w r6, -5632(r30)
00172c  9b90f0ff  ori r1, r1, 4095
001730  67041fd6  storeli.w r1, -5312(r30)
001734  ab700000  lui r1, 7
001738  1b9cf0ff  ori r24, r1, 4095
00173c  ab00ff03  lui r1, 16368
001740  1b9bf03f  ori r22, r1, 1023
001744  abf000fc  lui r1, 1032207
001748  9b9300c0  ori r7, r1, 3072
00174c  9f000fd7  addli r1, r30, -5248
001750  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001754  db090000  j 76
001758  1f040fd5  addli r8, r30, -5504
00175c  6b510f00  load.d r[3:4], 0(r30)
001760  ab0000f0  lui r1, 983040
001764  1f757000  addli r10, zero, 63
001768  eb520400  load.d r[6:7], 0(r8)
00176c  1f048fd7  addli r8, r30, -5184
001770  0b215110  add.ul r[3:4], r[3:4], r[6:7]
001774  63030fd4  loadli.w r6,  -5632(r30)
001778  00a00000  mfence { lm }
00177c  e30b8fd5  loadli.w r23,  -5440(r30)
001780  e30c8fd4  loadli.w r25,  -5568(r30)
001784  97101300  or r1, r6, r1
001788  8b9b7c11  add.s r23, r25, r23
00178c  ff308100  s_lm2gm r1, r8, 0(r[3:4])
001790  00a00200  mfence { lm, gm }
001794  e3401f00  loadli.w r1,  12(r30)
001798  3fa01b00  blt.s r23, r1, 8
00179c  db730900  j 19356
0017a0  e3001f00  loadli.w r1,  8(r30)
0017a4  9f027fd6  addli r5, r30, -5320
0017a8  9f860900  addli r13, r19, 0
0017ac  8b901b10  add.s r1, r23, r1
0017b0  8b90f020  mul.s r1, r1, r15
0017b4  b3900028  sext_int2long r[2:3], r1
0017b8  17b9b002  sll.d r[19:20], r[2:3], r11
0017bc  6bd10200  load.d r[3:4], 0(r5)
0017c0  ab0000f0  lui r1, 983040
0017c4  9f020fd5  addli r5, r30, -5504
0017c8  97101300  or r1, r6, r1
0017cc  73b02201  store.d r[19:20], 0(r5)
0017d0  0b212111  add.ul r[3:4], r[3:4], r[19:20]
0017d4  ff208100  l_gm2lm r1, r8, 0(r[3:4])
0017d8  00a00200  mfence { lm, gm }
0017dc  bff0c700  blt.s r15, r12, 60
0017e0  e300efd3  loadli.w r1,  -5648(r30)
0017e4  6341efd3  loadli.w r2,  -5644(r30)
0017e8  e301ffd3  loadli.w r3,  -5640(r30)
0017ec  c2800002  vload.mz vr1{mr1}, 0(r1)
0017f0  9f81c1ff  addli r3, r3, -32
0017f4  1f0481ff  addli r8, r2, -64
0017f8  9f8080ff  addli r1, r1, -64
0017fc  93023504  setlt.u r5, r10, r3
001800  664110a0  vmerge_h.hf vr2, vr0, vr1
001804  e6401080  vmerge_l.hf vr1, vr0, vr1
001808  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
00180c  1f0101ff  addli r2, r2, -128
001810  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
001814  3bef02fe  bneq r5, zero, -40
001818  670c7fd5  storeli.w r23, -5440(r30)
00181c  00a00000  mfence { lm }
001820  bf67b200  blt.s r4, r11, 504
001824  1f050000  addli r10, zero, 0
001828  9f020000  addli r5, zero, 0
00182c  1f040000  addli r8, zero, 0
001830  9f890600  addli r19, r13, 0
001834  db0d0000  j 108
001838  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
00183c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001840  1f140400  addli r8, r8, 1
001844  6af108c0  vsrl.p vr2, r17, vr0
001848  eaf118c0  vsrl.p vr3, r17, vr1
00184c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001850  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001854  6af104c0  vsrl.p vr2, r9, vr0
001858  eaf114c0  vsrl.p vr3, r9, vr1
00185c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001860  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001864  6a710ac0  vsrl.p vr2, r20, vr0
001868  ea711ac0  vsrl.p vr3, r20, vr1
00186c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001870  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001874  6a7106c0  vsrl.p vr2, r12, vr0
001878  ea7116c0  vsrl.p vr3, r12, vr1
00187c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001880  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001884  fa100040  vextracti.f r1, 0(vr0)
001888  7a910040  vextracti.f r2, 0(vr1)
00188c  0b651510  add.f.rn r10, r10, r1
001890  9f000fd7  addli r1, r30, -5248
001894  8be22210  add.f.rn r5, r5, r2
001898  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00189c  37264400  beq r8, r4, 392
0018a0  9f000400  addli r1, r8, 0
0018a4  37401701  beq r14, r17, 16
0018a8  e3008fd6  loadli.w r1,  -5312(r30)
0018ac  97201400  xor r1, r8, r1
0018b0  8b101210  add.s r1, r4, r1
0018b4  0b91e020  mul.s r2, r1, r14
0018b8  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0018bc  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0018c0  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0018c4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0018c8  0b912718  sub.s r2, r15, r2
0018cc  0b11e140  min.s r2, r2, r14
0018d0  bf2db1fe  blt.s r2, r11, -152
0018d4  1f030fd7  addli r6, r30, -5248
0018d8  ab960000  lui r13, 9
0018dc  9f010000  addli r3, zero, 0
0018e0  8b901920  mul.s r1, r19, r1
0018e4  1f098fd7  addli r18, r30, -5184
0018e8  42120302  vload_mask16.mz vr4{mr1}, 0(r6)
0018ec  9f8606f0  addli r13, r13, -2048
0018f0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0018f4  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0018f8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0018fc  8b9b1610  add.s r23, r13, r1
001900  0b181910  add.s r16, r18, r1
001904  9f8c8b00  addli r25, r23, 64
001908  ca920b02  vloads_mask16.mz vr5{mr1}, 0(r23)
00190c  9f8d8b01  addli r27, r23, 192
001910  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
001914  1f038801  addli r6, r16, 192
001918  4a930c02  vloads_mask16.mz vr6{mr1}, 0(r25)
00191c  9f8c0b01  addli r25, r23, 128
001920  4a940d02  vloads_mask16.mz vr8{mr1}, 0(r27)
001924  9f0d0801  addli r27, r16, 128
001928  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
00192c  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
001930  c2950d02  vload_mask16.mz vr11{mr1}, 0(r27)
001934  9f0c8800  addli r25, r16, 64
001938  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
00193c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001940  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001944  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001948  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
00194c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001950  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001954  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
001958  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
00195c  9f8c8100  addli r25, r3, 64
001960  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
001964  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001968  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
00196c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001970  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001974  46907d02  vstore_mask16.mz vr7{mr1}, 0(r27)
001978  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
00197c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001980  cb6a91ff  ble.s r2, r25, -328
001984  9f8c0b02  addli r25, r23, 256
001988  9f8d8b02  addli r27, r23, 320
00198c  1f030802  addli r6, r16, 256
001990  9f810101  addli r3, r3, 128
001994  9f860604  addli r13, r13, 512
001998  1f090904  addli r18, r18, 512
00199c  4a900c02  vloads_mask16.mz vr0{mr1}, 0(r25)
0019a0  9f8c0b03  addli r25, r23, 384
0019a4  9f8b8b03  addli r23, r23, 448
0019a8  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
0019ac  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0019b0  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
0019b4  4a940b02  vloads_mask16.mz vr8{mr1}, 0(r23)
0019b8  9f0b0803  addli r23, r16, 384
0019bc  9f0c8802  addli r25, r16, 320
0019c0  1f088803  addli r16, r16, 448
0019c4  42950b02  vload_mask16.mz vr10{mr1}, 0(r23)
0019c8  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
0019cc  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0019d0  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
0019d4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0019d8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0019dc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0019e0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0019e4  46100302  vstore_mask16.mz vr0{mr1}, 0(r6)
0019e8  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
0019ec  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0019f0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0019f4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0019f8  46907b02  vstore_mask16.mz vr7{mr1}, 0(r23)
0019fc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001a00  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001a04  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001a08  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001a0c  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
001a10  bfbb21fe  blt.s r3, r2, -276
001a14  dbc4ffff  j -476
001a18  9f020000  addli r5, zero, 0
001a1c  1f050000  addli r10, zero, 0
001a20  9f890600  addli r19, r13, 0
001a24  1f032000  addli r6, zero, 16
001a28  9f3b0000  addli r23, zero, 3
001a2c  9f5c1000  addli r25, zero, 13
001a30  9f2d1000  addli r27, zero, 10
001a34  00a00000  mfence { lm }
001a38  bf84b7fe  blt.s r15, r11, -736
001a3c  6341ffd3  loadli.w r2,  -5636(r30)
001a40  abb60000  lui r13, 11
001a44  9f000000  addli r1, zero, 0
001a48  1f048fd7  addli r8, r30, -5184
001a4c  9f8606f0  addli r13, r13, -2048
001a50  8f012518  div.f.rn r3, r10, r2
001a54  0f812218  div.f.rn r2, r5, r2
001a58  2ba50000  lui r10, 10
001a5c  1f0505f0  addli r10, r10, -2048
001a60  8be23120  mul.f.rn r5, r3, r3
001a64  8be10158  neg.f r3, r3
001a68  0b615118  sub.f.rn r2, r2, r5
001a6c  e3023f00  loadli.w r5,  24(r30)
001a70  0b615110  add.f.rn r2, r2, r5
001a74  9f028fd7  addli r5, r30, -5184
001a78  0f010108  sqrt.f.rn r2, r2
001a7c  0f812a18  div.f.rn r2, r21, r2
001a80  1f088400  addli r16, r8, 64
001a84  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
001a88  1f898600  addli r18, r13, 64
001a8c  4a920602  vloads_mask16.mz vr4{mr1}, 0(r13)
001a90  ca110502  vloads_mask16.mz vr3{mr1}, 0(r10)
001a94  9f804000  addli r1, r1, 32
001a98  9f860601  addli r13, r13, 128
001a9c  1f040401  addli r8, r8, 128
001aa0  42110802  vload_mask16.mz vr2{mr1}, 0(r16)
001aa4  1f088500  addli r16, r10, 64
001aa8  4a130902  vloads_mask16.mz vr6{mr1}, 0(r18)
001aac  1f050501  addli r10, r10, 128
001ab0  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
001ab4  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
001ab8  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
001abc  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
001ac0  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
001ac4  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
001ac8  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
001acc  ea211322  vor.u.mz vr3{mr1}, r6, vr1
001ad0  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
001ad4  eaa21b22  vor.u.mz vr5{mr1}, r23, vr1
001ad8  6eb141c2  vsrl.s.mz vr2{mr1}, vr3, vr4
001adc  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
001ae0  6ab12502  vand.s.mz vr2{mr1}, r11, vr2
001ae4  eab13502  vand.s.mz vr3{mr1}, r11, vr3
001ae8  16312202  vadd.s.mz vr2{mr1}, vr4, vr2
001aec  6aa21c22  vor.u.mz vr4{mr1}, r25, vr1
001af0  eaa01d22  vor.u.mz vr1{mr1}, r27, vr1
001af4  96313302  vadd.s.mz vr3{mr1}, vr6, vr3
001af8  12312c02  vadd.s.mz vr2{mr1}, r24, vr2
001afc  92313c02  vadd.s.mz vr3{mr1}, r24, vr3
001b00  6e3322c2  vsrl.s.mz vr6{mr1}, vr4, vr2
001b04  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
001b08  6e3232c2  vsrl.s.mz vr4{mr1}, vr4, vr3
001b0c  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
001b10  ea326e02  vand.s.mz vr5{mr1}, r28, vr6
001b14  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
001b18  6a324e02  vand.s.mz vr4{mr1}, r28, vr4
001b1c  ea313d02  vand.s.mz vr3{mr1}, r26, vr3
001b20  6ab12a22  vor.s.mz vr2{mr1}, r21, vr2
001b24  eab25a22  vor.s.mz vr5{mr1}, r21, vr5
001b28  6ab24a22  vor.s.mz vr4{mr1}, r21, vr4
001b2c  eab13a22  vor.s.mz vr3{mr1}, r21, vr3
001b30  06110120  vfloat2fp16_l.rz vr2, vr2
001b34  06520220  vfloat2fp16_h.rz vr4, vr4
001b38  06d10120  vfloat2fp16_h.rz vr2, vr3
001b3c  06920220  vfloat2fp16_l.rz vr4, vr5
001b40  6a312b02  vand.s.mz vr2{mr1}, r22, vr2
001b44  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
001b48  eab01302  vand.s.mz vr1{mr1}, r7, vr1
001b4c  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
001b50  46801202  vstore.mz vr1{mr1}, 0(r5)
001b54  9f828200  addli r5, r5, 64
001b58  bfacf0fe  blt.s r1, r15, -216
001b5c  db7fffff  j -1028
001b60  e3403f00  loadli.w r1,  28(r30)
001b64  b7f70016  beq r1, zero, 11772
001b68  80300002  core_id r1
001b6c  e3012f00  loadli.w r3,  16(r30)
001b70  1bb15000  slli r2, r1, 5
001b74  4bc32100  ble.s r3, r2, 208
001b78  2b580100  lui r16, 21
001b7c  00550102  load_param_i r10, 2
001b80  9f150000  addli r11, zero, 1
001b84  1f068fd7  addli r12, r30, -5184
001b88  9f068000  addli r13, zero, 64
001b8c  9f080100  addli r17, r2, 0
001b90  9b315500  slli r3, r10, 5
001b94  1f080800  addli r16, r16, 0
001b98  33890828  zext_int2long r[19:20], r17
001b9c  2b0a00f0  lui r20, 983040
001ba0  1739b902  sll.d r[19:20], r[19:20], r11
001ba4  179a4601  or r20, r13, r20
001ba8  0b292211  add.ul r[19:20], r[5:6], r[19:20]
001bac  7f2ac900  l_gm2lm r20, r12, 0(r[19:20])
001bb0  1bb92800  slli r18, r17, 2
001bb4  8b981111  add.s r17, r3, r17
001bb8  00a00200  mfence { lm, gm }
001bbc  42000602  vload.mz vr0{mr1}, 0(r12)
001bc0  0b190911  add.s r18, r18, r16
001bc4  9f098900  addli r19, r18, 64
001bc8  86300000  vfp162float_l.rn vr1, vr0
001bcc  06700000  vfp162float_h.rn vr0, vr0
001bd0  4e101902  vstores_mask16.mz vr1{mr1}, 0(r18)
001bd4  4e900902  vstores_mask16.mz vr0{mr1}, 0(r19)
001bd8  3f8ff8fe  blt.s r17, r15, -64
001bdc  ab620100  lui r5, 22
001be0  1bb27000  slli r4, r1, 7
001be4  9f058fd7  addli r11, r30, -5184
001be8  1f068000  addli r12, zero, 64
001bec  9f060100  addli r13, r2, 0
001bf0  00a00000  mfence { lm }
001bf4  9f820200  addli r5, r5, 0
001bf8  0b125210  add.s r4, r4, r5
001bfc  9b327500  slli r5, r10, 7
001c00  1f150000  addli r10, zero, 1
001c04  33880628  zext_int2long r[17:18], r13
001c08  2b0900f0  lui r18, 983040
001c0c  8b963610  add.s r13, r13, r3
001c10  1738a802  sll.d r[17:18], r[17:18], r10
001c14  17192601  or r18, r12, r18
001c18  0b280311  add.ul r[17:18], r[7:8], r[17:18]
001c1c  7f29b800  l_gm2lm r18, r11, 0(r[17:18])
001c20  1f088200  addli r16, r4, 64
001c24  00a00200  mfence { lm, gm }
001c28  42800502  vload.mz vr0{mr1}, 0(r11)
001c2c  86300000  vfp162float_l.rn vr1, vr0
001c30  06700000  vfp162float_h.rn vr0, vr0
001c34  4e101202  vstores_mask16.mz vr1{mr1}, 0(r4)
001c38  0b125210  add.s r4, r4, r5
001c3c  4e100802  vstores_mask16.mz vr0{mr1}, 0(r16)
001c40  3f9ff6fe  blt.s r13, r15, -60
001c44  e3012f00  loadli.w r3,  16(r30)
001c48  cba12100  ble.s r3, r2, 104
001c4c  00530102  load_param_i r6, 2
001c50  ab730100  lui r7, 23
001c54  9f110000  addli r3, zero, 1
001c58  1f028fd7  addli r4, r30, -5184
001c5c  9f028000  addli r5, zero, 64
001c60  00a00000  mfence { lm }
001c64  1b335300  slli r6, r6, 5
001c68  9f830300  addli r7, r7, 0
001c6c  33050128  zext_int2long r[11:12], r2
001c70  2b0600f0  lui r12, 983040
001c74  17353502  sll.d r[11:12], r[11:12], r3
001c78  1796c200  or r12, r5, r12
001c7c  0b25a410  add.ul r[11:12], r[9:10], r[11:12]
001c80  7f264500  l_gm2lm r12, r4, 0(r[11:12])
001c84  1b352100  slli r10, r2, 2
001c88  0b112310  add.s r2, r6, r2
001c8c  00a00200  mfence { lm, gm }
001c90  42000202  vload.mz vr0{mr1}, 0(r4)
001c94  0b157510  add.s r10, r10, r7
001c98  9f058500  addli r11, r10, 64
001c9c  86300000  vfp162float_l.rn vr1, vr0
001ca0  06700000  vfp162float_h.rn vr0, vr0
001ca4  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
001ca8  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
001cac  3f0ff1fe  blt.s r2, r15, -64
001cb0  2bf10000  lui r2, 15
001cb4  e3411f00  loadli.w r3,  12(r30)
001cb8  00a00300  mfence { lm, sm, gm }
001cbc  1b11f1ff  ori r2, r2, 4095
001cc0  80210104  csr_set csr3, r2
001cc4  00d00100  sync_group
001cc8  cbc91122  ble.s r3, r1, 18032
001ccc  63032f00  loadli.w r6,  16(r30)
001cd0  e3432f00  loadli.w r7,  20(r30)
001cd4  9f088fd7  addli r17, r30, -5184
001cd8  1f150000  addli r10, zero, 1
001cdc  9f054000  addli r11, zero, 32
001ce0  1f767000  addli r12, zero, 63
001ce4  1f080002  addli r16, zero, 256
001ce8  1f090001  addli r18, zero, 128
001cec  9f098000  addli r19, zero, 64
001cf0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
001cf4  0b127310  add.s r4, r6, r7
001cf8  33010308  fix2float.rn r2, r6
001cfc  1b342300  slli r8, r6, 2
001d00  9b321300  slli r5, r6, 1
001d04  9bb42300  slli r9, r7, 2
001d08  1f72f2ff  addli r4, r4, -1
001d0c  670c2fd4  storeli.w r2, -5440(r30)
001d10  1f014300  addli r2, r6, 32
001d14  0b131411  add.s r6, r8, r17
001d18  0b941211  add.s r8, r5, r17
001d1c  67082fd4  storeli.w r2, -5504(r30)
001d20  1f0183ff  addli r2, r6, -64
001d24  2bf3ffff  lui r6, 1048575
001d28  0b127230  div.s r4, r4, r7
001d2c  67042fd4  storeli.w r2, -5568(r30)
001d30  1f0184ff  addli r2, r8, -64
001d34  9b16f3ff  ori r13, r6, 4095
001d38  2b530100  lui r6, 21
001d3c  67002fd4  storeli.w r2, -5632(r30)
001d40  1f010fd7  addli r2, r30, -5248
001d44  1f030300  addli r6, r6, 0
001d48  00a00000  mfence { lm }
001d4c  67045fd6  storeli.w r5, -5312(r30)
001d50  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001d54  5b080000  j 64
001d58  6b510f00  load.d r[3:4], 0(r30)
001d5c  00a00000  mfence { lm }
001d60  ab0800f0  lui r17, 983040
001d64  005a0102  load_param_i r20, 2
001d68  e3028fd6  loadli.w r5,  -5312(r30)
001d6c  8b101a10  add.s r1, r20, r1
001d70  8b237111  add.ul r[8:9], r[3:4], r[24:25]
001d74  1f018fd7  addli r2, r30, -5184
001d78  97981201  or r17, r5, r17
001d7c  ffb82300  s_lm2gm r17, r2, 0(r[8:9])
001d80  9f088fd7  addli r17, r30, -5184
001d84  00a00200  mfence { lm, gm }
001d88  63411f00  loadli.w r2,  12(r30)
001d8c  3fa02000  blt.s r1, r2, 8
001d90  5bb50800  j 17832
001d94  63011f00  loadli.w r2,  8(r30)
001d98  8b932010  add.s r7, r1, r2
001d9c  8b93f320  mul.s r7, r7, r15
001da0  b3930328  sext_int2long r[8:9], r7
001da4  97bba302  sll.d r[24:25], r[8:9], r10
001da8  1f047fd6  addli r8, r30, -5320
001dac  ab0300f0  lui r7, 983040
001db0  6b510400  load.d r[3:4], 0(r8)
001db4  97937200  or r7, r5, r7
001db8  0b2a7111  add.ul r[21:22], r[3:4], r[24:25]
001dbc  ff231a01  l_gm2lm r7, r17, 0(r[21:22])
001dc0  00a00200  mfence { lm, gm }
001dc4  bff0b700  blt.s r15, r11, 60
001dc8  e3030fd4  loadli.w r7,  -5632(r30)
001dcc  63048fd4  loadli.w r8,  -5568(r30)
001dd0  e3080fd5  loadli.w r17,  -5504(r30)
001dd4  c2800302  vload.mz vr1{mr1}, 0(r7)
001dd8  9f88c8ff  addli r17, r17, -32
001ddc  9f0a84ff  addli r21, r8, -64
001de0  9f8383ff  addli r7, r7, -64
001de4  130a1605  setlt.u r20, r12, r17
001de8  06f10000  vfp162float_h.rn vr2, vr1
001dec  86b00000  vfp162float_l.rn vr1, vr1
001df0  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
001df4  1f0404ff  addli r8, r8, -128
001df8  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
001dfc  3b6f0afe  bneq r20, zero, -40
001e00  00a00000  mfence { lm }
001e04  bf17a200  blt.s r4, r10, 484
001e08  1f0d0000  addli r26, zero, 0
001e0c  9f0c0000  addli r25, zero, 0
001e10  9f0d0000  addli r27, zero, 0
001e14  db0c0000  j 100
001e18  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
001e1c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001e20  9f9d0d00  addli r27, r27, 1
001e24  6a7108c0  vsrl.p vr2, r16, vr0
001e28  ea7118c0  vsrl.p vr3, r16, vr1
001e2c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e34  6a7109c0  vsrl.p vr2, r18, vr0
001e38  ea7119c0  vsrl.p vr3, r18, vr1
001e3c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e40  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e44  6af109c0  vsrl.p vr2, r19, vr0
001e48  eaf119c0  vsrl.p vr3, r19, vr1
001e4c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e54  6af105c0  vsrl.p vr2, r11, vr0
001e58  eaf115c0  vsrl.p vr3, r11, vr1
001e5c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
001e60  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
001e64  7a110040  vextracti.f r2, 0(vr0)
001e68  fa910040  vextracti.f r3, 0(vr1)
001e6c  0b6d2d10  add.f.rn r26, r26, r2
001e70  8bec3c10  add.f.rn r25, r25, r3
001e74  b7f54d00  beq r27, r4, 380
001e78  9f830d00  addli r7, r27, 0
001e7c  37300701  beq r14, r16, 12
001e80  97a3dd00  xor r7, r27, r13
001e84  8b137210  add.s r7, r4, r7
001e88  1f010fd7  addli r2, r30, -5248
001e8c  0b94e320  mul.s r8, r7, r14
001e90  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
001e94  0b948718  sub.s r8, r15, r8
001e98  0b1ee440  min.s r28, r8, r14
001e9c  12321002  vadd.s.mz vr4{mr1}, zero, vr1
001ea0  92311002  vadd.s.mz vr3{mr1}, zero, vr1
001ea4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
001ea8  bf4daefe  blt.s r28, r10, -144
001eac  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
001eb0  1f0a0000  addli r20, zero, 0
001eb4  8b9a7420  mul.s r21, r9, r7
001eb8  1f0b8fd7  addli r22, r30, -5184
001ebc  9f080300  addli r17, r6, 0
001ec0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
001ec4  12314002  vadd.s.mz vr2{mr1}, zero, vr4
001ec8  92314002  vadd.s.mz vr3{mr1}, zero, vr4
001ecc  0b945811  add.s r8, r17, r21
001ed0  8b135b11  add.s r7, r22, r21
001ed4  9f028400  addli r5, r8, 64
001ed8  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
001edc  9f018401  addli r3, r8, 192
001ee0  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
001ee4  1f818301  addli r2, r7, 192
001ee8  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
001eec  9f020401  addli r5, r8, 128
001ef0  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001ef4  9f818300  addli r3, r7, 64
001ef8  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001efc  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
001f00  9f820301  addli r5, r7, 128
001f04  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001f08  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
001f0c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001f10  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
001f14  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
001f18  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
001f1c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001f20  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001f24  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
001f28  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
001f2c  9f018a00  addli r3, r20, 64
001f30  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001f34  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001f38  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001f3c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
001f40  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
001f44  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
001f48  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
001f4c  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
001f50  4b2b3efe  ble.s r28, r3, -312
001f54  9f010402  addli r3, r8, 256
001f58  9f028402  addli r5, r8, 320
001f5c  1f810302  addli r2, r7, 256
001f60  1f0a0a01  addli r20, r20, 128
001f64  9f880804  addli r17, r17, 512
001f68  1f0b0b04  addli r22, r22, 512
001f6c  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
001f70  9f010403  addli r3, r8, 384
001f74  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
001f78  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
001f7c  9f828302  addli r5, r7, 320
001f80  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
001f84  9f018403  addli r3, r8, 448
001f88  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
001f8c  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
001f90  9f810303  addli r3, r7, 384
001f94  9f838303  addli r7, r7, 448
001f98  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
001f9c  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
001fa0  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
001fa4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
001fa8  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
001fac  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
001fb0  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
001fb4  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
001fb8  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
001fbc  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
001fc0  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
001fc4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
001fc8  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
001fcc  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
001fd0  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
001fd4  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
001fd8  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
001fdc  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
001fe0  bf3bcaff  blt.s r20, r28, -276
001fe4  dbc6ffff  j -460
001fe8  9f0c0000  addli r25, zero, 0
001fec  1f0d0000  addli r26, zero, 0
001ff0  00a00000  mfence { lm }
001ff4  bf95a7fe  blt.s r15, r10, -668
001ff8  63018fd5  loadli.w r2,  -5440(r30)
001ffc  2b6b0100  lui r22, 22
002000  9f030000  addli r7, zero, 0
002004  9f0a8fd7  addli r21, r30, -5184
002008  1f0b0b00  addli r22, r22, 0
00200c  8f082d18  div.f.rn r17, r26, r2
002010  0f842c18  div.f.rn r8, r25, r2
002014  63013f00  loadli.w r2,  24(r30)
002018  ab7c0100  lui r25, 23
00201c  9f8c0c00  addli r25, r25, 0
002020  0bea1821  mul.f.rn r20, r17, r17
002024  8be80858  neg.f r17, r17
002028  0b644419  sub.f.rn r8, r8, r20
00202c  1f0a8fd7  addli r20, r30, -5184
002030  0b642410  add.f.rn r8, r8, r2
002034  2b01803f  lui r2, 260096
002038  0f040408  sqrt.f.rn r8, r8
00203c  0f048118  div.f.rn r8, r2, r8
002040  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
002044  1f8d8a00  addli r26, r21, 64
002048  ca110b02  vloads_mask16.mz vr3{mr1}, 0(r22)
00204c  4a920c02  vloads_mask16.mz vr4{mr1}, 0(r25)
002050  9f8d8c00  addli r27, r25, 64
002054  9f834300  addli r7, r7, 32
002058  9f8c0c01  addli r25, r25, 128
00205c  9f8a0a01  addli r21, r21, 128
002060  42110d02  vload_mask16.mz vr2{mr1}, 0(r26)
002064  1f0d8b00  addli r26, r22, 64
002068  4a930d02  vloads_mask16.mz vr6{mr1}, 0(r27)
00206c  1f0b0b01  addli r22, r22, 128
002070  ca120d02  vloads_mask16.mz vr5{mr1}, 0(r26)
002074  92901802  vadd.f.mz.rn vr1{mr1}, r17, vr1
002078  12912802  vadd.f.mz.rn vr2{mr1}, r17, vr2
00207c  8a101402  vmul.f.mz.rn vr1{mr1}, r8, vr1
002080  0a112402  vmul.f.mz.rn vr2{mr1}, r8, vr2
002084  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
002088  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00208c  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
002090  86100200  vfloat2fp16_l.rn vr1, vr4
002094  86500300  vfloat2fp16_h.rn vr1, vr6
002098  46001a02  vstore.mz vr1{mr1}, 0(r20)
00209c  1f0a8a00  addli r20, r20, 64
0020a0  bf8ef3fe  blt.s r7, r15, -96
0020a4  db96ffff  j -844
0020a8  e3002f00  loadli.w r1,  16(r30)
0020ac  1f010010  addli r2, zero, 2048
0020b0  bba02008  bneq r1, r2, 4136
0020b4  2ba30200  lui r6, 42
0020b8  80300002  core_id r1
0020bc  1f030308  addli r6, r6, 1024
0020c0  3bd00000  bneq r1, zero, 20
0020c4  1f010040  addli r2, zero, 8192
0020c8  ab0100f0  lui r3, 983040
0020cc  17113100  or r2, r2, r3
0020d0  7f016200  l_gm2sm r2, r6, 0(r[5:6])
0020d4  2bf10000  lui r2, 15
0020d8  00200300  mfence { sm, gm }
0020dc  1b821000  andi r4, r1, 1
0020e0  9f020006  addli r5, zero, 768
0020e4  1b11f1ff  ori r2, r2, 4095
0020e8  80210104  csr_set csr3, r2
0020ec  1f010006  addli r2, zero, 768
0020f0  00d00100  sync_group
0020f4  37200200  beq r4, zero, 8
0020f8  9f02000a  addli r5, zero, 1280
0020fc  e3411f00  loadli.w r3,  12(r30)
002100  9f130000  addli r7, zero, 1
002104  bfd87120  blt.s r3, r7, 16948
002108  0b112220  mul.s r2, r4, r2
00210c  1bc51000  srli r10, r1, 1
002110  abf0ffff  lui r1, 1048575
002114  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002118  abca0200  lui r21, 44
00211c  2bcd0200  lui r26, 44
002120  80510102  load_param_i r3, 2
002124  9f030000  addli r7, zero, 0
002128  9bb52200  slli r11, r5, 2
00212c  9f068fd7  addli r13, r30, -5184
002130  9f080002  addli r17, zero, 256
002134  1f090001  addli r18, zero, 128
002138  9f098000  addli r19, zero, 64
00213c  1f0a4000  addli r20, zero, 32
002140  9f0c0003  addli r25, zero, 384
002144  67082fd6  storeli.w r2, -5248(r30)
002148  1f018fd6  addli r2, r30, -5312
00214c  9b9000f8  ori r1, r1, 3968
002150  9bc41100  srli r9, r3, 1
002154  9f8a0a08  addli r21, r21, 1024
002158  1f0d0d0c  addli r26, r26, 1536
00215c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002160  2bf10000  lui r2, 15
002164  670c1fd4  storeli.w r1, -5440(r30)
002168  9f000800  addli r1, r16, 0
00216c  1f080005  addli r16, zero, 640
002170  1b1bf1ff  ori r22, r2, 4095
002174  5b040000  j 32
002178  00a00300  mfence { lm, sm, gm }
00217c  80210b04  csr_set csr3, r22
002180  00d00100  sync_group
002184  e3401f00  loadli.w r1,  12(r30)
002188  8b939310  add.s r7, r7, r9
00218c  3fa01300  blt.s r7, r1, 8
002190  5b4bfdff  j -5544
002194  0b91a310  add.s r2, r7, r10
002198  cb8f20fe  ble.s r1, r2, -32
00219c  e3001f00  loadli.w r1,  8(r30)
0021a0  0b111110  add.s r2, r2, r1
0021a4  e3000fd7  loadli.w r1,  -5248(r30)
0021a8  1b31b100  slli r2, r2, 11
0021ac  17111100  or r2, r2, r1
0021b0  9f200000  addli r1, zero, 2
0021b4  33110128  sext_int2long r[3:4], r2
0021b8  973d1102  sll.d r[28:29], r[3:4], r1
0021bc  9f007fd6  addli r1, r30, -5320
0021c0  2b0100f0  lui r2, 983040
0021c4  6bd70000  load.d r[15:16], 0(r1)
0021c8  17912500  or r2, r11, r2
0021cc  0b27b711  add.ul r[15:16], r[15:16], r[28:29]
0021d0  7f21d700  l_gm2lm r2, r13, 0(r[15:16])
0021d4  1f010000  addli r2, zero, 0
0021d8  00a00200  mfence { lm, gm }
0021dc  3b060200  bneq r4, zero, 384
0021e0  9f008fd6  addli r1, r30, -5312
0021e4  e3018fd5  loadli.w r3,  -5440(r30)
0021e8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0021ec  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0021f0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0021f4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0021f8  0b176110  add.s r14, r2, r6
0021fc  0b962610  add.s r12, r13, r2
002200  9f810101  addli r3, r3, 128
002204  1f010104  addli r2, r2, 512
002208  9f000701  addli r1, r14, 128
00220c  4a100702  vloads_mask16.mz vr0{mr1}, 0(r14)
002210  1f048700  addli r8, r14, 64
002214  42140602  vload_mask16.mz vr8{mr1}, 0(r12)
002218  9f078601  addli r15, r12, 192
00221c  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
002220  9f008701  addli r1, r14, 192
002224  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002228  1f048600  addli r8, r12, 64
00222c  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
002230  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002234  9f000601  addli r1, r12, 128
002238  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
00223c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002240  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002244  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
002248  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00224c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002250  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002254  46100602  vstore_mask16.mz vr0{mr1}, 0(r12)
002258  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00225c  9f000702  addli r1, r14, 256
002260  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002264  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002268  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00226c  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002270  1f040603  addli r8, r12, 384
002274  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002278  9f008702  addli r1, r14, 320
00227c  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
002280  9f070602  addli r15, r12, 256
002284  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
002288  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00228c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002290  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002294  9f000703  addli r1, r14, 384
002298  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
00229c  1f078703  addli r14, r14, 448
0022a0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0022a4  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0022a8  9f008602  addli r1, r12, 320
0022ac  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
0022b0  1f068603  addli r12, r12, 448
0022b4  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0022b8  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0022bc  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0022c0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0022c4  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
0022c8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0022cc  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0022d0  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0022d4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0022d8  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0022dc  93800105  setlt.u r1, r3, r16
0022e0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0022e4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0022e8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0022ec  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0022f0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0022f4  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0022f8  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
0022fc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002300  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002304  bbdb00fe  bneq r1, zero, -268
002308  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
00230c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002310  6af108c0  vsrl.p vr2, r17, vr0
002314  eaf118c0  vsrl.p vr3, r17, vr1
002318  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00231c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002320  6a7109c0  vsrl.p vr2, r18, vr0
002324  ea7119c0  vsrl.p vr3, r18, vr1
002328  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00232c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002330  6af109c0  vsrl.p vr2, r19, vr0
002334  eaf119c0  vsrl.p vr3, r19, vr1
002338  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00233c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002340  6a710ac0  vsrl.p vr2, r20, vr0
002344  ea711ac0  vsrl.p vr3, r20, vr1
002348  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00234c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002350  7a160040  vextracti.f r12, 0(vr0)
002354  7a910040  vextracti.f r2, 0(vr1)
002358  db610000  j 780
00235c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
002360  abf0ffff  lui r1, 1048575
002364  12311002  vadd.s.mz vr2{mr1}, zero, vr1
002368  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00236c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
002370  9b9100f8  ori r3, r1, 3968
002374  0b172310  add.s r14, r6, r2
002378  0b962610  add.s r12, r13, r2
00237c  9f810101  addli r3, r3, 128
002380  1f010104  addli r2, r2, 512
002384  9f000731  addli r1, r14, 6272
002388  9f070730  addli r15, r14, 6144
00238c  1f048731  addli r8, r14, 6336
002390  1f0c0618  addli r24, r12, 3072
002394  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
002398  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
00239c  9f078730  addli r15, r14, 6208
0023a0  ca140402  vloads_mask16.mz vr9{mr1}, 0(r8)
0023a4  1f040619  addli r8, r12, 3200
0023a8  9f008618  addli r1, r12, 3136
0023ac  42130c02  vload_mask16.mz vr6{mr1}, 0(r24)
0023b0  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
0023b4  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
0023b8  9f078619  addli r15, r12, 3264
0023bc  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0023c0  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
0023c4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0023c8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0023cc  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0023d0  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0023d4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0023d8  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0023dc  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0023e0  1f040732  addli r8, r14, 6400
0023e4  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0023e8  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
0023ec  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0023f0  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
0023f4  9f07061a  addli r15, r12, 3328
0023f8  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0023fc  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
002400  9f00061b  addli r1, r12, 3456
002404  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
002408  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00240c  4a100402  vloads_mask16.mz vr0{mr1}, 0(r8)
002410  1f048732  addli r8, r14, 6464
002414  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002418  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00241c  4a130402  vloads_mask16.mz vr6{mr1}, 0(r8)
002420  1f040733  addli r8, r14, 6528
002424  1f078733  addli r14, r14, 6592
002428  4a140402  vloads_mask16.mz vr8{mr1}, 0(r8)
00242c  1f04861a  addli r8, r12, 3392
002430  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
002434  1f06861b  addli r12, r12, 3520
002438  c2140402  vload_mask16.mz vr9{mr1}, 0(r8)
00243c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
002440  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002444  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
002448  c2140602  vload_mask16.mz vr9{mr1}, 0(r12)
00244c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002450  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
002454  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002458  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00245c  46106402  vstore_mask16.mz vr6{mr1}, 0(r8)
002460  13849105  setlt.u r8, r3, r25
002464  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
002468  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00246c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
002470  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
002474  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
002478  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00247c  46107602  vstore_mask16.mz vr7{mr1}, 0(r12)
002480  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002484  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002488  bb3b04fe  bneq r8, zero, -276
00248c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002490  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002494  abf0ffff  lui r1, 1048575
002498  1f060000  addli r12, zero, 0
00249c  1b9c00f8  ori r24, r1, 3968
0024a0  eaf118c0  vsrl.p vr3, r17, vr1
0024a4  6af108c0  vsrl.p vr2, r17, vr0
0024a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024b0  ea7119c0  vsrl.p vr3, r18, vr1
0024b4  6a7109c0  vsrl.p vr2, r18, vr0
0024b8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024bc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024c0  eaf119c0  vsrl.p vr3, r19, vr1
0024c4  6af109c0  vsrl.p vr2, r19, vr0
0024c8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024d0  ea711ac0  vsrl.p vr3, r20, vr1
0024d4  6a710ac0  vsrl.p vr2, r20, vr0
0024d8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0024dc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0024e0  fa910040  vextracti.f r3, 0(vr1)
0024e4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0024e8  7a110040  vextracti.f r2, 0(vr0)
0024ec  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0024f0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0024f4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0024f8  8b17c310  add.s r15, r6, r12
0024fc  0b97c610  add.s r14, r13, r12
002500  1f0c0c01  addli r24, r24, 128
002504  1f060604  addli r12, r12, 512
002508  9f800718  addli r1, r15, 3072
00250c  1f840719  addli r8, r15, 3200
002510  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
002514  9f0b8701  addli r23, r14, 192
002518  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00251c  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
002520  9f808718  addli r1, r15, 3136
002524  1f848719  addli r8, r15, 3264
002528  c2950b02  vload_mask16.mz vr11{mr1}, 0(r23)
00252c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002530  9f000701  addli r1, r14, 128
002534  ca130402  vloads_mask16.mz vr7{mr1}, 0(r8)
002538  1f048700  addli r8, r14, 64
00253c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
002540  42150402  vload_mask16.mz vr10{mr1}, 0(r8)
002544  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
002548  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00254c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
002550  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
002554  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
002558  9f80071a  addli r1, r15, 3328
00255c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002560  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
002564  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
002568  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00256c  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
002570  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
002574  9f80871a  addli r1, r15, 3392
002578  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
00257c  9f0b0702  addli r23, r14, 256
002580  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
002584  1f040703  addli r8, r14, 384
002588  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
00258c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002590  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
002594  9f80071b  addli r1, r15, 3456
002598  c2930b02  vload_mask16.mz vr7{mr1}, 0(r23)
00259c  9f87871b  addli r15, r15, 3520
0025a0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0025a4  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0025a8  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0025ac  9f008702  addli r1, r14, 320
0025b0  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0025b4  1f078703  addli r14, r14, 448
0025b8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0025bc  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0025c0  c2130402  vload_mask16.mz vr7{mr1}, 0(r8)
0025c4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0025c8  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0025cc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0025d0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0025d4  46900b02  vstore_mask16.mz vr0{mr1}, 0(r23)
0025d8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0025dc  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0025e0  93000c05  setlt.u r1, r24, r16
0025e4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0025e8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0025ec  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0025f0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0025f4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0025f8  46105402  vstore_mask16.mz vr5{mr1}, 0(r8)
0025fc  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
002600  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
002604  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
002608  bbcb00fe  bneq r1, zero, -272
00260c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
002610  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002614  6af108c0  vsrl.p vr2, r17, vr0
002618  eaf118c0  vsrl.p vr3, r17, vr1
00261c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002620  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002624  6a7109c0  vsrl.p vr2, r18, vr0
002628  ea7119c0  vsrl.p vr3, r18, vr1
00262c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002630  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002634  6af109c0  vsrl.p vr2, r19, vr0
002638  eaf119c0  vsrl.p vr3, r19, vr1
00263c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002640  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002644  6a710ac0  vsrl.p vr2, r20, vr0
002648  ea711ac0  vsrl.p vr3, r20, vr1
00264c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002650  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
002654  fa100040  vextracti.f r1, 0(vr0)
002658  7a940040  vextracti.f r8, 0(vr1)
00265c  0b661110  add.f.rn r12, r2, r1
002660  0be18110  add.f.rn r2, r3, r8
002664  8b809330  div.u r1, r7, r9
002668  80310002  core_id r3
00266c  9f078fd7  addli r15, r30, -5184
002670  1f0c0000  addli r24, zero, 0
002674  9bb06000  slli r1, r1, 6
002678  9b800004  andi r1, r1, 64
00267c  97903000  or r1, r1, r3
002680  9bb12000  slli r3, r1, 2
002684  9b80e007  andi r1, r1, 126
002688  0b945111  add.s r8, r3, r21
00268c  9bb02000  slli r1, r1, 2
002690  7360c400  stores.w r12, 0(r8)
002694  0b94a111  add.s r8, r3, r26
002698  9b914100  ori r3, r3, 4
00269c  73602400  stores.w r2, 0(r8)
0026a0  0b915111  add.s r2, r3, r21
0026a4  0b945011  add.s r8, r1, r21
0026a8  8b91a111  add.s r3, r3, r26
0026ac  8b90a011  add.s r1, r1, r26
0026b0  00a00300  mfence { lm, sm, gm }
0026b4  80210b04  csr_set csr3, r22
0026b8  00d00100  sync_group
0026bc  6f410100  loads.w r2, 0(r2)
0026c0  6f440400  loads.w r8, 0(r8)
0026c4  efc10100  loads.w r3, 0(r3)
0026c8  efc00000  loads.w r1, 0(r1)
0026cc  0b618110  add.f.rn r2, r2, r8
0026d0  8be01110  add.f.rn r1, r3, r1
0026d4  ab01003a  lui r3, 237568
0026d8  0b643120  mul.f.rn r8, r2, r3
0026dc  8be03020  mul.f.rn r1, r1, r3
0026e0  0b618420  mul.f.rn r2, r8, r8
0026e4  0b670458  neg.f r14, r8
0026e8  8be02018  sub.f.rn r1, r1, r2
0026ec  63013f00  loadli.w r2,  24(r30)
0026f0  8be02010  add.f.rn r1, r1, r2
0026f4  2b01803f  lui r2, 260096
0026f8  8f800008  sqrt.f.rn r1, r1
0026fc  0f061118  div.f.rn r12, r2, r1
002700  eb500f00  load.d r[2:3], 0(r30)
002704  0ba1b011  add.ul r[3:4], r[2:3], r[28:29]
002708  9f808700  addli r1, r15, 64
00270c  42900702  vload_mask16.mz vr0{mr1}, 0(r15)
002710  1f044c00  addli r8, r24, 32
002714  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002718  13848206  setle.u r8, r5, r8
00271c  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
002720  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
002724  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
002728  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
00272c  46900702  vstore_mask16.mz vr0{mr1}, 0(r15)
002730  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002734  bb700400  bneq r8, zero, 60
002738  9f800701  addli r1, r15, 128
00273c  1f848701  addli r8, r15, 192
002740  1f0c8c00  addli r24, r24, 64
002744  9f870702  addli r15, r15, 256
002748  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00274c  c2100402  vload_mask16.mz vr1{mr1}, 0(r8)
002750  930b5c04  setlt.u r23, r24, r5
002754  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
002758  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
00275c  0a100602  vmul.f.mz.rn vr0{mr1}, r12, vr0
002760  8a101602  vmul.f.mz.rn vr1{mr1}, r12, vr1
002764  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002768  46101402  vstore_mask16.mz vr1{mr1}, 0(r8)
00276c  3bfe0bfe  bneq r23, zero, -100
002770  ab0000f0  lui r1, 983040
002774  00a00000  mfence { lm }
002778  97901500  or r1, r11, r1
00277c  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
002780  00a00200  mfence { lm, gm }
002784  5b40ffff  j -1536
002788  80300002  core_id r1
00278c  bb800000  bneq r1, zero, 32
002790  63012f00  loadli.w r2,  16(r30)
002794  ab0100f0  lui r3, 983040
002798  1b311100  slli r2, r2, 1
00279c  17113100  or r2, r2, r3
0027a0  abc10100  lui r3, 28
0027a4  9f810100  addli r3, r3, 0
0027a8  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0027ac  2bf10000  lui r2, 15
0027b0  e3411f00  loadli.w r3,  12(r30)
0027b4  00200300  mfence { sm, gm }
0027b8  1b11f1ff  ori r2, r2, 4095
0027bc  80210104  csr_set csr3, r2
0027c0  00d00100  sync_group
0027c4  cbdd111c  ble.s r3, r1, 15220
0027c8  63012f00  loadli.w r2,  16(r30)
0027cc  e3412f00  loadli.w r3,  20(r30)
0027d0  1f052000  addli r10, zero, 16
0027d4  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0027d8  1f130000  addli r6, zero, 1
0027dc  9f040002  addli r9, zero, 256
0027e0  ab05ffff  lui r11, 1048560
0027e4  ab06807f  lui r13, 522240
0027e8  2b08c07f  lui r16, 523264
0027ec  9f080001  addli r17, zero, 128
0027f0  1f098000  addli r18, zero, 64
0027f4  9f094000  addli r19, zero, 32
0027f8  1b3b1100  slli r22, r2, 1
0027fc  0b123110  add.s r4, r2, r3
002800  33010108  fix2float.rn r2, r2
002804  67042fd4  storeli.w r2, -5568(r30)
002808  1f71f2ff  addli r2, r4, -1
00280c  1bb21100  slli r4, r3, 1
002810  67086fd5  storeli.w r22, -5504(r30)
002814  8b123130  div.s r5, r2, r3
002818  2bf1ffff  lui r2, 1048575
00281c  9f018fd7  addli r3, r30, -5184
002820  1b14f1ff  ori r8, r2, 4095
002824  1f010fd7  addli r2, r30, -5248
002828  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00282c  6a200522  vor.u.mz vr0{mr1}, r10, vr0
002830  1f018fd6  addli r2, r30, -5312
002834  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
002838  2b710000  lui r2, 7
00283c  1b16f1ff  ori r12, r2, 4095
002840  db080000  j 68
002844  9f038fd5  addli r7, r30, -5440
002848  6b510f00  load.d r[3:4], 0(r30)
00284c  6bda0300  load.d r[21:22], 0(r7)
002850  00a00000  mfence { lm }
002854  80530102  load_param_i r7, 2
002858  630b0fd5  loadli.w r22,  -5504(r30)
00285c  8b901310  add.s r1, r7, r1
002860  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
002864  2b0100f0  lui r2, 983040
002868  9f018fd7  addli r3, r30, -5184
00286c  17112b00  or r2, r22, r2
002870  7f313a00  s_lm2gm r2, r3, 0(r[21:22])
002874  00a00200  mfence { lm, gm }
002878  63411f00  loadli.w r2,  12(r30)
00287c  3fa02000  blt.s r1, r2, 8
002880  5b570700  j 15032
002884  63011f00  loadli.w r2,  8(r30)
002888  9f037fd6  addli r7, r30, -5320
00288c  0b912010  add.s r2, r1, r2
002890  0b11f120  mul.s r2, r2, r15
002894  331a0128  sext_int2long r[21:22], r2
002898  2b0100f0  lui r2, 983040
00289c  973b6a02  sll.d r[24:25], r[21:22], r6
0028a0  6bda0300  load.d r[21:22], 0(r7)
0028a4  17112b00  or r2, r22, r2
0028a8  9f038fd5  addli r7, r30, -5440
0028ac  73b07301  store.d r[24:25], 0(r7)
0028b0  0b2a7a11  add.ul r[21:22], r[21:22], r[24:25]
0028b4  7f213a00  l_gm2lm r2, r3, 0(r[21:22])
0028b8  00a00200  mfence { lm, gm }
0028bc  bfdc6200  blt.s r5, r6, 820
0028c0  9f0c0000  addli r25, zero, 0
0028c4  1f0c0000  addli r24, zero, 0
0028c8  1f0d0000  addli r26, zero, 0
0028cc  db0c0000  j 100
0028d0  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
0028d4  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
0028d8  1f1d0d00  addli r26, r26, 1
0028dc  6af104c0  vsrl.p vr2, r9, vr0
0028e0  eaf114c0  vsrl.p vr3, r9, vr1
0028e4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028e8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028ec  6af108c0  vsrl.p vr2, r17, vr0
0028f0  eaf118c0  vsrl.p vr3, r17, vr1
0028f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0028f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0028fc  6a7109c0  vsrl.p vr2, r18, vr0
002900  ea7119c0  vsrl.p vr3, r18, vr1
002904  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002908  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00290c  6af109c0  vsrl.p vr2, r19, vr0
002910  eaf119c0  vsrl.p vr3, r19, vr1
002914  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
002918  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00291c  7a110040  vextracti.f r2, 0(vr0)
002920  fa910040  vextracti.f r3, 0(vr1)
002924  8bec2c10  add.f.rn r25, r25, r2
002928  0b6c3c10  add.f.rn r24, r24, r3
00292c  373b5d00  beq r26, r5, 716
002930  1f010d00  addli r2, r26, 0
002934  37309700  beq r14, r9, 12
002938  17218d00  xor r2, r26, r8
00293c  0b912210  add.s r2, r5, r2
002940  9f010fd7  addli r3, r30, -5248
002944  8b13e120  mul.s r7, r2, r14
002948  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
00294c  8b937718  sub.s r7, r15, r7
002950  8b9de340  min.s r27, r7, r14
002954  92322002  vadd.s.mz vr5{mr1}, zero, vr2
002958  12322002  vadd.s.mz vr4{mr1}, zero, vr2
00295c  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002960  bfcd6dfe  blt.s r27, r6, -144
002964  0b1a2220  mul.s r20, r4, r2
002968  1f010fd7  addli r2, r30, -5248
00296c  abca0100  lui r21, 28
002970  1f0e0000  addli r28, zero, 0
002974  9f038fd7  addli r7, r30, -5184
002978  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
00297c  9f8a0a00  addli r21, r21, 0
002980  12315002  vadd.s.mz vr2{mr1}, zero, vr5
002984  92315002  vadd.s.mz vr3{mr1}, zero, vr5
002988  12325002  vadd.s.mz vr4{mr1}, zero, vr5
00298c  0b9b4a11  add.s r22, r21, r20
002990  0b914311  add.s r2, r7, r20
002994  9f018fd6  addli r3, r30, -5312
002998  4a030b02  vloads.mz vr6{mr1}, 0(r22)
00299c  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0029a0  c2030102  vload.mz vr7{mr1}, 0(r2)
0029a4  9f010fd7  addli r3, r30, -5248
0029a8  9f0b8b00  addli r23, r22, 64
0029ac  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0029b0  9f018e00  addli r3, r28, 64
0029b4  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
0029b8  6ab57502  vand.s.mz vr10{mr1}, r11, vr7
0029bc  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
0029c0  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
0029c4  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
0029c8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0029cc  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
0029d0  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
0029d4  669503c0  vabs.f vr10, vr7
0029d8  6a348302  vand.s.mz vr8{mr1}, r6, vr8
0029dc  ea349302  vand.s.mz vr9{mr1}, r6, vr9
0029e0  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
0029e4  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
0029e8  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
0029ec  12348602  vadd.s.mz vr8{mr1}, r12, vr8
0029f0  92349602  vadd.s.mz vr9{mr1}, r12, vr9
0029f4  eab38502  vand.s.mz vr7{mr1}, r11, vr8
0029f8  661403c0  vabs.f vr8, vr6
0029fc  6ab39502  vand.s.mz vr6{mr1}, r11, vr9
002a00  ea230834  vor.u.mh vr7{mr2}, r16, vr0
002a04  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002a08  6a230834  vor.u.mh vr6{mr2}, r16, vr0
002a0c  4a840b02  vloads.mz vr8{mr1}, 0(r23)
002a10  9f0b8100  addli r23, r2, 64
002a14  c2840b02  vload.mz vr9{mr1}, 0(r23)
002a18  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
002a1c  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
002a20  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002a24  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
002a28  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a2c  46007102  vstore.mz vr7{mr1}, 0(r2)
002a30  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a34  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a38  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
002a3c  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
002a40  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002a44  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
002a48  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
002a4c  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
002a50  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
002a54  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
002a58  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
002a5c  ea349302  vand.s.mz vr9{mr1}, r6, vr9
002a60  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002a64  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
002a68  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
002a6c  661505c0  vabs.f vr10, vr10
002a70  661404c0  vabs.f vr8, vr8
002a74  92349602  vadd.s.mz vr9{mr1}, r12, vr9
002a78  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002a7c  72a1a642  vlt.u.mz mr2{mr1}, r13, vr10
002a80  eab49502  vand.s.mz vr9{mr1}, r11, vr9
002a84  6ab5b502  vand.s.mz vr10{mr1}, r11, vr11
002a88  ea240834  vor.u.mh vr9{mr2}, r16, vr0
002a8c  72a18642  vlt.u.mz mr2{mr1}, r13, vr8
002a90  6a250834  vor.u.mh vr10{mr2}, r16, vr0
002a94  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
002a98  eab4a502  vand.s.mz vr9{mr1}, r11, vr10
002a9c  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
002aa0  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002aa4  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002aa8  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
002aac  46808b02  vstore.mz vr8{mr1}, 0(r23)
002ab0  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002ab4  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002ab8  4be83dfe  ble.s r27, r3, -488
002abc  9f010b01  addli r3, r22, 128
002ac0  9f0b0101  addli r23, r2, 128
002ac4  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
002ac8  1f018101  addli r2, r2, 192
002acc  1f0e0e01  addli r28, r28, 128
002ad0  9f8a0a02  addli r21, r21, 256
002ad4  9f830302  addli r7, r7, 256
002ad8  6a237522  vor.u.mz vr6{mr1}, r10, vr7
002adc  4a840102  vloads.mz vr8{mr1}, 0(r3)
002ae0  c2840b02  vload.mz vr9{mr1}, 0(r23)
002ae4  9f018b01  addli r3, r22, 192
002ae8  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
002aec  6ab09502  vand.s.mz vr0{mr1}, r11, vr9
002af0  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
002af4  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002af8  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
002afc  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
002b00  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
002b04  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
002b08  e69504c0  vabs.f vr11, vr9
002b0c  6a300302  vand.s.mz vr0{mr1}, r6, vr0
002b10  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002b14  72a1b642  vlt.u.mz mr2{mr1}, r13, vr11
002b18  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
002b1c  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
002b20  12300602  vadd.s.mz vr0{mr1}, r12, vr0
002b24  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b28  eab40502  vand.s.mz vr9{mr1}, r11, vr0
002b2c  661004c0  vabs.f vr0, vr8
002b30  6ab4a502  vand.s.mz vr8{mr1}, r11, vr10
002b34  ea247834  vor.u.mh vr9{mr2}, r16, vr7
002b38  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002b3c  6a247834  vor.u.mh vr8{mr2}, r16, vr7
002b40  4a800102  vloads.mz vr0{mr1}, 0(r3)
002b44  42050102  vload.mz vr10{mr1}, 0(r2)
002b48  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
002b4c  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
002b50  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002b54  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
002b58  6ab48502  vand.s.mz vr8{mr1}, r11, vr8
002b5c  46809b02  vstore.mz vr9{mr1}, 0(r23)
002b60  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
002b64  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
002b68  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
002b6c  6ab00502  vand.s.mz vr0{mr1}, r11, vr0
002b70  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
002b74  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002b78  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
002b7c  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
002b80  6a35a302  vand.s.mz vr10{mr1}, r6, vr10
002b84  ea35b302  vand.s.mz vr11{mr1}, r6, vr11
002b88  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
002b8c  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
002b90  e69000c0  vabs.f vr1, vr1
002b94  661000c0  vabs.f vr0, vr0
002b98  1235a602  vadd.s.mz vr10{mr1}, r12, vr10
002b9c  9235b602  vadd.s.mz vr11{mr1}, r12, vr11
002ba0  72a11642  vlt.u.mz mr2{mr1}, r13, vr1
002ba4  6ab5a502  vand.s.mz vr10{mr1}, r11, vr10
002ba8  eab0b502  vand.s.mz vr1{mr1}, r11, vr11
002bac  6a257834  vor.u.mh vr10{mr2}, r16, vr7
002bb0  72a10642  vlt.u.mz mr2{mr1}, r13, vr0
002bb4  ea207834  vor.u.mh vr1{mr2}, r16, vr7
002bb8  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
002bbc  eab31502  vand.s.mz vr7{mr1}, r11, vr1
002bc0  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
002bc4  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
002bc8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002bcc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002bd0  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
002bd4  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
002bd8  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
002bdc  46000102  vstore.mz vr0{mr1}, 0(r2)
002be0  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002be4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
002be8  bf16beff  blt.s r28, r27, -604
002bec  db9cffff  j -796
002bf0  1f0c0000  addli r24, zero, 0
002bf4  9f0c0000  addli r25, zero, 0
002bf8  00a00000  mfence { lm }
002bfc  3fa167fe  blt.s r15, r6, -952
002c00  63018fd4  loadli.w r2,  -5568(r30)
002c04  e3013f00  loadli.w r3,  24(r30)
002c08  9f0a0000  addli r21, zero, 0
002c0c  8f832c18  div.f.rn r7, r25, r2
002c10  0f012c18  div.f.rn r2, r24, r2
002c14  0bea7320  mul.f.rn r20, r7, r7
002c18  8be30358  neg.f r7, r7
002c1c  0b614119  sub.f.rn r2, r2, r20
002c20  1f0a8fd7  addli r20, r30, -5184
002c24  0b613110  add.f.rn r2, r2, r3
002c28  ab01803f  lui r3, 260096
002c2c  0f010108  sqrt.f.rn r2, r2
002c30  0f812118  div.f.rn r2, r3, r2
002c34  42020a02  vload.mz vr4{mr1}, 0(r20)
002c38  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
002c3c  1f8b4a00  addli r22, r21, 32
002c40  ea212522  vor.u.mz vr3{mr1}, r10, vr2
002c44  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002c48  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002c4c  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002c50  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002c54  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002c58  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002c5c  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002c60  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002c64  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002c68  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002c6c  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002c70  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002c74  e69202c0  vabs.f vr5, vr5
002c78  661202c0  vabs.f vr4, vr4
002c7c  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002c80  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002c84  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002c88  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002c8c  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002c90  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002c94  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002c98  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002c9c  6eb261c2  vsrl.s.mz vr4{mr1}, vr3, vr6
002ca0  6eb24222  vor.s.mz vr4{mr1}, vr5, vr4
002ca4  46004a02  vstore.mz vr4{mr1}, 0(r20)
002ca8  4bfe67fd  ble.s r15, r22, -1124
002cac  1f0b8a00  addli r22, r20, 64
002cb0  9f8a8a00  addli r21, r21, 64
002cb4  1f0a0a01  addli r20, r20, 128
002cb8  42020b02  vload.mz vr4{mr1}, 0(r22)
002cbc  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
002cc0  6ab24502  vand.s.mz vr4{mr1}, r11, vr4
002cc4  92925302  vadd.f.mz.rn vr5{mr1}, r7, vr5
002cc8  12924302  vadd.f.mz.rn vr4{mr1}, r7, vr4
002ccc  8a125102  vmul.f.mz.rn vr5{mr1}, r2, vr5
002cd0  0a124102  vmul.f.mz.rn vr4{mr1}, r2, vr4
002cd4  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
002cd8  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
002cdc  6a336302  vand.s.mz vr6{mr1}, r6, vr6
002ce0  ea337302  vand.s.mz vr7{mr1}, r6, vr7
002ce4  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
002ce8  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
002cec  e69202c0  vabs.f vr5, vr5
002cf0  661202c0  vabs.f vr4, vr4
002cf4  12336602  vadd.s.mz vr6{mr1}, r12, vr6
002cf8  92337602  vadd.s.mz vr7{mr1}, r12, vr7
002cfc  72a15642  vlt.u.mz mr2{mr1}, r13, vr5
002d00  6ab36502  vand.s.mz vr6{mr1}, r11, vr6
002d04  eab27502  vand.s.mz vr5{mr1}, r11, vr7
002d08  6a232834  vor.u.mh vr6{mr2}, r16, vr2
002d0c  72a14642  vlt.u.mz mr2{mr1}, r13, vr4
002d10  ea222834  vor.u.mh vr5{mr2}, r16, vr2
002d14  eeb161c2  vsrl.s.mz vr3{mr1}, vr3, vr6
002d18  6eb13222  vor.s.mz vr2{mr1}, vr5, vr3
002d1c  46002b02  vstore.mz vr2{mr1}, 0(r22)
002d20  3fdcfafe  blt.s r21, r15, -236
002d24  5b64ffff  j -1248
002d28  80300002  core_id r1
002d2c  bb800000  bneq r1, zero, 32
002d30  63012f00  loadli.w r2,  16(r30)
002d34  ab0100f0  lui r3, 983040
002d38  1b311100  slli r2, r2, 1
002d3c  17113100  or r2, r2, r3
002d40  ab010200  lui r3, 32
002d44  9f810100  addli r3, r3, 0
002d48  7f013200  l_gm2sm r2, r3, 0(r[5:6])
002d4c  2bf10000  lui r2, 15
002d50  e3411f00  loadli.w r3,  12(r30)
002d54  00200300  mfence { sm, gm }
002d58  1b11f1ff  ori r2, r2, 4095
002d5c  80210104  csr_set csr3, r2
002d60  00d00100  sync_group
002d64  4bd7111a  ble.s r3, r1, 13780
002d68  e3012f00  loadli.w r3,  16(r30)
002d6c  e3422f00  loadli.w r5,  20(r30)
002d70  2bf4ffff  lui r8, 1048575
002d74  2b080200  lui r16, 32
002d78  9f068fd7  addli r13, r30, -5184
002d7c  9f040002  addli r9, zero, 256
002d80  1f050001  addli r10, zero, 128
002d84  9f058000  addli r11, zero, 64
002d88  1f064000  addli r12, zero, 32
002d8c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
002d90  1b14f4ff  ori r8, r8, 4095
002d94  1f080800  addli r16, r16, 0
002d98  0b925110  add.s r4, r3, r5
002d9c  1bb11100  slli r2, r3, 1
002da0  b3810108  fix2float.rn r3, r3
002da4  1f73f2ff  addli r6, r4, -1
002da8  1bb21200  slli r4, r5, 1
002dac  8b125330  div.s r5, r6, r5
002db0  1f130000  addli r6, zero, 1
002db4  5b070000  j 56
002db8  eb590f00  load.d r[20:21], 0(r30)
002dbc  9f068fd7  addli r13, r30, -5184
002dc0  00a00000  mfence { lm }
002dc4  8ba81911  add.ul r[18:19], r[20:21], r[18:19]
002dc8  ab0900f0  lui r19, 983040
002dcc  005a0102  load_param_i r20, 2
002dd0  97193101  or r19, r2, r19
002dd4  8b101a10  add.s r1, r20, r1
002dd8  ffb9d800  s_lm2gm r19, r13, 0(r[18:19])
002ddc  00a00200  mfence { lm, gm }
002de0  e3431f00  loadli.w r7,  12(r30)
002de4  3fa07000  blt.s r1, r7, 8
002de8  5baa0600  j 13648
002dec  e3031f00  loadli.w r7,  8(r30)
002df0  ab0900f0  lui r19, 983040
002df4  97193101  or r19, r2, r19
002df8  8b987010  add.s r17, r1, r7
002dfc  9f037fd6  addli r7, r30, -5320
002e00  8b98f820  mul.s r17, r17, r15
002e04  6bda0300  load.d r[21:22], 0(r7)
002e08  b3980828  sext_int2long r[18:19], r17
002e0c  97b86802  sll.d r[18:19], r[18:19], r6
002e10  0b2a1a11  add.ul r[21:22], r[21:22], r[18:19]
002e14  ff29da00  l_gm2lm r19, r13, 0(r[21:22])
002e18  00a00200  mfence { lm, gm }
002e1c  3fc76200  blt.s r5, r6, 464
002e20  1f0a0000  addli r20, zero, 0
002e24  9f090000  addli r19, zero, 0
002e28  9f0a0000  addli r21, zero, 0
002e2c  db0c0000  j 100
002e30  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
002e34  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002e38  9f9a0a00  addli r21, r21, 1
002e3c  6af134c0  vsrl.p vr2, r9, vr3
002e40  6af214c0  vsrl.p vr4, r9, vr1
002e44  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
002e48  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e4c  ea7125c0  vsrl.p vr3, r10, vr2
002e50  6a7215c0  vsrl.p vr4, r10, vr1
002e54  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e58  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e5c  eaf125c0  vsrl.p vr3, r11, vr2
002e60  6af215c0  vsrl.p vr4, r11, vr1
002e64  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e68  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e6c  ea7126c0  vsrl.p vr3, r12, vr2
002e70  6a7216c0  vsrl.p vr4, r12, vr1
002e74  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
002e78  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
002e7c  fa130140  vextracti.f r7, 0(vr2)
002e80  fa960040  vextracti.f r13, 0(vr1)
002e84  0b6a7a10  add.f.rn r20, r20, r7
002e88  8be9d910  add.f.rn r19, r19, r13
002e8c  b7a55a00  beq r21, r5, 360
002e90  1f8c0a00  addli r24, r21, 0
002e94  37309700  beq r14, r9, 12
002e98  17ab8a00  xor r22, r21, r8
002e9c  0b9c6211  add.s r24, r5, r22
002ea0  0b1bec20  mul.s r22, r24, r14
002ea4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002ea8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002eac  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002eb0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002eb4  0b9b6719  sub.s r22, r15, r22
002eb8  0b1beb40  min.s r22, r22, r14
002ebc  bf5d6bfe  blt.s r22, r6, -140
002ec0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002ec4  12310002  vadd.s.mz vr2{mr1}, zero, vr0
002ec8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
002ecc  12320002  vadd.s.mz vr4{mr1}, zero, vr0
002ed0  9f0b0000  addli r23, zero, 0
002ed4  0b1c8221  mul.s r24, r4, r24
002ed8  9f0c8fd7  addli r25, r30, -5184
002edc  1f0d0800  addli r26, r16, 0
002ee0  8b1d8d11  add.s r27, r26, r24
002ee4  9f838b00  addli r7, r23, 64
002ee8  ca820d02  vloads.mz vr5{mr1}, 0(r27)
002eec  1f8e8d00  addli r28, r27, 64
002ef0  4a030e02  vloads.mz vr6{mr1}, 0(r28)
002ef4  0b9e8c11  add.s r28, r25, r24
002ef8  c2030e02  vload.mz vr7{mr1}, 0(r28)
002efc  9f068e00  addli r13, r28, 64
002f00  42840602  vload.mz vr8{mr1}, 0(r13)
002f04  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002f08  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002f0c  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
002f10  06b40300  vfp162float_l.rn vr8, vr7
002f14  86f30300  vfp162float_h.rn vr7, vr7
002f18  86340300  vfp162float_l.rn vr9, vr6
002f1c  06730300  vfp162float_h.rn vr6, vr6
002f20  86120400  vfloat2fp16_l.rn vr5, vr8
002f24  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
002f28  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
002f2c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
002f30  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002f34  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002f38  06940400  vfloat2fp16_l.rn vr8, vr9
002f3c  86d20300  vfloat2fp16_h.rn vr5, vr7
002f40  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002f44  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002f48  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
002f4c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
002f50  06540300  vfloat2fp16_h.rn vr8, vr6
002f54  46005e02  vstore.mz vr5{mr1}, 0(r28)
002f58  46808602  vstore.mz vr8{mr1}, 0(r13)
002f5c  4b5b7bfe  ble.s r22, r7, -300
002f60  9f830d01  addli r7, r27, 128
002f64  9f060e01  addli r13, r28, 128
002f68  9f8b0b01  addli r23, r23, 128
002f6c  1f0d0d02  addli r26, r26, 256
002f70  9f8c0c02  addli r25, r25, 256
002f74  ca820302  vloads.mz vr5{mr1}, 0(r7)
002f78  9f838d01  addli r7, r27, 192
002f7c  c2830602  vload.mz vr7{mr1}, 0(r13)
002f80  4a830302  vloads.mz vr6{mr1}, 0(r7)
002f84  9f038e01  addli r7, r28, 192
002f88  42840302  vload.mz vr8{mr1}, 0(r7)
002f8c  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
002f90  92320002  vadd.s.mz vr5{mr1}, zero, vr0
002f94  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
002f98  12330002  vadd.s.mz vr6{mr1}, zero, vr0
002f9c  86b40300  vfp162float_l.rn vr9, vr7
002fa0  86f30300  vfp162float_h.rn vr7, vr7
002fa4  86920400  vfloat2fp16_l.rn vr5, vr9
002fa8  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
002fac  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
002fb0  86340400  vfp162float_l.rn vr9, vr8
002fb4  06740400  vfp162float_h.rn vr8, vr8
002fb8  06930400  vfloat2fp16_l.rn vr6, vr9
002fbc  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
002fc0  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
002fc4  86d20300  vfloat2fp16_h.rn vr5, vr7
002fc8  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
002fcc  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
002fd0  06530400  vfloat2fp16_h.rn vr6, vr8
002fd4  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
002fd8  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
002fdc  46805602  vstore.mz vr5{mr1}, 0(r13)
002fe0  46806302  vstore.mz vr6{mr1}, 0(r7)
002fe4  bffb6bff  blt.s r23, r22, -260
002fe8  5bc9ffff  j -440
002fec  9f090000  addli r19, zero, 0
002ff0  1f0a0000  addli r20, zero, 0
002ff4  00a00000  mfence { lm }
002ff8  3f8767fe  blt.s r15, r6, -576
002ffc  0f0a3a18  div.f.rn r20, r20, r3
003000  8f893918  div.f.rn r19, r19, r3
003004  e3033f00  loadli.w r7,  24(r30)
003008  1f0b0000  addli r22, zero, 0
00300c  8b6a4a21  mul.f.rn r21, r20, r20
003010  0b6a0a58  neg.f r20, r20
003014  8be95919  sub.f.rn r19, r19, r21
003018  9f0a8fd7  addli r21, r30, -5184
00301c  8be97910  add.f.rn r19, r19, r7
003020  ab03803f  lui r7, 260096
003024  8f890908  sqrt.f.rn r19, r19
003028  8f893319  div.f.rn r19, r7, r19
00302c  c2800a02  vload.mz vr1{mr1}, 0(r21)
003030  9f0b4b00  addli r23, r22, 32
003034  06b10000  vfp162float_l.rn vr2, vr1
003038  86f00000  vfp162float_h.rn vr1, vr1
00303c  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003040  92111a02  vadd.f.mz.rn vr3{mr1}, r20, vr1
003044  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003048  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00304c  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
003050  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003054  06120100  vfloat2fp16_l.rn vr4, vr2
003058  06d20100  vfloat2fp16_h.rn vr4, vr3
00305c  46804a02  vstore.mz vr4{mr1}, 0(r21)
003060  4be577ff  ble.s r15, r23, -680
003064  9f8b8a00  addli r23, r21, 64
003068  1f0b8b00  addli r22, r22, 64
00306c  9f8a0a01  addli r21, r21, 128
003070  42810b02  vload.mz vr2{mr1}, 0(r23)
003074  86310100  vfp162float_l.rn vr3, vr2
003078  06710100  vfp162float_h.rn vr2, vr2
00307c  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
003080  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003084  8a913902  vmul.f.mz.rn vr3{mr1}, r19, vr3
003088  0a912902  vmul.f.mz.rn vr2{mr1}, r19, vr2
00308c  86900100  vfloat2fp16_l.rn vr1, vr3
003090  86500100  vfloat2fp16_h.rn vr1, vr2
003094  46801b02  vstore.mz vr1{mr1}, 0(r23)
003098  3f5efbfe  blt.s r22, r15, -108
00309c  dba3ffff  j -740
0030a0  80300002  core_id r1
0030a4  1f210000  addli r2, zero, 2
0030a8  37aa2016  beq r1, r2, 11912
0030ac  1f110000  addli r2, zero, 1
0030b0  378c2012  beq r1, r2, 9984
0030b4  3bea0016  bneq r1, zero, 11928
0030b8  63012f00  loadli.w r2,  16(r30)
0030bc  ab0100f0  lui r3, 983040
0030c0  1b312100  slli r2, r2, 2
0030c4  17113100  or r2, r2, r3
0030c8  ab710200  lui r3, 39
0030cc  9f810108  addli r3, r3, 1024
0030d0  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030d4  5bcf0500  j 11896
0030d8  80300002  core_id r1
0030dc  bb800000  bneq r1, zero, 32
0030e0  63012f00  loadli.w r2,  16(r30)
0030e4  ab0100f0  lui r3, 983040
0030e8  1b312100  slli r2, r2, 2
0030ec  17113100  or r2, r2, r3
0030f0  abd10200  lui r3, 45
0030f4  9f8101f0  addli r3, r3, -2048
0030f8  7f013200  l_gm2sm r2, r3, 0(r[5:6])
0030fc  2bf10000  lui r2, 15
003100  e3411f00  loadli.w r3,  12(r30)
003104  00200300  mfence { sm, gm }
003108  1b11f1ff  ori r2, r2, 4095
00310c  80210104  csr_set csr3, r2
003110  00d00100  sync_group
003114  cb981118  ble.s r3, r1, 12836
003118  e3012f00  loadli.w r3,  16(r30)
00311c  e3422f00  loadli.w r5,  20(r30)
003120  abf4ffff  lui r9, 1048575
003124  abd80200  lui r17, 45
003128  1f0b8fd7  addli r22, r30, -5184
00312c  1f140000  addli r8, zero, 1
003130  1f050002  addli r10, zero, 256
003134  9f050001  addli r11, zero, 128
003138  1f068000  addli r12, zero, 64
00313c  9f064000  addli r13, zero, 32
003140  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003144  9b94f4ff  ori r9, r9, 4095
003148  9f8808f0  addli r17, r17, -2048
00314c  0b925110  add.s r4, r3, r5
003150  1bb12100  slli r2, r3, 2
003154  b3810108  fix2float.rn r3, r3
003158  1f73f2ff  addli r6, r4, -1
00315c  1bb22200  slli r4, r5, 2
003160  67043fd6  storeli.w r3, -5312(r30)
003164  9f010fd7  addli r3, r30, -5248
003168  8b125330  div.s r5, r6, r5
00316c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003170  5b070000  j 56
003174  6b530f00  load.d r[7:8], 0(r30)
003178  2b0800f0  lui r16, 983040
00317c  1f0b8fd7  addli r22, r30, -5184
003180  00a00000  mfence { lm }
003184  005a0102  load_param_i r20, 2
003188  17180101  or r16, r2, r16
00318c  8b101a10  add.s r1, r20, r1
003190  0b292311  add.ul r[19:20], r[7:8], r[19:20]
003194  7f386901  s_lm2gm r16, r22, 0(r[19:20])
003198  00a00200  mfence { lm, gm }
00319c  e3411f00  loadli.w r3,  12(r30)
0031a0  3fa03000  blt.s r1, r3, 8
0031a4  db320600  j 12692
0031a8  e3011f00  loadli.w r3,  8(r30)
0031ac  0b983010  add.s r16, r1, r3
0031b0  9f210000  addli r3, zero, 2
0031b4  0b18f820  mul.s r16, r16, r15
0031b8  33190828  sext_int2long r[19:20], r16
0031bc  2b0800f0  lui r16, 983040
0031c0  17393902  sll.d r[19:20], r[19:20], r3
0031c4  9f017fd6  addli r3, r30, -5320
0031c8  17180101  or r16, r2, r16
0031cc  6bd30100  load.d r[7:8], 0(r3)
0031d0  0b2a2311  add.ul r[21:22], r[7:8], r[19:20]
0031d4  7f286a01  l_gm2lm r16, r22, 0(r[21:22])
0031d8  00a00200  mfence { lm, gm }
0031dc  bf978200  blt.s r5, r8, 484
0031e0  9f0a0000  addli r21, zero, 0
0031e4  1f0a0000  addli r20, zero, 0
0031e8  1f0b0000  addli r22, zero, 0
0031ec  db0c0000  j 100
0031f0  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
0031f4  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0031f8  1f1b0b00  addli r22, r22, 1
0031fc  6a7105c0  vsrl.p vr2, r10, vr0
003200  ea7115c0  vsrl.p vr3, r10, vr1
003204  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003208  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00320c  6af105c0  vsrl.p vr2, r11, vr0
003210  eaf115c0  vsrl.p vr3, r11, vr1
003214  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003218  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00321c  6a7106c0  vsrl.p vr2, r12, vr0
003220  ea7116c0  vsrl.p vr3, r12, vr1
003224  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003228  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00322c  6af106c0  vsrl.p vr2, r13, vr0
003230  eaf116c0  vsrl.p vr3, r13, vr1
003234  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003238  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00323c  fa110040  vextracti.f r3, 0(vr0)
003240  7a930040  vextracti.f r6, 0(vr1)
003244  8bea3a10  add.f.rn r21, r21, r3
003248  0b6a6a10  add.f.rn r20, r20, r6
00324c  b7755b00  beq r22, r5, 380
003250  1f080b00  addli r16, r22, 0
003254  3730a700  beq r14, r10, 12
003258  17289b00  xor r16, r22, r9
00325c  0b980211  add.s r16, r5, r16
003260  9f010fd7  addli r3, r30, -5248
003264  8b1be820  mul.s r23, r16, r14
003268  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
00326c  8b9b7719  sub.s r23, r15, r23
003270  8b9beb40  min.s r23, r23, r14
003274  12321002  vadd.s.mz vr4{mr1}, zero, vr1
003278  92311002  vadd.s.mz vr3{mr1}, zero, vr1
00327c  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003280  bfcd8bfe  blt.s r23, r8, -144
003284  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
003288  1f0c0000  addli r24, zero, 0
00328c  8b1c0221  mul.s r25, r4, r16
003290  1f0d8fd7  addli r26, r30, -5184
003294  9f8d0800  addli r27, r17, 0
003298  92304002  vadd.s.mz vr1{mr1}, zero, vr4
00329c  12314002  vadd.s.mz vr2{mr1}, zero, vr4
0032a0  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0032a4  0b989d11  add.s r16, r27, r25
0032a8  0b1e9d11  add.s r28, r26, r25
0032ac  1f038800  addli r6, r16, 64
0032b0  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
0032b4  9f038801  addli r7, r16, 192
0032b8  c2140e02  vload_mask16.mz vr9{mr1}, 0(r28)
0032bc  9f018e01  addli r3, r28, 192
0032c0  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
0032c4  1f030801  addli r6, r16, 128
0032c8  4a940302  vloads_mask16.mz vr8{mr1}, 0(r7)
0032cc  9f030e01  addli r7, r28, 128
0032d0  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0032d4  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
0032d8  c2950302  vload_mask16.mz vr11{mr1}, 0(r7)
0032dc  1f038e00  addli r6, r28, 64
0032e0  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
0032e4  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0032e8  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0032ec  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
0032f0  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
0032f4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0032f8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0032fc  46105e02  vstore_mask16.mz vr5{mr1}, 0(r28)
003300  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
003304  1f038c00  addli r6, r24, 64
003308  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00330c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
003310  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003314  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
003318  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00331c  46907302  vstore_mask16.mz vr7{mr1}, 0(r7)
003320  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
003324  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
003328  4bab6bfe  ble.s r23, r6, -312
00332c  1f030802  addli r6, r16, 256
003330  9f038802  addli r7, r16, 320
003334  9f010e02  addli r3, r28, 256
003338  1f0c0c01  addli r24, r24, 128
00333c  9f8d0d04  addli r27, r27, 512
003340  1f0d0d04  addli r26, r26, 512
003344  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
003348  1f030803  addli r6, r16, 384
00334c  ca920302  vloads_mask16.mz vr5{mr1}, 0(r7)
003350  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
003354  9f038e02  addli r7, r28, 320
003358  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
00335c  1f038803  addli r6, r16, 448
003360  1f088e03  addli r16, r28, 448
003364  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
003368  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
00336c  1f030e03  addli r6, r28, 384
003370  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
003374  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
003378  42130802  vload_mask16.mz vr6{mr1}, 0(r16)
00337c  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003380  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003384  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003388  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00338c  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
003390  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
003394  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
003398  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
00339c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0033a0  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
0033a4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0033a8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0033ac  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0033b0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0033b4  46106802  vstore_mask16.mz vr6{mr1}, 0(r16)
0033b8  bf3b7cff  blt.s r24, r23, -276
0033bc  dbc6ffff  j -460
0033c0  1f0a0000  addli r20, zero, 0
0033c4  9f0a0000  addli r21, zero, 0
0033c8  00a00000  mfence { lm }
0033cc  bfa687fe  blt.s r15, r8, -600
0033d0  e3018fd6  loadli.w r3,  -5312(r30)
0033d4  1f0b0000  addli r22, zero, 0
0033d8  8f8a3a18  div.f.rn r21, r21, r3
0033dc  0f083a18  div.f.rn r16, r20, r3
0033e0  e3013f00  loadli.w r3,  24(r30)
0033e4  0bea5a21  mul.f.rn r20, r21, r21
0033e8  0b684819  sub.f.rn r16, r16, r20
0033ec  0bea0a58  neg.f r20, r21
0033f0  9f0a8fd7  addli r21, r30, -5184
0033f4  0b683810  add.f.rn r16, r16, r3
0033f8  ab01803f  lui r3, 260096
0033fc  0f080808  sqrt.f.rn r16, r16
003400  0f880119  div.f.rn r16, r3, r16
003404  9f8b8a00  addli r23, r21, 64
003408  c2900a02  vload_mask16.mz vr1{mr1}, 0(r21)
00340c  1f0c4b00  addli r24, r22, 32
003410  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
003414  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
003418  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
00341c  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003420  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003424  46901a02  vstore_mask16.mz vr1{mr1}, 0(r21)
003428  46902b02  vstore_mask16.mz vr2{mr1}, 0(r23)
00342c  4ba587ff  ble.s r15, r24, -696
003430  9f8b0a01  addli r23, r21, 128
003434  1f8c8a01  addli r24, r21, 192
003438  1f0b8b00  addli r22, r22, 64
00343c  9f8a0a02  addli r21, r21, 256
003440  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
003444  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
003448  92101a02  vadd.f.mz.rn vr1{mr1}, r20, vr1
00344c  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
003450  8a101802  vmul.f.mz.rn vr1{mr1}, r16, vr1
003454  0a112802  vmul.f.mz.rn vr2{mr1}, r16, vr2
003458  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
00345c  46102c02  vstore_mask16.mz vr2{mr1}, 0(r24)
003460  bf1efbfe  blt.s r22, r15, -92
003464  5ba2ffff  j -752
003468  80300002  core_id r1
00346c  ab630000  lui r7, 6
003470  1f110000  addli r2, zero, 1
003474  1f038fd7  addli r6, r30, -5184
003478  1f048000  addli r8, zero, 64
00347c  1f050010  addli r10, zero, 2048
003480  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
003484  9bb15000  slli r3, r1, 5
003488  80500102  load_param_i r1, 2
00348c  9f830308  addli r7, r7, 1024
003490  9bb45000  slli r9, r1, 5
003494  b3850128  zext_int2long r[12:13], r3
003498  ab0600f0  lui r13, 983040
00349c  97b52502  sll.d r[12:13], r[12:13], r2
0034a0  9716d400  or r13, r8, r13
0034a4  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
0034a8  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
0034ac  9bb52100  slli r11, r3, 2
0034b0  8b913410  add.s r3, r9, r3
0034b4  00a00200  mfence { lm, gm }
0034b8  c2000302  vload.mz vr1{mr1}, 0(r6)
0034bc  1386a104  setlt.u r12, r3, r10
0034c0  8b957510  add.s r11, r11, r7
0034c4  9f868500  addli r13, r11, 64
0034c8  66c11180  vmerge_l.hf vr2, vr3, vr1
0034cc  e6c011a0  vmerge_h.hf vr1, vr3, vr1
0034d0  4e902502  vstores_mask16.mz vr2{mr1}, 0(r11)
0034d4  4e901602  vstores_mask16.mz vr1{mr1}, 0(r13)
0034d8  bb7e06fe  bneq r12, zero, -68
0034dc  2bf10000  lui r2, 15
0034e0  80310002  core_id r3
0034e4  00a00300  mfence { lm, sm, gm }
0034e8  9f020006  addli r5, zero, 768
0034ec  1b11f1ff  ori r2, r2, 4095
0034f0  1b821100  andi r4, r3, 1
0034f4  80210104  csr_set csr3, r2
0034f8  1f010006  addli r2, zero, 768
0034fc  00d00100  sync_group
003500  37200200  beq r4, zero, 8
003504  9f02000a  addli r5, zero, 1280
003508  e3411f00  loadli.w r3,  12(r30)
00350c  1f140000  addli r8, zero, 1
003510  bfa88116  blt.s r3, r8, 11816
003514  0b112220  mul.s r2, r4, r2
003518  1bcc1000  srli r24, r1, 1
00351c  80300002  core_id r1
003520  9bb11200  slli r3, r5, 1
003524  67044fd4  storeli.w r4, -5568(r30)
003528  1f824200  addli r4, r5, 32
00352c  9f040000  addli r9, zero, 0
003530  9f797000  addli r19, zero, 63
003534  9f0a0005  addli r21, zero, 640
003538  2b09803f  lui r18, 260096
00353c  1f0a2000  addli r20, zero, 16
003540  1f370000  addli r14, zero, 3
003544  2bee7f00  lui r28, 2046
003548  9f551000  addli r11, zero, 13
00354c  1f2b1000  addli r22, zero, 10
003550  9f0b0003  addli r23, zero, 384
003554  67002fd4  storeli.w r2, -5632(r30)
003558  9bcc1000  srli r25, r1, 1
00355c  1bb12200  slli r2, r5, 2
003560  9f008fd7  addli r1, r30, -5184
003564  67083fd6  storeli.w r3, -5248(r30)
003568  674f4fd2  storeli.w r4, -5644(r30)
00356c  2be20700  lui r4, 126
003570  0b111110  add.s r2, r2, r1
003574  8b911110  add.s r3, r3, r1
003578  1f0181ff  addli r2, r2, -64
00357c  670f2fd2  storeli.w r2, -5648(r30)
003580  1f8181ff  addli r2, r3, -64
003584  abf100fc  lui r3, 1032207
003588  e74e2fd2  storeli.w r2, -5652(r30)
00358c  2bf1ffff  lui r2, 1048575
003590  9b9601c0  ori r13, r3, 3072
003594  00a00000  mfence { lm }
003598  e74f8fd3  storeli.w r24, -5636(r30)
00359c  e70f9fd3  storeli.w r25, -5640(r30)
0035a0  1b1101f8  ori r2, r2, 3968
0035a4  e70e2fd2  storeli.w r2, -5656(r30)
0035a8  2bf10000  lui r2, 15
0035ac  1b11f1ff  ori r2, r2, 4095
0035b0  67042fd6  storeli.w r2, -5312(r30)
0035b4  2b710000  lui r2, 7
0035b8  1b13f1ff  ori r6, r2, 4095
0035bc  2b01ff03  lui r2, 16368
0035c0  1b16f13f  ori r12, r2, 1023
0035c4  1f010fd5  addli r2, r30, -5504
0035c8  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0035cc  5b040000  j 32
0035d0  00a00300  mfence { lm, sm, gm }
0035d4  63018fd6  loadli.w r2,  -5312(r30)
0035d8  80210104  csr_set csr3, r2
0035dc  00d00100  sync_group
0035e0  8b948411  add.s r9, r9, r24
0035e4  3fa00401  blt.s r9, r16, 8
0035e8  5bc0faff  j -10752
0035ec  0b919411  add.s r2, r9, r25
0035f0  cb0f28fe  ble.s r16, r2, -32
0035f4  e3011f00  loadli.w r3,  8(r30)
0035f8  63050fd4  loadli.w r10,  -5632(r30)
0035fc  0b113110  add.s r2, r2, r3
003600  8b818431  div.u r3, r9, r24
003604  1b31b100  slli r2, r2, 11
003608  1711a100  or r2, r2, r10
00360c  1f057fd6  addli r10, r30, -5320
003610  33180128  sext_int2long r[17:18], r2
003614  2b0100f0  lui r2, 983040
003618  9bb16100  slli r3, r3, 6
00361c  173d8802  sll.d r[27:28], r[17:18], r8
003620  eb570500  load.d r[16:17], 0(r10)
003624  63050fd7  loadli.w r10,  -5248(r30)
003628  9b810104  andi r3, r3, 64
00362c  0ba8a711  add.ul r[17:18], r[16:17], r[27:28]
003630  17112500  or r2, r10, r2
003634  7f211800  l_gm2lm r2, r1, 0(r[17:18])
003638  00310002  core_id r2
00363c  00a00200  mfence { lm, gm }
003640  17912100  or r2, r3, r2
003644  e341dfd3  loadli.w r3,  -5652(r30)
003648  6305efd3  loadli.w r10,  -5648(r30)
00364c  6348efd3  loadli.w r16,  -5644(r30)
003650  c2800102  vload.mz vr1{mr1}, 0(r3)
003654  1f08c8ff  addli r16, r16, -32
003658  1f0c85ff  addli r24, r10, -64
00365c  9f8181ff  addli r3, r3, -64
003660  93880905  setlt.u r17, r19, r16
003664  66c111a0  vmerge_h.hf vr2, vr3, vr1
003668  e6c01180  vmerge_l.hf vr1, vr3, vr1
00366c  46102502  vstore_mask16.mz vr2{mr1}, 0(r10)
003670  1f0505ff  addli r10, r10, -128
003674  46101c02  vstore_mask16.mz vr1{mr1}, 0(r24)
003678  3bef08fe  bneq r17, zero, -40
00367c  00a00000  mfence { lm }
003680  1f058fd5  addli r10, r30, -5440
003684  e3018fd4  loadli.w r3,  -5568(r30)
003688  7330a501  store.d r[27:28], 0(r10)
00368c  3bb60100  bneq r3, zero, 396
003690  92303002  vadd.s.mz vr1{mr1}, zero, vr3
003694  12313002  vadd.s.mz vr2{mr1}, zero, vr3
003698  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00369c  6305dfd3  loadli.w r10,  -5656(r30)
0036a0  9f010000  addli r3, zero, 0
0036a4  8b987110  add.s r17, r3, r7
0036a8  0b983010  add.s r16, r1, r3
0036ac  1f050501  addli r10, r10, 128
0036b0  9f810104  addli r3, r3, 512
0036b4  9f870801  addli r15, r17, 128
0036b8  4a900802  vloads_mask16.mz vr0{mr1}, 0(r17)
0036bc  1f8c8800  addli r24, r17, 64
0036c0  42140802  vload_mask16.mz vr8{mr1}, 0(r16)
0036c4  9f0c8801  addli r25, r16, 192
0036c8  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
0036cc  9f878801  addli r15, r17, 192
0036d0  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0036d4  1f0c8800  addli r24, r16, 64
0036d8  c2950c02  vload_mask16.mz vr11{mr1}, 0(r25)
0036dc  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
0036e0  9f070801  addli r15, r16, 128
0036e4  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
0036e8  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
0036ec  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
0036f0  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
0036f4  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
0036f8  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
0036fc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003700  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
003704  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
003708  9f870802  addli r15, r17, 256
00370c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003710  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003714  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003718  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
00371c  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003720  9f878802  addli r15, r17, 320
003724  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
003728  9f0c0802  addli r25, r16, 256
00372c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003730  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003734  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003738  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
00373c  9f870803  addli r15, r17, 384
003740  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003744  9f888803  addli r17, r17, 448
003748  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00374c  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003750  9f078802  addli r15, r16, 320
003754  4a950802  vloads_mask16.mz vr10{mr1}, 0(r17)
003758  9f080803  addli r17, r16, 384
00375c  1f088803  addli r16, r16, 448
003760  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003764  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003768  c2930802  vload_mask16.mz vr7{mr1}, 0(r17)
00376c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003770  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
003774  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003778  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00377c  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
003780  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003784  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003788  93075505  setlt.u r15, r10, r21
00378c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003790  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003794  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003798  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
00379c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0037a0  46905802  vstore_mask16.mz vr5{mr1}, 0(r17)
0037a4  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
0037a8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0037ac  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0037b0  bbdb07fe  bneq r15, zero, -268
0037b4  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0037b8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0037bc  9f010002  addli r3, zero, 256
0037c0  6af101c0  vsrl.p vr2, r3, vr0
0037c4  eaf111c0  vsrl.p vr3, r3, vr1
0037c8  9f010001  addli r3, zero, 128
0037cc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037d4  6af101c0  vsrl.p vr2, r3, vr0
0037d8  eaf111c0  vsrl.p vr3, r3, vr1
0037dc  9f018000  addli r3, zero, 64
0037e0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037e4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037e8  6af101c0  vsrl.p vr2, r3, vr0
0037ec  eaf111c0  vsrl.p vr3, r3, vr1
0037f0  9f014000  addli r3, zero, 32
0037f4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0037f8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0037fc  6af101c0  vsrl.p vr2, r3, vr0
003800  eaf111c0  vsrl.p vr3, r3, vr1
003804  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003808  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00380c  fa110040  vextracti.f r3, 0(vr0)
003810  7a950040  vextracti.f r10, 0(vr1)
003814  5b660000  j 816
003818  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00381c  2bf5ffff  lui r10, 1048575
003820  9f010000  addli r3, zero, 0
003824  12311002  vadd.s.mz vr2{mr1}, zero, vr1
003828  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00382c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
003830  1b1505f8  ori r10, r10, 3968
003834  8b983310  add.s r17, r7, r3
003838  0b983010  add.s r16, r1, r3
00383c  1f050501  addli r10, r10, 128
003840  9f810104  addli r3, r3, 512
003844  9f870831  addli r15, r17, 6272
003848  1f8c0830  addli r24, r17, 6144
00384c  9f8c8831  addli r25, r17, 6336
003850  9f0d0818  addli r27, r16, 3072
003854  ca930702  vloads_mask16.mz vr7{mr1}, 0(r15)
003858  ca120c02  vloads_mask16.mz vr5{mr1}, 0(r24)
00385c  1f8c8830  addli r24, r17, 6208
003860  ca940c02  vloads_mask16.mz vr9{mr1}, 0(r25)
003864  9f078818  addli r15, r16, 3136
003868  9f0c8819  addli r25, r16, 3264
00386c  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
003870  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
003874  1f0c0819  addli r24, r16, 3200
003878  42900c02  vload_mask16.mz vr0{mr1}, 0(r25)
00387c  c2950702  vload_mask16.mz vr11{mr1}, 0(r15)
003880  42150c02  vload_mask16.mz vr10{mr1}, 0(r24)
003884  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
003888  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
00388c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
003890  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
003894  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003898  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
00389c  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
0038a0  1f8c0832  addli r24, r17, 6400
0038a4  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0038a8  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
0038ac  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0038b0  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
0038b4  9f0c081a  addli r25, r16, 3328
0038b8  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
0038bc  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0038c0  9f07081b  addli r15, r16, 3456
0038c4  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0038c8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0038cc  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
0038d0  1f8c8832  addli r24, r17, 6464
0038d4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0038d8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0038dc  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0038e0  1f8c0833  addli r24, r17, 6528
0038e4  9f888833  addli r17, r17, 6592
0038e8  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
0038ec  1f0c881a  addli r24, r16, 3392
0038f0  4a950802  vloads_mask16.mz vr10{mr1}, 0(r17)
0038f4  1f08881b  addli r16, r16, 3520
0038f8  93087505  setlt.u r17, r10, r23
0038fc  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
003900  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003904  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
003908  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
00390c  c2140802  vload_mask16.mz vr9{mr1}, 0(r16)
003910  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003914  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003918  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
00391c  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003920  46106c02  vstore_mask16.mz vr6{mr1}, 0(r24)
003924  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003928  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00392c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003930  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003934  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003938  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
00393c  46107802  vstore_mask16.mz vr7{mr1}, 0(r16)
003940  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003944  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003948  bbbb08fe  bneq r17, zero, -276
00394c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003950  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003954  9f010002  addli r3, zero, 256
003958  abf7ffff  lui r15, 1048575
00395c  1f0c0000  addli r24, zero, 0
003960  1b9807f8  ori r16, r15, 3968
003964  eaf111c0  vsrl.p vr3, r3, vr1
003968  6af101c0  vsrl.p vr2, r3, vr0
00396c  9f010001  addli r3, zero, 128
003970  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003974  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003978  eaf111c0  vsrl.p vr3, r3, vr1
00397c  6af101c0  vsrl.p vr2, r3, vr0
003980  9f018000  addli r3, zero, 64
003984  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003988  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00398c  eaf111c0  vsrl.p vr3, r3, vr1
003990  6af101c0  vsrl.p vr2, r3, vr0
003994  9f014000  addli r3, zero, 32
003998  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00399c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0039a0  eaf111c0  vsrl.p vr3, r3, vr1
0039a4  6af101c0  vsrl.p vr2, r3, vr0
0039a8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0039ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0039b0  7a950040  vextracti.f r10, 0(vr1)
0039b4  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0039b8  fa110040  vextracti.f r3, 0(vr0)
0039bc  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0039c0  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0039c4  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0039c8  8b9d8311  add.s r27, r7, r24
0039cc  8b988011  add.s r17, r1, r24
0039d0  1f080801  addli r16, r16, 128
0039d4  1f0c0c04  addli r24, r24, 512
0039d8  9f870d18  addli r15, r27, 3072
0039dc  9f8c0d19  addli r25, r27, 3200
0039e0  42940802  vload_mask16.mz vr8{mr1}, 0(r17)
0039e4  1f8d8801  addli r26, r17, 192
0039e8  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0039ec  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
0039f0  9f878d18  addli r15, r27, 3136
0039f4  9f8c8d19  addli r25, r27, 3264
0039f8  c2150d02  vload_mask16.mz vr11{mr1}, 0(r26)
0039fc  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003a00  9f870801  addli r15, r17, 128
003a04  ca930c02  vloads_mask16.mz vr7{mr1}, 0(r25)
003a08  9f8c8800  addli r25, r17, 64
003a0c  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a10  42950c02  vload_mask16.mz vr10{mr1}, 0(r25)
003a14  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
003a18  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
003a1c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
003a20  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
003a24  46908702  vstore_mask16.mz vr8{mr1}, 0(r15)
003a28  9f870d1a  addli r15, r27, 3328
003a2c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
003a30  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003a34  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
003a38  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
003a3c  46900802  vstore_mask16.mz vr0{mr1}, 0(r17)
003a40  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
003a44  9f878d1a  addli r15, r27, 3392
003a48  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
003a4c  1f8d0802  addli r26, r17, 256
003a50  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
003a54  9f8c0803  addli r25, r17, 384
003a58  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
003a5c  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
003a60  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
003a64  9f870d1b  addli r15, r27, 3456
003a68  c2130d02  vload_mask16.mz vr7{mr1}, 0(r26)
003a6c  9f8d8d1b  addli r27, r27, 3520
003a70  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
003a74  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
003a78  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
003a7c  9f878802  addli r15, r17, 320
003a80  4a950d02  vloads_mask16.mz vr10{mr1}, 0(r27)
003a84  9f888803  addli r17, r17, 448
003a88  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
003a8c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
003a90  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
003a94  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
003a98  c2940802  vload_mask16.mz vr9{mr1}, 0(r17)
003a9c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
003aa0  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
003aa4  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
003aa8  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
003aac  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
003ab0  93075805  setlt.u r15, r16, r21
003ab4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
003ab8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
003abc  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
003ac0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
003ac4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
003ac8  46905c02  vstore_mask16.mz vr5{mr1}, 0(r25)
003acc  46907802  vstore_mask16.mz vr7{mr1}, 0(r17)
003ad0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
003ad4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
003ad8  bbcb07fe  bneq r15, zero, -272
003adc  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
003ae0  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003ae4  9f070002  addli r15, zero, 256
003ae8  6af107c0  vsrl.p vr2, r15, vr0
003aec  eaf117c0  vsrl.p vr3, r15, vr1
003af0  9f070001  addli r15, zero, 128
003af4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003af8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003afc  6af107c0  vsrl.p vr2, r15, vr0
003b00  eaf117c0  vsrl.p vr3, r15, vr1
003b04  9f078000  addli r15, zero, 64
003b08  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b0c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b10  6af107c0  vsrl.p vr2, r15, vr0
003b14  eaf117c0  vsrl.p vr3, r15, vr1
003b18  9f074000  addli r15, zero, 32
003b1c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b20  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b24  6af107c0  vsrl.p vr2, r15, vr0
003b28  eaf117c0  vsrl.p vr3, r15, vr1
003b2c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003b30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003b34  fa170040  vextracti.f r15, 0(vr0)
003b38  7a980040  vextracti.f r16, 0(vr1)
003b3c  8be1f110  add.f.rn r3, r3, r15
003b40  0b650511  add.f.rn r10, r10, r16
003b44  2b8d0000  lui r26, 8
003b48  ab8d0000  lui r27, 8
003b4c  9b372100  slli r15, r2, 2
003b50  634cffd3  loadli.w r24,  -5636(r30)
003b54  e30cffd3  loadli.w r25,  -5640(r30)
003b58  1b01e107  andi r2, r2, 126
003b5c  1f0d0d08  addli r26, r26, 1024
003b60  9f8d0d0c  addli r27, r27, 1536
003b64  1b312100  slli r2, r2, 2
003b68  0b98a711  add.s r16, r15, r26
003b6c  8b98b711  add.s r17, r15, r27
003b70  73603800  stores.w r3, 0(r16)
003b74  73e0a800  stores.w r10, 0(r17)
003b78  1f088fd7  addli r16, r30, -5184
003b7c  9f080000  addli r17, zero, 0
003b80  00a00300  mfence { lm, sm, gm }
003b84  e3018fd6  loadli.w r3,  -5312(r30)
003b88  80a10104  csr_set csr3, r3
003b8c  9b914700  ori r3, r15, 4
003b90  8b17a111  add.s r15, r2, r26
003b94  00d00100  sync_group
003b98  0b11b111  add.s r2, r2, r27
003b9c  0b95a111  add.s r10, r3, r26
003ba0  efc70700  loads.w r15, 0(r15)
003ba4  8b91b111  add.s r3, r3, r27
003ba8  6f410100  loads.w r2, 0(r2)
003bac  6f450500  loads.w r10, 0(r10)
003bb0  efc10100  loads.w r3, 0(r3)
003bb4  0b65f510  add.f.rn r10, r10, r15
003bb8  ab07003a  lui r15, 237568
003bbc  0be12110  add.f.rn r2, r3, r2
003bc0  8b61f520  mul.f.rn r3, r10, r15
003bc4  0b61f120  mul.f.rn r2, r2, r15
003bc8  0be53120  mul.f.rn r10, r3, r3
003bcc  8be10158  neg.f r3, r3
003bd0  0b61a118  sub.f.rn r2, r2, r10
003bd4  63053f00  loadli.w r10,  24(r30)
003bd8  0b61a110  add.f.rn r2, r2, r10
003bdc  1f058fd7  addli r10, r30, -5184
003be0  0f010108  sqrt.f.rn r2, r2
003be4  0f012918  div.f.rn r2, r18, r2
003be8  9f078800  addli r15, r16, 64
003bec  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
003bf0  9f884800  addli r17, r17, 32
003bf4  1f080801  addli r16, r16, 128
003bf8  c2900702  vload_mask16.mz vr1{mr1}, 0(r15)
003bfc  93875804  setlt.u r15, r17, r5
003c00  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
003c04  12911102  vadd.f.mz.rn vr2{mr1}, r3, vr1
003c08  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
003c0c  ea211a22  vor.u.mz vr3{mr1}, r20, vr1
003c10  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
003c14  0a112102  vmul.f.mz.rn vr2{mr1}, r2, vr2
003c18  6eb201c2  vsrl.s.mz vr4{mr1}, vr3, vr0
003c1c  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c20  6a324402  vand.s.mz vr4{mr1}, r8, vr4
003c24  ea313402  vand.s.mz vr3{mr1}, r8, vr3
003c28  16304002  vadd.s.mz vr0{mr1}, vr0, vr4
003c2c  6a221722  vor.u.mz vr4{mr1}, r14, vr1
003c30  16313102  vadd.s.mz vr2{mr1}, vr2, vr3
003c34  eaa11522  vor.u.mz vr3{mr1}, r11, vr1
003c38  ea201b22  vor.u.mz vr1{mr1}, r22, vr1
003c3c  12300302  vadd.s.mz vr0{mr1}, r6, vr0
003c40  12312302  vadd.s.mz vr2{mr1}, r6, vr2
003c44  eeb201c2  vsrl.s.mz vr5{mr1}, vr3, vr0
003c48  6e3002c2  vsrl.s.mz vr0{mr1}, vr4, vr0
003c4c  eeb121c2  vsrl.s.mz vr3{mr1}, vr3, vr2
003c50  6e3122c2  vsrl.s.mz vr2{mr1}, vr4, vr2
003c54  6a325202  vand.s.mz vr4{mr1}, r4, vr5
003c58  6a300e02  vand.s.mz vr0{mr1}, r28, vr0
003c5c  ea313202  vand.s.mz vr3{mr1}, r4, vr3
003c60  6a312e02  vand.s.mz vr2{mr1}, r28, vr2
003c64  6a300922  vor.s.mz vr0{mr1}, r18, vr0
003c68  6a324922  vor.s.mz vr4{mr1}, r18, vr4
003c6c  ea313922  vor.s.mz vr3{mr1}, r18, vr3
003c70  6a312922  vor.s.mz vr2{mr1}, r18, vr2
003c74  06100020  vfloat2fp16_l.rz vr0, vr0
003c78  86d10120  vfloat2fp16_h.rz vr3, vr3
003c7c  06500120  vfloat2fp16_h.rz vr0, vr2
003c80  86110220  vfloat2fp16_l.rz vr3, vr4
003c84  6a300602  vand.s.mz vr0{mr1}, r12, vr0
003c88  eeb030a2  vsll.s.mz vr1{mr1}, vr1, vr3
003c8c  eab01602  vand.s.mz vr1{mr1}, r13, vr1
003c90  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
003c94  46000502  vstore.mz vr0{mr1}, 0(r10)
003c98  1f058500  addli r10, r10, 64
003c9c  3bbd07fe  bneq r15, zero, -180
003ca0  9f018fd5  addli r3, r30, -5440
003ca4  eb570f00  load.d r[16:17], 0(r30)
003ca8  2b0100f0  lui r2, 983040
003cac  6bdd0100  load.d r[27:28], 0(r3)
003cb0  e3010fd7  loadli.w r3,  -5248(r30)
003cb4  00a00000  mfence { lm }
003cb8  8ba7a711  add.ul r[16:17], r[16:17], r[27:28]
003cbc  17912100  or r2, r3, r2
003cc0  7fb11700  s_lm2gm r2, r1, 0(r[16:17])
003cc4  1f010fd5  addli r2, r30, -5504
003cc8  00a00200  mfence { lm, gm }
003ccc  63481f00  loadli.w r16,  12(r30)
003cd0  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
003cd4  db21ffff  j -1780
003cd8  00360002  core_id r12
003cdc  63012f00  loadli.w r2,  16(r30)
003ce0  9b305600  slli r1, r12, 5
003ce4  cb211100  ble.s r2, r1, 104
003ce8  80530102  load_param_i r7, 2
003cec  2bc40000  lui r8, 12
003cf0  1f110000  addli r2, zero, 1
003cf4  9f018fd7  addli r3, r30, -5184
003cf8  1f038000  addli r6, zero, 64
003cfc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003d00  9bb35300  slli r7, r7, 5
003d04  1f0404f0  addli r8, r8, -2048
003d08  b3840028  zext_int2long r[10:11], r1
003d0c  ab0500f0  lui r11, 983040
003d10  97b42402  sll.d r[10:11], r[10:11], r2
003d14  9715b300  or r11, r6, r11
003d18  8b249210  add.ul r[10:11], r[5:6], r[10:11]
003d1c  ffa53400  l_gm2lm r11, r3, 0(r[10:11])
003d20  9bb42000  slli r9, r1, 2
003d24  8b901310  add.s r1, r7, r1
003d28  00a00200  mfence { lm, gm }
003d2c  c2800102  vload.mz vr1{mr1}, 0(r3)
003d30  8b948410  add.s r9, r9, r8
003d34  1f858400  addli r10, r9, 64
003d38  66411080  vmerge_l.hf vr2, vr0, vr1
003d3c  e64010a0  vmerge_h.hf vr1, vr0, vr1
003d40  4e902402  vstores_mask16.mz vr2{mr1}, 0(r9)
003d44  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
003d48  3f8ff0fe  blt.s r1, r15, -64
003d4c  abf00000  lui r1, 15
003d50  63411f00  loadli.w r2,  12(r30)
003d54  00a00300  mfence { lm, sm, gm }
003d58  9b90f0ff  ori r1, r1, 4095
003d5c  80a10004  csr_set csr3, r1
003d60  00d00100  sync_group
003d64  4b57c112  ble.s r2, r12, 9684
003d68  e3002f00  loadli.w r1,  16(r30)
003d6c  63412f00  loadli.w r2,  20(r30)
003d70  9f038fd7  addli r7, r30, -5184
003d74  1f150000  addli r10, zero, 1
003d78  9f054000  addli r11, zero, 32
003d7c  1f747000  addli r8, zero, 63
003d80  1f080002  addli r16, zero, 256
003d84  9f040001  addli r9, zero, 128
003d88  ab09803f  lui r19, 260096
003d8c  abeb7f00  lui r23, 2046
003d90  abec0700  lui r25, 126
003d94  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
003d98  8b912010  add.s r3, r1, r2
003d9c  33820008  fix2float.rn r4, r1
003da0  1bb31000  slli r6, r1, 1
003da4  9bb22000  slli r5, r1, 2
003da8  9f804000  addli r1, r1, 32
003dac  9b382100  slli r17, r2, 2
003db0  e74f1fd2  storeli.w r1, -5636(r30)
003db4  8b907210  add.s r1, r5, r7
003db8  9ff1f1ff  addli r3, r3, -1
003dbc  67004fd4  storeli.w r4, -5632(r30)
003dc0  0b922130  div.s r4, r3, r2
003dc4  9f8080ff  addli r1, r1, -64
003dc8  8b117310  add.s r3, r6, r7
003dcc  e70f1fd2  storeli.w r1, -5640(r30)
003dd0  9f8081ff  addli r1, r3, -64
003dd4  674f1fd2  storeli.w r1, -5644(r30)
003dd8  abf0ffff  lui r1, 1048575
003ddc  00a00000  mfence { lm }
003de0  67046fd4  storeli.w r6, -5568(r30)
003de4  9b90f0ff  ori r1, r1, 4095
003de8  67041fd6  storeli.w r1, -5312(r30)
003dec  ab700000  lui r1, 7
003df0  9b9af0ff  ori r21, r1, 4095
003df4  ab00ff03  lui r1, 16368
003df8  1b9df03f  ori r26, r1, 1023
003dfc  abf000fc  lui r1, 1032207
003e00  1b9e00c0  ori r28, r1, 3072
003e04  9f000fd7  addli r1, r30, -5248
003e08  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
003e0c  db090000  j 76
003e10  9f010fd5  addli r3, r30, -5504
003e14  eb500f00  load.d r[2:3], 0(r30)
003e18  9f038fd7  addli r7, r30, -5184
003e1c  1f747000  addli r8, zero, 63
003e20  ebd20100  load.d r[6:7], 0(r3)
003e24  00a00000  mfence { lm }
003e28  ab0100f0  lui r3, 983040
003e2c  63068fd5  loadli.w r12,  -5440(r30)
003e30  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
003e34  63038fd4  loadli.w r6,  -5568(r30)
003e38  80520102  load_param_i r5, 2
003e3c  0b96c210  add.s r12, r5, r12
003e40  97113300  or r3, r6, r3
003e44  ffb17000  s_lm2gm r3, r7, 0(r[2:3])
003e48  00a00200  mfence { lm, gm }
003e4c  e3401f00  loadli.w r1,  12(r30)
003e50  3f201600  blt.s r12, r1, 8
003e54  db9c0400  j 9444
003e58  e3001f00  loadli.w r1,  8(r30)
003e5c  9f027fd6  addli r5, r30, -5320
003e60  9f860800  addli r13, r17, 0
003e64  8b101610  add.s r1, r12, r1
003e68  8b90f020  mul.s r1, r1, r15
003e6c  b3900028  sext_int2long r[2:3], r1
003e70  97b8a002  sll.d r[18:19], r[2:3], r10
003e74  6bd10200  load.d r[3:4], 0(r5)
003e78  ab0000f0  lui r1, 983040
003e7c  9f020fd5  addli r5, r30, -5504
003e80  97101300  or r1, r6, r1
003e84  73b01201  store.d r[18:19], 0(r5)
003e88  0b211111  add.ul r[3:4], r[3:4], r[18:19]
003e8c  ff207100  l_gm2lm r1, r7, 0(r[3:4])
003e90  00a00200  mfence { lm, gm }
003e94  bff0b700  blt.s r15, r11, 60
003e98  e340efd3  loadli.w r1,  -5644(r30)
003e9c  6301ffd3  loadli.w r2,  -5640(r30)
003ea0  e341ffd3  loadli.w r3,  -5636(r30)
003ea4  c2800002  vload.mz vr1{mr1}, 0(r1)
003ea8  9f81c1ff  addli r3, r3, -32
003eac  1f0381ff  addli r6, r2, -64
003eb0  9f8080ff  addli r1, r1, -64
003eb4  93023404  setlt.u r5, r8, r3
003eb8  664110a0  vmerge_h.hf vr2, vr0, vr1
003ebc  e6401080  vmerge_l.hf vr1, vr0, vr1
003ec0  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
003ec4  1f0101ff  addli r2, r2, -128
003ec8  46101302  vstore_mask16.mz vr1{mr1}, 0(r6)
003ecc  3bef02fe  bneq r5, zero, -40
003ed0  670ccfd4  storeli.w r12, -5440(r30)
003ed4  00a00000  mfence { lm }
003ed8  bf77a200  blt.s r4, r10, 508
003edc  9f010000  addli r3, zero, 0
003ee0  9f020000  addli r5, zero, 0
003ee4  1f010000  addli r2, zero, 0
003ee8  9f880600  addli r17, r13, 0
003eec  1f098000  addli r18, zero, 64
003ef0  db0d0000  j 108
003ef4  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
003ef8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003efc  1f110100  addli r2, r2, 1
003f00  6a7108c0  vsrl.p vr2, r16, vr0
003f04  ea7118c0  vsrl.p vr3, r16, vr1
003f08  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f0c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f10  6af104c0  vsrl.p vr2, r9, vr0
003f14  eaf114c0  vsrl.p vr3, r9, vr1
003f18  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f1c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f20  6a7109c0  vsrl.p vr2, r18, vr0
003f24  ea7119c0  vsrl.p vr3, r18, vr1
003f28  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f2c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f30  6af105c0  vsrl.p vr2, r11, vr0
003f34  eaf115c0  vsrl.p vr3, r11, vr1
003f38  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
003f3c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
003f40  fa100040  vextracti.f r1, 0(vr0)
003f44  7a930040  vextracti.f r6, 0(vr1)
003f48  8be11110  add.f.rn r3, r3, r1
003f4c  9f000fd7  addli r1, r30, -5248
003f50  8be26210  add.f.rn r5, r5, r6
003f54  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
003f58  37264100  beq r2, r4, 392
003f5c  9f000100  addli r1, r2, 0
003f60  37400701  beq r14, r16, 16
003f64  e3008fd6  loadli.w r1,  -5312(r30)
003f68  97201100  xor r1, r2, r1
003f6c  8b101210  add.s r1, r4, r1
003f70  0b93e020  mul.s r6, r1, r14
003f74  12320002  vadd.s.mz vr4{mr1}, zero, vr0
003f78  92310002  vadd.s.mz vr3{mr1}, zero, vr0
003f7c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
003f80  92300002  vadd.s.mz vr1{mr1}, zero, vr0
003f84  0b936718  sub.s r6, r15, r6
003f88  8b13e340  min.s r7, r6, r14
003f8c  bfada3fe  blt.s r7, r10, -152
003f90  9f060fd7  addli r13, r30, -5248
003f94  2bc60000  lui r12, 12
003f98  0b931820  mul.s r6, r17, r1
003f9c  1f040000  addli r8, zero, 0
003fa0  9f008fd7  addli r1, r30, -5184
003fa4  42920602  vload_mask16.mz vr4{mr1}, 0(r13)
003fa8  1f0606f0  addli r12, r12, -2048
003fac  92304002  vadd.s.mz vr1{mr1}, zero, vr4
003fb0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
003fb4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
003fb8  0b1a6610  add.s r20, r12, r6
003fbc  8b966010  add.s r13, r1, r6
003fc0  1f0b8a00  addli r22, r20, 64
003fc4  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
003fc8  1f0c8a01  addli r24, r20, 192
003fcc  c2940602  vload_mask16.mz vr9{mr1}, 0(r13)
003fd0  9f8d8601  addli r27, r13, 192
003fd4  4a130b02  vloads_mask16.mz vr6{mr1}, 0(r22)
003fd8  1f0b0a01  addli r22, r20, 128
003fdc  4a140c02  vloads_mask16.mz vr8{mr1}, 0(r24)
003fe0  1f8c0601  addli r24, r13, 128
003fe4  42900d02  vload_mask16.mz vr0{mr1}, 0(r27)
003fe8  ca130b02  vloads_mask16.mz vr7{mr1}, 0(r22)
003fec  c2150c02  vload_mask16.mz vr11{mr1}, 0(r24)
003ff0  1f8b8600  addli r22, r13, 64
003ff4  42150b02  vload_mask16.mz vr10{mr1}, 0(r22)
003ff8  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
003ffc  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004000  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004004  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004008  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00400c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004010  46905602  vstore_mask16.mz vr5{mr1}, 0(r13)
004014  46106b02  vstore_mask16.mz vr6{mr1}, 0(r22)
004018  1f0b8400  addli r22, r8, 64
00401c  46900d02  vstore_mask16.mz vr0{mr1}, 0(r27)
004020  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004024  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004028  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00402c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004030  46107c02  vstore_mask16.mz vr7{mr1}, 0(r24)
004034  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004038  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00403c  cbea63ff  ble.s r7, r22, -328
004040  1f0c0a02  addli r24, r20, 256
004044  9f0d8a02  addli r27, r20, 320
004048  1f8b0602  addli r22, r13, 256
00404c  1f040401  addli r8, r8, 128
004050  1f060604  addli r12, r12, 512
004054  9f800004  addli r1, r1, 512
004058  4a100c02  vloads_mask16.mz vr0{mr1}, 0(r24)
00405c  1f0c0a03  addli r24, r20, 384
004060  1f0a8a03  addli r20, r20, 448
004064  ca920d02  vloads_mask16.mz vr5{mr1}, 0(r27)
004068  42130b02  vload_mask16.mz vr6{mr1}, 0(r22)
00406c  ca130c02  vloads_mask16.mz vr7{mr1}, 0(r24)
004070  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
004074  1f8a0603  addli r20, r13, 384
004078  1f8c8602  addli r24, r13, 320
00407c  9f868603  addli r13, r13, 448
004080  42150a02  vload_mask16.mz vr10{mr1}, 0(r20)
004084  c2140c02  vload_mask16.mz vr9{mr1}, 0(r24)
004088  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
00408c  42930602  vload_mask16.mz vr6{mr1}, 0(r13)
004090  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004094  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
004098  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
00409c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0040a0  46100b02  vstore_mask16.mz vr0{mr1}, 0(r22)
0040a4  46105c02  vstore_mask16.mz vr5{mr1}, 0(r24)
0040a8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
0040ac  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
0040b0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0040b4  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
0040b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0040bc  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0040c0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0040c4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0040c8  46906602  vstore_mask16.mz vr6{mr1}, 0(r13)
0040cc  bf3b74fe  blt.s r8, r7, -276
0040d0  dbc4ffff  j -476
0040d4  9f020000  addli r5, zero, 0
0040d8  9f010000  addli r3, zero, 0
0040dc  9f880600  addli r17, r13, 0
0040e0  1f042000  addli r8, zero, 16
0040e4  1f360000  addli r12, zero, 3
0040e8  9f561000  addli r13, zero, 13
0040ec  1f2a1000  addli r20, zero, 10
0040f0  00a00000  mfence { lm }
0040f4  3ff4a7fe  blt.s r15, r10, -740
0040f8  e3000fd4  loadli.w r1,  -5632(r30)
0040fc  1f030000  addli r6, zero, 0
004100  0f811118  div.f.rn r2, r3, r1
004104  8f801218  div.f.rn r1, r5, r1
004108  9f028fd7  addli r5, r30, -5184
00410c  8b612120  mul.f.rn r3, r2, r2
004110  0b610158  neg.f r2, r2
004114  8be03018  sub.f.rn r1, r1, r3
004118  e3013f00  loadli.w r3,  24(r30)
00411c  8be03010  add.f.rn r1, r1, r3
004120  9f018fd7  addli r3, r30, -5184
004124  8f800008  sqrt.f.rn r1, r1
004128  8f801918  div.f.rn r1, r19, r1
00412c  9f838200  addli r7, r5, 64
004130  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
004134  1f034300  addli r6, r6, 32
004138  9f820201  addli r5, r5, 128
00413c  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
004140  92111102  vadd.f.mz.rn vr3{mr1}, r2, vr1
004144  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004148  6a221422  vor.u.mz vr4{mr1}, r8, vr1
00414c  12112102  vadd.f.mz.rn vr2{mr1}, r2, vr2
004150  8a913002  vmul.f.mz.rn vr3{mr1}, r1, vr3
004154  0a912002  vmul.f.mz.rn vr2{mr1}, r1, vr2
004158  ee3232c2  vsrl.s.mz vr5{mr1}, vr4, vr3
00415c  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
004160  ea325502  vand.s.mz vr5{mr1}, r10, vr5
004164  6a324502  vand.s.mz vr4{mr1}, r10, vr4
004168  96b15102  vadd.s.mz vr3{mr1}, vr3, vr5
00416c  ea221622  vor.u.mz vr5{mr1}, r12, vr1
004170  16314102  vadd.s.mz vr2{mr1}, vr2, vr4
004174  6aa21622  vor.u.mz vr4{mr1}, r13, vr1
004178  ea201a22  vor.u.mz vr1{mr1}, r20, vr1
00417c  92b13a02  vadd.s.mz vr3{mr1}, r21, vr3
004180  12b12a02  vadd.s.mz vr2{mr1}, r21, vr2
004184  6e3332c2  vsrl.s.mz vr6{mr1}, vr4, vr3
004188  eeb132c2  vsrl.s.mz vr3{mr1}, vr5, vr3
00418c  6e3222c2  vsrl.s.mz vr4{mr1}, vr4, vr2
004190  6eb122c2  vsrl.s.mz vr2{mr1}, vr5, vr2
004194  eab26c02  vand.s.mz vr5{mr1}, r25, vr6
004198  eab13b02  vand.s.mz vr3{mr1}, r23, vr3
00419c  6ab24c02  vand.s.mz vr4{mr1}, r25, vr4
0041a0  6ab12b02  vand.s.mz vr2{mr1}, r23, vr2
0041a4  eab25922  vor.s.mz vr5{mr1}, r19, vr5
0041a8  eab13922  vor.s.mz vr3{mr1}, r19, vr3
0041ac  6ab24922  vor.s.mz vr4{mr1}, r19, vr4
0041b0  6ab12922  vor.s.mz vr2{mr1}, r19, vr2
0041b4  06520220  vfloat2fp16_h.rz vr4, vr4
0041b8  06510120  vfloat2fp16_h.rz vr2, vr2
0041bc  06920220  vfloat2fp16_l.rz vr4, vr5
0041c0  06910120  vfloat2fp16_l.rz vr2, vr3
0041c4  eeb040a2  vsll.s.mz vr1{mr1}, vr1, vr4
0041c8  6a312d02  vand.s.mz vr2{mr1}, r26, vr2
0041cc  ea301e02  vand.s.mz vr1{mr1}, r28, vr1
0041d0  eeb02022  vor.s.mz vr1{mr1}, vr1, vr2
0041d4  46801102  vstore.mz vr1{mr1}, 0(r3)
0041d8  9f818100  addli r3, r3, 64
0041dc  3f4df3fe  blt.s r6, r15, -176
0041e0  5b86ffff  j -976
0041e4  ab330100  lui r7, 19
0041e8  803a0002  core_id r21
0041ec  00510102  load_param_i r2, 2
0041f0  9f100000  addli r1, zero, 1
0041f4  1f038fd7  addli r6, r30, -5184
0041f8  1f048000  addli r8, zero, 64
0041fc  1f050010  addli r10, zero, 2048
004200  9bb15a00  slli r3, r21, 5
004204  9b345100  slli r9, r2, 5
004208  9f8303f8  addli r7, r7, -1024
00420c  b3850128  zext_int2long r[12:13], r3
004210  ab0600f0  lui r13, 983040
004214  97b51502  sll.d r[12:13], r[12:13], r1
004218  9716d400  or r13, r8, r13
00421c  8b25b210  add.ul r[12:13], r[5:6], r[12:13]
004220  ffa66500  l_gm2lm r13, r6, 0(r[12:13])
004224  9bb52100  slli r11, r3, 2
004228  8b913410  add.s r3, r9, r3
00422c  00a00200  mfence { lm, gm }
004230  42000302  vload.mz vr0{mr1}, 0(r6)
004234  1386a104  setlt.u r12, r3, r10
004238  8b957510  add.s r11, r11, r7
00423c  9f868500  addli r13, r11, 64
004240  86300000  vfp162float_l.rn vr1, vr0
004244  06700000  vfp162float_h.rn vr0, vr0
004248  4e901502  vstores_mask16.mz vr1{mr1}, 0(r11)
00424c  4e900602  vstores_mask16.mz vr0{mr1}, 0(r13)
004250  bb7e06fe  bneq r12, zero, -68
004254  abf00000  lui r1, 15
004258  00a00300  mfence { lm, sm, gm }
00425c  9b8d1a00  andi r27, r21, 1
004260  1f020006  addli r4, zero, 768
004264  9b91f0ff  ori r3, r1, 4095
004268  80a10104  csr_set csr3, r3
00426c  9f010006  addli r3, zero, 768
004270  00d00100  sync_group
004274  37a00d00  beq r27, zero, 8
004278  1f02000a  addli r4, zero, 1280
00427c  e3421f00  loadli.w r5,  12(r30)
004280  1f1b0000  addli r22, zero, 1
004284  bfd26211  blt.s r5, r22, 8372
004288  8b903d20  mul.s r1, r27, r3
00428c  9b451100  srli r11, r2, 1
004290  1b312200  slli r2, r4, 2
004294  1f058fd7  addli r10, r30, -5184
004298  9b361200  slli r13, r4, 1
00429c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0042a0  ab5c0100  lui r25, 21
0042a4  2b590100  lui r18, 21
0042a8  1f040000  addli r8, zero, 0
0042ac  1bc61a00  srli r12, r21, 1
0042b0  9f787000  addli r17, zero, 63
0042b4  1f0a0005  addli r20, zero, 640
0042b8  9f0b8000  addli r23, zero, 64
0042bc  1f0c4000  addli r24, zero, 32
0042c0  1f0e0003  addli r28, zero, 384
0042c4  67081fd6  storeli.w r1, -5248(r30)
0042c8  9f004200  addli r1, r4, 32
0042cc  0b11a110  add.s r2, r2, r10
0042d0  8b91a610  add.s r3, r13, r10
0042d4  9f8c0cf8  addli r25, r25, -1024
0042d8  1f0909fc  addli r18, r18, -512
0042dc  67041fd6  storeli.w r1, -5312(r30)
0042e0  9f0081ff  addli r1, r2, -64
0042e4  1f018fd4  addli r2, r30, -5568
0042e8  670c1fd4  storeli.w r1, -5440(r30)
0042ec  9f8081ff  addli r1, r3, -64
0042f0  67081fd4  storeli.w r1, -5504(r30)
0042f4  abf0ffff  lui r1, 1048575
0042f8  00a00000  mfence { lm }
0042fc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004300  2bf10000  lui r2, 15
004304  9b9000f8  ori r1, r1, 3968
004308  1b1df1ff  ori r26, r2, 4095
00430c  67001fd4  storeli.w r1, -5632(r30)
004310  db030000  j 28
004314  00a00300  mfence { lm, sm, gm }
004318  80210d04  csr_set csr3, r26
00431c  00d00100  sync_group
004320  0b14b410  add.s r8, r8, r11
004324  3f200401  blt.s r8, r16, 8
004328  5b18f9ff  j -14144
00432c  0b11c410  add.s r2, r8, r12
004330  cb1f28fe  ble.s r16, r2, -28
004334  e3001f00  loadli.w r1,  8(r30)
004338  8b01b430  div.u r3, r8, r11
00433c  0b111110  add.s r2, r2, r1
004340  e3000fd7  loadli.w r1,  -5248(r30)
004344  1b31b100  slli r2, r2, 11
004348  9bb16100  slli r3, r3, 6
00434c  17111100  or r2, r2, r1
004350  9f007fd6  addli r1, r30, -5320
004354  9b810104  andi r3, r3, 64
004358  b3120128  sext_int2long r[6:7], r2
00435c  6bd70000  load.d r[15:16], 0(r1)
004360  2b0100f0  lui r2, 983040
004364  97b26203  sll.d r[6:7], r[6:7], r22
004368  17912600  or r2, r13, r2
00436c  0b275710  add.ul r[15:16], r[15:16], r[6:7]
004370  7f21a700  l_gm2lm r2, r10, 0(r[15:16])
004374  17915101  or r2, r3, r21
004378  00a00200  mfence { lm, gm }
00437c  e3010fd5  loadli.w r3,  -5504(r30)
004380  e3048fd5  loadli.w r9,  -5440(r30)
004384  63078fd6  loadli.w r14,  -5312(r30)
004388  c2800102  vload.mz vr1{mr1}, 0(r3)
00438c  1f07c7ff  addli r14, r14, -32
004390  9f8984ff  addli r19, r9, -64
004394  9f8181ff  addli r3, r3, -64
004398  9387e804  setlt.u r15, r17, r14
00439c  06f10000  vfp162float_h.rn vr2, vr1
0043a0  86b00000  vfp162float_l.rn vr1, vr1
0043a4  46902402  vstore_mask16.mz vr2{mr1}, 0(r9)
0043a8  9f8404ff  addli r9, r9, -128
0043ac  46901902  vstore_mask16.mz vr1{mr1}, 0(r19)
0043b0  3bef07fe  bneq r15, zero, -40
0043b4  00a00000  mfence { lm }
0043b8  3bb60d00  bneq r27, zero, 396
0043bc  9f008fd4  addli r1, r30, -5568
0043c0  e3040fd4  loadli.w r9,  -5632(r30)
0043c4  9f010000  addli r3, zero, 0
0043c8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0043cc  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0043d0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0043d4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0043d8  8b977110  add.s r15, r3, r7
0043dc  0b173510  add.s r14, r10, r3
0043e0  9f840401  addli r9, r9, 128
0043e4  9f810104  addli r3, r3, 512
0043e8  9f800701  addli r1, r15, 128
0043ec  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
0043f0  1f888700  addli r16, r15, 64
0043f4  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
0043f8  9f098701  addli r19, r14, 192
0043fc  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
004400  9f808701  addli r1, r15, 192
004404  4a130802  vloads_mask16.mz vr6{mr1}, 0(r16)
004408  1f088700  addli r16, r14, 64
00440c  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
004410  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
004414  9f000701  addli r1, r14, 128
004418  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
00441c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004420  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004424  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004428  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
00442c  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
004430  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004434  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004438  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00443c  9f800702  addli r1, r15, 256
004440  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004444  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004448  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
00444c  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
004450  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
004454  9f808702  addli r1, r15, 320
004458  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
00445c  9f090702  addli r19, r14, 256
004460  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004464  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004468  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
00446c  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004470  9f800703  addli r1, r15, 384
004474  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
004478  9f878703  addli r15, r15, 448
00447c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004480  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
004484  9f008702  addli r1, r14, 320
004488  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
00448c  9f070703  addli r15, r14, 384
004490  1f078703  addli r14, r14, 448
004494  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004498  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
00449c  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0044a0  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0044a4  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0044a8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0044ac  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0044b0  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
0044b4  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0044b8  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0044bc  93804405  setlt.u r1, r9, r20
0044c0  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0044c4  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0044c8  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0044cc  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0044d0  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0044d4  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0044d8  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0044dc  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0044e0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0044e4  bbdb00fe  bneq r1, zero, -268
0044e8  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
0044ec  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0044f0  9f000002  addli r1, zero, 256
0044f4  6af100c0  vsrl.p vr2, r1, vr0
0044f8  eaf110c0  vsrl.p vr3, r1, vr1
0044fc  9f000001  addli r1, zero, 128
004500  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004504  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004508  6af100c0  vsrl.p vr2, r1, vr0
00450c  eaf110c0  vsrl.p vr3, r1, vr1
004510  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004514  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004518  6af10bc0  vsrl.p vr2, r23, vr0
00451c  eaf11bc0  vsrl.p vr3, r23, vr1
004520  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004524  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004528  6a710cc0  vsrl.p vr2, r24, vr0
00452c  ea711cc0  vsrl.p vr3, r24, vr1
004530  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004534  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004538  fa110040  vextracti.f r3, 0(vr0)
00453c  fa940040  vextracti.f r9, 0(vr1)
004540  5b660000  j 816
004544  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
004548  abf0ffff  lui r1, 1048575
00454c  1f8b0d00  addli r22, r27, 0
004550  9f010000  addli r3, zero, 0
004554  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004558  12321002  vadd.s.mz vr4{mr1}, zero, vr1
00455c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004560  9b9400f8  ori r9, r1, 3968
004564  0b973310  add.s r14, r7, r3
004568  8b193510  add.s r19, r10, r3
00456c  9f840401  addli r9, r9, 128
004570  9f810104  addli r3, r3, 512
004574  1f080731  addli r16, r14, 6272
004578  9f070730  addli r15, r14, 6144
00457c  9f008731  addli r1, r14, 6336
004580  9f8d0918  addli r27, r19, 3072
004584  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004588  ca920702  vloads_mask16.mz vr5{mr1}, 0(r15)
00458c  9f078730  addli r15, r14, 6208
004590  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
004594  9f808918  addli r1, r19, 3136
004598  1f888919  addli r16, r19, 3264
00459c  42930d02  vload_mask16.mz vr6{mr1}, 0(r27)
0045a0  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
0045a4  9f870919  addli r15, r19, 3200
0045a8  42100802  vload_mask16.mz vr0{mr1}, 0(r16)
0045ac  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0045b0  42950702  vload_mask16.mz vr10{mr1}, 0(r15)
0045b4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0045b8  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
0045bc  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0045c0  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
0045c4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
0045c8  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
0045cc  46907702  vstore_mask16.mz vr7{mr1}, 0(r15)
0045d0  9f070732  addli r15, r14, 6400
0045d4  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
0045d8  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
0045dc  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0045e0  46906d02  vstore_mask16.mz vr6{mr1}, 0(r27)
0045e4  1f88091a  addli r16, r19, 3328
0045e8  c2130802  vload_mask16.mz vr7{mr1}, 0(r16)
0045ec  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0045f0  9f80091b  addli r1, r19, 3456
0045f4  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
0045f8  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
0045fc  4a900702  vloads_mask16.mz vr0{mr1}, 0(r15)
004600  9f078732  addli r15, r14, 6464
004604  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004608  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00460c  4a930702  vloads_mask16.mz vr6{mr1}, 0(r15)
004610  9f070733  addli r15, r14, 6528
004614  1f078733  addli r14, r14, 6592
004618  4a940702  vloads_mask16.mz vr8{mr1}, 0(r15)
00461c  9f87891a  addli r15, r19, 3392
004620  4a150702  vloads_mask16.mz vr10{mr1}, 0(r14)
004624  1f87891b  addli r14, r19, 3520
004628  c2940702  vload_mask16.mz vr9{mr1}, 0(r15)
00462c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
004630  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
004634  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
004638  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
00463c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004640  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004644  46100802  vstore_mask16.mz vr0{mr1}, 0(r16)
004648  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
00464c  46906702  vstore_mask16.mz vr6{mr1}, 0(r15)
004650  9387c405  setlt.u r15, r9, r28
004654  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
004658  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
00465c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
004660  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
004664  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
004668  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00466c  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
004670  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
004674  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004678  bbbb07fe  bneq r15, zero, -276
00467c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004680  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004684  9f000002  addli r1, zero, 256
004688  9f040000  addli r9, zero, 0
00468c  eaf110c0  vsrl.p vr3, r1, vr1
004690  6af100c0  vsrl.p vr2, r1, vr0
004694  9f000001  addli r1, zero, 128
004698  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00469c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046a0  eaf110c0  vsrl.p vr3, r1, vr1
0046a4  6af100c0  vsrl.p vr2, r1, vr0
0046a8  abf0ffff  lui r1, 1048575
0046ac  9b9d00f8  ori r27, r1, 3968
0046b0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046b4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046b8  eaf11bc0  vsrl.p vr3, r23, vr1
0046bc  6af10bc0  vsrl.p vr2, r23, vr0
0046c0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046c4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046c8  ea711cc0  vsrl.p vr3, r24, vr1
0046cc  6a710cc0  vsrl.p vr2, r24, vr0
0046d0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0046d4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0046d8  fa990040  vextracti.f r19, 0(vr1)
0046dc  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
0046e0  fa110040  vextracti.f r3, 0(vr0)
0046e4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0046e8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0046ec  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0046f0  8b979310  add.s r15, r7, r9
0046f4  0b179510  add.s r14, r10, r9
0046f8  9f8d0d01  addli r27, r27, 128
0046fc  9f840404  addli r9, r9, 512
004700  9f800718  addli r1, r15, 3072
004704  1f880719  addli r16, r15, 3200
004708  42140702  vload_mask16.mz vr8{mr1}, 0(r14)
00470c  9f0a8701  addli r21, r14, 192
004710  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
004714  ca120802  vloads_mask16.mz vr5{mr1}, 0(r16)
004718  9f808718  addli r1, r15, 3136
00471c  1f888719  addli r16, r15, 3264
004720  c2950a02  vload_mask16.mz vr11{mr1}, 0(r21)
004724  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004728  9f000701  addli r1, r14, 128
00472c  ca130802  vloads_mask16.mz vr7{mr1}, 0(r16)
004730  1f088700  addli r16, r14, 64
004734  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
004738  42150802  vload_mask16.mz vr10{mr1}, 0(r16)
00473c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
004740  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
004744  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
004748  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
00474c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
004750  9f80071a  addli r1, r15, 3328
004754  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
004758  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
00475c  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
004760  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
004764  46100702  vstore_mask16.mz vr0{mr1}, 0(r14)
004768  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
00476c  9f80871a  addli r1, r15, 3392
004770  46906a02  vstore_mask16.mz vr6{mr1}, 0(r21)
004774  9f0a0702  addli r21, r14, 256
004778  46105802  vstore_mask16.mz vr5{mr1}, 0(r16)
00477c  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
004780  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004784  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
004788  9f80071b  addli r1, r15, 3456
00478c  c2930a02  vload_mask16.mz vr7{mr1}, 0(r21)
004790  9f87871b  addli r15, r15, 3520
004794  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004798  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
00479c  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0047a0  9f008702  addli r1, r14, 320
0047a4  4a950702  vloads_mask16.mz vr10{mr1}, 0(r15)
0047a8  9f070703  addli r15, r14, 384
0047ac  1f078703  addli r14, r14, 448
0047b0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0047b4  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0047b8  c2930702  vload_mask16.mz vr7{mr1}, 0(r15)
0047bc  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0047c0  c2140702  vload_mask16.mz vr9{mr1}, 0(r14)
0047c4  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
0047c8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0047cc  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
0047d0  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
0047d4  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0047d8  93804d05  setlt.u r1, r27, r20
0047dc  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
0047e0  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
0047e4  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
0047e8  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
0047ec  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
0047f0  46905702  vstore_mask16.mz vr5{mr1}, 0(r15)
0047f4  46107702  vstore_mask16.mz vr7{mr1}, 0(r14)
0047f8  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
0047fc  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004800  bbcb00fe  bneq r1, zero, -272
004804  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
004808  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00480c  9f000002  addli r1, zero, 256
004810  9f0d0b00  addli r27, r22, 0
004814  803a0002  core_id r21
004818  1f1b0000  addli r22, zero, 1
00481c  6af100c0  vsrl.p vr2, r1, vr0
004820  eaf110c0  vsrl.p vr3, r1, vr1
004824  9f000001  addli r1, zero, 128
004828  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00482c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004830  6af100c0  vsrl.p vr2, r1, vr0
004834  eaf110c0  vsrl.p vr3, r1, vr1
004838  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00483c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004840  6af10bc0  vsrl.p vr2, r23, vr0
004844  eaf11bc0  vsrl.p vr3, r23, vr1
004848  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00484c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004850  6a710cc0  vsrl.p vr2, r24, vr0
004854  ea711cc0  vsrl.p vr3, r24, vr1
004858  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00485c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004860  fa940040  vextracti.f r9, 0(vr1)
004864  fa100040  vextracti.f r1, 0(vr0)
004868  8be11110  add.f.rn r3, r3, r1
00486c  8be49910  add.f.rn r9, r19, r9
004870  9b302100  slli r1, r2, 2
004874  1b01e107  andi r2, r2, 126
004878  0b979011  add.s r14, r1, r25
00487c  8b972011  add.s r15, r1, r18
004880  9b904000  ori r1, r1, 4
004884  1b312100  slli r2, r2, 2
004888  73603700  stores.w r3, 0(r14)
00488c  73e09700  stores.w r9, 0(r15)
004890  8b919011  add.s r3, r1, r25
004894  8b149111  add.s r9, r2, r25
004898  8b902011  add.s r1, r1, r18
00489c  0b112111  add.s r2, r2, r18
0048a0  1f078fd7  addli r14, r30, -5184
0048a4  9f070000  addli r15, zero, 0
0048a8  00a00300  mfence { lm, sm, gm }
0048ac  80210d04  csr_set csr3, r26
0048b0  00d00100  sync_group
0048b4  63481f00  loadli.w r16,  12(r30)
0048b8  efc10100  loads.w r3, 0(r3)
0048bc  efc40400  loads.w r9, 0(r9)
0048c0  efc00000  loads.w r1, 0(r1)
0048c4  6f410100  loads.w r2, 0(r2)
0048c8  8be19110  add.f.rn r3, r3, r9
0048cc  8be02010  add.f.rn r1, r1, r2
0048d0  2b01003a  lui r2, 237568
0048d4  9f048fd7  addli r9, r30, -5184
0048d8  8be12120  mul.f.rn r3, r3, r2
0048dc  8be02020  mul.f.rn r1, r1, r2
0048e0  0be13120  mul.f.rn r2, r3, r3
0048e4  8be10158  neg.f r3, r3
0048e8  8be02018  sub.f.rn r1, r1, r2
0048ec  63013f00  loadli.w r2,  24(r30)
0048f0  8be02010  add.f.rn r1, r1, r2
0048f4  2b01803f  lui r2, 260096
0048f8  8f800008  sqrt.f.rn r1, r1
0048fc  0f011118  div.f.rn r2, r2, r1
004900  42100702  vload_mask16.mz vr0{mr1}, 0(r14)
004904  9f008700  addli r1, r14, 64
004908  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
00490c  9f874700  addli r15, r15, 32
004910  1f070701  addli r14, r14, 128
004914  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
004918  93804704  setlt.u r1, r15, r4
00491c  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
004920  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
004924  0a100102  vmul.f.mz.rn vr0{mr1}, r2, vr0
004928  8a101102  vmul.f.mz.rn vr1{mr1}, r2, vr1
00492c  06110000  vfloat2fp16_l.rn vr2, vr0
004930  06d10000  vfloat2fp16_h.rn vr2, vr1
004934  46802402  vstore.mz vr2{mr1}, 0(r9)
004938  9f848400  addli r9, r9, 64
00493c  3b9f00fe  bneq r1, zero, -60
004940  6b510f00  load.d r[3:4], 0(r30)
004944  ab0000f0  lui r1, 983040
004948  00a00000  mfence { lm }
00494c  97901600  or r1, r13, r1
004950  0b215110  add.ul r[3:4], r[3:4], r[6:7]
004954  ff30a100  s_lm2gm r1, r10, 0(r[3:4])
004958  00a00200  mfence { lm, gm }
00495c  db38ffff  j -1596
004960  80300002  core_id r1
004964  e3012f00  loadli.w r3,  16(r30)
004968  1bb15000  slli r2, r1, 5
00496c  cb912100  ble.s r3, r2, 100
004970  00540102  load_param_i r8, 2
004974  ab840100  lui r9, 24
004978  9f110000  addli r3, zero, 1
00497c  1f038fd7  addli r6, r30, -5184
004980  9f038000  addli r7, zero, 64
004984  1b345400  slli r8, r8, 5
004988  9f840400  addli r9, r9, 0
00498c  33050128  zext_int2long r[11:12], r2
004990  2b0600f0  lui r12, 983040
004994  17353502  sll.d r[11:12], r[11:12], r3
004998  1796c300  or r12, r7, r12
00499c  0b25a210  add.ul r[11:12], r[5:6], r[11:12]
0049a0  7f266500  l_gm2lm r12, r6, 0(r[11:12])
0049a4  1b352100  slli r10, r2, 2
0049a8  0b112410  add.s r2, r8, r2
0049ac  00a00200  mfence { lm, gm }
0049b0  42000302  vload.mz vr0{mr1}, 0(r6)
0049b4  0b159510  add.s r10, r10, r9
0049b8  9f058500  addli r11, r10, 64
0049bc  86300000  vfp162float_l.rn vr1, vr0
0049c0  06700000  vfp162float_h.rn vr0, vr0
0049c4  4e101502  vstores_mask16.mz vr1{mr1}, 0(r10)
0049c8  4e900502  vstores_mask16.mz vr0{mr1}, 0(r11)
0049cc  3f0ff1fe  blt.s r2, r15, -64
0049d0  2bf10000  lui r2, 15
0049d4  e3411f00  loadli.w r3,  12(r30)
0049d8  00a00300  mfence { lm, sm, gm }
0049dc  1b11f1ff  ori r2, r2, 4095
0049e0  80210104  csr_set csr3, r2
0049e4  00d00100  sync_group
0049e8  4bc5110c  ble.s r3, r1, 6480
0049ec  63032f00  loadli.w r6,  16(r30)
0049f0  e3432f00  loadli.w r7,  20(r30)
0049f4  9f0b8fd7  addli r23, r30, -5184
0049f8  1f150000  addli r10, zero, 1
0049fc  9f054000  addli r11, zero, 32
004a00  1f767000  addli r12, zero, 63
004a04  1f080002  addli r16, zero, 256
004a08  9f080001  addli r17, zero, 128
004a0c  1f098000  addli r18, zero, 64
004a10  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004a14  0b127310  add.s r4, r6, r7
004a18  33010308  fix2float.rn r2, r6
004a1c  1b342300  slli r8, r6, 2
004a20  9b321300  slli r5, r6, 1
004a24  9bb42300  slli r9, r7, 2
004a28  1f72f2ff  addli r4, r4, -1
004a2c  670c2fd4  storeli.w r2, -5440(r30)
004a30  1f014300  addli r2, r6, 32
004a34  0b137411  add.s r6, r8, r23
004a38  0b947211  add.s r8, r5, r23
004a3c  67082fd4  storeli.w r2, -5504(r30)
004a40  1f0183ff  addli r2, r6, -64
004a44  2bf3ffff  lui r6, 1048575
004a48  0b127230  div.s r4, r4, r7
004a4c  67042fd4  storeli.w r2, -5568(r30)
004a50  1f0184ff  addli r2, r8, -64
004a54  9b16f3ff  ori r13, r6, 4095
004a58  2b830100  lui r6, 24
004a5c  67002fd4  storeli.w r2, -5632(r30)
004a60  1f010fd7  addli r2, r30, -5248
004a64  1f030300  addli r6, r6, 0
004a68  00a00000  mfence { lm }
004a6c  67045fd6  storeli.w r5, -5312(r30)
004a70  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004a74  db070000  j 60
004a78  6b510f00  load.d r[3:4], 0(r30)
004a7c  00a00000  mfence { lm }
004a80  ab0900f0  lui r19, 983040
004a84  9f0b8fd7  addli r23, r30, -5184
004a88  005a0102  load_param_i r20, 2
004a8c  e3028fd6  loadli.w r5,  -5312(r30)
004a90  8b101a10  add.s r1, r20, r1
004a94  8b235111  add.ul r[8:9], r[3:4], r[22:23]
004a98  97993201  or r19, r5, r19
004a9c  ffb97301  s_lm2gm r19, r23, 0(r[8:9])
004aa0  00a00200  mfence { lm, gm }
004aa4  63411f00  loadli.w r2,  12(r30)
004aa8  3fa02000  blt.s r1, r2, 8
004aac  db110300  j 6284
004ab0  63011f00  loadli.w r2,  8(r30)
004ab4  8b932010  add.s r7, r1, r2
004ab8  8b93f320  mul.s r7, r7, r15
004abc  b3930328  sext_int2long r[8:9], r7
004ac0  97baa302  sll.d r[22:23], r[8:9], r10
004ac4  1f047fd6  addli r8, r30, -5320
004ac8  ab0300f0  lui r7, 983040
004acc  6b510400  load.d r[3:4], 0(r8)
004ad0  97937200  or r7, r5, r7
004ad4  8b295111  add.ul r[20:21], r[3:4], r[22:23]
004ad8  ffa37901  l_gm2lm r7, r23, 0(r[20:21])
004adc  00a00200  mfence { lm, gm }
004ae0  bff0b700  blt.s r15, r11, 60
004ae4  e3030fd4  loadli.w r7,  -5632(r30)
004ae8  63048fd4  loadli.w r8,  -5568(r30)
004aec  e3090fd5  loadli.w r19,  -5504(r30)
004af0  c2800302  vload.mz vr1{mr1}, 0(r7)
004af4  9f89c9ff  addli r19, r19, -32
004af8  9f0b84ff  addli r23, r8, -64
004afc  9f8383ff  addli r7, r7, -64
004b00  130a3605  setlt.u r20, r12, r19
004b04  06f10000  vfp162float_h.rn vr2, vr1
004b08  86b00000  vfp162float_l.rn vr1, vr1
004b0c  46102402  vstore_mask16.mz vr2{mr1}, 0(r8)
004b10  1f0404ff  addli r8, r8, -128
004b14  46901b02  vstore_mask16.mz vr1{mr1}, 0(r23)
004b18  3b6f0afe  bneq r20, zero, -40
004b1c  00a00000  mfence { lm }
004b20  bf17a200  blt.s r4, r10, 484
004b24  1f0c0000  addli r24, zero, 0
004b28  9f0b0000  addli r23, zero, 0
004b2c  9f0c0000  addli r25, zero, 0
004b30  db0c0000  j 100
004b34  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
004b38  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
004b3c  9f9c0c00  addli r25, r25, 1
004b40  6a7108c0  vsrl.p vr2, r16, vr0
004b44  ea7118c0  vsrl.p vr3, r16, vr1
004b48  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b50  6af108c0  vsrl.p vr2, r17, vr0
004b54  eaf118c0  vsrl.p vr3, r17, vr1
004b58  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b5c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b60  6a7109c0  vsrl.p vr2, r18, vr0
004b64  ea7119c0  vsrl.p vr3, r18, vr1
004b68  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b6c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b70  6af105c0  vsrl.p vr2, r11, vr0
004b74  eaf115c0  vsrl.p vr3, r11, vr1
004b78  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004b7c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004b80  7a110040  vextracti.f r2, 0(vr0)
004b84  fa910040  vextracti.f r3, 0(vr1)
004b88  0b6c2c10  add.f.rn r24, r24, r2
004b8c  8beb3b10  add.f.rn r23, r23, r3
004b90  b7f54c00  beq r25, r4, 380
004b94  9f830c00  addli r7, r25, 0
004b98  37300701  beq r14, r16, 12
004b9c  97a3dc00  xor r7, r25, r13
004ba0  8b137210  add.s r7, r4, r7
004ba4  1f010fd7  addli r2, r30, -5248
004ba8  0b94e320  mul.s r8, r7, r14
004bac  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004bb0  0b948718  sub.s r8, r15, r8
004bb4  0b1de440  min.s r26, r8, r14
004bb8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
004bbc  92311002  vadd.s.mz vr3{mr1}, zero, vr1
004bc0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
004bc4  bf4dadfe  blt.s r26, r10, -144
004bc8  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
004bcc  9f0d0000  addli r27, zero, 0
004bd0  0b9e7420  mul.s r28, r9, r7
004bd4  9f098fd7  addli r19, r30, -5184
004bd8  1f0a0300  addli r20, r6, 0
004bdc  92304002  vadd.s.mz vr1{mr1}, zero, vr4
004be0  12314002  vadd.s.mz vr2{mr1}, zero, vr4
004be4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
004be8  0b14ca11  add.s r8, r20, r28
004bec  8b93c911  add.s r7, r19, r28
004bf0  9f028400  addli r5, r8, 64
004bf4  ca120402  vloads_mask16.mz vr5{mr1}, 0(r8)
004bf8  9f018401  addli r3, r8, 192
004bfc  c2940302  vload_mask16.mz vr9{mr1}, 0(r7)
004c00  1f818301  addli r2, r7, 192
004c04  4a930202  vloads_mask16.mz vr6{mr1}, 0(r5)
004c08  9f020401  addli r5, r8, 128
004c0c  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004c10  9f818300  addli r3, r7, 64
004c14  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
004c18  ca930202  vloads_mask16.mz vr7{mr1}, 0(r5)
004c1c  9f820301  addli r5, r7, 128
004c20  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004c24  c2950202  vload_mask16.mz vr11{mr1}, 0(r5)
004c28  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004c2c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
004c30  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004c34  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
004c38  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004c3c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004c40  46905302  vstore_mask16.mz vr5{mr1}, 0(r7)
004c44  46906102  vstore_mask16.mz vr6{mr1}, 0(r3)
004c48  9f818d00  addli r3, r27, 64
004c4c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004c50  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004c54  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004c58  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
004c5c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
004c60  46907202  vstore_mask16.mz vr7{mr1}, 0(r5)
004c64  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
004c68  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
004c6c  4b2b3dfe  ble.s r26, r3, -312
004c70  9f010402  addli r3, r8, 256
004c74  9f028402  addli r5, r8, 320
004c78  1f810302  addli r2, r7, 256
004c7c  9f8d0d01  addli r27, r27, 128
004c80  1f0a0a04  addli r20, r20, 512
004c84  9f890904  addli r19, r19, 512
004c88  4a900102  vloads_mask16.mz vr0{mr1}, 0(r3)
004c8c  9f010403  addli r3, r8, 384
004c90  ca920202  vloads_mask16.mz vr5{mr1}, 0(r5)
004c94  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
004c98  9f828302  addli r5, r7, 320
004c9c  ca930102  vloads_mask16.mz vr7{mr1}, 0(r3)
004ca0  9f018403  addli r3, r8, 448
004ca4  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
004ca8  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
004cac  9f810303  addli r3, r7, 384
004cb0  9f838303  addli r7, r7, 448
004cb4  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
004cb8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
004cbc  42930302  vload_mask16.mz vr6{mr1}, 0(r7)
004cc0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
004cc4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
004cc8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
004ccc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
004cd0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
004cd4  46905202  vstore_mask16.mz vr5{mr1}, 0(r5)
004cd8  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
004cdc  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
004ce0  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
004ce4  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
004ce8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
004cec  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
004cf0  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
004cf4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
004cf8  46906302  vstore_mask16.mz vr6{mr1}, 0(r7)
004cfc  bfbbadff  blt.s r27, r26, -276
004d00  dbc6ffff  j -460
004d04  9f0b0000  addli r23, zero, 0
004d08  1f0c0000  addli r24, zero, 0
004d0c  00a00000  mfence { lm }
004d10  bfa5a7fe  blt.s r15, r10, -664
004d14  63018fd5  loadli.w r2,  -5440(r30)
004d18  1f0a8fd7  addli r20, r30, -5184
004d1c  0f042c18  div.f.rn r8, r24, r2
004d20  8f832b18  div.f.rn r7, r23, r2
004d24  63013f00  loadli.w r2,  24(r30)
004d28  9f0b0000  addli r23, zero, 0
004d2c  8b698420  mul.f.rn r19, r8, r8
004d30  0b640458  neg.f r8, r8
004d34  8be33319  sub.f.rn r7, r7, r19
004d38  9f098fd7  addli r19, r30, -5184
004d3c  8be32310  add.f.rn r7, r7, r2
004d40  2b01803f  lui r2, 260096
004d44  8f830308  sqrt.f.rn r7, r7
004d48  8f037118  div.f.rn r7, r2, r7
004d4c  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
004d50  1f0c8a00  addli r24, r20, 64
004d54  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
004d58  9f8b4b00  addli r23, r23, 32
004d5c  1f0a0a01  addli r20, r20, 128
004d60  42110c02  vload_mask16.mz vr2{mr1}, 0(r24)
004d64  92101402  vadd.f.mz.rn vr1{mr1}, r8, vr1
004d68  12112402  vadd.f.mz.rn vr2{mr1}, r8, vr2
004d6c  8a901302  vmul.f.mz.rn vr1{mr1}, r7, vr1
004d70  0a912302  vmul.f.mz.rn vr2{mr1}, r7, vr2
004d74  86910000  vfloat2fp16_l.rn vr3, vr1
004d78  86510100  vfloat2fp16_h.rn vr3, vr2
004d7c  46803902  vstore.mz vr3{mr1}, 0(r19)
004d80  9f898900  addli r19, r19, 64
004d84  3faffbfe  blt.s r23, r15, -56
004d88  5b9effff  j -784
004d8c  63012f00  loadli.w r2,  16(r30)
004d90  ab0100f0  lui r3, 983040
004d94  1b311100  slli r2, r2, 1
004d98  17113100  or r2, r2, r3
004d9c  aba10100  lui r3, 26
004da0  9f810100  addli r3, r3, 0
004da4  7f013300  l_gm2sm r2, r3, 0(r[7:8])
004da8  5b080000  j 64
004dac  63012f00  loadli.w r2,  16(r30)
004db0  ab0100f0  lui r3, 983040
004db4  1b311100  slli r2, r2, 1
004db8  17113100  or r2, r2, r3
004dbc  abe10100  lui r3, 30
004dc0  9f810100  addli r3, r3, 0
004dc4  7f013300  l_gm2sm r2, r3, 0(r[7:8])
004dc8  5bc30000  j 1560
004dcc  63012f00  loadli.w r2,  16(r30)
004dd0  ab0100f0  lui r3, 983040
004dd4  1b311100  slli r2, r2, 1
004dd8  17113100  or r2, r2, r3
004ddc  abb10100  lui r3, 27
004de0  9f810100  addli r3, r3, 0
004de4  7f013400  l_gm2sm r2, r3, 0(r[9:10])
004de8  2bf10000  lui r2, 15
004dec  e3411f00  loadli.w r3,  12(r30)
004df0  00200300  mfence { sm, gm }
004df4  1b11f1ff  ori r2, r2, 4095
004df8  80210104  csr_set csr3, r2
004dfc  00d00100  sync_group
004e00  cbe4110a  ble.s r3, r1, 5432
004e04  63012f00  loadli.w r2,  16(r30)
004e08  e3412f00  loadli.w r3,  20(r30)
004e0c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
004e10  1f140000  addli r8, zero, 1
004e14  9f048fd7  addli r9, r30, -5184
004e18  9f050002  addli r11, zero, 256
004e1c  2b06ffff  lui r12, 1048560
004e20  2b08807f  lui r16, 522240
004e24  ab08c07f  lui r17, 523264
004e28  1f090001  addli r18, zero, 128
004e2c  9f098000  addli r19, zero, 64
004e30  1f0a4000  addli r20, zero, 32
004e34  9b3b1100  slli r23, r2, 1
004e38  0b123110  add.s r4, r2, r3
004e3c  33010108  fix2float.rn r2, r2
004e40  1bb31100  slli r6, r3, 1
004e44  67042fd4  storeli.w r2, -5568(r30)
004e48  1f71f2ff  addli r2, r4, -1
004e4c  67087fd5  storeli.w r23, -5504(r30)
004e50  8b133130  div.s r7, r2, r3
004e54  2bf1ffff  lui r2, 1048575
004e58  9f010fd7  addli r3, r30, -5248
004e5c  1b15f1ff  ori r10, r2, 4095
004e60  1f012000  addli r2, zero, 16
004e64  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004e68  9f018fd6  addli r3, r30, -5312
004e6c  6a200122  vor.u.mz vr0{mr1}, r2, vr0
004e70  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004e74  ab710000  lui r3, 7
004e78  9b96f1ff  ori r13, r3, 4095
004e7c  5b090000  j 72
004e80  9f028fd5  addli r5, r30, -5440
004e84  eb510f00  load.d r[4:5], 0(r30)
004e88  ab0400f0  lui r9, 983040
004e8c  ebda0200  load.d r[22:23], 0(r5)
004e90  00a00000  mfence { lm }
004e94  9f028fd7  addli r5, r30, -5184
004e98  e30b0fd5  loadli.w r23,  -5504(r30)
004e9c  8ba15111  add.ul r[4:5], r[4:5], r[22:23]
004ea0  805a0102  load_param_i r21, 2
004ea4  97949b00  or r9, r23, r9
004ea8  8b901a10  add.s r1, r21, r1
004eac  ffb45100  s_lm2gm r9, r5, 0(r[4:5])
004eb0  9f048fd7  addli r9, r30, -5184
004eb4  00a00200  mfence { lm, gm }
004eb8  e3411f00  loadli.w r3,  12(r30)
004ebc  3fa03000  blt.s r1, r3, 8
004ec0  5b8f0200  j 5240
004ec4  e3011f00  loadli.w r3,  8(r30)
004ec8  1f0c7fd6  addli r24, r30, -5320
004ecc  8b913010  add.s r3, r1, r3
004ed0  8b91f120  mul.s r3, r3, r15
004ed4  b3910128  sext_int2long r[4:5], r3
004ed8  97ba8102  sll.d r[22:23], r[4:5], r8
004edc  6b520c00  load.d r[5:6], 0(r24)
004ee0  ab0100f0  lui r3, 983040
004ee4  1f0c8fd5  addli r24, r30, -5440
004ee8  73305c01  store.d r[22:23], 0(r24)
004eec  97913b00  or r3, r23, r3
004ef0  8b2a5211  add.ul r[22:23], r[5:6], r[22:23]
004ef4  ffa19a00  l_gm2lm r3, r9, 0(r[22:23])
004ef8  00a00200  mfence { lm, gm }
004efc  bfcc8300  blt.s r7, r8, 816
004f00  9f0d0000  addli r27, zero, 0
004f04  1f0d0000  addli r26, zero, 0
004f08  1f0e0000  addli r28, zero, 0
004f0c  db0c0000  j 100
004f10  96902102  vadd.f.mz.rn vr1{mr1}, vr3, vr2
004f14  16904202  vadd.f.mz.rn vr0{mr1}, vr5, vr4
004f18  1f1e0e00  addli r28, r28, 1
004f1c  6af105c0  vsrl.p vr2, r11, vr0
004f20  eaf115c0  vsrl.p vr3, r11, vr1
004f24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f2c  6a7109c0  vsrl.p vr2, r18, vr0
004f30  ea7119c0  vsrl.p vr3, r18, vr1
004f34  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f3c  6af109c0  vsrl.p vr2, r19, vr0
004f40  eaf119c0  vsrl.p vr3, r19, vr1
004f44  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f48  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f4c  6a710ac0  vsrl.p vr2, r20, vr0
004f50  ea711ac0  vsrl.p vr3, r20, vr1
004f54  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
004f58  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
004f5c  fa110040  vextracti.f r3, 0(vr0)
004f60  7a920040  vextracti.f r4, 0(vr1)
004f64  8bed3d10  add.f.rn r27, r27, r3
004f68  0b6d4d10  add.f.rn r26, r26, r4
004f6c  372b7e00  beq r28, r7, 712
004f70  9f010e00  addli r3, r28, 0
004f74  3730b700  beq r14, r11, 12
004f78  9721ae00  xor r3, r28, r10
004f7c  8b913310  add.s r3, r7, r3
004f80  0b92e120  mul.s r4, r3, r14
004f84  0b924718  sub.s r4, r15, r4
004f88  8b1ae240  min.s r21, r4, r14
004f8c  1f020fd7  addli r4, r30, -5248
004f90  42110202  vload_mask16.mz vr2{mr1}, 0(r4)
004f94  92322002  vadd.s.mz vr5{mr1}, zero, vr2
004f98  12322002  vadd.s.mz vr4{mr1}, zero, vr2
004f9c  92312002  vadd.s.mz vr3{mr1}, zero, vr2
004fa0  bfcd8afe  blt.s r21, r8, -144
004fa4  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
004fa8  8b1b3320  mul.s r23, r6, r3
004fac  ab910100  lui r3, 25
004fb0  1f0b0000  addli r22, zero, 0
004fb4  9f048fd7  addli r9, r30, -5184
004fb8  9f810100  addli r3, r3, 0
004fbc  12315002  vadd.s.mz vr2{mr1}, zero, vr5
004fc0  92315002  vadd.s.mz vr3{mr1}, zero, vr5
004fc4  12325002  vadd.s.mz vr4{mr1}, zero, vr5
004fc8  0b9c7111  add.s r24, r3, r23
004fcc  0b927411  add.s r4, r9, r23
004fd0  9f028fd6  addli r5, r30, -5312
004fd4  4a030c02  vloads.mz vr6{mr1}, 0(r24)
004fd8  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
004fdc  c2030202  vload.mz vr7{mr1}, 0(r4)
004fe0  9f020fd7  addli r5, r30, -5248
004fe4  9f0c8c00  addli r25, r24, 64
004fe8  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
004fec  9f028b00  addli r5, r22, 64
004ff0  6eb470a2  vsll.s.mz vr8{mr1}, vr1, vr7
004ff4  6a357602  vand.s.mz vr10{mr1}, r12, vr7
004ff8  eeb460a2  vsll.s.mz vr9{mr1}, vr1, vr6
004ffc  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005000  96139402  vadd.f.mz.rn vr7{mr1}, vr8, vr9
005004  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
005008  6eb470c2  vsrl.s.mz vr8{mr1}, vr1, vr7
00500c  eeb460c2  vsrl.s.mz vr9{mr1}, vr1, vr6
005010  669503c0  vabs.f vr10, vr7
005014  6a348402  vand.s.mz vr8{mr1}, r8, vr8
005018  ea349402  vand.s.mz vr9{mr1}, r8, vr9
00501c  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
005020  16b48302  vadd.s.mz vr8{mr1}, vr7, vr8
005024  96349302  vadd.s.mz vr9{mr1}, vr6, vr9
005028  12b48602  vadd.s.mz vr8{mr1}, r13, vr8
00502c  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
005030  ea338602  vand.s.mz vr7{mr1}, r12, vr8
005034  661403c0  vabs.f vr8, vr6
005038  6a339602  vand.s.mz vr6{mr1}, r12, vr9
00503c  eaa30834  vor.u.mh vr7{mr2}, r17, vr0
005040  72218842  vlt.u.mz mr2{mr1}, r16, vr8
005044  6aa30834  vor.u.mh vr6{mr2}, r17, vr0
005048  4a840c02  vloads.mz vr8{mr1}, 0(r25)
00504c  9f0c8200  addli r25, r4, 64
005050  c2840c02  vload.mz vr9{mr1}, 0(r25)
005054  eeb370c2  vsrl.s.mz vr7{mr1}, vr1, vr7
005058  ee337322  vor.s.mz vr7{mr1}, vr6, vr7
00505c  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005060  6eb590a2  vsll.s.mz vr10{mr1}, vr1, vr9
005064  ea349602  vand.s.mz vr9{mr1}, r12, vr9
005068  46007202  vstore.mz vr7{mr1}, 0(r4)
00506c  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005070  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005074  6eb370a2  vsll.s.mz vr6{mr1}, vr1, vr7
005078  eeb580a2  vsll.s.mz vr11{mr1}, vr1, vr8
00507c  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005080  96926202  vadd.f.mz.rn vr5{mr1}, vr5, vr6
005084  a6116302  vmac.f.mz.rn vr3{mr1}, vr6, vr6
005088  1615b502  vadd.f.mz.rn vr10{mr1}, vr10, vr11
00508c  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
005090  eeb4a0c2  vsrl.s.mz vr9{mr1}, vr1, vr10
005094  eeb580c2  vsrl.s.mz vr11{mr1}, vr1, vr8
005098  ea349402  vand.s.mz vr9{mr1}, r8, vr9
00509c  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
0050a0  96349502  vadd.s.mz vr9{mr1}, vr10, vr9
0050a4  9635b402  vadd.s.mz vr11{mr1}, vr8, vr11
0050a8  661505c0  vabs.f vr10, vr10
0050ac  661404c0  vabs.f vr8, vr8
0050b0  92b49602  vadd.s.mz vr9{mr1}, r13, vr9
0050b4  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
0050b8  7221a842  vlt.u.mz mr2{mr1}, r16, vr10
0050bc  ea349602  vand.s.mz vr9{mr1}, r12, vr9
0050c0  6a35b602  vand.s.mz vr10{mr1}, r12, vr11
0050c4  eaa40834  vor.u.mh vr9{mr2}, r17, vr0
0050c8  72218842  vlt.u.mz mr2{mr1}, r16, vr8
0050cc  6aa50834  vor.u.mh vr10{mr2}, r17, vr0
0050d0  6eb490c2  vsrl.s.mz vr8{mr1}, vr1, vr9
0050d4  ea34a602  vand.s.mz vr9{mr1}, r12, vr10
0050d8  6e348522  vor.s.mz vr8{mr1}, vr10, vr8
0050dc  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
0050e0  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0050e4  eeb380a2  vsll.s.mz vr7{mr1}, vr1, vr8
0050e8  46808c02  vstore.mz vr8{mr1}, 0(r25)
0050ec  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0050f0  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0050f4  4bf85afe  ble.s r21, r5, -484
0050f8  9f020c01  addli r5, r24, 128
0050fc  9f0c0201  addli r25, r4, 128
005100  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
005104  1f028201  addli r4, r4, 192
005108  1f0b0b01  addli r22, r22, 128
00510c  9f810102  addli r3, r3, 256
005110  9f840402  addli r9, r9, 256
005114  6a237122  vor.u.mz vr6{mr1}, r2, vr7
005118  4a840202  vloads.mz vr8{mr1}, 0(r5)
00511c  c2840c02  vload.mz vr9{mr1}, 0(r25)
005120  9f028c01  addli r5, r24, 192
005124  6e3593a2  vsll.s.mz vr10{mr1}, vr6, vr9
005128  6a309602  vand.s.mz vr0{mr1}, r12, vr9
00512c  ee3583a2  vsll.s.mz vr11{mr1}, vr6, vr8
005130  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005134  9614b502  vadd.f.mz.rn vr9{mr1}, vr10, vr11
005138  16148002  vadd.f.mz.rn vr8{mr1}, vr0, vr8
00513c  6e3093c2  vsrl.s.mz vr0{mr1}, vr6, vr9
005140  6e3583c2  vsrl.s.mz vr10{mr1}, vr6, vr8
005144  e69504c0  vabs.f vr11, vr9
005148  6a300402  vand.s.mz vr0{mr1}, r8, vr0
00514c  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
005150  7221b842  vlt.u.mz mr2{mr1}, r16, vr11
005154  16b00402  vadd.s.mz vr0{mr1}, vr9, vr0
005158  1635a402  vadd.s.mz vr10{mr1}, vr8, vr10
00515c  12b00602  vadd.s.mz vr0{mr1}, r13, vr0
005160  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
005164  ea340602  vand.s.mz vr9{mr1}, r12, vr0
005168  661004c0  vabs.f vr0, vr8
00516c  6a34a602  vand.s.mz vr8{mr1}, r12, vr10
005170  eaa47834  vor.u.mh vr9{mr2}, r17, vr7
005174  72210842  vlt.u.mz mr2{mr1}, r16, vr0
005178  6aa47834  vor.u.mh vr8{mr2}, r17, vr7
00517c  4a800202  vloads.mz vr0{mr1}, 0(r5)
005180  42050202  vload.mz vr10{mr1}, 0(r4)
005184  ee3493c2  vsrl.s.mz vr9{mr1}, vr6, vr9
005188  ee35a3a2  vsll.s.mz vr11{mr1}, vr6, vr10
00518c  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
005190  ee349422  vor.s.mz vr9{mr1}, vr8, vr9
005194  6a348602  vand.s.mz vr8{mr1}, r12, vr8
005198  46809c02  vstore.mz vr9{mr1}, 0(r25)
00519c  96928202  vadd.f.mz.rn vr5{mr1}, vr5, vr8
0051a0  a6118402  vmac.f.mz.rn vr3{mr1}, vr8, vr8
0051a4  ee3003a2  vsll.s.mz vr1{mr1}, vr6, vr0
0051a8  6a300602  vand.s.mz vr0{mr1}, r12, vr0
0051ac  96901502  vadd.f.mz.rn vr1{mr1}, vr11, vr1
0051b0  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
0051b4  6e3513c2  vsrl.s.mz vr10{mr1}, vr6, vr1
0051b8  ee3503c2  vsrl.s.mz vr11{mr1}, vr6, vr0
0051bc  6a35a402  vand.s.mz vr10{mr1}, r8, vr10
0051c0  ea35b402  vand.s.mz vr11{mr1}, r8, vr11
0051c4  16b5a002  vadd.s.mz vr10{mr1}, vr1, vr10
0051c8  9635b002  vadd.s.mz vr11{mr1}, vr0, vr11
0051cc  e69000c0  vabs.f vr1, vr1
0051d0  661000c0  vabs.f vr0, vr0
0051d4  12b5a602  vadd.s.mz vr10{mr1}, r13, vr10
0051d8  92b5b602  vadd.s.mz vr11{mr1}, r13, vr11
0051dc  72211842  vlt.u.mz mr2{mr1}, r16, vr1
0051e0  6a35a602  vand.s.mz vr10{mr1}, r12, vr10
0051e4  ea30b602  vand.s.mz vr1{mr1}, r12, vr11
0051e8  6aa57834  vor.u.mh vr10{mr2}, r17, vr7
0051ec  72210842  vlt.u.mz mr2{mr1}, r16, vr0
0051f0  eaa07834  vor.u.mh vr1{mr2}, r17, vr7
0051f4  6e30a3c2  vsrl.s.mz vr0{mr1}, vr6, vr10
0051f8  ea331602  vand.s.mz vr7{mr1}, r12, vr1
0051fc  6eb00022  vor.s.mz vr0{mr1}, vr1, vr0
005200  ee3093a2  vsll.s.mz vr1{mr1}, vr6, vr9
005204  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005208  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
00520c  6e3303a2  vsll.s.mz vr6{mr1}, vr6, vr0
005210  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
005214  a6911002  vmac.f.mz.rn vr3{mr1}, vr1, vr1
005218  46000202  vstore.mz vr0{mr1}, 0(r4)
00521c  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
005220  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005224  bf165bff  blt.s r22, r21, -604
005228  5b9dffff  j -792
00522c  1f0d0000  addli r26, zero, 0
005230  9f0d0000  addli r27, zero, 0
005234  00a00000  mfence { lm }
005238  3fa187fe  blt.s r15, r8, -952
00523c  63028fd4  loadli.w r4,  -5568(r30)
005240  e3023f00  loadli.w r5,  24(r30)
005244  2bab0100  lui r22, 26
005248  abbb0100  lui r23, 27
00524c  9f010000  addli r3, zero, 0
005250  1f0b0b00  addli r22, r22, 0
005254  9f8b0b00  addli r23, r23, 0
005258  8f844d18  div.f.rn r9, r27, r4
00525c  0f024d18  div.f.rn r4, r26, r4
005260  8bea9420  mul.f.rn r21, r9, r9
005264  8be40458  neg.f r9, r9
005268  0b625219  sub.f.rn r4, r4, r21
00526c  9f0a8fd7  addli r21, r30, -5184
005270  0b625210  add.f.rn r4, r4, r5
005274  ab02803f  lui r5, 260096
005278  0f020208  sqrt.f.rn r4, r4
00527c  0f824218  div.f.rn r4, r5, r4
005280  42820a02  vload.mz vr4{mr1}, 0(r21)
005284  ca020b02  vloads.mz vr5{mr1}, 0(r22)
005288  6e212162  vxor.u.mz vr2{mr1}, vr2, vr2
00528c  4a830b02  vloads.mz vr6{mr1}, 0(r23)
005290  1f8c4100  addli r24, r3, 32
005294  ea212122  vor.u.mz vr3{mr1}, r2, vr2
005298  eeb341a2  vsll.s.mz vr7{mr1}, vr3, vr4
00529c  6a344602  vand.s.mz vr8{mr1}, r12, vr4
0052a0  92937402  vadd.f.mz.rn vr7{mr1}, r9, vr7
0052a4  12948402  vadd.f.mz.rn vr8{mr1}, r9, vr8
0052a8  eeb451a2  vsll.s.mz vr9{mr1}, vr3, vr5
0052ac  6eb261a2  vsll.s.mz vr4{mr1}, vr3, vr6
0052b0  6a355602  vand.s.mz vr10{mr1}, r12, vr5
0052b4  ea326602  vand.s.mz vr5{mr1}, r12, vr6
0052b8  8a137202  vmul.f.mz.rn vr7{mr1}, r4, vr7
0052bc  0a138202  vmul.f.mz.rn vr6{mr1}, r4, vr8
0052c0  26929302  vmac.f.mz.rn vr4{mr1}, vr7, vr9
0052c4  a612a302  vmac.f.mz.rn vr5{mr1}, vr6, vr10
0052c8  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
0052cc  6a337402  vand.s.mz vr6{mr1}, r8, vr7
0052d0  eeb351c2  vsrl.s.mz vr7{mr1}, vr3, vr5
0052d4  16336202  vadd.s.mz vr6{mr1}, vr4, vr6
0052d8  ea337402  vand.s.mz vr7{mr1}, r8, vr7
0052dc  661202c0  vabs.f vr4, vr4
0052e0  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
0052e4  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
0052e8  e69202c0  vabs.f vr5, vr5
0052ec  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0052f0  6a336602  vand.s.mz vr6{mr1}, r12, vr6
0052f4  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
0052f8  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0052fc  6a327602  vand.s.mz vr4{mr1}, r12, vr7
005300  72215842  vlt.u.mz mr2{mr1}, r16, vr5
005304  eeb261c2  vsrl.s.mz vr5{mr1}, vr3, vr6
005308  6aa22834  vor.u.mh vr4{mr2}, r17, vr2
00530c  6e325222  vor.s.mz vr4{mr1}, vr4, vr5
005310  46804a02  vstore.mz vr4{mr1}, 0(r21)
005314  cbbd87fd  ble.s r15, r24, -1172
005318  1f8c8a00  addli r24, r21, 64
00531c  9f0c8b00  addli r25, r22, 64
005320  1f8d8b00  addli r26, r23, 64
005324  9f818100  addli r3, r3, 64
005328  9f8b0b01  addli r23, r23, 128
00532c  1f0b0b01  addli r22, r22, 128
005330  9f8a0a01  addli r21, r21, 128
005334  42020c02  vload.mz vr4{mr1}, 0(r24)
005338  4a830c02  vloads.mz vr6{mr1}, 0(r25)
00533c  ca030d02  vloads.mz vr7{mr1}, 0(r26)
005340  eeb241a2  vsll.s.mz vr5{mr1}, vr3, vr4
005344  6a324602  vand.s.mz vr4{mr1}, r12, vr4
005348  12945402  vadd.f.mz.rn vr8{mr1}, r9, vr5
00534c  92944402  vadd.f.mz.rn vr9{mr1}, r9, vr4
005350  6eb561a2  vsll.s.mz vr10{mr1}, vr3, vr6
005354  eeb271a2  vsll.s.mz vr5{mr1}, vr3, vr7
005358  6a327602  vand.s.mz vr4{mr1}, r12, vr7
00535c  6a336602  vand.s.mz vr6{mr1}, r12, vr6
005360  0a148202  vmul.f.mz.rn vr8{mr1}, r4, vr8
005364  8a139202  vmul.f.mz.rn vr7{mr1}, r4, vr9
005368  a612a402  vmac.f.mz.rn vr5{mr1}, vr8, vr10
00536c  26926302  vmac.f.mz.rn vr4{mr1}, vr7, vr6
005370  6eb351c2  vsrl.s.mz vr6{mr1}, vr3, vr5
005374  eeb341c2  vsrl.s.mz vr7{mr1}, vr3, vr4
005378  6a336402  vand.s.mz vr6{mr1}, r8, vr6
00537c  ea337402  vand.s.mz vr7{mr1}, r8, vr7
005380  16b36202  vadd.s.mz vr6{mr1}, vr5, vr6
005384  96337202  vadd.s.mz vr7{mr1}, vr4, vr7
005388  e69202c0  vabs.f vr5, vr5
00538c  661202c0  vabs.f vr4, vr4
005390  12b36602  vadd.s.mz vr6{mr1}, r13, vr6
005394  92b37602  vadd.s.mz vr7{mr1}, r13, vr7
005398  72215842  vlt.u.mz mr2{mr1}, r16, vr5
00539c  6a336602  vand.s.mz vr6{mr1}, r12, vr6
0053a0  ea327602  vand.s.mz vr5{mr1}, r12, vr7
0053a4  6aa32834  vor.u.mh vr6{mr2}, r17, vr2
0053a8  72214842  vlt.u.mz mr2{mr1}, r16, vr4
0053ac  eaa22834  vor.u.mh vr5{mr2}, r17, vr2
0053b0  6eb161c2  vsrl.s.mz vr2{mr1}, vr3, vr6
0053b4  6eb12222  vor.s.mz vr2{mr1}, vr5, vr2
0053b8  46002c02  vstore.mz vr2{mr1}, 0(r24)
0053bc  3f9bf1fe  blt.s r3, r15, -316
0053c0  5b58ffff  j -1344
0053c4  63012f00  loadli.w r2,  16(r30)
0053c8  ab0100f0  lui r3, 983040
0053cc  1b311100  slli r2, r2, 1
0053d0  17113100  or r2, r2, r3
0053d4  abf10100  lui r3, 31
0053d8  9f810100  addli r3, r3, 0
0053dc  7f013400  l_gm2sm r2, r3, 0(r[9:10])
0053e0  2bf10000  lui r2, 15
0053e4  e3411f00  loadli.w r3,  12(r30)
0053e8  00200300  mfence { sm, gm }
0053ec  1b11f1ff  ori r2, r2, 4095
0053f0  80210104  csr_set csr3, r2
0053f4  00d00100  sync_group
0053f8  4b8d1106  ble.s r3, r1, 3904
0053fc  e3012f00  loadli.w r3,  16(r30)
005400  e3422f00  loadli.w r5,  20(r30)
005404  2bf4ffff  lui r8, 1048575
005408  2bd50100  lui r10, 29
00540c  9f0b8fd7  addli r23, r30, -5184
005410  9f040002  addli r9, zero, 256
005414  9f050001  addli r11, zero, 128
005418  1f068000  addli r12, zero, 64
00541c  9f064000  addli r13, zero, 32
005420  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005424  1b14f4ff  ori r8, r8, 4095
005428  1f050500  addli r10, r10, 0
00542c  0b925110  add.s r4, r3, r5
005430  1bb11100  slli r2, r3, 1
005434  b3810108  fix2float.rn r3, r3
005438  1f73f2ff  addli r6, r4, -1
00543c  1bb21200  slli r4, r5, 1
005440  8b125330  div.s r5, r6, r5
005444  1f130000  addli r6, zero, 1
005448  5b070000  j 56
00544c  6b580f00  load.d r[17:18], 0(r30)
005450  9f0b8fd7  addli r23, r30, -5184
005454  00a00000  mfence { lm }
005458  0b283811  add.ul r[17:18], r[17:18], r[20:21]
00545c  ab0900f0  lui r19, 983040
005460  005a0102  load_param_i r20, 2
005464  97193101  or r19, r2, r19
005468  8b101a10  add.s r1, r20, r1
00546c  ff397801  s_lm2gm r19, r23, 0(r[17:18])
005470  00a00200  mfence { lm, gm }
005474  e3431f00  loadli.w r7,  12(r30)
005478  3fa07000  blt.s r1, r7, 8
00547c  dbd70100  j 3772
005480  e3031f00  loadli.w r7,  8(r30)
005484  0b987010  add.s r16, r1, r7
005488  9f037fd6  addli r7, r30, -5320
00548c  0b18f820  mul.s r16, r16, r15
005490  33180828  sext_int2long r[17:18], r16
005494  97396802  sll.d r[20:21], r[17:18], r6
005498  ebd80300  load.d r[18:19], 0(r7)
00549c  2b0800f0  lui r16, 983040
0054a0  17180101  or r16, r2, r16
0054a4  8baa3811  add.ul r[22:23], r[18:19], r[20:21]
0054a8  7fa87a01  l_gm2lm r16, r23, 0(r[22:23])
0054ac  00a00200  mfence { lm, gm }
0054b0  3fc76200  blt.s r5, r6, 464
0054b4  1f0b0000  addli r22, zero, 0
0054b8  9f0a0000  addli r21, zero, 0
0054bc  9f0b0000  addli r23, zero, 0
0054c0  db0c0000  j 100
0054c4  96113202  vadd.f.mz.rn vr3{mr1}, vr4, vr3
0054c8  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
0054cc  9f9b0b00  addli r23, r23, 1
0054d0  6af134c0  vsrl.p vr2, r9, vr3
0054d4  6af214c0  vsrl.p vr4, r9, vr1
0054d8  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
0054dc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054e0  eaf125c0  vsrl.p vr3, r11, vr2
0054e4  6af215c0  vsrl.p vr4, r11, vr1
0054e8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0054ec  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0054f0  ea7126c0  vsrl.p vr3, r12, vr2
0054f4  6a7216c0  vsrl.p vr4, r12, vr1
0054f8  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
0054fc  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
005500  eaf126c0  vsrl.p vr3, r13, vr2
005504  6af216c0  vsrl.p vr4, r13, vr1
005508  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
00550c  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
005510  fa130140  vextracti.f r7, 0(vr2)
005514  7a980040  vextracti.f r16, 0(vr1)
005518  0b6b7b10  add.f.rn r22, r22, r7
00551c  8bea0a11  add.f.rn r21, r21, r16
005520  b7a55b00  beq r23, r5, 360
005524  1f880b00  addli r16, r23, 0
005528  37309700  beq r14, r9, 12
00552c  17a88b00  xor r16, r23, r8
005530  0b980211  add.s r16, r5, r16
005534  8b18e820  mul.s r17, r16, r14
005538  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00553c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005540  12310002  vadd.s.mz vr2{mr1}, zero, vr0
005544  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005548  8b981719  sub.s r17, r15, r17
00554c  0b9ce840  min.s r24, r17, r14
005550  bf5d6cfe  blt.s r24, r6, -140
005554  92300002  vadd.s.mz vr1{mr1}, zero, vr0
005558  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00555c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
005560  12320002  vadd.s.mz vr4{mr1}, zero, vr0
005564  9f0c0000  addli r25, zero, 0
005568  0b1d0221  mul.s r26, r4, r16
00556c  9f0d8fd7  addli r27, r30, -5184
005570  1f0e0500  addli r28, r10, 0
005574  0b18ae11  add.s r16, r28, r26
005578  9f838c00  addli r7, r25, 64
00557c  ca020802  vloads.mz vr5{mr1}, 0(r16)
005580  9f088800  addli r17, r16, 64
005584  4a830802  vloads.mz vr6{mr1}, 0(r17)
005588  8b98ad11  add.s r17, r27, r26
00558c  c2830802  vload.mz vr7{mr1}, 0(r17)
005590  1f898800  addli r18, r17, 64
005594  42040902  vload.mz vr8{mr1}, 0(r18)
005598  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
00559c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0055a0  16436402  vadd.hf.mz.rn vr6{mr1}, vr8, vr6
0055a4  06b40300  vfp162float_l.rn vr8, vr7
0055a8  86f30300  vfp162float_h.rn vr7, vr7
0055ac  86340300  vfp162float_l.rn vr9, vr6
0055b0  06730300  vfp162float_h.rn vr6, vr6
0055b4  86120400  vfloat2fp16_l.rn vr5, vr8
0055b8  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0055bc  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0055c0  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0055c4  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
0055c8  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
0055cc  06940400  vfloat2fp16_l.rn vr8, vr9
0055d0  86d20300  vfloat2fp16_h.rn vr5, vr7
0055d4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0055d8  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
0055dc  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
0055e0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0055e4  06540300  vfloat2fp16_h.rn vr8, vr6
0055e8  46805802  vstore.mz vr5{mr1}, 0(r17)
0055ec  46008902  vstore.mz vr8{mr1}, 0(r18)
0055f0  4b5b7cfe  ble.s r24, r7, -300
0055f4  9f030801  addli r7, r16, 128
0055f8  9f8c0c01  addli r25, r25, 128
0055fc  1f0e0e02  addli r28, r28, 256
005600  9f8d0d02  addli r27, r27, 256
005604  ca820302  vloads.mz vr5{mr1}, 0(r7)
005608  9f038801  addli r7, r16, 192
00560c  1f880801  addli r16, r17, 128
005610  4a830302  vloads.mz vr6{mr1}, 0(r7)
005614  c2030802  vload.mz vr7{mr1}, 0(r16)
005618  9f838801  addli r7, r17, 192
00561c  42840302  vload.mz vr8{mr1}, 0(r7)
005620  96c35302  vadd.hf.mz.rn vr7{mr1}, vr7, vr5
005624  92320002  vadd.s.mz vr5{mr1}, zero, vr0
005628  16446402  vadd.hf.mz.rn vr8{mr1}, vr8, vr6
00562c  12330002  vadd.s.mz vr6{mr1}, zero, vr0
005630  86b40300  vfp162float_l.rn vr9, vr7
005634  86f30300  vfp162float_h.rn vr7, vr7
005638  86920400  vfloat2fp16_l.rn vr5, vr9
00563c  16129202  vadd.f.mz.rn vr4{mr1}, vr4, vr9
005640  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
005644  86340400  vfp162float_l.rn vr9, vr8
005648  06740400  vfp162float_h.rn vr8, vr8
00564c  06930400  vfloat2fp16_l.rn vr6, vr9
005650  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
005654  a6909402  vmac.f.mz.rn vr1{mr1}, vr9, vr9
005658  86d20300  vfloat2fp16_h.rn vr5, vr7
00565c  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
005660  26917302  vmac.f.mz.rn vr2{mr1}, vr7, vr7
005664  06530400  vfloat2fp16_h.rn vr6, vr8
005668  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
00566c  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005670  46005802  vstore.mz vr5{mr1}, 0(r16)
005674  46806302  vstore.mz vr6{mr1}, 0(r7)
005678  bffb8cff  blt.s r25, r24, -260
00567c  5bc9ffff  j -440
005680  9f0a0000  addli r21, zero, 0
005684  1f0b0000  addli r22, zero, 0
005688  00a00000  mfence { lm }
00568c  3f8767fe  blt.s r15, r6, -576
005690  0f083b18  div.f.rn r16, r22, r3
005694  8f883a18  div.f.rn r17, r21, r3
005698  e3033f00  loadli.w r7,  24(r30)
00569c  abec0100  lui r25, 30
0056a0  2bfd0100  lui r26, 31
0056a4  9f0b0000  addli r23, zero, 0
0056a8  1f0c8fd7  addli r24, r30, -5184
0056ac  9f8c0c00  addli r25, r25, 0
0056b0  1f0d0d00  addli r26, r26, 0
0056b4  8b6a0821  mul.f.rn r21, r16, r16
0056b8  0b6b0858  neg.f r22, r16
0056bc  8be85819  sub.f.rn r17, r17, r21
0056c0  8be87810  add.f.rn r17, r17, r7
0056c4  ab03803f  lui r7, 260096
0056c8  8f880808  sqrt.f.rn r17, r17
0056cc  8f8a1319  div.f.rn r21, r7, r17
0056d0  c2000c02  vload.mz vr1{mr1}, 0(r24)
0056d4  4a810c02  vloads.mz vr2{mr1}, 0(r25)
0056d8  ca010d02  vloads.mz vr3{mr1}, 0(r26)
0056dc  1f884b00  addli r16, r23, 32
0056e0  06b20000  vfp162float_l.rn vr4, vr1
0056e4  86f00000  vfp162float_h.rn vr1, vr1
0056e8  12124b02  vadd.f.mz.rn vr4{mr1}, r22, vr4
0056ec  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
0056f0  86320100  vfp162float_l.rn vr5, vr2
0056f4  06b30100  vfp162float_l.rn vr6, vr3
0056f8  06710100  vfp162float_h.rn vr2, vr2
0056fc  86f10100  vfp162float_h.rn vr3, vr3
005700  8a931a02  vmul.f.mz.rn vr7{mr1}, r21, vr1
005704  0a924a02  vmul.f.mz.rn vr4{mr1}, r21, vr4
005708  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
00570c  a6912302  vmac.f.mz.rn vr3{mr1}, vr7, vr2
005710  26135202  vmac.f.mz.rn vr6{mr1}, vr4, vr5
005714  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005718  06110300  vfloat2fp16_l.rn vr2, vr6
00571c  06d10100  vfloat2fp16_h.rn vr2, vr3
005720  46002c02  vstore.mz vr2{mr1}, 0(r24)
005724  cba407ff  ble.s r15, r16, -728
005728  1f088c00  addli r16, r24, 64
00572c  9f888c00  addli r17, r25, 64
005730  9f0d8d00  addli r27, r26, 64
005734  9f8b8b00  addli r23, r23, 64
005738  1f0d0d01  addli r26, r26, 128
00573c  9f8c0c01  addli r25, r25, 128
005740  1f0c0c01  addli r24, r24, 128
005744  42010802  vload.mz vr2{mr1}, 0(r16)
005748  ca810802  vloads.mz vr3{mr1}, 0(r17)
00574c  4a820d02  vloads.mz vr4{mr1}, 0(r27)
005750  86320100  vfp162float_l.rn vr5, vr2
005754  06710100  vfp162float_h.rn vr2, vr2
005758  92125b02  vadd.f.mz.rn vr5{mr1}, r22, vr5
00575c  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
005760  06b30100  vfp162float_l.rn vr6, vr3
005764  86330200  vfp162float_l.rn vr7, vr4
005768  86f10100  vfp162float_h.rn vr3, vr3
00576c  06720200  vfp162float_h.rn vr4, vr4
005770  8a925a02  vmul.f.mz.rn vr5{mr1}, r21, vr5
005774  0a912a02  vmul.f.mz.rn vr2{mr1}, r21, vr2
005778  a6936202  vmac.f.mz.rn vr7{mr1}, vr5, vr6
00577c  26123102  vmac.f.mz.rn vr4{mr1}, vr2, vr3
005780  86900300  vfloat2fp16_l.rn vr1, vr7
005784  86500200  vfloat2fp16_h.rn vr1, vr4
005788  46001802  vstore.mz vr1{mr1}, 0(r16)
00578c  3f9dfbfe  blt.s r23, r15, -188
005790  db97ffff  j -836
005794  9f000040  addli r1, zero, 8192
005798  2b0100f0  lui r2, 983040
00579c  97902000  or r1, r1, r2
0057a0  2b310200  lui r2, 35
0057a4  1f010100  addli r2, r2, 0
0057a8  ff002300  l_gm2sm r1, r2, 0(r[7:8])
0057ac  db070000  j 60
0057b0  63012f00  loadli.w r2,  16(r30)
0057b4  ab0100f0  lui r3, 983040
0057b8  1b312100  slli r2, r2, 2
0057bc  17113100  or r2, r2, r3
0057c0  ab810200  lui r3, 40
0057c4  9f810108  addli r3, r3, 1024
0057c8  7f013300  l_gm2sm r2, r3, 0(r[7:8])
0057cc  5bf00000  j 1920
0057d0  9f000040  addli r1, zero, 8192
0057d4  2b0100f0  lui r2, 983040
0057d8  97902000  or r1, r1, r2
0057dc  2b510200  lui r2, 37
0057e0  1f010100  addli r2, r2, 0
0057e4  ff002400  l_gm2sm r1, r2, 0(r[9:10])
0057e8  abf00000  lui r1, 15
0057ec  00200300  mfence { sm, gm }
0057f0  1f020006  addli r4, zero, 768
0057f4  1b91f0ff  ori r2, r1, 4095
0057f8  9b001500  andi r1, r10, 1
0057fc  80210104  csr_set csr3, r2
005800  1f010006  addli r2, zero, 768
005804  00d00100  sync_group
005808  67081fd6  storeli.w r1, -5248(r30)
00580c  37a00000  beq r1, zero, 8
005810  1f02000a  addli r4, zero, 1280
005814  e3411f00  loadli.w r3,  12(r30)
005818  9f120000  addli r5, zero, 1
00581c  3ffc5104  blt.s r3, r5, 2844
005820  e3000fd7  loadli.w r1,  -5248(r30)
005824  80510102  load_param_i r3, 2
005828  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
00582c  ab180200  lui r17, 33
005830  ab7b0200  lui r23, 39
005834  2b7e0200  lui r28, 39
005838  9f020000  addli r5, zero, 0
00583c  1b441500  srli r8, r10, 1
005840  9b342200  slli r9, r4, 2
005844  9f078fd7  addli r15, r30, -5184
005848  1f090005  addli r18, zero, 640
00584c  9f0a8000  addli r21, zero, 64
005850  1f0b4000  addli r22, zero, 32
005854  9f0d0003  addli r27, zero, 384
005858  9bc31100  srli r7, r3, 1
00585c  ab310200  lui r3, 35
005860  9f880800  addli r17, r17, 0
005864  9f8b0b00  addli r23, r23, 0
005868  1f0e0e04  addli r28, r28, 512
00586c  8b902020  mul.s r1, r1, r2
005870  9f810100  addli r3, r3, 0
005874  1bb12000  slli r2, r1, 2
005878  67041fd6  storeli.w r1, -5312(r30)
00587c  abf0ffff  lui r1, 1048575
005880  8b153110  add.s r11, r2, r3
005884  ab510200  lui r3, 37
005888  9b9000f8  ori r1, r1, 3968
00588c  9f810100  addli r3, r3, 0
005890  67081fd4  storeli.w r1, -5504(r30)
005894  0b163110  add.s r12, r2, r3
005898  1f018fd5  addli r2, r30, -5440
00589c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0058a0  2bf10000  lui r2, 15
0058a4  1b1cf1ff  ori r24, r2, 4095
0058a8  db030000  j 28
0058ac  00a00300  mfence { lm, sm, gm }
0058b0  80210c04  csr_set csr3, r24
0058b4  00d00100  sync_group
0058b8  8b927210  add.s r5, r5, r7
0058bc  3fa00201  blt.s r5, r16, 8
0058c0  5b65f6ff  j -19672
0058c4  0b918210  add.s r2, r5, r8
0058c8  cb1f28fe  ble.s r16, r2, -28
0058cc  e3001f00  loadli.w r1,  8(r30)
0058d0  0b111110  add.s r2, r2, r1
0058d4  e3008fd6  loadli.w r1,  -5312(r30)
0058d8  1b31b100  slli r2, r2, 11
0058dc  17111100  or r2, r2, r1
0058e0  9f200000  addli r1, zero, 2
0058e4  33110128  sext_int2long r[3:4], r2
0058e8  97361102  sll.d r[14:15], r[3:4], r1
0058ec  9f007fd6  addli r1, r30, -5320
0058f0  2b0100f0  lui r2, 983040
0058f4  ebd90000  load.d r[20:21], 0(r1)
0058f8  17912400  or r2, r9, r2
0058fc  8bacd910  add.ul r[26:27], r[20:21], r[14:15]
005900  7fa1fc00  l_gm2lm r2, r15, 0(r[26:27])
005904  00a00200  mfence { lm, gm }
005908  e3000fd7  loadli.w r1,  -5248(r30)
00590c  3bb60000  bneq r1, zero, 396
005910  9f008fd5  addli r1, r30, -5440
005914  e3010fd5  loadli.w r3,  -5504(r30)
005918  1f010000  addli r2, zero, 0
00591c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
005920  92303002  vadd.s.mz vr1{mr1}, zero, vr3
005924  12313002  vadd.s.mz vr2{mr1}, zero, vr3
005928  12323002  vadd.s.mz vr4{mr1}, zero, vr3
00592c  0b181111  add.s r16, r2, r17
005930  0b952710  add.s r10, r15, r2
005934  9f810101  addli r3, r3, 128
005938  1f010104  addli r2, r2, 512
00593c  9f000801  addli r1, r16, 128
005940  4a100802  vloads_mask16.mz vr0{mr1}, 0(r16)
005944  1f038800  addli r6, r16, 64
005948  42140502  vload_mask16.mz vr8{mr1}, 0(r10)
00594c  9f098501  addli r19, r10, 192
005950  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
005954  9f008801  addli r1, r16, 192
005958  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
00595c  1f038500  addli r6, r10, 64
005960  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005964  ca930002  vloads_mask16.mz vr7{mr1}, 0(r1)
005968  9f000501  addli r1, r10, 128
00596c  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005970  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005974  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005978  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
00597c  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005980  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005984  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005988  46100502  vstore_mask16.mz vr0{mr1}, 0(r10)
00598c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
005990  9f000802  addli r1, r16, 256
005994  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005998  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
00599c  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
0059a0  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
0059a4  1f030503  addli r6, r10, 384
0059a8  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
0059ac  9f008802  addli r1, r16, 320
0059b0  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
0059b4  9f090502  addli r19, r10, 256
0059b8  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
0059bc  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
0059c0  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
0059c4  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
0059c8  9f000803  addli r1, r16, 384
0059cc  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
0059d0  1f088803  addli r16, r16, 448
0059d4  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0059d8  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
0059dc  9f008502  addli r1, r10, 320
0059e0  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
0059e4  1f058503  addli r10, r10, 448
0059e8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0059ec  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0059f0  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
0059f4  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
0059f8  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
0059fc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005a00  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005a04  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005a08  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005a0c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005a10  93802105  setlt.u r1, r3, r18
005a14  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005a18  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005a1c  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005a20  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005a24  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005a28  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005a2c  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
005a30  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005a34  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005a38  bbdb00fe  bneq r1, zero, -268
005a3c  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005a40  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005a44  9f000002  addli r1, zero, 256
005a48  6af100c0  vsrl.p vr2, r1, vr0
005a4c  eaf110c0  vsrl.p vr3, r1, vr1
005a50  9f000001  addli r1, zero, 128
005a54  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a58  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a5c  6af100c0  vsrl.p vr2, r1, vr0
005a60  eaf110c0  vsrl.p vr3, r1, vr1
005a64  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a68  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a6c  6af10ac0  vsrl.p vr2, r21, vr0
005a70  eaf11ac0  vsrl.p vr3, r21, vr1
005a74  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a78  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a7c  6a710bc0  vsrl.p vr2, r22, vr0
005a80  ea711bc0  vsrl.p vr3, r22, vr1
005a84  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005a88  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005a8c  7a130040  vextracti.f r6, 0(vr0)
005a90  fa910040  vextracti.f r3, 0(vr1)
005a94  5b640000  j 800
005a98  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005a9c  abf0ffff  lui r1, 1048575
005aa0  1f010000  addli r2, zero, 0
005aa4  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005aa8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005aac  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005ab0  9b9100f8  ori r3, r1, 3968
005ab4  0b982810  add.s r16, r17, r2
005ab8  0b952710  add.s r10, r15, r2
005abc  9f810101  addli r3, r3, 128
005ac0  1f010104  addli r2, r2, 512
005ac4  1f0d0831  addli r26, r16, 6272
005ac8  1f030830  addli r6, r16, 6144
005acc  9f008831  addli r1, r16, 6336
005ad0  9f0c0518  addli r25, r10, 3072
005ad4  ca130d02  vloads_mask16.mz vr7{mr1}, 0(r26)
005ad8  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005adc  1f038830  addli r6, r16, 6208
005ae0  ca940002  vloads_mask16.mz vr9{mr1}, 0(r1)
005ae4  9f008518  addli r1, r10, 3136
005ae8  1f0d8519  addli r26, r10, 3264
005aec  42930c02  vload_mask16.mz vr6{mr1}, 0(r25)
005af0  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005af4  1f030519  addli r6, r10, 3200
005af8  42100d02  vload_mask16.mz vr0{mr1}, 0(r26)
005afc  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
005b00  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005b04  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
005b08  16135302  vadd.f.mz.rn vr6{mr1}, vr6, vr5
005b0c  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005b10  96928502  vadd.f.mz.rn vr5{mr1}, vr11, vr8
005b14  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005b18  16147202  vadd.f.mz.rn vr8{mr1}, vr4, vr7
005b1c  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
005b20  1f030832  addli r6, r16, 6400
005b24  16926102  vadd.f.mz.rn vr4{mr1}, vr3, vr6
005b28  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005b2c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005b30  46906c02  vstore_mask16.mz vr6{mr1}, 0(r25)
005b34  9f0c051a  addli r25, r10, 3328
005b38  c2930c02  vload_mask16.mz vr7{mr1}, 0(r25)
005b3c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005b40  9f00051b  addli r1, r10, 3456
005b44  96110402  vadd.f.mz.rn vr3{mr1}, vr8, vr0
005b48  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
005b4c  4a100302  vloads_mask16.mz vr0{mr1}, 0(r6)
005b50  1f038832  addli r6, r16, 6464
005b54  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005b58  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005b5c  4a130302  vloads_mask16.mz vr6{mr1}, 0(r6)
005b60  1f030833  addli r6, r16, 6528
005b64  1f088833  addli r16, r16, 6592
005b68  4a140302  vloads_mask16.mz vr8{mr1}, 0(r6)
005b6c  1f03851a  addli r6, r10, 3392
005b70  4a150802  vloads_mask16.mz vr10{mr1}, 0(r16)
005b74  1f05851b  addli r10, r10, 3520
005b78  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
005b7c  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005b80  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
005b84  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005b88  c2140502  vload_mask16.mz vr9{mr1}, 0(r10)
005b8c  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005b90  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005b94  46900c02  vstore_mask16.mz vr0{mr1}, 0(r25)
005b98  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005b9c  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
005ba0  1383b105  setlt.u r6, r3, r27
005ba4  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005ba8  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005bac  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005bb0  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005bb4  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005bb8  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005bbc  46107502  vstore_mask16.mz vr7{mr1}, 0(r10)
005bc0  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005bc4  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005bc8  bb3b03fe  bneq r6, zero, -276
005bcc  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005bd0  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005bd4  9f000002  addli r1, zero, 256
005bd8  1f080000  addli r16, zero, 0
005bdc  eaf110c0  vsrl.p vr3, r1, vr1
005be0  6af100c0  vsrl.p vr2, r1, vr0
005be4  9f000001  addli r1, zero, 128
005be8  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005bec  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005bf0  eaf110c0  vsrl.p vr3, r1, vr1
005bf4  6af100c0  vsrl.p vr2, r1, vr0
005bf8  abf0ffff  lui r1, 1048575
005bfc  1b9500f8  ori r10, r1, 3968
005c00  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005c04  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c08  eaf11ac0  vsrl.p vr3, r21, vr1
005c0c  6af10ac0  vsrl.p vr2, r21, vr0
005c10  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005c14  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c18  ea711bc0  vsrl.p vr3, r22, vr1
005c1c  6a710bc0  vsrl.p vr2, r22, vr0
005c20  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005c24  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005c28  fa910040  vextracti.f r3, 0(vr1)
005c2c  eea01062  vxor.u.mz vr1{mr1}, vr1, vr1
005c30  7a110040  vextracti.f r2, 0(vr0)
005c34  12311002  vadd.s.mz vr2{mr1}, zero, vr1
005c38  12321002  vadd.s.mz vr4{mr1}, zero, vr1
005c3c  92311002  vadd.s.mz vr3{mr1}, zero, vr1
005c40  8b9c0811  add.s r25, r17, r16
005c44  0b9d0711  add.s r26, r15, r16
005c48  1f050501  addli r10, r10, 128
005c4c  1f080804  addli r16, r16, 512
005c50  9f800c18  addli r1, r25, 3072
005c54  1f830c19  addli r6, r25, 3200
005c58  42140d02  vload_mask16.mz vr8{mr1}, 0(r26)
005c5c  9f098d01  addli r19, r26, 192
005c60  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005c64  ca120302  vloads_mask16.mz vr5{mr1}, 0(r6)
005c68  9f808c18  addli r1, r25, 3136
005c6c  1f838c19  addli r6, r25, 3264
005c70  c2950902  vload_mask16.mz vr11{mr1}, 0(r19)
005c74  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005c78  9f000d01  addli r1, r26, 128
005c7c  ca130302  vloads_mask16.mz vr7{mr1}, 0(r6)
005c80  1f038d00  addli r6, r26, 64
005c84  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005c88  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
005c8c  16100402  vadd.f.mz.rn vr0{mr1}, vr8, vr0
005c90  16945402  vadd.f.mz.rn vr8{mr1}, vr9, vr5
005c94  96126502  vadd.f.mz.rn vr5{mr1}, vr10, vr6
005c98  16937502  vadd.f.mz.rn vr6{mr1}, vr11, vr7
005c9c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
005ca0  9f800c1a  addli r1, r25, 3328
005ca4  a6108402  vmac.f.mz.rn vr1{mr1}, vr8, vr8
005ca8  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005cac  96138202  vadd.f.mz.rn vr7{mr1}, vr4, vr8
005cb0  16920102  vadd.f.mz.rn vr4{mr1}, vr3, vr0
005cb4  46100d02  vstore_mask16.mz vr0{mr1}, 0(r26)
005cb8  4a900002  vloads_mask16.mz vr0{mr1}, 0(r1)
005cbc  9f808c1a  addli r1, r25, 3392
005cc0  46906902  vstore_mask16.mz vr6{mr1}, 0(r19)
005cc4  9f090d02  addli r19, r26, 256
005cc8  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005ccc  1f030d03  addli r6, r26, 384
005cd0  96916302  vadd.f.mz.rn vr3{mr1}, vr7, vr6
005cd4  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
005cd8  4a930002  vloads_mask16.mz vr6{mr1}, 0(r1)
005cdc  9f800c1b  addli r1, r25, 3456
005ce0  c2930902  vload_mask16.mz vr7{mr1}, 0(r19)
005ce4  9f8c8c1b  addli r25, r25, 3520
005ce8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
005cec  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
005cf0  4a940002  vloads_mask16.mz vr8{mr1}, 0(r1)
005cf4  9f008d02  addli r1, r26, 320
005cf8  4a950c02  vloads_mask16.mz vr10{mr1}, 0(r25)
005cfc  9f0c8d03  addli r25, r26, 448
005d00  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
005d04  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
005d08  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
005d0c  16936402  vadd.f.mz.rn vr6{mr1}, vr9, vr6
005d10  c2940c02  vload_mask16.mz vr9{mr1}, 0(r25)
005d14  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
005d18  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
005d1c  46900902  vstore_mask16.mz vr0{mr1}, 0(r19)
005d20  96928302  vadd.f.mz.rn vr5{mr1}, vr7, vr8
005d24  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005d28  93002505  setlt.u r1, r10, r18
005d2c  9693a402  vadd.f.mz.rn vr7{mr1}, vr9, vr10
005d30  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
005d34  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
005d38  16945102  vadd.f.mz.rn vr8{mr1}, vr3, vr5
005d3c  96116202  vadd.f.mz.rn vr3{mr1}, vr4, vr6
005d40  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005d44  46907c02  vstore_mask16.mz vr7{mr1}, 0(r25)
005d48  16127402  vadd.f.mz.rn vr4{mr1}, vr8, vr7
005d4c  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
005d50  bbcb00fe  bneq r1, zero, -272
005d54  16904102  vadd.f.mz.rn vr0{mr1}, vr3, vr4
005d58  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
005d5c  9f000002  addli r1, zero, 256
005d60  6af100c0  vsrl.p vr2, r1, vr0
005d64  eaf110c0  vsrl.p vr3, r1, vr1
005d68  9f000001  addli r1, zero, 128
005d6c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d70  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d74  6af100c0  vsrl.p vr2, r1, vr0
005d78  eaf110c0  vsrl.p vr3, r1, vr1
005d7c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d80  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d84  6af10ac0  vsrl.p vr2, r21, vr0
005d88  eaf11ac0  vsrl.p vr3, r21, vr1
005d8c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005d90  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005d94  6a710bc0  vsrl.p vr2, r22, vr0
005d98  ea711bc0  vsrl.p vr3, r22, vr1
005d9c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005da0  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
005da4  fa100040  vextracti.f r1, 0(vr0)
005da8  7a950040  vextracti.f r10, 0(vr1)
005dac  0b631110  add.f.rn r6, r2, r1
005db0  8be1a110  add.f.rn r3, r3, r10
005db4  8b807230  div.u r1, r5, r7
005db8  00350002  core_id r10
005dbc  1f010000  addli r2, zero, 0
005dc0  9bb06000  slli r1, r1, 6
005dc4  9b800004  andi r1, r1, 64
005dc8  9790a000  or r1, r1, r10
005dcc  1bb52000  slli r10, r1, 2
005dd0  9b80e007  andi r1, r1, 126
005dd4  0b187511  add.s r16, r10, r23
005dd8  9bb02000  slli r1, r1, 2
005ddc  73606800  stores.w r6, 0(r16)
005de0  0b13c511  add.s r6, r10, r28
005de4  1b154500  ori r10, r10, 4
005de8  1f080000  addli r16, zero, 0
005dec  73603300  stores.w r3, 0(r6)
005df0  8b117511  add.s r3, r10, r23
005df4  0b937011  add.s r6, r1, r23
005df8  0b15c511  add.s r10, r10, r28
005dfc  8b90c011  add.s r1, r1, r28
005e00  00a00300  mfence { lm, sm, gm }
005e04  80210c04  csr_set csr3, r24
005e08  00d00100  sync_group
005e0c  eb590f00  load.d r[20:21], 0(r30)
005e10  efc10100  loads.w r3, 0(r3)
005e14  6f430300  loads.w r6, 0(r6)
005e18  6f450500  loads.w r10, 0(r10)
005e1c  efc00000  loads.w r1, 0(r1)
005e20  8ba6d910  add.ul r[14:15], r[20:21], r[14:15]
005e24  8be16110  add.f.rn r3, r3, r6
005e28  8b601510  add.f.rn r1, r10, r1
005e2c  2b05003a  lui r10, 237568
005e30  0be3a120  mul.f.rn r6, r3, r10
005e34  8be0a020  mul.f.rn r1, r1, r10
005e38  8b616320  mul.f.rn r3, r6, r6
005e3c  0b650358  neg.f r10, r6
005e40  8be03018  sub.f.rn r1, r1, r3
005e44  e3013f00  loadli.w r3,  24(r30)
005e48  8be03010  add.f.rn r1, r1, r3
005e4c  ab01803f  lui r3, 260096
005e50  8f800008  sqrt.f.rn r1, r1
005e54  8f811118  div.f.rn r3, r3, r1
005e58  0b9d2510  add.s r26, r11, r2
005e5c  0b932710  add.s r6, r15, r2
005e60  8b1c2610  add.s r25, r12, r2
005e64  9f098d00  addli r19, r26, 64
005e68  9f008300  addli r1, r6, 64
005e6c  42100302  vload_mask16.mz vr0{mr1}, 0(r6)
005e70  4a110d02  vloads_mask16.mz vr2{mr1}, 0(r26)
005e74  4a920c02  vloads_mask16.mz vr4{mr1}, 0(r25)
005e78  ca910902  vloads_mask16.mz vr3{mr1}, 0(r19)
005e7c  9f898c00  addli r19, r25, 64
005e80  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
005e84  ca920902  vloads_mask16.mz vr5{mr1}, 0(r19)
005e88  9f094800  addli r19, r16, 32
005e8c  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
005e90  93093207  setle.u r19, r4, r19
005e94  92101502  vadd.f.mz.rn vr1{mr1}, r10, vr1
005e98  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005e9c  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005ea0  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
005ea4  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
005ea8  46104302  vstore_mask16.mz vr4{mr1}, 0(r6)
005eac  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
005eb0  bb910900  bneq r19, zero, 100
005eb4  9f090d01  addli r19, r26, 128
005eb8  1f8a0c01  addli r20, r25, 128
005ebc  9f000301  addli r1, r6, 128
005ec0  1f038301  addli r6, r6, 192
005ec4  1f088800  addli r16, r16, 64
005ec8  1f010102  addli r2, r2, 256
005ecc  4a910902  vloads_mask16.mz vr2{mr1}, 0(r19)
005ed0  9f098d01  addli r19, r26, 192
005ed4  ca110a02  vloads_mask16.mz vr3{mr1}, 0(r20)
005ed8  1f8a8c01  addli r20, r25, 192
005edc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
005ee0  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
005ee4  4a920902  vloads_mask16.mz vr4{mr1}, 0(r19)
005ee8  ca120a02  vloads_mask16.mz vr5{mr1}, 0(r20)
005eec  93094804  setlt.u r19, r16, r4
005ef0  12100502  vadd.f.mz.rn vr0{mr1}, r10, vr0
005ef4  92101502  vadd.f.mz.rn vr1{mr1}, r10, vr1
005ef8  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
005efc  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
005f00  a6112002  vmac.f.mz.rn vr3{mr1}, vr0, vr2
005f04  a6924002  vmac.f.mz.rn vr5{mr1}, vr1, vr4
005f08  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
005f0c  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
005f10  3bad09fe  bneq r19, zero, -184
005f14  ab0000f0  lui r1, 983040
005f18  00a00000  mfence { lm }
005f1c  97901400  or r1, r9, r1
005f20  ffb0f600  s_lm2gm r1, r15, 0(r[14:15])
005f24  00a00200  mfence { lm, gm }
005f28  63481f00  loadli.w r16,  12(r30)
005f2c  db31ffff  j -1652
005f30  63012f00  loadli.w r2,  16(r30)
005f34  ab0100f0  lui r3, 983040
005f38  1b312100  slli r2, r2, 2
005f3c  17113100  or r2, r2, r3
005f40  ab910200  lui r3, 41
005f44  9f810108  addli r3, r3, 1024
005f48  7f013400  l_gm2sm r2, r3, 0(r[9:10])
005f4c  2bf10000  lui r2, 15
005f50  e3411f00  loadli.w r3,  12(r30)
005f54  00200300  mfence { sm, gm }
005f58  1b11f1ff  ori r2, r2, 4095
005f5c  80210104  csr_set csr3, r2
005f60  00d00100  sync_group
005f64  4bdf1100  ble.s r3, r1, 980
005f68  e3012f00  loadli.w r3,  16(r30)
005f6c  e3422f00  loadli.w r5,  20(r30)
005f70  ab780200  lui r17, 39
005f74  2b890200  lui r18, 40
005f78  ab990200  lui r19, 41
005f7c  9f038fd7  addli r7, r30, -5184
005f80  1f140000  addli r8, zero, 1
005f84  1f050002  addli r10, zero, 256
005f88  1f060001  addli r12, zero, 128
005f8c  9f068000  addli r13, zero, 64
005f90  1f084000  addli r16, zero, 32
005f94  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
005f98  9f880808  addli r17, r17, 1024
005f9c  1f090908  addli r18, r18, 1024
005fa0  9f890908  addli r19, r19, 1024
005fa4  0b925110  add.s r4, r3, r5
005fa8  9bb52100  slli r11, r3, 2
005fac  33810108  fix2float.rn r2, r3
005fb0  9f71f2ff  addli r3, r4, -1
005fb4  1bb22200  slli r4, r5, 2
005fb8  67082fd4  storeli.w r2, -5504(r30)
005fbc  1f010fd7  addli r2, r30, -5248
005fc0  670cbfd4  storeli.w r11, -5440(r30)
005fc4  8b925130  div.s r5, r3, r5
005fc8  abf1ffff  lui r3, 1048575
005fcc  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005fd0  9b94f1ff  ori r9, r3, 4095
005fd4  5b080000  j 64
005fd8  1f038fd6  addli r6, r30, -5312
005fdc  6b510f00  load.d r[3:4], 0(r30)
005fe0  6b5a0300  load.d r[21:22], 0(r6)
005fe4  00a00000  mfence { lm }
005fe8  00530102  load_param_i r6, 2
005fec  e3058fd5  loadli.w r11,  -5440(r30)
005ff0  8b101310  add.s r1, r6, r1
005ff4  0b2a4111  add.ul r[21:22], r[3:4], r[21:22]
005ff8  ab0100f0  lui r3, 983040
005ffc  97913500  or r3, r11, r3
006000  ff317a00  s_lm2gm r3, r7, 0(r[21:22])
006004  00a00200  mfence { lm, gm }
006008  63411f00  loadli.w r2,  12(r30)
00600c  3fa02000  blt.s r1, r2, 8
006010  5b650000  j 808
006014  63011f00  loadli.w r2,  8(r30)
006018  8b912010  add.s r3, r1, r2
00601c  1f210000  addli r2, zero, 2
006020  8b91f120  mul.s r3, r3, r15
006024  339a0128  sext_int2long r[21:22], r3
006028  ab0100f0  lui r3, 983040
00602c  173c2a02  sll.d r[25:26], r[21:22], r2
006030  1f017fd6  addli r2, r30, -5320
006034  97913500  or r3, r11, r3
006038  6b5a0100  load.d r[21:22], 0(r2)
00603c  1f018fd6  addli r2, r30, -5312
006040  0b2b8a11  add.ul r[23:24], r[21:22], r[25:26]
006044  ff217b00  l_gm2lm r3, r7, 0(r[23:24])
006048  00a00200  mfence { lm, gm }
00604c  73308101  store.d r[25:26], 0(r2)
006050  bf978200  blt.s r5, r8, 484
006054  9f0b0000  addli r23, zero, 0
006058  1f0b0000  addli r22, zero, 0
00605c  1f0c0000  addli r24, zero, 0
006060  db0c0000  j 100
006064  16103202  vadd.f.mz.rn vr0{mr1}, vr4, vr3
006068  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
00606c  1f1c0c00  addli r24, r24, 1
006070  6a7105c0  vsrl.p vr2, r10, vr0
006074  ea7115c0  vsrl.p vr3, r10, vr1
006078  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00607c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006080  6a7106c0  vsrl.p vr2, r12, vr0
006084  ea7116c0  vsrl.p vr3, r12, vr1
006088  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00608c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
006090  6af106c0  vsrl.p vr2, r13, vr0
006094  eaf116c0  vsrl.p vr3, r13, vr1
006098  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00609c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060a0  6a7108c0  vsrl.p vr2, r16, vr0
0060a4  ea7118c0  vsrl.p vr3, r16, vr1
0060a8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0060ac  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0060b0  7a110040  vextracti.f r2, 0(vr0)
0060b4  fa910040  vextracti.f r3, 0(vr1)
0060b8  8beb2b10  add.f.rn r23, r23, r2
0060bc  0b6b3b10  add.f.rn r22, r22, r3
0060c0  b7755c00  beq r24, r5, 380
0060c4  9f010c00  addli r3, r24, 0
0060c8  3730a700  beq r14, r10, 12
0060cc  97219c00  xor r3, r24, r9
0060d0  8b913210  add.s r3, r5, r3
0060d4  1f010fd7  addli r2, r30, -5248
0060d8  0b93e120  mul.s r6, r3, r14
0060dc  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0060e0  0b936718  sub.s r6, r15, r6
0060e4  8b1ce340  min.s r25, r6, r14
0060e8  12321002  vadd.s.mz vr4{mr1}, zero, vr1
0060ec  92311002  vadd.s.mz vr3{mr1}, zero, vr1
0060f0  12311002  vadd.s.mz vr2{mr1}, zero, vr1
0060f4  bfcd8cfe  blt.s r25, r8, -144
0060f8  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
0060fc  1f0d0000  addli r26, zero, 0
006100  8b1d3220  mul.s r27, r4, r3
006104  1f0e8fd7  addli r28, r30, -5184
006108  9f850800  addli r11, r17, 0
00610c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
006110  12314002  vadd.s.mz vr2{mr1}, zero, vr4
006114  92314002  vadd.s.mz vr3{mr1}, zero, vr4
006118  8b91b511  add.s r3, r11, r27
00611c  0b13be11  add.s r6, r28, r27
006120  1f818100  addli r2, r3, 64
006124  ca920102  vloads_mask16.mz vr5{mr1}, 0(r3)
006128  1f8a8101  addli r20, r3, 192
00612c  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
006130  9f0a8301  addli r21, r6, 192
006134  4a130102  vloads_mask16.mz vr6{mr1}, 0(r2)
006138  1f810101  addli r2, r3, 128
00613c  4a140a02  vloads_mask16.mz vr8{mr1}, 0(r20)
006140  1f0a0301  addli r20, r6, 128
006144  42900a02  vload_mask16.mz vr0{mr1}, 0(r21)
006148  ca130102  vloads_mask16.mz vr7{mr1}, 0(r2)
00614c  c2150a02  vload_mask16.mz vr11{mr1}, 0(r20)
006150  1f018300  addli r2, r6, 64
006154  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
006158  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
00615c  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
006160  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
006164  96937502  vadd.f.mz.rn vr7{mr1}, vr11, vr7
006168  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00616c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006170  46105302  vstore_mask16.mz vr5{mr1}, 0(r6)
006174  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
006178  1f018d00  addli r2, r26, 64
00617c  46900a02  vstore_mask16.mz vr0{mr1}, 0(r21)
006180  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006184  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006188  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00618c  26116302  vmac.f.mz.rn vr2{mr1}, vr6, vr6
006190  46107a02  vstore_mask16.mz vr7{mr1}, 0(r20)
006194  96910102  vadd.f.mz.rn vr3{mr1}, vr3, vr0
006198  a6100002  vmac.f.mz.rn vr1{mr1}, vr0, vr0
00619c  4bab2cfe  ble.s r25, r2, -312
0061a0  1f8a0102  addli r20, r3, 256
0061a4  9f8a8102  addli r21, r3, 320
0061a8  1f010302  addli r2, r6, 256
0061ac  1f0d0d01  addli r26, r26, 128
0061b0  9f850504  addli r11, r11, 512
0061b4  1f0e0e04  addli r28, r28, 512
0061b8  4a100a02  vloads_mask16.mz vr0{mr1}, 0(r20)
0061bc  1f8a0103  addli r20, r3, 384
0061c0  9f818103  addli r3, r3, 448
0061c4  ca920a02  vloads_mask16.mz vr5{mr1}, 0(r21)
0061c8  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
0061cc  ca130a02  vloads_mask16.mz vr7{mr1}, 0(r20)
0061d0  4a940102  vloads_mask16.mz vr8{mr1}, 0(r3)
0061d4  9f010303  addli r3, r6, 384
0061d8  1f0a8302  addli r20, r6, 320
0061dc  1f038303  addli r6, r6, 448
0061e0  42950102  vload_mask16.mz vr10{mr1}, 0(r3)
0061e4  c2140a02  vload_mask16.mz vr9{mr1}, 0(r20)
0061e8  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
0061ec  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
0061f0  96925402  vadd.f.mz.rn vr5{mr1}, vr9, vr5
0061f4  96137502  vadd.f.mz.rn vr7{mr1}, vr10, vr7
0061f8  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
0061fc  26110002  vmac.f.mz.rn vr2{mr1}, vr0, vr0
006200  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
006204  46105a02  vstore_mask16.mz vr5{mr1}, 0(r20)
006208  16138302  vadd.f.mz.rn vr6{mr1}, vr6, vr8
00620c  96917102  vadd.f.mz.rn vr3{mr1}, vr3, vr7
006210  a6907302  vmac.f.mz.rn vr1{mr1}, vr7, vr7
006214  46907102  vstore_mask16.mz vr7{mr1}, 0(r3)
006218  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00621c  26915202  vmac.f.mz.rn vr2{mr1}, vr5, vr5
006220  96916102  vadd.f.mz.rn vr3{mr1}, vr3, vr6
006224  a6106302  vmac.f.mz.rn vr1{mr1}, vr6, vr6
006228  46106302  vstore_mask16.mz vr6{mr1}, 0(r6)
00622c  bf3b9dff  blt.s r26, r25, -276
006230  dbc6ffff  j -460
006234  1f0b0000  addli r22, zero, 0
006238  9f0b0000  addli r23, zero, 0
00623c  00a00000  mfence { lm }
006240  3fe687fe  blt.s r15, r8, -616
006244  63010fd5  loadli.w r2,  -5504(r30)
006248  9f050000  addli r11, zero, 0
00624c  8f812b18  div.f.rn r3, r23, r2
006250  0f032b18  div.f.rn r6, r22, r2
006254  63013f00  loadli.w r2,  24(r30)
006258  0beb3120  mul.f.rn r22, r3, r3
00625c  0b636319  sub.f.rn r6, r6, r22
006260  0beb0158  neg.f r22, r3
006264  9f010000  addli r3, zero, 0
006268  0b632310  add.f.rn r6, r6, r2
00626c  2b01803f  lui r2, 260096
006270  0f030308  sqrt.f.rn r6, r6
006274  0f036118  div.f.rn r6, r2, r6
006278  0b9c2511  add.s r24, r11, r18
00627c  8b9bb310  add.s r23, r7, r11
006280  8b9c3511  add.s r25, r11, r19
006284  4a110c02  vloads_mask16.mz vr2{mr1}, 0(r24)
006288  1f0c8c00  addli r24, r24, 64
00628c  1f8d8b00  addli r26, r23, 64
006290  c2900b02  vload_mask16.mz vr1{mr1}, 0(r23)
006294  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
006298  4a120c02  vloads_mask16.mz vr4{mr1}, 0(r24)
00629c  1f8c8c00  addli r24, r25, 64
0062a0  c2110d02  vload_mask16.mz vr3{mr1}, 0(r26)
0062a4  4a130c02  vloads_mask16.mz vr6{mr1}, 0(r24)
0062a8  1f8c4100  addli r24, r3, 32
0062ac  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
0062b0  92113b02  vadd.f.mz.rn vr3{mr1}, r22, vr3
0062b4  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
0062b8  8a113302  vmul.f.mz.rn vr3{mr1}, r6, vr3
0062bc  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
0062c0  26934102  vmac.f.mz.rn vr6{mr1}, vr3, vr4
0062c4  46905b02  vstore_mask16.mz vr5{mr1}, 0(r23)
0062c8  46106d02  vstore_mask16.mz vr6{mr1}, 0(r26)
0062cc  4bb487ff  ble.s r15, r24, -756
0062d0  8b1cb910  add.s r25, r18, r11
0062d4  0b9db910  add.s r26, r19, r11
0062d8  1f8c0b01  addli r24, r23, 128
0062dc  9f8b8b01  addli r23, r23, 192
0062e0  9f818100  addli r3, r3, 64
0062e4  9f850502  addli r11, r11, 256
0062e8  9f8d0c01  addli r27, r25, 128
0062ec  1f0e0d01  addli r28, r26, 128
0062f0  9f8c8c01  addli r25, r25, 192
0062f4  1f0d8d01  addli r26, r26, 192
0062f8  c2100c02  vload_mask16.mz vr1{mr1}, 0(r24)
0062fc  42910b02  vload_mask16.mz vr2{mr1}, 0(r23)
006300  ca910d02  vloads_mask16.mz vr3{mr1}, 0(r27)
006304  4a120e02  vloads_mask16.mz vr4{mr1}, 0(r28)
006308  ca920c02  vloads_mask16.mz vr5{mr1}, 0(r25)
00630c  4a130d02  vloads_mask16.mz vr6{mr1}, 0(r26)
006310  92101b02  vadd.f.mz.rn vr1{mr1}, r22, vr1
006314  12112b02  vadd.f.mz.rn vr2{mr1}, r22, vr2
006318  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
00631c  0a112302  vmul.f.mz.rn vr2{mr1}, r6, vr2
006320  26923002  vmac.f.mz.rn vr4{mr1}, vr1, vr3
006324  26135102  vmac.f.mz.rn vr6{mr1}, vr2, vr5
006328  46104c02  vstore_mask16.mz vr4{mr1}, 0(r24)
00632c  46906b02  vstore_mask16.mz vr6{mr1}, 0(r23)
006330  3fadf1fe  blt.s r3, r15, -184
006334  db94ffff  j -860
006338  9f0e8fd3  addli sp, r30, -5696
00633c  e38f2e2c  loadli.w r31,  5648(sp)
006340  63cf2e2c  loadli.w r30,  5652(sp)
006344  638e3e2c  loadli.w r28,  5656(sp)
006348  e3cd3e2c  loadli.w r27,  5660(sp)
00634c  638d4e2c  loadli.w r26,  5664(sp)
006350  e3cc4e2c  loadli.w r25,  5668(sp)
006354  638c5e2c  loadli.w r24,  5672(sp)
006358  e3cb5e2c  loadli.w r23,  5676(sp)
00635c  638b6e2c  loadli.w r22,  5680(sp)
006360  e3ca6e2c  loadli.w r21,  5684(sp)
006364  638a7e2c  loadli.w r20,  5688(sp)
006368  e3c97e2c  loadli.w r19,  5692(sp)
00636c  9f8e8e2c  addli sp, sp, 5696
006370  5f800f00  jr r31, 0
006374  00100000  exit
006378  00100000  exit
00637c  00100000  exit
006380  00100000  exit
006384  00100000  exit
006388  00100000  exit
00638c  00100000  exit
006390  00100000  exit
006394  00100000  exit
006398  00100000  exit
00639c  00100000  exit
0063a0  00100000  exit
0063a4  00100000  exit
0063a8  00100000  exit
0063ac  00100000  exit
0063b0  00100000  exit
0063b4  00100000  exit
0063b8  00100000  exit
0063bc  00100000  exit
0063c0  00100000  exit
0063c4  00100000  exit
0063c8  00100000  exit
0063cc  00100000  exit
0063d0  00100000  exit
0063d4  00100000  exit
0063d8  00100000  exit
0063dc  00100000  exit
0063e0  00100000  exit
0063e4  00100000  exit
0063e8  00100000  exit
0063ec  00100000  exit
0063f0  00100000  exit
0063f4  00100000  exit
0063f8  00100000  exit
0063fc  00100000  exit
006400  00100000  exit
006404  00100000  exit
006408  00100000  exit
00640c  00100000  exit
006410  00100000  exit
006414  00100000  exit
006418  00100000  exit
00641c  00100000  exit
006420  00100000  exit
006424  00100000  exit
006428  00100000  exit
00642c  00100000  exit
006430  00100000  exit
006434  00100000  exit
006438  00100000  exit
00643c  00100000  exit
006440  00100000  exit
006444  00100000  exit
006448  00100000  exit
00644c  00100000  exit
006450  00100000  exit
006454  00100000  exit
006458  00100000  exit
00645c  00100000  exit
006460  00100000  exit
006464  00100000  exit
006468  00100000  exit
00646c  00100000  exit
006470  00100000  exit
006474  00100000  exit
006478  00100000  exit
00647c  00100000  exit
006480  00100000  exit
006484  00100000  exit
006488  00100000  exit
00648c  00100000  exit
006490  00100000  exit
006494  00100000  exit
006498  00100000  exit
00649c  00100000  exit
0064a0  00100000  exit
0064a4  00100000  exit
0064a8  00100000  exit
0064ac  00100000  exit
0064b0  00100000  exit
0064b4  00100000  exit
0064b8  00100000  exit
0064bc  00100000  exit
0064c0  00100000  exit
0064c4  00100000  exit
0064c8  00100000  exit
0064cc  00100000  exit
0064d0  00100000  exit
0064d4  00100000  exit
0064d8  00100000  exit
0064dc  00100000  exit
0064e0  00100000  exit
0064e4  00100000  exit
0064e8  00100000  exit
0064ec  00100000  exit
0064f0  00100000  exit
0064f4  00100000  exit
0064f8  00100000  exit
0064fc  00100000  exit
006500  00100000  exit
006504  00100000  exit
006508  00100000  exit
00650c  00100000  exit
006510  00100000  exit
006514  00100000  exit
006518  00100000  exit
00651c  00100000  exit
006520  00100000  exit
006524  00100000  exit
006528  00100000  exit
00652c  00100000  exit
006530  00100000  exit
006534  00100000  exit
006538  00100000  exit
00653c  00100000  exit
006540  00100000  exit
006544  00100000  exit
006548  00100000  exit
00654c  00100000  exit
006550  00100000  exit
006554  00100000  exit
006558  00100000  exit
00655c  00100000  exit
006560  00100000  exit
006564  00100000  exit
006568  00100000  exit
00656c  00100000  exit
006570  00100000  exit
006574  00100000  exit
006578  00100000  exit
00657c  00100000  exit
006580  00100000  exit
006584  00100000  exit
006588  00100000  exit
00658c  00100000  exit
006590  00100000  exit
006594  00100000  exit
006598  00100000  exit
00659c  00100000  exit
0065a0  00100000  exit
0065a4  00100000  exit
0065a8  00100000  exit
0065ac  00100000  exit
0065b0  00100000  exit
